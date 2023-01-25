module pfa32_tb;

	reg[31:0] a , b;
	reg cin;

	wire[31:0] s;
	wire cout;

	reg clk;

	//#18
	pfa32 calc( a , b , cin , s , cout , clk );

	initial begin
		
		clk = 0;
	
	end

	always begin

		#1
		clk = ~clk;

	end

	initial begin
		
		a = 32'b00000000111111110000000011111111;
		b = 32'b11111111000000001111111100000000;
		cin = 0;
		
		#2
		
		a = 32'b11110011111111110000000011111111;
		b = 32'b00001100000000001111111100000000;
		cin = 1;
		
		/*#2
		
		a = 32'b00000000111111110000000011111111;
		rot = 1'b0;
		shift = 5'b00100;
		
		#2
		
		a = 32'b11110000111111110000000011111111;
		rot = 1'b1;
		shift = 5'b00100;
		
		#2
		
		a = 32'b00000000111111110000000011111111;
		rot = 1'b0;
		shift = 5'b00100;
		
		#2
		
		a = 32'b11110000111111110000000011111111;
		rot = 1'b1;
		shift = 5'b00100;
		
		#2
		
		a = 32'b00000000111111110000000011111111;
		rot = 1'b0;
		shift = 5'b00100;
		
		#2
		
		a = 32'b11110000111111110000000011111111;
		rot = 1'b1;
		shift = 5'b00100;*/

	end

	always begin

		#48
		$finish;

	end

	initial begin

		$monitor($time , " , a = %b , b = %b , cin = %b , s = %b , cout = %b" , a , b , cin , s , cout);

	end
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0);
    end

endmodule // pfa32_tb