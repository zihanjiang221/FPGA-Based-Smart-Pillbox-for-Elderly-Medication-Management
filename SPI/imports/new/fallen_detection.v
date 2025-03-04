`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/16 15:41:20
// Design Name: 
// Module Name: fallen_detection
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


module alarm_top(
    input clk,
    input reset,  //高电平复位有效
    input [31:0]SMV_in,  //原始32位
    input ACL_INT2,
    output alarm,
    output test2
    );
    //周期为1s的时钟
    reg clk_1s;
    reg [31:0] cnt;//50_000_000
    always @(posedge clk or posedge reset) begin
        if(reset==1)begin
         cnt<=0;
         clk_1s<=1;end
        else begin
            if(cnt==10_000) begin    //10_000
               clk_1s<=clk_1s+1;
               cnt<=0;end
            else cnt<=cnt+1;end
        end
    
    wire M_more,SMV_more,SMV_load,M_load,M_clear ;  
    control ctrl (.test2(test2),.ACL_INT2(ACL_INT2),.alarm(alarm),.clk(clk),.clk_1s(clk_1s),.reset(reset),.M_more(M_more),.SMV_more(SMV_more),.SMV_load(SMV_load),.M_load(M_load),.M_clear(M_clear));
    datapath dp(.SMV_in(SMV_in),.clk(clk),.reset(reset),.M_more(M_more),.SMV_more(SMV_more),.SMV_load(SMV_load),.M_load(M_load),.M_clear(M_clear));
endmodule
    

module control(
    input clk,
    input clk_1s,
    input reset,
    input M_more,
    input SMV_more,
    input ACL_INT2,
    output reg SMV_load,
    output reg M_load,
    output reg M_clear,
    output alarm,
    output test2);
    reg [2:0]state;
    reg [2:0]n_state;
    reg [2:0]TIME;
    always @(posedge clk_1s or posedge reset)begin
        if(reset) TIME<=3'b000;
        else begin
        if(state==3'b010)begin 
            TIME<=TIME+1;
            end
        else if(state==3'b000) TIME<=3'b000;
        end
    end
    
    always @(*)begin
            case (state)
                3'b000:begin
                    SMV_load=1;
                    M_clear=(SMV_more?0:1);
                    M_load=0;
                    end
                3'b001:begin
                        SMV_load=0;
                        M_clear=0;
                        M_load=1;
                        end                
                3'b010:begin
                            SMV_load=0;
                            M_clear=0;
                            M_load=0;
                            end                
                3'b011:begin
                        SMV_load=0;
                          M_clear=0;
                           M_load=0;
                         end                
   
                   endcase
           end           
    always @(*)begin
        case (state)
            3'b000:begin
                if(SMV_more) n_state=3'b001;
                else n_state=3'b000;end
            3'b001:begin
                if( M_more) n_state=3'b010;
                else n_state=3'b000;end
            3'b010:begin
                if(TIME<3'b101) n_state=3'b010;
                else if(~ACL_INT2) n_state=3'b011;
                else n_state=3'b000;end 
           
            3'b011:begin  
                n_state=3'b011;end
                endcase
            end
    always @(posedge clk or posedge reset) begin
         if(reset) state<=3'b000;
         else begin
            state<=n_state;
            end        
    end
    assign alarm=state==3'b011;
    assign test2=state==3'b010;
    endmodule
    
    
module datapath(
    input clk,
    input reset,
    input clk_1s,
    input SMV_load,
    input M_load,
    input M_clear,
    input [31:0] SMV_in,  //原始32
    output M_more, //M大于2输出1
    output SMV_more//SMV 大于threshold 1 输出1
    );
    parameter thr1=32'b11_000_000_000_000;  // 512g2  100_000_000_000_000
    wire [31:0] SMV_reg_out;//SMV 寄存器输出   原始32
register #(.N(32)) register_SMV(.clk(clk),.reset(reset),.in(SMV_in),.load(SMV_load),.out(SMV_reg_out));    
    assign SMV_more=SMV_reg_out>thr1;
    wire [1:0] M_reg_out;
    assign M_more=M_reg_out>2'b10;
    adder #(.N(2)) adder_M(.clear(M_clear),.clk(clk),.reset(reset),.in(M_reg_out),.load(M_load),.out(M_reg_out));
    
    
    
    endmodule 
    
module register
        #(parameter N=4)
        (
        input clk,
        input reset,
        input [N-1:0] in,
        input load,
        input clear,
        output reg [N-1:0] out
        );
        always @(posedge clk )begin
            if(reset==1|clear==1) out<=0;
            else if(load) out<=in;
        end
    endmodule
module adder
            #(parameter N=4)
            (
            input clk,
            input reset,
            input [N-1:0] in,
            input load,
            input clear,
            output reg [N-1:0] out
            );
            always @(posedge clk )begin
                if(reset==1|clear==1) out<=0;
                else if(load) out<=in+1;
            end
        endmodule