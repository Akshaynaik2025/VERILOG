module HALF_sub_tb;
	reg a,b;
	wire diff,bor;
HALF_sub H1(
	.a(a),
	.b(b),
	.diff(diff),
	.bor(bor)
);
initial begin 
	$dumpfile("HALF_sub.vcd");
	$dumpvars(0,HALF_sub_tb);
$display("A B | D B");
$monitor("%b %b  %b %b",a,b,diff,bor);
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$finish;
end
endmodule;
