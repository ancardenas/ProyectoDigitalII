
module	divisorfrecd(	input  clk,	output	reg	CLKOUTD	);// 100 MHz to 34.2/2 kHz

parameter top=12'b010110110110;// top=50MHz/34,2kHz=1462
	reg [11:0] count_1462;
	
	initial
	begin
		CLKOUTD=1'b1;
		count_1462=0;
	end
	
	always @(posedge clk) 
	begin
		count_1462 <= count_1462 + 1;
		if(count_1462 == top)
		begin
			count_1462<=0;
			CLKOUTD <= ~CLKOUTD;
		end
	end
    
endmodule
