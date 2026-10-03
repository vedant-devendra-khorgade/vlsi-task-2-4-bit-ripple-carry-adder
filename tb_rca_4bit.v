module tb_rca_4bit;

reg [3:0] A;
reg [3:0] B;
reg Cin;

wire [3:0] Sum;
wire Cout;

rca_4bit uut(
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial begin
    $dumpfile("rca_4bit.vcd");
    $dumpvars(0, tb_rca_4bit);

    $display("A     B     Cin | Cout  Sum");
    $display("-----------------------------");

    A = 4'b0101; B = 4'b0011; Cin = 0;
    #10;
    $display("%b  %b   %b   |  %b    %b", A, B, Cin, Cout, Sum);

    A = 4'b1001; B = 4'b0110; Cin = 0;
    #10;
    $display("%b  %b   %b   |  %b    %b", A, B, Cin, Cout, Sum);

    A = 4'b1111; B = 4'b0001; Cin = 0;
    #10;
    $display("%b  %b   %b   |  %b    %b", A, B, Cin, Cout, Sum);

    A = 4'b1010; B = 4'b0101; Cin = 1;
    #10;
    $display("%b  %b   %b   |  %b    %b", A, B, Cin, Cout, Sum);

    $finish;
end

endmodule
