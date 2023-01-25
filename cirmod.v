module cirmod(gl , al , gr , ar , gout , aout);
	input gr , ar , gl , al ;
	output gout , aout;

	assign gout = gl + (al & gr);
	assign aout = al & ar;

endmodule