module decoder
(
    input  logic [2:0] sum,
    input  logic     c_out,
    input  logic [2:0] sel,
    output logic [6:0] seg,
    output logic [7:0] an
);

    decoder1 dec1 (
        .sum(sum),
        .c_out(c_out), 
        .seg(seg)
    );

    decoder2 dec2 (
        .sel(sel), 
        .an(an)
    );

endmodule