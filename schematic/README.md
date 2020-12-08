## Design Entry with Schematic Capture

### Exercise 1:   

Take the tutorial. Follow the instructions to produce the digital monostable as instructed.
Create a test bench as directed to verify your design in simulation. 

### Exercise 2: 

Using the skills you have acquired in the previous exercise, design a circuit which adds
two 4-bit binary numbers. First, construct the full adder sub-circuit using schematic capture
design entry. Then use four of these sub-circuits to create the full 4-bit adder. Make sure to
connect the inputs and outputs properly and also the carry lines between the different sub-circuits.
Finally, simulate this circuit by writing a test bench in VHDL. Test all possible combinations of
inputs by writing two nested loops of `INTEGERS` counters running from `0` to `15`. You will need to convert
these to `std_logic_vector` of 4 bits by using the function `conv_std_logic_vector(ivar,  4)`. 
Insert a `WAIT` statement in the loop to delay the input test patterns by 10 ns.
