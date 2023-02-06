module Counter_RisingEdge_DFlipFlop_SyncResetLow(clk, sync_reset, out);

    input clk, sync_reset;
    output [3:0] out;
    
    RisingEdge_DFlipFlop_SyncResetLow ff0(~out[3], clk, sync_reset, out[0]);
    RisingEdge_DFlipFlop_SyncResetLow ff1( out[0], clk, sync_reset, out[1]);
    RisingEdge_DFlipFlop_SyncResetLow ff2( out[1], clk, sync_reset, out[2]);
    RisingEdge_DFlipFlop_SyncResetLow ff3( out[2], clk, sync_reset, out[3]);

endmodule

