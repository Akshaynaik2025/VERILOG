module HALF_sub(
	input a,b,
	output diff,bor
);
wire w1;
xor(diff,a,b);
not(w1,a);
and(bor,w1,b);
endmodule
