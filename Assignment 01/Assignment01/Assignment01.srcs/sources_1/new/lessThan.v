`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2025 20:07:00
// Design Name: 
// Module Name: lessThan
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


module lessThan(input wire [7:0] x, y,
output wire result
);

    wire comp1;
    
    greaterOrEqual comparison(x, y, comp1);
    assign result = ~comp1;

endmodule
