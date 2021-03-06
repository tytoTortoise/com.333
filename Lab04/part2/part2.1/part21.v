module part21(clk, rst, q);

input clk, rst;
output reg [3:0] q;

always@(posedge clk or posedge rst)
 begin
  if (rst)
   q <= 0;
  else if (q == 9)
   q <= 0;
  else 
   q <= q + 1;
 end

endmodule