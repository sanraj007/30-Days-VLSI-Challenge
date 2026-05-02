module control_unit(
    input clk,
    input rst,
    output reg [1:0] sel
);

reg [1:0] state;

parameter ADD = 2'b00,
          SUB = 2'b01,
          AND_OP = 2'b10,
          OR_OP  = 2'b11;

always @(posedge clk or posedge rst) begin
    if (rst)
        state <= ADD;
    else begin
        case(state)
            ADD:    state <= SUB;
            SUB:    state <= AND_OP;
            AND_OP: state <= OR_OP;
            OR_OP:  state <= ADD;
            default: state <= ADD;
        endcase
    end
end

always @(*) begin
    sel = state;
end

endmodule