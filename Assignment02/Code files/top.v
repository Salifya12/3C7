`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2025 19:08:24
// Design Name: 
// Module Name: top
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


module top(input CCLK, reset,
output max_tick, 
output [14:0] lfsr_reg);

parameter N = 32'd50000000;
wire clk;

clock mod1 (CCLK, N, clk);
LFSR mod2 (clk, reset, lfsr_reg, max_tick);

endmodule
