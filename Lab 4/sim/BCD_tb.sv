module BCD_tb;
logic [4:0] in;
logic [7:0] out;

BCD BCD1 (
.in(in),
.out(out)
);

initial begin

in = 5'b00111;
#10;
in = 5'b10100;
#10;
in = 5'b11110;
#10;
in = 5'b11111;
#10;

$stop;
end

endmodule