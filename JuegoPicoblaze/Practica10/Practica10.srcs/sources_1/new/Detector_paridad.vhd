----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.10.2020 19:02:44
-- Design Name: 
-- Module Name: Detector_paridad - Behavioral
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

entity Detector_paridad is
    Port ( data : in STD_LOGIC_VECTOR (7 downto 0);
           reset : in STD_LOGIC;
           parity_bit : in STD_LOGIC;
           en_parity : in STD_LOGIC;
           clk : in STD_LOGIC;
           parity_err_ant : out STD_LOGIC);
end Detector_paridad;

architecture Behavioral of Detector_paridad is

signal compro_parity: std_logic :='0';

begin

process(clk,en_parity)
begin

if(rising_edge(clk)) then
    if(reset='1')then
        parity_err_ant<='0';
        compro_parity<='0';
    elsif(en_parity = '1') then
        
        compro_parity<= (((((((data(0) xor data(1)) xor data(2)) xor data(3)) xor data(4)) xor data(5)) xor data(6)) xor data(7));   
        
        parity_err_ant<= parity_bit xor compro_parity;
    
    end if;
end if;    

end process;

end Behavioral;
