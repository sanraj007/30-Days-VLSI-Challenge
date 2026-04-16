`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.04.2026 21:40:42
// Design Name: 
// Module Name: SR
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


module SR(
    input S,R,clk,
    output reg Q,
    output Qbar
    );
    always @(posedge clk) begin
    if (S == 0 && R == 0)
        Q <= Q; 
    else if (S == 0 && R == 1)
        Q <= 0;       
    else if (S == 1 && R == 0)
        Q <= 1;       
    else
        Q <= 1'bx;
end

assign Qbar=~Q;

endmodule
