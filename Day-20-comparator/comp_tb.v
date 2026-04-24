`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.04.2026 21:04:53
// Design Name: 
// Module Name: comp_tb
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


module comp_tb(

    );

reg [3:0] A, B;
wire A_gt_B, A_eq_B, A_lt_B;

comparator uut (A,B,A_gt_B,A_eq_B,A_lt_B);

initial begin
    A = 4'b0011; B = 4'b0010; #10; 
    A = 4'b0101; B = 4'b0101; #10; 
    A = 4'b0001; B = 4'b0110; #10; 

    #20 $finish;
end

endmodule
