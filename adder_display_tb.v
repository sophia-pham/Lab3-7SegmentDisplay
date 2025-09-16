`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2025 01:48:42 PM
// Design Name: 
// Module Name: adder_display_tb
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


module adder_display_tb();

    wire [6:0] seg;
    reg [3:0] a, b;
    
    adder_display uut(.A(a), .B(b), .seg(seg));
    
    integer i, j;
    
    initial begin
        for (i = 0; i<6; i = i+1) begin
            for (j = 4; j>=0; j = j-1) begin
                a = i; b = j;
                #5;
            end
        end
        $stop;
    end
endmodule
