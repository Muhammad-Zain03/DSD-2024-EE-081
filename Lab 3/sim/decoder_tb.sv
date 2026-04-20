// NOTE : This test bench will check the result displayed on AN7

module decoder_tb;

// Inputs
logic [2:0] a;
logic [2:0] b;
logic    c_in;
logic [2:0] sel;

// Outputs
logic [6:0] seg; // seg [6] = seg_A , seg [5] = seg_B and so on
logic [7:0] an; // an [7] = AN_7 , an [6] = AN_6 and so on

top_adder_decoder MEA (
.a(a),
.b(b),
.c_in(c_in),
.sel(sel),
.seg(seg),
.an(an)
);

initial begin
// Display header
$display ("a\tb\tc_in\tresult(seg)\tan");

// Test Case 1: a = 0 , b = 0 , c_in = 0
a = 0 ; b = 0; c_in = 0; sel = 7;
// wait 10 ns to display
#10;
$display ("%b\t%b\t%b\t%b\t%b", a, b, c_in, seg, an);


// Test Case 2: a = 1 , b = 2 , c_in = 0
a = 1; b = 2; c_in = 0; sel = 7;
// wait 10 ns to display
#10;
$display ("%b\t%b\t%b\t%b\t%b", a, b, c_in, seg, an);


// Test Case 3: a = 3 , b = 3 , c_in = 0
a = 3; b = 3; c_in = 0; sel = 7;
// wait 10 ns to display
#10;
$display ("%b\t%b\t%b\t%b\t%b", a, b, c_in, seg, an);


// Test Case 4: a = 5 , b = 3 , c_in = 1
a = 5; b = 3; c_in = 1; sel = 7;
// wait 10 ns to display
#10;
$display ("%b\t%b\t%b\t%b\t%b", a, b, c_in, seg, an);


// Test Case 5: a = 7 , b = 6 , c_in = 1
a = 5; b = 6; c_in = 1; sel = 7;
// wait 10 ns to display
#10;
$display ("%b\t%b\t%b\t%b\t%b", a, b, c_in, seg, an);


// Test Case 6: a = 7 , b = 7 , c_in = 1
a = 7; b = 7; c_in = 1; sel = 7;
// wait 10 ns to display
#10;
$display ("%b\t%b\t%b\t%b\t%b", a, b, c_in, seg, an);


// Assert expected outputs
if (seg != 7'b0001111)
$display ("ERROR:seg_output_incorrect");
else
$display ("PASS:seg_output_correct");

if (an != 8'b01111111)
$display ("ERROR:an_output_incorrect");
else
$display ("PASS:an_output_correct");

// Add more test cases here if needed
$display ("Now_its_your_turn ! _Try_other_input_combinations_to_explore_the_adder_output.");

end
endmodule
