`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.04.2026 20:49:25
// Design Name: 
// Module Name: Gates_gatelevel
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


module Gates_gatelevel(
    input a,b,
    output y_xor,y_xnor
    );
    xor (y_xor,a,b);
    xnor (y_xnor,a,b);
endmodule
