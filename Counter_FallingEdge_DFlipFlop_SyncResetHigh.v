module Counter_FallingEdge_DFlipFlop_SyncResetHigh(clk, sync_reset, out);

    input clk, sync_reset;
    output [3:0] out;

    FallingEdge_DFlipFlop_SyncResetHigh ff0(~out[3], clk, sync_reset, out[0]);
    FallingEdge_DFlipFlop_SyncResetHigh ff1( out[0], clk, sync_reset, out[1]);
    FallingEdge_DFlipFlop_SyncResetHigh ff2( out[1], clk, sync_reset, out[2]);
    FallingEdge_DFlipFlop_SyncResetHigh ff3( out[2], clk, sync_reset, out[3]);

endmodule

