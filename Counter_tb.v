module Counter_tb;

    reg clk = 0;
    reg reset = 0;

    wire [3:0] falling_edge_async_reset_high;
    wire [3:0] falling_edge_sync_reset_high;
    wire [3:0] rising_edge_async_reset_low;
    wire [3:0] rising_edge_sync_reset_low;

    Counter_FallingEdge_DFlipFlop_AsyncResetHigh counter0(clk, reset, falling_edge_async_reset_high);
    Counter_FallingEdge_DFlipFlop_SyncResetHigh counter1(clk, reset, falling_edge_sync_reset_high);
    Counter_RisingEdge_DFlipFlop_AsyncResetLow counter2(clk, reset, rising_edge_async_reset_low);
    Counter_RisingEdge_DFlipFlop_SyncResetLow counter3(clk, reset, rising_edge_sync_reset_low);

    initial
        begin

            repeat(6)
                #10 clk = ~clk;

            reset = ~reset;
                
            repeat(60)
                #10 clk = ~clk;

            repeat(29)
                #10 clk = ~clk;

            #5 reset = ~reset;
            #5 clk = ~clk;

            repeat(30)
                #10 clk = ~clk;

        end

endmodule