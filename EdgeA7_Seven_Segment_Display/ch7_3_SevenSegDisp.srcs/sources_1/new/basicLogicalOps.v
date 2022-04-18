`timescale 1ns / 1ps

module comparator(A,B,greaterEq);
input [2:0]A;
input [2:0]B;
output greaterEq;
assign greaterEq = A>=B;
endmodule

module mux1Bit(in1,in2,sel,out);
input [2:0]in1;
input [2:0]in2;
input sel;
output [2:0]out;
assign out = sel?in2:in1;
endmodule

module sevenSegDec(Seven_Seg, enable7Seg, inp);
input [3:0]inp;
output [7:0]Seven_Seg;
output enable7Seg;
assign enable7Seg = 1'b0;
assign Seven_Seg[0] = (~inp[3])&(~inp[2])&(~inp[1])&(~inp[0]) | (~inp[3])&(inp[2])&(~inp[1])&(~inp[0]);
assign Seven_Seg[1] = ~inp[3]&inp[2]&~inp[1]&inp[0] | ~inp[3]&inp[2]&inp[1]&~inp[0];
assign Seven_Seg[2] = ~inp[3]&inp[2]&~inp[1]&inp[0];
assign Seven_Seg[3] = ~inp[3]&~inp[2]&~inp[1]&inp[0] | ~inp[3]&inp[2]&~inp[1]&~inp[0] | ~inp[3]&inp[2]&inp[1]&inp[0];
assign Seven_Seg[4] = ~inp[3]&~inp[2]&~inp[1]&inp[0] | ~inp[3]&~inp[2]&inp[1]&inp[0] | ~inp[3]&inp[2]&~inp[1]&~inp[0] 
| ~inp[3]&inp[2]&~inp[1]&inp[0] | ~inp[3]&inp[2]&inp[1]&inp[0] | inp[3]&~inp[2]&~inp[1]&inp[0];
assign Seven_Seg[5] = ~inp[3]&~inp[2]&~inp[1]&inp[0] | ~inp[3]&~inp[2]&inp[1]&~inp[0] | ~inp[3]&~inp[2]&inp[1]&inp[0] 
| ~inp[3]&inp[2]&inp[1]&inp[0];
assign Seven_Seg[6] = ~inp[3]&~inp[2]&~inp[1]&~inp[0] | ~inp[3]&~inp[2]&~inp[1]&inp[0] | ~inp[3]&inp[2]&inp[1]&inp[0];
assign Seven_Seg[7] = 1'b1;


endmodule


