----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:18:48 09/13/2015 
-- Design Name: 
-- Module Name:    decodificador_1_a_2 - Behavioral 
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

entity decodificador_1_a_2 is
    Port ( dec_in : in  STD_LOGIC;
           en : in  STD_LOGIC;
			  out_0 : out  STD_LOGIC;
           out_1 : out  STD_LOGIC);
end decodificador_1_a_2;

architecture Behavioral of decodificador_1_a_2 is

begin

process(dec_in, en)
begin
	if en = '1' then
		case dec_in is
			when '0' => out_0 <= '1'; out_1 <= '0';
			when '1' => out_0 <= '0'; out_1 <= '1';
			when others => out_0 <= '0'; out_1 <= '0';
		end case;
	else out_0 <= '0'; out_1 <= '0';
	end if;
end process;

end Behavioral;

