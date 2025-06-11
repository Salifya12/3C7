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
clk, reset,
output wire [22:0] count_out);

reg [22:0] count, next_count;
//Rising edge triggered block
always @ (posedge clk)
begin
    //check if max length has been completed or reset
    if(reset)
        count <= 0;   
    else
        count <= next_count;
end

//Combinational always block to determine next state
always @(*)
begin
//check value of MSB to decide which count to increment
    if(msb)
        next_count = count + 1;
    else 
        next_count = count;
end

assign count_out = count;   
        
          
endmodule
