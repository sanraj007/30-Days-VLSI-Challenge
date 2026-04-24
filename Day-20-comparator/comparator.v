`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.04.2026 21:01:33
// Design Name: 
// Module Name: comparator
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


module comparator(
    input [3:0]A,B,
    output reg A_gt_B,A_eq_B,A_lt_B
    );
always @(*) begin
    if (A > B) begin
        A_gt_B = 1;
        A_eq_B = 0;
        A_lt_B = 0;
    end
    else if (A == B) begin
        A_gt_B = 0;
        A_eq_B = 1;
        A_lt_B = 0;
    end
    else begin
        A_gt_B = 0;
        A_eq_B = 0;
        A_lt_B = 1;
    end
end

endmodule
