module full_adder
(
    input  logic a,
    input  logic b,
    input  logic c_in,
    output logic sum, 
    output logic c_out 
);

    wire logic w0;
    wire logic w1;
    wire logic w2;

    assign w0   = a & c_in;
    assign w1   = a & b;
    assign w2   = b & c_in;
    assign c_out = w0 | w1 | w2;

    assign sum  = a ^ b ^ c_in;

endmodule