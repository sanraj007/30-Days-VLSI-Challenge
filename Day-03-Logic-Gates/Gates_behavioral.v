`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.04.2026 20:49:25
// Design Name: 
// Module Name: Gates_behavioral
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


module Gates_behavioral(
    input a,b,
    output reg y_xor,y_xnor
    );
    always @(*) begin
    y_xor=a^b;
    y_xnor=~(a^b);
    end
endmodule
