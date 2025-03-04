`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/05 21:50:08
// Design Name: 
// Module Name: VGA
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


module VGA
    (input           clk        ,//系统时钟
    input           rst_n      ,//复位
    input         [15:0]  now_time, //现在的时间
    input         [15:0]  set_time ,  //设定的时间
    input           [2:0] amount_A ,//用药量 ,0-7
    input           [2:0] amount_B ,//用药量 ,0-7
    input           [2:0] amount_C ,//用药量 ,0-7
    input           eat_assure,  //0:未服药 ，1：已服药  
    input           [1:0] state,  //00正常 白色  01时间到 黄色   10多次提醒 橙色     11 1min后报警红色
    output          vga_hsync ,//行同步信号
    output          vga_vsync ,//场同步信号
    output  [11:0]  vga_rgb    //数据输出（红绿蓝）

    );
   // wire [15:0] time1;//当前时间 如 2301 表示23：01  0010_0011_0000_0001
    //wire [15:0] time2;//设定时间    如  23:59    0010_0011_0101_1001
    //暂时确定ABC量
    /*wire  [2:0] amount_A;
    wire  [2:0] amount_B;
    wire  [2:0] amount_C;
    wire eat_assure;*/
    //reg [15:0]timeset;
    //assign time1=16'b0010_0011_0000_0001;
   //assign time2=16'b0010_0011_0101_1001;
  // reg locked;  // 标志位，用于锁定值
   /*
   always @(posedge clk or posedge rst_n) begin
       if (rst_n) begin
           timeset <= 0;
           locked <= 0;
       end else begin
           if (!locked) begin
               if (time2 != timeset) begin
                   timeset <= time2;
                   locked <= 1;  // 一旦检测到变化，锁定输出值
               end
           end
       end
   end*/

            
    /*assign eat_assure=1;
    assign amount_A=3'b111;//7
    assign amount_B=3'b110;//6
    assign amount_C=3'b000;//0 */
   //信号定义
   wire          vga_clk   ;//vga工作时钟  25MHZ
   //wire          locked    ;
   //wire          vga_reset ;
   wire   [9:0]  pix_x     ;
   wire   [9:0]  pix_y     ;
   wire   [11:0] pix_data  ;
    
   //assign vga_reset = rst_n && locked;
    
   //模块例化
   //PLL
   CLK_PLL    CLK_PLL_inst (
       .inclk0    (clk    ),
       .c0        (vga_clk),
       .rst_n     (rst_n)
   );
    
   //vga控制模块
   vga_control u_vga_control(
       /*input            */.clk_25     (vga_clk  ),//时钟  25MHZ
       /*input            */.rst_n      (rst_n),//复位
       /*input   [15:0]   */.pix_data   (pix_data ),//输入图像数据
       /*output  [9:0]    */.pix_x      (pix_x    ),//横坐标
       /*output  [9:0]    */.pix_y      (pix_y    ),//纵坐标
       /*output           */.hsync      (vga_hsync),//行同步信号
       /*output           */.vsync      (vga_vsync),//场同步信号
       /*output  [15:0]   */.vga_rgb    (vga_rgb  ) //输出图像数据（RGB444格式）
   );
    
   //vga显示模块
   vga_display u_vga_display(
       /*input             */.clk_25    (vga_clk  ),//VGA驱动时钟
       /*input             */.rst_n     (rst_n),//复位
       /*input      [9:0]  */.pix_x     (pix_x    ),//横坐标
       /*input      [9:0]  */.pix_y     (pix_y    ),//纵坐标
        /*input      [2:0]  */ .amount_A(amount_A),
                            .amount_B(amount_B),
                            .amount_C(amount_C),  
                            .eat_assure(eat_assure), 
                            .time1(now_time),
                            .time2(set_time),
                            .state(state),                                                     
       /*output reg [11:0] */.pix_data  (pix_data ) //数据
   );
    
endmodule

module vga_display(
    input             clk_25  ,//VGA驱动时钟
    input             rst_n   ,//复位
 
    input      [9:0]  pix_x   ,//横坐标
    input      [9:0]  pix_y   ,//纵坐标
    input [2:0] amount_A,
    input [2:0] amount_B,
    input [2:0] amount_C,
    input [15:0] time1,
    input [15:0] time2,
    input eat_assure,
    input [1:0]state,
    output reg [11:0] pix_data //数据
);

parameter   CHAR_W_time11   = 10'd32 ,//字符宽度
              CHAR_H_time11   = 10'd64  ,//字符深度            
                            CHAR_W_time12   = 10'd32 ,//字符宽度
                            CHAR_H_time12   = 10'd64  ,//字符深度    
                            CHAR_W_time13   = 10'd32 ,//字符宽度
                            CHAR_H_time13   = 10'd64  ,//字符深度    
                            CHAR_W_time14   = 10'd32 ,//字符宽度
                            CHAR_H_time14   = 10'd64  ,//字符深度       
                                          CHAR_W_time21   = 10'd32 ,//字符宽度
                                          CHAR_H_time21   = 10'd64  ,//字符深度    
                                          CHAR_W_time22   = 10'd32 ,//字符宽度
                                          CHAR_H_time22   = 10'd64  ,//字符深度    
                                          CHAR_W_time23   = 10'd32 ,//字符宽度
                                          CHAR_H_time23   = 10'd64  ,//字符深度    
                                          CHAR_W_time24   = 10'd32 ,//字符宽度
                                          CHAR_H_time24   = 10'd64  ;//字符深度  

parameter   CHAR_B_H_maohao = 10'd150 ,//字符开始横坐标  192
            CHAR_B_V_maohao = 10'd10 ;//字符开始纵坐标   208

parameter   CHAR_W_maohao   = 10'd32 ,//字符宽度
              CHAR_H_maohao   = 10'd128  ;//字符深度      
              
                                                        
parameter   CHAR_B_H_time11 = 10'd250 ,//字符开始横坐标  192
            CHAR_B_V_time11 = 10'd10 ;//字符开始纵坐标   208

parameter   CHAR_B_H_time12 = 10'd200 ,//字符开始横坐标
            CHAR_B_V_time12 = 10'd10 ;//字符开始纵坐标

parameter   CHAR_B_H_time13 = 10'd100 ,//字符开始横坐标
            CHAR_B_V_time13 = 10'd10 ;//字符开始纵坐标

parameter   CHAR_B_H_time14 = 10'd50 ,//字符开始横坐标
            CHAR_B_V_time14 = 10'd10 ;//字符开始纵坐标

parameter   CHAR_B_H_time21 = 10'd250 ,//字符开始横坐标
            CHAR_B_V_time21 = 10'd70 ;//字符开始纵坐标

parameter   CHAR_B_H_time22 = 10'd200 ,//字符开始横坐标
            CHAR_B_V_time22 = 10'd70 ;//字符开始纵坐标

parameter   CHAR_B_H_time23 = 10'd100 ,//字符开始横坐标
            CHAR_B_V_time23 = 10'd70 ;//字符开始纵坐标

parameter   CHAR_B_H_time24 = 10'd50 ,//字符开始横坐标
            CHAR_B_V_time24 = 10'd70 ;//字符开始纵坐标
//确认服药
parameter   CHAR_B_H_eat_assure = 10'd200 ,//字符开始横坐标  192
            CHAR_B_V_eat_assure = 10'd400 ;//字符开始纵坐标   208
 
parameter   CHAR_W_eat_assure   = 10'd192 ,//字符宽度
            CHAR_H_eat_assure   = 10'd64  ;//字符深度
//参数定义    当前时间：  320*64
parameter   CHAR_B_H_timenow = 10'd300 ,//字符开始横坐标  192
            CHAR_B_V_timenow = 10'd10 ;//字符开始纵坐标   208
 
parameter   CHAR_W_timenow   = 10'd320 ,//字符宽度
            CHAR_H_timenow   = 10'd64  ;//字符深度
            
//参数定义    设定时间：  320*64
            parameter   CHAR_B_H_timeset = 10'd300 ,//字符开始横坐标  192
                        CHAR_B_V_timeset = 10'd70 ;//字符开始纵坐标   208
             
            parameter   CHAR_W_timeset   = 10'd320 ,//字符宽度
                        CHAR_H_timeset   = 10'd64  ;//字符深度  
                        
//参数定义    A盒  352*64
parameter   CHAR_B_H_A = 10'd200 ,//字符开始横坐标  192
             CHAR_B_V_A = 10'd140 ;//字符开始纵坐标   208
                         
parameter   CHAR_W_A   = 10'd352 ,//字符宽度
              CHAR_H_A   = 10'd64  ;//字符深度   
              

parameter   CHAR_B_H_Anum = 10'd150 ,//字符开始横坐标  192
             CHAR_B_V_Anum = 10'd140 ;//字符开始纵坐标   208
                         
parameter   CHAR_W_Anum   = 10'd32 ,//字符宽度
              CHAR_H_Anum   = 10'd64  ;//字符深度          
              
                     

//参数定义    B盒  352*64
parameter   CHAR_B_H_B = 10'd200 ,//字符开始横坐标  192
             CHAR_B_V_B = 10'd210 ;//字符开始纵坐标   208
                         
parameter   CHAR_W_B   = 10'd352 ,//字符宽度
              CHAR_H_B   = 10'd64  ;//字符深度          

parameter   CHAR_B_H_Bnum = 10'd150 ,//字符开始横坐标  192
             CHAR_B_V_Bnum = 10'd210 ;//字符开始纵坐标   208
                         
parameter   CHAR_W_Bnum   = 10'd32 ,//字符宽度
              CHAR_H_Bnum   = 10'd64  ;//字符深度         

//参数定义    C盒  352*64
parameter   CHAR_B_H_C = 10'd200 ,//字符开始横坐标  192
             CHAR_B_V_C = 10'd280 ;//字符开始纵坐标   208
                         
parameter   CHAR_W_C   = 10'd352 ,//字符宽度
              CHAR_H_C   = 10'd64  ;//字符深度          

parameter   CHAR_B_H_Cnum = 10'd150 ,//字符开始横坐标  192
             CHAR_B_V_Cnum = 10'd280 ;//字符开始纵坐标   208
                         
parameter   CHAR_W_Cnum   = 10'd32 ,//字符宽度
              CHAR_H_Cnum   = 10'd64  ;//字符深度          

 
//颜色参数  RGB444格式
parameter   RED     = 12'hF80,
            ORANGE  = 12'hFC0,
            YELLOW  = 12'hFFE,
            GREEN   = 12'h07E,
            CYAN    = 12'h07F,
            BLUE    = 12'h01F,
            PURPPLE = 12'hF81,
            BLACK   = 12'h000,
            WHITE   = 12'hFFF,
            GRAY    = 12'hD69;
 
//信号定义


wire    [9:0]    char_x_timenow    ;//字符的横坐标
wire    [9:0]    char_y_timenow    ;//字符的纵坐标
reg     [319:0]  char_time_now [63:0]  ;

wire    [9:0]    char_x_timeset    ;//字符的横坐标
wire    [9:0]    char_y_timeset    ;//字符的纵坐标 
reg     [319:0]  char_time_set [63:0]  ;

wire    [9:0]    char_x_A    ;//字符的横坐标
wire    [9:0]    char_y_A    ;//字符的纵坐标
reg     [351:0]  char_A [63:0]  ;

wire    [9:0]    char_x_Anum    ;//字符的横坐标
wire    [9:0]    char_y_Anum    ;//字符的纵坐标
reg      char_Anum   ;//表示A盒用药量的数字的点阵为1的信号

wire    [9:0]    char_x_B    ;//字符的横坐标
wire    [9:0]    char_y_B    ;//字符的纵坐标 
reg     [351:0]  char_B [63:0]  ;

wire    [9:0]    char_x_Bnum    ;//字符的横坐标
wire    [9:0]    char_y_Bnum    ;//字符的纵坐标
reg      char_Bnum   ;

wire    [9:0]    char_x_C    ;//字符的横坐标
wire    [9:0]    char_y_C    ;//字符的纵坐标 
reg     [351:0]  char_C [63:0]  ;

wire    [9:0]    char_x_Cnum    ;//字符的横坐标
wire    [9:0]    char_y_Cnum    ;//字符的纵坐标 
reg       char_Cnum   ;

wire    [9:0]    char_x_time11    ;//字符的横坐标
wire    [9:0]    char_y_time11    ;//字符的纵坐标 
reg       char_time11   ;

wire    [9:0]    char_x_time12, char_x_time13, char_x_time14, char_x_time21, char_x_time22, char_x_time23, char_x_time24;
wire    [9:0]    char_y_time12, char_y_time13, char_y_time14, char_y_time21, char_y_time22, char_y_time23, char_y_time24;
reg     char_time12, char_time13, char_time14, char_time21, char_time22, char_time23, char_time24;

wire    [9:0]    char_x_eat_assure    ;//字符的横坐标
wire    [9:0]    char_y_eat_assure    ;//字符的纵坐标 
wire       char_eat_assure   ;

reg     [191:0]  char_eaten [63:0]  ;
reg     [191:0]  char_uneaten [63:0]  ;
reg     [31:0]  char_0 [63:0]  ;
reg     [31:0]  char_1 [63:0]  ;
reg     [31:0]  char_2 [63:0]  ;
reg     [31:0]  char_3 [63:0]  ;
reg     [31:0]  char_4 [63:0]  ;
reg     [31:0]  char_5 [63:0]  ;
reg     [31:0]  char_6 [63:0]  ;
reg     [31:0]  char_7 [63:0]  ;
reg     [31:0]  char_8 [63:0]  ;
reg     [31:0]  char_9 [63:0]  ;

wire    [9:0]    char_x_maohao    ;//字符的横坐标
wire    [9:0]    char_y_maohao   ;//字符的纵坐标 
reg     [31:0]  char_maohao [127:0]  ;
always @(posedge clk_25)begin //根据A的数量判断选择哪个数字的点阵
    case (time1[15:12])
        4'b0000:char_time11<=(char_0[char_y_time11][char_x_time11] == 1'b1);
        4'b0001:char_time11<=(char_1[char_y_time11][char_x_time11] == 1'b1);
        4'b0010:char_time11<=(char_2[char_y_time11][char_x_time11] == 1'b1);
        4'b0011:char_time11<=(char_3[char_y_time11][char_x_time11] == 1'b1);
        4'b0100:char_time11<=(char_4[char_y_time11][char_x_time11] == 1'b1);
        4'b0101:char_time11<=(char_5[char_y_time11][char_x_time11] == 1'b1);
        4'b0110:char_time11<=(char_6[char_y_time11][char_x_time11] == 1'b1);
        4'b0111:char_time11<=(char_7[char_y_time11][char_x_time11] == 1'b1);
        4'b1000:char_time11<=(char_8[char_y_time11][char_x_time11] == 1'b1);
        4'b1001:char_time11<=(char_9[char_y_time11][char_x_time11] == 1'b1);
        endcase
            case (time1[11:8])
                4'b0000: char_time12 <= (char_0[char_y_time12][char_x_time12] == 1'b1);
                4'b0001: char_time12 <= (char_1[char_y_time12][char_x_time12] == 1'b1);
                4'b0010: char_time12 <= (char_2[char_y_time12][char_x_time12] == 1'b1);
                4'b0011: char_time12 <= (char_3[char_y_time12][char_x_time12] == 1'b1);
                4'b0100: char_time12 <= (char_4[char_y_time12][char_x_time12] == 1'b1);
                4'b0101: char_time12 <= (char_5[char_y_time12][char_x_time12] == 1'b1);
                4'b0110: char_time12 <= (char_6[char_y_time12][char_x_time12] == 1'b1);
                4'b0111: char_time12 <= (char_7[char_y_time12][char_x_time12] == 1'b1);
                4'b1000: char_time12 <= (char_8[char_y_time12][char_x_time12] == 1'b1);
                4'b1001: char_time12 <= (char_9[char_y_time12][char_x_time12] == 1'b1);
            endcase
            case (time1[7:4])
                4'b0000: char_time13 <= (char_0[char_y_time13][char_x_time13] == 1'b1);
                4'b0001: char_time13 <= (char_1[char_y_time13][char_x_time13] == 1'b1);
                4'b0010: char_time13 <= (char_2[char_y_time13][char_x_time13] == 1'b1);
                4'b0011: char_time13 <= (char_3[char_y_time13][char_x_time13] == 1'b1);
                4'b0100: char_time13 <= (char_4[char_y_time13][char_x_time13] == 1'b1);
                4'b0101: char_time13 <= (char_5[char_y_time13][char_x_time13] == 1'b1);
                4'b0110: char_time13 <= (char_6[char_y_time13][char_x_time13] == 1'b1);
                4'b0111: char_time13 <= (char_7[char_y_time13][char_x_time13] == 1'b1);
                4'b1000: char_time13 <= (char_8[char_y_time13][char_x_time13] == 1'b1);
                4'b1001: char_time13 <= (char_9[char_y_time13][char_x_time13] == 1'b1);
            endcase
            case (time1[3:0])
                4'b0000: char_time14 <= (char_0[char_y_time14][char_x_time14] == 1'b1);
                4'b0001: char_time14 <= (char_1[char_y_time14][char_x_time14] == 1'b1);
                4'b0010: char_time14 <= (char_2[char_y_time14][char_x_time14] == 1'b1);
                4'b0011: char_time14 <= (char_3[char_y_time14][char_x_time14] == 1'b1);
                4'b0100: char_time14 <= (char_4[char_y_time14][char_x_time14] == 1'b1);
                4'b0101: char_time14 <= (char_5[char_y_time14][char_x_time14] == 1'b1);
                4'b0110: char_time14 <= (char_6[char_y_time14][char_x_time14] == 1'b1);
                4'b0111: char_time14 <= (char_7[char_y_time14][char_x_time14] == 1'b1);
                4'b1000: char_time14 <= (char_8[char_y_time14][char_x_time14] == 1'b1);
                4'b1001: char_time14 <= (char_9[char_y_time14][char_x_time14] == 1'b1);
            endcase
            case (time2[15:12])
                4'b0000: char_time21 <= (char_0[char_y_time21][char_x_time21] == 1'b1);
                4'b0001: char_time21 <= (char_1[char_y_time21][char_x_time21] == 1'b1);
                4'b0010: char_time21 <= (char_2[char_y_time21][char_x_time21] == 1'b1);
                4'b0011: char_time21 <= (char_3[char_y_time21][char_x_time21] == 1'b1);
                4'b0100: char_time21 <= (char_4[char_y_time21][char_x_time21] == 1'b1);
                4'b0101: char_time21 <= (char_5[char_y_time21][char_x_time21] == 1'b1);
                4'b0110: char_time21 <= (char_6[char_y_time21][char_x_time21] == 1'b1);
                4'b0111: char_time21 <= (char_7[char_y_time21][char_x_time21] == 1'b1);
                4'b1000: char_time21 <= (char_8[char_y_time21][char_x_time21] == 1'b1);
                4'b1001: char_time21 <= (char_9[char_y_time21][char_x_time21] == 1'b1);
            endcase
            case (time2[11:8])
                4'b0000: char_time22 <= (char_0[char_y_time22][char_x_time22] == 1'b1);
                4'b0001: char_time22 <= (char_1[char_y_time22][char_x_time22] == 1'b1);
                4'b0010: char_time22 <= (char_2[char_y_time22][char_x_time22] == 1'b1);
                4'b0011: char_time22 <= (char_3[char_y_time22][char_x_time22] == 1'b1);
                4'b0100: char_time22 <= (char_4[char_y_time22][char_x_time22] == 1'b1);
                4'b0101: char_time22 <= (char_5[char_y_time22][char_x_time22] == 1'b1);
                4'b0110: char_time22 <= (char_6[char_y_time22][char_x_time22] == 1'b1);
                        4'b0111: char_time22 <= (char_7[char_y_time22][char_x_time22] == 1'b1);
                        4'b1000: char_time22 <= (char_8[char_y_time22][char_x_time22] == 1'b1);
                        4'b1001: char_time22 <= (char_9[char_y_time22][char_x_time22] == 1'b1);
                    endcase
                    case (time2[7:4])
                        4'b0000: char_time23 <= (char_0[char_y_time23][char_x_time23] == 1'b1);
                        4'b0001: char_time23 <= (char_1[char_y_time23][char_x_time23] == 1'b1);
                        4'b0010: char_time23 <= (char_2[char_y_time23][char_x_time23] == 1'b1);
                        4'b0011: char_time23 <= (char_3[char_y_time23][char_x_time23] == 1'b1);
                        4'b0100: char_time23 <= (char_4[char_y_time23][char_x_time23] == 1'b1);
                        4'b0101: char_time23 <= (char_5[char_y_time23][char_x_time23] == 1'b1);
                        4'b0110: char_time23 <= (char_6[char_y_time23][char_x_time23] == 1'b1);
                        4'b0111: char_time23 <= (char_7[char_y_time23][char_x_time23] == 1'b1);
                        4'b1000: char_time23 <= (char_8[char_y_time23][char_x_time23] == 1'b1);
                        4'b1001: char_time23 <= (char_9[char_y_time23][char_x_time23] == 1'b1);
                    endcase
                    case (time2[3:0])
                        4'b0000: char_time24 <= (char_0[char_y_time24][char_x_time24] == 1'b1);
                        4'b0001: char_time24 <= (char_1[char_y_time24][char_x_time24] == 1'b1);
                        4'b0010: char_time24 <= (char_2[char_y_time24][char_x_time24] == 1'b1);
                        4'b0011: char_time24 <= (char_3[char_y_time24][char_x_time24] == 1'b1);
                        4'b0100: char_time24 <= (char_4[char_y_time24][char_x_time24] == 1'b1);
                        4'b0101: char_time24 <= (char_5[char_y_time24][char_x_time24] == 1'b1);
                        4'b0110: char_time24 <= (char_6[char_y_time24][char_x_time24] == 1'b1);
                        4'b0111: char_time24 <= (char_7[char_y_time24][char_x_time24] == 1'b1);
                        4'b1000: char_time24 <= (char_8[char_y_time24][char_x_time24] == 1'b1);
                        4'b1001: char_time24 <= (char_9[char_y_time24][char_x_time24] == 1'b1);
                    endcase
                
end 


always @(posedge clk_25)begin //根据A的数量判断选择哪个数字的点阵
    case (amount_A)
        3'b000:char_Anum<=(char_0[char_y_Anum][char_x_Anum] == 1'b1);
        3'b001:char_Anum<=(char_1[char_y_Anum][char_x_Anum] == 1'b1);
        3'b010:char_Anum<=(char_2[char_y_Anum][char_x_Anum] == 1'b1);
        3'b011:char_Anum<=(char_3[char_y_Anum][char_x_Anum] == 1'b1);
        3'b100:char_Anum<=(char_4[char_y_Anum][char_x_Anum] == 1'b1);
        3'b101:char_Anum<=(char_5[char_y_Anum][char_x_Anum] == 1'b1);
        3'b110:char_Anum<=(char_6[char_y_Anum][char_x_Anum] == 1'b1);
        3'b111:char_Anum<=(char_7[char_y_Anum][char_x_Anum] == 1'b1);
        endcase
end 

always @(posedge clk_25)begin 
    case (amount_B)
        3'b000:char_Bnum<=(char_0[char_y_Bnum][char_x_Bnum] == 1'b1);
        3'b001:char_Bnum<=(char_1[char_y_Bnum][char_x_Bnum] == 1'b1);
        3'b010:char_Bnum<=(char_2[char_y_Bnum][char_x_Bnum] == 1'b1);
        3'b011:char_Bnum<=(char_3[char_y_Bnum][char_x_Bnum] == 1'b1);
        3'b100:char_Bnum<=(char_4[char_y_Bnum][char_x_Bnum] == 1'b1);
        3'b101:char_Bnum<=(char_5[char_y_Bnum][char_x_Bnum] == 1'b1);
        3'b110:char_Bnum<=(char_6[char_y_Bnum][char_x_Bnum] == 1'b1);
        3'b111:char_Bnum<=(char_7[char_y_Bnum][char_x_Bnum] == 1'b1);
        endcase
end 

always @(posedge clk_25)begin 
    case (amount_C)
        3'b000:char_Cnum<=(char_0[char_y_Cnum][char_x_Cnum] == 1'b1);
        3'b001:char_Cnum<=(char_1[char_y_Cnum][char_x_Cnum] == 1'b1);
        3'b010:char_Cnum<=(char_2[char_y_Cnum][char_x_Cnum] == 1'b1);
        3'b011:char_Cnum<=(char_3[char_y_Cnum][char_x_Cnum] == 1'b1);
        3'b100:char_Cnum<=(char_4[char_y_Cnum][char_x_Cnum] == 1'b1);
        3'b101:char_Cnum<=(char_5[char_y_Cnum][char_x_Cnum] == 1'b1);
        3'b110:char_Cnum<=(char_6[char_y_Cnum][char_x_Cnum] == 1'b1);
        3'b111:char_Cnum<=(char_7[char_y_Cnum][char_x_Cnum] == 1'b1);
        endcase
end 
//char_x
assign char_x_timenow = (((pix_x >= CHAR_B_H_timenow)&&(pix_x < (CHAR_B_H_timenow + CHAR_W_timenow)))
                &&((pix_y >= CHAR_B_V_timenow)&&(pix_y < (CHAR_B_V_timenow + CHAR_H_timenow))))
                ? (pix_x - CHAR_B_H_timenow) : 10'h3ff;
assign char_y_timenow = (((pix_x >= CHAR_B_H_timenow)&&(pix_x < (CHAR_B_H_timenow + CHAR_W_timenow)))
                &&((pix_y >= CHAR_B_V_timenow)&&(pix_y < (CHAR_B_V_timenow + CHAR_H_timenow))))
                ? (pix_y - CHAR_B_V_timenow) : 10'h3ff;
                
                
assign char_x_timeset = (((pix_x >= CHAR_B_H_timeset)&&(pix_x < (CHAR_B_H_timeset + CHAR_W_timeset)))
               &&((pix_y >= CHAR_B_V_timeset)&&(pix_y < (CHAR_B_V_timeset + CHAR_H_timeset))))
               ? (pix_x - CHAR_B_H_timeset) : 10'h3ff;
assign char_y_timeset = (((pix_x >= CHAR_B_H_timeset)&&(pix_x < (CHAR_B_H_timeset + CHAR_W_timeset)))
               &&((pix_y >= CHAR_B_V_timeset)&&(pix_y < (CHAR_B_V_timeset + CHAR_H_timeset))))
               ? (pix_y - CHAR_B_V_timeset) : 10'h3ff;

                

assign char_x_maohao = (((pix_x >= CHAR_B_H_maohao)&&(pix_x < (CHAR_B_H_maohao + CHAR_W_maohao)))
               &&((pix_y >= CHAR_B_V_maohao)&&(pix_y < (CHAR_B_V_maohao + CHAR_H_maohao))))
               ? (pix_x - CHAR_B_H_maohao) : 10'h3ff;
assign char_y_maohao = (((pix_x >= CHAR_B_H_maohao)&&(pix_x < (CHAR_B_H_maohao + CHAR_W_maohao)))
               &&((pix_y >= CHAR_B_V_maohao)&&(pix_y < (CHAR_B_V_maohao + CHAR_H_maohao))))
               ? (pix_y - CHAR_B_V_maohao) : 10'h3ff;                

assign char_x_A = (((pix_x >= CHAR_B_H_A)&&(pix_x < (CHAR_B_H_A + CHAR_W_A)))
                &&((pix_y >= CHAR_B_V_A)&&(pix_y < (CHAR_B_V_A + CHAR_H_A))))
                ? (pix_x - CHAR_B_H_A) : 10'h3ff;
assign char_y_A = (((pix_x >= CHAR_B_H_A)&&(pix_x < (CHAR_B_H_A + CHAR_W_A)))
                &&((pix_y >= CHAR_B_V_A)&&(pix_y < (CHAR_B_V_A + CHAR_H_A))))
                ? (pix_y - CHAR_B_V_A) : 10'h3ff;

assign char_x_Anum = (((pix_x >= CHAR_B_H_Anum)&&(pix_x < (CHAR_B_H_Anum + CHAR_W_Anum)))
                &&((pix_y >= CHAR_B_V_Anum)&&(pix_y < (CHAR_B_V_Anum + CHAR_H_Anum))))
                ? (pix_x - CHAR_B_H_Anum) : 10'h3ff;
assign char_y_Anum = (((pix_x >= CHAR_B_H_Anum)&&(pix_x < (CHAR_B_H_Anum + CHAR_W_Anum)))
                &&((pix_y >= CHAR_B_V_Anum)&&(pix_y < (CHAR_B_V_Anum + CHAR_H_Anum))))
                ? (pix_y - CHAR_B_V_Anum) : 10'h3ff;                
                

assign char_x_B = (((pix_x >= CHAR_B_H_B)&&(pix_x < (CHAR_B_H_B + CHAR_W_B)))
                &&((pix_y >= CHAR_B_V_B)&&(pix_y < (CHAR_B_V_B + CHAR_H_B))))
                ? (pix_x - CHAR_B_H_B) : 10'h3ff;
assign char_y_B = (((pix_x >= CHAR_B_H_B)&&(pix_x < (CHAR_B_H_B + CHAR_W_B)))
                &&((pix_y >= CHAR_B_V_B)&&(pix_y < (CHAR_B_V_B + CHAR_H_B))))
                ? (pix_y - CHAR_B_V_B) : 10'h3ff;

assign char_x_Bnum = (((pix_x >= CHAR_B_H_Bnum)&&(pix_x < (CHAR_B_H_Bnum + CHAR_W_Bnum)))
                &&((pix_y >= CHAR_B_V_Bnum)&&(pix_y < (CHAR_B_V_Bnum + CHAR_H_Bnum))))
                ? (pix_x - CHAR_B_H_Bnum) : 10'h3ff;
assign char_y_Bnum = (((pix_x >= CHAR_B_H_Bnum)&&(pix_x < (CHAR_B_H_Bnum + CHAR_W_Bnum)))
                &&((pix_y >= CHAR_B_V_Bnum)&&(pix_y < (CHAR_B_V_Bnum + CHAR_H_Bnum))))
                ? (pix_y - CHAR_B_V_Bnum) : 10'h3ff;                


assign char_x_C = (((pix_x >= CHAR_B_H_C)&&(pix_x < (CHAR_B_H_C + CHAR_W_C)))
                &&((pix_y >= CHAR_B_V_C)&&(pix_y < (CHAR_B_V_C + CHAR_H_C))))
                ? (pix_x - CHAR_B_H_C) : 10'h3ff;
assign char_y_C = (((pix_x >= CHAR_B_H_C)&&(pix_x < (CHAR_B_H_C + CHAR_W_C)))
                &&((pix_y >= CHAR_B_V_C)&&(pix_y < (CHAR_B_V_C + CHAR_H_C))))
                ? (pix_y - CHAR_B_V_C) : 10'h3ff;

assign char_x_Cnum = (((pix_x >= CHAR_B_H_Cnum)&&(pix_x < (CHAR_B_H_Cnum + CHAR_W_Cnum)))
                &&((pix_y >= CHAR_B_V_Cnum)&&(pix_y < (CHAR_B_V_Cnum + CHAR_H_Cnum))))
                ? (pix_x - CHAR_B_H_Cnum) : 10'h3ff;
assign char_y_Cnum = (((pix_x >= CHAR_B_H_Cnum)&&(pix_x < (CHAR_B_H_Cnum + CHAR_W_Cnum)))
                &&((pix_y >= CHAR_B_V_Cnum)&&(pix_y < (CHAR_B_V_Cnum + CHAR_H_Cnum))))
                ? (pix_y - CHAR_B_V_Cnum) : 10'h3ff;     

assign char_x_eat_assure = (((pix_x >= CHAR_B_H_eat_assure)&&(pix_x < (CHAR_B_H_eat_assure + CHAR_W_eat_assure)))
                &&((pix_y >= CHAR_B_V_eat_assure)&&(pix_y < (CHAR_B_V_eat_assure + CHAR_H_eat_assure))))
                ? (pix_x - CHAR_B_H_eat_assure) : 10'h3ff;
assign char_y_eat_assure = (((pix_x >= CHAR_B_H_eat_assure)&&(pix_x < (CHAR_B_H_eat_assure + CHAR_W_eat_assure)))
                &&((pix_y >= CHAR_B_V_eat_assure)&&(pix_y < (CHAR_B_V_eat_assure + CHAR_H_eat_assure))))
                ? (pix_y - CHAR_B_V_eat_assure) : 10'h3ff;                     

assign char_x_time11 = (((pix_x >= CHAR_B_H_time11)&&(pix_x < (CHAR_B_H_time11 + CHAR_W_time11)))
                &&((pix_y >= CHAR_B_V_time11)&&(pix_y < (CHAR_B_V_time11 + CHAR_H_time11))))
                ? (pix_x - CHAR_B_H_time11) : 10'h3ff;
assign char_y_time11 = (((pix_x >= CHAR_B_H_time11)&&(pix_x < (CHAR_B_H_time11 + CHAR_W_time11)))
                &&((pix_y >= CHAR_B_V_time11)&&(pix_y < (CHAR_B_V_time11 + CHAR_H_time11))))
                ? (pix_y - CHAR_B_V_time11) : 10'h3ff;                                

assign char_x_time12 = (((pix_x >= CHAR_B_H_time12)&&(pix_x < (CHAR_B_H_time12 + CHAR_W_time12)))
                &&((pix_y >= CHAR_B_V_time12)&&(pix_y < (CHAR_B_V_time12 + CHAR_H_time12))))
                ? (pix_x - CHAR_B_H_time12) : 10'h3ff;
assign char_y_time12 = (((pix_x >= CHAR_B_H_time12)&&(pix_x < (CHAR_B_H_time12 + CHAR_W_time12)))
                &&((pix_y >= CHAR_B_V_time12)&&(pix_y < (CHAR_B_V_time12 + CHAR_H_time12))))
                ? (pix_y - CHAR_B_V_time12) : 10'h3ff;

assign char_x_time13 = (((pix_x >= CHAR_B_H_time13)&&(pix_x < (CHAR_B_H_time13 + CHAR_W_time13)))
                &&((pix_y >= CHAR_B_V_time13)&&(pix_y < (CHAR_B_V_time13 + CHAR_H_time13))))
                ? (pix_x - CHAR_B_H_time13) : 10'h3ff;
assign char_y_time13 = (((pix_x >= CHAR_B_H_time13)&&(pix_x < (CHAR_B_H_time13 + CHAR_W_time13)))
                &&((pix_y >= CHAR_B_V_time13)&&(pix_y < (CHAR_B_V_time13 + CHAR_H_time13))))
                ? (pix_y - CHAR_B_V_time13) : 10'h3ff;

assign char_x_time14 = (((pix_x >= CHAR_B_H_time14)&&(pix_x < (CHAR_B_H_time14 + CHAR_W_time14)))
                &&((pix_y >= CHAR_B_V_time14)&&(pix_y < (CHAR_B_V_time14 + CHAR_H_time14))))
                ? (pix_x - CHAR_B_H_time14) : 10'h3ff;
assign char_y_time14 = (((pix_x >= CHAR_B_H_time14)&&(pix_x < (CHAR_B_H_time14 + CHAR_W_time14)))
                &&((pix_y >= CHAR_B_V_time14)&&(pix_y < (CHAR_B_V_time14 + CHAR_H_time14))))
                ? (pix_y - CHAR_B_V_time14) : 10'h3ff;

assign char_x_time21 = (((pix_x >= CHAR_B_H_time21)&&(pix_x < (CHAR_B_H_time21 + CHAR_W_time21)))
                &&((pix_y >= CHAR_B_V_time21)&&(pix_y < (CHAR_B_V_time21 + CHAR_H_time21))))
                ? (pix_x - CHAR_B_H_time21) : 10'h3ff;
assign char_y_time21 = (((pix_x >= CHAR_B_H_time21)&&(pix_x < (CHAR_B_H_time21 + CHAR_W_time21)))
                &&((pix_y >= CHAR_B_V_time21)&&(pix_y < (CHAR_B_V_time21 + CHAR_H_time21))))
                ? (pix_y - CHAR_B_V_time21) : 10'h3ff;

assign char_x_time22 = (((pix_x >= CHAR_B_H_time22)&&(pix_x < (CHAR_B_H_time22 + CHAR_W_time22)))
                &&((pix_y >= CHAR_B_V_time22)&&(pix_y < (CHAR_B_V_time22 + CHAR_H_time22))))
                ? (pix_x - CHAR_B_H_time22) : 10'h3ff;
assign char_y_time22 = (((pix_x >= CHAR_B_H_time22)&&(pix_x < (CHAR_B_H_time22 + CHAR_W_time22)))
                &&((pix_y >= CHAR_B_V_time22)&&(pix_y < (CHAR_B_V_time22 + CHAR_H_time22))))
                ? (pix_y - CHAR_B_V_time22) : 10'h3ff;

assign char_x_time23 = (((pix_x >= CHAR_B_H_time23)&&(pix_x < (CHAR_B_H_time23 + CHAR_W_time23)))
                &&((pix_y >= CHAR_B_V_time23)&&(pix_y < (CHAR_B_V_time23 + CHAR_H_time23))))
                ? (pix_x - CHAR_B_H_time23) : 10'h3ff;
assign char_y_time23 = (((pix_x >= CHAR_B_H_time23)&&(pix_x < (CHAR_B_H_time23 + CHAR_W_time23)))
                &&((pix_y >= CHAR_B_V_time23)&&(pix_y < (CHAR_B_V_time23 + CHAR_H_time23))))
                ? (pix_y - CHAR_B_V_time23) : 10'h3ff;

assign char_x_time24 = (((pix_x >= CHAR_B_H_time24)&&(pix_x < (CHAR_B_H_time24 + CHAR_W_time24)))
                &&((pix_y >= CHAR_B_V_time24)&&(pix_y < (CHAR_B_V_time24 + CHAR_H_time24))))
                ? (pix_x - CHAR_B_H_time24) : 10'h3ff;
assign char_y_time24 = (((pix_x >= CHAR_B_H_time24)&&(pix_x < (CHAR_B_H_time24 + CHAR_W_time24)))
                &&((pix_y >= CHAR_B_V_time24)&&(pix_y < (CHAR_B_V_time24 + CHAR_H_time24))))
                ? (pix_y - CHAR_B_V_time24) : 10'h3ff;                
//确认用哪个字符
assign char_eat_assure=(eat_assure==1)?(char_eaten[char_y_eat_assure][char_x_eat_assure] == 1'b1):(char_uneaten[char_y_eat_assure][char_x_eat_assure] == 1'b1);              
    
//pix_data
wire color_able_maohao,color_able_eat_assure,color_able_timenow,color_able_timeset,color_able_A,color_able_B,color_able_C,color_able_Anum,color_able_Bnum,color_able_Cnum,color_able_time11,color_able_time12,color_able_time13,color_able_time14,color_able_time21,color_able_time22,color_able_time23,color_able_time24;

assign color_able_eat_assure=((pix_x >= CHAR_B_H_eat_assure-1)&&(pix_x < (CHAR_B_H_eat_assure + CHAR_W_eat_assure-1)))
                &&((pix_y >= CHAR_B_V_eat_assure)&&(pix_y < (CHAR_B_V_eat_assure + CHAR_H_eat_assure)))
                &&(char_eat_assure== 1'b1);

assign color_able_maohao=((pix_x >= CHAR_B_H_maohao-1)&&(pix_x < (CHAR_B_H_maohao + CHAR_W_maohao-1)))
                &&((pix_y >= CHAR_B_V_maohao)&&(pix_y < (CHAR_B_V_maohao+ CHAR_H_maohao)))
                &&(char_maohao[char_y_maohao][char_x_maohao] == 1'b1);


assign color_able_timenow=((pix_x >= CHAR_B_H_timenow-1)&&(pix_x < (CHAR_B_H_timenow + CHAR_W_timenow-1)))
                &&((pix_y >= CHAR_B_V_timenow)&&(pix_y < (CHAR_B_V_timenow + CHAR_H_timenow)))
                &&(char_time_now[char_y_timenow][char_x_timenow] == 1'b1);

assign color_able_timeset=((pix_x >= CHAR_B_H_timeset-1)&&(pix_x < (CHAR_B_H_timeset + CHAR_W_timeset-1)))
                &&((pix_y >= CHAR_B_V_timeset)&&(pix_y < (CHAR_B_V_timeset + CHAR_H_timeset)))
                &&(char_time_set[char_y_timeset][char_x_timeset] == 1'b1);
                

assign color_able_A=((pix_x >= CHAR_B_H_A-1)&&(pix_x < (CHAR_B_H_A + CHAR_W_A-1)))
                &&((pix_y >= CHAR_B_V_A)&&(pix_y < (CHAR_B_V_A + CHAR_H_A)))
                &&(char_A[char_y_A][char_x_A] == 1'b1);

assign color_able_B=((pix_x >= CHAR_B_H_B-1)&&(pix_x < (CHAR_B_H_B + CHAR_W_B-1)))
                &&((pix_y >= CHAR_B_V_B)&&(pix_y < (CHAR_B_V_B + CHAR_H_B)))
                &&(char_B[char_y_B][char_x_B] == 1'b1);

assign color_able_C=((pix_x >= CHAR_B_H_C-1)&&(pix_x < (CHAR_B_H_C + CHAR_W_C-1)))
                &&((pix_y >= CHAR_B_V_C)&&(pix_y < (CHAR_B_V_C + CHAR_H_C)))
                &&(char_C[char_y_C][char_x_C] == 1'b1);

assign color_able_Anum=((pix_x >= CHAR_B_H_Anum-1)&&(pix_x < (CHAR_B_H_Anum + CHAR_W_Anum-1)))
                &&((pix_y >= CHAR_B_V_Anum)&&(pix_y < (CHAR_B_V_Anum + CHAR_H_Anum)))
                &&(char_Anum == 1'b1);

assign color_able_Bnum=((pix_x >= CHAR_B_H_Bnum-1)&&(pix_x < (CHAR_B_H_Bnum + CHAR_W_Bnum-1)))
                &&((pix_y >= CHAR_B_V_Bnum)&&(pix_y < (CHAR_B_V_Bnum + CHAR_H_Bnum)))
                &&(char_Bnum== 1'b1);

assign color_able_Cnum=((pix_x >= CHAR_B_H_Cnum-1)&&(pix_x < (CHAR_B_H_Cnum + CHAR_W_Cnum-1)))
                &&((pix_y >= CHAR_B_V_Cnum)&&(pix_y < (CHAR_B_V_Cnum + CHAR_H_Cnum)))
                &&(char_Cnum == 1'b1);

assign color_able_time11=((pix_x >= CHAR_B_H_time11-1)&&(pix_x < (CHAR_B_H_time11 + CHAR_W_time11-1)))
                &&((pix_y >= CHAR_B_V_time11)&&(pix_y < (CHAR_B_V_time11 + CHAR_H_time11)))
                &&(char_time11 == 1'b1);                

assign color_able_time12 = ((pix_x >= CHAR_B_H_time12 - 1) && (pix_x < (CHAR_B_H_time12 + CHAR_W_time12 - 1)))
                           && ((pix_y >= CHAR_B_V_time12) && (pix_y < (CHAR_B_V_time12 + CHAR_H_time12)))
                           && (char_time12 == 1'b1);

assign color_able_time13 = ((pix_x >= CHAR_B_H_time13 - 1) && (pix_x < (CHAR_B_H_time13 + CHAR_W_time13 - 1)))
                           && ((pix_y >= CHAR_B_V_time13) && (pix_y < (CHAR_B_V_time13 + CHAR_H_time13)))
                           && (char_time13 == 1'b1);

assign color_able_time14 = ((pix_x >= CHAR_B_H_time14 - 1) && (pix_x < (CHAR_B_H_time14 + CHAR_W_time14 - 1)))
                           && ((pix_y >= CHAR_B_V_time14) && (pix_y < (CHAR_B_V_time14 + CHAR_H_time14)))
                           && (char_time14 == 1'b1);

assign color_able_time21 = ((pix_x >= CHAR_B_H_time21 - 1) && (pix_x < (CHAR_B_H_time21 + CHAR_W_time21 - 1)))
                           && ((pix_y >= CHAR_B_V_time21) && (pix_y < (CHAR_B_V_time21 + CHAR_H_time21)))
                           && (char_time21 == 1'b1);

assign color_able_time22 = ((pix_x >= CHAR_B_H_time22 - 1) && (pix_x < (CHAR_B_H_time22 + CHAR_W_time22 - 1)))
                           && ((pix_y >= CHAR_B_V_time22) && (pix_y < (CHAR_B_V_time22 + CHAR_H_time22)))
                           && (char_time22 == 1'b1);

assign color_able_time23 = ((pix_x >= CHAR_B_H_time23 - 1) && (pix_x < (CHAR_B_H_time23 + CHAR_W_time23 - 1)))
                           && ((pix_y >= CHAR_B_V_time23) && (pix_y < (CHAR_B_V_time23 + CHAR_H_time23)))
                           && (char_time23 == 1'b1);

assign color_able_time24 = ((pix_x >= CHAR_B_H_time24 - 1) && (pix_x < (CHAR_B_H_time24 + CHAR_W_time24 - 1)))
                           && ((pix_y >= CHAR_B_V_time24) && (pix_y < (CHAR_B_V_time24 + CHAR_H_time24)))
                           && (char_time24 == 1'b1);                

always @(posedge clk_25 or negedge rst_n)begin
    if(!rst_n)begin
        pix_data <= BLACK;
    end
    else if(color_able_maohao|color_able_time24|color_able_time23|color_able_time22|color_able_time21|color_able_time14|color_able_time13|color_able_time12|color_able_time11|color_able_eat_assure|color_able_C | color_able_B | color_able_A | color_able_timenow | color_able_timeset|color_able_Anum|color_able_Bnum|color_able_Cnum )begin
        if(state==2'b00) pix_data <= WHITE;
        else if(state==2'b01) pix_data <= YELLOW;
        else if(state==2'b10) pix_data <= ORANGE;
        else pix_data <= RED;
    end
    else begin
        pix_data <= BLACK;
    end
end

always @(posedge clk_25)begin 
char_maohao[0	]  <= 32'h00000000;
char_maohao[1	]  <= 32'h00000000;
char_maohao[2	]  <= 32'h00000000;
char_maohao[3	]  <= 32'h00000000;
char_maohao[4	]  <= 32'h00000000;
char_maohao[5	]  <= 32'h00000000;
char_maohao[6	]  <= 32'h00000000;
char_maohao[7	]  <= 32'h00000000;
char_maohao[8	]  <= 32'h00000000;
char_maohao[9	]  <= 32'h00000000;
char_maohao[10	]  <= 32'h00000000;
char_maohao[11	]  <= 32'h00000000;
char_maohao[12	]  <= 32'h00000000;
char_maohao[13	]  <= 32'h00000000;
char_maohao[14	]  <= 32'h00000000;
char_maohao[15	]  <= 32'h00000000;
char_maohao[16	]  <= 32'h00000000;
char_maohao[17	]  <= 32'h00000000;
char_maohao[18	]  <= 32'h00000000;
char_maohao[19	]  <= 32'h00000000;
char_maohao[20	]  <= 32'h00000000;
char_maohao[21	]  <= 32'h00000000;
char_maohao[22	]  <= 32'h00000000;
char_maohao[23	]  <= 32'h0007C000;
char_maohao[24	]  <= 32'h000FE000;
char_maohao[25	]  <= 32'h001FF000;
char_maohao[26	]  <= 32'h001FF000;
char_maohao[27	]  <= 32'h001FF000;
char_maohao[28	]  <= 32'h000FE000;
char_maohao[29	]  <= 32'h0007C000;
char_maohao[30	]  <= 32'h00000000;
char_maohao[31	]  <= 32'h00000000;
char_maohao[32	]  <= 32'h00000000;
char_maohao[33	]  <= 32'h00000000;
char_maohao[34	]  <= 32'h00000000;
char_maohao[35	]  <= 32'h00000000;
char_maohao[36	]  <= 32'h00000000;
char_maohao[37	]  <= 32'h00000000;
char_maohao[38	]  <= 32'h00000000;
char_maohao[39	]  <= 32'h00000000;
char_maohao[40	]  <= 32'h00000000;
char_maohao[41	]  <= 32'h00000000;
char_maohao[42	]  <= 32'h00000000;
char_maohao[43	]  <= 32'h00000000;
char_maohao[44	]  <= 32'h00000000;
char_maohao[45	]  <= 32'h00000000;
char_maohao[46	]  <= 32'h00000000;
char_maohao[47	]  <= 32'h0007C000;
char_maohao[48	]  <= 32'h000FE000;
char_maohao[49	]  <= 32'h001FF000;
char_maohao[50	]  <= 32'h001FF000;
char_maohao[51	]  <= 32'h001FF000;
char_maohao[52	]  <= 32'h000FE000;
char_maohao[53	]  <= 32'h0007C000;
char_maohao[54	]  <= 32'h00000000;
char_maohao[55	]  <= 32'h00000000;
char_maohao[56	]  <= 32'h00000000;
char_maohao[57	]  <= 32'h00000000;
char_maohao[58	]  <= 32'h00000000;
char_maohao[59	]  <= 32'h00000000;
char_maohao[60	]  <= 32'h00000000;
char_maohao[61	]  <= 32'h00000000;
char_maohao[62	]  <= 32'h00000000;
char_maohao[63	]  <= 32'h00000000;
char_maohao[64	]  <= 32'h00000000;
char_maohao[65	]  <= 32'h00000000;
char_maohao[66	]  <= 32'h00000000;
char_maohao[67	]  <= 32'h00000000;
char_maohao[68	]  <= 32'h00000000;
char_maohao[69	]  <= 32'h00000000;
char_maohao[70	]  <= 32'h00000000;
char_maohao[71	]  <= 32'h00000000;
char_maohao[72	]  <= 32'h00000000;
char_maohao[73	]  <= 32'h00000000;
char_maohao[74	]  <= 32'h00000000;
char_maohao[75	]  <= 32'h00000000;
char_maohao[76	]  <= 32'h00000000;
char_maohao[77	]  <= 32'h00000000;
char_maohao[78	]  <= 32'h00000000;
char_maohao[79	]  <= 32'h00000000;
char_maohao[80	]  <= 32'h00000000;
char_maohao[81	]  <= 32'h00000000;
char_maohao[82	]  <= 32'h00000000;
char_maohao[83	]  <= 32'h00000000;
char_maohao[84	]  <= 32'h00000000;
char_maohao[85	]  <= 32'h00000000;
char_maohao[86	]  <= 32'h00000000;
char_maohao[87	]  <= 32'h0007C000;
char_maohao[88	]  <= 32'h000FE000;
char_maohao[89	]  <= 32'h001FF000;
char_maohao[90	]  <= 32'h001FF000;
char_maohao[91	]  <= 32'h001FF000;
char_maohao[92	]  <= 32'h000FE000;
char_maohao[93	]  <= 32'h0007C000;
char_maohao[94	]  <= 32'h00000000;
char_maohao[95	]  <= 32'h00000000;
char_maohao[96	]  <= 32'h00000000;
char_maohao[97	]  <= 32'h00000000;
char_maohao[98	]  <= 32'h00000000;
char_maohao[99	]  <= 32'h00000000;
char_maohao[100	]  <= 32'h00000000;
char_maohao[101	]  <= 32'h00000000;
char_maohao[102	]  <= 32'h00000000;
char_maohao[103	]  <= 32'h00000000;
char_maohao[104	]  <= 32'h00000000;
char_maohao[105	]  <= 32'h00000000;
char_maohao[106	]  <= 32'h00000000;
char_maohao[107	]  <= 32'h00000000;
char_maohao[108	]  <= 32'h00000000;
char_maohao[109	]  <= 32'h00000000;
char_maohao[110	]  <= 32'h00000000;
char_maohao[111	]  <= 32'h0007C000;
char_maohao[112	]  <= 32'h000FE000;
char_maohao[113	]  <= 32'h001FF000;
char_maohao[114	]  <= 32'h001FF000;
char_maohao[115	]  <= 32'h001FF000;
char_maohao[116	]  <= 32'h000FE000;
char_maohao[117	]  <= 32'h0007C000;
char_maohao[118	]  <= 32'h00000000;
char_maohao[119	]  <= 32'h00000000;
char_maohao[120	]  <= 32'h00000000;
char_maohao[121	]  <= 32'h00000000;
char_maohao[122	]  <= 32'h00000000;
char_maohao[123	]  <= 32'h00000000;
char_maohao[124	]  <= 32'h00000000;
char_maohao[125	]  <= 32'h00000000;
char_maohao[126	]  <= 32'h00000000;
char_maohao[127	]  <= 32'h00000000;


char_uneaten[0]	<=192'h000000000000000000000000000000000000000000000000;
char_uneaten[1]	<=192'h000000000000000000000000000000000000000000000000;
char_uneaten[2]	<=192'h000000070000000000000000000000000000000000000000;
char_uneaten[3]	<=192'h00000007C000000000000000000000000000040002000000;
char_uneaten[4]	<=192'h00000007F000000000000000000000000000078003C00000;
char_uneaten[5]	<=192'h00000007F80000000040008080000800000007E003F00000;
char_uneaten[6]	<=192'h00000007E0000000007001C0C0001C00000007C003E00000;
char_uneaten[7]	<=192'h00000007E0000000007FFFE0FFFFFF000000078003C00180;
char_uneaten[8]	<=192'h00000007E0000000007FFFF0FFFFFF000000078003C007C0;
char_uneaten[9]	<=192'h00000007E0000000007801E0F0001E000000078003C00FE0;
char_uneaten[10]	<=192'h00000007E0000000007801C0F0001C001FFFFFFFFFFFFFF0;
char_uneaten[11]	<=192'h00000007E001C000007801C0F0001C000FFFFFFFFFFFFFF8;
char_uneaten[12]	<=192'h00000007E003E000007801C0F0001C000600078003C00000;
char_uneaten[13]	<=192'h00000007E007F000007801C0F0001C000000078003C00000;
char_uneaten[14]	<=192'h003FFFFFFFFFF800007801C0F0001C000000078003C00000;
char_uneaten[15]	<=192'h001FFFFFFFFFFC00007801C0F0001C000000078003C00000;
char_uneaten[16]	<=192'h000F8007E0000000007801C0F0001C000000670003000000;
char_uneaten[17]	<=192'h00000007E0000000007801C0F0003C000000740004000000;
char_uneaten[18]	<=192'h00000007E0000000007801C0F0003C000000F80007000000;
char_uneaten[19]	<=192'h00000007E0000000007801C0F0003C000000FC0007C00000;
char_uneaten[20]	<=192'h00000007E0000000007FFFC0F07078000001F00007C00000;
char_uneaten[21]	<=192'h00000007E0000000007FFFC0F01FF8000001E00007800000;
char_uneaten[22]	<=192'h00000007E0000000007801C0F007F8000003C0000F800000;
char_uneaten[23]	<=192'h00000007E0000000007801C0F003F000000380400F000000;
char_uneaten[24]	<=192'h00000007E0000000007801C0F001C000000700600E000200;
char_uneaten[25]	<=192'h00000007E0000F00007801C0F0000000000E00F01E000700;
char_uneaten[26]	<=192'h00000007E0001F80007801C0F0000000001E00F81FFFFF80;
char_uneaten[27]	<=192'h00000007E0003FC0007801C0F0000000001C01F83FFFFFC0;
char_uneaten[28]	<=192'h0FFFFFFFFFFFFFE0007801C0F0000600003803E038000F80;
char_uneaten[29]	<=192'h07FFFFFFFFFFFFF0007801C0FFFFFF80007003C078000F00;
char_uneaten[30]	<=192'h0380003FF8000000007801C0FFFFFFC001E0078070000F00;
char_uneaten[31]	<=192'h0000003FFC000000007801C0F1000F0007FFFF00E0000F00;
char_uneaten[32]	<=192'h0000007FFC000000007801C0F1800F0003FFCE00C0000F00;
char_uneaten[33]	<=192'h0000007FEE000000007801C0F1800E0003F81C01C0000F00;
char_uneaten[34]	<=192'h000000FFEE000000007FFFC0F0801E0001C0380380000F00;
char_uneaten[35]	<=192'h000001FFEF000000007FFFC0F0C01E000000700300000F00;
char_uneaten[36]	<=192'h000001F7E7800000007801C0F0C01C000000E00618000F00;
char_uneaten[37]	<=192'h000003F7E7800000007801C0F0603C000000E00C1C000F00;
char_uneaten[38]	<=192'h000007E7E3C00000007801C0F06038000001C0080F000F00;
char_uneaten[39]	<=192'h00000FC7E3E00000007801C0F07038000003800007800F00;
char_uneaten[40]	<=192'h00001F87E1F00000007801C0F03078000007000007C00F00;
char_uneaten[41]	<=192'h00001F07E0F80000007001C0F0387000000E000003E00E00;
char_uneaten[42]	<=192'h00003E07E0FC0000007001C0F018F000003C07F801E00E00;
char_uneaten[43]	<=192'h00007C07E07E0000007001C0F01CE00000FFFF0001E00E00;
char_uneaten[44]	<=192'h0000F807E03F8000007001C0F00FE00001FFF00001E00E00;
char_uneaten[45]	<=192'h0001F007E01FC000007001C0F00FC00000FF800000E00E00;
char_uneaten[46]	<=192'h0003E007E00FF00000F001C0F007C000007C000000C00E00;
char_uneaten[47]	<=192'h0007C007E007F80000E001C0F00780000070000000000E00;
char_uneaten[48]	<=192'h001F8007E003FE0000E001C0F007C0000000000000001E00;
char_uneaten[49]	<=192'h003E0007E001FFC000E001C0F00FE0000000000000001E00;
char_uneaten[50]	<=192'h007C0007E000FFF801C001C0F01CF0000000000000001E00;
char_uneaten[51]	<=192'h00F80007E0007FFC01C001C0F0387C000000000E00001E00;
char_uneaten[52]	<=192'h03E00007E0003FE0018001C0F0703E00000003F000001C00;
char_uneaten[53]	<=192'h07800007E0000F80038001C0F0E01F800000FF8000003C00;
char_uneaten[54]	<=192'h1E000007E00007000303C3C0F1C00FF8007FFC0001C03C00;
char_uneaten[55]	<=192'h18000007E00000000700FFC0F30007FC07FFC00000FFFC00;
char_uneaten[56]	<=192'h00000007E000000006003FC0FC0003C003FE0000001FF800;
char_uneaten[57]	<=192'h00000007E00000000C000F80F800008003F000000007F800;
char_uneaten[58]	<=192'h00000007E000000008000F00F0000000018000000003F000;
char_uneaten[59]	<=192'h00000007C000000010000600E0000000010000000001E000;
char_uneaten[60]	<=192'h000000070000000000000000800000000000000000018000;
char_uneaten[61]	<=192'h000000000000000000000000000000000000000000000000;
char_uneaten[62]	<=192'h000000000000000000000000000000000000000000000000;
char_uneaten[63]	<=192'h000000000000000000000000000000000000000000000000;

char_eaten[0]	<=192'h000000000000000000000000000000000000000000000000;
char_eaten[1]	<=192'h000000000000000000000000000000000000000000000000;
char_eaten[2]	<=192'h000000000000000000000000000000000000000000000000;
char_eaten[3]	<=192'h000000000000000000000000000000000000040002000000;
char_eaten[4]	<=192'h000000000000000000000000000000000000078003C00000;
char_eaten[5]	<=192'h00000000000180000040008080000800000007E003F00000;
char_eaten[6]	<=192'h000000000003E000007001C0C0001C00000007C003E00000;
char_eaten[7]	<=192'h000000000003F000007FFFE0FFFFFF000000078003C00180;
char_eaten[8]	<=192'h007FFFFFFFFFF800007FFFF0FFFFFF000000078003C007C0;
char_eaten[9]	<=192'h003FFFFFFFFFF000007801E0F0001E000000078003C00FE0;
char_eaten[10]	<=192'h001F00000003E000007801C0F0001C001FFFFFFFFFFFFFF0;
char_eaten[11]	<=192'h000000000003E000007801C0F0001C000FFFFFFFFFFFFFF8;
char_eaten[12]	<=192'h000000000003E000007801C0F0001C000600078003C00000;
char_eaten[13]	<=192'h000000000003E000007801C0F0001C000000078003C00000;
char_eaten[14]	<=192'h000000000003E000007801C0F0001C000000078003C00000;
char_eaten[15]	<=192'h000000000003E000007801C0F0001C000000078003C00000;
char_eaten[16]	<=192'h000000000003E000007801C0F0001C000000670003000000;
char_eaten[17]	<=192'h000000000003E000007801C0F0003C000000740004000000;
char_eaten[18]	<=192'h000000000003E000007801C0F0003C000000F80007000000;
char_eaten[19]	<=192'h000000000003E000007801C0F0003C000000FC0007C00000;
char_eaten[20]	<=192'h003000000003E000007FFFC0F07078000001F00007C00000;
char_eaten[21]	<=192'h003E00000003E000007FFFC0F01FF8000001E00007800000;
char_eaten[22]	<=192'h003F80000003E000007801C0F007F8000003C0000F800000;
char_eaten[23]	<=192'h003F80000003E000007801C0F003F000000380400F000000;
char_eaten[24]	<=192'h003F00000003E000007801C0F001C000000700600E000200;
char_eaten[25]	<=192'h003F00000003E000007801C0F0000000000E00F01E000700;
char_eaten[26]	<=192'h003FFFFFFFFFE000007801C0F0000000001E00F81FFFFF80;
char_eaten[27]	<=192'h003FFFFFFFFFE000007801C0F0000000001C01F83FFFFFC0;
char_eaten[28]	<=192'h003F00000003E000007801C0F0000600003803E038000F80;
char_eaten[29]	<=192'h003F00000003E000007801C0FFFFFF80007003C078000F00;
char_eaten[30]	<=192'h003F00000003E000007801C0FFFFFFC001E0078070000F00;
char_eaten[31]	<=192'h003F000000030000007801C0F1000F0007FFFF00E0000F00;
char_eaten[32]	<=192'h003F000000000000007801C0F1800F0003FFCE00C0000F00;
char_eaten[33]	<=192'h003F000000000000007801C0F1800E0003F81C01C0000F00;
char_eaten[34]	<=192'h003F000000000000007FFFC0F0801E0001C0380380000F00;
char_eaten[35]	<=192'h003F000000000000007FFFC0F0C01E000000700300000F00;
char_eaten[36]	<=192'h003F000000000000007801C0F0C01C000000E00618000F00;
char_eaten[37]	<=192'h003F000000000000007801C0F0603C000000E00C1C000F00;
char_eaten[38]	<=192'h003F000000000000007801C0F06038000001C0080F000F00;
char_eaten[39]	<=192'h003F000000000100007801C0F07038000003800007800F00;
char_eaten[40]	<=192'h003F000000000380007801C0F03078000007000007C00F00;
char_eaten[41]	<=192'h003F000000000380007001C0F0387000000E000003E00E00;
char_eaten[42]	<=192'h003F000000000380007001C0F018F000003C07F801E00E00;
char_eaten[43]	<=192'h003F000000000380007001C0F01CE00000FFFF0001E00E00;
char_eaten[44]	<=192'h003F000000000380007001C0F00FE00001FFF00001E00E00;
char_eaten[45]	<=192'h003F000000000380007001C0F00FC00000FF800000E00E00;
char_eaten[46]	<=192'h003F00000000038000F001C0F007C000007C000000C00E00;
char_eaten[47]	<=192'h003F00000000038000E001C0F00780000070000000000E00;
char_eaten[48]	<=192'h003F00000000078000E001C0F007C0000000000000001E00;
char_eaten[49]	<=192'h003F0000000007C000E001C0F00FE0000000000000001E00;
char_eaten[50]	<=192'h003E0000000007C001C001C0F01CF0000000000000001E00;
char_eaten[51]	<=192'h003F0000000007E001C001C0F0387C000000000E00001E00;
char_eaten[52]	<=192'h001F0000000007F0018001C0F0703E00000003F000001C00;
char_eaten[53]	<=192'h001F800000001FF0038001C0F0E01F800000FF8000003C00;
char_eaten[54]	<=192'h001FFFFFFFFFFFF00303C3C0F1C00FF8007FFC0001C03C00;
char_eaten[55]	<=192'h000FFFFFFFFFFFE00700FFC0F30007FC07FFC00000FFFC00;
char_eaten[56]	<=192'h0007FFFFFFFFFF8006003FC0FC0003C003FE0000001FF800;
char_eaten[57]	<=192'h00000000000000000C000F80F800008003F000000007F800;
char_eaten[58]	<=192'h000000000000000008000F00F0000000018000000003F000;
char_eaten[59]	<=192'h000000000000000010000600E0000000010000000001E000;
char_eaten[60]	<=192'h000000000000000000000000800000000000000000018000;
char_eaten[61]	<=192'h000000000000000000000000000000000000000000000000;
char_eaten[62]	<=192'h000000000000000000000000000000000000000000000000;
char_eaten[63]	<=192'h000000000000000000000000000000000000000000000000;



char_9[0	]  <= 32'h00000000;
char_9[1	]  <= 32'h00000000;
char_9[2	]  <= 32'h00000000;
char_9[3	]  <= 32'h00000000;
char_9[4	]  <= 32'h00000000;
char_9[5	]  <= 32'h00000000;
char_9[6	]  <= 32'h00000000;
char_9[7	]  <= 32'h00000000;
char_9[8	]  <= 32'h00000000;
char_9[9	]  <= 32'h00000000;
char_9[10	]  <= 32'h003FF000;
char_9[11	]  <= 32'h00FFFC00;
char_9[12	]  <= 32'h01F83F00;
char_9[13	]  <= 32'h03E01F80;
char_9[14	]  <= 32'h07C00F80;
char_9[15	]  <= 32'h0FC007C0;
char_9[16	]  <= 32'h0F8003E0;
char_9[17	]  <= 32'h1F8003E0;
char_9[18	]  <= 32'h1F0003F0;
char_9[19	]  <= 32'h1F0003F0;
char_9[20	]  <= 32'h3F0001F0;
char_9[21	]  <= 32'h3F0001F0;
char_9[22	]  <= 32'h3F0001F8;
char_9[23	]  <= 32'h3F0001F8;
char_9[24	]  <= 32'h3F0001F8;
char_9[25	]  <= 32'h3F0001F8;
char_9[26	]  <= 32'h3F0001F8;
char_9[27	]  <= 32'h3F0001F8;
char_9[28	]  <= 32'h3F0003F8;
char_9[29	]  <= 32'h1F8003F8;
char_9[30	]  <= 32'h1F8007F8;
char_9[31	]  <= 32'h1F800FF8;
char_9[32	]  <= 32'h0FC01FF8;
char_9[33	]  <= 32'h0FE03FF8;
char_9[34	]  <= 32'h07F8FDF8;
char_9[35	]  <= 32'h03FFF9F8;
char_9[36	]  <= 32'h01FFF1F8;
char_9[37	]  <= 32'h003F83F8;
char_9[38	]  <= 32'h000003F0;
char_9[39	]  <= 32'h000003F0;
char_9[40	]  <= 32'h000003F0;
char_9[41	]  <= 32'h000003F0;
char_9[42	]  <= 32'h000007E0;
char_9[43	]  <= 32'h000007E0;
char_9[44	]  <= 32'h000007C0;
char_9[45	]  <= 32'h03C007C0;
char_9[46	]  <= 32'h07C00F80;
char_9[47	]  <= 32'h0FE00F80;
char_9[48	]  <= 32'h0FE01F00;
char_9[49	]  <= 32'h0FE03E00;
char_9[50	]  <= 32'h07E07E00;
char_9[51	]  <= 32'h07F1F800;
char_9[52	]  <= 32'h03FFF000;
char_9[53	]  <= 32'h00FFC000;
char_9[54	]  <= 32'h00000000;
char_9[55	]  <= 32'h00000000;
char_9[56	]  <= 32'h00000000;
char_9[57	]  <= 32'h00000000;
char_9[58	]  <= 32'h00000000;
char_9[59	]  <= 32'h00000000;
char_9[60	]  <= 32'h00000000;
char_9[61	]  <= 32'h00000000;
char_9[62	]  <= 32'h00000000;
char_9[63	]  <= 32'h00000000;
char_8[0	]  <= 32'h00000000;
char_8[1	]  <= 32'h00000000;
char_8[2	]  <= 32'h00000000;
char_8[3	]  <= 32'h00000000;
char_8[4	]  <= 32'h00000000;
char_8[5	]  <= 32'h00000000;
char_8[6	]  <= 32'h00000000;
char_8[7	]  <= 32'h00000000;
char_8[8	]  <= 32'h00000000;
char_8[9	]  <= 32'h00000000;
char_8[10	]  <= 32'h003FF800;
char_8[11	]  <= 32'h00FFFE00;
char_8[12	]  <= 32'h01F81F80;
char_8[13	]  <= 32'h03E00FC0;
char_8[14	]  <= 32'h07C003E0;
char_8[15	]  <= 32'h0F8003E0;
char_8[16	]  <= 32'h0F8001F0;
char_8[17	]  <= 32'h1F0001F0;
char_8[18	]  <= 32'h1F0001F0;
char_8[19	]  <= 32'h1F0001F0;
char_8[20	]  <= 32'h1F0001F0;
char_8[21	]  <= 32'h1F0001F0;
char_8[22	]  <= 32'h1F8001F0;
char_8[23	]  <= 32'h1FC001F0;
char_8[24	]  <= 32'h0FC001F0;
char_8[25	]  <= 32'h0FF003E0;
char_8[26	]  <= 32'h07F803C0;
char_8[27	]  <= 32'h03FE0F80;
char_8[28	]  <= 32'h01FF9F00;
char_8[29	]  <= 32'h00FFFE00;
char_8[30	]  <= 32'h003FF800;
char_8[31	]  <= 32'h007FFC00;
char_8[32	]  <= 32'h01F7FF00;
char_8[33	]  <= 32'h03E1FF80;
char_8[34	]  <= 32'h07C07FC0;
char_8[35	]  <= 32'h0F801FE0;
char_8[36	]  <= 32'h0F800FE0;
char_8[37	]  <= 32'h1F0007F0;
char_8[38	]  <= 32'h1F0003F0;
char_8[39	]  <= 32'h3E0001F8;
char_8[40	]  <= 32'h3E0001F8;
char_8[41	]  <= 32'h3E0001F8;
char_8[42	]  <= 32'h3E0000F8;
char_8[43	]  <= 32'h3E0000F8;
char_8[44	]  <= 32'h3E0000F8;
char_8[45	]  <= 32'h3E0000F8;
char_8[46	]  <= 32'h1F0001F0;
char_8[47	]  <= 32'h1F0001F0;
char_8[48	]  <= 32'h0F8003E0;
char_8[49	]  <= 32'h0FC003E0;
char_8[50	]  <= 32'h07E007C0;
char_8[51	]  <= 32'h01F83F80;
char_8[52	]  <= 32'h00FFFE00;
char_8[53	]  <= 32'h003FF800;
char_8[54	]  <= 32'h00000000;
char_8[55	]  <= 32'h00000000;
char_8[56	]  <= 32'h00000000;
char_8[57	]  <= 32'h00000000;
char_8[58	]  <= 32'h00000000;
char_8[59	]  <= 32'h00000000;
char_8[60	]  <= 32'h00000000;
char_8[61	]  <= 32'h00000000;
char_8[62	]  <= 32'h00000000;
char_8[63	]  <= 32'h00000000;
char_7[0	]  <= 32'h00000000;
char_7[1	]  <= 32'h00000000;
char_7[2	]  <= 32'h00000000;
char_7[3	]  <= 32'h00000000;
char_7[4	]  <= 32'h00000000;
char_7[5	]  <= 32'h00000000;
char_7[6	]  <= 32'h00000000;
char_7[7	]  <= 32'h00000000;
char_7[8	]  <= 32'h00000000;
char_7[9	]  <= 32'h00000000;
char_7[10	]  <= 32'h00000000;
char_7[11	]  <= 32'h07FFFFF8;
char_7[12	]  <= 32'h07FFFFF8;
char_7[13	]  <= 32'h07FFFFF8;
char_7[14	]  <= 32'h0FFFFFF0;
char_7[15	]  <= 32'h0FC000E0;
char_7[16	]  <= 32'h0F8001E0;
char_7[17	]  <= 32'h0F0001C0;
char_7[18	]  <= 32'h0E0003C0;
char_7[19	]  <= 32'h0E000780;
char_7[20	]  <= 32'h1E000780;
char_7[21	]  <= 32'h1C000F00;
char_7[22	]  <= 32'h00000F00;
char_7[23	]  <= 32'h00001E00;
char_7[24	]  <= 32'h00001E00;
char_7[25	]  <= 32'h00003C00;
char_7[26	]  <= 32'h00003C00;
char_7[27	]  <= 32'h00007800;
char_7[28	]  <= 32'h00007800;
char_7[29	]  <= 32'h0000F800;
char_7[30	]  <= 32'h0000F000;
char_7[31	]  <= 32'h0001F000;
char_7[32	]  <= 32'h0001E000;
char_7[33	]  <= 32'h0003E000;
char_7[34	]  <= 32'h0003E000;
char_7[35	]  <= 32'h0003E000;
char_7[36	]  <= 32'h0007C000;
char_7[37	]  <= 32'h0007C000;
char_7[38	]  <= 32'h0007C000;
char_7[39	]  <= 32'h000FC000;
char_7[40	]  <= 32'h000FC000;
char_7[41	]  <= 32'h000FC000;
char_7[42	]  <= 32'h000FC000;
char_7[43	]  <= 32'h001FC000;
char_7[44	]  <= 32'h001FC000;
char_7[45	]  <= 32'h001FC000;
char_7[46	]  <= 32'h001FC000;
char_7[47	]  <= 32'h001FC000;
char_7[48	]  <= 32'h001FC000;
char_7[49	]  <= 32'h001FC000;
char_7[50	]  <= 32'h001FC000;
char_7[51	]  <= 32'h001FC000;
char_7[52	]  <= 32'h001FC000;
char_7[53	]  <= 32'h000F8000;
char_7[54	]  <= 32'h00000000;
char_7[55	]  <= 32'h00000000;
char_7[56	]  <= 32'h00000000;
char_7[57	]  <= 32'h00000000;
char_7[58	]  <= 32'h00000000;
char_7[59	]  <= 32'h00000000;
char_7[60	]  <= 32'h00000000;
char_7[61	]  <= 32'h00000000;
char_7[62	]  <= 32'h00000000;
char_7[63	]  <= 32'h00000000;
char_6[0	]  <= 32'h00000000;
char_6[1	]  <= 32'h00000000;
char_6[2	]  <= 32'h00000000;
char_6[3	]  <= 32'h00000000;
char_6[4	]  <= 32'h00000000;
char_6[5	]  <= 32'h00000000;
char_6[6	]  <= 32'h00000000;
char_6[7	]  <= 32'h00000000;
char_6[8	]  <= 32'h00000000;
char_6[9	]  <= 32'h00000000;
char_6[10	]  <= 32'h0007FE00;
char_6[11	]  <= 32'h001FFF80;
char_6[12	]  <= 32'h003F0FC0;
char_6[13	]  <= 32'h007C07C0;
char_6[14	]  <= 32'h00F807E0;
char_6[15	]  <= 32'h01F007E0;
char_6[16	]  <= 32'h03E007E0;
char_6[17	]  <= 32'h03C007E0;
char_6[18	]  <= 32'h07C003C0;
char_6[19	]  <= 32'h07C00000;
char_6[20	]  <= 32'h0FC00000;
char_6[21	]  <= 32'h0F800000;
char_6[22	]  <= 32'h0F800000;
char_6[23	]  <= 32'h1F800000;
char_6[24	]  <= 32'h1F800000;
char_6[25	]  <= 32'h1F800000;
char_6[26	]  <= 32'h1F87FE00;
char_6[27	]  <= 32'h1F9FFF80;
char_6[28	]  <= 32'h1FBFFFC0;
char_6[29	]  <= 32'h3FFE1FC0;
char_6[30	]  <= 32'h3FF807E0;
char_6[31	]  <= 32'h3FE003F0;
char_6[32	]  <= 32'h3FE003F0;
char_6[33	]  <= 32'h3FC001F8;
char_6[34	]  <= 32'h3F8001F8;
char_6[35	]  <= 32'h3F8001F8;
char_6[36	]  <= 32'h3F8000F8;
char_6[37	]  <= 32'h3F8000F8;
char_6[38	]  <= 32'h3F8000F8;
char_6[39	]  <= 32'h1F8000F8;
char_6[40	]  <= 32'h1F8000F8;
char_6[41	]  <= 32'h1F8000F8;
char_6[42	]  <= 32'h1F8000F8;
char_6[43	]  <= 32'h1F8000F8;
char_6[44	]  <= 32'h0FC001F8;
char_6[45	]  <= 32'h0FC001F8;
char_6[46	]  <= 32'h0FC001F0;
char_6[47	]  <= 32'h07E001F0;
char_6[48	]  <= 32'h03E003E0;
char_6[49	]  <= 32'h03F003E0;
char_6[50	]  <= 32'h01F807C0;
char_6[51	]  <= 32'h00FE1F80;
char_6[52	]  <= 32'h007FFE00;
char_6[53	]  <= 32'h001FF800;
char_6[54	]  <= 32'h00000000;
char_6[55	]  <= 32'h00000000;
char_6[56	]  <= 32'h00000000;
char_6[57	]  <= 32'h00000000;
char_6[58	]  <= 32'h00000000;
char_6[59	]  <= 32'h00000000;
char_6[60	]  <= 32'h00000000;
char_6[61	]  <= 32'h00000000;
char_6[62	]  <= 32'h00000000;
char_6[63	]  <= 32'h00000000;
char_5[0	]  <= 32'h00000000;
char_5[1	]  <= 32'h00000000;
char_5[2	]  <= 32'h00000000;
char_5[3	]  <= 32'h00000000;
char_5[4	]  <= 32'h00000000;
char_5[5	]  <= 32'h00000000;
char_5[6	]  <= 32'h00000000;
char_5[7	]  <= 32'h00000000;
char_5[8	]  <= 32'h00000000;
char_5[9	]  <= 32'h00000000;
char_5[10	]  <= 32'h00000000;
char_5[11	]  <= 32'h03FFFFF0;
char_5[12	]  <= 32'h03FFFFF0;
char_5[13	]  <= 32'h03FFFFF0;
char_5[14	]  <= 32'h03FFFFE0;
char_5[15	]  <= 32'h03800000;
char_5[16	]  <= 32'h03800000;
char_5[17	]  <= 32'h03800000;
char_5[18	]  <= 32'h03800000;
char_5[19	]  <= 32'h03800000;
char_5[20	]  <= 32'h07800000;
char_5[21	]  <= 32'h07800000;
char_5[22	]  <= 32'h07800000;
char_5[23	]  <= 32'h07800000;
char_5[24	]  <= 32'h07800000;
char_5[25	]  <= 32'h07800000;
char_5[26	]  <= 32'h078FF800;
char_5[27	]  <= 32'h073FFE00;
char_5[28	]  <= 32'h077FFF80;
char_5[29	]  <= 32'h07FC3F80;
char_5[30	]  <= 32'h07E00FC0;
char_5[31	]  <= 32'h07C007E0;
char_5[32	]  <= 32'h078007E0;
char_5[33	]  <= 32'h078003F0;
char_5[34	]  <= 32'h000003F0;
char_5[35	]  <= 32'h000001F0;
char_5[36	]  <= 32'h000001F8;
char_5[37	]  <= 32'h000001F8;
char_5[38	]  <= 32'h000001F8;
char_5[39	]  <= 32'h000001F8;
char_5[40	]  <= 32'h000001F8;
char_5[41	]  <= 32'h078001F8;
char_5[42	]  <= 32'h0FC001F8;
char_5[43	]  <= 32'h1FC001F0;
char_5[44	]  <= 32'h1FC001F0;
char_5[45	]  <= 32'h1FC003F0;
char_5[46	]  <= 32'h1F8003F0;
char_5[47	]  <= 32'h1F8003E0;
char_5[48	]  <= 32'h0F8007E0;
char_5[49	]  <= 32'h078007C0;
char_5[50	]  <= 32'h07C01F80;
char_5[51	]  <= 32'h03F83F00;
char_5[52	]  <= 32'h00FFFE00;
char_5[53	]  <= 32'h003FF800;
char_5[54	]  <= 32'h00000000;
char_5[55	]  <= 32'h00000000;
char_5[56	]  <= 32'h00000000;
char_5[57	]  <= 32'h00000000;
char_5[58	]  <= 32'h00000000;
char_5[59	]  <= 32'h00000000;
char_5[60	]  <= 32'h00000000;
char_5[61	]  <= 32'h00000000;
char_5[62	]  <= 32'h00000000;
char_5[63	]  <= 32'h00000000;
char_4[0	]  <= 32'h00000000;
char_4[1	]  <= 32'h00000000;
char_4[2	]  <= 32'h00000000;
char_4[3	]  <= 32'h00000000;
char_4[4	]  <= 32'h00000000;
char_4[5	]  <= 32'h00000000;
char_4[6	]  <= 32'h00000000;
char_4[7	]  <= 32'h00000000;
char_4[8	]  <= 32'h00000000;
char_4[9	]  <= 32'h00000000;
char_4[10	]  <= 32'h00001F00;
char_4[11	]  <= 32'h00001F00;
char_4[12	]  <= 32'h00003F00;
char_4[13	]  <= 32'h00003F00;
char_4[14	]  <= 32'h00007F00;
char_4[15	]  <= 32'h0000FF00;
char_4[16	]  <= 32'h0000FF00;
char_4[17	]  <= 32'h0001FF00;
char_4[18	]  <= 32'h0003FF00;
char_4[19	]  <= 32'h0003BF00;
char_4[20	]  <= 32'h0007BF00;
char_4[21	]  <= 32'h00073F00;
char_4[22	]  <= 32'h000F3F00;
char_4[23	]  <= 32'h001E3F00;
char_4[24	]  <= 32'h001C3F00;
char_4[25	]  <= 32'h003C3F00;
char_4[26	]  <= 32'h00783F00;
char_4[27	]  <= 32'h00783F00;
char_4[28	]  <= 32'h00F03F00;
char_4[29	]  <= 32'h00E03F00;
char_4[30	]  <= 32'h01E03F00;
char_4[31	]  <= 32'h03C03F00;
char_4[32	]  <= 32'h03803F00;
char_4[33	]  <= 32'h07803F00;
char_4[34	]  <= 32'h0F003F00;
char_4[35	]  <= 32'h0F003F00;
char_4[36	]  <= 32'h1E003F00;
char_4[37	]  <= 32'h1C003F00;
char_4[38	]  <= 32'h3C003F00;
char_4[39	]  <= 32'h7FFFFFFE;
char_4[40	]  <= 32'h7FFFFFFE;
char_4[41	]  <= 32'h00003F00;
char_4[42	]  <= 32'h00003F00;
char_4[43	]  <= 32'h00003F00;
char_4[44	]  <= 32'h00003F00;
char_4[45	]  <= 32'h00003F00;
char_4[46	]  <= 32'h00003F00;
char_4[47	]  <= 32'h00003F00;
char_4[48	]  <= 32'h00003F00;
char_4[49	]  <= 32'h00003F00;
char_4[50	]  <= 32'h00003F00;
char_4[51	]  <= 32'h00007F80;
char_4[52	]  <= 32'h000FFFFC;
char_4[53	]  <= 32'h000FFFFC;
char_4[54	]  <= 32'h00000000;
char_4[55	]  <= 32'h00000000;
char_4[56	]  <= 32'h00000000;
char_4[57	]  <= 32'h00000000;
char_4[58	]  <= 32'h00000000;
char_4[59	]  <= 32'h00000000;
char_4[60	]  <= 32'h00000000;
char_4[61	]  <= 32'h00000000;
char_4[62	]  <= 32'h00000000;
char_4[63	]  <= 32'h00000000;
char_3[0	]  <= 32'h00000000;
char_3[1	]  <= 32'h00000000;
char_3[2	]  <= 32'h00000000;
char_3[3	]  <= 32'h00000000;
char_3[4	]  <= 32'h00000000;
char_3[5	]  <= 32'h00000000;
char_3[6	]  <= 32'h00000000;
char_3[7	]  <= 32'h00000000;
char_3[8	]  <= 32'h00000000;
char_3[9	]  <= 32'h00000000;
char_3[10	]  <= 32'h003FF000;
char_3[11	]  <= 32'h00FFFC00;
char_3[12	]  <= 32'h01F07E00;
char_3[13	]  <= 32'h03C03F00;
char_3[14	]  <= 32'h07801F80;
char_3[15	]  <= 32'h0F800FC0;
char_3[16	]  <= 32'h0F800FC0;
char_3[17	]  <= 32'h0F8007E0;
char_3[18	]  <= 32'h0FC007E0;
char_3[19	]  <= 32'h0FC007E0;
char_3[20	]  <= 32'h0FC007E0;
char_3[21	]  <= 32'h07C007E0;
char_3[22	]  <= 32'h000007E0;
char_3[23	]  <= 32'h000007E0;
char_3[24	]  <= 32'h000007C0;
char_3[25	]  <= 32'h00000FC0;
char_3[26	]  <= 32'h00000F80;
char_3[27	]  <= 32'h00001F00;
char_3[28	]  <= 32'h00007E00;
char_3[29	]  <= 32'h0003FC00;
char_3[30	]  <= 32'h001FF000;
char_3[31	]  <= 32'h001FFC00;
char_3[32	]  <= 32'h0000FF00;
char_3[33	]  <= 32'h00001F80;
char_3[34	]  <= 32'h00000FC0;
char_3[35	]  <= 32'h000007E0;
char_3[36	]  <= 32'h000003E0;
char_3[37	]  <= 32'h000003F0;
char_3[38	]  <= 32'h000003F0;
char_3[39	]  <= 32'h000001F0;
char_3[40	]  <= 32'h000001F8;
char_3[41	]  <= 32'h000001F8;
char_3[42	]  <= 32'h078001F8;
char_3[43	]  <= 32'h0FC001F8;
char_3[44	]  <= 32'h1FC001F8;
char_3[45	]  <= 32'h1FC003F0;
char_3[46	]  <= 32'h1FC003F0;
char_3[47	]  <= 32'h1FC003E0;
char_3[48	]  <= 32'h0F8007E0;
char_3[49	]  <= 32'h0F8007C0;
char_3[50	]  <= 32'h07C01F80;
char_3[51	]  <= 32'h03F07F00;
char_3[52	]  <= 32'h01FFFE00;
char_3[53	]  <= 32'h003FF000;
char_3[54	]  <= 32'h00000000;
char_3[55	]  <= 32'h00000000;
char_3[56	]  <= 32'h00000000;
char_3[57	]  <= 32'h00000000;
char_3[58	]  <= 32'h00000000;
char_3[59	]  <= 32'h00000000;
char_3[60	]  <= 32'h00000000;
char_3[61	]  <= 32'h00000000;
char_3[62	]  <= 32'h00000000;
char_3[63	]  <= 32'h00000000;
char_2[0	]  <= 32'h00000000;
char_2[1	]  <= 32'h00000000;
char_2[2	]  <= 32'h00000000;
char_2[3	]  <= 32'h00000000;
char_2[4	]  <= 32'h00000000;
char_2[5	]  <= 32'h00000000;
char_2[6	]  <= 32'h00000000;
char_2[7	]  <= 32'h00000000;
char_2[8	]  <= 32'h00000000;
char_2[9	]  <= 32'h00000000;
char_2[10	]  <= 32'h001FFC00;
char_2[11	]  <= 32'h007FFF00;
char_2[12	]  <= 32'h01F83F80;
char_2[13	]  <= 32'h03E00FC0;
char_2[14	]  <= 32'h07C007E0;
char_2[15	]  <= 32'h078007E0;
char_2[16	]  <= 32'h0F8003F0;
char_2[17	]  <= 32'h0F8003F0;
char_2[18	]  <= 32'h1F8003F0;
char_2[19	]  <= 32'h1F8003F0;
char_2[20	]  <= 32'h1FC003F0;
char_2[21	]  <= 32'h1FC003F0;
char_2[22	]  <= 32'h1FC003F0;
char_2[23	]  <= 32'h0FC003F0;
char_2[24	]  <= 32'h07C003F0;
char_2[25	]  <= 32'h000003E0;
char_2[26	]  <= 32'h000007E0;
char_2[27	]  <= 32'h000007E0;
char_2[28	]  <= 32'h00000FC0;
char_2[29	]  <= 32'h00000F80;
char_2[30	]  <= 32'h00001F80;
char_2[31	]  <= 32'h00003F00;
char_2[32	]  <= 32'h00003E00;
char_2[33	]  <= 32'h00007C00;
char_2[34	]  <= 32'h0000F800;
char_2[35	]  <= 32'h0001F000;
char_2[36	]  <= 32'h0003E000;
char_2[37	]  <= 32'h0007C000;
char_2[38	]  <= 32'h000F8000;
char_2[39	]  <= 32'h001F0000;
char_2[40	]  <= 32'h003E0000;
char_2[41	]  <= 32'h007C0000;
char_2[42	]  <= 32'h00F80000;
char_2[43	]  <= 32'h01F00038;
char_2[44	]  <= 32'h01E00038;
char_2[45	]  <= 32'h03C00070;
char_2[46	]  <= 32'h07800070;
char_2[47	]  <= 32'h0F8000F0;
char_2[48	]  <= 32'h0F0000F0;
char_2[49	]  <= 32'h1E0003F0;
char_2[50	]  <= 32'h3FFFFFF0;
char_2[51	]  <= 32'h3FFFFFF0;
char_2[52	]  <= 32'h3FFFFFE0;
char_2[53	]  <= 32'h3FFFFFE0;
char_2[54	]  <= 32'h00000000;
char_2[55	]  <= 32'h00000000;
char_2[56	]  <= 32'h00000000;
char_2[57	]  <= 32'h00000000;
char_2[58	]  <= 32'h00000000;
char_2[59	]  <= 32'h00000000;
char_2[60	]  <= 32'h00000000;
char_2[61	]  <= 32'h00000000;
char_2[62	]  <= 32'h00000000;
char_2[63	]  <= 32'h00000000;
char_1[0	]  <= 32'h00000000;
char_1[1	]  <= 32'h00000000;
char_1[2	]  <= 32'h00000000;
char_1[3	]  <= 32'h00000000;
char_1[4	]  <= 32'h00000000;
char_1[5	]  <= 32'h00000000;
char_1[6	]  <= 32'h00000000;
char_1[7	]  <= 32'h00000000;
char_1[8	]  <= 32'h00000000;
char_1[9	]  <= 32'h00000000;
char_1[10	]  <= 32'h0000E000;
char_1[11	]  <= 32'h0001E000;
char_1[12	]  <= 32'h0003E000;
char_1[13	]  <= 32'h001FE000;
char_1[14	]  <= 32'h03FFE000;
char_1[15	]  <= 32'h03FFE000;
char_1[16	]  <= 32'h0007E000;
char_1[17	]  <= 32'h0007E000;
char_1[18	]  <= 32'h0007E000;
char_1[19	]  <= 32'h0007E000;
char_1[20	]  <= 32'h0007E000;
char_1[21	]  <= 32'h0007E000;
char_1[22	]  <= 32'h0007E000;
char_1[23	]  <= 32'h0007E000;
char_1[24	]  <= 32'h0007E000;
char_1[25	]  <= 32'h0007E000;
char_1[26	]  <= 32'h0007E000;
char_1[27	]  <= 32'h0007E000;
char_1[28	]  <= 32'h0007E000;
char_1[29	]  <= 32'h0007E000;
char_1[30	]  <= 32'h0007E000;
char_1[31	]  <= 32'h0007E000;
char_1[32	]  <= 32'h0007E000;
char_1[33	]  <= 32'h0007E000;
char_1[34	]  <= 32'h0007E000;
char_1[35	]  <= 32'h0007E000;
char_1[36	]  <= 32'h0007E000;
char_1[37	]  <= 32'h0007E000;
char_1[38	]  <= 32'h0007E000;
char_1[39	]  <= 32'h0007E000;
char_1[40	]  <= 32'h0007E000;
char_1[41	]  <= 32'h0007E000;
char_1[42	]  <= 32'h0007E000;
char_1[43	]  <= 32'h0007E000;
char_1[44	]  <= 32'h0007E000;
char_1[45	]  <= 32'h0007E000;
char_1[46	]  <= 32'h0007E000;
char_1[47	]  <= 32'h0007E000;
char_1[48	]  <= 32'h0007E000;
char_1[49	]  <= 32'h0007E000;
char_1[50	]  <= 32'h0007E000;
char_1[51	]  <= 32'h000FF800;
char_1[52	]  <= 32'h03FFFFC0;
char_1[53	]  <= 32'h03FFFFC0;
char_1[54	]  <= 32'h00000000;
char_1[55	]  <= 32'h00000000;
char_1[56	]  <= 32'h00000000;
char_1[57	]  <= 32'h00000000;
char_1[58	]  <= 32'h00000000;
char_1[59	]  <= 32'h00000000;
char_1[60	]  <= 32'h00000000;
char_1[61	]  <= 32'h00000000;
char_1[62	]  <= 32'h00000000;
char_1[63	]  <= 32'h00000000;
 char_0[0	]  <= 32'h00000000;
char_0[1    ]  <= 32'h00000000;
char_0[2    ]  <= 32'h00000000;
char_0[3    ]  <= 32'h00000000;
char_0[4    ]  <= 32'h00000000;
char_0[5    ]  <= 32'h00000000;
char_0[6    ]  <= 32'h00000000;
char_0[7    ]  <= 32'h00000000;
char_0[8    ]  <= 32'h00000000;
char_0[9    ]  <= 32'h00000000;
char_0[10    ]  <= 32'h000FF000;
char_0[11    ]  <= 32'h003FFC00;
char_0[12    ]  <= 32'h007E7E00;
char_0[13    ]  <= 32'h00F81F00;
char_0[14    ]  <= 32'h01F00F80;
char_0[15    ]  <= 32'h03F00FC0;
char_0[16    ]  <= 32'h03E007C0;
char_0[17    ]  <= 32'h07E007E0;
char_0[18    ]  <= 32'h07C003E0;
char_0[19    ]  <= 32'h0FC003F0;
char_0[20    ]  <= 32'h0FC003F0;
char_0[21    ]  <= 32'h0FC003F0;
char_0[22    ]  <= 32'h1F8001F8;
char_0[23    ]  <= 32'h1F8001F8;
char_0[24    ]  <= 32'h1F8001F8;
char_0[25    ]  <= 32'h1F8001F8;
char_0[26    ]  <= 32'h1F8001F8;
char_0[27    ]  <= 32'h3F8001F8;
char_0[28    ]  <= 32'h3F8001F8;
char_0[29    ]  <= 32'h3F8001F8;
char_0[30    ]  <= 32'h3F8001F8;
char_0[31    ]  <= 32'h3F8001F8;
char_0[32    ]  <= 32'h3F8001F8;
char_0[33    ]  <= 32'h3F8001F8;
char_0[34    ]  <= 32'h3F8001F8;
char_0[35    ]  <= 32'h3F8001F8;
char_0[36    ]  <= 32'h3F8001F8;
char_0[37    ]  <= 32'h1F8001F8;
char_0[38    ]  <= 32'h1F8001F8;
char_0[39    ]  <= 32'h1F8001F8;
char_0[40    ]  <= 32'h1F8001F8;
char_0[41    ]  <= 32'h1F8001F0;
char_0[42    ]  <= 32'h0F8003F0;
char_0[43    ]  <= 32'h0FC003F0;
char_0[44    ]  <= 32'h0FC003F0;
char_0[45    ]  <= 32'h07C003E0;
char_0[46    ]  <= 32'h07E007E0;
char_0[47    ]  <= 32'h03E007C0;
char_0[48    ]  <= 32'h03F00FC0;
char_0[49    ]  <= 32'h01F00F80;
char_0[50    ]  <= 32'h00F81F00;
char_0[51    ]  <= 32'h007E7E00;
char_0[52    ]  <= 32'h003FFC00;
char_0[53    ]  <= 32'h000FF000;
char_0[54    ]  <= 32'h00000000;
char_0[55    ]  <= 32'h00000000;
char_0[56    ]  <= 32'h00000000;
char_0[57    ]  <= 32'h00000000;
char_0[58    ]  <= 32'h00000000;
char_0[59    ]  <= 32'h00000000;
char_0[60    ]  <= 32'h00000000;
char_0[61    ]  <= 32'h00000000;
char_0[62    ]  <= 32'h00000000;

char_time_now[0	]  <= 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
char_time_now[1	]  <= 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
char_time_now[2	]  <= 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
char_time_now[3	]  <= 320'h000000070000000000000000002000000000000000040000000C0000000000000000000000000000;
char_time_now[4	]  <= 320'h00000007C00000000000180000700000000000000007000000060000000000000000000000000000;
char_time_now[5	]  <= 320'h00000007F000000000001C0000780000000000000007800000070000000000000000000000000000;
char_time_now[6	]  <= 320'h00000007F800000000000F00007E0000000000000007E0000003C000000000000000000000000000;
char_time_now[7	]  <= 320'h00000007E00180000000078000F8000000000000000780000001E000000002000000000000000000;
char_time_now[8	]  <= 320'h00300007C003C000000007C000F0000000000000000780000001F000000007000000000000000000;
char_time_now[9	]  <= 320'h003C0007C003E000000003E001E0000000000000000780000000F0FFFFFFFF800000000000000000;
char_time_now[10	]  <= 320'h001F0007C007F800000003E001C0000004000400000780000000F07FFFFFFFC00000000000000000;
char_time_now[11	]  <= 320'h000FC007C007F800000003E00380000003000E00000780000100F02000000F000000000000000000;
char_time_now[12	]  <= 320'h0007E007C00FF000000001E00300010003FFFF000007800000C0700000000F000000000000000000;
char_time_now[13	]  <= 320'h0003F807C00FC000000001C00600038003FFFF800007800000F0700000000F000000000000000000;
char_time_now[14	]  <= 320'h0001F807C01F800000000080040007C003801F000007800000F8200000000F000000000000000000;
char_time_now[15	]  <= 320'h0001FC07C03F00001FFFFFFFFFFFFFE003801E000007800000F0000000000F000000000000000000;
char_time_now[16	]  <= 320'h0000FE07C03E00000FFFFFFFFFFFFFF003801E000007810000E0000000000F000000000000000000;
char_time_now[17	]  <= 320'h0000FE07C07C0000060000000000000003801E000007838000E0000000000F000000000000000000;
char_time_now[18	]  <= 320'h00007E07C0F80000000000000000000003801E00000787C000E0040001000F000000000000000000;
char_time_now[19	]  <= 320'h00007C07C1F00000000000000000400003801EFFFFFFFFE000E0030003800F000000000000000000;
char_time_now[20	]  <= 320'h00003807C1C00000002000100000700003801E7FFFFFFFF000E003FFFFC00F000000000000000000;
char_time_now[21	]  <= 320'h00000007C38000000030003800007C0003801E200007800000E003FFFFE00F000000000000000000;
char_time_now[22	]  <= 320'h00000007C7000000003FFFFC00007C0003801E000007800000E0038003C00F000000000000000000;
char_time_now[23	]  <= 320'h00000007C0000F00003FFFFC0200780003801E000007800000E0038003800F000000000000000000;
char_time_now[24	]  <= 320'h00000007C0000F80003C00380380700003801E000007800000E0038003800F000000000000000000;
char_time_now[25	]  <= 320'h01FFFFFFFFFFFFC0003C003803E0700003801E000007800000E0038003800F000000000000000000;
char_time_now[26	]  <= 320'h00FFFFFFFFFFFFE0003C003803C0700003801E000007800000E0038003800F000000000000000000;
char_time_now[27	]  <= 320'h007C000000001F80003C00380380700003801E080007800000E0038003800F000000000000000000;
char_time_now[28	]  <= 320'h0000000000001F80003C00380380700003FFFE0E0007800000E0038003800F000000000000000000;
char_time_now[29	]  <= 320'h0000000000001F80003C00380380700003FFFE070007800000E0038003800F000000000000000000;
char_time_now[30	]  <= 320'h0000000000001F80003C00380380700003801E038007800000E0038003800F000000000000000000;
char_time_now[31	]  <= 320'h0000000000001F80003C00380380700003801E03C007800000E0038003800F000000000000000000;
char_time_now[32	]  <= 320'h0000000000001F80003FFFF80380700003801E01F007800000E003FFFF800F00001E000000000000;
char_time_now[33	]  <= 320'h0000000000001F80003FFFF80380700003801E00F007800000E003FFFF800F00007F800000000000;
char_time_now[34	]  <= 320'h0000000000001F80003C00380380700003801E00F807800000E0038003800F00007F800000000000;
char_time_now[35	]  <= 320'h0000000000001F80003C00380380700003801E00F807800000E0038003800F0000FF800000000000;
char_time_now[36	]  <= 320'h0000000000001F80003C00380380700003801E007807800000E0038003800F0000FFC00000000000;
char_time_now[37	]  <= 320'h0000000000001F80003C00380380700003801E007807800000E0038003800F0000FF800000000000;
char_time_now[38	]  <= 320'h0000000000001F80003C00380380700003801E007807800000E0038003800F00007F800000000000;
char_time_now[39	]  <= 320'h001FFFFFFFFFFF80003C00380380700003801E003007800000E0038003800F00007F000000000000;
char_time_now[40	]  <= 320'h001FFFFFFFFFFF80003C00380380700003801E002007800000E0038003800F00001C000000000000;
char_time_now[41	]  <= 320'h000F800000001F80003C00380380700003801E000007800000E0038003800F000000000000000000;
char_time_now[42	]  <= 320'h0000000000001F80003FFFF80380700003801E000007800000E0038003800F000000000000000000;
char_time_now[43	]  <= 320'h0000000000001F80003FFFF80380700003801E000007800000E0038003800F000000000000000000;
char_time_now[44	]  <= 320'h0000000000001F80003C00380380700003801E000007800000E003FFFF800F000000000000000000;
char_time_now[45	]  <= 320'h0000000000001F80003C00380380700003801E000007800000E003FFFF800F000000000000000000;
char_time_now[46	]  <= 320'h0000000000001F80003C00380380700003FFFE000007800000E0038003800F000000000000000000;
char_time_now[47	]  <= 320'h0000000000001F80003C00380380700003FFFE000007800000E0038003800F00003E000000000000;
char_time_now[48	]  <= 320'h0000000000001F80003C00380380700003801E000007800000E0038003800F00007F000000000000;
char_time_now[49	]  <= 320'h0000000000001F80003C00380380700003801E000007800000E0030002000F0000FF800000000000;
char_time_now[50	]  <= 320'h0000000000001F80003C00380300700003801E000007800000E0040000000F0000FF800000000000;
char_time_now[51	]  <= 320'h0000000000001F80003C00380000700003801C000007800000E0000000000F0000FF800000000000;
char_time_now[52	]  <= 320'h0000000000001F80003C003800007000038010000007800000E0000000000F0000FF800000000000;
char_time_now[53	]  <= 320'h0000000000001F80003C003800007000038000000007800000E0000000000F00007F800000000000;
char_time_now[54	]  <= 320'h03FFFFFFFFFFFF80003C00380200F00002000000100F000000E0000000300F00007F000000000000;
char_time_now[55	]  <= 320'h01FFFFFFFFFFFF80003C007803FFF000000000001FFF000000E00000001FFF00001C000000000000;
char_time_now[56	]  <= 320'h00F8000000001F80003C1FF8003FF0000000000003FF000000E000000003FE000000000000000000;
char_time_now[57	]  <= 320'h0000000000001F80003C03F0000FE0000000000000FF000000E000000001FE000000000000000000;
char_time_now[58	]  <= 320'h0000000000001F80003C01F00007C00000000000003E000000E000000000FC000000000000000000;
char_time_now[59	]  <= 320'h0000000000001F80003C00E00003800000000000001C000000E00000000078000000000000000000;
char_time_now[60	]  <= 320'h0000000000001E000020004000030000000000000010000001000000000020000000000000000000;
char_time_now[61	]  <= 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
char_time_now[62	]  <= 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
char_time_now[63	]  <= 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
//A盒用药量：

char_A[0	]  <= 352'h0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
char_A[1	]  <= 352'h0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
char_A[2	]  <= 352'h0000000000000002000000000000000000000000000000000000000000000000000000000000000000000000;
char_A[3	]  <= 352'h0000000000000003800000000000000000000000000004000200000000000000000200000000000000000000;
char_A[4	]  <= 352'h0000000000000007C000000000000000000000000000078003C0000000030000000380000000000000000000;
char_A[5	]  <= 352'h000000000000000FC00000000040008080000800000007E003F000000003FFFFFFFFC0000000000000000000;
char_A[6	]  <= 352'h000000000000001FC0000000007001C0C0001C00000007C003E000000003FFFFFFFFC0000000000000000000;
char_A[7	]  <= 352'h000000000000001F40000000007FFFE0FFFFFF000000078003C001800003C000000780000000000000000000;
char_A[8	]  <= 352'h000000000000003E20000000007FFFF0FFFFFF000000078003C007C00003C000000780000000000000000000;
char_A[9	]  <= 352'h000000000000007C30000000007801E0F0001E000000078003C00FE00003C000000780000000000000000000;
char_A[10	]  <= 352'h00000000000000F818000000007801C0F0001C001FFFFFFFFFFFFFF00003C000000780000000000000000000;
char_A[11	]  <= 352'h0003C000000001F00E000000007801C0F0001C000FFFFFFFFFFFFFF80003FFFFFFFF80000000000000000000;
char_A[12	]  <= 352'h0003C000000003E007000000007801C0F0001C000600078003C000000003FFFFFFFF80000000000000000000;
char_A[13	]  <= 352'h0003C000000007C003800000007801C0F0001C000000078003C000000003C000000780000000000000000000;
char_A[14	]  <= 352'h0007E00000000F8001E00000007801C0F0001C000000078003C000000003C000000780000000000000000000;
char_A[15	]  <= 352'h0007E00000001F0000F00000007801C0F0001C000000078003C000000003C000000780000000000000000000;
char_A[16	]  <= 352'h0006E00000003C00027C0000007801C0F0001C0000006700030000000003C000000780000000000000000000;
char_A[17	]  <= 352'h0006E00000007800073F8000007801C0F0003C0000007400040000000003FFFFFFFF80000000000000000000;
char_A[18	]  <= 352'h000CF0000000F7FFFF8FF000007801C0F0003C000000F800070000000003FFFFFFFF80000000000000000000;
char_A[19	]  <= 352'h000CF0000003E3FFFFC3FF00007801C0F0003C000000FC0007C000000003C000000780000000000000000000;
char_A[20	]  <= 352'h000C7000000781000001FFF8007FFFC0F07078000001F00007C000000003C000000700000000000000000000;
char_A[21	]  <= 352'h000C7000000F000000007FF0007FFFC0F01FF8000001E0000780000000038000000400C00000000000000000;
char_A[22	]  <= 352'h00187800003C000000001FC0007801C0F007F8000003C0000F80000000020000000001E00000000000000000;
char_A[23	]  <= 352'h0018780000F0000000000380007801C0F003F000000380400F0000003FFFFFFFFFFFFFF00000000000000000;
char_A[24	]  <= 352'h0018780001C03000000C0080007801C0F001C000000700600E0002001FFFFFFFFFFFFFF80000000000000000;
char_A[25	]  <= 352'h0018380007003FFFFFFE0000007801C0F0000000000E00F01E0007000C000000000000000000000000000000;
char_A[26	]  <= 352'h00303C001C003FFFFFFF0000007801C0F0000000001E00F81FFFFF8000000000000000000000000000000000;
char_A[27	]  <= 352'h00303C0000003C00001E0000007801C0F0000000001C01F83FFFFFC000040000000100000000000000000000;
char_A[28	]  <= 352'h00303C0000003C00001E0000007801C0F0000600003803E038000F8000020000000180000000000000000000;
char_A[29	]  <= 352'h00301C0000003C00001E0000007801C0FFFFFF80007003C078000F000003FFFFFFFFC0000000000000000000;
char_A[30	]  <= 352'h00601E0000003C00001E0000007801C0FFFFFFC001E0078070000F000003FFFFFFFFE0000000000000000000;
char_A[31	]  <= 352'h00601E0000003C00001E0000007801C0F1000F0007FFFF00E0000F0000038003C003C0000000000000000000;
char_A[32	]  <= 352'h00601E0000003C00001E0000007801C0F1800F0003FFCE00C0000F0000038003C003C000001E000000000000;
char_A[33	]  <= 352'h00600E0000003C00001E0000007801C0F1800E0003F81C01C0000F0000038003C003C000007F800000000000;
char_A[34	]  <= 352'h00E00E0000003FFFFFFE0000007FFFC0F0801E0001C0380380000F0000038003C003C000007F800000000000;
char_A[35	]  <= 352'h00C00F0000003FFFFFFE0000007FFFC0F0C01E000000700300000F0000038003C003C00000FF800000000000;
char_A[36	]  <= 352'h00C00F0000003C00001E0000007801C0F0C01C000000E00618000F000003FFFFFFFFC00000FFC00000000000;
char_A[37	]  <= 352'h00FFFF0000003C00001E0000007801C0F0603C000000E00C1C000F000003FFFFFFFFC00000FF800000000000;
char_A[38	]  <= 352'h01FFFF000000300000180000007801C0F06038000001C0080F000F0000038003C003C000007F800000000000;
char_A[39	]  <= 352'h018007800000000000002000007801C0F07038000003800007800F0000038003C003C000007F000000000000;
char_A[40	]  <= 352'h01800780000C000000007000007801C0F03078000007000007C00F0000038003C003C000001C000000000000;
char_A[41	]  <= 352'h01800780000FFFFFFFFFF800007001C0F0387000000E000003E00E0000038003C003C0000000000000000000;
char_A[42	]  <= 352'h03800780000FFFFFFFFFF800007001C0F018F000003C07F801E00E000003FFFFFFFFC0000000000000000000;
char_A[43	]  <= 352'h030003C0000F00700700F000007001C0F01CE00000FFFF0001E00E000003FFFFFFFFC0000000000000000000;
char_A[44	]  <= 352'h030003C0000F00700700F000007001C0F00FE00001FFF00001E00E0000038003C003C0000000000000000000;
char_A[45	]  <= 352'h030003C0000F00700700F000007001C0F00FC00000FF800000E00E0000038003C00200000000000000000000;
char_A[46	]  <= 352'h070003C0000F00700700F00000F001C0F007C000007C000000C00E0000040003C00020000000000000000000;
char_A[47	]  <= 352'h060001E0000F00700700F00000E001C0F00780000070000000000E0000000003C0006000003E000000000000;
char_A[48	]  <= 352'h060001E0000F00700700F00000E001C0F007C0000000000000001E0000000003C000F000007F000000000000;
char_A[49	]  <= 352'h060001E0000F00700700F00000E001C0F00FE0000000000000001E00007FFFFFFFFFF80000FF800000000000;
char_A[50	]  <= 352'h0E0001E0000F00700700F00001C001C0F01CF0000000000000001E00003FFFFFFFFFFC0000FF800000000000;
char_A[51	]  <= 352'h0E0001F0000F00700700F00001C001C0F0387C000000000E00001E0000100003C000000000FF800000000000;
char_A[52	]  <= 352'h1F0001F8000F00700700F000018001C0F0703E00000003F000001C0000000003C000000000FF800000000000;
char_A[53	]  <= 352'h7FC00FFE000F00700700F000038001C0F0E01F800000FF8000003C0000000003C0000000007F800000000000;
char_A[54	]  <= 352'h7FC00FFE000F00700700F0400303C3C0F1C00FF8007FFC0001C03C0000000003C0000080007F000000000000;
char_A[55	]  <= 352'h00000000000F00700700F0C00700FFC0F30007FC07FFC00000FFFC0000000003C00001C0001C000000000000;
char_A[56	]  <= 352'h00000000000F00700700F1E006003FC0FC0003C003FE0000001FF80000000003C00003E00000000000000000;
char_A[57	]  <= 352'h000000001FFFFFFFFFFFFFF00C000F80F800008003F000000007F8001FFFFFFFFFFFFFE00000000000000000;
char_A[58	]  <= 352'h000000000FFFFFFFFFFFFFF808000F00F0000000018000000003F0000FFFFFFFFFFFFFF00000000000000000;
char_A[59	]  <= 352'h00000000040000000000000010000600E0000000010000000001E00006000000000000000000000000000000;
char_A[60	]  <= 352'h0000000000000000000000000000000080000000000000000001800000000000000000000000000000000000;
char_A[61	]  <= 352'h0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
char_A[62	]  <= 352'h0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
char_A[63	]  <= 352'h0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
char_B[0	]  <= 352'h0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
char_B[1	]  <= 352'h0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
char_B[2	]  <= 352'h0000000000000002000000000000000000000000000000000000000000000000000000000000000000000000;
char_B[3	]  <= 352'h0000000000000003800000000000000000000000000004000200000000000000000200000000000000000000;
char_B[4	]  <= 352'h0000000000000007C000000000000000000000000000078003C0000000030000000380000000000000000000;
char_B[5	]  <= 352'h000000000000000FC00000000040008080000800000007E003F000000003FFFFFFFFC0000000000000000000;
char_B[6	]  <= 352'h000000000000001FC0000000007001C0C0001C00000007C003E000000003FFFFFFFFC0000000000000000000;
char_B[7	]  <= 352'h000000000000001F40000000007FFFE0FFFFFF000000078003C001800003C000000780000000000000000000;
char_B[8	]  <= 352'h000000000000003E20000000007FFFF0FFFFFF000000078003C007C00003C000000780000000000000000000;
char_B[9	]  <= 352'h000000000000007C30000000007801E0F0001E000000078003C00FE00003C000000780000000000000000000;
char_B[10	]  <= 352'h00000000000000F818000000007801C0F0001C001FFFFFFFFFFFFFF00003C000000780000000000000000000;
char_B[11	]  <= 352'h7FFFFC00000001F00E000000007801C0F0001C000FFFFFFFFFFFFFF80003FFFFFFFF80000000000000000000;
char_B[12	]  <= 352'h7FFFFF80000003E007000000007801C0F0001C000600078003C000000003FFFFFFFF80000000000000000000;
char_B[13	]  <= 352'h0FC03FC0000007C003800000007801C0F0001C000000078003C000000003C000000780000000000000000000;
char_B[14	]  <= 352'h0FC00FE000000F8001E00000007801C0F0001C000000078003C000000003C000000780000000000000000000;
char_B[15	]  <= 352'h0FC007E000001F0000F00000007801C0F0001C000000078003C000000003C000000780000000000000000000;
char_B[16	]  <= 352'h0FC003F000003C00027C0000007801C0F0001C0000006700030000000003C000000780000000000000000000;
char_B[17	]  <= 352'h0FC003F000007800073F8000007801C0F0003C0000007400040000000003FFFFFFFF80000000000000000000;
char_B[18	]  <= 352'h0FC001F00000F7FFFF8FF000007801C0F0003C000000F800070000000003FFFFFFFF80000000000000000000;
char_B[19	]  <= 352'h0FC001F00003E3FFFFC3FF00007801C0F0003C000000FC0007C000000003C000000780000000000000000000;
char_B[20	]  <= 352'h0FC001F0000781000001FFF8007FFFC0F07078000001F00007C000000003C000000700000000000000000000;
char_B[21	]  <= 352'h0FC001F0000F000000007FF0007FFFC0F01FF8000001E0000780000000038000000400C00000000000000000;
char_B[22	]  <= 352'h0FC001F0003C000000001FC0007801C0F007F8000003C0000F80000000020000000001E00000000000000000;
char_B[23	]  <= 352'h0FC001F000F0000000000380007801C0F003F000000380400F0000003FFFFFFFFFFFFFF00000000000000000;
char_B[24	]  <= 352'h0FC003F001C03000000C0080007801C0F001C000000700600E0002001FFFFFFFFFFFFFF80000000000000000;
char_B[25	]  <= 352'h0FC003F007003FFFFFFE0000007801C0F0000000000E00F01E0007000C000000000000000000000000000000;
char_B[26	]  <= 352'h0FC007E01C003FFFFFFF0000007801C0F0000000001E00F81FFFFF8000000000000000000000000000000000;
char_B[27	]  <= 352'h0FC00FC000003C00001E0000007801C0F0000000001C01F83FFFFFC000040000000100000000000000000000;
char_B[28	]  <= 352'h0FC01F8000003C00001E0000007801C0F0000600003803E038000F8000020000000180000000000000000000;
char_B[29	]  <= 352'h0FC07F0000003C00001E0000007801C0FFFFFF80007003C078000F000003FFFFFFFFC0000000000000000000;
char_B[30	]  <= 352'h0FFFFC0000003C00001E0000007801C0FFFFFFC001E0078070000F000003FFFFFFFFE0000000000000000000;
char_B[31	]  <= 352'h0FFFFF0000003C00001E0000007801C0F1000F0007FFFF00E0000F0000038003C003C0000000000000000000;
char_B[32	]  <= 352'h0FC01FC000003C00001E0000007801C0F1800F0003FFCE00C0000F0000038003C003C000001E000000000000;
char_B[33	]  <= 352'h0FC007E000003C00001E0000007801C0F1800E0003F81C01C0000F0000038003C003C000007F800000000000;
char_B[34	]  <= 352'h0FC003F000003FFFFFFE0000007FFFC0F0801E0001C0380380000F0000038003C003C000007F800000000000;
char_B[35	]  <= 352'h0FC001F000003FFFFFFE0000007FFFC0F0C01E000000700300000F0000038003C003C00000FF800000000000;
char_B[36	]  <= 352'h0FC001F800003C00001E0000007801C0F0C01C000000E00618000F000003FFFFFFFFC00000FFC00000000000;
char_B[37	]  <= 352'h0FC000F800003C00001E0000007801C0F0603C000000E00C1C000F000003FFFFFFFFC00000FF800000000000;
char_B[38	]  <= 352'h0FC000FC0000300000180000007801C0F06038000001C0080F000F0000038003C003C000007F800000000000;
char_B[39	]  <= 352'h0FC000FC0000000000002000007801C0F07038000003800007800F0000038003C003C000007F000000000000;
char_B[40	]  <= 352'h0FC000FC000C000000007000007801C0F03078000007000007C00F0000038003C003C000001C000000000000;
char_B[41	]  <= 352'h0FC000FC000FFFFFFFFFF800007001C0F0387000000E000003E00E0000038003C003C0000000000000000000;
char_B[42	]  <= 352'h0FC000FC000FFFFFFFFFF800007001C0F018F000003C07F801E00E000003FFFFFFFFC0000000000000000000;
char_B[43	]  <= 352'h0FC000FC000F00700700F000007001C0F01CE00000FFFF0001E00E000003FFFFFFFFC0000000000000000000;
char_B[44	]  <= 352'h0FC000FC000F00700700F000007001C0F00FE00001FFF00001E00E0000038003C003C0000000000000000000;
char_B[45	]  <= 352'h0FC000FC000F00700700F000007001C0F00FC00000FF800000E00E0000038003C00200000000000000000000;
char_B[46	]  <= 352'h0FC000FC000F00700700F00000F001C0F007C000007C000000C00E0000040003C00020000000000000000000;
char_B[47	]  <= 352'h0FC001FC000F00700700F00000E001C0F00780000070000000000E0000000003C0006000003E000000000000;
char_B[48	]  <= 352'h0FC001F8000F00700700F00000E001C0F007C0000000000000001E0000000003C000F000007F000000000000;
char_B[49	]  <= 352'h0FC003F0000F00700700F00000E001C0F00FE0000000000000001E00007FFFFFFFFFF80000FF800000000000;
char_B[50	]  <= 352'h0FC007F0000F00700700F00001C001C0F01CF0000000000000001E00003FFFFFFFFFFC0000FF800000000000;
char_B[51	]  <= 352'h0FC01FE0000F00700700F00001C001C0F0387C000000000E00001E0000100003C000000000FF800000000000;
char_B[52	]  <= 352'hFFFFFF80000F00700700F000018001C0F0703E00000003F000001C0000000003C000000000FF800000000000;
char_B[53	]  <= 352'hFFFFFE00000F00700700F000038001C0F0E01F800000FF8000003C0000000003C0000000007F800000000000;
char_B[54	]  <= 352'h00000000000F00700700F0400303C3C0F1C00FF8007FFC0001C03C0000000003C0000080007F000000000000;
char_B[55	]  <= 352'h00000000000F00700700F0C00700FFC0F30007FC07FFC00000FFFC0000000003C00001C0001C000000000000;
char_B[56	]  <= 352'h00000000000F00700700F1E006003FC0FC0003C003FE0000001FF80000000003C00003E00000000000000000;
char_B[57	]  <= 352'h000000001FFFFFFFFFFFFFF00C000F80F800008003F000000007F8001FFFFFFFFFFFFFE00000000000000000;
char_B[58	]  <= 352'h000000000FFFFFFFFFFFFFF808000F00F0000000018000000003F0000FFFFFFFFFFFFFF00000000000000000;
char_B[59	]  <= 352'h00000000040000000000000010000600E0000000010000000001E00006000000000000000000000000000000;
char_B[60	]  <= 352'h0000000000000000000000000000000080000000000000000001800000000000000000000000000000000000;
char_B[61	]  <= 352'h0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
char_B[62	]  <= 352'h0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
char_B[63	]  <= 352'h0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
char_C[0	]  <= 352'h0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
char_C[1	]  <= 352'h0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
char_C[2	]  <= 352'h0000000000000002000000000000000000000000000000000000000000000000000000000000000000000000;
char_C[3	]  <= 352'h0000000000000003800000000000000000000000000004000200000000000000000200000000000000000000;
char_C[4	]  <= 352'h0000000000000007C000000000000000000000000000078003C0000000030000000380000000000000000000;
char_C[5	]  <= 352'h000000000000000FC00000000040008080000800000007E003F000000003FFFFFFFFC0000000000000000000;
char_C[6	]  <= 352'h000000000000001FC0000000007001C0C0001C00000007C003E000000003FFFFFFFFC0000000000000000000;
char_C[7	]  <= 352'h000000000000001F40000000007FFFE0FFFFFF000000078003C001800003C000000780000000000000000000;
char_C[8	]  <= 352'h000000000000003E20000000007FFFF0FFFFFF000000078003C007C00003C000000780000000000000000000;
char_C[9	]  <= 352'h000000000000007C30000000007801E0F0001E000000078003C00FE00003C000000780000000000000000000;
char_C[10	]  <= 352'h0007FE30000000F818000000007801C0F0001C001FFFFFFFFFFFFFF00003C000000780000000000000000000;
char_C[11	]  <= 352'h001FFFF8000001F00E000000007801C0F0001C000FFFFFFFFFFFFFF80003FFFFFFFF80000000000000000000;
char_C[12	]  <= 352'h007E07F8000003E007000000007801C0F0001C000600078003C000000003FFFFFFFF80000000000000000000;
char_C[13	]  <= 352'h00F801F8000007C003800000007801C0F0001C000000078003C000000003C000000780000000000000000000;
char_C[14	]  <= 352'h01F000F800000F8001E00000007801C0F0001C000000078003C000000003C000000780000000000000000000;
char_C[15	]  <= 352'h03E0007800001F0000F00000007801C0F0001C000000078003C000000003C000000780000000000000000000;
char_C[16	]  <= 352'h07E0007C00003C00027C0000007801C0F0001C0000006700030000000003C000000780000000000000000000;
char_C[17	]  <= 352'h07C0003C00007800073F8000007801C0F0003C0000007400040000000003FFFFFFFF80000000000000000000;
char_C[18	]  <= 352'h0FC0003C0000F7FFFF8FF000007801C0F0003C000000F800070000000003FFFFFFFF80000000000000000000;
char_C[19	]  <= 352'h0F80001C0003E3FFFFC3FF00007801C0F0003C000000FC0007C000000003C000000780000000000000000000;
char_C[20	]  <= 352'h1F80001C000781000001FFF8007FFFC0F07078000001F00007C000000003C000000700000000000000000000;
char_C[21	]  <= 352'h1F800008000F000000007FF0007FFFC0F01FF8000001E0000780000000038000000400C00000000000000000;
char_C[22	]  <= 352'h1F800000003C000000001FC0007801C0F007F8000003C0000F80000000020000000001E00000000000000000;
char_C[23	]  <= 352'h3F00000000F0000000000380007801C0F003F000000380400F0000003FFFFFFFFFFFFFF00000000000000000;
char_C[24	]  <= 352'h3F00000001C03000000C0080007801C0F001C000000700600E0002001FFFFFFFFFFFFFF80000000000000000;
char_C[25	]  <= 352'h3F00000007003FFFFFFE0000007801C0F0000000000E00F01E0007000C000000000000000000000000000000;
char_C[26	]  <= 352'h3F0000001C003FFFFFFF0000007801C0F0000000001E00F81FFFFF8000000000000000000000000000000000;
char_C[27	]  <= 352'h3F00000000003C00001E0000007801C0F0000000001C01F83FFFFFC000040000000100000000000000000000;
char_C[28	]  <= 352'h7F00000000003C00001E0000007801C0F0000600003803E038000F8000020000000180000000000000000000;
char_C[29	]  <= 352'h7F00000000003C00001E0000007801C0FFFFFF80007003C078000F000003FFFFFFFFC0000000000000000000;
char_C[30	]  <= 352'h7F00000000003C00001E0000007801C0FFFFFFC001E0078070000F000003FFFFFFFFE0000000000000000000;
char_C[31	]  <= 352'h7F00000000003C00001E0000007801C0F1000F0007FFFF00E0000F0000038003C003C0000000000000000000;
char_C[32	]  <= 352'h7F00000000003C00001E0000007801C0F1800F0003FFCE00C0000F0000038003C003C000001E000000000000;
char_C[33	]  <= 352'h7F00000000003C00001E0000007801C0F1800E0003F81C01C0000F0000038003C003C000007F800000000000;
char_C[34	]  <= 352'h7F00000000003FFFFFFE0000007FFFC0F0801E0001C0380380000F0000038003C003C000007F800000000000;
char_C[35	]  <= 352'h7F00000000003FFFFFFE0000007FFFC0F0C01E000000700300000F0000038003C003C00000FF800000000000;
char_C[36	]  <= 352'h7F00000000003C00001E0000007801C0F0C01C000000E00618000F000003FFFFFFFFC00000FFC00000000000;
char_C[37	]  <= 352'h3F00000000003C00001E0000007801C0F0603C000000E00C1C000F000003FFFFFFFFC00000FF800000000000;
char_C[38	]  <= 352'h3F0000000000300000180000007801C0F06038000001C0080F000F0000038003C003C000007F800000000000;
char_C[39	]  <= 352'h3F0000000000000000002000007801C0F07038000003800007800F0000038003C003C000007F000000000000;
char_C[40	]  <= 352'h3F000000000C000000007000007801C0F03078000007000007C00F0000038003C003C000001C000000000000;
char_C[41	]  <= 352'h3F00001C000FFFFFFFFFF800007001C0F0387000000E000003E00E0000038003C003C0000000000000000000;
char_C[42	]  <= 352'h3F80001C000FFFFFFFFFF800007001C0F018F000003C07F801E00E000003FFFFFFFFC0000000000000000000;
char_C[43	]  <= 352'h1F80001C000F00700700F000007001C0F01CE00000FFFF0001E00E000003FFFFFFFFC0000000000000000000;
char_C[44	]  <= 352'h1F80003C000F00700700F000007001C0F00FE00001FFF00001E00E0000038003C003C0000000000000000000;
char_C[45	]  <= 352'h1FC00038000F00700700F000007001C0F00FC00000FF800000E00E0000038003C00200000000000000000000;
char_C[46	]  <= 352'h0FC00078000F00700700F00000F001C0F007C000007C000000C00E0000040003C00020000000000000000000;
char_C[47	]  <= 352'h07E00070000F00700700F00000E001C0F00780000070000000000E0000000003C0006000003E000000000000;
char_C[48	]  <= 352'h07E000F0000F00700700F00000E001C0F007C0000000000000001E0000000003C000F000007F000000000000;
char_C[49	]  <= 352'h03F001E0000F00700700F00000E001C0F00FE0000000000000001E00007FFFFFFFFFF80000FF800000000000;
char_C[50	]  <= 352'h01FC07C0000F00700700F00001C001C0F01CF0000000000000001E00003FFFFFFFFFFC0000FF800000000000;
char_C[51	]  <= 352'h00FFFF80000F00700700F00001C001C0F0387C000000000E00001E0000100003C000000000FF800000000000;
char_C[52	]  <= 352'h007FFF00000F00700700F000018001C0F0703E00000003F000001C0000000003C000000000FF800000000000;
char_C[53	]  <= 352'h000FFC00000F00700700F000038001C0F0E01F800000FF8000003C0000000003C0000000007F800000000000;
char_C[54	]  <= 352'h00000000000F00700700F0400303C3C0F1C00FF8007FFC0001C03C0000000003C0000080007F000000000000;
char_C[55	]  <= 352'h00000000000F00700700F0C00700FFC0F30007FC07FFC00000FFFC0000000003C00001C0001C000000000000;
char_C[56	]  <= 352'h00000000000F00700700F1E006003FC0FC0003C003FE0000001FF80000000003C00003E00000000000000000;
char_C[57	]  <= 352'h000000001FFFFFFFFFFFFFF00C000F80F800008003F000000007F8001FFFFFFFFFFFFFE00000000000000000;
char_C[58	]  <= 352'h000000000FFFFFFFFFFFFFF808000F00F0000000018000000003F0000FFFFFFFFFFFFFF00000000000000000;
char_C[59	]  <= 352'h00000000040000000000000010000600E0000000010000000001E00006000000000000000000000000000000;
char_C[60	]  <= 352'h0000000000000000000000000000000080000000000000000001800000000000000000000000000000000000;
char_C[61	]  <= 352'h0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
char_C[62	]  <= 352'h0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
char_C[63	]  <= 352'h0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
char_time_set[0	]  <= 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
char_time_set[1	]  <= 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
char_time_set[2	]  <= 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
char_time_set[3	]  <= 320'h000000000000000000000400020000000000000000040000000C0000000000000000000000000000;
char_time_set[4	]  <= 320'h00000000000000000000078003C00000000000000007000000060000000000000000000000000000;
char_time_set[5	]  <= 320'h006000C1C0000C00000007E003F00000000000000007800000070000000000000000000000000000;
char_time_set[6	]  <= 320'h007801E1E0001E00000007C003E00000000000000007E0000003C000000000000000000000000000;
char_time_set[7	]  <= 320'h007FFFF1FFFFFF800000078003C0018000000000000780000001E000000002000000000000000000;
char_time_set[8	]  <= 320'h007FFFF9FFFFFF800000078003C007C000000000000780000001F000000007000000000000000000;
char_time_set[9	]  <= 320'h007C03F1F0003F000000078003C00FE000000000000780000000F0FFFFFFFF800000000000000000;
char_time_set[10	]  <= 320'h007C03E1F0003E001FFFFFFFFFFFFFF004000400000780000000F07FFFFFFFC00000000000000000;
char_time_set[11	]  <= 320'h007C03E1F0003E000FFFFFFFFFFFFFF803000E00000780000100F02000000F000000000000000000;
char_time_set[12	]  <= 320'h007C03E1F0003E000600078003C0000003FFFF000007800000C0700000000F000000000000000000;
char_time_set[13	]  <= 320'h007C03E1F0003E000000078003C0000003FFFF800007800000F0700000000F000000000000000000;
char_time_set[14	]  <= 320'h007C03E1F0003E000000078003C0000003801F000007800000F8200000000F000000000000000000;
char_time_set[15	]  <= 320'h007C03E1F0003E000000078003C0000003801E000007800000F0000000000F000000000000000000;
char_time_set[16	]  <= 320'h007C03E1F0003E00000067000300000003801E000007810000E0000000000F000000000000000000;
char_time_set[17	]  <= 320'h007C03E1F0003E00000074000400000003801E000007838000E0000000000F000000000000000000;
char_time_set[18	]  <= 320'h007C03E1F0007E000000F8000700000003801E00000787C000E0040001000F000000000000000000;
char_time_set[19	]  <= 320'h007C03E1F0007C000000FC0007C0000003801EFFFFFFFFE000E0030003800F000000000000000000;
char_time_set[20	]  <= 320'h007FFFE1F0FEFC000001F00007C0000003801E7FFFFFFFF000E003FFFFC00F000000000000000000;
char_time_set[21	]  <= 320'h007FFFE1F07FFC000001E0000780000003801E200007800000E003FFFFE00F000000000000000000;
char_time_set[22	]  <= 320'h007C03E1F00FF8000003C0000F80000003801E000007800000E0038003C00F000000000000000000;
char_time_set[23	]  <= 320'h007C03E1F007F000000380400F00000003801E000007800000E0038003800F000000000000000000;
char_time_set[24	]  <= 320'h007C03E1F003E000000700600E00020003801E000007800000E0038003800F000000000000000000;
char_time_set[25	]  <= 320'h007C03E1F0038000000E00F01E00070003801E000007800000E0038003800F000000000000000000;
char_time_set[26	]  <= 320'h007C03E1F0000000001E00F81FFFFF8003801E000007800000E0038003800F000000000000000000;
char_time_set[27	]  <= 320'h007C03E1F0000600001C01F83FFFFFC003801E080007800000E0038003800F000000000000000000;
char_time_set[28	]  <= 320'h007C03E1F0000F00003803E038000F8003FFFE0E0007800000E0038003800F000000000000000000;
char_time_set[29	]  <= 320'h007C03E1FFFFFF80007003C078000F0003FFFE070007800000E0038003800F000000000000000000;
char_time_set[30	]  <= 320'h007C03E1FFFFFFC001E0078070000F0003801E038007800000E0038003800F000000000000000000;
char_time_set[31	]  <= 320'h007C03E1F3801F8007FFFF00E0000F0003801E03C007800000E0038003800F000000000000000000;
char_time_set[32	]  <= 320'h007C03E1F3801F0003FFCE00C0000F0003801E01F007800000E003FFFF800F00001E000000000000;
char_time_set[33	]  <= 320'h007C03E1F1C01F0003F81C01C0000F0003801E00F007800000E003FFFF800F00007F800000000000;
char_time_set[34	]  <= 320'h007FFFE1F1C01F0001C0380380000F0003801E00F807800000E0038003800F00007F800000000000;
char_time_set[35	]  <= 320'h007FFFE1F1E03E000000700300000F0003801E00F807800000E0038003800F0000FF800000000000;
char_time_set[36	]  <= 320'h007803E1F0E03E000000E00618000F0003801E007807800000E0038003800F0000FFC00000000000;
char_time_set[37	]  <= 320'h007803E1F0E03E000000E00C1C000F0003801E007807800000E0038003800F0000FF800000000000;
char_time_set[38	]  <= 320'h007803E1F0F07C000001C0080F000F0003801E007807800000E0038003800F00007F800000000000;
char_time_set[39	]  <= 320'h007803E1F0707C000003800007800F0003801E003007800000E0038003800F00007F000000000000;
char_time_set[40	]  <= 320'h007803E1F07878000007000007C00F0003801E002007800000E0038003800F00001C000000000000;
char_time_set[41	]  <= 320'h00F803E1F078F800000E000003E00E0003801E000007800000E0038003800F000000000000000000;
char_time_set[42	]  <= 320'h00F803E1F03CF000003C07F801E00E0003801E000007800000E0038003800F000000000000000000;
char_time_set[43	]  <= 320'h00F803E1F03FF00000FFFF0001E00E0003801E000007800000E0038003800F000000000000000000;
char_time_set[44	]  <= 320'h00F803E1F01FE00001FFF00001E00E0003801E000007800000E003FFFF800F000000000000000000;
char_time_set[45	]  <= 320'h00F803E1F00FE00000FF800000E00E0003801E000007800000E003FFFF800F000000000000000000;
char_time_set[46	]  <= 320'h00F003E1F00FC000007C000000C00E0003FFFE000007800000E0038003800F000000000000000000;
char_time_set[47	]  <= 320'h00F003E1F007C0000070000000000E0003FFFE000007800000E0038003800F00003E000000000000;
char_time_set[48	]  <= 320'h01F003E1F00FE0000000000000001E0003801E000007800000E0038003800F00007F000000000000;
char_time_set[49	]  <= 320'h01E003E1F01FF0000000000000001E0003801E000007800000E0030002000F0000FF800000000000;
char_time_set[50	]  <= 320'h01E003E1F03FF8000000000000001E0003801E000007800000E0040000000F0000FF800000000000;
char_time_set[51	]  <= 320'h03E003E1F07CFE000000000E00001E0003801C000007800000E0000000000F0000FF800000000000;
char_time_set[52	]  <= 320'h03C003E1F0F87F00000003F000001C00038010000007800000E0000000000F0000FF800000000000;
char_time_set[53	]  <= 320'h03C003E1F1F03FE00000FF8000003C00038000000007800000E0000000000F00007F800000000000;
char_time_set[54	]  <= 320'h0787F7E1F3E01FFC007FFC0001C03C0002000000100F000000E0000000300F00007F000000000000;
char_time_set[55	]  <= 320'h0701FFE1F7800FFC07FFC00000FFFC00000000001FFF000000E00000001FFF00001C000000000000;
char_time_set[56	]  <= 320'h0F007FE1FF0007E003FE0000001FF8000000000003FF000000E000000003FE000000000000000000;
char_time_set[57	]  <= 320'h0E001FC1FC0001C003F000000007F8000000000000FF000000E000000001FE000000000000000000;
char_time_set[58	]  <= 320'h1C000F81F0000000018000000003F00000000000003E000000E000000000FC000000000000000000;
char_time_set[59	]  <= 320'h38000F01F0000000010000000001E00000000000001C000000E00000000078000000000000000000;
char_time_set[60	]  <= 320'h30000001C00000000000000000018000000000000010000001000000000020000000000000000000;
char_time_set[61	]  <= 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
char_time_set[62	]  <= 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
char_time_set[63	]  <= 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;

end
    
endmodule


module vga_control(
    input            clk_25    ,//时钟  25MHZ
    input            rst_n     ,//复位
 
    input   [11:0]   pix_data  ,//输入图像数据
 
    output  [9:0]    pix_x     ,//横坐标
    output  [9:0]    pix_y     ,//纵坐标
    output           hsync     ,//行同步信号
    output           vsync     ,//场同步信号
    output  [11:0]   vga_rgb    //输出图像数据（RGB444格式）
);
//参数定义
//显示模式：640*480@60
parameter   H_SYNC   = 96 ,//行同步
            H_BACK   = 48 ,//行显示后沿
            H_DISP   = 640,//行有效数据
            H_FRONT  = 16 ,//行显示前沿
            H_TOTAL  = 800;//行扫描周期
 
parameter   V_SYNC   = 2  ,//场同步
            V_BACK   = 33 ,//场显示后沿
            V_DISP   = 480,//场有效数据
            V_FRONT  = 10 ,//场显示前沿
            V_TOTAL  = 525;//场扫描周期
 
//信号定义
reg    [9:0]    cnt_h     ;//行计数器
reg    [9:0]    cnt_v     ;//场计数器
 
wire             rgb_vaild ;//数据有效信号
wire             data_req  ;//数据请求信号
 
//cnt_h
always @(posedge clk_25 or negedge rst_n)begin
    if(!rst_n)begin
        cnt_h <= 10'd0;
    end
    else begin
        if(cnt_h < H_TOTAL - 1)begin
            cnt_h <= cnt_h + 1'b1;
        end
        else begin
            cnt_h <= 10'd0;
        end
    end
end
//cnt_v
always @(posedge clk_25 or negedge rst_n)begin
    if(!rst_n)begin
        cnt_v <= 10'd0;
    end
    else if(cnt_h == H_TOTAL - 1)begin
        if(cnt_v < V_TOTAL - 1)begin
            cnt_v <= cnt_v + 1'b1;
        end
        else begin
            cnt_v <= 10'd0;
        end
    end
end
 
//rgb_vaild  数据输出有效信号
assign rgb_vaild = ((cnt_h >= H_BACK + H_SYNC)
                    &&(cnt_h < H_SYNC + H_BACK + H_DISP)
                    &&(cnt_v >= V_SYNC + V_BACK)
                    &&(cnt_v < V_SYNC + V_BACK + V_DISP))
                    ? 1'b1 : 1'b0;
 
//data_req 像素点颜色数据输入请求信号
assign data_req = (((cnt_h >= H_SYNC + H_BACK - 1)
                    && (cnt_h < H_SYNC + H_BACK + H_DISP - 1))
                    && ((cnt_v >= V_SYNC + V_BACK)
                    && (cnt_v < V_SYNC + V_BACK + V_DISP)))
                    ? 1'b1 : 1'b0;
 
//输出
//pix_x  横坐标
assign pix_x = (data_req==1'b1)?(cnt_h - (H_SYNC+H_BACK-1)):10'h3ff;
 
//pix_y  纵坐标
assign pix_y = (data_req==1'b1)?(cnt_v - (V_SYNC+V_BACK-1)):10'h3ff;
 
//hsync  
assign hsync = (cnt_h <= H_SYNC - 1) ? 1'b0 : 1'b1;
 
//vsync  
assign vsync = (cnt_v <= V_SYNC - 1) ? 1'b0 : 1'b1;
 
//vga_rgb
assign vga_rgb = (rgb_vaild == 1'b1) ? pix_data : 16'd0;
 
 
endmodule

module   CLK_PLL (
       input inclk0,
       output reg c0,
       input rst_n
   );
   reg cnt=0;
   always @(posedge inclk0 or negedge rst_n) begin 
   if(rst_n==1'b0) begin
        cnt=0;
        c0=0;end
    else if(cnt==1) 
    begin
        c0=~c0;
        cnt=1'b0;end
    else    cnt=cnt+1;
    end
    endmodule
