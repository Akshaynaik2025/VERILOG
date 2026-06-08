module HALF_adder_tb;
	reg a,b;
	wire sum,carry;
HALF_adder H1(
	.a(a),
	.b(b),
	.sum(sum),
	.carry(carry)
);
initial begin 
	$dumpfile("HALF_adder.vcd");
	$dumpvars(0,HALF_adder_tb);
$display("A B | S C");
$monitor("%b %b  %b %b",a,b,sum,carry);
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$finish;
end
endmodule;
