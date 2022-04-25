`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.04.2022 01:37:34
// Design Name: 
// Module Name: shift_reg_tb
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


module shift_reg_tb;
reg mode,ser_in,clk_inhb,clk_in;
reg [9:0] parallel_in;
wire out;

shift_reg UUT(.mode(mode),.parallel_in(parallel_in),.ser_in(ser_in), .clk_inhb(clk_inhb),.clk_in(clk_in),.out(out));

initial
begin
clk_in = 1'b0;
ser_in = 1'b1; //Set ser_in as 1, as default state of line will be 1 for UART
forever #5 clk_in = ~clk_in;
end 

initial 
begin
mode = 1'b1;
clk_inhb = 1'b1;
parallel_in = 10'b1_111_111_111;

#11 mode = 1'b0;
//0 start bit, 0 stop bit
parallel_in = 10'b0_101_110_110;
clk_inhb = 1'b0;
//Change mode to 1 and inhibit clock
#110 mode = 1'b1;
clk_inhb = 1'b1;
#21 mode = 1'b0;
clk_inhb = 1'b0;
end

initial
#300 $stop; 

endmodule
