module ROM(Address, InstOut, clk);
	input[31:0]Address;
	input clk;
	
	output reg[31:0] InstOut;
	
	reg[31:0]Instructions[7:0];
	
	initial begin
		Instructions[0] = 32'h00c20213;
		Instructions[1] = 32'h00708093;
		Instructions[2] = 32'h00510113;
		Instructions[3] = 32'h02018193;
		Instructions[4] = 32'h002082B3;
		Instructions[5] = 32'h00302023;
		Instructions[6] = 32'h06520263;
		Instructions[7] = 32'h00002303;
	end

	always @(posedge clk) begin
		case (Address) 
			8'h0 : InstOut = Instructions[0];
			8'h4 : InstOut = Instructions[1];
			8'h8 : InstOut = Instructions[2];
			8'hc : InstOut = Instructions[3];
			8'h10 : InstOut = Instructions[4];
			8'h14 : InstOut = Instructions[5];
			8'h18 : InstOut = Instructions[6];
			8'h80 : InstOut = Instructions[7];
		endcase
	end
endmodule