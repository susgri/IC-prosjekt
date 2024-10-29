//-----------------------------------------------------------------------------
//
// Title       : D_flipflop
// Design      : memory
// Author      : NTNU
// Company     : NTNU
//
//-----------------------------------------------------------------------------
//
// File        : m:\Documents\Ovinger\prosjekt\Project\memory\src\D_flipflop.v
// Generated   : Tue Oct 29 14:29:17 2024
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
//{module {D_flipflop}}
module D_flipflop ( D ,Q ,clk );

output reg Q ;

input wire D ;
input wire clk ; 

// On the rising edge of the clock, assign the D input to Q
always @(posedge clk) begin
	Q <= D;
end

endmodule
