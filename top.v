module top(
	input [3:0] A, B,
	output [6:0] seg);
	
	wire [4:0] sum;
	
	#FA_4_modulename adder(.A(A), .B(B), .S_f(sum);
	segment_7_binary.v converter(.S_f(sum[3:0]), .seg(seg);

endmodule