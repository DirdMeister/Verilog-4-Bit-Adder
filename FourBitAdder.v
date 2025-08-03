`timescale 1ns / 1ps
 
module FourBitAdder(
    input wire[3:0] A,
    input wire[3:0] B,
    input wire Cin,
    
    output wire[3:0] Sum,
    output wire Cout
);
    
wire carry [2:0];
    
Sum S0 (
    .A(A[0]),
    .B(B[0]),
    .Cin(Cin),
    .S(Sum[0]),
    .Cout(carry[0])
);
Sum S1 (
    .A(A[1]),
    .B(B[1]),
    .Cin(carry[0]),
    .S(Sum[1]),
    .Cout(carry[1])
);
Sum S2 (
    .A(A[2]),
    .B(B[2]),
    .Cin(carry[1]),
    .S(Sum[2]),
    .Cout(carry[2])
);
Sum S3 (
    .A(A[3]),
    .B(B[3]),
    .Cin(carry[2]),
    .S(Sum[3]),
    .Cout(Cout)
);
endmodule
