`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2026 11:01:29
// Design Name: 
// Module Name: T_FF
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


module T_FF(
    input T,clk,rst,
    output reg Q,
    output Qbar );

always @(posedge clk or posedge rst) begin
    if (rst)
        Q <= 0;  
    else if (T)
        Q <= ~Q;     
    else
        Q <= Q;      
end

assign Qbar = ~Q;

endmodule
