module stopwatch(
    input clk,
    input rst,
    input start,
    input stop,
    output [6:0] seg,
    output [5:0] time_out
);

wire slow_clk;
wire enable;
wire [3:0] digit;

clk_div div(clk, rst, slow_clk);
control_unit cu(clk, rst, start, stop, enable);
counter cnt(slow_clk, rst, enable, time_out);

assign digit = time_out[3:0];

seg_decoder display(digit, seg);

endmodule