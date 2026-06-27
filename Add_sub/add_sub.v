module Add_sub (
	input   [3:0]a,b,
	input    m,
	output  [3:0]s,
	output c
);
wire c1,c2,c3;
wire [3:0]bx;

assign bx= b ^ {4{m}};
FULL_adder F1 (
	.a(a[0]),
	.b(bx[0]),
	.c(m),
	.sum(s[0]),
	.carry(c1)
);
FULL_adder F2 (
	.a(a[1]),
	.b(bx[1]),
	.c(c1),
	.sum(s[1]),
	.carry(c2)
);
FULL_adder F3 (
	.a(a[2]),
	.b(bx[2]),
	.c(c2),
	.sum(s[2]),
	.carry(c3)
);
FULL_adder F4 (
	.a(a[3]),
	.b(bx[3]),
	.c(c3),
	.sum(s[3]),
	.carry(c)
);
endmodule
