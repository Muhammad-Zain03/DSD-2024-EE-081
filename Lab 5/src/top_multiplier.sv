module top_multiplier(
    input  logic [3:0] X,
    input  logic [2:0] sel,
    output logic [6:0] seg,
    output logic [7:0] an
);

wire [3:0] w0;

multiplier m1(
    .X(X),
    .P(w0)
);

decoder decoder(
    .P(w0),
    .sel(sel),
    .seg(seg),
    .an(an)
);

endmodule
