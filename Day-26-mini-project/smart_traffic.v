`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2026 21:50:07
// Design Name: 
// Module Name: smart_traffic
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
module smart_traffic(
    input clk,rst,traffic_A,traffic_B,
    input emergency_A,emergency_B,
    output reg [1:0] light_A,light_B
    );
reg [1:0] state;
parameter S0 = 2'b00,
          S1 = 2'b01,
          S2 = 2'b10,
          S3 = 2'b11;
reg [3:0] timer;
always @(posedge clk or posedge rst) begin
    if (rst) begin
        state <= S0;
        timer <= 0;
    end
    else begin
        timer <= timer + 1;
        case(state)
            S0: begin
                if (emergency_A) begin
                    state <= S0;
                    timer <= 0;
                end
                else if (timer == (traffic_A ? 8 : 4)) begin
                    state <= S1;
                    timer <= 0;
                end
            end
            S1: begin
                if (timer == 2) begin
                    state <= S2;
                    timer <= 0;
                end
            end
            S2: begin
                if (emergency_B) begin
                    state <= S2;
                    timer <= 0;
                end
                else if (timer == (traffic_B ? 8 : 4)) begin
                    state <= S3;
                    timer <= 0;
                end
            end
            S3: begin
                if (timer == 2) begin
                    state <= S0;
                    timer <= 0;
                end
            end

        endcase
    end
end
always @(*) begin
    case(state)

        S0: begin
            light_A = 2'b01; 
            light_B = 2'b00;
        end

        S1: begin
            light_A = 2'b10; 
            light_B = 2'b00;
        end

        S2: begin
            light_A = 2'b00;
            light_B = 2'b01;
        end

        S3: begin
            light_A = 2'b00;
            light_B = 2'b10;
        end

    endcase
end
endmodule
