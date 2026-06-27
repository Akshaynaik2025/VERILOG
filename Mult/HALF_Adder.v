module HALF_adder(
	input a,
	input b,
	output sum,carry
);
assign sum = a^b;
assign carry = a & b;
endmodule
