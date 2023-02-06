module RisingEdge_DFlipFlop_AsyncResetLow(D,clk,async_reset,Q);
input D; // Data input 
input clk; // clock input 
input async_reset; // asynchronous reset low level 
output reg Q; // output Q 
always @(posedge clk or negedge async_reset) 
	begin
		if(async_reset==1'b0)
			Q <= 1'b0; 
		else 
			Q <= D; 
	end 
endmodule 
