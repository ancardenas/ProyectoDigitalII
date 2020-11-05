

module	divisorfrecgen	(input  clk, output	reg	CLKOUT1	); // 50 MHz to 100 kHz

  parameter top=8'b11100001;// top=100MHz/100kHz=500
  reg [8:0] count_225;
	//
	initial
	begin
		CLKOUT1=1'b0;
		count_225=0;
	end
	//
	always @(posedge clk)
	begin
		count_225 <= count_225 + 1;
      if(count_225 == top)
		begin
			count_225<=0;
			CLKOUT1 <= ~CLKOUT1;
		end
	end
endmodule