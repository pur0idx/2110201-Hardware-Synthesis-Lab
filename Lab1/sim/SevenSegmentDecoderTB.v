`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 12/23/2024 05:07:14 AM
// Design Name: Exercise1
// Module Name: SevenSegmentDecoderTB
// Project Name: Exercise1
// Target Devices: Basys3
// Tool Versions: 2023.2
// Description: Testbench for the SevenSegmentDecoder module
//////////////////////////////////////////////////////////////////////////////////


module SevenSegmentDecoderTB ();
  // declare the reg/wire
  reg  [3:0] DataIn;
  wire [7:0] Segments;

  // instantiate the SevenSegmentDecoder module
  SevenSegmentDecoder SevenSegmentDecoderInst (
      .DataIn  (DataIn),
      .Segments(Segments)
  );

  // instantiate variable
  integer flag = 0;
  integer TestCaseNo = 0;

  // task to check the output
  task check_output;
    input integer TestCaseNo;
    input reg [7:0] expected_Segments;  // Expected output
    begin
      if (Segments !== expected_Segments) begin
        $error("ERROR: TestCaseNo %0d | Time = %0t | DataIn = %b | Segments = %b (Expected: %b)",
               TestCaseNo, $time, DataIn, Segments, expected_Segments);
        flag = 1;
      end
    end
  endtask

  // test cases
  initial begin
    // your task : complete this testcase

    // 0
    DataIn = 4'b0000;
    #10;
    check_output(TestCaseNo, 8'b00000011);

    // 1
    TestCaseNo = TestCaseNo + 1;
    DataIn = 4'b0001;
    #10;
    check_output(TestCaseNo, 8'b10011111);

    // 2
    TestCaseNo = TestCaseNo + 1;
    DataIn = 4'b0010;
    #10;
    check_output(TestCaseNo, 8'b00100101);

    // 3
    TestCaseNo = TestCaseNo + 1;
    DataIn = 4'b0011;
    #10;
    check_output(TestCaseNo, 8'b00001101);

    // 4
    TestCaseNo = TestCaseNo + 1;
    DataIn = 4'b0100;
    #10;
    check_output(TestCaseNo, 8'b10011001);

    // 5
    TestCaseNo = TestCaseNo + 1;
    DataIn = 4'b0101;
    #10;
    check_output(TestCaseNo, 8'b01001001);

    // 6
    TestCaseNo = TestCaseNo + 1;
    DataIn = 4'b0110;
    #10;
    check_output(TestCaseNo, 8'b01000001);

    // 7
    TestCaseNo = TestCaseNo + 1;
    DataIn = 4'b0111;
    #10;
    check_output(TestCaseNo, 8'b00011111);

    // 8
    TestCaseNo = TestCaseNo + 1;
    DataIn = 4'b1000;
    #10;
    check_output(TestCaseNo, 8'b00000001);

    // 9
    TestCaseNo = TestCaseNo + 1;
    DataIn = 4'b1001;
    #10;
    check_output(TestCaseNo, 8'b00001001);

    // A
    TestCaseNo = TestCaseNo + 1;
    DataIn = 4'b1010;
    #10;
    check_output(TestCaseNo, 8'b00010001);

    // b
    TestCaseNo = TestCaseNo + 1;
    DataIn = 4'b1011;
    #10;
    check_output(TestCaseNo, 8'b11000001);

    // C
    TestCaseNo = TestCaseNo + 1;
    DataIn = 4'b1100;
    #10;
    check_output(TestCaseNo, 8'b01100011);

    // d
    TestCaseNo = TestCaseNo + 1;
    DataIn = 4'b1101;
    #10;
    check_output(TestCaseNo, 8'b10000101);

    // E
    TestCaseNo = TestCaseNo + 1;
    DataIn = 4'b1110;
    #10;
    check_output(TestCaseNo, 8'b01100001);

    // F
    TestCaseNo = TestCaseNo + 1;
    DataIn = 4'b1111;
    #10;
    check_output(TestCaseNo, 8'b01110001);

    if (flag == 0) begin
      $display("All test cases pass");
    end else begin
      $display("Some test cases fail");
    end
    $finish;
  end
endmodule
