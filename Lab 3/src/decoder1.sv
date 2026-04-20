module decoder1

(
    input  logic [2:0] sum,
    input  logic     c_out,
    output logic [6:0] seg
);

assign seg[6] = (~c_out & ~sum[2] & ~sum[1] &  sum[0]) | (~c_out &  sum[2] & ~sum[1] & ~sum[0]) | ( c_out & ~sum[2] &  sum[1] &  sum[0]) | ( c_out &  sum[2] & ~sum[1] &  sum[0]);

assign seg[5] = (~c_out &  sum[2] & ~sum[1] &  sum[0]) | (~c_out &  sum[2] &  sum[1] & ~sum[0]) | ( c_out & ~sum[2] &  sum[1] &  sum[0]) | ( c_out &  sum[2] & ~sum[1] & ~sum[0]) | ( c_out &  sum[2] &  sum[1] & ~sum[0]) | ( c_out &  sum[2] &  sum[1] &  sum[0]);

assign seg[4] = (~c_out & ~sum[2] &  sum[1] & ~sum[0]) | ( c_out &  sum[2] & ~sum[1] & ~sum[0]) | ( c_out &  sum[2] &  sum[1] & ~sum[0]) | ( c_out &  sum[2] &  sum[1] &  sum[0]);

assign seg[3] = (~c_out & ~sum[2] & ~sum[1] &  sum[0]) | (~c_out &  sum[2] & ~sum[1] & ~sum[0]) | (~c_out &  sum[2] &  sum[1] &  sum[0]) | ( c_out & ~sum[2] &  sum[1] & ~sum[0]) | ( c_out &  sum[2] &  sum[1] &  sum[0]);

assign seg[2] = (~c_out & ~sum[2] & ~sum[1] &  sum[0]) | (~c_out & ~sum[2] &  sum[1] &  sum[0]) | (~c_out &  sum[2] & ~sum[1] & ~sum[0]) | (~c_out &  sum[2] & ~sum[1] &  sum[0]) | (~c_out &  sum[2] &  sum[1] &  sum[0]) | ( c_out & ~sum[2] & ~sum[1] &  sum[0]); 

assign seg[1] = (~c_out & ~sum[2] & ~sum[1] &  sum[0]) | (~c_out & ~sum[2] &  sum[1] & ~sum[0]) | (~c_out & ~sum[2] &  sum[1] &  sum[0]) | (~c_out &  sum[2] &  sum[1] &  sum[0]) | ( c_out &  sum[2] & ~sum[1] &  sum[0]);

assign seg[0] = (~c_out & ~sum[2] & ~sum[1] & ~sum[0]) | (~c_out & ~sum[2] & ~sum[1] &  sum[0]) | (~c_out &  sum[2] &  sum[1] &  sum[0]) | ( c_out &  sum[2] & ~sum[1] & ~sum[0]);

endmodule

