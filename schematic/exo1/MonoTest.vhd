-- Vhdl test bench created from schematic /home/fpga/Documents/phys-314/exo1/PulseMono.sch - Tue Dec  8 12:09:48 2020
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY PulseMono_PulseMono_sch_tb IS
END PulseMono_PulseMono_sch_tb;
ARCHITECTURE behavioral OF PulseMono_PulseMono_sch_tb IS 

   COMPONENT PulseMono
   PORT( X	:	IN	STD_LOGIC; 
          Clk	:	IN	STD_LOGIC; 
          S	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL X	:	STD_LOGIC := '0';
   SIGNAL Clk	:	STD_LOGIC := '0';
   SIGNAL S	:	STD_LOGIC;

BEGIN

   UUT: PulseMono PORT MAP(
		X => X, 
		Clk => Clk, 
		S => S
   );

	clkgen : PROCESS (CLK)
	BEGIN
		CLK <= NOT CLK AFTER 50ns;
	END PROCESS clkgen;
	
-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		X <= '1' AFTER 305ns, '0' AFTER 380ns, '1' AFTER 558ns, '0' AFTER 902ns;
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
