
module ultrasonido (

				output [7:0]d, //S
				output trigg,  
				output DONE,  //S
				input ENABLE, //S
				input ECHO,  
				input	clk,
				input reset   //S
				
			 );


divisorfrecgen	divisorfrecgen0(.clk(clk),.CLKOUT1(CLKOUT1));// 100 MHz to 100 kHz

divisorfrecd divisorfrecd0(.clk(clk),.CLKOUTD(CLKOUTD));// 100 MHz to (34.2/2) kHz

genpulsos genpulsos0(.pulse(pulse),.CLKOUT1(CLKOUT1),.reset(reset),.trigg(trigg)); // Genera pulso de 10us

contador	contador0 (.d(d),.pulse(pulse),.DONE(DONE),.ECHO(ECHO),.ENABLE(ENABLE),.CLKOUTD(CLKOUTD),.reset(reset));
	                                                         //Entrega la distancia, la orden del pulso y el done

endmodule
