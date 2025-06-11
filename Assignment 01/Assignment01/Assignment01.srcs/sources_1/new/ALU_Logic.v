`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2025 12:52:18
// Design Name: 
// Module Name: ALU_Logic
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


module ALU_Logic(input wire [5:0] A, B,
input wire [2:0] fxn,
output reg [5:0] result
    );
    
    wire [5:0] negativeA, negativeB, resultComp, resultXOR, resultAdd, resultSub;
    
    bit_ripple_adder negator1(6'b000000, A, 1, negativeA,,);
    bit_ripple_adder negator2(6'b000000, B, 1, negativeB,,);
    lessThan comparison(.x({A,2'b00}), .y({B,2'b00}), .result(resultComp));
    bitwiseXNOR unit4(A, B, resultXOR); 
    bit_ripple_adder addition(A, B, 0, resultAdd,,);
    bit_ripple_adder subtraction(A, B, 1, resultSub,,);
    
    always @(*)
    begin
    case (fxn)
        3'b000: result = A;
        3'b001: result = B;
        3'b010: result = negativeA;
        3'b011: result = negativeB;
        3'b100: result = {6{resultComp[0]}};
        3'b101: result = resultXOR;
        3'b110: result = resultAdd;
        3'b111: result = resultSub;
        default: result = 6'b000000;
    endcase
    end    

endmodule
