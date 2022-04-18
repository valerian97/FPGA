`timescale 1ns / 1ps
`default_nettype none


module driver7seg_tb( );
reg en; 
reg [3:0] bcd;
wire [7:0] Seven_Seg;
driver7seg s0(.bcd(bcd),.seven_7(Seven_Seg));
initial 
begin
en = 1;
bcd = 0;
repeat(16)
#20 bcd = bcd +1;
end
endmodule