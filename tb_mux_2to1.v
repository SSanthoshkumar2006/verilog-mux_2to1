module tb_mux_2to1;

    reg d0, d1, sel;
    wire y;

    // Instantiate DUT
    mux_2to1 dut (
        .d0(d0),
        .d1(d1),
        .sel(sel),
        .y(y)
    );

    initial begin
        // Enable waveform dump
      $dumpfile("mux_2to1.vcd");
      $dumpvars(0, tb_mux_2to1);

        // Test cases
        d0 = 0; d1 = 0; sel = 0; #10;
        d0 = 0; d1 = 1; sel = 0; #10;
        d0 = 1; d1 = 0; sel = 0; #10;
        d0 = 1; d1 = 1; sel = 0; #10;

        d0 = 0; d1 = 0; sel = 1; #10;
        d0 = 0; d1 = 1; sel = 1; #10;
        d0 = 1; d1 = 0; sel = 1; #10;
        d0 = 1; d1 = 1; sel = 1; #10;

        $finish;
    end

endmodule
