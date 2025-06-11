`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2025 11:10:15
// Design Name: 
// Module Name: bit_ripple_adder
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


module bit_ripple_adder(input wire [5:0] x, y,
input wire sel, 
output wire [5:0] sum,
output wire overflow, c_out);

wire unit1_cout, unit2_cout, unit3_cout, unit4_cout, unit5_cout, unit6_cout;
wire [5:0] y_copy;

xor sub1(y_copy[0], sel, y[0]);
xor sub2(y_copy[1], sel, y[1]);
xor sub3(y_copy[2], sel, y[2]);
xor sub4(y_copy[3], sel, y[3]);
xor sub5(y_copy[4], sel, y[4]);
xor sub6(y_copy[5], sel, y[5]);

FullAdder unit1(.a(x[0]), .b(y_copy[0]), .cin(sel), .s(sum[0]), .cout(unit1_cout));
FullAdder unit2(.a(x[1]), .b(y_copy[1]), .cin(unit1_cout), .s(sum[1]), .cout(unit2_cout));
FullAdder unit3(.a(x[2]), .b(y_copy[2]), .cin(unit2_cout), .s(sum[2]), .cout(unit3_cout));
FullAdder unit4(.a(x[3]), .b(y_copy[3]), .cin(unit3_cout), .s(sum[3]), .cout(unit4_cout));
FullAdder unit5(.a(x[4]), .b(y_copy[4]), .cin(unit4_cout), .s(sum[4]), .cout(unit5_cout));
FullAdder unit6(.a(x[5]), .b(y_copy[5]), .cin(unit5_cout), .s(sum[5]), .cout(unit6_cout));

xor g0(overflow, unit5_cout, unit6_cout);

assign c_out = unit6_cout;
endmodule
