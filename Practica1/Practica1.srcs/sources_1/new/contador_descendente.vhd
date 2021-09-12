----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.09.2020 19:08:43
-- Design Name: 
-- Module Name: contador_descendente - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity contador_descendente is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           ce : in STD_LOGIC;
           load : in STD_LOGIC;
           din : in STD_LOGIC_VECTOR (7 downto 0);
           tc : out STD_LOGIC;
           q : out STD_LOGIC_VECTOR (7 downto 0));
end contador_descendente;

architecture Behavioral of contador_descendente is

signal t_q: std_logic_vector(7 downto 0) :="00000000";

begin

q<=t_q;

process(clk)
begin


if(rising_edge(clk))then

    if(reset='1')then
        tc<='0';
        t_q<="11111111";
    elsif(load='1')then
        t_q<=din;
    elsif (ce='1' and load='0')then
        t_q<=unsigned(t_q)-1;
    else
        t_q<=t_q;
    end if;
    
    if(t_q="00000000")then
        tc<='1';
    else
        tc<='0';
    end if;

end if;

--q<=t_q;

end process;

end Behavioral;
