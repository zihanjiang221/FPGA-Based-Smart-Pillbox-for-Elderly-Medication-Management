`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/30 10:03:18
// Design Name: 
// Module Name: final
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


module final(
   input clk,reset,
   output buzzer //低电平触发
    );
    wire a = 0;
    wire clk_1s;
    div_clk c1(.clk(clk),.reset(reset),.clk_1s(clk_1s));
    buzzer d1(.a(a),.clk_1s(clk_1s),.OUT(buzzer));
endmodule

module div_clk(clk,reset,clk_1s); //用分频器将时钟改成1s
    input clk,reset;
    output reg clk_1s;
    integer count_1=0;
    always @(posedge clk or posedge reset) 
    begin
        if (reset) 
            begin
            clk_1s <= 0;
            count_1 = 0;
            end
        else if(count_1 == 50_000_000) 
             begin
             clk_1s = ~clk_1s;
             count_1 = 0;
             end
        else if(count_1 < 50_000_000) count_1 = count_1 + 1;
        end
endmodule

module buzzer(a,clk_1s,OUT);
  input  a; 
  input clk_1s;
  output reg OUT;
  always @ (posedge clk_1s)
  begin
  if(a == 0)
    OUT = 0;
    else if(a == 1)
    OUT = 1;
  end
endmodule
