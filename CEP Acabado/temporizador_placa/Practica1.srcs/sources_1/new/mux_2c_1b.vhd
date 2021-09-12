----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.09.2020 19:10:35
-- Design Name: 
-- Module Name: mux_2c_1b - Behavioral
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

entity mux_2c_1b is
    Port ( sel : in STD_LOGIC;
           d0 : in STD_LOGIC;
           d1 : in STD_LOGIC;
           q : out STD_LOGIC);
end mux_2c_1b;

architecture Behavioral of mux_2c_1b is

begin

process(sel,d0,d1)
begin

    if(sel = '1') then
        q<=d1;    
    else 
        q <=d0;
    end if;

end process;

end Behavioral;
