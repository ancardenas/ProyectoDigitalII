 
 module contador		(
				output	wire	[7:0] d,
				output	reg	pulse,
				output	reg	DONE,
				input		ECHO,
				input		ENABLE,
				input		CLKOUTD,
				input		reset
			);
			
	reg [7:0] count0;
	reg logico;

 initial 
	begin
		count0=0;
		pulse=0;
		DONE=0;
	end
	
	always@(posedge CLKOUTD)
	begin
		logico=(count0[7]||count0[6]||count0[5]||count0[4]||count0[3]||count0[2]||count0[1]||count0[0]);
		if(reset)
		begin
			count0=0;
			DONE=0;
			pulse=0;
		end
    //	Da la orden de mandar un pulso
		else
		begin
			if(ENABLE)
			begin
				pulse=1'b1;
			end
		
	  //	Cuenta el rango que tiene el pulso del ECHO del sensor
			
			if(ECHO)
			begin
				count0=count0+1;
			end
			if(!ECHO && logico)
			begin
				DONE= 1;
			end
		end
	end
	
	assign d = count0; //Distancia en cm
	
endmodule
