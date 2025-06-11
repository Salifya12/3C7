`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2025 18:11:59
// Design Name: 
// Module Name: MSBcounter
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


module MSBcounter(input wire msb,
clk, reset, max_count,
output reg [21:0] count_0, count_1);

//Rising edge triggered block
always @ (posedge clk)
begin
    //check if max length has been completed or reset
    if(reset || max_count)
    begin
        count_0 <= 0;
        count_1 <= 0;
    end
    else
    //check value of MSB to decide which count to increment
        case(msb)
            1'b0:   count_0 <= count_0 + 1;
            1'b1:   count_1 <= count_1 + 1;
        endcase      
end

endmodule
