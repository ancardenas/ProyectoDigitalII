 
 module	genpulsos	(
				input		pulse,
				input		CLKOUT1,
				input		reset,
				output	trigg
			);
			
	reg	Doit;
	reg	NoDoit;
	assign trigg=(Doit && ~NoDoit);
	
	initial
	begin
		Doit=0;
		NoDoit=0;
	end

	always@(posedge CLKOUT1)
	begin
		if(reset)
		begin
			Doit=0;
			NoDoit=0;
		end
		else
		begin
			if(pulse)
			begin
				Doit<=1'b1;// Para prender
			end
			if(pulse && Doit)
			begin
				NoDoit<=1'b1;// Para apagar
			end
		end
	end
	
endmodule
