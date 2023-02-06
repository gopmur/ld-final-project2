module RisingEdge_DFlipFlop_SyncResetLow(D,clk,sync_reset,Q);
	input D; // Data input 
	input clk; // clock input 
	input sync_reset; // synchronous reset Low level
	output reg Q; // output Q 
	always @(posedge clk) begin
		if(sync_reset==1'b0)
			Q <= 1'b0; 
		else 
			Q <= D; 
	end 
endmodule