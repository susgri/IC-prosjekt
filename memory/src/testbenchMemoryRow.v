`timescale 1 ns / 1 ps

module memoryRow_tb;

    // Input-signaler
    reg S;
    reg op;
    reg [0:7] data_input;

    // Output-signaler
    wire [0:7] data_output;

    // Instansiering av memoryRow
    memoryRow uut (
        .S(S),
        .op(op),
        .data_input(data_input),
        .data_output(data_output)
    );

    // Testprosedyre
    initial begin
        // Start med S og op deaktivert
        S = 0;
        op = 0;
        data_input = 8'b00000000;

        // Vent 10 ns, sett opp skriving av data
        #10 S = 1; op = 1; data_input = 8'b10101010;  // Forventet: Data skrives til cellen

        // Vent og slå av S for å lagre dataene
        #10 S = 0; op = 0;                           // Forventet: Data holdes uendret i cellen

        // Sjekk at dataen fortsatt er der ved å lese
        #10 S = 1; op = 0;                           // Forventet: data_output = 8'b10101010

        // Endre data_input, men uten å aktivere skriving
        #10 data_input = 8'b11111111;                // Forventet: data_output forblir 8'b10101010
        
        // Skriv nye data
        #10 S = 1; op = 1; data_input = 8'b11001100; // Forventet: Data skrives til cellen

        // Deaktiver S og les data igjen
        #10 S = 1; op = 0;                           // Forventet: data_output = 8'b11001100

        // Avslutt simuleringen
        #10 $finish;
    end

endmodule
