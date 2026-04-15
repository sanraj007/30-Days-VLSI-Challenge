`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2026 23:03:26
// Design Name: 
// Module Name: gatelevel_HA
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


module gatelevel_HA(
    input a,b,
    output sum,cy
    );
    xor(sum,a,b);
    and(cy,a,b);
endmodule
