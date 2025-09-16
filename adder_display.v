`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2025 01:50:06 PM
// Design Name: 
// Module Name: adder_display
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module adder_display(
    input [3:0] A,
    input [3:0] B,
    output [6:0] seg
    );
    
    wire [4:0] sum;
	
	FA_4_carry_look adder(.A(A), .B(B), .S_f(sum));
	segment_7_binary converter(.data_in(sum[3:0]), .seg(seg));

endmodule
