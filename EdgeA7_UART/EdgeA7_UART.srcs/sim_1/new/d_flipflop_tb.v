`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2022 19:36:49
// Design Name: 
// Module Name: d_flipflop_tb
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


module d_flipflop_tb;
reg clk, d, rst,s; 
wire q;
d_flipflop UUT(clk, d, rst,s, q);

initial
begin
clk = 1'b0;
forever #5 clk = ~clk;
end

initial
begin
d = 1'b0;
forever #7 d = ~d;
end

initial 
begin
s = 1'b0;
rst = 1'b0;
#1 rst = 1'b1;
#5 rst = 1'b0;
#71 s = 1'b1;
#10 s = 1'b0;
end

initial 
#120 $stop;
endmodule
