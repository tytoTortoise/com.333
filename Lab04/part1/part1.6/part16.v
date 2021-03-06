module part16(clk, cs, wr, address_r, address_w, d, q);

input clk, cs, wr;
input [7:0] d;
input [3:0] address_w;
input [3:0] address_r;
output reg [7:0] q;
reg [7:0] mem [0:15];

always@(posedge clk)
 begin

  if(cs)
   begin
    if (wr)
     begin 
      mem[address_w] <= d;
     end
    else
     begin
      q <= mem[address_r];
     end
   end
 end

endmodule