
module	divisorfrecgen	(input  CLKOUT, output	reg	CLKOUT1	); // 100 kHz to 50Hz

  parameter top=8'b00001010;// top=100kHz/5kHz=20
  reg [7:0] count_10;
	//
	initial
	begin
		CLKOUT1=1'b0;
		count_10=0;
	end
	//
	always @(posedge CLKOUT)
	begin
		count_10 <= count_10 + 1;
      if(count_10 == top)
		begin
			count_10<=0;
			CLKOUT1 <= ~CLKOUT1;
		end
	end
endmodule