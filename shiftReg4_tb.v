`include "shiftReg4.v"

module shiftReg4_tb();

reg clk;
wire s_in;
wire s_out;

shiftReg4 sr4(
  .shiftIn(s_in),
  .clock(clk),
  .shiftOut(s_out)
);

always begin
  #5 clk <= ~clk;
end

initial begin
  $dumpfile("shiftReg4.vcd");
  $dumpvars(0, shiftReg4_tb);
  clk = 0;
  sr4.bit0 = 0;
  sr4.bit1 = 0;
  sr4.bit2 = 0;
  sr4.bit3 = 0;
  s_in = 0;
  #10 s_in = 1;
  #10 s_in = 0;
  #40 s_in = 1;
  #50 s_in = 0;
  #60 s_in = 1;
  #70 s_in = 0;
  #40 $finish
end
  
endmodule
