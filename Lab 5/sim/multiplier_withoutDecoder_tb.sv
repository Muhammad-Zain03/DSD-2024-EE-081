module multiplier_tb();

logic [3:0] X;
logic [3:0] P;

multiplier multiplier(
    .X(X),
    .P(P)
);

initial begin
    X = 4'b0000;
    #10;
    X = 4'b0001;
    #10;
    X = 4'b0010;
    #10;
    X = 4'b0011;
    #10;
    X = 4'b0100;
    #10;
    X = 4'b0101;
    #10;
end


endmodule