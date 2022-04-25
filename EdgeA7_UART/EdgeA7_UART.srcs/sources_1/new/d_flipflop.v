`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.04.2022 20:55:58
// Design Name: 
// Module Name: d_flipflop
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


module d_flipflop(
input wire clk, d, rst,s,
output reg q = 1'b0);
//FPGA have single output F
//Note, this design is using 3 FF elements. Sync reset is using 1 FF.
always@(posedge clk,posedge s,posedge rst)
begin
if(rst == 1'b1)
	q <= 1'b0;
else if(s == 1'b1)
    q <= 1'b1;
else
	q <= d;
end
endmodule
