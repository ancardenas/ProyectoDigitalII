
module	divisorfrec	(input  clk, output	reg	CLKOUT); // 50 MHz to 100 kHz

 
  parameter top=9'b011100001;// top=50MHz/100kHz=500
  reg [8:0] count_225;
	//
	initial
	begin
		CLKOUT=1'b0;
		count_225=0;
	end
	//
	always @(posedge clk)
	begin
		count_225 <= count_225 + 1;
      if(count_225 == top)
		begin
			count_225<=0;
			CLKOUT <= ~CLKOUT;
		end
	end
	
	
	
endmodule