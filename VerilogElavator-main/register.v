`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:52:18 05/11/2022 
// Design Name: 
// Module Name:    register 
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
module register(
    input in,
    input clk,
    input en,
    input clr,
    output reg out
    );
 always @(posedge clk ,posedge clr) begin 
		if(clr) begin
			out <= 0;
		end
		else if (en) begin
			out <= in ;
		end
	 end

endmodule
