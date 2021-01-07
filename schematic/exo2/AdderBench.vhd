-- Vhdl test bench created from schematic /home/fpga/Documents/phys-314/exo2/adder.sch - Tue Dec  8 16:00:12 2020
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
ENTITY adder_adder_sch_tb IS
END adder_adder_sch_tb;
ARCHITECTURE behavioral OF adder_adder_sch_tb IS 

   COMPONENT adder
   PORT( A1	:	IN	STD_LOGIC; 
          A2	:	IN	STD_LOGIC; 
          A3	:	IN	STD_LOGIC; 
          A4	:	IN	STD_LOGIC;  
          B1	:	IN	STD_LOGIC; 
          B2	:	IN	STD_LOGIC; 
          B3	:	IN	STD_LOGIC;  
			 B4	:	IN	STD_LOGIC;
          S1	:	OUT	STD_LOGIC; 
          S2	:	OUT	STD_LOGIC;
          S3	:	OUT	STD_LOGIC;
			 S4	:	OUT	STD_LOGIC;
			 R	:	OUT	STD_LOGIC); 

   END COMPONENT;

   SIGNAL A1	:	STD_LOGIC := '1';
   SIGNAL A2	:	STD_LOGIC := '1';
   SIGNAL A3	:	STD_LOGIC := '1';
   SIGNAL A4	:	STD_LOGIC := '0';
   SIGNAL B1	:	STD_LOGIC := '0';
   SIGNAL B2	:	STD_LOGIC := '1';
   SIGNAL B3	:	STD_LOGIC := '0';
   SIGNAL B4	:	STD_LOGIC := '1';
   SIGNAL S1	:	STD_LOGIC;
   SIGNAL S2	:	STD_LOGIC;
   SIGNAL S3	:	STD_LOGIC;
   SIGNAL S4	:	STD_LOGIC;
   SIGNAL R	:	STD_LOGIC;

BEGIN

   UUT: adder PORT MAP(
		A1 => A1, 		
		A2 => A2, 
		A3 => A3, 
		A4 => A4, 
		B1 => B1, 
		B2 => B2, 
		B3 => B3, 
		B4 => B4, 
		S1 => S1, 
		S2 => S2, 
		S3 => S3,
		S4 => S4, 
		R => R
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
