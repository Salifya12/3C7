`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2025 18:59:49
// Design Name: 
// Module Name: LFSR_testbench
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


module LFSR_testbench;
// variable instantiation
localparam Tclk = 20;
reg clk, reset;
wire[21:0] q;
wire max_count;

// uut instantiation
LFSR uut
(clk, reset, q, max_count);

// clock 
// T ns clock
always
begin
    clk = 1'b1;
    #(Tclk/2);
    clk = 1'b0;
    #(Tclk/2);
 end
 
 // reset    
initial 
begin
    reset = 1'b1;
    # (10*Tclk);
    reset = 1'b0;
end


endmodule
