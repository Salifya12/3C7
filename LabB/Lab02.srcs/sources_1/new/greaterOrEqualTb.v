`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2025 19:42:05
// Design Name: 
// Module Name: greaterOrEqualTb
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


module greaterOrEqualTb;
 // signal declaration
   reg  [7:0] test_in0, test_in1;
   wire  test_out;

   // instantiate the circuit under test
   greaterOrEqual uut
      (test_in0, test_in1, test_out);

   //  test vector generator
   initial
   begin
   
    $display ("time test-in0 test-in1 test-out ") ;
    $monitor ("%d %b %b %b" ,
                $time, test_in0 , test_in1 , test_out) ;
      // test vector 1
      test_in0 = 8'b01111000;
      test_in1 = 8'b11110000;
      # 200;
      // test vector 2
      test_in0 = 8'b00000001;
      test_in1 = 8'b00000100;
      # 200;
      // test vector 3
      test_in0 = 8'b00010000;
      test_in1 = 8'b00101001;
      # 200;
      // test vector 4
      test_in0 = 8'b10000000;
      test_in1 = 8'b10000010;
      # 200;
      // test vector 5
      test_in0 = 8'b11111111;
      test_in1 = 8'b11111111;
      # 200;
      // test vector 6
      test_in0 = 8'b00000010;
      test_in1 = 8'b00000000;
      # 200;
      // test vector 7
      test_in0 = 8'b00010100;
      test_in1 = 8'b10100101;
      # 200;
      
      test_in0 = 8'b10010100;
      test_in1 = 8'b10100101;
      # 200;
      
      test_in0 = 8'b11010100;
      test_in1 = 8'b00100101;
      # 200;
      
      test_in0 = 8'b11010100;
      test_in1 = 8'b10100101;
      # 200;
      
      test_in0 = 8'b11010100;
      test_in1 = 8'b10110101;
      # 200;
      // stop simulation
      $stop;
   end
   

endmodule
