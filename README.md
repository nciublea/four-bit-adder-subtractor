# 4-bit Adder/Subtractor module

To ensure the proper operation, pay attention to the orientation of the *Diligent Nexys 3* FPGA board.

The row of switches should be at the bottom of the board, with the switch's ON setting
being the direction towards the FPGA chip in the centre.

-----------------------------------------

*To give an **input** to the system, create a UCF file assigning these inputs:

Input A0 is the FIRST from the right side labelled "T5"

Input A1 is the SECOND from the right side labelled "V8"

Input A2 is the THIRD on the right side labelled "U8"

Input A3 is the FOURTH on the right side labelled "N8"

Input B0 is the FIFTH from the right side labelled "M8"

Input B1 is the SIXTH from the right side labelled "V9"

Input B2 is the SEVENTH from the right side labelled "T9"

Input B3 is the EIGHTH from the right side labelled "T10"

**Input "sel" is the button in the centre surrounded by 1 button on each side. It is on the
  right side of the FPGA board. When left alone, addition will be performed. When pressed,
  the subtraction operation will be performed.

-----------------------------------------

*The **output** of the system:

Assign the outputs to specific LED diode locations in the same UCF file as the inputs.
The output of the system will be displayed on the 7-segment display of the FPGA board if done correctly.
