module full_adder_4bit(a,b,s,c_out);
input [3:0]a,b;
output [3:0]s;
output c_out;
wire [2:0]w;
full_adder f0(.c(w[0]),.s(s[0]),.a(a[0]),.b(b[0]),.cin(1'b0));
full_adder f1(.c(w[1]),.s(s[1]),.a(a[1]),.b(b[1]),.cin(w[0]));
full_adder f2(.c(w[2]),.s(s[2]),.a(a[2]),.b(b[2]),.cin(w[1]));
full_adder f3(.c(c_out),.s(s[3]),.a(a[3]),.b(b[3]),.cin(w[2]));
endmodule
