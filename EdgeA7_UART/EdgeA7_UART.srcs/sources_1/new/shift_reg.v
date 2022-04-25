`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 20.04.2022 19:05:28
// Module Name: shift_reg
// Description: n bit parallel in, serial out shift register
// If no data, drive high. 
// Revision: 0.01
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module shift_reg(mode,parallel_in,ser_in, clk_inhb,clk_in,out);
    parameter DATA_WIDTH = 10; //Input data width, default to 10 (Start bit, data (8 bit), stop bit
    input wire mode, ser_in, clk_inhb; //Load or shift
    input wire [DATA_WIDTH -1:0] parallel_in;
    input wire clk_in;
    wire clk, q0_in;
    wire [DATA_WIDTH -1:0] set_in, reset_in, q;
    
    output wire out;
  
    or o0 (clk,clk_in, clk_inhb);  
    
    genvar i;
    //Mode -> 1 (load), 0 (serial)
    //If mode is load, then out is ser_in else q[DATA_WIDTH-1]
    mux_2_1 m_out(.sel(mode),.in({ser_in, q[DATA_WIDTH-1]}),.out(out));
   
    generate 
    for(i = 0; i <DATA_WIDTH; i = i+1) begin
        if(i==0)
        begin
            //if load, q0_in is P_in0 else ser_in
            mux_2_1 m0(.sel(mode), .in({q0_in, ser_in}), .out(q0_in));
            
            //if p_in[i]&mode is 1, then set_in[i] is 1 else set_in[i] is 0
            mux_2_1 m1(.sel(parallel_in[i]&mode),.in({1'b1,1'b0}), .out(set_in[i]));
            //if (~p_in[i]) & mode is 1, then reset_in[i] is 1 else reset_in[i] is 0
            mux_2_1 m2(.sel((~parallel_in[i])&mode),.in({1'b1,1'b0}), .out(reset_in[i]));
            
            d_flipflop d0(.clk(clk), .d(q0_in), .rst(reset_in[i]),.s(set_in[i]), .q(q[i]));
        end
        else
        begin         
            //if p_in[i]&mode is 1, then set_in[i] is 1 else set_in[i] is 0
            mux_2_1 m1(.sel(parallel_in[i]&mode),.in({1'b1,1'b0}), .out(set_in[i]));
            //if (~p_in[i]) & mode is 1, then reset_in[i] is 1 else reset_in[i] is 0
            mux_2_1 m2(.sel((~parallel_in[i])&mode),.in({1'b1,1'b0}), .out(reset_in[i]));
            d_flipflop d1(.clk(clk), .d(q[i-1]), .rst(reset_in[i]),.s(set_in[i]), .q(q[i]));
        end
    end
    endgenerate
endmodule

