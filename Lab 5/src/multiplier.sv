module multiplier (
    input  logic [3:0] X,
    output logic [3:0] P
);

wire [3:0] w0, w1, w2, w3, r0, r1;

shifter a0 (
    .X(X),
    .S1(1'b0),  
    .S0(1'b1),
    .en(1'b1),  
    .Y(w0)
);

shifter a1 (
    .X(X),
    .S1(1'b0),
    .S0(1'b0),
    .en(1'b1),
    .Y(w1)
);

shifter a2 (
    .X(X),
    .S1(1'b0),  
    .S0(1'b0),
    .en(1'b0), 
    .Y(w2)
);

shifter a3 (
    .X(X),
    .S1(1'b0),
    .S0(1'b0),
    .en(1'b0),
    .Y(w3)
);

ripple_carry RCA1 (
    .a(w0),
    .b(w1),
    .c_in(1'b0),
    .sum(r0),
    .c_out()
);

ripple_carry RCA2 (
    .a(r0),
    .b(w2),
    .c_in(1'b0),
    .sum(r1),
    .c_out()
);

ripple_carry RCA3 (
    .a(r1),
    .b(w3),
    .c_in(1'b0),
    .sum(P),
    .c_out()
);

endmodule