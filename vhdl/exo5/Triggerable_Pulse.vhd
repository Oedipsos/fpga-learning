----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:11:21 12/11/2020 
-- Design Name: 
-- Module Name:    Triggerable_Pulse - Behavioral 
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

entity Triggerable_Pulse is
port(
	clk1   : IN  std_logic; -- 50MHz Clock
	btn_i  : IN  std_logic;
	leds_o : OUT std_logic_vector(1 downto 0)
);
end Triggerable_Pulse;

architecture Behavioral of Triggerable_Pulse is

	type Trigger is (A, S, E); -- Armed, Started, Extended
	signal state : Trigger := A;
	
	signal clk2 : std_logic := '0'; -- 10Hz Clock
	signal last_btn_i : std_logic := '0';
	signal blink : std_logic := '0';

begin

	clk2gen : process(clk1)
	
		variable count : integer range 0 to 2499999 := 0;

	begin
		if (rising_edge(clk1)) then
			if (count = 2499999) then
				clk2 <= not clk2;
				count := 0;
			else
				count := count + 1;
			end if;
		end if;
	end process clk2gen;

	process(clk2, btn_i, state)
	
		variable t1, t2 : integer range 0 to 49 := 0;
	
	begin

		if (rising_edge(clk2)) then
			last_btn_i <= btn_i;
			case state is
				when A =>
					leds_o <= "00";
					if (btn_i = '1' and last_btn_i = '0') then -- Rising edge
						state <= S;
					end if;
					
				when S =>
					leds_o <= "01";
					if (t1 = 49) then -- 5s
						t1 := 0;
						state <= A;
					else
						t1 := t1 + 1;
					end if;
					
					if (btn_i = '1' and last_btn_i = '0') then
						state <= E;
					end if;
					
				when E =>  -- Extend another 5s
					if (t2 = 49) then -- 5s
						t2 := 0;
						blink <= '0';
						state <= S; -- Resume were we stopped
					else
						blink <= not blink;
						t2 := t2 + 1;
					end if;
					leds_o <= blink & '1';

			end case;
		end if;
		
	end process;
	
end Behavioral;

