`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2025 18:25:36
// Design Name: 
// Module Name: counterTestbench
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


module counterTestbenchmodule;
// variable instantiation
localparam Tclk = 20;
reg clk, reset;
wire[21:0] q;
wire max_count;
wire [21:0] count_0, count_1;


LFSR register1(clk, reset, q, max_count);

// uut instantiation

MSBcounter uut
(q[21], clk, reset, max_count, count_0, count_1); 
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
    # (500*Tclk);
    reset = 1'b1;
    # Tclk;
    reset = 1'b0;
end


endmodule
