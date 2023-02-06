module FallingEdge_DFlipFlop_SyncResetHigh(D,clk,sync_reset,Q);
	input D; // Data input 
	input clk; // clock input 
	input sync_reset; // synchronous reset 
	output reg Q; // output Q 
	always @(negedge clk) begin
		if(sync_reset==1'b1)
			Q <= 1'b0; 
		else 
			Q <= D; 
	end 
endmodule
