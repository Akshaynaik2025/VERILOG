module XNOR_gate_tb;
	reg a,b;
	wire y;
XNOR_gate G1(
	.a(a),
	.b(b),
	.y(y)
);
initial begin
$dumpfile("XNOR_gate.vcd");
$dumpvars(0,XNOR_gate_tb);
$display("A B | Y");
$monitor("%b %b | %b",a,b,y);
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$finish;
end
endmodule;
