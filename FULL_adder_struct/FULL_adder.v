module FULL_adder(
	input a,b,c,
	output sum,carry
);
wire w1,w2,w3,w4,w5;
XOR_gate G1(
	.a(a),
	.b(b),
	.y(w5)
);
XOR_gate G2(
	.a(w5),
	.b(c),
	.y(sum)
);
AND_gate G3(
	.a(a),
	.b(b),
	.y(w1)
);
AND_gate G4(
	.a(b),
	.b(c),
	.y(w2)
);
AND_gate G5(
	.a(a),
	.b(c),
	.y(w3)
);
OR_gate G6(
	.a(w1),
	.b(w2),
	.y(w4)
);
OR_gate G7(
	.a(w3),
	.b(w4),
	.y(carry)
);
endmodule
