`timescale 1ns / 1ps
`default_nettype none


module main (input wire [4:0] switch,
output wire [7:0] seven_7, output wire [3:0] output_led);
wire [3:0] bcd = switch[3:0];
wire en = switch[4];
assign output_led = switch[3:0];
driver7seg s0(.bcd(bcd),.seven_7(seven_7));

endmodule
