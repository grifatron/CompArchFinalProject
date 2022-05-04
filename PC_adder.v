module PC_adder(PC, add, PC_out);

input [31:0] PC, add;
output reg[31:0] PC_out;

always @(PC, add) begin
PC_out = PC + add;
end

endmodule
