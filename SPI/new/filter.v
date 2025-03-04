module mean_filter #(parameter FILTER_CNT=8,parameter BIT_CNT=3) 
    (input clk,
    input rst,
    input data_en, //data_en是数据使能信号，用于控制滤波器何时接受新的输入数据。
    input[7:0]data_in,
    output reg mean_vld, //mean_vld是均值有效信号，表示当前输出的均值mean_out是否有效。
    output reg [7:0]mean_out
    );
    localparam WAITING   = 2'd3;
    reg wr_en;
    reg [7:0] wr_addr;
    reg [7:0]wr_data;
    reg rd_domain;
    reg rd_en;
    reg[7:0]rd_addr;
    wire rd_vld;
    wire[7:0]rd_data;
    reg[7:0]cnt;
    reg[BIT_CNT+7:0] data_add;
    always @(posedge clk or posedge rst) begin
        if(rst)
            cnt<='h0;
        else if(data_en)begin
            if(cnt==(FILTER_CNT -1))
                cnt <=cnt;
            else
                cnt <=cnt+1;
        end
        else
            cnt <='h0;
        end
    always @(posedge clk or posedge rst) begin 
        if(rst)
            wr_en <='h0;
        else if(data_en)
            wr_en <='h1;
        else
            wr_en <='h0;
        end
    always @(posedge clk or posedge rst) begin
        if(rst)
            wr_addr <='h0;
        else if(data_en)begin
            if(wr_addr==(FILTER_CNT -1))
                wr_addr <='h0;
            else
                wr_addr <=wr_addr +'h1;
            end
        end
    always @(posedge clk or posedge rst) begin
        if(rst)
            wr_data <='h0;
        else if(data_en)
            wr_data <=data_in;
        end
    always @(posedge clk or posedge rst)
        if(rst)
            rd_domain <='h0;
        else if(cnt ==(FILTER_CNT -1))
            rd_domain <='h1;
        else
            rd_domain <='h0;
            
    always @(posedge clk or posedge rst)
        if(rst)
            rd_en <='h0;
        else if(rd_domain)
            rd_en <='h1;
        else
            rd_en <='h0;
    
    always @(posedge clk or posedge rst)
        if(rst)
            rd_addr <='h0;
        else if(rd_domain)begin
            if(rd_addr ==(FILTER_CNT -1))
                rd_addr <='h0;
            else
                rd_addr <=rd_addr +'h1;
            end
        else
            rd_addr <='h0;
    
    mean_ram #(.N(FILTER_CNT)) u_mean_ram_inst(.clk(clk),.rst(rst),.wr_en(wr_en),.wr_addr(wr_addr),.wr_data(wr_data),.rd_en(rd_en),.rd_addr(rd_addr),.rd_vld(rd_vld),.rd_data(rd_data));
    always @(posedge clk or posedge rst)
        if(rst)
            data_add <='h0;
        else if(!data_en)
            data_add <='h0;
        else if(cnt ==(FILTER_CNT -1))
            data_add <=data_add  + wr_data  - rd_data;
        else
            data_add <=data_add+wr_data;
    always @(posedge clk or posedge rst)
        if(rst)
            mean_vld <='h0;
        else if(cnt ==(FILTER_CNT -1))
            mean_vld <='h1;
        else
            mean_vld <='h0;
    always @(posedge clk or posedge rst)
        if(rst)
            mean_out <='h0;
        else if(cnt ==(FILTER_CNT -1))
            mean_out <=data_add[BIT_CNT+7:BIT_CNT];
    endmodule
    
    
    module mean_ram #(parameter N=8)(
    input clk,
    input rst,
    input wr_en ,
    input [7:0]wr_addr,
    input [7:0]wr_data,
    input rd_en,
    input [7:0]rd_addr,
    output reg rd_vld,
    output reg [7:0] rd_data
    );
    integer i;
    reg [7:0] ram [0:N-1];
    always @(posedge clk or posedge rst) begin
        if(rst)begin
            for(i=0;i<(N-1);i=i+1)
                ram[0]<='h0;
            end
        else if(wr_en)
            ram[wr_addr]<=wr_data;
        end
    always @(posedge clk or posedge rst) begin
        if(rst)
            rd_data <='h0;
        else if(rd_en)
            rd_data <=ram[rd_addr];end
    always @(posedge clk or posedge rst)begin
        if(rst)
            rd_vld <='h0;
        else if(rd_en)
            rd_vld <='h1;
        else
            rd_vld <='h0;
        end
    endmodule