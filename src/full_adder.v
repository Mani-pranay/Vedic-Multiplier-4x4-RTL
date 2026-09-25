module full_adder(a,b,cin,s,c);
input a,b,cin;
output c;
output s;
assign s=(a^b^cin);
assign c=(a&b)|(b&cin)|(cin&a);
endmodule
