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
 
//����ʱ�ӡ���λ
initial begin
    clk = 1'b1;
    rst_n = 1'b0;
    #20
    rst_n = 1'b1;
end
always #10 clk = ~clk;
//ģ������
VGA vga_tb(
    /*input           */.clk        (clk    ),//ϵͳʱ��
    /*input           */.rst_n      (rst_n  ),//��λ
    /*output          */.vga_hsync  (hsync  ),//��ͬ���ź�
    /*output          */.vga_vsync  (vsync  ),//��ͬ���ź�
    /*output  [15:0]  */.vga_rgb    (vga_rgb) //�����������������
);
endmodule

