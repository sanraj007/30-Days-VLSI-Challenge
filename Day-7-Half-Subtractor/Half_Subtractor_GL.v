`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2026 20:26:00
// Design Name: 
// Module Name: Half_Subtractor_GL
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


module Half_Subtractor_GL(
    input a,b,
    output Borrow,Diff
    );
    wire x1;
    not(x1,a);
    xor(Diff,a,b);
    and(Borrow,x1,b);
endmodule
