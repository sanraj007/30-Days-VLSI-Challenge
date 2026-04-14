`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2026 21:03:33
// Design Name: 
// Module Name: mux_4to1
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


module mux_4to1(
    input d0,d1,d2,d3,
    input s0,s1,
    output y
    );
    assign y = (s1 == 0 && s0 == 0) ? d0 :
           (s1 == 0 && s0 == 1) ? d1 :
           (s1 == 1 && s0 == 0) ? d2 :
                                  d3;

endmodule
