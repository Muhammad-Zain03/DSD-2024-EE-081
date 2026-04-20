module top_adder_decoder
(
    input  logic [2:0] a,
    input  logic [2:0] b,
    input  logic       c_in,
    input  logic [2:0] sel,
    output logic [6:0] seg,
    output logic [7:0] an
);

    wire logic [2:0] sum;
    wire logic       c_out;

    ripple_carry RCA (
        .a(a), 
        .b(b), 
        .c_in(c_in), 
        .sum(sum), 
        .c_out(c_out)
    );

    decoder DEC (
        .sum(sum),
        .c_out(c_out), 
        .sel(sel), 
        .seg(seg), 
        .an(an)
    );

endmodule