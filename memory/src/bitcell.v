//-----------------------------------------------------------------------------
//
// Title       : bitcel
// Design      : memory
// Author      : NTNU
// Company     : NTNU
//
//-----------------------------------------------------------------------------
//
// File        : M:\Documents\Ovinger\prosjekt\FSM\memory\src\bitcel.v
// Generated   : Mon Oct 21 14:37:24 2024
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
//{module {bitcel}}
module bitcel ( sel ,rw ,inp ,outp);

output outp ;
wire outp ;

input sel ;
wire sel ;
input rw ;
wire rw ;
input inp ;
wire inp ;

wire notSel;
wire Q;
wire notRw;
wire notQ;
wire R;
wire S;

//}} End of automatically maintained section

// -- Enter your statements here -- //

not G1(notSel, sel);
not G2(notRw, rw);

nor G3(R, notSel, notRw, inp);
and G4(S, sel, rw, inp);

nor G5(Q, R, notQ);
nor G6(notQ, S, Q);

nor G7(outp, notSel, rw, notQ);	 



endmodule