----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.10.2020 16:26:57
-- Design Name: 
-- Module Name: Biestable_ps2_data - Behavioral
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

entity Biestable_ps2_data is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           d : in STD_LOGIC;
           q : out STD_LOGIC);
end Biestable_ps2_data;

architecture Behavioral of Biestable_ps2_data is

begin

process (clk, reset)
begin
   if (reset='1') then   
     q <= '0';
   elsif (clk'event and clk='1') then 
      q <= d;
   end if;
end process;



end Behavioral;
