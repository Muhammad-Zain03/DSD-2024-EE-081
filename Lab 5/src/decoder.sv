module decoder
(
    input  logic [3:0] P,
    input  logic [2:0] sel,
    output logic [6:0] seg,
    output logic [7:0] an
);

    decoder1 dec1 (
        .P(P),
        .seg(seg)
    );

    decoder2 dec2 (
        .sel(sel), 
        .an(an)
    );

endmodule