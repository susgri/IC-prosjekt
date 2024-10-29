//-----------------------------------------------------------------------------
//
// Title       : FSM
// Design      : memory
// Author      : NTNU
// Company     : NTNU
//
//-----------------------------------------------------------------------------
//
// File        : m:\Documents\Ovinger\prosjekt\Project\memory\src\FSM.v
// Generated   : Tue Oct 29 14:16:08 2024
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
//{module {FSM}}
module FSM ( sel ,op ,rw ,valid);

output wire rw ;
output wire valid ;

input wire sel ; 
input wire op ;

reg clk;

// Wires //

wire D1, D0, w1, w2, w3, w4;

// Logic part //

nand G1(w1, valid, rw);
not G2(w2, w1);

and G3(w3, op, sel, w1);

or G4(D0, w3, w2);

nor G5(w4, sel, w2);

nor G6(D1, w4, w2);


// D-Flip-Flops // 

D_flipflop ff0(D0, rw, clk);

D_flipflop ff1(D1, valid, clk);	


// CLK-signal

// Initialising clock to 0
initial clk = 0;

// Clock period of 20ns
always begin
	#10 
	clk = ~clk;
end


endmodule
