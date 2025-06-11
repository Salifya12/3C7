// Listing 4.2
module d_ff_reset
   (
    input wire clk, reset,
    input wire d,
    output reg q
   );

   // initialising asynchronous reset rising edge triggered always block
   always @(negedge clk, posedge reset)
      if (reset) // asserting q to low if reset is high
         q <= 1'b0;
      else
         q <= d; // else follow d

endmodule