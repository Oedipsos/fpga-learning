----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:00:53 12/09/2020 
-- Design Name: 
-- Module Name:    AND_OR - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AND_OR is
port(
	sw_i    : IN  std_logic_vector(1 downto 0);
	leds_o  : OUT std_logic_vector(1 downto 0)
);
end AND_OR;

architecture Behavioral of AND_OR is

begin

	leds_o(1 downto 0) <= (sw_i(0) AND sw_i(1)) & (sw_i(0) OR sw_i(1));
	
end Behavioral;
