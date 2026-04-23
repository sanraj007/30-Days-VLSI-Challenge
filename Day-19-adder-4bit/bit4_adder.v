`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.04.2026 20:29:27
// Design Name: 
// Module Name: bit4_adder
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


module bit4_adder(
    input [3:0]A,B,
    input cin,
    output [3:0]sum,
    output cout
    );
    wire w1,w2,w3;
    full_adder fa0(.a(A[0]),.b(B[0]),.cin(cin),.sum(sum[0]),.cout(w1));
    full_adder fa1(.a(A[1]),.b(B[1]),.cin(cin),.sum(sum[1]),.cout(w2));
    full_adder fa2(.a(A[2]),.b(B[2]),.cin(cin),.sum(sum[2]),.cout(w3));
    full_adder fa3(.a(A[3]),.b(B[3]),.cin(cin),.sum(sum[3]),.cout(cout));

endmodule
