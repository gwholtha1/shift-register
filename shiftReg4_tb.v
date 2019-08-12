`include "shiftReg4.v"

module shiftReg4_tb();

reg clk;
reg s_in;
wire s_out;

shiftReg4 sr4(
  .shift_in(s_in),
  .clock(clk),
  .shift_out(s_out)
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
  #10 s_in = 1;
  #10 s_in = 0;
  #10 s_in = 1;
  #10 s_in = 0;
  #40 $finish;
end
  
endmodule
