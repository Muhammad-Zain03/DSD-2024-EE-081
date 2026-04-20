module full_adder
(
    input  logic a,
    input  logic b,
    input  logic c,
    output logic sum, 
    output logic carry  
);

    wire logic w0;
    wire logic w1;
    wire logic w2;

    assign w0   = a & c;
    assign w1   = a & b;
    assign w2   = b & c;
    assign carry = w0 | w1 | w2;

    assign sum  = a ^ b ^ c;

endmodule