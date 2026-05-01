`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2026 21:21:48
// Design Name: 
// Module Name: door_lock
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
module door_lock(
    input clk,rst,x,
    output reg unlock,alarm
    );
reg [2:0] state;
reg [2:0] wrong_count; 
parameter S0 = 3'b000,S1 = 3'b001,S2 = 3'b010,S3 = 3'b011,S4 = 3'b100;
always @(posedge clk or posedge rst) begin
    if (rst) begin
        state <= S0;
        wrong_count <= 0;end
    else begin
        case(state)
            S0: begin
                if (x) state <= S1;
                else state <= S0;end
            S1: begin
                if (x) state <= S1;
                else state <= S2;end
            S2: begin
                if (x) state <= S3;
                else begin
                    state <= S0;
                    wrong_count <= wrong_count + 1; end
            end
            S3: begin
                if (x) begin
                    state <= S4; end
                else begin
                    state <= S0;
                    wrong_count <= wrong_count + 1; end 
             end
            S4: begin
                state <= S0;
                wrong_count <= 0;end
            default: state <= S0;
        endcase
    end
end
always @(posedge clk or posedge rst) begin
    if (rst) begin
        unlock <= 0;
        alarm  <= 0;
    end
    else begin
        unlock <= (state == S4);
        if (state == S4)
            alarm <= 0;
        else
            alarm <= (wrong_count >= 3);
    end
end
endmodule
