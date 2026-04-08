`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.04.2026 20:49:25
// Design Name: 
// Module Name: Gates_dataflow
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


module Gates_dataflow(
    input a,b,
    output y_xor,y_xnor
    );
    assign y_xor=a^b;
    assign y_xnor=~(a^b);
endmodule
