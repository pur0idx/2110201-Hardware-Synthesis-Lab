`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 12/23/2024 04:17:24 AM
// Design Name: Exercise1
// Module Name: SevenSegmentDecoder
// Project Name: Exercise1
// Target Devices: Basys3
// Tool Versions: 2023.2
// Description: Decoder for 7-segment display
//////////////////////////////////////////////////////////////////////////////////


module SevenSegmentDecoder (
    input  wire [3:0] DataIn,
    output reg [7:0] Segments
);
  // Add code here //
  always @(DataIn) begin
    case (DataIn)
      4'b0001: Segments = 8'b10011111; // 1
      4'b0010: Segments = 8'b00100101; // 2
      4'b0011: Segments = 8'b00001101; // 3
      4'b0100: Segments = 8'b10011001; // 4
      4'b0101: Segments = 8'b01001001; // 5
      4'b0110: Segments = 8'b01000001; // 6
      4'b0111: Segments = 8'b00011111; // 7
      4'b1000: Segments = 8'b00000001; // 8
      4'b1001: Segments = 8'b00001001; // 9
      4'b1010: Segments = 8'b00010001; // A
      4'b1011: Segments = 8'b11000001; // b
      4'b1100: Segments = 8'b01100011; // C
      4'b1101: Segments = 8'b10000101; // d
      4'b1110: Segments = 8'b01100001; // E
      4'b1111: Segments = 8'b01110001; // F
      default: Segments = 8'b00000011; // 0
    endcase
  end
  // End of code //

  // cocotb dump waveforms
`ifdef COCOTB_SIM
  initial begin
    $dumpfile("waveform.vcd");  // Name of the dump file
    $dumpvars(0, SevenSegmentDecoder);  // Dump all variables for the top module
  end
`endif
endmodule
