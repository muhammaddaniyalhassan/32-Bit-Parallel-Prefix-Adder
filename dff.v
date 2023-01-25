 module dff(d , clk , q);
	input d , clk;
	output q;
	reg q;

	initial begin

		q = 0;
	
	end
	
	always @(posedge(clk))
		
		q<=d;

endmodule
