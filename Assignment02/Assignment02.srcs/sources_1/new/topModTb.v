`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2025 12:11:15
// Design Name: 
// Module Name: topModTb
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


module topModTb;
// variable instantiation
localparam Tclk = 20;
reg clk, reset;
wire [15:0] lfsr_out;
wire [3:0] anode_sel;
wire [7:0] led_out;

// uut instantiation

topMod uut
(clk, reset, lfsr_out, anode_sel, led_out); 
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
//    # (500*Tclk);
//    reset = 1'b1;
//    # Tclk;
//    reset = 1'b0;
end


endmodule
