`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2026 21:50:15
// Design Name: 
// Module Name: beh_mux
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


module beh_mux(
    input a,b,sel,
    output reg y
    );
    always @(*) begin
    if(sel==0)
    y=a;
    else
    y=b;
    end
endmodule
