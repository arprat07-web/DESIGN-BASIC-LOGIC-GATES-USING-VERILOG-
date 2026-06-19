module basic_gates(
    input A,
    input B,
    output AND_OUT,
    output OR_OUT,
    output NOT_OUT,
    output XOR_OUT
);

assign AND_OUT = A & B;
assign OR_OUT  = A | B;
assign NOT_OUT = ~A;
assign XOR_OUT = A ^ B;

endmodule
