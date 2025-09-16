`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2025 01:54:18 PM
// Design Name: 
// Module Name: segment_7_binary_tb
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


module segment_7_binary_tb();

    wire [6:0] seg;
    reg [3:0] data_in;
    
    segment_7_binary uut(.seg(seg), .data_in(data_in));
    integer i;
    
    initial begin
        for(i=0; i<10; i=i+1)begin 
            data_in = i;
            #5;
           
        end
        $stop;
    end

endmodule
