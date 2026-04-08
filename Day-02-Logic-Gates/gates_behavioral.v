`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2026 22:50:34
// Design Name: 
// Module Name: gates_behavioral
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


module gates_behavioral(
    input a,b,
    output reg y_and,y_or
    );
   always @(*) begin
   y_and=a&b;
   y_or=a|b;
   end
endmodule
