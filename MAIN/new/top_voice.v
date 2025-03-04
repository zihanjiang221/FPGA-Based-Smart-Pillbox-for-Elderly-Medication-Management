`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/17 00:28:03
// Design Name: 
// Module Name: top_voice
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



module top_voice (
    input wire clk,           // 时钟信号
    input wire rst,           // 复位信号
    input wire send_start,    // 输入信号，启动信号
    output reg beep           // 输出信号，蜂鸣器控制信号
);

    // 状态机状态定义
    parameter IDLE      = 3'b000,
              BEEP_ON   = 3'b001,
              BEEP_OFF  = 3'b010,
              WAIT_5S   = 3'b011;

    reg [2:0] state, next_state;
    
    // 计数器定义
    reg [31:0] counter;
    reg [1:0] repeat_count;
    
    // 时钟周期计数
    localparam integer CLOCK_FREQ = 100_000_000;     // 时钟频率 (100MHz)
//    localparam integer CLOCK_FREQ = 10;
    localparam integer BEEP_DURATION = 1 * CLOCK_FREQ;  // 200ms对应的时钟周期数
    localparam integer WAIT_DURATION = 5 * CLOCK_FREQ;    // 5s对应的时钟周期数

    // 检测send_start上升沿
    reg send_start_d;
    wire send_start_rising = send_start && ~send_start_d;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            send_start_d <= 1'b0;
        end else begin
            send_start_d <= send_start;
        end
    end

    // 状态机
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state <= IDLE;
            counter <= 32'b0;
            repeat_count <= 2'b0;
            beep <= 1'b0;
        end else begin
            state <= next_state;
                    if ((state == BEEP_ON && next_state != BEEP_ON)||(state == WAIT_5S && next_state != WAIT_5S)) begin
                        counter = 32'b0;
                    end else if(state ==BEEP_ON || state == WAIT_5S) begin
                        counter = counter+1;
                    end else begin
                        counter = 32'b0;
                    end
            
            if (state == IDLE && send_start_rising) begin
                repeat_count <= 2'b0;
            end else if (next_state == BEEP_ON && state == WAIT_5S) begin
                repeat_count <= repeat_count + 1;
            end
            
            if (state == BEEP_ON) begin
                beep <= 1'b1;
            end else begin
                beep <= 1'b0;
            end
        end
    end

    always @(*) begin
        next_state = state;
        case (state)
            IDLE: begin
                if (send_start_rising || (repeat_count < 2 && send_start_d)) begin
                    next_state = BEEP_ON;
                end else if(repeat_count == 2) begin
                    next_state = IDLE;
                end
            end
            BEEP_ON: begin
                if (counter >= BEEP_DURATION) begin
                    next_state = BEEP_OFF;
                end
            end
            BEEP_OFF: begin
                next_state = WAIT_5S;
            end
            WAIT_5S: begin
                if (counter >= WAIT_DURATION) begin
                    if (repeat_count == 2) begin
                        next_state = IDLE;
                        
                    end else begin
                        next_state = BEEP_ON;
                    end
                end
            end
        endcase
    end

endmodule
