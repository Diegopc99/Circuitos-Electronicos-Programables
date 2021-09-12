----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.09.2020 19:05:46
-- Design Name: 
-- Module Name: registro_contol - Behavioral
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

entity registro_contol is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           ce : in STD_LOGIC;
           d : in STD_LOGIC_VECTOR (7 downto 0);
           q : out STD_LOGIC_VECTOR (7 downto 0));
end registro_contol;

architecture Behavioral of registro_contol is

signal t_q: std_logic_vector(7 downto 0) :="00000000";

begin

process(clk,reset,ce,d,t_q)
begin

if(clk'event and clk='1') then

    if(reset ='1') then
        t_q<="00000000";
    else
        if(ce='1')then
            t_q<=d;
        else
            t_q<=t_q;
        end if;
        
    end if;

end if;

q<=t_q;

end process;
            
end Behavioral;
