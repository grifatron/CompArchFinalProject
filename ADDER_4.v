module Adder_4 (PC_in, PC_out_4);

input [31:0] PC_in;
output reg [31:0] PC_out_4;

always @ (PC_in) begin

PC_out_4 <= PC_in+32'b00000100;

end

endmodule