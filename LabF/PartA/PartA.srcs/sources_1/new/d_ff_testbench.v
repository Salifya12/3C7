`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2025 20:07:31
// Design Name: 
// Module Name: d_ff_testbench
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


module d_ff_testbench;

// variable instantiation
localparam Tclk = 20;
reg clk, reset;
reg d;
wire q;

// uut instantiation
d_ff_reset uut
(clk, reset, d, q);

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
    # (2*Tclk - 2);
    reset = 1'b0;
    # (4 * Tclk);
    reset = 1'b1;
    # (1.25 * Tclk);
    reset = 1'b0;
end

//Establish d signal waveform
initial
begin
    d = 1'b0;
    # Tclk;
    d = 1'b1;
    # (Tclk + 5);
    d = 1'b0;
    # (Tclk + 10);
    d = 1'b1;
    # (5 * Tclk);
    d = 1'b0;   
end

endmodule
