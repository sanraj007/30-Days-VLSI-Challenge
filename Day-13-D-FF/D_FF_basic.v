`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.04.2026 19:38:46
// Design Name: 
// Module Name: D_FF_basic
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


module D_FF_basic(
    input D,clk,
    output reg Q
    );
    always @(posedge clk) begin
    Q <=D;
    end
endmodule
