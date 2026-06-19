`timescale 1ns/1ps

module basic_gates_tb;

reg A, B;

wire AND_OUT;
wire OR_OUT;
wire NOT_OUT;
wire XOR_OUT;

basic_gates uut (
    .A(A),
    .B(B),
    .AND_OUT(AND_OUT),
    .OR_OUT(OR_OUT),
    .NOT_OUT(NOT_OUT),
    .XOR_OUT(XOR_OUT)
);

initial
begin
    $display("A B | AND OR NOT(A) XOR");

    A = 0; B = 0; #10;
    $display("%b %b | %b   %b    %b      %b",
             A,B,AND_OUT,OR_OUT,NOT_OUT,XOR_OUT);

    A = 0; B = 1; #10;
    $display("%b %b | %b   %b    %b      %b",
             A,B,AND_OUT,OR_OUT,NOT_OUT,XOR_OUT);

    A = 1; B = 0; #10;
    $display("%b %b | %b   %b    %b      %b",
             A,B,AND_OUT,OR_OUT,NOT_OUT,XOR_OUT);

    A = 1; B = 1; #10;
    $display("%b %b | %b   %b    %b      %b",
             A,B,AND_OUT,OR_OUT,NOT_OUT,XOR_OUT);

    #10;
    $finish;
end

endmodule
