`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2025 12:20:47
// Design Name: 
// Module Name: fsmTb
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


module fsmTb;
// variable instantiation
localparam Tclk = 20;
reg clk, reset, seqVal;
wire state_output;
// uut instantiation
 
FSM
 uut 
(clk, reset, seqVal, state_output); 
// clock 
// T ns clock
always
begin
    clk = 1'b1;
    #(Tclk/2);
    clk = 1'b0;
    #(Tclk/2);
 end
 
 initial
begin
    //Test 1
    seqVal = 1'b0;
    #(Tclk);
    seqVal = 1'b1;
    #(Tclk);
    seqVal = 1'b0;
    #(Tclk);
    seqVal = 1'b1;
    #(Tclk);
    seqVal = 1'b1;
    #(Tclk);
    seqVal = 1'b1;
    #(Tclk);
    
    //Test 2
    seqVal = 1'b0;
    #(50*Tclk);
    seqVal = 1'b1;
    #(90*Tclk);
    
    //Test 3
    seqVal = 1'b0;
    #(Tclk);
    seqVal = 1'b1;
    #(Tclk);
    seqVal = 1'b1;
    #(Tclk);
    seqVal = 1'b1;
    #(Tclk);
    seqVal = 1'b1;
    #(Tclk);
    seqVal = 1'b1;
    #(Tclk);
    
    //Test 4
    seqVal = 1'b1;
    #(Tclk);
    seqVal = 1'b0;
    #(Tclk);
    seqVal = 1'b1;
    #(Tclk);
    seqVal = 1'b0;
    #(Tclk);
    seqVal = 1'b1;
    #(Tclk);
    seqVal = 1'b0;
    #(Tclk);
    
    //Test 5
    seqVal = 1'b0;
    #(Tclk);
    seqVal = 1'b1;
    #(Tclk);
    seqVal = 1'b1;
    #(Tclk);
    seqVal = 1'b1;
    #(Tclk);
    seqVal = 1'b0;
    #(Tclk);
    seqVal = 1'b0;
    #(Tclk);
    
    //Test 6
    seqVal = 1'b1;
    #(Tclk);
    seqVal = 1'b0;
    #(Tclk);
    seqVal = 1'b1;
    #(Tclk);
    seqVal = 1'b0;
    #(Tclk);
    seqVal = 1'b1;
    #(Tclk);
    seqVal = 1'b1;
    #(Tclk);
    
    seqVal = 1'b0;
 end
 
 // reset    
initial 
begin
    reset = 1'b1;
    # (10*Tclk);
    reset = 1'b0;
    # (500*Tclk);
    reset = 1'b1;
    # Tclk;
    reset = 1'b0;
end
endmodule
