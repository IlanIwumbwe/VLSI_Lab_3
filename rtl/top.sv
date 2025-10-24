module top
#(
	parameter ADDR_WIDTH = 5,
	parameter DATA_WIDTH = 32
)
(
	input logic clk,
	input logic rst,

	output logic [DATA_WIDTH-1:0] data_o
);

logic [ADDR_WIDTH-1:0] addr_in;
logic [15:0] half_data_in;
logic fsm_ctrl;

counter counter_u(
	.clk(clk),
	.rst(rst),
	.en_i(1'b1),

	.out_o(addr_in)
);

fsm fsm_u(
	.clk(clk),
	.rst(rst),

	.ctrl(fsm_ctrl)
);

analyser analyser_u(
	.clk(clk),
	.rst(rst),
	.en_i(fsm_ctrl),
	
	.data_out(half_data_in)
);

TS1N65LPLL32X32M4 ram_u(
	.CLK(clk),
	.CEB(1'b0),
	.WEB(~fsm_ctrl),

	.A(addr_in),
	.D({half_data_in, half_data_in}),
	.BWEB(32'b0),
	.Q(data_o),
	.TSEL(2'b01)
);

endmodule
