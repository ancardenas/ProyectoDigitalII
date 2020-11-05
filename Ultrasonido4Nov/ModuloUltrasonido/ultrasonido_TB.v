`timescale 1ns / 1ps

module ultrasonido_TB;

	// Inputs
	reg	ENABLE;
	reg	ECHO;
	reg	clk;
	reg	reset;

	// Outputs
	wire	[7:0]	d;
    wire		trigg;
	wire		DONE;

	// Instantiate the Unit Under Test (UUT)
	ultrasonido uut (
		.d(d),
		.trigg(trigg),
		.DONE(DONE),
		.ENABLE(ENABLE),
		.ECHO(ECHO),
		.clk(clk),
		.reset(reset)
	);
	
	always  // Reloj de 100MHz      Periodo=20ns //50MHz
	begin
		clk =1'b0;
		#10;
		clk =1'b1;
		#10;
	end

	initial
	begin
		//Initialize Inputs
		ENABLE = 0;
		reset=0;
		ECHO = 0;
		#58000;
		ENABLE = 1;
		ECHO = 0;
		#52000;
		ECHO = 1;
		             //10 cm=(29240ns)*2*10  //29240ns=1cm //
		#2748560;    //47 cm=(29240ns)*2*47
		ECHO = 0;
		#10000;

	end


	initial
	begin: TEST_CASE
		     $dumpfile("ultrasonido_TB.vcd");
		     $dumpvars(-1, uut);
		     #(4000000) $finish;
	end
      
endmodule

