module Counter_RisingEdge_DFlipFlop_AsyncResetLow(clk, async_reset, out);

    input clk, async_reset;
    output [3:0] out;

    RisingEdge_DFlipFlop_AsyncResetLow ff0(~out[3], clk, async_reset, out[0]);
    RisingEdge_DFlipFlop_AsyncResetLow ff1( out[0], clk, async_reset, out[1]);
    RisingEdge_DFlipFlop_AsyncResetLow ff2( out[1], clk, async_reset, out[2]);
    RisingEdge_DFlipFlop_AsyncResetLow ff3( out[2], clk, async_reset, out[3]);

endmodule

