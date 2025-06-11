`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2025 14:27:42
// Design Name: 
// Module Name: fullCountMod
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


module fullCountMod(input clk, reset,
output [22:0] count,
output wire full_length);

//Initialising wires
wire [22:0] q;
wire fsmOut, msb;
assign msb = q[22];

//Instantiating relevant modules
LFSR mod1(clk, reset, q, full_length);
FSM mod2(clk, reset, msb, fsmOut);
MSBcounter mod3(fsmOut, clk, reset, count);
endmodule
