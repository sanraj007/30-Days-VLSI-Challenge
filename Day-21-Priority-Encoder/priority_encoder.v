`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2026 20:50:28
// Design Name: 
// Module Name: priority_encoder
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


module priority_encoder(
    input [3:0] D,
    output reg [1:0] Y,
    output reg valid
    );
    always @(*) begin
    casex (D)
        4'b1xxx: begin Y = 2'b11; 
        valid = 1; end
        4'b01xx: begin Y = 2'b10; 
        valid = 1; end
        4'b001x: begin Y = 2'b01; 
        valid = 1; end
        4'b0001: begin Y = 2'b00; 
        valid = 1; end
        default: begin Y = 2'b00; 
        valid = 0; end
    endcase
end
endmodule
