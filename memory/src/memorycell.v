//-----------------------------------------------------------------------------
//
// Title       : memorycell
// Design      : memory
// Author      : NTNU
// Company     : NTNU
//
//-----------------------------------------------------------------------------
//
// File        : M:\Documents\Ovinger\prosjekt\FSM\memory\src\memorycell.v
// Generated   : Mon Oct 21 14:48:13 2024
// From        : interface description file
// By          : Itf2Vhdl ver. 1.22
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------
`timescale 1 ns / 1 ps

//{{ Section below this comment is automatically maintained
//   and may be overwritten
//{module {memorycell}}
module memorycell (op ,select ,address ,data_input ,data_output );

input op ;
wire op ;
input select ;
wire select ;
input [0:2] address ;
wire [0:2] address ;
input [0:7] data_input ;
wire [0:7] data_input ;
input [0:7] data_output ;
wire [0:7] data_output ;

//}} End of automatically maintained section


// Wires 
wire [0:7] S;
  

// ADDRESS DECODER //

adressDecoder A(address, select, S);



// MEMORY UNIT //  

// 8 x 8 bit 

// First row // 
memoryRow R1(S[0], op, data_input, data_output); 

// Second row // 
memoryRow R2(S[1], op, data_input, data_output);  


// Third row // 
memoryRow R3(S[2], op, data_input, data_output); 


// Fourth row // 
memoryRow R4(S[3], op, data_input, data_output);    


// Fifth row // 
memoryRow R5(S[4], op, data_input, data_output);   

// Sixth row // 
memoryRow R6(S[5], op, data_input, data_output);   

// Seventh row // 
memoryRow R7(S[6], op, data_input, data_output);   

// Eight row // 
memoryRow R8(S[7], op, data_input, data_output);   



endmodule
