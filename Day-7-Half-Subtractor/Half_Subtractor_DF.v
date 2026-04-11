`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2026 20:26:00
// Design Name: 
// Module Name: Half_Subtractor_DF
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


module Half_Subtractor_DF(
    input a,b,
    output Borrow,Diff
    );
    assign Diff=a^b;
    assign Borrow=(~a)&b;
endmodule
