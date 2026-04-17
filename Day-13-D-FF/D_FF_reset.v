`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.04.2026 19:38:46
// Design Name: 
// Module Name: D_FF_reset
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


module D_FF_reset(
    input D,clk,rst,
    output reg Q
    );
    always @(posedge clk or posedge rst)begin
    if(rst)
    Q <=0;
    else
    Q <=D;
    end
endmodule
