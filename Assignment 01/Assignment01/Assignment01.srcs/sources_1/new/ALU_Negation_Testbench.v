`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2025 13:17:52
// Design Name: 
// Module Name: ALU_Negation_Testbench
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


module ALU_Testbench;
// Signal declaration
reg [5:0] test_in0, test_in1;
reg [2:0] test_fxn;
wire [5:0] output_vec;


// Instantiate circuit under test
ALU uut

(.A(test_in0), .B(test_in1), .fxn(test_fxn), .output_vector(output_vec));

initial
begin
    $display ("time test_in0 test_in1 test_fxn output_vec");
    $monitor ("%d %b %b %b %b" ,
                $time, test_in0 , test_in1 , test_fxn, output_vec);
            
    test_in0 = 6'b011010; //90 in binary
    test_in1 = 6'b011010;
    
    test_fxn = 3'b000;
    # 200;
    
    test_fxn = 3'b001;
    # 200;
    
    test_fxn = 3'b010;
    # 200;
    
    test_fxn = 3'b011;
    # 200;
    
    test_fxn = 3'b100;
    # 200;
    
    test_fxn = 3'b101;
    # 200;
    
    test_fxn = 3'b110;
    # 200;
    
    test_fxn = 3'b111;
    # 200;
    
    test_in0 = 6'b010101; //90 in binary
    test_in1 = 6'b101010;
    
    test_fxn = 3'b000;
    # 200;
    
    test_fxn = 3'b001;
    # 200;
    
    test_fxn = 3'b010;
    # 200;
    
    test_fxn = 3'b011;
    # 200;
    
    test_fxn = 3'b100;
    # 200;
    
    test_fxn = 3'b101;
    # 200;
    
    test_fxn = 3'b110;
    # 200;
    
    test_fxn = 3'b111;
    # 200;
    
    test_in0 = 6'b101100; //90 in binary
    test_in1 = 6'b001101;
    
    test_fxn = 3'b000;
    # 200;
    
    test_fxn = 3'b001;
    # 200;
    
    test_fxn = 3'b010;
    # 200;
    
    test_fxn = 3'b011;
    # 200;
    
    test_fxn = 3'b100;
    # 200;
    
    test_fxn = 3'b101;
    # 200;
    
    test_fxn = 3'b110;
    # 200;
    
    test_fxn = 3'b111;
    # 200;
    
    test_in0 = 6'b110001; //90 in binary
    test_in1 = 6'b001110;
    
    test_fxn = 3'b000;
    # 200;
    
    test_fxn = 3'b001;
    # 200;
    
    test_fxn = 3'b010;
    # 200;
    
    test_fxn = 3'b011;
    # 200;
    
    test_fxn = 3'b100;
    # 200;
    
    test_fxn = 3'b101;
    # 200;
    
    test_fxn = 3'b110;
    # 200;
    
    test_fxn = 3'b111;
    # 200;
    
    test_in0 = 6'b111111; //90 in binary
    test_in1 = 6'b111111;
    
    test_fxn = 3'b000;
    # 200;
    
    test_fxn = 3'b001;
    # 200;
    
    test_fxn = 3'b010;
    # 200;
    
    test_fxn = 3'b011;
    # 200;
    
    test_fxn = 3'b100;
    # 200;
    
    test_fxn = 3'b101;
    # 200;
    
    test_fxn = 3'b110;
    # 200;
    
    test_fxn = 3'b111;
    # 200;
    
    test_in0 = 6'b000010; //90 in binary
    test_in1 = 6'b000001;
    
    test_fxn = 3'b000;
    # 200;
    
    test_fxn = 3'b001;
    # 200;
    
    test_fxn = 3'b010;
    # 200;
    
    test_fxn = 3'b011;
    # 200;
    
    test_fxn = 3'b100;
    # 200;
    
    test_fxn = 3'b101;
    # 200;
    
    test_fxn = 3'b110;
    # 200;
    
    test_fxn = 3'b111;
    # 200;
    
    test_in0 = 6'b111111; //90 in binary
    test_in1 = 6'b000000;
    
    test_fxn = 3'b000;
    # 200;
    
    test_fxn = 3'b001;
    # 200;
    
    test_fxn = 3'b010;
    # 200;
    
    test_fxn = 3'b011;
    # 200;
    
    test_fxn = 3'b100;
    # 200;
    
    test_fxn = 3'b101;
    # 200;
    
    test_fxn = 3'b110;
    # 200;
    
    test_fxn = 3'b111;
    # 200;
    
end

endmodule
