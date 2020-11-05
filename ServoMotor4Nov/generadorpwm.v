
module	generadorpmw(
			input CLKOUT2,
			input [7:0]dutty,
			output PMW
			
			);


reg [11:0] counter = 0;

always@(posedge CLKOUT2) //Cada 0.2ms
 begin
      if(counter<3600) counter<= counter +1;
      else counter <= 0;
end
assign PMW = (counter<(dutty+8'b10110100)) ? 1:0;

endmodule