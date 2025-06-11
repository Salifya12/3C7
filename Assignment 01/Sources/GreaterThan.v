`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.02.2025 13:13:14
// Design Name: 
// Module Name: GreaterThan
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


module GreaterThan(
input wire [1:0] a,
b,
output  wire isGreater);
wire out1, out2, out3;
assign out1 = a[1] & ~b[1];
assign out2 = a[0] & ~b[1] & ~b[0];
assign out3 = a[1] & a[0] & ~b[0];

assign isGreater = out1 | out2 | out3;

endmodule
