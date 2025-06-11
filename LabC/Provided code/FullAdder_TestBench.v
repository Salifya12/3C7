// Listing 1.7
// The `timescale directive specifies that
// the simulation time unit is 1 ns  and
// the simulation timestep is 10 ps
`timescale 1 ns/100 ps

module eq2_testbench;
   // signal declaration
   reg  [5:0] test_in0, test_in1;
   reg  subtractor_bit;
   wire [5:0]  output_vector;
   wire oflow, carry_out;

   // instantiate the circuit under test
   bit_ripple_adder uut
      (.x(test_in0), .y(test_in1), .sum(output_vector),.sel(subtractor_bit), .overflow(oflow), .c_out(carry_out));

   //  test vector generator
   initial
   begin

      subtractor_bit = 1'b0;
      // test vector 1
      test_in0 = 6'b010000;
      test_in1 = 6'b010000;
      # 200;
      // test vector 2
      test_in0 = 6'b101001;
      test_in1 = 6'b101110;
      # 200;
      // test vector 3
      test_in0 = 6'b101001;
      test_in1 = 6'b001101;
      # 200;
      // test vector 4
      test_in0 = 6'b101101;
      test_in1 = 6'b000001;
      # 200;
      // test vector 5
      test_in0 = 6'b100000;
      test_in1 = 6'b000101;
      # 200;
      // test vector 6
      test_in0 = 6'b110000;
      test_in1 = 6'b111100;
      # 200;
      // test vector 7
      test_in0 = 6'b110101;
      test_in1 = 6'b010101;
      # 200;
      // stop simulation
      $stop;
   end
   

endmodule