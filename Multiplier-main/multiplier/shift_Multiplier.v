`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:54:20 04/05/2022 
// Design Name: 
// Module Name:    shift_Multiplier 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module multiplier #(parameter size = 6)(
    input[size - 1:0] multiplier,
    input [size - 1:0] multiplicand,
    input clk,
    input start,
    output reg [(2*size) - 1 : 0] product
);
    reg [(2*size) - 1 : 0] m;
    reg [size-1:0] p;
    integer i;

    always @(posedge clk)
        if (start) begin
            product[(2*size)-1:0] = 0;
            m[(2*size)-1: size] = 0;
            m[size - 1:0] = multiplicand;
            p = multiplier;
            for (i = 0 ;i < size ;i = i + 1) begin
                if (p[0]) 
                    product[(2*size) - 1:0] = product[(2*size)-1:0] + m;
                m = m << 1;
                p = p >> 1;
            end
        end
        else 
            product = 0;
endmodule

