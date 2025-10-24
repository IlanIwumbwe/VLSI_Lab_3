module counter#(
	parameter DATA_WIDTH = 5
)
(
	input logic clk,
	input logic rst,

	input logic en_i,

	output logic [DATA_WIDTH-1:0] out_o
);
	

logic [DATA_WIDTH-1:0] out = (en_i) ? out_o + 1'b1 : out_o;

always_ff @(posedge clk) begin
	if(rst)
		out_o <= 'b0;		
	else
		out_o <= out;
end

endmodule
