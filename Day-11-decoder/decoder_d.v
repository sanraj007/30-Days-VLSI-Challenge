`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.04.2026 21:07:06
// Design Name: 
// Module Name: decoder_d
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


module decoder_d(
    input a,b,
    output d0,d1,d2,d3
    );
    assign d0=~a&~b;
    assign d1=~a&b;
    assign d2=a&~b;
    assign d3=a&b;

endmodule
