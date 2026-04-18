`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.04.2026 19:18:15
// Design Name: 
// Module Name: JK_FF
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


module JK_FF(
    input j,k,clk,
    output reg Q,
    output Qbar
    );
    

always @(posedge clk) begin
    case ({j,k})
        2'b00: Q <= Q; 
        2'b01: Q <= 0;
        2'b10: Q <= 1; 
        2'b11: Q <= ~Q; 
    endcase
end

assign Qbar = ~Q;

endmodule
