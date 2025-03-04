`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/07 14:16:16
// Design Name: 
// Module Name: tb_clock
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

//����ʱ�ӵķ������
/*
module tb_clock( );
  reg clk,reset;
  reg [15:0] binaryInput;
  wire [5:0] min_now,hour_now;
  
  clock tb(.clk(clk),.reset(reset),.min_now_2(min_now),.hour_now_2(hour_now),.binaryInput(binaryInput));
  initial begin
  clk = 0;
  reset = 0;
  #30 reset = 1;
      binaryInput = 'b0001_1000_0010_1001;//18:29
  #30 reset = 0;    
  end
   always #10 clk=~clk;
endmodule
*/
/*
module tb_transform();
 reg [15:0] binaryInput;//ʮ��λ �����Ƶ�����
 wire [5:0] min_now,hour_now;
 
 transform tb(.binaryInput(binaryInput),.min_now(min_now),.hour_now(hour_now));
 initial begin
 binaryInput = 0;
 #30  binaryInput = 16'b0001_1000_0010_1001; end//18:29
 endmodule
 */
 
 
 
 
//�жϷ�ҩ�ͷ������������� �������
/*
module tb_test_and_alarm( );
  reg clk,reset;
  reg its_time;
  reg taken;
  wire [2:0] state;
  wire alarm;
  wire buzzer;
  test_and_alarm tb(.clk(clk),.reset(reset),.alarm(alarm),.its_time(its_time),.taken(taken),.buzzer(buzzer),.state(state));
  initial begin
  clk = 0;
  reset = 1;
  its_time = 0;
  #30 reset = 0;
      its_time = 1;
      taken = 0;
   #30  taken = 0;
   #300 taken = 1;
  end
   always #10 clk=~clk;
endmodule
*/
module top_tp();
reg clk,reset;
reg taken;//�Ƿ��ҩ
reg [15:0] medicine_time;//�趨�ĳ�ҩʱ��
reg [15:0] time_now;
wire its_time;//��ҩʱ�䵽��
wire [3:0] count_reg;// ��ҩʱ�䵽�˺� �����˼���
wire buzzer,alarm;//�������ͱ�������
wire [7:0] hour_now,min_now;//���ڵ�ʱ��
top tb(.clk(clk),.reset(reset),.taken(taken),.its_time(its_time),.time_now(time_now),.medicine_time(medicine_time),.buzzer(buzzer),.alarm(alarm),.hour_now(hour_now),.min_now(min_now),.count_reg(count_reg));

initial begin
clk = 0;
reset = 1;
taken = 0;
time_now = 16'b0001_1000_0010_1001; //18:29 
medicine_time = 16'b0001_1000_0011_0011; //18:30

#30 reset = 0;
    taken = 0;
#20000
taken=1;
end
always #10 clk=~clk;
endmodule

