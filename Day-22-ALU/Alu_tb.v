`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.04.2026 18:25:45
// Design Name: 
// Module Name: Alu_tb
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


module Alu_tb(

    );
reg [3:0] A, B;
reg [2:0] sel;
wire [3:0] result;
wire carry;

Alu uut (A,B,sel,result,carry);

initial begin
    A = 4'b0101; B = 4'b0011;

    sel = 3'b000; #10; 
    sel = 3'b001; #10; 
    sel = 3'b010; #10; 
    sel = 3'b011; #10;
    sel = 3'b100; #10; 
    sel = 3'b101; #10;

    #20 $finish;
end

endmodule
