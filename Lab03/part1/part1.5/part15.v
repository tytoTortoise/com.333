module part15(s0, s1, s2, d, q0, q1, q2, q3, q4);

input s0, s1, s2;
input [3:0] d;
output [3:0] q0, q1, q2, q3, q4;

assign q0 = ~s2&~s1&~s0 ? d : 0;
assign q1 = ~s2&~s1&s0 ? d : 0;
assign q2 = ~s2&s1&~s0 ? d : 0;
assign q3 = ~s2&s1&s0 ? d : 0;
assign q4 = s2&~s1&~s0 ? d : 0;

endmodule
