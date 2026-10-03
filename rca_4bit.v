module rca_4bit(
    input  [3:0] A,
    input  [3:0] B,
    input        Cin,
    output [3:0] Sum,
    output       Cout
);

wire [3:0] carry;

full_adder fa0(
    .A(A[0]),
    .B(B[0]),
    .Cin(Cin),
    .Sum(Sum[0]),
    .Cout(carry[0])
);

full_adder fa1(
    .A(A[1]),
    .B(B[1]),
    .Cin(carry[0]),
    .Sum(Sum[1]),
    .Cout(carry[1])
);

full_adder fa2(
    .A(A[2]),
    .B(B[2]),
    .Cin(carry[1]),
    .Sum(Sum[2]),
    .Cout(carry[2])
);

full_adder fa3(
    .A(A[3]),
    .B(B[3]),
    .Cin(carry[2]),
    .Sum(Sum[3]),
    .Cout(Cout)
);

endmodule
