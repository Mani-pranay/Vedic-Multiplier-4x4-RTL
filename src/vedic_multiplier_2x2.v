module vedic_multiplier_2x2(a,b,s,c_out);
input [1:0]a,b;
output [2:0]s;
output c_out;
wire [3:0]w;
andgate and0(.y(s[0]),.a(a[0]),.b(b[0]));
andgate and1(.y(w[0]),.a(a[1]),.b(b[0]));
andgate and2(.y(w[1]),.a(a[0]),.b(b[1]));
andgate and3(.y(w[2]),.a(a[1]),.b(b[1]));
half_adder ha0(.c(w[3]),.s(s[1]),.a(w[0]),.b(w[1]));
half_adder ha1(.c(c_out),.s(s[2]),.a(w[3]),.b(w[2]));
endmodule
