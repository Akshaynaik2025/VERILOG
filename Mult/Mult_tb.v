module Mult_tb;

    reg  [1:0] a, b;
    wire [3:0] c;

    Mult M1(
        .a(a),
        .b(b),
        .c(c)
    );

    initial begin
        $dumpfile("Mult.vcd");
        $dumpvars(0, Mult_tb);

        $display(" A  B |   C");
        $monitor("%b %b | %b", a, b, c);

        a = 2'b00; b = 2'b00; #10;   // 0 × 0 = 0
        a = 2'b00; b = 2'b01; #10;   // 0 × 1 = 0
        a = 2'b01; b = 2'b01; #10;   // 1 × 1 = 1
        a = 2'b01; b = 2'b10; #10;   // 1 × 2 = 2
        a = 2'b10; b = 2'b10; #10;   // 2 × 2 = 4
        a = 2'b10; b = 2'b11; #10;   // 2 × 3 = 6
        a = 2'b11; b = 2'b11; #10;   // 3 × 3 = 9

        $finish;
    end

endmodule
