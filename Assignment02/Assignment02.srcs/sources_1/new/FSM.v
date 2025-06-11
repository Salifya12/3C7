`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2025 11:11:31
// Design Name: 
// Module Name: FSM
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


module FSM(input clk, reset, msb,
output wire stateOut);

//Parameters to denote each state
parameter a = 3'd0, b = 3'd1, c = 3'd2,
d = 3'd3, e = 3'd4, f = 3'd5, g = 3'd6;

//Initialising internals
reg [2:0] new_state, state;

//Next state logic
assign stateOut = (state == g);

//Rising edge triggered, asynchronous active high reset
always @(posedge clk)
begin
    if(reset)
        state <= a;
    else
        state <= new_state;
end

//Combinational always block
always @(*)
begin
    new_state = state;
    case(state)
        a: begin if(!msb) // if input 0
            new_state = b;
            end
        b: begin if(msb) // if input 1
            new_state = c;
            end
        c: begin if(!msb) // if input 0
            new_state = d;
            else
            new_state = a;
            end
        d: begin if(msb) // if input 1
            new_state = e;
            else
            new_state = b;
            end
        e: begin if(msb) // if input 1
            new_state = f;            
            else
            new_state = d;
            end
        f: begin if(msb) // if input 1
            new_state = g;
            else
            new_state = b;
            end
        g: begin if(msb) // if input 1
            new_state = a;
           else
            new_state = b;
            end
        default: new_state = a;    
    endcase            
end
endmodule
