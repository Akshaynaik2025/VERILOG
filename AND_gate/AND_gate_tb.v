`timescale 1ns/1ps
module AND_gate_tb;
	reg a,b;
	wire y;
AND_gate G1(
	.a(a),
	.b(b),
	.y(y)
);
initial begin
$dumpfile("AND_gate.vcd");
$dumpvars(0,AND_gate_tb);

$display("A B | Y");
$monitor("%b %b|%b",a,b,y);
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$finish;
end
endmodule;
