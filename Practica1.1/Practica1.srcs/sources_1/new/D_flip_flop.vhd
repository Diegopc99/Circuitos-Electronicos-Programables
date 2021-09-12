----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.09.2020 19:07:31
-- Design Name: 
-- Module Name: D_flip_flop - Behavioral
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

entity D_flip_flop is
    Port ( clk : in STD_LOGIC;
           d : in STD_LOGIC;
           reset : in STD_LOGIC;
           q : out STD_LOGIC);
end D_flip_flop;

architecture Behavioral of D_flip_flop is

begin

process(clk,d,reset)
begin

if(clk'event and clk='1')then

    if(reset='1') then
        q<='0';
    else
        q<=d;
    end if;
    
end if;

end process;

end Behavioral;
