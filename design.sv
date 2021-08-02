// Code your design here
module half_sub
(
    input wire a, b,
    output wire diff, borrow
);

assign diff = a ^ b;
assign borrow = !a & b;

endmodule

