`include "ControlModule.v"
module file_tb ();
    reg clk, rst;
	reg [31:0] ID;

	wire red,blue,green,Lock;

	reg [32:0] data [9:0];
    reg [32:0] variable; 
    integer i;
    integer file;
	controller uut(clk,rst,ID,red,blue,green,Lock);
	initial begin
		clk = 0;
	end
	always  begin
		#50; clk = ~clk;
	end
    initial begin
        $readmemb("C:\Users\ASUS\Desktop\CA-HW4\input.txt",data);

        for (i =0 ;i < 10 ;i = i + 1) begin
            $display("%b", data[i]);
            variable = data[i];
            rst = variable[32];
            ID = variable[31:0];
            #100;
        end
        #10;
        $finish;
    end
    initial begin
        file = $fopen("C:\Users\ASUS\Desktop\CA-HW4\output.txt");
        
    end
    always @(red,blue,green,Lock) begin
        $fwrite(file,"red light=%d blue light=%d green light=%d Lock=%d\n",red,blue,green,Lock); 
    end

endmodule
