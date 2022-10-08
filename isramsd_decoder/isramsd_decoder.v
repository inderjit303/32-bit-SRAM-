module isramsd_decoder(d,a,enbl);
input [2:0]a;
input enbl;
output reg [7:0]d;
always @(a) 
  begin
    if(enbl==1)
      begin
        d[0] = !a[0] & !a[1] & !a[2];
        d[1] = a[0] & !a[1] & !a[2];
        d[2] = !a[0] & a[1] & !a[2];
        d[3] = a[0] & a[1] & !a[2];
        d[4] = !a[0] & !a[1] & a[2];
        d[5] = a[0] & !a[1] & a[2];
        d[6] = !a[0] & a[1] & a[2];
        d[7] = a[0] & a[1] & a[2];
      end
    else d = 8'b00000000;
  end
endmodule
