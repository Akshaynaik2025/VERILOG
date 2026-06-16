module FULL_sub_tb;
	reg a,b,c;
	wire diff,bor;
FULL_sub F1(
	.a(a),
	.b(b),
	.c(c),
	.diff(diff),
	.bor(bor)
);
initial begin
	$dumpfile("FULL_sub.vcd");
	$dumpvars(0,FULL_sub_tb);
$display("A B C | D B");
$monitor("%b %b %b  %b %b",a,b,c,diff,bor);
a=0;b=0;c=0;#10;
a=0;b=0;c=1;#10;
a=0;b=1;c=0;#10;
a=0;b=1;c=1;#10;
a=1;b=0;c=0;#10;
a=1;b=0;c=1;#10;
a=1;b=1;c=0;#10;
a=1;b=1;c=1;#10;
$finish;
end
endmodule;
