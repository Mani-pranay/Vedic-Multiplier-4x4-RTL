module multiplier_using_vedic_tb();
reg [3:0]A,B;
wire [8:0]R;
wire c1;
multiplier_using_vedic_4bit dut(A,B,R,c1);
initial begin
$monitor("A=%d | B=%d | R=%d(%b) |c1=%b|",A,B,R,R,c1);
A=2;B=2;
#10 A=9;B=2;
#10 A=9;B=9;
#10 A=15; B=15;
#10 A=13;B=13;
#10 $finish;
end
endmodule
