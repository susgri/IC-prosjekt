`timescale 1 ns / 1 ps

module FSM_tb;

    // Testbench signals
    reg sel;
    reg op;
    wire rw;
    wire valid;

    // Instantiate the FSM module
    FSM uut (
        .sel(sel),
        .op(op),
        .rw(rw),
        .valid(valid)
    );

    // Clock signal (driven by FSM module)
    initial begin
        // Initialize inputs
        sel = 0;
        op = 0;

        // Test sequence
        #15 sel = 1; op = 1;  // Set sel and op high
        #20 sel = 1; op = 0;  // Toggle op
        #20 sel = 0; op = 1;  // Toggle sel
        #20 sel = 0; op = 0;  // Both low
        #20 sel = 1; op = 1;  // Both high again
        #20 $finish;           // End simulation
    end

    // Monitor to print signals to the console for debugging
    initial begin
        $monitor("Time = %0t | sel = %b | op = %b | rw = %b | valid = %b", $time, sel, op, rw, valid);
    end

endmodule

