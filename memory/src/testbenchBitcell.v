`timescale 1ns/1ps

module bitcell_testbench();	  
	
	reg sel;
	reg rw;
	reg inp;
	wire outp;
	
	bitcel B1(
		.sel(sel),
		.rw(rw),
		.inp(inp),
		.outp(outp));
		
	initial begin
		// Initialize inputs
	    sel = 0;
	    rw = 0;
	    inp = 0;
	    
	    // Apply test cases
	    #10; sel = 1; rw = 1; inp = 1; // Write '1'
	    #10; sel = 1; rw = 0; inp = 0; // Read '1'
	    
	    #10; sel = 1; rw = 1; inp = 0; // Write '0'
	    #10; sel = 1; rw = 0; inp = 0; // Read '0'
	    
	    #10; sel = 0; rw = 1; inp = 1; // deselect write
	    #10; sel = 0; rw = 0; inp = 1; // deselect read
	    
	    #10;
	    $stop; // End the simulation

	end
	
endmodule: bitcell_testbench