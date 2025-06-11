`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2025 11:54:59
// Design Name: 
// Module Name: topMod
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


module topMod(input CCLK, reset,
output [15:0] lfsr_out,
wire [3:0] anode_sel,
wire [7:0] led_out);

parameter N = 32'd1000000;
wire clk;
wire [22:0] q;
wire fsmOut, msb;
wire [3:0] hex3, hex2, hex1, hex0;
wire [22:0] count;
assign lfsr_out = q[15:0];
assign hex0 = count[3:0];
assign hex1 = count[7:4];
assign hex2 = count[11:8];
assign hex3 = count[15:12];
assign msb = q[22];

clock divider (CCLK, N, clk);
LFSR mod1(clk, reset, q,);
FSM mod2(clk, reset, msb, fsmOut);
MSBcounter mod3(fsmOut, clk, reset, count);
disp_hex_mux mod4(CCLK, reset, hex3, hex2, hex1, hex0,4'b1111, anode_sel, led_out);

endmodule
