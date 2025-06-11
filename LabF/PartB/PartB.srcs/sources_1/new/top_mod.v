`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2025 11:11:05
// Design Name: 
// Module Name: top_mod
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


module top_mod(
input wire clk, reset,
[4:0] button_input,
output wire [3:0] anode_sel,
wire [6:0] led_out
    );
    
    //Initiialising regs & interconnecting wires
    reg [7:0] d, Q_next;
    wire [7:0] Q;
    wire [4:0] buttons;
    
    // Initialising instances of each flip flop in register with d input q output
    d_ff_reset DFF0(clk, reset, d[0], Q[0]);
    d_ff_reset DFF1(clk, reset, d[1], Q[1]);
    d_ff_reset DFF2(clk, reset, d[2], Q[2]);
    d_ff_reset DFF3(clk, reset, d[3], Q[3]);
    d_ff_reset DFF4(clk, reset, d[4], Q[4]);
    d_ff_reset DFF5(clk, reset, d[5], Q[5]);
    d_ff_reset DFF6(clk, reset, d[6], Q[6]);
    d_ff_reset DFF7(clk, reset, d[7], Q[7]);
    
    //Instance of display module
    seven_segment_controller con1(clk, reset, Q, anode_sel, led_out);
    
    //Instance of deobucncer module
    debouncer deb1(clk, reset, button_input, buttons);
    
    //Always block triggered by change in state of any button i.e., if any button is pressed
    always @(buttons)
    begin
        //Increment for up and right buttons
        if(buttons[0] || buttons[3])
            Q_next <= Q + 1;
        //Decrement for down and left buttons
        else if(buttons[1] || buttons[2])
            Q_next <= Q - 1;
        //Reset to 22 fro centre button
        else if(buttons[4])
            Q_next <= 5'b10110;  
        else 
        //If all values false keep values the same
            Q_next <= Q;
        //Store next input
        d <= Q_next;
    end
endmodule
