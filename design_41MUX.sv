// Code your design here
module mux4x1 ( a, b, c, d, s0, s1, out);

     input wire a, b, c, d;
     input wire s0, s1;
     output wire out;

assign out = (!s0*!s1*a) +(s0*!s1*b)+(!s0*s1*c)+(s0*s1*d);

endmodule

