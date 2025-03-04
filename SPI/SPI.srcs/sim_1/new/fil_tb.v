`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/09 15:31:45
// Design Name: 
// Module Name: fil_tb
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


module fil_tb(

    );
    
    reg clk,rst,data_en;
    reg [7:0]data_in;
    wire [7:0]mean_out;
    wire mean_vld;
   mean_filter #(.FILTER_CNT(4),.BIT_CNT(2)) mean(.mean_vld(mean_vld),.clk(clk),.rst(rst),.data_en(data_en),.data_in(data_in),.mean_out(mean_out)); 

always #10 clk=~clk;
initial begin
    rst=1;clk=0;
    #10    
    rst=0;  data_en=1;
    data_in=8'b0;
    #20
    data_in=8'b1;
        #20
        data_in=8'b111;
            #20
            data_in=8'b10110;
                #20
                data_in=8'b101;
                    #20
                    data_in=8'b10;
                        #20
                        data_in=8'b101111;
                            #20
                            data_in=8'b101;
                                                        #20
                            data_in=8'b1111;
                                                        #20
                            data_in=8'b1;
                                                        #20
                            data_in=8'b101111;
                                                        #20
                            data_in=8'b1;
                            
                            
     end                           
endmodule


