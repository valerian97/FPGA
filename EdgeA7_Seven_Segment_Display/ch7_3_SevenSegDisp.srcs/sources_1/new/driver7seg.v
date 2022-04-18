`timescale 1ns / 1ps
`default_nettype none

module driver7seg(
input wire [3:0] bcd,
output reg [7:0] seven_7);

always @(bcd)
begin
casex (bcd)
	4'b0000: seven_7 = 8'b11000000;
	4'b0001: seven_7 = 8'b11111001;
	4'b0010: seven_7 = 8'b10100100;
	4'b0011: seven_7 = 8'b10110000;
	4'b0100: seven_7 = 8'b10011001;
	4'b0101: seven_7 = 8'b10010010;
	4'b0110: seven_7 = 8'b10000010;
	4'b0111: seven_7 = 8'b11111000;
	4'b1000: seven_7 = 8'b10000000;
	4'b1001: seven_7 = 8'b10010000;
	default: seven_7 = 8'b10000110;
endcase
end
endmodule
