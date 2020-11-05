
module servo( 
    input clk,
    input [7:0]dutty, 
	 output CLKOUT,
	 output CLKOUT2,
    output PWM
	
	 );
	 
divisorfrec	   divisorfrec0   ( .clk(clk),.CLKOUT(CLKOUT));
divisorfrec1	divisorfrec10	(.clk(clk),	.CLKOUT2(CLKOUT2));
divisorfrecgen  divisorfrecgen0  ( .CLKOUT(CLKOUT),.CLKOUT1(CLKOUT1));
generadorpmw    generadorpmw0    ( .CLKOUT2(CLKOUT2),.dutty(dutty),.PMW(PWM));

endmodule