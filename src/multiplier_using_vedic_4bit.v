module multiplier_using_vedic_4bit(
input [3:0]A,B,
output [8:0]R,
output c1    );
wire[23:0]w;

vedic_multiplier_2x2 v0(.c_out(w[1]),.s({w[0],R[1],R[0]}),.a({A[1],A[0]}),.b({B[1],B[0]}));
vedic_multiplier_2x2 v1(.c_out(w[5]),.s({w[4],w[3],w[2]}),.a({A[1],A[0]}),.b({B[3],B[2]}));
vedic_multiplier_2x2 v2(.c_out(w[9]),.s({w[8],w[7],w[6]}),.a({A[3],A[2]}),.b({B[1],B[0]}));
vedic_multiplier_2x2 v3(.c_out(w[18]),.s({w[17],w[16],w[15]}),.a({A[3],A[2]}),.b({B[3],B[2]}));

half_adder h1(.a(w[14]),.b(w[21]),.s(w[22]),.c(w[23]));

full_adder_4bit f0(.c_out(w[14]),.s({w[13], w[12], w[11],w[10]}),.a({w[5],w[4],w[3],w[2]}),.b({w[9],w[8],w[7],w[6]}));
full_adder_4bit f1(.c_out(w[21]),.s({w[20],w[19], R[3], R[2]}),.a({1'b0,1'b0,w[1],w[0]}),.b({w[13],w[12],w[11],w[10]}));
full_adder_4bit f2(.c_out(c1),.s({R[7],R[6],R[5], R[4]}),.a({w[23],w[22],w[20],w[19]}),.b({w[18],w[17],w[16],w[15]}));
assign R[8] = c1;
endmodule
