`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2026 21:53:04
// Design Name: 
// Module Name: FA_Gatelevel
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


module FA_Gatelevel(
    input a,b,cin,
    output sum,cy
    );
    wire s1,x1,x2,x3;
    xor (s1,a,b);
    xor(sum,s1,cin);
    and(x1,a,b);
    and(x2,b,cin);
    and(x3,a,cin);
    or(cy,x1,x2,x3);
endmodule
