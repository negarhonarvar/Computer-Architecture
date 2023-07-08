`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:55:19 04/05/2022
// Design Name:   multiplier
// Module Name:   F:/AZ/HW03/multi_tb.v
// Project Name:  HW03
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module multi_tb #(parameter size = 6) ();
    reg [size - 1 : 0] multiplier;
    reg [size - 1 : 0] multiplicand;
    reg clk, start;
    wire [(2*size) - 1 : 0] product;

    multiplier shmu(multiplier,multiplicand, clk,start,product);

    initial  clk = 0;
    always begin
        #10; clk = ~clk;
    end
    
    initial begin
        multiplier = 6'd8;
        multiplicand = 6'd24;
        clk = 1;
        start = 1;
        #50 
        start = 0;

        #50
        multiplier = 6'd0;
        multiplicand = 6'd7;
        clk = 0;
	    start = 1;

        #50
        multiplier = 6'd63;
        multiplicand = 6'd63;
        clk = 0;

        #50
        start = 0;

        #50
        multiplier = 6'd20;
        multiplicand = 6'd20;
        clk = 0;
        start = 1;
    end
endmodule