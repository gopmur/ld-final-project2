module Counter_FallingEdge_DFlipFlop_AsyncResetHigh(clk, async_reset, out);

    input clk, async_reset;
    output [3:0] out;

    FallingEdge_DFlipFlop_AsyncResetHigh ff0(~out[3], clk, async_reset, out[0]);
    FallingEdge_DFlipFlop_AsyncResetHigh ff1( out[0], clk, async_reset, out[1]);
    FallingEdge_DFlipFlop_AsyncResetHigh ff2( out[1], clk, async_reset, out[2]);
    FallingEdge_DFlipFlop_AsyncResetHigh ff3( out[2], clk, async_reset, out[3]);

endmodule