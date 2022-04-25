`timescale 1ns / 1ps


module mux_2_1(
    input wire [1:0] in,input wire sel,
    output wire out);
    assign out = in[sel];
endmodule
