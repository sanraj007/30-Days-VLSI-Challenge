`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2026 21:27:05
// Design Name: 
// Module Name: door_lock_tb
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
module door_lock_tb(
    );
reg clk, rst, x;
wire unlock, alarm;
door_lock uut (.clk(clk),.rst(rst),.x(x),.unlock(unlock),.alarm(alarm));
always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;
    x = 0;
    #10 rst = 0;

    @(posedge clk);
    repeat(3) begin
        @(posedge clk) x = 1;
        @(posedge clk) x = 0;
        @(posedge clk) x = 0;
    end

    @(posedge clk) x = 1;
    @(posedge clk) x = 0;
    @(posedge clk) x = 1;
    @(posedge clk) x = 1;
    #20;
    $finish;
end
endmodule