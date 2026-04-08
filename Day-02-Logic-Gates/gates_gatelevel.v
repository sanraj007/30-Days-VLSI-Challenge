`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2026 22:56:50
// Design Name: 
// Module Name: gates_gatelevel
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


module gates_gatelevel(
    input a,b,
    output y_and,y_or
    );
    and(y_and,a,b);
    or(y_or,a,b);
endmodule
