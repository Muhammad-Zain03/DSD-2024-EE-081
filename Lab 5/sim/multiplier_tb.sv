module multiplier_tb();

logic [3:0] X;
logic [2:0] sel;
logic [6:0] seg;
logic [7:0] an;

top_multiplier top_multiplier(
    .X(X),
    .sel(sel),
    .seg(seg),
    .an(an)
);

initial begin
    sel = 7;
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