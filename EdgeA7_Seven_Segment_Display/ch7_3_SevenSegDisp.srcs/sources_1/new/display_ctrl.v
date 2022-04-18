`timescale 1ns / 1ps
`default_nettype none

module display_ctrl(
input wire clk_5Mhz,clk_locked,
output reg [3:0] display_select);

//assign display_select = 4'b0001;
//Variable will count untill 25000, so that frequency is 200 Hz
reg [14:0] counter;

always@(posedge clk_5Mhz)
begin
if(clk_locked == 1'b0)
    begin
    counter <= 0; 
    display_select <= 4'b0001;
    end
//110000110101000 = 25,000
else if(counter >= 15'b110000110101000)
    begin
    display_select <= (display_select== 4'b1000)?4'b0001:(display_select<<1);
    counter <= 0;
    end
else
    begin
    counter <= counter + 1;
    end
end
endmodule
