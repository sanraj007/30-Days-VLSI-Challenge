`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.05.2026 23:23:37
// Design Name: 
// Module Name: stopwatch_tb
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
module stopwatch_tb(

    );
reg clk, rst, start, stop;
wire [6:0] seg;
wire [5:0] time_out;

stopwatch uut (.clk(clk),.rst(rst),.start(start),.stop(stop),
              .seg(seg),.time_out(time_out));

always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;
    start = 0;
    stop = 0;

    #10 rst = 0;

    #10 start = 1;
    #10 start = 0;

    #200;

    stop = 1;
    #10 stop = 0;

    #50;

    rst = 1;
    #10 rst = 0;

    $finish;
end
initial begin
    $monitor("time=%0t | count=%d | seg=%b",
              $time, time_out, seg);
end

endmodule
