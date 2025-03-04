`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/30 10:23:18
// Design Name: 
// Module Name: buzzer_tb
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


module final_tb(

    );
    reg clk,reset;
    reg a;
    wire buzzer;
    final tb(.clk(clk),.reset(reset),.buzzer(buzzer));
    initial begin
    clk = 0;
    reset = 1;
    a = 0;
    #30
    reset = 0;
    end
    always #10 clk = ~ clk;
endmodule
