----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.09.2020 16:39:23
-- Design Name: 
-- Module Name: interfaz_ps2 - Behavioral
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

entity interfaz_ps2 is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           busy : out STD_LOGIC;
           ps2_clk : in STD_LOGIC;
           ps2_data : in STD_LOGIC;
           parity_err : out STD_LOGIC;
           txd_data : out STD_LOGIC_VECTOR (7 downto 0);
           txd_data_valid : out STD_LOGIC;
           txd_data_valid_reg : out STD_LOGIC);
end interfaz_ps2;

architecture Behavioral of interfaz_ps2 is

component Maquina_estados is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           busy : out STD_LOGIC;
           parity_err_ant: in STD_LOGIC;
           contador : in std_logic_vector (3 downto 0);
           parity_err : out STD_LOGIC;
           en_parity : out STD_LOGIC;
           en_contador : out STD_LOGIC;
           txd_data_valid : out std_logic);
end component;

component Unidad_Operativa is
    Port ( ps2_clk : in STD_LOGIC;
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           ps2_data : in STD_LOGIC;
           en_contador : in STD_LOGIC;
           en_parity : in STD_LOGIC;
           txd_data_valid : in STD_LOGIC;
           fd_ps2_clk : out STD_LOGIC;
           txd_data : out STD_LOGIC_VECTOR (7 downto 0);
           contador : out STD_LOGIC_VECTOR (3 downto 0);
           parity_err_ant : out STD_LOGIC);
end component;

signal t_fd_ps2_clk,t_en_contador,t_en_parity,t_parity_err_ant, t_txd_data_valid: std_logic :='0';
signal t_contador: std_logic_vector (3 downto 0);

begin

inst_maquina_estados: Maquina_estados
            Port Map(clk=>t_fd_ps2_clk,
                     reset=>reset,
                     contador=>t_contador,
                     parity_err_ant=> t_parity_err_ant,
                     busy=>busy,
                     parity_err=>parity_err,
                     en_parity=>t_en_parity,
                     en_contador=>t_en_contador,
                     txd_data_valid=>t_txd_data_valid 
                );
inst_unidad_operativa: Unidad_Operativa
        Port Map(ps2_clk=>ps2_clk,
                 ps2_data=>ps2_data,
                 clk=>clk,
                 reset=>reset,
                 en_contador=>t_en_contador,
                 en_parity=>t_en_parity,
                 txd_data_valid=>t_txd_data_valid,
                 fd_ps2_clk=>t_fd_ps2_clk,
                 txd_data=>txd_data,
                 contador=>t_contador,
                 parity_err_ant=>t_parity_err_ant
                 );

txd_data_valid<=t_txd_data_valid;


end Behavioral;
