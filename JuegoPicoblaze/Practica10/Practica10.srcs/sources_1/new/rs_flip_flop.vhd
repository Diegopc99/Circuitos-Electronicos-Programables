----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:31:37 09/13/2015 
-- Design Name: 
-- Module Name:    registro_rs_2_bits - Behavioral 
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

entity rs_flip_flop is
    Port ( reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           r : in  STD_LOGIC;
           s : in  STD_LOGIC;
           q : out  STD_LOGIC);
end rs_flip_flop;

architecture Behavioral of rs_flip_flop is

begin

process(reset, clk)
begin
	if reset = '1' then
		q <= '0';
	elsif (clk = '1' and clk'event) then
		if s = '1' then
			q <= '1';
		elsif r = '1' then
			q <= '0';
		end if;
	end if;
end process;

end Behavioral;

