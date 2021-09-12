----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.10.2020 12:26:35
-- Design Name: 
-- Module Name: contador - Behavioral
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

entity contador_estados is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           ce : in STD_LOGIC;
           load : in STD_LOGIC;
           din : in STD_LOGIC_VECTOR (3 downto 0);
           tc : out STD_LOGIC;
           q : out STD_LOGIC_VECTOR (3 downto 0));
end contador_estados;

architecture Behavioral of contador_estados is

signal t_q: std_logic_vector(3 downto 0) :="0000";

begin

q<=t_q;

process(clk,t_q,reset,ce,load,din)
begin


if(rising_edge(clk))then

    if(reset='1')then
        tc<='0';
        t_q<="0000";       
    elsif(load='1')then
        t_q<=din;
    elsif (ce='1' and load='0')then
        t_q<=unsigned(t_q)+1;
    else
        t_q<="0000";     -----Poner si no funciona t_q
    end if;
    
end if;

    if(t_q="1111")then
        tc<='1';
    else
        tc<='0';
    end if;


--q<=t_q;

end process;

end Behavioral;
