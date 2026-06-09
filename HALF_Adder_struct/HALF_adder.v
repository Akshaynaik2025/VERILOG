module HALF_adder (
	input a,b,
	output sum,carry
);

AND_gate G1(
	.a(a),
	.b(b),
	.y(carry)
);
XOR_gate G2(
	.a(a),
	.b(b),
	.y(sum)
);
endmodule
