// Date      : 21/10/2021
// Component : Blinky targeting icesugar
// https://github.com/wuxx/icesugar/

module Top (
  output reg [2:0]    io_led,
  input               clk,
  input               reset 
);
  reg        [31:0]   counter;

    assign io_led[0] = ~counter[23];
    assign io_led[1] = ~counter[24];
    assign io_led[2] = ~counter[25];
  
   initial begin
      counter = 0;
   end

   always @(posedge clk)
   begin
      counter <= counter + 1;
   end


endmodule

