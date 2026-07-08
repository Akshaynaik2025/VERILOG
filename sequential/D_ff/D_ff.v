module d_ff(
    input clk,
    input d,
    input reset,
    output reg q
);

always @(posedge clk or posedge reset)
begin
    if (reset)
        q <= 1'b0;
    else
        q <= d;
end

endmodule
