module Add_sub_tb;

    reg  [3:0] a, b;
    reg  m;
    wire [3:0] s;
    wire c;

    Add_sub A1(
        .a(a),
        .b(b),
        .m(m),
        .s(s),
        .c(c)
    );

    initial begin
        $dumpfile("Add_sub.vcd");
        $dumpvars(0, Add_sub_tb);

        $display(" M |   A   |   B   |   S   | C");
        $monitor("%b | %b | %b | %b | %b", m, a, b, s, c);

        m = 0; a = 4'b0101; b = 4'b0011; #10;   // 5 + 3 = 8
        m = 0; a = 4'b0110; b = 4'b0010; #10;   // 6 + 2 = 8
        m = 0; a = 4'b1111; b = 4'b0001; #10;   // 15 + 1 = 16

        m = 1; a = 4'b0101; b = 4'b0011; #10;   // 5 - 3 = 2
        m = 1; a = 4'b1000; b = 4'b0010; #10;   // 8 - 2 = 6
        m = 1; a = 4'b1111; b = 4'b0001; #10;   // 15 - 1 = 14

        $finish;
    end

endmodule
