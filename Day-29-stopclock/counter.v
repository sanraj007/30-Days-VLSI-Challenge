`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.05.2026 23:17:06
// Design Name: 
// Module Name: counter
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

module counter(
    input clk,
    input rst,
    input enable,
    output reg [5:0] count
);

always @(posedge clk or posedge rst) begin
    if (rst)
        count <= 0;
    else if (enable)
        count <= count + 1;
end
endmodule
