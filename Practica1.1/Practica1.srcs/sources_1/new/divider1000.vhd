----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.09.2020 09:21:52
-- Design Name: 
-- Module Name: divider1000 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity divider1000 is
    Port ( clkin : in STD_LOGIC;
           clkout : out STD_LOGIC;
           reset : in STD_LOGIC);
end divider1000;

architecture Behavioral of divider1000 is

signal count: integer range 0 to 499:=0;
signal clkout_aux: std_logic:='0';

begin

clkout <= clkout_aux;

process (reset,clkin)
begin
	if reset = '1' then 	clkout_aux <='0';
								count <= 0;
 	elsif
		clkin='1' and clkin'event then
			if count = 499 then clkout_aux <= not clkout_aux;
									 count <= 0;
			else count <= count+1;
			end if;
	end if;
end process;


end Behavioral;
