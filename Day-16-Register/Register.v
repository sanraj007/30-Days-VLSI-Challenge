`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.04.2026 19:21:26
// Design Name: 
// Module Name: Register
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


module Register(
    input [3:0]D,
    input clk,rst,
    output reg [3:0]Q
    );
    always @(posedge clk or posedge rst) begin
    if(rst)
    Q<=4'b0000;
    else
    Q<=D;
    end
endmodule
