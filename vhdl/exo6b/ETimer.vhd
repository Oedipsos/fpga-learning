----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:36:25 12/11/2020 
-- Design Name: 
-- Module Name:    ETimer - Behavioral 
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

entity ETimer is
port(
	clk1    : IN  std_logic;
	start_i : IN  std_logic;
	stop_i  : IN  std_logic;
	leds_o  : OUT std_logic_vector(7 downto 0)
);
end ETimer;

architecture Behavioral of ETimer is

	constant max_time : unsigned(7 downto 0) := "11111111";
	constant total_blink_t : unsigned(5 downto 0) := "110001";
	constant max_blink_t : integer := 4;
	constant max_of : unsigned(3 downto 0) := "1111";

	type State is (S, R, O); -- Stopped, Running, Overflowed
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
		
		variable t : unsigned(7 downto 0) := "00000000";    -- Timer
		variable n_of, tmp : unsigned (3 downto 0) := "0000";    -- Number of overflows
		variable blink_t : integer range 0 to 4; -- Blink Timer
	begin
		if (rising_edge(clk2)) then
			case st is
				when S =>
					leds_o <= std_logic_vector(t);
					if (last_start_i = '0' and start_i = '1') then  -- Start or Resume
						st <= R;
					elsif (last_stop_i = '0' and stop_i = '1') then -- Reset
						t := "00000000";
						n_of := "0000";
						st <= S;
					else
						st <= S;
					end if;
				
				when R =>
					if (last_stop_i = '0' and stop_i = '1') then -- Stop
						st <= S;
					elsif (t = max_time) then
						n_of := n_of + 1;
						tmp := n_of;
						if (n_of = max_of) then
							st <= S;
						else
							st <= O;
						end if;
					else
						st <= R;
					end if;
                    
                    t := t + 1;
					leds_o <= std_logic_vector(t);
					
				when O =>
					leds_o(7 downto 4) <= "0000";
					if (blink_t = max_blink_t) then
						tmp := tmp xor n_of;
						blink_t := 0;
						st <= O;
					else
						blink_t := blink_t + 1;
						st <= O;
					end if;
                    
					leds_o(3 downto 0) <= std_logic_vector(tmp);
					
                    if (t = total_blink_t) then
                        st <= R;
					else
						st <= O;
					end if;	
                    
					t := t + 1;

			end case;
			last_start_i <= start_i;
			last_stop_i <= stop_i;
		end if;
	end process;

end Behavioral;
