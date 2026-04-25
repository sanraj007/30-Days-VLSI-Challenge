`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2026 20:53:29
// Design Name: 
// Module Name: Pr_encoder_tb
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


module Pr_encoder_tb(

    );
reg [3:0] D;
wire [1:0] Y;
wire valid;

priority_encoder uut (D, Y, valid);

initial begin
    D = 4'b0000; #10;
    D = 4'b0001; #10;
    D = 4'b0011; #10;
    D = 4'b0110; #10;
    D = 4'b1100; #10;
    D = 4'b1000; #10;

    #20 $finish;
end

endmodule
