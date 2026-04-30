`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2026 00:18:34
// Design Name: 
// Module Name: seq
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


module seq(
    input clk,rst,x,
    output reg y
    );
       reg [1:0] state;

parameter S0 = 2'b00,
          S1 = 2'b01,
          S2 = 2'b10;


always @(posedge clk or posedge rst) begin
    if (rst)
        state <= S0;
    else begin
        case (state)
            S0: state <= x ? S1 : S0;
            S1: state <= x ? S1 : S2;
            S2: state <= x ? S1 : S0;
            default: state <= S0;
        endcase
    end
end

always @(*) begin
    case (state)
        S2: y = x ? 1 : 0;
        default: y = 0;
    endcase
end
endmodule
