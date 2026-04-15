`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.04.2026 21:07:06
// Design Name: 
// Module Name: decoder_g
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


module decoder_g(
    input a,b,
    output d0,d1,d2,d3
    );
    wire na,nb;
    not(na,a);
    not(nb,b);
    and(d0,na,nb);
    and(d1,na,b);
    and(d2,a,nb);
    and(d3,a,b);

endmodule
