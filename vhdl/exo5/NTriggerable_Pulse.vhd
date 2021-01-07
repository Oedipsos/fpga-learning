----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:37:52 12/10/2020 
-- Design Name: 
-- Module Name:    NTriggerable_Pulse - Behavioral 
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

entity NTriggerable_Pulse is
port(
	clk1  : IN  std_logic;
	btn_i : IN  std_logic;
	led_o : OUT std_logic
);
end NTriggerable_Pulse;

architecture Behavioral of NTriggerable_Pulse is
	
	type NTrigger is (D, E);
	signal state : NTrigger := D;
	
	signal clk2 : std_logic := '0';
	signal last_btn_state : std_logic := '0';
	
begin

	clkgen : process(clk1)
		variable count : integer range 0 to 2499999 := 0;
	begin
		
		if (rising_edge(clk1)) then
			if count = 2499999 then
				count := 0;
				clk2 <= not clk2;
			else
				count := count + 1;
			end if;
		end if;		
		
	end process clkgen;
	

	process(clk2, state)
		variable t : integer range 0 to 49 := 0;
	begin
		if rising_edge(clk2) then
			last_btn_state <= btn_i;
			case state is
				when D =>
					led_o <= '0';
					if (btn_i = '1' and last_btn_state = '0') then -- Rising edge
						state <= E;
					end if;
				
				when E =>
					led_o <= '1';
					if t = 49 then
						t := 0;
						state <= D;
					else
						t := t + 1;
					end if;	
			end case;
		end if;
		
	end process;

end Behavioral;

