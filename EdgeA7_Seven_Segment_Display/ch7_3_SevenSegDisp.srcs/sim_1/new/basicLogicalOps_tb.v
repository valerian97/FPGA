`timescale 1ns / 1ps


//module twosComplement_tb();
//reg [2:0] in_t;
//wire [2:0] out_t;
//integer count;
//twosComplement UUT(.in(in_t),.out(out_t));
//initial begin
//count = 0;
//repeat(7)
//begin
//#50 in_t = count;
//#50 count = count + 1;
//end
//end
//endmodule

module sevenSegDec_tb();
reg [3:0] in_t;
wire [7:0]Seven_Seg_t;
wire enable7Seg_t;
integer count;
sevenSegDec UUT(.inp(in_t),.Seven_Seg(Seven_Seg_t),.enable7Seg(enable7Seg_t));
initial begin
count = 0;
repeat(10)
begin
#25 in_t = count;
#25 count = count + 1;
end
end
endmodule