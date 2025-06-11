`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2025 16:29:11
// Design Name: 
// Module Name: LFSR
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


module LFSR
(input wire clk, reset,
output wire [22:0] Q_out,
wire max_out);

//Calculating seed value
localparam seed = {15'd0,8'h51 ^ 8'h90};

//Initialising internals
reg [22:0] Q_state;
wire [22:0] Q_ns;
reg max_tick_reg;

//Rising edge triggered, asynchronous active high reset
always @ (posedge clk) 
begin
    //reset case
    if (reset)
        Q_state <= seed;
    else
    //Assign Q to new state
    begin
        Q_state <= Q_ns;
        if(Q_ns == seed)
        //check if we've returned to seed i.e., max length complete
        //if true assert high
            max_tick_reg <= 1'b1;
        else
        //else assert low
            max_tick_reg <= 1'b0;
    end
end

//next state logic
assign Q_fb = ~(Q_state[22] ^ Q_state[17]);
assign Q_ns = {Q_state[21:0], Q_fb};

//output logic
assign Q_out = Q_state;
assign max_out = max_tick_reg;

endmodule
