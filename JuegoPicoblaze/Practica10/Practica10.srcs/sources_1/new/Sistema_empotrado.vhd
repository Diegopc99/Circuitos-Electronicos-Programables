----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.11.2020 16:46:56
-- Design Name: 
-- Module Name: Sistema_empotrado - Behavioral
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

entity Sistema_empotrado is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           ps2_clk : in STD_LOGIC;
           ps2_data : in STD_LOGIC;
           LEDs_menor_peso : out STD_LOGIC_VECTOR (7 downto 0);
           LEDs_mayor_peso : out STD_LOGIC_VECTOR (7 downto 0);
           A : out STD_LOGIC;
           B : out STD_LOGIC;
           C : out STD_LOGIC;
           D : out STD_LOGIC;
           E : out STD_LOGIC;
           F : out STD_LOGIC;
           G : out STD_LOGIC;
           DP : out STD_LOGIC;
           an0 : out STD_LOGIC;
           an1 : out STD_LOGIC;
           an2 : out STD_LOGIC;
           an3 : out STD_LOGIC;
           an4 : out STD_LOGIC;
           an5 : out STD_LOGIC;
           an6 : out STD_LOGIC;
           an7 : out STD_LOGIC);
end Sistema_empotrado;

architecture Behavioral of Sistema_empotrado is

component registro_8_bits is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           ce : in STD_LOGIC; 
           d : in STD_LOGIC_VECTOR (7 downto 0);
           q : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component interfaz_ps2 is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           busy : out STD_LOGIC;
           ps2_clk : in STD_LOGIC;
           ps2_data : in STD_LOGIC;
           parity_err : out STD_LOGIC;
           txd_data : out STD_LOGIC_VECTOR (7 downto 0);
           txd_data_valid : out STD_LOGIC
           --txd_data_valid_reg : out STD_LOGIC
           );
end component;

component selec_16_entradas_con_reg_y_bypass is
    Port ( puerto_00_in : in std_logic_vector(7 downto 0);
           puerto_01_in : in std_logic_vector(7 downto 0);
			  puerto_02_in : in std_logic_vector(7 downto 0);
			  puerto_03_in : in std_logic_vector(7 downto 0);
			  puerto_04_in : in std_logic_vector(7 downto 0);
           puerto_05_in : in std_logic_vector(7 downto 0);
			  puerto_06_in : in std_logic_vector(7 downto 0);
			  puerto_07_in : in std_logic_vector(7 downto 0);
			  puerto_08_in : in std_logic_vector(7 downto 0);
           puerto_09_in : in std_logic_vector(7 downto 0);
			  puerto_0A_in : in std_logic_vector(7 downto 0);
			  puerto_0B_in : in std_logic_vector(7 downto 0);
			  puerto_0C_in : in std_logic_vector(7 downto 0);
           puerto_0D_in : in std_logic_vector(7 downto 0);
			  puerto_0E_in : in std_logic_vector(7 downto 0);
			  puerto_0F_in : in std_logic_vector(7 downto 0);
			  mem_in : in std_logic_vector(7 downto 0);
           port_id : in std_logic_vector(7 downto 0);
           reset : in std_logic;
           clk_micro : in std_logic;
           in_port : out std_logic_vector(7 downto 0));
end component;

component selec_16_salidas_con_reg_y_mem_esc_lec is
    Port ( port_id : in std_logic_vector(7 downto 0);
           write_strobe : in std_logic;
			  out_port: in std_logic_vector (7 downto 0);
           sel_puerto_00_out : out std_logic;
           sel_puerto_01_out : out std_logic;
           sel_puerto_02_out : out std_logic;
			  sel_puerto_03_out : out std_logic;
           sel_puerto_04_out : out std_logic;
			  sel_puerto_05_out : out std_logic;
           sel_puerto_06_out : out std_logic;
			  sel_puerto_07_out : out std_logic;
           sel_puerto_08_out : out std_logic;
           sel_puerto_09_out : out std_logic;
           sel_puerto_0A_out : out std_logic;
			  sel_puerto_0B_out : out std_logic;
           sel_puerto_0C_out : out std_logic;
			  sel_puerto_0D_out : out std_logic;
           sel_puerto_0E_out : out std_logic;
			  sel_puerto_0F_out : out std_logic;
			  sel_mem_out : out std_logic;
			  out_port_reg: out std_logic_vector (7 downto 0);
			  address_mem: out std_logic_vector (6 downto 0);
			  reset : in std_logic;
           clk_micro : in std_logic
			  );
end component;

component picoblaze3_empotrado_s7 is
port (port_id       : out std_logic_vector(7 downto 0);	-- Direcci�n del puerto de entrada o de salida
      write_strobe  : out std_logic;							-- Indicaci�n de escritura en puerto de salida direccionado
      out_port      : out std_logic_vector(7 downto 0);	-- Salidas para escribir en el puerto de salida direccionado
      read_strobe   : out std_logic;							-- Indicaci�n de lectura en el puerto de entrada direccionado
      in_port       : in std_logic_vector(7 downto 0);	-- Entradas para leer del puerto de entrada direccionado
      interrupt     : in std_logic;								-- Entrada de petici�n de interrupci�n
      interrupt_ack : out std_logic;							-- Salida de aceptaci�n de interrupci�n
      reset         : in std_logic;								-- Entrada de puesta en estado inicial del microcontrolador
		clk       	  : in std_logic           				-- Reloj principal. Su frecuencia m�xima depende de la FPGA en que se implemente
      );
end component;

component gestion_2_interrupciones is
    Port ( clk_micro : in STD_LOGIC;
           interrupt_ack : in STD_LOGIC;
           peticion_int_0 : in STD_LOGIC;
           peticion_int_1 : in STD_LOGIC;
           reset : in STD_LOGIC;
           interrupt : out STD_LOGIC;
           origen_int : out STD_LOGIC);
end component;

component Control_visualizador_dinamico_8digitos_7seg is
    Port (
           ------------------- ENTRADAS 
           reset : in std_logic;    -- Puesta en estado inicial de todo el circuito
			  clk : in std_logic;      -- Reloj global
			  clk_en : in std_logic;   -- Se�al de habilitaci�n que controla la frecuencia de barrido de los d�gitos
						-- Valores de los segmentos, activos a nivel uno, en orden A,B,C,D,E,F,G,DP
			  vis0_D : in std_logic_vector(7 downto 0); -- Segmentos correspondientes al d�gito 0 (menor peso)
           vis1_D : in std_logic_vector(7 downto 0); -- Segmentos correspondientes al d�gito 1
           vis2_D : in std_logic_vector(7 downto 0); -- Segmentos correspondientes al d�gito 2
		     vis3_D : in std_logic_vector(7 downto 0); -- Segmentos correspondientes al d�gito 3
			  vis4_D : in std_logic_vector(7 downto 0); -- Segmentos correspondientes al d�gito 4
           vis5_D : in std_logic_vector(7 downto 0); -- Segmentos correspondientes al d�gito 5
           vis6_D : in std_logic_vector(7 downto 0); -- Segmentos correspondientes al d�gito 6
		     vis7_D : in std_logic_vector(7 downto 0); -- Segmentos correspondientes al d�gito 7 (mayor peso)			  
			         -- Habilitaciones de los visualizadores
           gvis : in std_logic;  -- Habilitaci�n global del visualizador de 4 d�gitos
           gvis0 : in std_logic; -- Habilitaci�n del d�gito 0 (menor peso)
           gvis1 : in std_logic; -- Habilitaci�n del d�gito 1
           gvis2 : in std_logic; -- Habilitaci�n del d�gito 2
           gvis3 : in std_logic; -- Habilitaci�n del d�gito 3
           gvis4 : in std_logic; -- Habilitaci�n del d�gito 4
           gvis5 : in std_logic; -- Habilitaci�n del d�gito 5
           gvis6 : in std_logic; -- Habilitaci�n del d�gito 6
           gvis7 : in std_logic; -- Habilitaci�n del d�gito 7 (mayor peso)			  
			  ------------------- SALIDAS 
           an0 : out std_logic; -- Anodo del visualizador 0 (menor peso)
           an1 : out std_logic; -- Anodo del visualizador 1
           an2 : out std_logic; -- Anodo del visualizador 2
           an3 : out std_logic; -- Anodo del visualizador 3
           an4 : out std_logic; -- Anodo del visualizador 4
           an5 : out std_logic; -- Anodo del visualizador 5
           an6 : out std_logic; -- Anodo del visualizador 6
           an7 : out std_logic; -- Anodo del visualizador 7 (mayor peso)			  
			         -- Segmentos comunes a los cuatro d�gitos del visualizador
           A : out std_logic;
           B : out std_logic;
           C : out std_logic;
           D : out std_logic;
           E : out std_logic;
           F : out std_logic;
           G : out std_logic;
           DP : out std_logic
			  );
end component;

component Generador_CE_1KHz is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           ce_1KHz : out  STD_LOGIC);
end component;

component memoria_ROM is
    Port (clk : in STD_LOGIC;
          reset : in STD_LOGIC;
          re : in STD_LOGIC;
          address : in STD_LOGIC_VECTOR(7 downto 0);
          data_out : out STD_LOGIC_VECTOR(7 downto 0)
          );
end component;


signal t_reset,t_clk_micro,t_interrupt_ack,t_write_strobe,t_interrupt,t_txd_data_valid :STD_LOGIC :='0';
signal t_dato_out,t_out_PS2,t_port_id,t_in_micro,t_out_port,t_ROM : STD_LOGIC_VECTOR (7 downto 0) :="00000000";
signal t_per_0,t_per_1,t_per_2,t_per_3,t_per_4,t_per_5,t_per_6,t_per_7,t_per_8,t_per_9,t_sel_ROM : STD_LOGIC :='0';
signal t_vis_0,t_vis_1,t_vis_2,t_vis_3,t_vis_4,t_vis_5,t_vis_6,t_vis_7 : STD_LOGIC_VECTOR (7 downto 0) :="00000000";

begin

t_reset<=not reset;

Inst_interfaz_ps2: interfaz_ps2
        Port Map(clk=>clk,
                 reset=>t_reset,
                 busy=>open,
                 ps2_clk=>ps2_clk,
                 ps2_data=>ps2_data,
                 parity_err=>open,
                 txd_data=>t_out_ps2,
                 txd_data_valid=>t_txd_data_valid
                 );

Inst_memoria_ROM: memoria_ROM
        Port Map(clk=>clk,
                 reset=>t_reset,
                 re=>t_sel_ROM,
                 address=>t_dato_out,
                 data_out=>t_ROM
                 );

Inst_generador_ce_1KHz: Generador_CE_1KHz
        Port Map(clk=>clk,
                 reset=>t_reset,
                 ce_1KHz=>t_clk_micro
                 );

Inst_selector_entrada: selec_16_entradas_con_reg_y_bypass
        Port Map( puerto_00_in=>t_out_PS2,
           puerto_01_in =>t_ROM,
			  puerto_02_in =>"00000000",
			  puerto_03_in =>"00000000",
			  puerto_04_in =>"00000000",
           puerto_05_in =>"00000000",
			  puerto_06_in =>"00000000",
			  puerto_07_in =>"00000000",
			  puerto_08_in =>"00000000",
           puerto_09_in =>"00000000",
			  puerto_0A_in =>"00000000",
			  puerto_0B_in =>"00000000",
			  puerto_0C_in =>"00000000",
           puerto_0D_in =>"00000000",
			  puerto_0E_in =>"00000000",
			  puerto_0F_in =>"00000000",
			  mem_in =>"00000000",       
           port_id =>t_port_id,
           reset =>t_reset,
           clk_micro =>clk,
           in_port =>t_in_micro
                 );

Inst_gestor_interrupciones: gestion_2_interrupciones
        Port Map(clk_micro =>clk,
                 interrupt_ack =>t_interrupt_ack,
                 peticion_int_0 =>t_txd_data_valid,
                 peticion_int_1 =>'0',
                 reset =>t_reset,
                 interrupt =>t_interrupt,
                 origen_int =>open
                 );
    
Inst_picoblaze_empotrado: picoblaze3_empotrado_s7
        Port Map(port_id =>t_port_id,
                 write_strobe =>t_write_strobe,
                 out_port =>t_out_port,
                 read_strobe =>open,
                 in_port =>t_in_micro,
                 interrupt =>t_interrupt,
                 interrupt_ack =>t_interrupt_ack,
                 reset =>t_reset,
		         clk =>clk
      );


Inst_selector_salida: selec_16_salidas_con_reg_y_mem_esc_lec 
    Port Map( port_id =>t_port_id,
           write_strobe =>t_write_strobe,
			  out_port =>t_out_port,
           sel_puerto_00_out =>t_per_0,
           sel_puerto_01_out =>t_per_1,
           sel_puerto_02_out =>t_per_2,
			  sel_puerto_03_out =>t_per_3,
           sel_puerto_04_out =>t_per_4,
			  sel_puerto_05_out =>t_per_5,
           sel_puerto_06_out =>t_per_6,
			  sel_puerto_07_out =>t_per_7,
           sel_puerto_08_out =>t_per_8,
           sel_puerto_09_out =>t_per_9,
           sel_puerto_0A_out =>t_sel_ROM,
			  sel_puerto_0B_out =>open,
           sel_puerto_0C_out =>open,
			  sel_puerto_0D_out =>open,
           sel_puerto_0E_out =>open,
			  sel_puerto_0F_out =>open,
			  sel_mem_out =>open,
			  out_port_reg =>t_dato_out,
			  address_mem =>open,
			  reset =>t_reset,
           clk_micro =>clk
        );

Inst_reg_salida_1: registro_8_bits
        Port Map(clk=>clk,
                 reset =>t_reset,
                 ce=>t_per_0,
                 d=>t_dato_out,
                 q=>LEDs_mayor_peso
                );
               
 Inst_reg_salida_2: registro_8_bits
        Port Map(clk=>clk,
                 reset =>t_reset,
                 ce=>t_per_1,
                 d=>t_dato_out,
                 q=>LEDs_menor_peso
                );

Inst_reg_salida_3: registro_8_bits
        Port Map(clk=>clk,
                 reset =>t_reset,
                 ce=>t_per_2,
                 d=>t_dato_out,
                 q=>t_vis_0 -----------bin
                );
                
Inst_reg_salida_4: registro_8_bits
        Port Map(clk=>clk,
                 reset =>t_reset,
                 ce=>t_per_3,
                 d=>t_dato_out,
                 q=>t_vis_1
                );

Inst_reg_salida_5: registro_8_bits
        Port Map(clk=>clk,
                 reset =>t_reset,
                 ce=>t_per_4,
                 d=>t_dato_out,
                 q=>t_vis_2
                );

Inst_reg_salida_6: registro_8_bits
        Port Map(clk=>clk,
                 reset =>t_reset,
                 ce=>t_per_5,
                 d=>t_dato_out,
                 q=>t_vis_3
                );

Inst_reg_salida_7: registro_8_bits
        Port Map(clk=>clk,
                 reset =>t_reset,
                 ce=>t_per_6,
                 d=>t_dato_out,
                 q=>t_vis_4
                );

Inst_reg_salida_8: registro_8_bits
        Port Map(clk=>clk,
                 reset =>t_reset,
                 ce=>t_per_7,
                 d=>t_dato_out,
                 q=>t_vis_5
                );

Inst_reg_salida_9: registro_8_bits
        Port Map(clk=>clk,
                 reset =>t_reset,
                 ce=>t_per_8,
                 d=>t_dato_out,
                 q=>t_vis_6
                );

Inst_reg_salida_10: registro_8_bits
        Port Map(clk=>clk,
                 reset =>t_reset,
                 ce=>t_per_9,
                 d=>t_dato_out,
                 q=>t_vis_7
                );
                
Inst_visualizador_dinamico: Control_visualizador_dinamico_8digitos_7seg 
    Port Map (reset =>t_reset,
			  clk =>t_clk_micro,
			  clk_en =>'1',
			  vis0_D =>t_vis_0,
              vis1_D =>t_vis_1,
              vis2_D =>t_vis_2,
		      vis3_D =>t_vis_3,
			  vis4_D =>t_vis_4,
              vis5_D =>t_vis_5,
              vis6_D =>t_vis_6,
		      vis7_D =>t_vis_7,			  
			         -- Habilitaciones de los visualizadores
           gvis =>'1',   
           gvis0 =>'1', --t_per2 
           gvis1 =>'1',
           gvis2 =>'1', 
           gvis3 =>'1', 
           gvis4 =>'1', 
           gvis5 =>'1', 
           gvis6 =>'1',
           gvis7 =>'1', --t_per9		   
           an0 =>an0, 
           an1 =>an1,
           an2 =>an2,
           an3 =>an3, 
           an4 =>an4, 
           an5 =>an5, 
           an6 =>an6, 
           an7 =>an7, 			  
			         -- Segmentos comunes a los cuatro d�gitos del visualizador
           A =>A,
           B =>B,
           C =>C,
           D =>D,
           E =>E,
           F =>F,
           G =>G,
           DP =>DP
			  );            

end Behavioral;
