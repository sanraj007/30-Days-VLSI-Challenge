`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.04.2026 21:07:06
// Design Name: 
// Module Name: decoder_b
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


module decoder_b(
    input a,b,
    output reg d0,d1,d2,d3
    );
    always @(*) begin
    case({a,b})
    2'b00:{d0,d1,d2,d3}=4'b1000;
    2'b01:{d0,d1,d2,d3}=4'b0100;
    2'b10:{d0,d1,d2,d3}=4'b0010;
    2'b11:{d0,d1,d2,d3}=4'b0001;
    endcase
    end

endmodule
