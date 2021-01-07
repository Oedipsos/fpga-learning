----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:18:26 12/11/2020 
-- Design Name: 
-- Module Name:    Timer - Behavioral 
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

entity Timer is
port(
	clk1     : IN  std_logic;
	start_i  : IN  std_logic;
	stop_i   : IN  std_logic;
	leds_o   : OUT std_logic_vector(7 downto 0)
);
end Timer;

architecture Behavioral of Timer is

	type State is (S, R);
	signal st : State := S;
	
	signal last_start_i : std_logic;
	signal last_stop_i : std_logic;
	signal clk2 : std_logic := '0';

begin

	clk2gen : process(clk1)
		variable cnt : integer range 0 to 2499999 := 0;
	begin
		if (rising_edge(clk1)) then
			if (cnt = 2499999) then
				cnt := 0;
				clk2 <= not clk2;
			else
				cnt := cnt + 1;
			end if;
		end if;
	end process;
	
	process(clk2, start_i, stop_i, st)
		
		variable t : unsigned(7 downto 0) := "00000000";
		
	begin
		if (rising_edge(clk2)) then
			case st is
				when S =>
					leds_o <= std_logic_vector(t);
					if (last_start_i = '0' and start_i = '1') then  -- Start or Resume
						st <= R;
					elsif (last_stop_i = '0' and stop_i = '1') then -- Reset
						t := "00000000";
						st <= S;
					else
						st <= S;
					end if;
				
				when R =>
					if (last_stop_i = '0' and stop_i = '1') then -- Stop
						st <= S;
					elsif (t = 255) then
						t := "00000000";
						st <= S;
					else
						t := t + 1;
						st <= R;
					end if;
					
					leds_o <= std_logic_vector(t);
			end case;
			last_start_i <= start_i;
			last_stop_i <= stop_i;
		end if;
	end process;

end Behavioral;
