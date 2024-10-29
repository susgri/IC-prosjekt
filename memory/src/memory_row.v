  
`timescale 1 ns / 1 ps
module memoryRow(S, op, data_input, data_output);
	
input op ;
wire op ;
input S ;
wire S ;
input [0:7] data_input ;
wire [0:7] data_input ;
input [0:7] data_output ;
wire [0:7] data_output ; 


bitcel B0(S, op, data_input[0], data_output[0]);
bitcel B1(S, op, data_input[1], data_output[1]); 
bitcel B2(S, op, data_input[2], data_output[2]); 
bitcel B3(S, op, data_input[3], data_output[3]);
bitcel B4(S, op, data_input[4], data_output[4]); 	
bitcel B5(S, op, data_input[5], data_output[5]); 
bitcel B6(S, op, data_input[6], data_output[6]); 
bitcel B7(S, op, data_input[7], data_output[7]); 


endmodule