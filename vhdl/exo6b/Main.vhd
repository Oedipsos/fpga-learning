----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:34:37 12/11/2020 
-- Design Name: 
-- Module Name:    Main - Behavioral 
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

entity Main is
port(
	clk_50MHz_i : IN  std_logic;
	btn_i       : IN  std_logic_vector(1 downto 0);
	leds_o      : OUT std_logic_vector(7 downto 0)
);
end Main;

architecture Behavioral of Main is

begin

	ETimer_e : entity work.ETimer
	port map(
		clk1    => clk_50MHz_i,
		start_i => btn_i(1),
		stop_i  => btn_i(0),
		leds_o  => leds_o
	);

end Behavioral;

