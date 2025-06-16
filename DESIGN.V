// ram.v
module ram (
    input  wire       clk,
    input  wire       write_enable,
    input  wire [7:0] address,
    input  wire [7:0] data_in,
    output reg  [7:0] data_out
);
  reg [7:0] mem [0:255];  // 256 × 8-bit RAM

  always @(posedge clk) begin
    if (write_enable)
      mem[address] <= data_in;
    else
      data_out <= mem[address];
  end
endmodule
