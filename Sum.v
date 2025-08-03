`timescale 1ns / 1ps

module Sum(
    input wire A, B, Cin,
    output wire S, Cout
);

    assign S = (A ^ B) ^ Cin;
    assign Cout = (A & B) | (A & Cin) | (B & Cin); 
 

endmodule
