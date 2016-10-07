`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:29:07 10/07/2016
// Design Name:   matrix_inverse_calculator
// Module Name:   C:/Users/ANSHUL/Desktop/test/LA/matrixInverseCalculator/inverse_calculator_tb.v
// Project Name:  matrixInverseCalculator
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: matrix_inverse_calculator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module inverse_calculator_tb;

	// Inputs
	reg clk;

	// Instantiate the Unit Under Test (UUT)
	matrix_inverse_calculator uut (
		.clk(clk)
	);
	
	always #50 clk = ~clk;
	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish

        
		// Add stimulus here

	end      
endmodule

