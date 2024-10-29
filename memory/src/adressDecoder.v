`timescale 1 ns / 1 ps

module adressDecoder(address, select, S);
	
input select ;
wire select ;
input [0:2] address;
wire [0:2] address ;

output [0:7] S;
wire [0:7] S; 

wire notA0;
wire notA1;
wire notA2;
wire notS; 
wire notSelect;


// ADRESS DECODER  //

not G1(notA0, address[0]);
not G2(notA1, address[1]);
not G3(notA2, address[2]);
not G4(notSelect, select);

nor G5(S[0], notSelect, address[2], address[1], address[0]);

nor G6(S[1], notSelect, address[2], address[1], notA0);

nor G7(S[2], notSelect, address[2], notA1, address[0]);		

nor G8(S[3], notSelect, address[2], notA1, notA0);		

nor G9(S[4], notSelect, notA2, address[1], address[0]); 

nor G10(S[5], notSelect, notA2, address[1], notA0);	 

nor G11(S[6], notSelect, notA2, notA1, address[0]);	

nor G12(S[7], notSelect, notA2, notA1, notA0); 

endmodule