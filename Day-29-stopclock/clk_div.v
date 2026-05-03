module clk_div(
    input clk,
    input rst,
    output reg slow_clk
);

reg [25:0] count;
always @(posedge clk or posedge rst) begin
    if (rst) begin
        count <= 0;
        slow_clk <= 0;
    end
    else begin
        count <= count + 1;
        if (count == 50000000) begin
            slow_clk <= ~slow_clk;
            count <= 0;
        end 
        end
end
endmodule