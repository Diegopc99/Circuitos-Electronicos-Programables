----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.10.2020 16:28:59
-- Design Name: 
-- Module Name: Reg - Behavioral
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

entity Reg is
    Port ( data_in : in STD_LOGIC_VECTOR (7 downto 0);
           en : in STD_LOGIC;
           reset: in std_logic;
           q : out STD_LOGIC_VECTOR (7 downto 0);
           clk : in STD_LOGIC);
end Reg;

architecture Behavioral of Reg is

signal t_q:std_logic_vector (7 downto 0) :="00000000";

begin

q<=t_q;

process (clk,reset,en)
begin
   if (reset='1') then   
     t_q <= "00000000";
   elsif (clk'event and clk='1') then 
      if(en = '1') then
        t_q<= data_in;
      else
        t_q<=t_q;
      end if;
   end if;
end process;



end Behavioral;
