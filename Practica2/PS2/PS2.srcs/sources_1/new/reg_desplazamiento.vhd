----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.10.2020 12:33:32
-- Design Name: 
-- Module Name: reg_desplazamiento - Behavioral
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

entity reg_desplazamiento is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           load : in STD_LOGIC;
           msb_in : in STD_LOGIC;
           shift_enable : in STD_LOGIC;
           data_in : in STD_LOGIC_VECTOR (10 downto 0);
           lsb_out : out STD_LOGIC;
           q_shift : out STD_LOGIC_VECTOR (10 downto 0));
end reg_desplazamiento;

architecture Behavioral of reg_desplazamiento is

signal t_q_shift:std_logic_vector(10 downto 0);

begin

process (clk,load,shift_enable,load,t_q_shift)
begin
q_shift<=t_q_shift;

if(clk'event and clk='1') then
    if(reset='1') then
        t_q_shift<="00000000000";
    elsif(load='1') then
        t_q_shift<=data_in;
    elsif (shift_enable='1') then 
        t_q_shift<= msb_in & t_q_shift(10 downto 1);
    else
        t_q_shift<=t_q_shift;
    end if;
end if;

end process;
lsb_out<=t_q_shift(0);        


end Behavioral;
