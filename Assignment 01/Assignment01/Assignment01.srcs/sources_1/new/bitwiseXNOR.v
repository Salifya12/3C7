`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2025 16:10:15
// Design Name: 
// Module Name: bitwiseXNOR
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


module bitwiseXNOR(input wire [5:0] A, B,
output wire [5:0] out_vec
    );
    
    xnor(out_vec[0], A[0], B[0]);
    xnor(out_vec[1], A[1], B[1]);
    xnor(out_vec[2], A[2], B[2]);
    xnor(out_vec[3], A[3], B[3]);
    xnor(out_vec[4], A[4], B[4]); 
    xnor(out_vec[5], A[5], B[5]);   
endmodule
