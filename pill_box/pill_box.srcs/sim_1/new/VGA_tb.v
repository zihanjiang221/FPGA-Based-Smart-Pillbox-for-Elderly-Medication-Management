`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/29 17:58:00
// Design Name: 
// Module Name: VGA_tb
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


module VGA_tb();
    reg           clk      ;//50MHZ
    reg           rst_n    ;
 
    wire          hsync    ;
    wire          vsync    ;
    wire  [11:0]  vga_rgb  ;
 
//产生时钟、复位
initial begin
    clk = 1'b1;
    rst_n = 1'b0;
    #20
    rst_n = 1'b1;
end
always #10 clk = ~clk;
//模块例化
VGA vga_tb(
    /*input           */.clk        (clk    ),//系统时钟
    /*input           */.rst_n      (rst_n  ),//复位
    /*output          */.vga_hsync  (hsync  ),//行同步信号
    /*output          */.vga_vsync  (vsync  ),//场同步信号
    /*output  [15:0]  */.vga_rgb    (vga_rgb) //数据输出（红绿蓝）
);
endmodule

