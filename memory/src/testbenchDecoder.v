`timescale 1 ns / 1 ps

module adressDecoder_tb;

// Deklarasjon av input-signaler
reg select;
reg [0:2] address;

// Deklarasjon av output-signaler
wire [0:7] S;

// Instansiering av adressedekoder-modulen
adressDecoder uut (
	.address(address),	
	.select(select),	
    .S(S)
);

// Testprosedyre
initial begin
    // Initial verdier
    select = 0;
    address = 3'b000;
	#10 select = 1;
    // Vent 10 ns og test ulike kombinasjoner av input
    #10 address = 3'b000; 			  // Forventet: S[0] aktiv
    #10 address = 3'b100;             // Forventet: S[1] aktiv
    #10 address = 3'b010;             // Forventet: S[2] aktiv
    #10 address = 3'b110;             // Forventet: S[3] aktiv
    #10 address = 3'b001;             // Forventet: S[4] aktiv
    #10 address = 3'b101;             // Forventet: S[5] aktiv
    #10 address = 3'b011;             // Forventet: S[6] aktiv
    #10 address = 3'b111;             // Forventet: S[7] aktiv

    // Sett select lav igjen og sjekk at ingen utgang er aktiv
    #10 select = 0; address = 3'b000; // Forventet: Ingen aktiv utgang

    // Avslutt simuleringen etter alle testene
    #10 $finish;
end


endmodule
