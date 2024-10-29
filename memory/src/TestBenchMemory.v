`timescale 1 ns / 1 ps

module memorycell_tb;

    // Input signals
    reg op;
    reg select;
    reg [0:2] address;
    reg [0:7] data_input;

    // Output signals
    wire [0:7] data_output;

    // Instantiate the memorycell module
    memorycell uut (
        .op(op),
        .select(select),
        .address(address),
        .data_input(data_input),
        .data_output(data_output)
    );

    // Test procedure
    initial begin
        // Start with all signals deactivated
        select = 0;
        op = 0;
        address = 3'b000;
        data_input = 8'b00000000; 
		
		
		#20;
		select = 1;
		op = 1;	
		address = 3'b100;
		data_input = 8'b10101010; 
		
		#20;
		select = 0;	  	   
		
		#20
		select = 1;
		op = 0;	
		data_input = 8'b00000000; 	 
		
		// End the test
    	#20 $finish;
		
    end



endmodule

