module control_unit(
    input clk,
    input rst,
    input start,
    input stop,
    output reg enable
);
reg state;

parameter IDLE = 1'b0,
          RUN  = 1'b1;
always @(posedge clk or posedge rst) begin
    if (rst)
        state <= IDLE;
    else begin
        case(state)
            IDLE: if (start) state <= RUN;
            RUN:  if (stop)  state <= IDLE;
        endcase
    end
end
always @(*) begin
    enable = (state == RUN);
end

endmodule