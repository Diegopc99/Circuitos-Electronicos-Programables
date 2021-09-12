----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.10.2020 15:14:06
-- Design Name: 
-- Module Name: Interfaz_ps2_TB - Behavioral
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

entity Interfaz_ps2_TB is
--  Port ( );
end Interfaz_ps2_TB;

architecture Behavioral of Interfaz_ps2_TB is

component interfaz_ps2 is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           busy : out STD_LOGIC;
           ps2_clk : in STD_LOGIC;
           ps2_data : in STD_LOGIC;
           parity_err : out STD_LOGIC;
           txd_data : out STD_LOGIC_VECTOR (7 downto 0);
           txd_data_valid : out STD_LOGIC;
           txd_data_valid_reg : out STD_LOGIC);
end component;

signal clk,reset,busy,ps2_clk,ps2_data,parity_err,txd_data_valid,txd_valid_reg: std_logic :='0';
signal txd_data:std_logic_vector (7 downto 0):="00000000";
constant clk_period: time := 10 ns;
constant ps2_clk_period: time :=100 us;

begin

inst_interfaz_ps2: Interfaz_ps2
        Port Map(clk=>clk,
                 reset=>reset,
                 busy=>busy,
                 ps2_clk=>ps2_clk,
                 ps2_data=>ps2_data,
                 parity_err=>parity_err,
                 txd_data=>txd_data,
                 txd_data_valid=>txd_data_valid
                 );

clk_process: process
begin
    clk<='1';
    wait for clk_period/2;
    clk<='0';
    wait for clk_period/2;
end process;

ps2_clk_process:process
begin
    ps2_clk<='1';
    wait for ps2_clk_period/2;
    ps2_clk<='0';
    wait for ps2_clk_period/2;
end process;


process
begin

reset<='0';
ps2_data<='0';
wait for ps2_clk_period;

ps2_data<='0';
wait for ps2_clk_period;

ps2_data<='1';
wait for ps2_clk_period;

ps2_data<='1';
wait for ps2_clk_period;

ps2_data<='1';
wait for ps2_clk_period;

ps2_data<='0';
wait for ps2_clk_period;

ps2_data<='0';
wait for ps2_clk_period;

ps2_data<='0';
wait for ps2_clk_period;

ps2_data<='1';
wait for ps2_clk_period;

ps2_data<='0';
wait for ps2_clk_period;

ps2_data<='0';
wait for ps2_clk_period;

wait;

end process;

end Behavioral;
