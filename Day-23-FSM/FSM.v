`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.04.2026 22:00:17
// Design Name: 
// Module Name: FSM_101
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


module FSM_101(
    input clk,rst,x,
    output reg y
    );
reg [1:0] state, next_state;
parameter S0 = 2'b00,
          S1 = 2'b01,
          S2 = 2'b10,
          S3 = 2'b11;

always @(posedge clk or posedge rst) begin
    if (rst)
        state <= S0;
    else
        state <= next_state;
end

always @(*) begin
    case (state)
        S0: next_state = x ? S1 : S0;
        S1: next_state = x ? S1 : S2;
        S2: next_state = x ? S3 : S0;
        S3: next_state = x ? S1 : S2;
        default: next_state = S0;
    endcase
end

always @(*) begin
    case (state)
        S3: y = 1; 
        default: y = 0;
    endcase
end

endmodule
