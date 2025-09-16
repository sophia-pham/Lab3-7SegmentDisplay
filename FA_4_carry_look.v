`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 03:15:20 PM
// Design Name: 
// Module Name: FA_4_carry_look
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


module FA_4_carry_look(
    input [3:0] A,
    input [3:0] B,
    output [4:0] S_f
    );
    
    wire [3:0] S; //result without carry
    wire Cin;
    assign Cin = 1'b0;
    wire cout0, cout1, cout2, cout3;
    wire p0, p1, p2, p3;
    wire g0, g1, g2, g3;
    
    assign p0 = A[0] ^ B[0];
    assign p1 = A[1] ^ B[1];
    assign p2 = A[2] ^ B[2];
    assign p3 = A[3] ^ B[3];
    
    assign g0 = A[0] & B[0];
    assign g1 = A[1] & B[1];
    assign g2 = A[2] & B[2];
    assign g3 = A[3] & B[3];
    
    assign cout0 = g0 | (p0 & Cin); //C1
    assign cout1 = g1 | (p1 & cout0); //C2
    assign cout2 = g2 | (p2 & cout1); //C3
    
    FA FA0(.A(A[0]), .B(B[0]), .Cin(Cin), .S(S[0]));
    FA FA1(.A(A[1]), .B(B[1]), .Cin(cout0), .S(S[1]));
    FA FA2(.A(A[2]), .B(B[2]), .Cin(cout1), .S(S[2]));
    FA FA3(.A(A[3]), .B(B[3]), .Cin(cout2), .S(S[3]), .Cout(cout3));
    
    assign S_f = {cout3, S};
endmodule
