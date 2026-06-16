module FULL_sub(
	input a,b,c,
	output diff,bor
);
wire w1,w2,w3,w4,w5,w6;
xor(w1,a,b);
xor(diff,w1,c);
not(w2,a);
and(w3,w2,b);
and(w4,w2,c);
and(w5,b,c);
or(w6,w4,w5);
or(bor,w6,w3);
endmodule
