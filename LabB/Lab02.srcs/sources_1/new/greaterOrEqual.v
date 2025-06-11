`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2025 19:23:01
// Design Name: 
// Module Name: greaterOrEqual
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


module greaterOrEqual(input wire [7:0] x, y,
output wire result
);

//Initialising wires to connect each GT and Equals submodule
wire greater1, equal1;
wire greater2, equal2;
wire greater3, equal3;
wire greater4, equal4;
wire isequal;


GreaterThan g1(x[7:6], y[7:6], greater1);
eq2 e1(x[7:6], y[7:6], equal1);

GreaterThan g2(x[5:4], y[5:4], greater2);
eq2 e2(x[5:4], y[5:4], equal2);

GreaterThan g3(x[3:2], y[3:2], greater3);
eq2 e3(x[3:2], y[3:2], equal3);

GreaterThan g4(x[1:0], y[1:0], greater4);
eq2 e4(x[1:0], y[1:0], equal4);

//Checking if numbers are equal
assign isEqual = equal1 & equal2 & equal3 & equal4;

//Assigning result
assign result = greater1 | isEqual | (greater2 & equal1) | (greater3 & equal2 & equal1) | (greater4 & equal1 & equal2 & equal3); 
endmodule
