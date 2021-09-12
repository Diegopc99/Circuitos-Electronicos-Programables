----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.10.2020 14:55:39
-- Design Name: 
-- Module Name: Maquina_estados - Behavioral
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

entity Maquina_estados is
    Port ( clk : in STD_LOGIC;
           fd_ps2_clk : in STD_LOGIC;
           ps2_data: in STD_LOGIC;
           reset : in STD_LOGIC;
           busy : out STD_LOGIC;
           parity_err_ant: in STD_LOGIC;
           contador : in std_logic_vector (3 downto 0);
           parity_err : out STD_LOGIC;
           en_parity : out STD_LOGIC;
           en_contador : out STD_LOGIC;
           txd_data_valid : out std_logic
           
           );
end Maquina_estados;

architecture Behavioral of Maquina_estados is

constant estado0:std_logic_vector(2 downto 0) := "000";
constant estado1:std_logic_vector(2 downto 0) := "001";
constant estado2:std_logic_vector(2 downto 0) := "010";
constant estado3:std_logic_vector(2 downto 0) := "011";
constant estado4:std_logic_vector(2 downto 0) := "100";
signal t_estado,next_estado: std_logic_vector (2 downto 0):="000";

begin

process1: process(clk,reset)
begin

    if(reset='1') then
        t_estado<=estado0;
    elsif(rising_edge(clk)) then
        t_estado<=next_estado;
    end if;

end process;

process2: process(t_estado,contador,ps2_data,parity_err_ant,fd_ps2_clk)
begin

case t_estado is 
    when estado0 =>
        if(fd_ps2_clk = '1')then
            if(ps2_data = '0') then
                next_estado<=estado1;
            else
                next_estado<=estado0;
            end if;
        else
            next_estado<=estado0;
        end if;
        
    when estado1 =>
        if(fd_ps2_clk = '1')then
            if(contador="1001")then    -- 1010
                next_estado<=estado2;
            else
                next_estado<=estado1;
            end if;
        else
            next_estado<=estado1;
        end if;
        
    when estado2=>
        if(parity_err_ant='1') then
            next_estado<=estado3;
        else
            next_estado<=estado4;
        end if;
    when estado3 =>
        next_estado<=estado0;
    when estado4 =>
        next_estado<=estado0; 
           
    when others =>
        next_estado<=estado0;
        
end case;
end process;


process3: process(next_estado)
begin

case next_estado is
    when estado0 =>
        busy<='0';
        en_contador<='0';
        en_parity<='0';
        parity_err<='0';
        txd_data_valid<='0';
    when estado1 =>
        busy<='1';
        en_contador<='1';
        en_parity<='0';
        parity_err<='0';
        txd_data_valid<='0';
    when estado2 =>
        busy<='0';
        en_parity<='1';
        en_contador<='0';
        parity_err<='0';
        txd_data_valid<='0';
    when estado3 =>
        busy<='0';
        en_contador<='0';
        en_parity<='0';
        parity_err<='1';
        txd_data_valid<='0';
    when estado4 =>
        busy<='0';
        en_contador<='0';
        en_parity<='0';
        parity_err<='1';           -- Cambiar
        txd_data_valid<='1';
    when others =>
        busy<='0';
        en_contador<='0';
        en_parity<='0';
        parity_err<='0';
        txd_data_valid<='0';
end case;

end process;

end Behavioral;
