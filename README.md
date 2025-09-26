# Lab3-7SegmentDisplay
A full adder which displays results to a 7-segment display. Will be used to implement a multi-digit 7-segment display in the future.

The modules FA.v and FA_4_carry_look.v were written for Lab2-FullAdder, but are used here to implement the adder_display module. The carry lookahead adder instantiaes the full adder module four times to create a 4-bit adder that can produce up to a 5-bit result. For the purpose of this project, the carry lookahead adder is intended to only be used to add to sums of 9 or less.

segment_7_binary takes in a value 0-9 (no input validation) and uses a switch statement to map each possible digit to its cathode configuration, as defined by the Basys3 manual. The output of this module, seg, is 7-bits wide, each bit corresponding with a specific segment in a digit.

The adder_display module instantiates the carry lookahead adder and seven segment display module to display the result of 4-bit addition (up to 4'd9). This project is only capable of displaying one digit, hence the limitation of 9 for the sum.
