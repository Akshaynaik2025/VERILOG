module Mult(
	input [1:0] a,b,
	output [3:0] c
);
wire [3:0] x;
assign c[0] = a[0] & b[0];
assign x[0] = a[0] & b[1];
assign x[1] = a[1] & b[0];
assign x[3] = a[1] & b[1];
HALF_adder H1(
	.a(x[0]),
	.b(x[1]),
	.sum(c[1]),
	.carry(x[2])
);
HALF_adder H2(
	.a(x[2]),
	.b(x[3]),
	.sum(c[2]),
	.carry(c[3])
);
endmodule
