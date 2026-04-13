`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2026 21:50:15
// Design Name: 
// Module Name: gate_mux
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


module gate_mux(
    input a,b,sel,
    output y
    );
    wire nsel,w1,w2;

    not (nsel, sel);
    and (w1, a, nsel);
    and (w2, b, sel);
    or  (y, w1, w2);

endmodule
