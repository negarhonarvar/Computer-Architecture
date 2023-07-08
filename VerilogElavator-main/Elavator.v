`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:26:44 05/10/2022 
// Design Name: 
// Module Name:    Elavator 
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
module Elavator(
 input F1,
 input F2,
 input F3,
 input F4,
 input S1,
 input S2,
 input S3,
 input S4,
 input U1,
 input U2,
 input U3,
 input D2,
 input D3,
 input D4,
 input reset,
 input clk,
 output reg clr1,
 output reg clr2,
 output reg clr3,
 output reg clr4,
 output reg [1:0] ac, // 0 for down , 1 for stop , 2 for up
 output reg [2:0] disp, // displays the number of the current floor
 output reg open // 1 for open , 0 for not
    );
	  // defining the states :
	 localparam st1 = 4'd0;
	 localparam st2 = 4'd1;
	 localparam st3 = 4'd2;
	 localparam st4 = 4'd3;
	 localparam afterst1 = 4'd4;
	 localparam afterst2 = 4'd5;
	 localparam afterst3 = 4'd6;
	 localparam afterst4 = 4'd7;
	 localparam mu1 = 4'd8;
	 localparam mu2 = 4'd9;
	 localparam mu3 = 4'd10;
	 localparam md2 = 4'd11;
	 localparam md3 = 4'd12;
	 localparam md4 = 4'd13;
	 localparam rst = 4'd14;
	 // state , next state :
	 reg[3:0] state, nextstate ;
	 // creating registers for desired signals :
	 wire f1;
	 wire f2;
	 wire f3;
	 wire f4;
	 wire d2;
	 wire d3;
	 wire d4;
	 wire u1;
	 wire u2;
	 wire u3;
	 register rf1(F1, clk, F1, clr1, f1);
	 register rf2(F2, clk, F2, clr2, f2);
	 register rf3(F3, clk, F3, clr3, f3);
	 register rf4(F4, clk, F4, clr4, f4);
	 register rd2(D2, clk, D2, clr2, d2);
	 register rd3(D3, clk, D3, clr3, d3);
	 register rd4(D4, clk, D4, clr4, d4);
	 register ru1(U1, clk, U1, clr1, u1);
	 register ru2(U2, clk, U2, clr2, u2);
	 register ru3(U3, clk, U3, clr3, u3);
	 // nextstate assignment :
	 wire ff_reset ;
	 assign ff_reset = reset  ;
	 always @(posedge clk, posedge ff_reset) begin
		if(ff_reset) begin
			state <= rst ; // rst=aschyncrone reset
		end
		else begin
			state <= nextstate ;
		end
	 end
	 
	 // nextstate logic:
	 always @(f1, f2, f3, f4, d2, d3, d4, u1, u2, u3, S1, S2, S3, S4) begin
	 
		case(state)
			st1: begin
				if(1)
					nextstate = afterst1 ;
			end
			st2: begin
				if(1)
					nextstate = afterst2 ;
			end
			st3: begin
				if(1)
					nextstate = afterst3 ;
			end
			st4: begin
				if(1)
					nextstate = afterst4 ;
			end
			afterst1: begin
				if(f2 || f3 || f4 || d2 || d3 || d4 || u2 || u3)
					nextstate = mu1 ;
			end
			afterst2: begin
				if((~f1 && (f3 || f4)) || ((~f1 && ~f2 && ~f3 && ~f4) && ( d3 || u3 || d4 )))
					nextstate = mu2 ;
				else if (f1 || ((~f1 && ~f2 && ~f3 && ~f4) && (u1)))
					nextstate = md2 ;
			end
			afterst3: begin
				if((~f4 && (f2 || f1)) || ((~f1 && ~f2 && ~f3 && ~f4) && ( d2 || u2 || u1)))
					nextstate = md3 ;
				else if (f4 || ((~f1 && ~f2 && ~f3 && ~f4) && ( d4)))
					nextstate = mu3 ;
			end
			afterst4: begin
				if(f1 || f2 || f3 || d2 || d3 || u1 || u2 || u3)
					nextstate = md4 ;
			end
			mu1: begin
				if((S2 && (f2 || u2)) || (S2 && ~f3 && ~f4 && d2))
					nextstate = st2 ;
				else if (S2 && (f3 || f4 || u3 || d3 || d4))
					nextstate = mu2 ;
				else
					nextstate = rst ;
			end
			mu2: begin
				if((S3 && (f3 || u3)) || (S3 && ~f3 && ~u3 && ~d4 && d3))
					nextstate = st3 ;
				else if(S3 && (f4))
					nextstate = mu3 ;
				else
					nextstate = rst;
			end
			mu3: begin
				if(S4)
					nextstate = st4 ;
			end
			md2: begin
				if(S1)
					nextstate = st1 ;
			end
			md3: begin
				if((S2 && (f2 || d2)) || (S2 && ~f1 && ~u1 && d2))
					nextstate = st2 ;
				else if (S2 && (f1 || u1))
					nextstate = md2 ;
				else 
					nextstate = rst ;
			end
			md4: begin
				if((S3 && (d3 || f3)) || (S3 && ~f1 && ~f2 && u3))
					nextstate = st3 ;
				else if (S3 && (f1 || f2 || d2 || u1 || u2))
					nextstate = md3 ;
				else 
					nextstate = rst ;
			end
			rst: begin
				if(S1)
					nextstate = st1 ;
			end
			default: begin
				nextstate = 4'bxxxx ;
			end
		endcase
		
	 end
	 
	 // output logic :
	 always begin
	 
		case(state)
			st1: begin
				ac = 1 ;
				disp = 1 ;
				open = 1 ;
				clr1 = 1 ;
				clr2 = 0 ;
				clr3 = 0 ;
				clr4 = 0 ;
			end
			st2: begin
				ac = 1 ;
				disp = 2 ;
				open = 1 ;
				clr1 = 0 ;
				clr2 = 1 ;
				clr3 = 0 ;
				clr4 = 0 ;
			end
			st3: begin
				ac = 1 ;
				disp = 3 ;
				open = 1 ;
				clr1 = 0 ;
				clr2 = 0 ;
				clr3 = 1 ;
				clr4 = 0 ;
			end
			st4: begin
				ac = 1 ;
				disp = 4 ;
				open = 1 ;
				clr1 = 0 ;
				clr2 = 0 ;
				clr3 = 0 ;
				clr4 = 0 ;
			end
			afterst1: begin
				ac = 1 ;
				disp = 1 ;
				open = 1 ;
				clr1 = 1 ;
				clr2 = 0 ;
				clr3 = 0 ;
				clr4 = 0 ;
			end
			afterst2: begin
				ac = 1 ;
				disp = 2 ;
				open = 1 ;
				clr1 = 0 ;
				clr2 = 1 ;
				clr3 = 0 ;
				clr4 = 0 ;
			end
			afterst3: begin
				ac = 1 ;
				disp = 3 ;
				open = 1 ;
				clr1 = 0 ;
				clr2 = 0 ;
				clr3 = 1 ;
				clr4 = 0 ;
			end
			afterst4: begin
				ac = 1 ;
				disp = 4 ;
				open = 1 ;
				clr1 = 0 ;
				clr2 = 0 ;
				clr3 = 0 ;
				clr4 = 1 ;
			end
			mu1: begin
				ac = 2 ;
				disp = 1 ;
				open = 0 ;
				clr1 = 0 ;
				clr2 = 0 ;
				clr3 = 0 ;
				clr4 = 0 ;
			end
			mu2: begin
				ac = 2 ;
				disp = 2 ;
				open = 0 ;
				clr1 = 0 ;
				clr2 = 0 ;
				clr3 = 0 ;
				clr4 = 0 ;
			end
			mu3: begin
				ac = 2 ;
				disp = 3 ;
				open = 0 ;
				clr1 = 0 ;
				clr2 = 0 ;
				clr3 = 0 ;
				clr4 = 0 ;
			end
			md2: begin
				ac = 0 ;
				disp = 2 ;
				open = 0 ;
				clr1 = 0 ;
				clr2 = 0 ;
				clr3 = 0 ;
				clr4 = 0 ;
			end
			md3: begin
				ac = 0 ;
				disp = 3 ;
				open = 0 ;
				clr1 = 0 ;
				clr2 = 0 ;
				clr3 = 0 ;
				clr4 = 0 ;
			end
			md4: begin
				ac = 0 ;
				disp = 4 ;
				open = 0 ;
				clr1 = 0 ;
				clr2 = 0 ;
				clr3 = 0 ;
				clr4 = 0 ;
			end
			rst: begin
				ac = 0 ;
				disp = 7 ; // 7 means reset in display monitor 
				open = 0 ;
				clr1 = 0 ;
				clr2 = 0 ;
				clr3 = 0 ;
				clr4 = 0 ;
			end
			default: begin
				ac = 0'bx ;
				disp = 3'bx ;
				open = 1'bx ;
				clr1 = 1'bx ;
				clr2 = 1'bx ;
				clr3 = 1'bx ;
				clr4 = 1'bx ;
			end
		endcase
		
	 end
	 
	

endmodule


