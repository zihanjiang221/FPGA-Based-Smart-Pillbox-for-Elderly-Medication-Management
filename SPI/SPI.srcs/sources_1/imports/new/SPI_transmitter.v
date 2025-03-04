`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/06 20:15:31
// Design Name: 
// Module Name: SPI_transmitter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module fallen_top(
    input  clk,
    input  rst_n,
    output  LED_INT2,  //暗下表示inactive
    // SPI ports
    output ACL_CSN,
    output ACL_MOSI,
    input  ACL_MISO,
    output ACL_SCLK,
    input  ACL_INT2,
    output test,  //表示SMV超过阈值  F6
    output test2, //表示M超过三次  G3
    output alarm   //表示报警  G4
    
);
assign  LED_INT2 = ACL_INT2;

    reg ready;
    reg [23:0] data;
    reg [3:0]  data_index;
    reg [15:0] clk_counter; // Clock counter for timing control
    wire [7:0] inst;
    wire [7:0] reg_addr;
    wire [7:0] dout;
    wire rdh_wrl;
    wire [7:0] din;
    wire din_valid;
    reg [3:0] state;
    reg [3:0] next_state;
    reg [7:0] read_data_x;
    reg [7:0] read_data_y;
    reg [7:0] read_data_z;//用来存读取的数据
    // Define state parameters
    parameter IDLE = 4'd0;
    parameter LOAD = 4'd1;
    parameter WAIT = 4'd2;
    parameter ENDING = 4'd3;
    reg din_valid_d;
   wire din_valid_posedge;
   always @(posedge clk) begin
           din_valid_d <= din_valid;
       end
   assign din_valid_posedge = ({din_valid_d, din_valid}==2'b01) ? 1'b1 : 1'b0;
    // Data initialization and state machine
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            data_index <= 4'd0;
            ready <= 1'b0;
            state <= IDLE;
            clk_counter <= 16'd0;
            read_data_x <= 8'd0;
            read_data_y <= 8'd0;
            read_data_z <= 8'd0;
        end
        else begin
            state <= next_state;
            case (state)
                IDLE: begin
                    ready <= 1'b0;
                    next_state <= LOAD;
                    
                end
                LOAD: begin
                    case (data_index)
                        4'd0: data <= 24'h0A20FF;
                        4'd1: data <= 24'h0A23FF;
                        4'd2: data <= 24'h0A2512;
                        4'd3: data <= 24'h0A273F;
                        4'd4: data <= 24'h0A2B40;
                        4'd5: data <= 24'h0A2C53;
                        4'd6: data <= 24'h0A2D0A;//wake up mode
                        4'd7: data <= 24'h0B0800;//x
                        4'd8: data <= 24'h0B0900; //y
                        4'd9: data <= 24'h0B0A00;//z
                        default: data <= 24'h000000;
                    endcase
                    ready <= 1'b1;
                    next_state <= WAIT;
                end
                WAIT: begin
                    ready <= 1'b0;
                    if (clk_counter < 16'd1000) begin // Adjust this counter value based on your SPI clock speed
                        clk_counter <= clk_counter + 16'd1;
                    end
                    else begin
                        clk_counter <= 16'd0;
                        if (data_index == 4'd9)  data_index <= 4'd7;
                        else                    data_index <= data_index + 4'd1; 
                        next_state <= IDLE;
                    end
                    if (din_valid_posedge) begin
                            if(data_index==4'd7) read_data_x <= din;
                             if(data_index==4'd8) read_data_y <= din;
                             if(data_index==4'd9) read_data_z <= din;   
                            end
                end
                
            endcase
        end
    end
    wire [6:0]z_buma;
    wire [6:0]x_buma;
    wire [6:0]y_buma;
    wire [7:0]x_fil;
    wire [7:0]y_fil;
    wire [7:0]z_fil;
    wire [31:0] SMV;
    assign	z_buma=read_data_z[7]? {~read_data_z[6:0]+7'b1}:read_data_z[6:0];
    assign	x_buma=read_data_x[7]? {~read_data_x[6:0]+7'b1}:read_data_x[6:0];
    assign	y_buma=read_data_y[7]? {~read_data_y[6:0]+7'b1}:read_data_y[6:0];
    assign SMV=x_fil*x_fil+y_fil*y_fil+z_fil*z_fil;  
    assign test=(SMV>=32'b11_000_000_000_000);//512g2
    // Extract fields from data
    assign rdh_wrl   = data[16];
    assign inst      = data[23:16];
    assign reg_addr  = data[15:8];
    assign dout      = data[7:0];
    
    wire slow_clk,slow_clk_posedge;//减慢5000倍
    reg slow_clk_d;
    clock_divider clk_5000(.clk(clk),.rst(~rst_n),.slow_clk(slow_clk));
    always @(posedge clk) begin
        slow_clk_d <= slow_clk;
    end
    assign slow_clk_posedge = ({slow_clk_d, slow_clk}==2'b01) ? 1'b1 : 1'b0;
    
    // SPI_transmitter instance
    SPI_transmitter spi_transmitter (
        .clk(clk),
        .rst(~rst_n),
        .CSN(ACL_CSN),
        .SCLK(ACL_SCLK),
        .MOSI(ACL_MOSI),
        .MISO(ACL_MISO),
        .ready(ready),
        .inst(inst),
        .rdh_wrl(rdh_wrl),
        .reg_addr(reg_addr),
        .dout(dout),
        .din(din),
        .din_valid(din_valid)
    );
mean_filter #(.FILTER_CNT(32),.BIT_CNT(5)) mean_x(.clk(slow_clk),.rst(~rst_n),.data_en(1),.data_in({0,x_buma}),.mean_out(x_fil));
mean_filter #(.FILTER_CNT(32),.BIT_CNT(5)) mean_y(.clk(slow_clk),.rst(~rst_n),.data_en(1),.data_in({0,y_buma}),.mean_out(y_fil));
mean_filter #(.FILTER_CNT(32),.BIT_CNT(5)) mean_z(.clk(slow_clk),.rst(~rst_n),.data_en(1),.data_in({0,z_buma}),.mean_out(z_fil));
alarm_top(.clk(slow_clk),.reset(~rst_n),.SMV_in(SMV),.ACL_INT2(ACL_INT2),.alarm(alarm),.test2(test2));


endmodule

module SPI_transmitter(
    input      clk,
    input      rst,
    
    // SPI port
    output reg CSN,
    output reg SCLK,
    output reg MOSI,
    input      MISO,
    
    // Control port
    input            ready,
    input      [7:0] inst,
    input            rdh_wrl, //判断读写  读1  写0
    input      [7:0] reg_addr,
    input      [7:0] dout,
    output reg [7:0] din,
    output reg       din_valid
);
// SCK generator, 5MHz output
reg         SCLK_en;
reg         SCLK_d;
reg  [7:0]  SCLK_count;
wire        SCLK_posedge;
wire        SCLK_negedge;

always @(posedge clk or posedge rst) begin
	if(rst || ~SCLK_en) begin
		SCLK <= 1'b0;
        SCLK_count <= 8'd0;
	end
	else if(SCLK_en && (SCLK_count<8'd10)) begin
        SCLK_count <= SCLK_count + 8'd1;
	end
    else begin
        SCLK <= ~SCLK;
        SCLK_count <= 8'd0;
    end
end
always @(posedge clk) begin
    SCLK_d <= SCLK;
end
assign SCLK_posedge = ({SCLK_d, SCLK}==2'b01) ? 1'b1 : 1'b0;
assign SCLK_negedge = ({SCLK_d, SCLK}==2'b10) ? 1'b1 : 1'b0;
// Ready rising edge detection
reg  ready_d;
wire ready_posedge;
always @(posedge clk) begin
    ready_d <= ready;
end
assign ready_posedge = ({ready_d, ready} == 2'b01) ? 1'b1 : 1'b0;
// State machine
reg  [3:0]  state;
reg  [3:0]  next_state;

parameter IDLE       = 4'd0;
parameter START      = 4'd1;
parameter INST_OUT   = 4'd2;
parameter ADDR_OUT   = 4'd3;
parameter WRITE_DATA = 4'd4;
parameter READ_DATA  = 4'd5;
parameter ENDING     = 4'd6;

reg  [6:0]  MISO_buf;
reg  [7:0]  MOSI_buf;
reg  [3:0]  MOSI_count;

always @(posedge clk or posedge rst) begin
	if(rst) begin
		state <= IDLE;
	end
	else begin
		state <= next_state;
	end
end

always @(posedge clk) begin
	case(state)
	IDLE: 
	begin	// IDLE state
        next_state <= START;
		MOSI <= 1'b0;
        CSN <= 1'b1;
        SCLK_en <= 1'b0;
        MOSI_buf <= inst;
        MOSI_count <= 4'd0;
        din <= 8'h00;
        din_valid <= 1'b0;
	end
	START:
    begin    // enable SCK and CS
        // start the process when ready rise, load instruction
        if(ready_posedge) begin
            next_state <= INST_OUT;
            CSN  <= 1'b0;
            SCLK_en <= 1'b1;
            MOSI_buf <= {inst[6:0], 1'b0};
            MOSI <= inst[7];
        end
    end
	INST_OUT:
    begin    // send out instruction
        if(SCLK_negedge && (MOSI_count < 4'd7)) begin
            {MOSI, MOSI_buf} <= {MOSI_buf, 1'b0};
            MOSI_count <= MOSI_count + 4'd1;
        end
        else if(SCLK_negedge) begin
            {MOSI, MOSI_buf} <= {reg_addr, 1'b0};
            MOSI_count <= 4'd0;
            next_state <= ADDR_OUT;
        end
    end
	ADDR_OUT:
    begin    // send out register address
        if(SCLK_negedge && (MOSI_count < 4'd7)) begin
            {MOSI, MOSI_buf} <= {MOSI_buf, 1'b0};
            MOSI_count <= MOSI_count + 4'd1;
        end
        else if(SCLK_negedge) begin
            {MOSI, MOSI_buf} <= {dout, 1'b0};
            MOSI_count <= 4'd0;
            next_state <= (rdh_wrl) ? READ_DATA : WRITE_DATA;
        end
    end
	WRITE_DATA:
    begin    // send testing data out to flash
        if(SCLK_negedge && (MOSI_count < 4'd7)) begin
            {MOSI, MOSI_buf} <= {MOSI_buf, 1'b0};
            MOSI_count <= MOSI_count + 4'd1;
        end
        else if(SCLK_negedge) begin
            {MOSI, MOSI_buf} <= 9'h0;
            MOSI_count <= 4'd0;
            next_state <= ENDING;
        end
    end
    READ_DATA:
    begin    // get a byte
        if(SCLK_negedge && (MOSI_count < 4'd7)) begin
            MISO_buf <= {MISO_buf[5:0], MISO};
            MOSI_count <= MOSI_count + 4'd1;
        end
        else if(SCLK_negedge) begin
            MOSI_count <= 4'd0;
            next_state <= ENDING;
            din <= {MISO_buf, MISO};
            din_valid <= 1'b1;
        end
        else begin
            din_valid <= 1'b0;
        end
    end
	ENDING:
    begin    //disable SCK and CS
        if(SCLK_negedge) begin
            CSN <= 1'b1;
            next_state <= IDLE;
            SCLK_en <= 1'b0;
        end
    end
    endcase
end

endmodule

module clock_divider(
    input wire clk,     // 输入时钟信号
    input wire rst,     // 复位信号
    output reg slow_clk // 输出的低频时钟信号
);

    reg [12:0] counter; // 计数器，13位可以表示0到8191

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            counter <= 13'b0;
            slow_clk <= 1'b0;
        end else begin
            if (counter == 13'd2500) begin // 2500个周期
                counter <= 13'b0;
                slow_clk <= ~slow_clk; // 计数达到2500后翻转慢时钟信号
            end else begin
                counter <= counter + 1'b1;
            end
        end
    end
endmodule
