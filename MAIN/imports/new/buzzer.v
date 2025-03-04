`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/30 10:49:29
// Design Name: 
// Module Name: buzzer
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



module top(counter,clk,reset,taken,its_time,time_now,medicine_time,buzzer,alarm,hour_now,min_now,count_reg);//最后的顶层代码
input clk,reset;
input taken;//是否吃药
input [15:0] medicine_time;//设定的吃药时间
input [15:0] time_now;//基准时间
output its_time;//吃药时间到了
output [3:0] count_reg;// 吃药时间到了后 提醒了几次
output buzzer,alarm;//蜂鸣器和报警提醒
output [7:0] hour_now,min_now;//现在的时间 
output [3:0]counter;
wire its_time;
wire [3:0] count_reg;
wire min_med,hour_med;//吃药的时间
wire [7:0] min_now,hour_now;//现在的时间
wire [5:0] min_now_2,hour_now_2;  //现在的时间未分
wire alarm_not_taken; //过了吃药时间好久 还没吃药的报警
wire alarm_fall; // 跌倒报警
DecimalSplit hour(.decimal(hour_now_2),.tens(hour_now[7:4]),.ones(hour_now[3:0]));
DecimalSplit min(.decimal(min_now_2),.tens(min_now[7:4]),.ones(min_now[3:0]));
assign its_time=(medicine_time=={hour_now,min_now});


clock c2(.clk(clk),.reset(reset),.min_now_2(min_now_2),.hour_now_2(hour_now_2),.binaryInput(time_now));//得到现在的时间
test_and_alarm c3(.counter(counter),.clk(clk),.reset(reset),.alarm(alarm),.its_time(its_time),.taken(taken),.buzzer(buzzer),.count_reg(count_reg));//输出buzzer和没吃药的报警提醒 

endmodule

//将现在的时间以十六位输出给yzt
module DecimalSplit ( 
input [5:0] decimal, // 6-bit binary input representing a decimal number 
output reg [3:0] tens, // 4-bit binary output for the tens place 
output reg [3:0] ones // 4-bit binary output for the ones place
 ); // Internal variable to store the decimal value 
 reg [7:0] temp_decimal; 
 always @(*) begin // Convert the 6-bit binary input to decimal 
 temp_decimal = decimal; // Split the decimal number into tens and ones 
 tens = temp_decimal / 10; 
 ones = temp_decimal % 10; 
 end 
 endmodule


module clock(clk,reset,min_now_2,hour_now_2,binaryInput);
   input clk,reset;
   input [15:0] binaryInput;//十六位 二进制的输入
   output [5:0] min_now_2,hour_now_2;
    reg [5:0] min_now,hour_now;
   wire clk_1s,clk_1min,clk_1hour;
  assign min_now_2 = min_now;
  assign hour_now_2 = hour_now;
   //reg [5:0] min_now,hour_now,min_med,hour_med;
   reg [5:0] count_1= 2'b00000;
   reg [5:0] count_2= 2'b00000;
div_clk_s c1(.clk(clk),.reset(reset),.clk_1s(clk_1s));
div_clk_m c2(.clk_1s(clk_1s),.reset(reset),.clk_1min(clk_1min));
div_clk_h c3(.clk_1min(clk_1min),.reset(reset),.clk_1hour(clk_1hour));

    reg [3:0] hour_first,hour_second;
    reg [3:0] min_first,min_second;
    always @(*)
      begin
        case (binaryInput[15:12])  //小时数的第一位 12点的1  23点的2
          4'b0000: hour_first = 4'b0000;//0
          4'b0001: hour_first = 4'b0001;//1
          4'b0010: hour_first = 4'b0010;//2
          default: hour_first = 4'b0000;
        endcase
      end
      
      always @(*)
       begin
         case (binaryInput[11:8])//小时数的第二位 12点的2 23点的3
           4'b0000: hour_second = 4'b0000;//0
           4'b0001: hour_second = 4'b0001;//1
           4'b0010: hour_second = 4'b0010;//2
           4'b0011: hour_second = 4'b0011;//3
           4'b0100: hour_second = 4'b0100;//4
           4'b0101: hour_second = 4'b0101;//5
           4'b0110: hour_second = 4'b0110;//6
           4'b0111: hour_second = 4'b0111;//7
           4'b1000: hour_second = 4'b1000;//8
           4'b1001: hour_second = 4'b1001;//9
           default: hour_second = 4'b0000;
         endcase
       end
       
       always @(*)
             begin
               case (binaryInput[7:4])  //小时数的第一位 12点的1  23点的2
                 4'b0000: min_first = 4'b0000;//0
                 4'b0001: min_first = 4'b0001;//1
                 4'b0010: min_first = 4'b0010;//2
                 4'b0011: min_first = 4'b0011;//3
                 4'b0100: min_first = 4'b0100;//4
                 4'b0101: min_first = 4'b0101;//5
                 4'b0110: min_first = 4'b0110;//6
                 default: min_first = 4'b0000;
               endcase
             end
       
       always @(*)
              begin
                case (binaryInput[3:0])//分钟数的第二位 12分的2 49分的9
                        4'b0000: min_second = 4'b0000;//0
                        4'b0001: min_second = 4'b0001;//1
                        4'b0010: min_second = 4'b0010;//2
                        4'b0011: min_second = 4'b0011;//3
                        4'b0100: min_second = 4'b0100;//4
                        4'b0101: min_second = 4'b0101;//5
                        4'b0110: min_second = 4'b0110;//6
                        4'b0111: min_second = 4'b0111;//7
                        4'b1000: min_second = 4'b1000;//8
                        4'b1001: min_second = 4'b1001;//9
                        default: min_second = 4'b0000;
                      endcase
                    end
       
always @(posedge clk_1min or posedge reset )
begin
    if(reset)
    begin
      min_now <= (min_first * 10)+ min_second;
     end
    else if(min_now < 6'b111011)// min_now < 59
     min_now <= min_now + 1;
    else if(min_now == 6'b111011) //min_now == 59
    begin
     min_now <= 6'b000000;
     end
end

always @(posedge clk_1hour or posedge reset)
begin
    if(reset)
    begin
    hour_now <= (hour_first * 10) + hour_second;  
    end
    else if(hour_now < 6'b011000)//hour_now < 24
     hour_now <= hour_now + 1;
     else if(min_now == 6'b111011)
     hour_now <= hour_now + 1;
     else if(hour_now == 6'b011000) //hour_now = 24
     begin
     hour_now <= 6'b000001;
     end
end
endmodule

module div_clk_s(clk,reset,clk_1s); //用分频器将时钟改成1s
    input clk,reset;
    output reg clk_1s;
    integer count_1=0;
    always @(posedge clk or posedge reset) 
    begin
        if (reset) 
            begin
            clk_1s <= 0;
            count_1 <= 0;
            end
        else if(count_1 == 2) //原代码50_000_000  仿真改为 2
             begin
             clk_1s <= ~clk_1s;
             count_1 <= 0;
             end
        else if( count_1 < 2)//原代码50_000_000  仿真改为 2
         count_1 <= count_1 + 1;
        end
endmodule

module div_clk_m(clk_1s,reset,clk_1min); //用分频器将时钟改成1min
    input clk_1s,reset;
    output reg clk_1min;
    integer count_2 = 0;
    always @(posedge clk_1s or posedge reset) 
    begin
        if (reset) 
            begin
            clk_1min <= 0;
            count_2 <= 0;
            end
        else if(count_2 == 30) 
             begin
             clk_1min <= ~clk_1min;
             count_2 <= 0;
             end
        else if( count_2 < 30 ) count_2 <= count_2 + 1;
        end
endmodule


module div_clk_h(clk_1min,reset,clk_1hour); //用分频器将时钟改成1hour
    input clk_1min,reset;
    output reg clk_1hour;
    integer count_3 ;
    always @(posedge clk_1min or posedge reset) 
    begin
        if (reset) 
            begin
            clk_1hour <= 0;
            count_3 <= 0;
            end
        else if(count_3 == 30) 
             begin
             clk_1hour <= ~clk_1hour;
             count_3 <= 0;
             end
        else if(count_3 < 30) count_3 <= count_3 + 1;
        end
endmodule


module test_and_alarm(clk,reset,alarm,its_time,taken,buzzer,count_reg,counter);//顶层模块
input clk,reset;
input its_time;  //its_time 等于 1 说明 到吃药的时间了
input taken; //taken 等于 1说明 吃过药了
output buzzer;//蜂鸣器 每十五秒提醒一次
output alarm;
output [3:0]count_reg; //alarm就是警报
output [3:0]counter;
wire [2:0] state;
wire [3:0]counter;
wire countmux,countload;


datapath d1(.clk(clk),.reset(reset),.countmux(countmux),.countload(countload),.alarm(alarm),.count_reg(count_reg));
FSM d2(.counter(counter),.clk(clk),.reset(reset),.its_time(its_time),.taken(taken),.buzzer(buzzer),.countmux(countmux),.countload(countload),.state(state));

endmodule



module datapath(clk,reset,countmux,countload,alarm,count_reg);
  input clk,reset,countmux,countload;
  output alarm;
  output [3:0] count_reg;
  
  wire [3:0] pre_out;
  wire [3:0] count_reg;
  wire [3:0] count;
  
  mux1 a1(.a(count),.countmux(countmux),.OUT(pre_out));
  _4bit_register a2(.clk(clk),.reset(reset),.countload(countload),.count(pre_out),.OUT(count_reg));
  increment #(.N(4)) PCincre(.IncInput(count_reg),.IncOutput(count));
  assign alarm = (count_reg > 4'b0011); //当count大于 0011（3）代表已经有一分钟没有吃药 仿真写成2方便一点
endmodule

module FSM(clk,reset,its_time,taken,countmux,countload,buzzer,state,counter);
input clk,reset;
input its_time,taken;
output  reg countmux,countload;
output reg buzzer;//蜂鸣器
output  reg [2:0] state;
output reg [3:0] counter ;//用来计数经过了秒 经过十五秒 S1->S2
wire clk_1s,clk_1min;
div_clk_s c1(.clk(clk),.reset(reset),.clk_1s(clk_1s));
//div_clk_m c2(.clk_1s(clk_1s),.reset(reset),.clk_1min(clk_1min));
reg clk_1s_d;
reg [2:0] next_state;//reg [2:0] state,next_state;
always@(posedge clk) begin
    clk_1s_d<=clk_1s;end
wire clk_1s_pos;
assign clk_1s_pos=({clk_1s,clk_1s_d}==2'b10);
//always @(posedge clk or posedge reset)//每一秒 counter + 1  counter是四位的
/*always @(posedge clk)
begin
if(reset==1)
counter <= 4'b0001;
else begin
    if (state==3'b001 && its_time == 1 && clk_1s_pos == 1)
        counter <= counter + 4'b0001;
    else  counter <=4'b0000;
end
end*/
always @(posedge clk_1s or posedge reset)begin
    if(reset) counter <=4'b0000;
    else counter <= counter + 4'b0001;
end
//always @(posedge clk or posedge reset)
always @(posedge clk)
begin
if(reset==1 | state==3'b011)
buzzer <= 1;
else if(counter > 4'b1010 && its_time && ~taken)
buzzer <= 0;
else buzzer <= 1;
end

//定义状态
    parameter S0 = 0;
    parameter S1 = 1;
    parameter S2 = 2;
    parameter S3 = 3;
    parameter S4 = 4;
    
//次态逻辑
always @(*) begin
       case (state)
             S0:begin
                if(its_time)
                 next_state = S1;//根据状态转移图写状态转移
                 else if(its_time == 0)
                 next_state = S0;
                 end
             S1:begin
                //if(counter == 1111)  //counter 等于 15
   
                if(counter == 4'b1111)begin //仿真写成 2 仿真的时候快一点
                   next_state = S2;
               end
                end
             S2:begin
                if(taken)
                 next_state = S3;//根据状态转移图写状态转移
                else if(taken == 0)
                 next_state = S4;
                end
             S3:begin
                next_state = S3;
                end
             S4:begin
                next_state = S1;
                end
       endcase
       end
 //现态逻辑
         always @(posedge clk) begin
            if (reset) state <= 0;
            else state <= next_state;
          end
 //输出逻辑
          always @(*) begin
            case (state)
             S0: begin //根据表格输出控制字 标记为x的值不改变即可
                 countmux = 0;
                 countload = 1;
                 end
             S1: begin
                  countmux = 0;
                  countload = 0;
                 end
             S2:begin
                countmux = 0;
                countload = 0;
                end
             S3:begin
                countmux = 0;
                countload = 0;
                end
             S4:begin
                countmux = 1;
                countload = 1;
                end
             endcase
             end
endmodule

module mux1(
   input [3:0] a,
   input countmux, 
   output [3:0]OUT
);
   assign OUT = countmux ? a : 4'b0000;
endmodule

module _4bit_register(
    input clk,reset,countload,
    input [3:0]count,
    output reg [3:0] OUT
 );
 
   //always @(posedge clk or posedge reset)  
   always @(posedge clk)
   begin
   if(reset) 
      OUT <= 4'b0000;
   else if(countload) 
      OUT <= count;
    end
endmodule 

module increment
     #(parameter N=4)
     (
     input  [N-1:0]IncInput,
     output  [N-1:0]IncOutput
     );
     assign IncOutput = IncInput + 1;
endmodule















