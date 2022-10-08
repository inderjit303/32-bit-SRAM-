module idata_writer_cktsd(bl,blbar,wl,win);
  input wl,win;
  output reg bl,blbar;
  always @(wl,win) begin
    bl = wl & win;
    blbar = !bl;
  end
endmodule
