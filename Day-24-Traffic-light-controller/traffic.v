`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2026 21:51:53
// Design Name: 
// Module Name: traffic_light
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


module traffic_light(
    input clk,rst,
    output reg[1:0] light
    );
    reg [1:0] state;

parameter RED = 2'b00,
          GREEN = 2'b01,
          YELLOW = 2'b10;

always @(posedge clk or posedge rst) begin
    if (rst)
        state <= RED;
    else begin
        case(state)
            RED:    state <= GREEN;
            GREEN:  state <= YELLOW;
            YELLOW: state <= RED;
            default: state <= RED;
        endcase
    end
end

always @(*) begin
    case(state)
        RED:    light = 2'b00;
        GREEN:  light = 2'b01;
        YELLOW: light = 2'b10;
        default: light = 2'b00;
    endcase
end

endmodule
