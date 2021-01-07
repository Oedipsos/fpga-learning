----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:56:18 12/10/2020 
-- Design Name: 
-- Module Name:    clk_lights - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;



entity clk_lights is
port(
	clk_50MHz_i : IN std_logic;
	leds_o : OUT std_logic_vector(7 downto 0)
);
end clk_lights;

architecture Behavioral of clk_lights is
	
	signal clk_10Hz : std_logic := '0';
	
begin
	
	clkgen_10Hz : process(clk_50MHz_i) -- 50,000,000 / 2 * 2,500,000 = 10
		
		variable count: integer range 0 to 2499999 := 0;
		
	begin
		
		if (rising_edge(clk_50MHz_i)) then
			if count = 2499999 then
				count := 0;
				clk_10Hz <= not clk_10Hz;
			else
				count := count + 1;
			end if;
		end if;
		
	end process;
		
	process(clk_10Hz)
	
--		variable index : integer range 0 to 7 := 0;
		variable tmp : unsigned(7 downto 0) := "00000001";
		
	begin
		
		if (rising_edge(clk_10Hz)) then
			leds_o <= std_logic_vector(tmp);
			tmp := tmp rol 1;
			
--			leds_o <= "00000000";
--			leds_o(index) <= '1';
--			if index = 7 then
--				index := 0;
--			else 
--				index := index + 1;
--			end if;

		end if;
				
	end process;


end Behavioral;

