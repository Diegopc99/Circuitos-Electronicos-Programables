----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.09.2020 20:13:01
-- Design Name: 
-- Module Name: D_flip_flop_placa - Behavioral
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

entity D_flip_flop_placa is
    Port ( clk : in STD_LOGIC;
           D : in STD_LOGIC;
           clr : in STD_LOGIC;
           Q : out STD_LOGIC);
end D_flip_flop_placa;

architecture Behavioral of D_flip_flop_placa is

begin

process (clk, clr)
begin
   if clr='1' then   
     Q <= '0';
   elsif (clk'event and clk='1') then 
      Q <= D;
   end if;
end process;


end Behavioral;
