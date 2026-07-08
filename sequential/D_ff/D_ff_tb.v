module d_ff_tb;

    reg clk, d, reset;
    wire q;

    d_ff U1(
        .clk(clk),
        .d(d),
        .reset(reset),
        .q(q)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Test stimulus
    initial begin
        $dumpfile("d_ff.vcd");
        $dumpvars(0, d_ff_tb);

        $display("Time\tReset\tClk\tD\tQ");
        $monitor("%0t\t%b\t%b\t%b\t%b", $time, reset, clk, d, q);

        // Apply reset
        reset = 1;
        d = 0;
        #10;
        reset = 0;
        d = 1; #10;
        d = 0; #10;
        d = 1; #10;
        d = 0; #10;
        reset = 1; #10;
        reset = 0;
        d = 1; #10;
        d = 0; #10;

        $finish;
    end

endmodule
