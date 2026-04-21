`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.04.2026 22:50:28
// Design Name: 
// Module Name: shift_reg
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


module shift_reg(
    input clk,rst,s_in,
    output reg [3:0]Q
    );
always @(posedge clk or posedge rst) begin
    if(rst)
        Q <= 4'b0000;
    else
        Q <= {Q[2:0], s_in};
end

endmodule
