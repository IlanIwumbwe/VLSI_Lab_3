module fsm
(
	input logic clk,
	input logic rst,

	output logic ctrl
);

typedef enum {
	WRITE,
	READ
} state_t;

state_t curr_state;
state_t next_state;

logic [4:0] curr_addr;

logic counter_rst;

counter counter_u(
	.clk(clk),
	.rst(counter_rst),
	.en_i(1'b1),

	.out_o(curr_addr)
);

always_comb begin
	if((curr_addr == 5'd31) && (curr_state == WRITE)) begin
		next_state = READ;
		counter_rst = 1'b1;
	end else if ((curr_addr == 5'd31) && (curr_state == READ)) begin
		next_state = WRITE;
		counter_rst = 1'b1;
	end else begin
		next_state = curr_state;
		counter_rst = 1'b0;
	end
end

always_ff @(posedge clk) begin
	if(rst) begin
		curr_state <= WRITE;
		curr_addr <= 'b0;
		counter_rst <= 'b0;	
	end else 
		curr_state <= next_state;
end

always_comb begin
	ctrl = (curr_state == WRITE);
end


endmodule


