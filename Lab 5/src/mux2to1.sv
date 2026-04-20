module mux2to1
(
    input  logic select,
    input  logic in0,
    input  logic in1,
    output logic out
);

always_comb begin

    case(select)
    0 : out = in0;
    1 : out = in1;
    default : out = 0;
    endcase
end

endmodule