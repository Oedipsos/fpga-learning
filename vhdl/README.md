## Design Entry with VHDL

For the following exercises you will need to set the pin I/O constraints properly to map FPGA
internal signals to external pins which are connected to things like clocks and pushbuttons
and LEDs. You can download the UCF file from <http://www.iihe.ac.be/~tlenzi/res/basys2.ucf>.
This will connect, for example, the signal `leds_o(7 downto 0)` with the physical LEDs of the
Basys2 board.  

### Exercise 3:
  
  1. Devise simple modules which take two slide switches’ states and AND and OR them, displaying
  the results on LED0 and LED1. 
  2. Make another module that counts the number of button presses and display it on the 8 LEDs
  and an 8-bit binary number. 
  
### Exercise 4:

The Spartan-3AN development kit board contains a 50 MHz clock oscillator. You will need to slow
this down in order to observe the output using the LEDindicators on the board. Design a VHDL
module which divides the clock by a factor of exactly 5 million to obtain a 10 Hz clock. Design
a circuit which takes the 10 Hz clock as a source and produces a moving LED light display on the
8 LEDs: start with LED0 activated and the rest off. At the next CLK pulse make LED1 light turn
off LED0, then LED2, ...

### Exercise 5: Design pulse generators.

Design 1 retriggerable and 1 non-retriggerable pulse generators that uses the 10 Hz clock of
Exercise 4 and a pushbutton and which outputs pulses which are either fixed at 5 sec
(non-retriggerable) or can be extended by pushing the button again within 5 sec (retriggerable).

### Exercise 6: Interval timer.

Make a circuit that will measure the time interval between button presses of two buttons: one
START and one STOP. The fundamental time unit should be 0.1 sec so that with an 8-bit counter
(you can only display 8 bits on the LEDs) you can measure intervals up to 25.6 sec. Output the
binary code of the time on the 8 LEDs. Advanced: extend the range of the LED output by flashing
the hexadecimal digits for some programmable time – say 2-5 seconds for each digit depending on
how well you read binary numbers. You could then increase the resolution to much smaller time
units. Try 2 digits and a fundamental tick of 0.001 s. What is the maximum interval you could
measure with such a counter?
