`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/18 10:47:37
// Design Name: 
// Module Name: fallen_tb
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


module fallen_tb(

    );
    reg clk,reset,ACL_INT2;
    reg [31:0] SMV;
    wire alarm;
    alarm_top tb(.clk(clk),.reset(reset),.SMV_in(SMV),.alarm(alarm),.ACL_INT2(ACL_INT2));
    initial begin
        clk=1;
        reset=0;
        ACL_INT2=1;
        #40 
        reset=1;
        #100 
        reset=0;
        SMV=32'b01;
        #20
        SMV=32'b11;
        #20
        SMV=32'b01;  //M<3 ²»´¥·¢
        #20
        SMV=32'b11;
        #200//´¥·¢
        SMV=32'b00;//Í£1s
        #80
        ACL_INT2=0;
         SMV=32'b01; //1s
         #80
          SMV=32'b10; //2s
         #80
         SMV=32'b11;//3s
         #80
         SMV=32'b01;//4s
         #80                                  
        SMV=32'b10;
        
        end
    
    always #10 clk=~clk;
endmodule
