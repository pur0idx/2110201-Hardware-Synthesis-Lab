import cocotb
from cocotb.triggers import Timer

@cocotb.test()
async def SevenSegmentDecoderTB(dut):
    """Try accessing the design."""
    dut._log.info("Running test!")
    # create a testbench here
    # written by my labmate, Arin Ariyata
    expected_Segments = [
        0b00000011,  # 0
        0b10011111,  # 1
        0b00100101,  # 2
        0b00001101,  # 3
        0b10011001,  # 4
        0b01001001,  # 5
        0b01000001,  # 6
        0b00011111,  # 7
        0b00000001,  # 8
        0b00001001,  # 9
        0b00010001,  # A
        0b11000001,  # B
        0b01100011,  # C
        0b10000101,  # D
        0b01100001,  # E
        0b01110001   # F
    ]
    for i in range(16):
        dut.DataIn.value = i
        await Timer(1, units='ns')
        assert dut.Segments.value == expected_Segments[i]

    dut._log.info("Test Complete")
