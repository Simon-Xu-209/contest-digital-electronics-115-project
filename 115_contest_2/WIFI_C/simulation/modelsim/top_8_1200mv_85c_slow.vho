-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "08/10/2026 10:17:45"

-- 
-- Device: Altera EP3C40Q240C8 Package PQFP240
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top IS
    PORT (
	tx_c : OUT std_logic;
	ck : IN std_logic;
	res : IN std_logic;
	rx_c : IN std_logic;
	txd : OUT std_logic;
	led : OUT std_logic_vector(7 DOWNTO 0);
	rgb : OUT std_logic_vector(2 DOWNTO 0);
	segcom1 : OUT std_logic_vector(3 DOWNTO 0);
	segcom2 : OUT std_logic_vector(3 DOWNTO 0);
	segdata1 : OUT std_logic_vector(7 DOWNTO 0);
	segdata2 : OUT std_logic_vector(7 DOWNTO 0)
	);
END top;

-- Design Ports Information
-- tx_c	=>  Location: PIN_189,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txd	=>  Location: PIN_166,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[7]	=>  Location: PIN_183,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[6]	=>  Location: PIN_177,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[5]	=>  Location: PIN_176,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[4]	=>  Location: PIN_186,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_173,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_188,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_185,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[0]	=>  Location: PIN_184,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb[2]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb[1]	=>  Location: PIN_107,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rgb[0]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segcom1[3]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segcom1[2]	=>  Location: PIN_93,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segcom1[1]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segcom1[0]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segcom2[3]	=>  Location: PIN_117,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segcom2[2]	=>  Location: PIN_94,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segcom2[1]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segcom2[0]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segdata1[7]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segdata1[6]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segdata1[5]	=>  Location: PIN_95,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segdata1[4]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segdata1[3]	=>  Location: PIN_217,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segdata1[2]	=>  Location: PIN_187,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segdata1[1]	=>  Location: PIN_82,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segdata1[0]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segdata2[7]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segdata2[6]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segdata2[5]	=>  Location: PIN_202,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segdata2[4]	=>  Location: PIN_203,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segdata2[3]	=>  Location: PIN_171,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segdata2[2]	=>  Location: PIN_201,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segdata2[1]	=>  Location: PIN_161,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segdata2[0]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_c	=>  Location: PIN_169,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ck	=>  Location: PIN_150,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_tx_c : std_logic;
SIGNAL ww_ck : std_logic;
SIGNAL ww_res : std_logic;
SIGNAL ww_rx_c : std_logic;
SIGNAL ww_txd : std_logic;
SIGNAL ww_led : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_rgb : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_segcom1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_segcom2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_segdata1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_segdata2 : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|D[13]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ck~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tx_c~output_o\ : std_logic;
SIGNAL \txd~output_o\ : std_logic;
SIGNAL \led[7]~output_o\ : std_logic;
SIGNAL \led[6]~output_o\ : std_logic;
SIGNAL \led[5]~output_o\ : std_logic;
SIGNAL \led[4]~output_o\ : std_logic;
SIGNAL \led[3]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \led[0]~output_o\ : std_logic;
SIGNAL \rgb[2]~output_o\ : std_logic;
SIGNAL \rgb[1]~output_o\ : std_logic;
SIGNAL \rgb[0]~output_o\ : std_logic;
SIGNAL \segcom1[3]~output_o\ : std_logic;
SIGNAL \segcom1[2]~output_o\ : std_logic;
SIGNAL \segcom1[1]~output_o\ : std_logic;
SIGNAL \segcom1[0]~output_o\ : std_logic;
SIGNAL \segcom2[3]~output_o\ : std_logic;
SIGNAL \segcom2[2]~output_o\ : std_logic;
SIGNAL \segcom2[1]~output_o\ : std_logic;
SIGNAL \segcom2[0]~output_o\ : std_logic;
SIGNAL \segdata1[7]~output_o\ : std_logic;
SIGNAL \segdata1[6]~output_o\ : std_logic;
SIGNAL \segdata1[5]~output_o\ : std_logic;
SIGNAL \segdata1[4]~output_o\ : std_logic;
SIGNAL \segdata1[3]~output_o\ : std_logic;
SIGNAL \segdata1[2]~output_o\ : std_logic;
SIGNAL \segdata1[1]~output_o\ : std_logic;
SIGNAL \segdata1[0]~output_o\ : std_logic;
SIGNAL \segdata2[7]~output_o\ : std_logic;
SIGNAL \segdata2[6]~output_o\ : std_logic;
SIGNAL \segdata2[5]~output_o\ : std_logic;
SIGNAL \segdata2[4]~output_o\ : std_logic;
SIGNAL \segdata2[3]~output_o\ : std_logic;
SIGNAL \segdata2[2]~output_o\ : std_logic;
SIGNAL \segdata2[1]~output_o\ : std_logic;
SIGNAL \segdata2[0]~output_o\ : std_logic;
SIGNAL \ck~input_o\ : std_logic;
SIGNAL \ck~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add17~0_combout\ : std_logic;
SIGNAL \res~input_o\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add17~1\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add17~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add17~7\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add17~8_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|cnt_baud~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add17~9\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add17~10_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|cnt_baud~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add17~11\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add17~12_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add17~13\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add17~14_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|cnt_baud~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add17~15\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add17~16_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|cnt_baud~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Equal3~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|cnt_baud~3_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add17~3\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add17~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add17~5\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add17~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Equal3~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|stage_tx.IDLE~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|stage_tx.IDLE~q\ : std_logic;
SIGNAL \inst|uart_tx_u1|Equal3~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|start_cnt~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|start_cnt~q\ : std_logic;
SIGNAL \inst|uart_tx_u1|cnt_bit[0]~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|cnt_bit[1]~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|cnt_bit[1]~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|cnt_bit[2]~3_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|always5~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|always5~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|enable~feeder_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add19~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|always0~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|cnt_rom[3]~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|cnt_rom[3]~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|always0~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~52_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~85_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~86_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~53_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~54_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~58_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~55_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~56_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~57_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~59_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~60_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~1\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~74_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~77_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~75_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~76_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~78_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~79_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~82_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~80_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~81_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~83_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~84_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Equal4~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Send_addr[1]~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Send_addr[1]~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[1]~12_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~14_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|always0~3_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~3\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Send_addr[2]~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[1]~13\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[2]~15_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~28_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~5\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Send_addr[3]~3_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[2]~16\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[3]~17_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~29_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~7\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~8_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Send_addr[4]~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[3]~18\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[4]~19_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~21_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~9\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~10_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Send_addr[5]~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[4]~20\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[5]~22_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~27_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~11\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~12_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Send_addr[6]~5_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[5]~23\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[6]~24_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~26_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~13\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~14_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Send_addr[7]~7_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[6]~25\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[7]~30_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~32_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~13_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~17_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~14_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~15_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~16_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~18_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~23_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~19_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~20_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~21_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~22_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~24_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~25_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~30_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~26_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~28_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~27_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~29_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~31_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~32_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~36_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~33_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~34_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~35_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~37_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~38_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~10_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~8_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~7_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~9_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~11_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~3_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~5_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~12_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~45_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~49_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~47_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~46_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~48_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~50_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~43_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~39_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~40_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~41_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~42_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~44_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~51_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Equal4~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|always0~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Send_addr_w[0]~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|enable~q\ : std_logic;
SIGNAL \inst|uart_tx_u1|always1~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Send_addr_w[0]~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~8_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[0]~10_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[0]~9_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[0]~11_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~65_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~61_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~62_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~63_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~64_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~66_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~67_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~71_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~69_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~68_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~70_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~72_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~73_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Equal4~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|cnt_rom[0]~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|cnt_rom[1]~5_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add19~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|cnt_rom[2]~3_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|SEND_END_cmd~q\ : std_logic;
SIGNAL \inst|uart_tx_u1|SEND_DATA_en~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|SEND_DATA_en~q\ : std_logic;
SIGNAL \inst|uart_tx_u1|receive_ok_en~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|receive_ok_en~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[0]~9_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[1]~12\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[2]~13_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[2]~14\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[3]~15_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[3]~16\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[4]~17_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[4]~18\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[5]~20_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[5]~21\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[6]~22_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[6]~23\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[7]~24_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[7]~25\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[8]~26_combout\ : std_logic;
SIGNAL \rx_c~input_o\ : std_logic;
SIGNAL \inst|uart_rx_u2|rx_reg0~feeder_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|rx_reg0~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|rx_reg1~feeder_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|rx_reg1~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|rx_reg2~feeder_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|rx_reg2~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|rx_reg3~feeder_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|rx_reg3~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|Equal2~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Equal2~1_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|stage_rx~11_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|stage_rx.START~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|stage_rx~10_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_bit[0]~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_bit[1]~2_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Decoder0~1_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_bit[2]~1_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Decoder0~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|stage_rx~9_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|stage_rx.STOP~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|rx_done~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|rx_done~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|R_receiving~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|R_receiving~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|bps_rx_clk_en~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|Equal1~1_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[6]~19_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[0]~10\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[1]~11_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Equal1~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|RECEIVE_END~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|RECEIVE_END~q\ : std_logic;
SIGNAL \inst|receiver_OK_u1|OK~1_combout\ : std_logic;
SIGNAL \inst|receiver_OK_u1|Selector0~0_combout\ : std_logic;
SIGNAL \inst|receiver_OK_u1|state.000~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector5~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector4~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector5~1_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector5~2_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|rx_data[3]~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|rxd[7]~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector2~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector6~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector6~1_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector6~2_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector4~1_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector4~2_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector0~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector0~1_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector1~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector1~1_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector3~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector3~1_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Equal0~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector7~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector7~1_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector2~1_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector2~2_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector2~3_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector1~2_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector1~3_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|state~14_combout\ : std_logic;
SIGNAL \inst|receiver_OK_u1|state~12_combout\ : std_logic;
SIGNAL \inst|receiver_OK_u1|state~14_combout\ : std_logic;
SIGNAL \inst|receiver_OK_u1|state.001~q\ : std_logic;
SIGNAL \inst|receiver_OK_u1|state~13_combout\ : std_logic;
SIGNAL \inst|receiver_OK_u1|state.010~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Equal4~0_combout\ : std_logic;
SIGNAL \inst|receiver_OK_u1|state~11_combout\ : std_logic;
SIGNAL \inst|receiver_OK_u1|state.011~feeder_combout\ : std_logic;
SIGNAL \inst|receiver_OK_u1|state.011~q\ : std_logic;
SIGNAL \inst|receiver_OK_u1|OK~2_combout\ : std_logic;
SIGNAL \inst|receiver_OK_u1|OK~3_combout\ : std_logic;
SIGNAL \inst|receiver_OK_u1|OK~4_combout\ : std_logic;
SIGNAL \inst|receiver_OK_u1|OK~q\ : std_logic;
SIGNAL \inst|uart_tx_u1|always0~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Selector2~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|stage_tx.STOP~q\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[0]~7_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Selector0~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|stage_tx.START~q\ : std_logic;
SIGNAL \inst|uart_tx_u1|Selector1~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|stage_tx.SEND_DATA~q\ : std_logic;
SIGNAL \inst|uart_tx_u1|tx~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|tx~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|tx~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux8~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux8~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|tx~3_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|tx~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|tx~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Add0~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Equal5~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Selector3~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Selector5~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|always0~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|length[0]~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|length[0]~1_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Selector6~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Selector7~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Selector8~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Selector9~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Selector10~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Selector11~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Add2~1\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Add2~3\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Add2~5\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Add2~7\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Add2~9\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Add2~11\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Add2~13\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Add2~15\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Add2~16_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Add2~14_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|count[0]~8_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|count[7]~24_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|count[7]~25_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|count[0]~9\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|count[1]~10_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|count[1]~11\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|count[2]~12_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|count[2]~13\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|count[3]~14_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|count[3]~15\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|count[4]~16_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|count[4]~17\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|count[5]~18_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Add2~8_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Add2~10_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Equal6~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|count[5]~19\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|count[6]~20_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|count[6]~21\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|count[7]~22_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Add2~2_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Add2~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Equal6~1_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Add2~4_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Add2~6_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Equal6~2_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Add2~12_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Equal6~3_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Equal6~4_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Selector3~1_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|state.DATA~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|state~13_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|state~15_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|state~21_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Equal0~1_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Equal0~2_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|state~18_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|state~17_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|state~19_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|state~20_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|state.IDLE~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Selector1~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|state.IPD~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|state~12_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|state~16_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|state.LEN~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|u1|Selector4~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|length_reg[7]~feeder_combout\ : std_logic;
SIGNAL \inst|length_REG[7]~feeder_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|length_reg[5]~feeder_combout\ : std_logic;
SIGNAL \inst|length_REG[5]~feeder_combout\ : std_logic;
SIGNAL \inst|length_REG[2]~feeder_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|length_reg[1]~feeder_combout\ : std_logic;
SIGNAL \inst|length_REG[1]~feeder_combout\ : std_logic;
SIGNAL \inst3|D[0]~72_combout\ : std_logic;
SIGNAL \inst3|D[1]~24_combout\ : std_logic;
SIGNAL \inst3|D[1]~25\ : std_logic;
SIGNAL \inst3|D[2]~26_combout\ : std_logic;
SIGNAL \inst3|D[2]~27\ : std_logic;
SIGNAL \inst3|D[3]~28_combout\ : std_logic;
SIGNAL \inst3|D[3]~29\ : std_logic;
SIGNAL \inst3|D[4]~30_combout\ : std_logic;
SIGNAL \inst3|D[4]~31\ : std_logic;
SIGNAL \inst3|D[5]~32_combout\ : std_logic;
SIGNAL \inst3|D[5]~33\ : std_logic;
SIGNAL \inst3|D[6]~34_combout\ : std_logic;
SIGNAL \inst3|D[6]~35\ : std_logic;
SIGNAL \inst3|D[7]~36_combout\ : std_logic;
SIGNAL \inst3|D[7]~37\ : std_logic;
SIGNAL \inst3|D[8]~38_combout\ : std_logic;
SIGNAL \inst3|D[8]~39\ : std_logic;
SIGNAL \inst3|D[9]~40_combout\ : std_logic;
SIGNAL \inst3|D[9]~41\ : std_logic;
SIGNAL \inst3|D[10]~42_combout\ : std_logic;
SIGNAL \inst3|D[10]~43\ : std_logic;
SIGNAL \inst3|D[11]~44_combout\ : std_logic;
SIGNAL \inst3|D[11]~45\ : std_logic;
SIGNAL \inst3|D[12]~46_combout\ : std_logic;
SIGNAL \inst3|D[12]~47\ : std_logic;
SIGNAL \inst3|D[13]~48_combout\ : std_logic;
SIGNAL \inst3|D[13]~49\ : std_logic;
SIGNAL \inst3|D[14]~50_combout\ : std_logic;
SIGNAL \inst3|D[14]~51\ : std_logic;
SIGNAL \inst3|D[15]~52_combout\ : std_logic;
SIGNAL \inst3|D[15]~53\ : std_logic;
SIGNAL \inst3|D[16]~54_combout\ : std_logic;
SIGNAL \inst3|D[16]~55\ : std_logic;
SIGNAL \inst3|D[17]~56_combout\ : std_logic;
SIGNAL \inst3|D[17]~57\ : std_logic;
SIGNAL \inst3|D[18]~58_combout\ : std_logic;
SIGNAL \inst3|D[18]~59\ : std_logic;
SIGNAL \inst3|D[19]~60_combout\ : std_logic;
SIGNAL \inst3|D[19]~61\ : std_logic;
SIGNAL \inst3|D[20]~62_combout\ : std_logic;
SIGNAL \inst3|D[20]~63\ : std_logic;
SIGNAL \inst3|D[21]~64_combout\ : std_logic;
SIGNAL \inst3|D[21]~65\ : std_logic;
SIGNAL \inst3|D[22]~66_combout\ : std_logic;
SIGNAL \inst3|D[22]~67\ : std_logic;
SIGNAL \inst3|D[23]~68_combout\ : std_logic;
SIGNAL \inst3|D[23]~69\ : std_logic;
SIGNAL \inst3|D[24]~70_combout\ : std_logic;
SIGNAL \inst4|cnt_rgb[1]~2_combout\ : std_logic;
SIGNAL \inst4|cnt_rgb[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|cnt_rgb[2]~1_combout\ : std_logic;
SIGNAL \inst4|cnt_rgb~0_combout\ : std_logic;
SIGNAL \inst4|cnt_rgb[0]~feeder_combout\ : std_logic;
SIGNAL \inst4|Mux1~0_combout\ : std_logic;
SIGNAL \inst3|D[13]~clkctrl_outclk\ : std_logic;
SIGNAL \inst5|S[0]~0_combout\ : std_logic;
SIGNAL \inst5|Mux3~0_combout\ : std_logic;
SIGNAL \inst5|Decoder0~0_combout\ : std_logic;
SIGNAL \inst5|Decoder0~1_combout\ : std_logic;
SIGNAL \inst5|Decoder0~2_combout\ : std_logic;
SIGNAL \inst5|Decoder0~3_combout\ : std_logic;
SIGNAL \inst5|SegData[0]~0_combout\ : std_logic;
SIGNAL \inst|length_REG\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|uart_tx_u1|cnt_rom\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|cnt_rgb\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst3|D\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst|uart_rx_u2|cnt_baud\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|uart_rx_u2|rx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|uart_tx_u1|addr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|uart_rx_u2|cnt_bit\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|uart_rx_u2|rxd\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|uart_rx_u2|u1|count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|uart_rx_u2|u1|length\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|uart_tx_u1|Send_addr_w\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|rgb\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|uart_rx_u2|length_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|S\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|uart_tx_u1|cnt_bit\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|uart_tx_u1|cnt_baud\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|uart_rx_u2|u1|ALT_INV_state.DATA~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|ALT_INV_R_receiving~q\ : std_logic;
SIGNAL \inst|uart_tx_u1|ALT_INV_always0~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Decoder0~3_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Decoder0~2_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Decoder0~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Decoder0~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|ALT_INV_tx~q\ : std_logic;

BEGIN

tx_c <= ww_tx_c;
ww_ck <= ck;
ww_res <= res;
ww_rx_c <= rx_c;
txd <= ww_txd;
led <= ww_led;
rgb <= ww_rgb;
segcom1 <= ww_segcom1;
segcom2 <= ww_segcom2;
segdata1 <= ww_segdata1;
segdata2 <= ww_segdata2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst3|D[13]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|D\(13));

\ck~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ck~input_o\);
\inst|uart_rx_u2|u1|ALT_INV_state.DATA~q\ <= NOT \inst|uart_rx_u2|u1|state.DATA~q\;
\inst|uart_rx_u2|ALT_INV_R_receiving~q\ <= NOT \inst|uart_rx_u2|R_receiving~q\;
\inst|uart_tx_u1|ALT_INV_always0~3_combout\ <= NOT \inst|uart_tx_u1|always0~3_combout\;
\inst5|ALT_INV_Decoder0~3_combout\ <= NOT \inst5|Decoder0~3_combout\;
\inst5|ALT_INV_Decoder0~2_combout\ <= NOT \inst5|Decoder0~2_combout\;
\inst5|ALT_INV_Decoder0~1_combout\ <= NOT \inst5|Decoder0~1_combout\;
\inst5|ALT_INV_Decoder0~0_combout\ <= NOT \inst5|Decoder0~0_combout\;
\inst|uart_tx_u1|ALT_INV_tx~q\ <= NOT \inst|uart_tx_u1|tx~q\;

-- Location: IOOBUF_X54_Y43_N16
\tx_c~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|uart_tx_u1|ALT_INV_tx~q\,
	devoe => ww_devoe,
	o => \tx_c~output_o\);

-- Location: IOOBUF_X67_Y28_N23
\txd~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_c~input_o\,
	devoe => ww_devoe,
	o => \txd~output_o\);

-- Location: IOOBUF_X63_Y43_N30
\led[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|length_REG\(7),
	devoe => ww_devoe,
	o => \led[7]~output_o\);

-- Location: IOOBUF_X67_Y40_N23
\led[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|length_REG\(6),
	devoe => ww_devoe,
	o => \led[6]~output_o\);

-- Location: IOOBUF_X67_Y39_N9
\led[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|length_REG\(5),
	devoe => ww_devoe,
	o => \led[5]~output_o\);

-- Location: IOOBUF_X59_Y43_N16
\led[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|length_REG\(4),
	devoe => ww_devoe,
	o => \led[4]~output_o\);

-- Location: IOOBUF_X67_Y35_N2
\led[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|length_REG\(3),
	devoe => ww_devoe,
	o => \led[3]~output_o\);

-- Location: IOOBUF_X56_Y43_N23
\led[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|length_REG\(2),
	devoe => ww_devoe,
	o => \led[2]~output_o\);

-- Location: IOOBUF_X59_Y43_N9
\led[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|length_REG\(1),
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOOBUF_X61_Y43_N16
\led[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|length_REG\(0),
	devoe => ww_devoe,
	o => \led[0]~output_o\);

-- Location: IOOBUF_X48_Y0_N30
\rgb[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|rgb\(2),
	devoe => ww_devoe,
	o => \rgb[2]~output_o\);

-- Location: IOOBUF_X48_Y0_N23
\rgb[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|rgb\(2),
	devoe => ww_devoe,
	o => \rgb[1]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\rgb[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|rgb\(2),
	devoe => ww_devoe,
	o => \rgb[0]~output_o\);

-- Location: IOOBUF_X61_Y0_N9
\segcom1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Decoder0~0_combout\,
	devoe => ww_devoe,
	o => \segcom1[3]~output_o\);

-- Location: IOOBUF_X38_Y0_N30
\segcom1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_Decoder0~1_combout\,
	devoe => ww_devoe,
	o => \segcom1[2]~output_o\);

-- Location: IOOBUF_X43_Y0_N2
\segcom1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_Decoder0~2_combout\,
	devoe => ww_devoe,
	o => \segcom1[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N30
\segcom1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_Decoder0~3_combout\,
	devoe => ww_devoe,
	o => \segcom1[0]~output_o\);

-- Location: IOOBUF_X63_Y0_N9
\segcom2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Decoder0~0_combout\,
	devoe => ww_devoe,
	o => \segcom2[3]~output_o\);

-- Location: IOOBUF_X38_Y0_N23
\segcom2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_Decoder0~1_combout\,
	devoe => ww_devoe,
	o => \segcom2[2]~output_o\);

-- Location: IOOBUF_X43_Y0_N30
\segcom2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_Decoder0~2_combout\,
	devoe => ww_devoe,
	o => \segcom2[1]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\segcom2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_Decoder0~3_combout\,
	devoe => ww_devoe,
	o => \segcom2[0]~output_o\);

-- Location: IOOBUF_X67_Y18_N23
\segdata1[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segdata1[7]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\segdata1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|S\(1),
	devoe => ww_devoe,
	o => \segdata1[6]~output_o\);

-- Location: IOOBUF_X41_Y0_N30
\segdata1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_Decoder0~3_combout\,
	devoe => ww_devoe,
	o => \segdata1[5]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\segdata1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_Decoder0~3_combout\,
	devoe => ww_devoe,
	o => \segdata1[4]~output_o\);

-- Location: IOOBUF_X27_Y43_N2
\segdata1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segdata1[3]~output_o\);

-- Location: IOOBUF_X56_Y43_N16
\segdata1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segdata1[2]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\segdata1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segdata1[1]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\segdata1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|SegData[0]~0_combout\,
	devoe => ww_devoe,
	o => \segdata1[0]~output_o\);

-- Location: IOOBUF_X67_Y5_N16
\segdata2[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_Decoder0~0_combout\,
	devoe => ww_devoe,
	o => \segdata2[7]~output_o\);

-- Location: IOOBUF_X67_Y7_N23
\segdata2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segdata2[6]~output_o\);

-- Location: IOOBUF_X45_Y43_N16
\segdata2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Decoder0~0_combout\,
	devoe => ww_devoe,
	o => \segdata2[5]~output_o\);

-- Location: IOOBUF_X41_Y43_N9
\segdata2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Decoder0~0_combout\,
	devoe => ww_devoe,
	o => \segdata2[4]~output_o\);

-- Location: IOOBUF_X67_Y34_N9
\segdata2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Decoder0~0_combout\,
	devoe => ww_devoe,
	o => \segdata2[3]~output_o\);

-- Location: IOOBUF_X45_Y43_N9
\segdata2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Decoder0~0_combout\,
	devoe => ww_devoe,
	o => \segdata2[2]~output_o\);

-- Location: IOOBUF_X67_Y26_N23
\segdata2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Decoder0~0_combout\,
	devoe => ww_devoe,
	o => \segdata2[1]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\segdata2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Decoder0~0_combout\,
	devoe => ww_devoe,
	o => \segdata2[0]~output_o\);

-- Location: IOIBUF_X67_Y22_N15
\ck~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ck,
	o => \ck~input_o\);

-- Location: CLKCTRL_G9
\ck~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ck~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ck~inputclkctrl_outclk\);

-- Location: LCCOMB_X55_Y37_N0
\inst|uart_tx_u1|Add17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add17~0_combout\ = \inst|uart_tx_u1|cnt_baud\(0) $ (VCC)
-- \inst|uart_tx_u1|Add17~1\ = CARRY(\inst|uart_tx_u1|cnt_baud\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|cnt_baud\(0),
	datad => VCC,
	combout => \inst|uart_tx_u1|Add17~0_combout\,
	cout => \inst|uart_tx_u1|Add17~1\);

-- Location: IOIBUF_X67_Y6_N15
\res~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_res,
	o => \res~input_o\);

-- Location: FF_X55_Y37_N1
\inst|uart_tx_u1|cnt_baud[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|Add17~0_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|cnt_baud\(0));

-- Location: LCCOMB_X55_Y37_N2
\inst|uart_tx_u1|Add17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add17~2_combout\ = (\inst|uart_tx_u1|cnt_baud\(1) & (!\inst|uart_tx_u1|Add17~1\)) # (!\inst|uart_tx_u1|cnt_baud\(1) & ((\inst|uart_tx_u1|Add17~1\) # (GND)))
-- \inst|uart_tx_u1|Add17~3\ = CARRY((!\inst|uart_tx_u1|Add17~1\) # (!\inst|uart_tx_u1|cnt_baud\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_baud\(1),
	datad => VCC,
	cin => \inst|uart_tx_u1|Add17~1\,
	combout => \inst|uart_tx_u1|Add17~2_combout\,
	cout => \inst|uart_tx_u1|Add17~3\);

-- Location: LCCOMB_X55_Y37_N6
\inst|uart_tx_u1|Add17~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add17~6_combout\ = (\inst|uart_tx_u1|cnt_baud\(3) & (!\inst|uart_tx_u1|Add17~5\)) # (!\inst|uart_tx_u1|cnt_baud\(3) & ((\inst|uart_tx_u1|Add17~5\) # (GND)))
-- \inst|uart_tx_u1|Add17~7\ = CARRY((!\inst|uart_tx_u1|Add17~5\) # (!\inst|uart_tx_u1|cnt_baud\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_baud\(3),
	datad => VCC,
	cin => \inst|uart_tx_u1|Add17~5\,
	combout => \inst|uart_tx_u1|Add17~6_combout\,
	cout => \inst|uart_tx_u1|Add17~7\);

-- Location: LCCOMB_X55_Y37_N8
\inst|uart_tx_u1|Add17~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add17~8_combout\ = (\inst|uart_tx_u1|cnt_baud\(4) & (\inst|uart_tx_u1|Add17~7\ $ (GND))) # (!\inst|uart_tx_u1|cnt_baud\(4) & (!\inst|uart_tx_u1|Add17~7\ & VCC))
-- \inst|uart_tx_u1|Add17~9\ = CARRY((\inst|uart_tx_u1|cnt_baud\(4) & !\inst|uart_tx_u1|Add17~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|cnt_baud\(4),
	datad => VCC,
	cin => \inst|uart_tx_u1|Add17~7\,
	combout => \inst|uart_tx_u1|Add17~8_combout\,
	cout => \inst|uart_tx_u1|Add17~9\);

-- Location: LCCOMB_X55_Y37_N28
\inst|uart_tx_u1|cnt_baud~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_baud~4_combout\ = (\inst|uart_tx_u1|Add17~8_combout\ & ((\inst|uart_tx_u1|Equal3~1_combout\) # ((\inst|uart_tx_u1|Equal3~0_combout\) # (!\inst|uart_tx_u1|cnt_baud\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Equal3~1_combout\,
	datab => \inst|uart_tx_u1|Equal3~0_combout\,
	datac => \inst|uart_tx_u1|Add17~8_combout\,
	datad => \inst|uart_tx_u1|cnt_baud\(0),
	combout => \inst|uart_tx_u1|cnt_baud~4_combout\);

-- Location: FF_X55_Y37_N29
\inst|uart_tx_u1|cnt_baud[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|cnt_baud~4_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|cnt_baud\(4));

-- Location: LCCOMB_X55_Y37_N10
\inst|uart_tx_u1|Add17~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add17~10_combout\ = (\inst|uart_tx_u1|cnt_baud\(5) & (!\inst|uart_tx_u1|Add17~9\)) # (!\inst|uart_tx_u1|cnt_baud\(5) & ((\inst|uart_tx_u1|Add17~9\) # (GND)))
-- \inst|uart_tx_u1|Add17~11\ = CARRY((!\inst|uart_tx_u1|Add17~9\) # (!\inst|uart_tx_u1|cnt_baud\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_baud\(5),
	datad => VCC,
	cin => \inst|uart_tx_u1|Add17~9\,
	combout => \inst|uart_tx_u1|Add17~10_combout\,
	cout => \inst|uart_tx_u1|Add17~11\);

-- Location: LCCOMB_X55_Y37_N30
\inst|uart_tx_u1|cnt_baud~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_baud~2_combout\ = (\inst|uart_tx_u1|Add17~10_combout\ & (((\inst|uart_tx_u1|Equal3~1_combout\) # (\inst|uart_tx_u1|Equal3~0_combout\)) # (!\inst|uart_tx_u1|cnt_baud\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Add17~10_combout\,
	datab => \inst|uart_tx_u1|cnt_baud\(0),
	datac => \inst|uart_tx_u1|Equal3~1_combout\,
	datad => \inst|uart_tx_u1|Equal3~0_combout\,
	combout => \inst|uart_tx_u1|cnt_baud~2_combout\);

-- Location: FF_X55_Y37_N31
\inst|uart_tx_u1|cnt_baud[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|cnt_baud~2_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|cnt_baud\(5));

-- Location: LCCOMB_X55_Y37_N12
\inst|uart_tx_u1|Add17~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add17~12_combout\ = (\inst|uart_tx_u1|cnt_baud\(6) & (\inst|uart_tx_u1|Add17~11\ $ (GND))) # (!\inst|uart_tx_u1|cnt_baud\(6) & (!\inst|uart_tx_u1|Add17~11\ & VCC))
-- \inst|uart_tx_u1|Add17~13\ = CARRY((\inst|uart_tx_u1|cnt_baud\(6) & !\inst|uart_tx_u1|Add17~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_baud\(6),
	datad => VCC,
	cin => \inst|uart_tx_u1|Add17~11\,
	combout => \inst|uart_tx_u1|Add17~12_combout\,
	cout => \inst|uart_tx_u1|Add17~13\);

-- Location: FF_X55_Y37_N13
\inst|uart_tx_u1|cnt_baud[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|Add17~12_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|cnt_baud\(6));

-- Location: LCCOMB_X55_Y37_N14
\inst|uart_tx_u1|Add17~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add17~14_combout\ = (\inst|uart_tx_u1|cnt_baud\(7) & (!\inst|uart_tx_u1|Add17~13\)) # (!\inst|uart_tx_u1|cnt_baud\(7) & ((\inst|uart_tx_u1|Add17~13\) # (GND)))
-- \inst|uart_tx_u1|Add17~15\ = CARRY((!\inst|uart_tx_u1|Add17~13\) # (!\inst|uart_tx_u1|cnt_baud\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|cnt_baud\(7),
	datad => VCC,
	cin => \inst|uart_tx_u1|Add17~13\,
	combout => \inst|uart_tx_u1|Add17~14_combout\,
	cout => \inst|uart_tx_u1|Add17~15\);

-- Location: LCCOMB_X55_Y37_N20
\inst|uart_tx_u1|cnt_baud~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_baud~1_combout\ = (\inst|uart_tx_u1|Add17~14_combout\ & ((\inst|uart_tx_u1|Equal3~1_combout\) # ((\inst|uart_tx_u1|Equal3~0_combout\) # (!\inst|uart_tx_u1|cnt_baud\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Equal3~1_combout\,
	datab => \inst|uart_tx_u1|cnt_baud\(0),
	datac => \inst|uart_tx_u1|Add17~14_combout\,
	datad => \inst|uart_tx_u1|Equal3~0_combout\,
	combout => \inst|uart_tx_u1|cnt_baud~1_combout\);

-- Location: FF_X55_Y37_N21
\inst|uart_tx_u1|cnt_baud[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|cnt_baud~1_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|cnt_baud\(7));

-- Location: LCCOMB_X55_Y37_N16
\inst|uart_tx_u1|Add17~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add17~16_combout\ = \inst|uart_tx_u1|Add17~15\ $ (!\inst|uart_tx_u1|cnt_baud\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_tx_u1|cnt_baud\(8),
	cin => \inst|uart_tx_u1|Add17~15\,
	combout => \inst|uart_tx_u1|Add17~16_combout\);

-- Location: LCCOMB_X55_Y37_N18
\inst|uart_tx_u1|cnt_baud~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_baud~0_combout\ = (\inst|uart_tx_u1|Add17~16_combout\ & (((\inst|uart_tx_u1|Equal3~1_combout\) # (\inst|uart_tx_u1|Equal3~0_combout\)) # (!\inst|uart_tx_u1|cnt_baud\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_baud\(0),
	datab => \inst|uart_tx_u1|Add17~16_combout\,
	datac => \inst|uart_tx_u1|Equal3~1_combout\,
	datad => \inst|uart_tx_u1|Equal3~0_combout\,
	combout => \inst|uart_tx_u1|cnt_baud~0_combout\);

-- Location: FF_X55_Y37_N19
\inst|uart_tx_u1|cnt_baud[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|cnt_baud~0_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|cnt_baud\(8));

-- Location: LCCOMB_X55_Y37_N24
\inst|uart_tx_u1|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Equal3~0_combout\ = (\inst|uart_tx_u1|cnt_baud\(6)) # (((!\inst|uart_tx_u1|cnt_baud\(8)) # (!\inst|uart_tx_u1|cnt_baud\(5))) # (!\inst|uart_tx_u1|cnt_baud\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_baud\(6),
	datab => \inst|uart_tx_u1|cnt_baud\(7),
	datac => \inst|uart_tx_u1|cnt_baud\(5),
	datad => \inst|uart_tx_u1|cnt_baud\(8),
	combout => \inst|uart_tx_u1|Equal3~0_combout\);

-- Location: LCCOMB_X55_Y37_N22
\inst|uart_tx_u1|cnt_baud~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_baud~3_combout\ = (\inst|uart_tx_u1|Add17~2_combout\ & ((\inst|uart_tx_u1|Equal3~1_combout\) # ((\inst|uart_tx_u1|Equal3~0_combout\) # (!\inst|uart_tx_u1|cnt_baud\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Equal3~1_combout\,
	datab => \inst|uart_tx_u1|Add17~2_combout\,
	datac => \inst|uart_tx_u1|cnt_baud\(0),
	datad => \inst|uart_tx_u1|Equal3~0_combout\,
	combout => \inst|uart_tx_u1|cnt_baud~3_combout\);

-- Location: FF_X55_Y37_N23
\inst|uart_tx_u1|cnt_baud[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|cnt_baud~3_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|cnt_baud\(1));

-- Location: LCCOMB_X55_Y37_N4
\inst|uart_tx_u1|Add17~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add17~4_combout\ = (\inst|uart_tx_u1|cnt_baud\(2) & (\inst|uart_tx_u1|Add17~3\ $ (GND))) # (!\inst|uart_tx_u1|cnt_baud\(2) & (!\inst|uart_tx_u1|Add17~3\ & VCC))
-- \inst|uart_tx_u1|Add17~5\ = CARRY((\inst|uart_tx_u1|cnt_baud\(2) & !\inst|uart_tx_u1|Add17~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|cnt_baud\(2),
	datad => VCC,
	cin => \inst|uart_tx_u1|Add17~3\,
	combout => \inst|uart_tx_u1|Add17~4_combout\,
	cout => \inst|uart_tx_u1|Add17~5\);

-- Location: FF_X55_Y37_N5
\inst|uart_tx_u1|cnt_baud[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|Add17~4_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|cnt_baud\(2));

-- Location: FF_X55_Y37_N7
\inst|uart_tx_u1|cnt_baud[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|Add17~6_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|cnt_baud\(3));

-- Location: LCCOMB_X55_Y37_N26
\inst|uart_tx_u1|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Equal3~1_combout\ = (\inst|uart_tx_u1|cnt_baud\(3)) # ((\inst|uart_tx_u1|cnt_baud\(2)) # ((\inst|uart_tx_u1|cnt_baud\(1)) # (!\inst|uart_tx_u1|cnt_baud\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_baud\(3),
	datab => \inst|uart_tx_u1|cnt_baud\(2),
	datac => \inst|uart_tx_u1|cnt_baud\(1),
	datad => \inst|uart_tx_u1|cnt_baud\(4),
	combout => \inst|uart_tx_u1|Equal3~1_combout\);

-- Location: LCCOMB_X56_Y37_N28
\inst|uart_tx_u1|stage_tx.IDLE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|stage_tx.IDLE~0_combout\ = (\inst|uart_tx_u1|stage_tx.IDLE~q\) # ((!\inst|uart_tx_u1|Equal3~1_combout\ & (\inst|uart_tx_u1|cnt_baud\(0) & !\inst|uart_tx_u1|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Equal3~1_combout\,
	datab => \inst|uart_tx_u1|cnt_baud\(0),
	datac => \inst|uart_tx_u1|stage_tx.IDLE~q\,
	datad => \inst|uart_tx_u1|Equal3~0_combout\,
	combout => \inst|uart_tx_u1|stage_tx.IDLE~0_combout\);

-- Location: FF_X56_Y37_N29
\inst|uart_tx_u1|stage_tx.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|stage_tx.IDLE~0_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|stage_tx.IDLE~q\);

-- Location: LCCOMB_X56_Y37_N0
\inst|uart_tx_u1|Equal3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Equal3~2_combout\ = (\inst|uart_tx_u1|Equal3~1_combout\) # ((\inst|uart_tx_u1|Equal3~0_combout\) # (!\inst|uart_tx_u1|cnt_baud\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Equal3~1_combout\,
	datac => \inst|uart_tx_u1|cnt_baud\(0),
	datad => \inst|uart_tx_u1|Equal3~0_combout\,
	combout => \inst|uart_tx_u1|Equal3~2_combout\);

-- Location: LCCOMB_X56_Y39_N16
\inst|uart_tx_u1|start_cnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|start_cnt~0_combout\ = (\inst|uart_tx_u1|stage_tx.SEND_DATA~q\ & (!\inst|uart_tx_u1|always5~0_combout\)) # (!\inst|uart_tx_u1|stage_tx.SEND_DATA~q\ & ((\inst|uart_tx_u1|start_cnt~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|always5~0_combout\,
	datac => \inst|uart_tx_u1|start_cnt~q\,
	datad => \inst|uart_tx_u1|stage_tx.SEND_DATA~q\,
	combout => \inst|uart_tx_u1|start_cnt~0_combout\);

-- Location: FF_X56_Y39_N17
\inst|uart_tx_u1|start_cnt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|start_cnt~0_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|start_cnt~q\);

-- Location: LCCOMB_X56_Y39_N4
\inst|uart_tx_u1|cnt_bit[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_bit[0]~2_combout\ = \inst|uart_tx_u1|cnt_bit\(0) $ (((!\inst|uart_tx_u1|Equal3~2_combout\ & (\inst|uart_tx_u1|start_cnt~q\ & \inst|uart_tx_u1|stage_tx.SEND_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Equal3~2_combout\,
	datab => \inst|uart_tx_u1|start_cnt~q\,
	datac => \inst|uart_tx_u1|cnt_bit\(0),
	datad => \inst|uart_tx_u1|stage_tx.SEND_DATA~q\,
	combout => \inst|uart_tx_u1|cnt_bit[0]~2_combout\);

-- Location: FF_X56_Y39_N5
\inst|uart_tx_u1|cnt_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|cnt_bit[0]~2_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|cnt_bit\(0));

-- Location: LCCOMB_X56_Y39_N26
\inst|uart_tx_u1|cnt_bit[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_bit[1]~0_combout\ = (!\inst|uart_tx_u1|Equal3~2_combout\ & (\inst|uart_tx_u1|start_cnt~q\ & (\inst|uart_tx_u1|cnt_bit\(0) & \inst|uart_tx_u1|stage_tx.SEND_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Equal3~2_combout\,
	datab => \inst|uart_tx_u1|start_cnt~q\,
	datac => \inst|uart_tx_u1|cnt_bit\(0),
	datad => \inst|uart_tx_u1|stage_tx.SEND_DATA~q\,
	combout => \inst|uart_tx_u1|cnt_bit[1]~0_combout\);

-- Location: LCCOMB_X56_Y39_N6
\inst|uart_tx_u1|cnt_bit[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_bit[1]~1_combout\ = \inst|uart_tx_u1|cnt_bit[1]~0_combout\ $ (\inst|uart_tx_u1|cnt_bit\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_bit[1]~0_combout\,
	datac => \inst|uart_tx_u1|cnt_bit\(1),
	combout => \inst|uart_tx_u1|cnt_bit[1]~1_combout\);

-- Location: FF_X56_Y39_N7
\inst|uart_tx_u1|cnt_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|cnt_bit[1]~1_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|cnt_bit\(1));

-- Location: LCCOMB_X56_Y39_N22
\inst|uart_tx_u1|cnt_bit[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_bit[2]~3_combout\ = \inst|uart_tx_u1|cnt_bit\(2) $ (((\inst|uart_tx_u1|cnt_bit[1]~0_combout\ & \inst|uart_tx_u1|cnt_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_bit[1]~0_combout\,
	datac => \inst|uart_tx_u1|cnt_bit\(2),
	datad => \inst|uart_tx_u1|cnt_bit\(1),
	combout => \inst|uart_tx_u1|cnt_bit[2]~3_combout\);

-- Location: FF_X56_Y39_N23
\inst|uart_tx_u1|cnt_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|cnt_bit[2]~3_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|cnt_bit\(2));

-- Location: LCCOMB_X56_Y39_N14
\inst|uart_tx_u1|always5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|always5~0_combout\ = (\inst|uart_tx_u1|cnt_bit\(1) & (\inst|uart_tx_u1|cnt_bit\(0) & (\inst|uart_tx_u1|cnt_bit\(2) & !\inst|uart_tx_u1|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_bit\(1),
	datab => \inst|uart_tx_u1|cnt_bit\(0),
	datac => \inst|uart_tx_u1|cnt_bit\(2),
	datad => \inst|uart_tx_u1|Equal3~2_combout\,
	combout => \inst|uart_tx_u1|always5~0_combout\);

-- Location: LCCOMB_X56_Y37_N6
\inst|uart_tx_u1|always5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|always5~1_combout\ = (\inst|uart_tx_u1|stage_tx.SEND_DATA~q\ & \inst|uart_tx_u1|always5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|uart_tx_u1|stage_tx.SEND_DATA~q\,
	datad => \inst|uart_tx_u1|always5~0_combout\,
	combout => \inst|uart_tx_u1|always5~1_combout\);

-- Location: LCCOMB_X60_Y38_N16
\inst|uart_tx_u1|enable~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|enable~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|uart_tx_u1|enable~feeder_combout\);

-- Location: LCCOMB_X56_Y37_N14
\inst|uart_tx_u1|Add19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add19~1_combout\ = \inst|uart_tx_u1|cnt_rom\(3) $ (((\inst|uart_tx_u1|cnt_rom\(2) & (\inst|uart_tx_u1|cnt_rom\(1) & \inst|uart_tx_u1|cnt_rom\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_rom\(2),
	datab => \inst|uart_tx_u1|cnt_rom\(3),
	datac => \inst|uart_tx_u1|cnt_rom\(1),
	datad => \inst|uart_tx_u1|cnt_rom\(0),
	combout => \inst|uart_tx_u1|Add19~1_combout\);

-- Location: LCCOMB_X56_Y37_N22
\inst|uart_tx_u1|always0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|always0~2_combout\ = (!\inst|uart_tx_u1|cnt_rom\(3) & (\inst|uart_tx_u1|cnt_rom\(1) & \inst|uart_tx_u1|cnt_rom\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|cnt_rom\(3),
	datac => \inst|uart_tx_u1|cnt_rom\(1),
	datad => \inst|uart_tx_u1|cnt_rom\(2),
	combout => \inst|uart_tx_u1|always0~2_combout\);

-- Location: LCCOMB_X56_Y37_N16
\inst|uart_tx_u1|cnt_rom[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_rom[3]~2_combout\ = (\inst|uart_tx_u1|always5~1_combout\ & (((\inst|uart_tx_u1|Equal4~1_combout\)))) # (!\inst|uart_tx_u1|always5~1_combout\ & (((!\inst|uart_tx_u1|always0~2_combout\)) # (!\inst|uart_tx_u1|cnt_rom\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_rom\(0),
	datab => \inst|uart_tx_u1|always0~2_combout\,
	datac => \inst|uart_tx_u1|Equal4~1_combout\,
	datad => \inst|uart_tx_u1|always5~1_combout\,
	combout => \inst|uart_tx_u1|cnt_rom[3]~2_combout\);

-- Location: LCCOMB_X56_Y37_N4
\inst|uart_tx_u1|cnt_rom[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_rom[3]~4_combout\ = (\inst|uart_tx_u1|cnt_rom[3]~2_combout\ & (((\inst|uart_tx_u1|cnt_rom\(3))))) # (!\inst|uart_tx_u1|cnt_rom[3]~2_combout\ & (\inst|uart_tx_u1|always5~1_combout\ & (\inst|uart_tx_u1|Add19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|always5~1_combout\,
	datab => \inst|uart_tx_u1|Add19~1_combout\,
	datac => \inst|uart_tx_u1|cnt_rom\(3),
	datad => \inst|uart_tx_u1|cnt_rom[3]~2_combout\,
	combout => \inst|uart_tx_u1|cnt_rom[3]~4_combout\);

-- Location: FF_X56_Y37_N5
\inst|uart_tx_u1|cnt_rom[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|cnt_rom[3]~4_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|cnt_rom\(3));

-- Location: LCCOMB_X56_Y37_N24
\inst|uart_tx_u1|always0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|always0~1_combout\ = (\inst|uart_tx_u1|cnt_rom\(2) & (!\inst|uart_tx_u1|cnt_rom\(3) & (!\inst|uart_tx_u1|cnt_rom\(1) & \inst|uart_tx_u1|cnt_rom\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_rom\(2),
	datab => \inst|uart_tx_u1|cnt_rom\(3),
	datac => \inst|uart_tx_u1|cnt_rom\(1),
	datad => \inst|uart_tx_u1|cnt_rom\(0),
	combout => \inst|uart_tx_u1|always0~1_combout\);

-- Location: LCCOMB_X52_Y38_N8
\inst|uart_tx_u1|AT|rom~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~52_combout\ = (\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(2) & (!\inst|uart_tx_u1|addr\(5) & \inst|uart_tx_u1|addr\(0))) # (!\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(5) & !\inst|uart_tx_u1|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|addr\(1),
	datad => \inst|uart_tx_u1|addr\(0),
	combout => \inst|uart_tx_u1|AT|rom~52_combout\);

-- Location: LCCOMB_X52_Y38_N20
\inst|uart_tx_u1|AT|rom~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~85_combout\ = (\inst|uart_tx_u1|addr\(5) & (!\inst|uart_tx_u1|addr\(1) & (!\inst|uart_tx_u1|addr\(2)))) # (!\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(0)) # (\inst|uart_tx_u1|addr\(1) $ (\inst|uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(0),
	combout => \inst|uart_tx_u1|AT|rom~85_combout\);

-- Location: LCCOMB_X52_Y38_N10
\inst|uart_tx_u1|AT|rom~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~86_combout\ = (!\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|AT|rom~85_combout\ & (\inst|uart_tx_u1|addr\(2) $ (\inst|uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(3),
	datab => \inst|uart_tx_u1|addr\(2),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|AT|rom~85_combout\,
	combout => \inst|uart_tx_u1|AT|rom~86_combout\);

-- Location: LCCOMB_X52_Y38_N22
\inst|uart_tx_u1|AT|rom~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~53_combout\ = (\inst|uart_tx_u1|AT|rom~86_combout\) # ((\inst|uart_tx_u1|addr\(3) & (!\inst|uart_tx_u1|addr\(4) & !\inst|uart_tx_u1|AT|rom~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(3),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|AT|rom~52_combout\,
	datad => \inst|uart_tx_u1|AT|rom~86_combout\,
	combout => \inst|uart_tx_u1|AT|rom~53_combout\);

-- Location: LCCOMB_X52_Y38_N24
\inst|uart_tx_u1|AT|rom~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~54_combout\ = (\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|addr\(0) & ((!\inst|uart_tx_u1|addr\(1)))) # (!\inst|uart_tx_u1|addr\(0) & (!\inst|uart_tx_u1|addr\(2))))) # (!\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|addr\(2) $ 
-- ((\inst|uart_tx_u1|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(2),
	datac => \inst|uart_tx_u1|addr\(1),
	datad => \inst|uart_tx_u1|addr\(0),
	combout => \inst|uart_tx_u1|AT|rom~54_combout\);

-- Location: LCCOMB_X57_Y38_N18
\inst|uart_tx_u1|AT|rom~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~58_combout\ = (\inst|uart_tx_u1|addr\(1) & (!\inst|uart_tx_u1|addr\(4))) # (!\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(2) & (!\inst|uart_tx_u1|addr\(4))) # (!\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(1),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~58_combout\);

-- Location: LCCOMB_X52_Y38_N30
\inst|uart_tx_u1|AT|rom~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~55_combout\ = (\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(0) & ((!\inst|uart_tx_u1|addr\(2)))) # (!\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(4))))) # (!\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(4)) # 
-- ((\inst|uart_tx_u1|addr\(2) & !\inst|uart_tx_u1|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(0),
	combout => \inst|uart_tx_u1|AT|rom~55_combout\);

-- Location: LCCOMB_X55_Y38_N4
\inst|uart_tx_u1|AT|rom~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~56_combout\ = (\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(4) & \inst|uart_tx_u1|addr\(0)))) # (!\inst|uart_tx_u1|addr\(2) & (!\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(1) $ 
-- (\inst|uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(0),
	combout => \inst|uart_tx_u1|AT|rom~56_combout\);

-- Location: LCCOMB_X52_Y38_N12
\inst|uart_tx_u1|AT|rom~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~57_combout\ = (\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|addr\(5))) # (!\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|addr\(5) & (!\inst|uart_tx_u1|AT|rom~55_combout\)) # (!\inst|uart_tx_u1|addr\(5) & 
-- ((!\inst|uart_tx_u1|AT|rom~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(3),
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|AT|rom~55_combout\,
	datad => \inst|uart_tx_u1|AT|rom~56_combout\,
	combout => \inst|uart_tx_u1|AT|rom~57_combout\);

-- Location: LCCOMB_X52_Y38_N18
\inst|uart_tx_u1|AT|rom~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~59_combout\ = (\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|AT|rom~57_combout\ & ((!\inst|uart_tx_u1|AT|rom~58_combout\))) # (!\inst|uart_tx_u1|AT|rom~57_combout\ & (!\inst|uart_tx_u1|AT|rom~54_combout\)))) # 
-- (!\inst|uart_tx_u1|addr\(3) & (((\inst|uart_tx_u1|AT|rom~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(3),
	datab => \inst|uart_tx_u1|AT|rom~54_combout\,
	datac => \inst|uart_tx_u1|AT|rom~58_combout\,
	datad => \inst|uart_tx_u1|AT|rom~57_combout\,
	combout => \inst|uart_tx_u1|AT|rom~59_combout\);

-- Location: LCCOMB_X52_Y38_N28
\inst|uart_tx_u1|AT|rom~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~60_combout\ = (!\inst|uart_tx_u1|addr\(7) & ((\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|AT|rom~53_combout\)) # (!\inst|uart_tx_u1|addr\(6) & ((\inst|uart_tx_u1|AT|rom~59_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(6),
	datab => \inst|uart_tx_u1|addr\(7),
	datac => \inst|uart_tx_u1|AT|rom~53_combout\,
	datad => \inst|uart_tx_u1|AT|rom~59_combout\,
	combout => \inst|uart_tx_u1|AT|rom~60_combout\);

-- Location: LCCOMB_X51_Y38_N14
\inst|uart_tx_u1|Add16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add16~0_combout\ = \inst|uart_tx_u1|addr\(0) $ (VCC)
-- \inst|uart_tx_u1|Add16~1\ = CARRY(\inst|uart_tx_u1|addr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|addr\(0),
	datad => VCC,
	combout => \inst|uart_tx_u1|Add16~0_combout\,
	cout => \inst|uart_tx_u1|Add16~1\);

-- Location: LCCOMB_X51_Y38_N16
\inst|uart_tx_u1|Add16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add16~2_combout\ = (\inst|uart_tx_u1|addr\(1) & (!\inst|uart_tx_u1|Add16~1\)) # (!\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|Add16~1\) # (GND)))
-- \inst|uart_tx_u1|Add16~3\ = CARRY((!\inst|uart_tx_u1|Add16~1\) # (!\inst|uart_tx_u1|addr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datad => VCC,
	cin => \inst|uart_tx_u1|Add16~1\,
	combout => \inst|uart_tx_u1|Add16~2_combout\,
	cout => \inst|uart_tx_u1|Add16~3\);

-- Location: FF_X55_Y38_N11
\inst|uart_tx_u1|Send_addr_w[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|Send_addr[1]~1_combout\,
	clrn => \res~input_o\,
	ena => \inst|uart_tx_u1|Send_addr_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|Send_addr_w\(1));

-- Location: LCCOMB_X57_Y38_N12
\inst|uart_tx_u1|AT|rom~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~74_combout\ = (\inst|uart_tx_u1|addr\(4)) # ((\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(0) & \inst|uart_tx_u1|addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|addr\(1),
	combout => \inst|uart_tx_u1|AT|rom~74_combout\);

-- Location: LCCOMB_X57_Y38_N22
\inst|uart_tx_u1|AT|rom~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~77_combout\ = (!\inst|uart_tx_u1|addr\(2) & (!\inst|uart_tx_u1|addr\(0) & (!\inst|uart_tx_u1|addr\(4) & \inst|uart_tx_u1|addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|addr\(1),
	combout => \inst|uart_tx_u1|AT|rom~77_combout\);

-- Location: LCCOMB_X57_Y38_N30
\inst|uart_tx_u1|AT|rom~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~75_combout\ = (\inst|uart_tx_u1|addr\(4) & (!\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(0) $ (!\inst|uart_tx_u1|addr\(2))))) # (!\inst|uart_tx_u1|addr\(4) & (((\inst|uart_tx_u1|addr\(1) & !\inst|uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(1),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~75_combout\);

-- Location: LCCOMB_X57_Y38_N24
\inst|uart_tx_u1|AT|rom~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~76_combout\ = (\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(6)) # ((\inst|uart_tx_u1|AT|rom~58_combout\)))) # (!\inst|uart_tx_u1|addr\(5) & (!\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|AT|rom~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(6),
	datac => \inst|uart_tx_u1|AT|rom~75_combout\,
	datad => \inst|uart_tx_u1|AT|rom~58_combout\,
	combout => \inst|uart_tx_u1|AT|rom~76_combout\);

-- Location: LCCOMB_X57_Y38_N8
\inst|uart_tx_u1|AT|rom~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~78_combout\ = (\inst|uart_tx_u1|addr\(6) & ((\inst|uart_tx_u1|AT|rom~76_combout\ & ((\inst|uart_tx_u1|AT|rom~77_combout\))) # (!\inst|uart_tx_u1|AT|rom~76_combout\ & (\inst|uart_tx_u1|AT|rom~74_combout\)))) # 
-- (!\inst|uart_tx_u1|addr\(6) & (((\inst|uart_tx_u1|AT|rom~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|AT|rom~74_combout\,
	datab => \inst|uart_tx_u1|addr\(6),
	datac => \inst|uart_tx_u1|AT|rom~77_combout\,
	datad => \inst|uart_tx_u1|AT|rom~76_combout\,
	combout => \inst|uart_tx_u1|AT|rom~78_combout\);

-- Location: LCCOMB_X57_Y38_N26
\inst|uart_tx_u1|AT|rom~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~79_combout\ = (\inst|uart_tx_u1|addr\(2) & (!\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|addr\(0)) # (!\inst|uart_tx_u1|addr\(1))))) # (!\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(1)) # ((\inst|uart_tx_u1|addr\(0) & 
-- \inst|uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|addr\(1),
	combout => \inst|uart_tx_u1|AT|rom~79_combout\);

-- Location: LCCOMB_X57_Y38_N16
\inst|uart_tx_u1|AT|rom~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~82_combout\ = (\inst|uart_tx_u1|addr\(2) & ((!\inst|uart_tx_u1|addr\(1)))) # (!\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(1)) # (!\inst|uart_tx_u1|addr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|addr\(1),
	combout => \inst|uart_tx_u1|AT|rom~82_combout\);

-- Location: LCCOMB_X57_Y38_N4
\inst|uart_tx_u1|AT|rom~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~80_combout\ = (\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(2) $ (((\inst|uart_tx_u1|addr\(4)) # (\inst|uart_tx_u1|addr\(0)))))) # (!\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(2) & ((!\inst|uart_tx_u1|addr\(0)))) # 
-- (!\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(1),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~80_combout\);

-- Location: LCCOMB_X57_Y38_N6
\inst|uart_tx_u1|AT|rom~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~81_combout\ = (\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(6)) # ((\inst|uart_tx_u1|AT|rom~80_combout\)))) # (!\inst|uart_tx_u1|addr\(5) & (!\inst|uart_tx_u1|addr\(6) & ((\inst|uart_tx_u1|AT|rom~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(6),
	datac => \inst|uart_tx_u1|AT|rom~80_combout\,
	datad => \inst|uart_tx_u1|AT|rom~56_combout\,
	combout => \inst|uart_tx_u1|AT|rom~81_combout\);

-- Location: LCCOMB_X57_Y38_N2
\inst|uart_tx_u1|AT|rom~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~83_combout\ = (\inst|uart_tx_u1|addr\(6) & ((\inst|uart_tx_u1|AT|rom~81_combout\ & ((\inst|uart_tx_u1|AT|rom~82_combout\))) # (!\inst|uart_tx_u1|AT|rom~81_combout\ & (!\inst|uart_tx_u1|AT|rom~79_combout\)))) # 
-- (!\inst|uart_tx_u1|addr\(6) & (((\inst|uart_tx_u1|AT|rom~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|AT|rom~79_combout\,
	datab => \inst|uart_tx_u1|AT|rom~82_combout\,
	datac => \inst|uart_tx_u1|addr\(6),
	datad => \inst|uart_tx_u1|AT|rom~81_combout\,
	combout => \inst|uart_tx_u1|AT|rom~83_combout\);

-- Location: LCCOMB_X57_Y38_N28
\inst|uart_tx_u1|AT|rom~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~84_combout\ = (!\inst|uart_tx_u1|addr\(7) & ((\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|AT|rom~78_combout\)) # (!\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|AT|rom~83_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(7),
	datab => \inst|uart_tx_u1|addr\(3),
	datac => \inst|uart_tx_u1|AT|rom~78_combout\,
	datad => \inst|uart_tx_u1|AT|rom~83_combout\,
	combout => \inst|uart_tx_u1|AT|rom~84_combout\);

-- Location: LCCOMB_X56_Y38_N18
\inst|uart_tx_u1|Equal4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Equal4~2_combout\ = (\inst|uart_tx_u1|AT|rom~73_combout\) # (\inst|uart_tx_u1|AT|rom~84_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|uart_tx_u1|AT|rom~73_combout\,
	datad => \inst|uart_tx_u1|AT|rom~84_combout\,
	combout => \inst|uart_tx_u1|Equal4~2_combout\);

-- Location: LCCOMB_X55_Y38_N0
\inst|uart_tx_u1|Send_addr[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Send_addr[1]~0_combout\ = (!\inst|uart_tx_u1|enable~q\ & (\inst|uart_tx_u1|always0~1_combout\ & (!\inst|uart_tx_u1|Equal4~0_combout\ & !\inst|uart_tx_u1|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|enable~q\,
	datab => \inst|uart_tx_u1|always0~1_combout\,
	datac => \inst|uart_tx_u1|Equal4~0_combout\,
	datad => \inst|uart_tx_u1|Equal4~2_combout\,
	combout => \inst|uart_tx_u1|Send_addr[1]~0_combout\);

-- Location: LCCOMB_X55_Y38_N10
\inst|uart_tx_u1|Send_addr[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Send_addr[1]~1_combout\ = (\inst|uart_tx_u1|AT|rom~60_combout\ & (((\inst|uart_tx_u1|Send_addr_w\(1))))) # (!\inst|uart_tx_u1|AT|rom~60_combout\ & ((\inst|uart_tx_u1|Send_addr[1]~0_combout\ & (\inst|uart_tx_u1|Add16~2_combout\)) # 
-- (!\inst|uart_tx_u1|Send_addr[1]~0_combout\ & ((\inst|uart_tx_u1|Send_addr_w\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|AT|rom~60_combout\,
	datab => \inst|uart_tx_u1|Add16~2_combout\,
	datac => \inst|uart_tx_u1|Send_addr_w\(1),
	datad => \inst|uart_tx_u1|Send_addr[1]~0_combout\,
	combout => \inst|uart_tx_u1|Send_addr[1]~1_combout\);

-- Location: LCCOMB_X55_Y38_N12
\inst|uart_tx_u1|addr[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr[1]~12_combout\ = \inst|uart_tx_u1|Send_addr[1]~1_combout\ $ (VCC)
-- \inst|uart_tx_u1|addr[1]~13\ = CARRY(\inst|uart_tx_u1|Send_addr[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[1]~1_combout\,
	datad => VCC,
	combout => \inst|uart_tx_u1|addr[1]~12_combout\,
	cout => \inst|uart_tx_u1|addr[1]~13\);

-- Location: LCCOMB_X54_Y38_N16
\inst|uart_tx_u1|addr~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~14_combout\ = (\inst|uart_tx_u1|enable~q\ & ((\inst|uart_tx_u1|always0~4_combout\ & (\inst|uart_tx_u1|Send_addr_w\(1))) # (!\inst|uart_tx_u1|always0~4_combout\ & ((\inst|uart_tx_u1|Add16~2_combout\))))) # (!\inst|uart_tx_u1|enable~q\ 
-- & (((\inst|uart_tx_u1|Add16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|enable~q\,
	datab => \inst|uart_tx_u1|Send_addr_w\(1),
	datac => \inst|uart_tx_u1|Add16~2_combout\,
	datad => \inst|uart_tx_u1|always0~4_combout\,
	combout => \inst|uart_tx_u1|addr~14_combout\);

-- Location: LCCOMB_X55_Y38_N28
\inst|uart_tx_u1|always0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|always0~3_combout\ = (\inst|uart_tx_u1|always0~2_combout\ & (!\inst|uart_tx_u1|cnt_rom\(0) & !\inst|uart_tx_u1|Equal4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|always0~2_combout\,
	datab => \inst|uart_tx_u1|cnt_rom\(0),
	datad => \inst|uart_tx_u1|Equal4~1_combout\,
	combout => \inst|uart_tx_u1|always0~3_combout\);

-- Location: FF_X55_Y38_N13
\inst|uart_tx_u1|addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|addr[1]~12_combout\,
	asdata => \inst|uart_tx_u1|addr~14_combout\,
	clrn => \res~input_o\,
	sload => \inst|uart_tx_u1|ALT_INV_always0~3_combout\,
	ena => \inst|uart_tx_u1|addr[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|addr\(1));

-- Location: LCCOMB_X51_Y38_N18
\inst|uart_tx_u1|Add16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add16~4_combout\ = (\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|Add16~3\ $ (GND))) # (!\inst|uart_tx_u1|addr\(2) & (!\inst|uart_tx_u1|Add16~3\ & VCC))
-- \inst|uart_tx_u1|Add16~5\ = CARRY((\inst|uart_tx_u1|addr\(2) & !\inst|uart_tx_u1|Add16~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|addr\(2),
	datad => VCC,
	cin => \inst|uart_tx_u1|Add16~3\,
	combout => \inst|uart_tx_u1|Add16~4_combout\,
	cout => \inst|uart_tx_u1|Add16~5\);

-- Location: FF_X56_Y38_N3
\inst|uart_tx_u1|Send_addr_w[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|Send_addr[2]~4_combout\,
	clrn => \res~input_o\,
	ena => \inst|uart_tx_u1|Send_addr_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|Send_addr_w\(2));

-- Location: LCCOMB_X56_Y38_N2
\inst|uart_tx_u1|Send_addr[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Send_addr[2]~4_combout\ = (\inst|uart_tx_u1|enable~q\ & (((\inst|uart_tx_u1|Send_addr_w\(2))))) # (!\inst|uart_tx_u1|enable~q\ & ((\inst|uart_tx_u1|always0~4_combout\ & (\inst|uart_tx_u1|Add16~4_combout\)) # 
-- (!\inst|uart_tx_u1|always0~4_combout\ & ((\inst|uart_tx_u1|Send_addr_w\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Add16~4_combout\,
	datab => \inst|uart_tx_u1|enable~q\,
	datac => \inst|uart_tx_u1|Send_addr_w\(2),
	datad => \inst|uart_tx_u1|always0~4_combout\,
	combout => \inst|uart_tx_u1|Send_addr[2]~4_combout\);

-- Location: LCCOMB_X55_Y38_N14
\inst|uart_tx_u1|addr[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr[2]~15_combout\ = (\inst|uart_tx_u1|Send_addr[2]~4_combout\ & (\inst|uart_tx_u1|addr[1]~13\ & VCC)) # (!\inst|uart_tx_u1|Send_addr[2]~4_combout\ & (!\inst|uart_tx_u1|addr[1]~13\))
-- \inst|uart_tx_u1|addr[2]~16\ = CARRY((!\inst|uart_tx_u1|Send_addr[2]~4_combout\ & !\inst|uart_tx_u1|addr[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[2]~4_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|addr[1]~13\,
	combout => \inst|uart_tx_u1|addr[2]~15_combout\,
	cout => \inst|uart_tx_u1|addr[2]~16\);

-- Location: LCCOMB_X51_Y38_N6
\inst|uart_tx_u1|addr~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~28_combout\ = (\inst|uart_tx_u1|enable~q\ & ((\inst|uart_tx_u1|always0~4_combout\ & (\inst|uart_tx_u1|Send_addr_w\(2))) # (!\inst|uart_tx_u1|always0~4_combout\ & ((\inst|uart_tx_u1|Add16~4_combout\))))) # (!\inst|uart_tx_u1|enable~q\ 
-- & (((\inst|uart_tx_u1|Add16~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr_w\(2),
	datab => \inst|uart_tx_u1|enable~q\,
	datac => \inst|uart_tx_u1|Add16~4_combout\,
	datad => \inst|uart_tx_u1|always0~4_combout\,
	combout => \inst|uart_tx_u1|addr~28_combout\);

-- Location: FF_X55_Y38_N15
\inst|uart_tx_u1|addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|addr[2]~15_combout\,
	asdata => \inst|uart_tx_u1|addr~28_combout\,
	clrn => \res~input_o\,
	sload => \inst|uart_tx_u1|ALT_INV_always0~3_combout\,
	ena => \inst|uart_tx_u1|addr[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|addr\(2));

-- Location: LCCOMB_X51_Y38_N20
\inst|uart_tx_u1|Add16~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add16~6_combout\ = (\inst|uart_tx_u1|addr\(3) & (!\inst|uart_tx_u1|Add16~5\)) # (!\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|Add16~5\) # (GND)))
-- \inst|uart_tx_u1|Add16~7\ = CARRY((!\inst|uart_tx_u1|Add16~5\) # (!\inst|uart_tx_u1|addr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(3),
	datad => VCC,
	cin => \inst|uart_tx_u1|Add16~5\,
	combout => \inst|uart_tx_u1|Add16~6_combout\,
	cout => \inst|uart_tx_u1|Add16~7\);

-- Location: FF_X55_Y38_N3
\inst|uart_tx_u1|Send_addr_w[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|Send_addr[3]~3_combout\,
	clrn => \res~input_o\,
	ena => \inst|uart_tx_u1|Send_addr_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|Send_addr_w\(3));

-- Location: LCCOMB_X55_Y38_N2
\inst|uart_tx_u1|Send_addr[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Send_addr[3]~3_combout\ = (\inst|uart_tx_u1|enable~q\ & (((\inst|uart_tx_u1|Send_addr_w\(3))))) # (!\inst|uart_tx_u1|enable~q\ & ((\inst|uart_tx_u1|always0~4_combout\ & (\inst|uart_tx_u1|Add16~6_combout\)) # 
-- (!\inst|uart_tx_u1|always0~4_combout\ & ((\inst|uart_tx_u1|Send_addr_w\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Add16~6_combout\,
	datab => \inst|uart_tx_u1|enable~q\,
	datac => \inst|uart_tx_u1|Send_addr_w\(3),
	datad => \inst|uart_tx_u1|always0~4_combout\,
	combout => \inst|uart_tx_u1|Send_addr[3]~3_combout\);

-- Location: LCCOMB_X55_Y38_N16
\inst|uart_tx_u1|addr[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr[3]~17_combout\ = (\inst|uart_tx_u1|Send_addr[3]~3_combout\ & ((GND) # (!\inst|uart_tx_u1|addr[2]~16\))) # (!\inst|uart_tx_u1|Send_addr[3]~3_combout\ & (\inst|uart_tx_u1|addr[2]~16\ $ (GND)))
-- \inst|uart_tx_u1|addr[3]~18\ = CARRY((\inst|uart_tx_u1|Send_addr[3]~3_combout\) # (!\inst|uart_tx_u1|addr[2]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[3]~3_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|addr[2]~16\,
	combout => \inst|uart_tx_u1|addr[3]~17_combout\,
	cout => \inst|uart_tx_u1|addr[3]~18\);

-- Location: LCCOMB_X51_Y38_N12
\inst|uart_tx_u1|addr~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~29_combout\ = (\inst|uart_tx_u1|enable~q\ & ((\inst|uart_tx_u1|always0~4_combout\ & (\inst|uart_tx_u1|Send_addr_w\(3))) # (!\inst|uart_tx_u1|always0~4_combout\ & ((\inst|uart_tx_u1|Add16~6_combout\))))) # (!\inst|uart_tx_u1|enable~q\ 
-- & (((\inst|uart_tx_u1|Add16~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr_w\(3),
	datab => \inst|uart_tx_u1|Add16~6_combout\,
	datac => \inst|uart_tx_u1|enable~q\,
	datad => \inst|uart_tx_u1|always0~4_combout\,
	combout => \inst|uart_tx_u1|addr~29_combout\);

-- Location: FF_X55_Y38_N17
\inst|uart_tx_u1|addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|addr[3]~17_combout\,
	asdata => \inst|uart_tx_u1|addr~29_combout\,
	clrn => \res~input_o\,
	sload => \inst|uart_tx_u1|ALT_INV_always0~3_combout\,
	ena => \inst|uart_tx_u1|addr[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|addr\(3));

-- Location: LCCOMB_X51_Y38_N22
\inst|uart_tx_u1|Add16~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add16~8_combout\ = (\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|Add16~7\ $ (GND))) # (!\inst|uart_tx_u1|addr\(4) & (!\inst|uart_tx_u1|Add16~7\ & VCC))
-- \inst|uart_tx_u1|Add16~9\ = CARRY((\inst|uart_tx_u1|addr\(4) & !\inst|uart_tx_u1|Add16~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|addr\(4),
	datad => VCC,
	cin => \inst|uart_tx_u1|Add16~7\,
	combout => \inst|uart_tx_u1|Add16~8_combout\,
	cout => \inst|uart_tx_u1|Add16~9\);

-- Location: FF_X55_Y38_N31
\inst|uart_tx_u1|Send_addr_w[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|Send_addr[4]~2_combout\,
	clrn => \res~input_o\,
	ena => \inst|uart_tx_u1|Send_addr_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|Send_addr_w\(4));

-- Location: LCCOMB_X55_Y38_N30
\inst|uart_tx_u1|Send_addr[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Send_addr[4]~2_combout\ = (\inst|uart_tx_u1|enable~q\ & (((\inst|uart_tx_u1|Send_addr_w\(4))))) # (!\inst|uart_tx_u1|enable~q\ & ((\inst|uart_tx_u1|always0~4_combout\ & (\inst|uart_tx_u1|Add16~8_combout\)) # 
-- (!\inst|uart_tx_u1|always0~4_combout\ & ((\inst|uart_tx_u1|Send_addr_w\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|enable~q\,
	datab => \inst|uart_tx_u1|Add16~8_combout\,
	datac => \inst|uart_tx_u1|Send_addr_w\(4),
	datad => \inst|uart_tx_u1|always0~4_combout\,
	combout => \inst|uart_tx_u1|Send_addr[4]~2_combout\);

-- Location: LCCOMB_X55_Y38_N18
\inst|uart_tx_u1|addr[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr[4]~19_combout\ = (\inst|uart_tx_u1|Send_addr[4]~2_combout\ & (!\inst|uart_tx_u1|addr[3]~18\)) # (!\inst|uart_tx_u1|Send_addr[4]~2_combout\ & ((\inst|uart_tx_u1|addr[3]~18\) # (GND)))
-- \inst|uart_tx_u1|addr[4]~20\ = CARRY((!\inst|uart_tx_u1|addr[3]~18\) # (!\inst|uart_tx_u1|Send_addr[4]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[4]~2_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|addr[3]~18\,
	combout => \inst|uart_tx_u1|addr[4]~19_combout\,
	cout => \inst|uart_tx_u1|addr[4]~20\);

-- Location: LCCOMB_X51_Y38_N4
\inst|uart_tx_u1|addr~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~21_combout\ = (\inst|uart_tx_u1|enable~q\ & ((\inst|uart_tx_u1|always0~4_combout\ & (\inst|uart_tx_u1|Send_addr_w\(4))) # (!\inst|uart_tx_u1|always0~4_combout\ & ((\inst|uart_tx_u1|Add16~8_combout\))))) # (!\inst|uart_tx_u1|enable~q\ 
-- & (((\inst|uart_tx_u1|Add16~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr_w\(4),
	datab => \inst|uart_tx_u1|enable~q\,
	datac => \inst|uart_tx_u1|Add16~8_combout\,
	datad => \inst|uart_tx_u1|always0~4_combout\,
	combout => \inst|uart_tx_u1|addr~21_combout\);

-- Location: FF_X55_Y38_N19
\inst|uart_tx_u1|addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|addr[4]~19_combout\,
	asdata => \inst|uart_tx_u1|addr~21_combout\,
	clrn => \res~input_o\,
	sload => \inst|uart_tx_u1|ALT_INV_always0~3_combout\,
	ena => \inst|uart_tx_u1|addr[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|addr\(4));

-- Location: LCCOMB_X51_Y38_N24
\inst|uart_tx_u1|Add16~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add16~10_combout\ = (\inst|uart_tx_u1|addr\(5) & (!\inst|uart_tx_u1|Add16~9\)) # (!\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|Add16~9\) # (GND)))
-- \inst|uart_tx_u1|Add16~11\ = CARRY((!\inst|uart_tx_u1|Add16~9\) # (!\inst|uart_tx_u1|addr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datad => VCC,
	cin => \inst|uart_tx_u1|Add16~9\,
	combout => \inst|uart_tx_u1|Add16~10_combout\,
	cout => \inst|uart_tx_u1|Add16~11\);

-- Location: FF_X56_Y38_N9
\inst|uart_tx_u1|Send_addr_w[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|Send_addr[5]~6_combout\,
	clrn => \res~input_o\,
	ena => \inst|uart_tx_u1|Send_addr_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|Send_addr_w\(5));

-- Location: LCCOMB_X56_Y38_N8
\inst|uart_tx_u1|Send_addr[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Send_addr[5]~6_combout\ = (\inst|uart_tx_u1|enable~q\ & (((\inst|uart_tx_u1|Send_addr_w\(5))))) # (!\inst|uart_tx_u1|enable~q\ & ((\inst|uart_tx_u1|always0~4_combout\ & (\inst|uart_tx_u1|Add16~10_combout\)) # 
-- (!\inst|uart_tx_u1|always0~4_combout\ & ((\inst|uart_tx_u1|Send_addr_w\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|enable~q\,
	datab => \inst|uart_tx_u1|Add16~10_combout\,
	datac => \inst|uart_tx_u1|Send_addr_w\(5),
	datad => \inst|uart_tx_u1|always0~4_combout\,
	combout => \inst|uart_tx_u1|Send_addr[5]~6_combout\);

-- Location: LCCOMB_X55_Y38_N20
\inst|uart_tx_u1|addr[5]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr[5]~22_combout\ = (\inst|uart_tx_u1|Send_addr[5]~6_combout\ & (\inst|uart_tx_u1|addr[4]~20\ $ (GND))) # (!\inst|uart_tx_u1|Send_addr[5]~6_combout\ & (!\inst|uart_tx_u1|addr[4]~20\ & VCC))
-- \inst|uart_tx_u1|addr[5]~23\ = CARRY((\inst|uart_tx_u1|Send_addr[5]~6_combout\ & !\inst|uart_tx_u1|addr[4]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[5]~6_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|addr[4]~20\,
	combout => \inst|uart_tx_u1|addr[5]~22_combout\,
	cout => \inst|uart_tx_u1|addr[5]~23\);

-- Location: LCCOMB_X51_Y38_N8
\inst|uart_tx_u1|addr~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~27_combout\ = (\inst|uart_tx_u1|enable~q\ & ((\inst|uart_tx_u1|always0~4_combout\ & (\inst|uart_tx_u1|Send_addr_w\(5))) # (!\inst|uart_tx_u1|always0~4_combout\ & ((\inst|uart_tx_u1|Add16~10_combout\))))) # 
-- (!\inst|uart_tx_u1|enable~q\ & (((\inst|uart_tx_u1|Add16~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr_w\(5),
	datab => \inst|uart_tx_u1|enable~q\,
	datac => \inst|uart_tx_u1|Add16~10_combout\,
	datad => \inst|uart_tx_u1|always0~4_combout\,
	combout => \inst|uart_tx_u1|addr~27_combout\);

-- Location: FF_X55_Y38_N21
\inst|uart_tx_u1|addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|addr[5]~22_combout\,
	asdata => \inst|uart_tx_u1|addr~27_combout\,
	clrn => \res~input_o\,
	sload => \inst|uart_tx_u1|ALT_INV_always0~3_combout\,
	ena => \inst|uart_tx_u1|addr[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|addr\(5));

-- Location: LCCOMB_X51_Y38_N26
\inst|uart_tx_u1|Add16~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add16~12_combout\ = (\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|Add16~11\ $ (GND))) # (!\inst|uart_tx_u1|addr\(6) & (!\inst|uart_tx_u1|Add16~11\ & VCC))
-- \inst|uart_tx_u1|Add16~13\ = CARRY((\inst|uart_tx_u1|addr\(6) & !\inst|uart_tx_u1|Add16~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(6),
	datad => VCC,
	cin => \inst|uart_tx_u1|Add16~11\,
	combout => \inst|uart_tx_u1|Add16~12_combout\,
	cout => \inst|uart_tx_u1|Add16~13\);

-- Location: FF_X55_Y38_N9
\inst|uart_tx_u1|Send_addr_w[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|Send_addr[6]~5_combout\,
	clrn => \res~input_o\,
	ena => \inst|uart_tx_u1|Send_addr_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|Send_addr_w\(6));

-- Location: LCCOMB_X55_Y38_N8
\inst|uart_tx_u1|Send_addr[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Send_addr[6]~5_combout\ = (\inst|uart_tx_u1|enable~q\ & (((\inst|uart_tx_u1|Send_addr_w\(6))))) # (!\inst|uart_tx_u1|enable~q\ & ((\inst|uart_tx_u1|always0~4_combout\ & (\inst|uart_tx_u1|Add16~12_combout\)) # 
-- (!\inst|uart_tx_u1|always0~4_combout\ & ((\inst|uart_tx_u1|Send_addr_w\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Add16~12_combout\,
	datab => \inst|uart_tx_u1|enable~q\,
	datac => \inst|uart_tx_u1|Send_addr_w\(6),
	datad => \inst|uart_tx_u1|always0~4_combout\,
	combout => \inst|uart_tx_u1|Send_addr[6]~5_combout\);

-- Location: LCCOMB_X55_Y38_N22
\inst|uart_tx_u1|addr[6]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr[6]~24_combout\ = (\inst|uart_tx_u1|Send_addr[6]~5_combout\ & (!\inst|uart_tx_u1|addr[5]~23\)) # (!\inst|uart_tx_u1|Send_addr[6]~5_combout\ & ((\inst|uart_tx_u1|addr[5]~23\) # (GND)))
-- \inst|uart_tx_u1|addr[6]~25\ = CARRY((!\inst|uart_tx_u1|addr[5]~23\) # (!\inst|uart_tx_u1|Send_addr[6]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[6]~5_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|addr[5]~23\,
	combout => \inst|uart_tx_u1|addr[6]~24_combout\,
	cout => \inst|uart_tx_u1|addr[6]~25\);

-- Location: LCCOMB_X51_Y38_N10
\inst|uart_tx_u1|addr~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~26_combout\ = (\inst|uart_tx_u1|enable~q\ & ((\inst|uart_tx_u1|always0~4_combout\ & (\inst|uart_tx_u1|Send_addr_w\(6))) # (!\inst|uart_tx_u1|always0~4_combout\ & ((\inst|uart_tx_u1|Add16~12_combout\))))) # 
-- (!\inst|uart_tx_u1|enable~q\ & (((\inst|uart_tx_u1|Add16~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr_w\(6),
	datab => \inst|uart_tx_u1|enable~q\,
	datac => \inst|uart_tx_u1|Add16~12_combout\,
	datad => \inst|uart_tx_u1|always0~4_combout\,
	combout => \inst|uart_tx_u1|addr~26_combout\);

-- Location: FF_X55_Y38_N23
\inst|uart_tx_u1|addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|addr[6]~24_combout\,
	asdata => \inst|uart_tx_u1|addr~26_combout\,
	clrn => \res~input_o\,
	sload => \inst|uart_tx_u1|ALT_INV_always0~3_combout\,
	ena => \inst|uart_tx_u1|addr[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|addr\(6));

-- Location: LCCOMB_X51_Y38_N28
\inst|uart_tx_u1|Add16~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add16~14_combout\ = \inst|uart_tx_u1|Add16~13\ $ (\inst|uart_tx_u1|addr\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_tx_u1|addr\(7),
	cin => \inst|uart_tx_u1|Add16~13\,
	combout => \inst|uart_tx_u1|Add16~14_combout\);

-- Location: FF_X55_Y38_N27
\inst|uart_tx_u1|Send_addr_w[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|Send_addr[7]~7_combout\,
	clrn => \res~input_o\,
	ena => \inst|uart_tx_u1|Send_addr_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|Send_addr_w\(7));

-- Location: LCCOMB_X55_Y38_N26
\inst|uart_tx_u1|Send_addr[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Send_addr[7]~7_combout\ = (\inst|uart_tx_u1|enable~q\ & (((\inst|uart_tx_u1|Send_addr_w\(7))))) # (!\inst|uart_tx_u1|enable~q\ & ((\inst|uart_tx_u1|always0~4_combout\ & (\inst|uart_tx_u1|Add16~14_combout\)) # 
-- (!\inst|uart_tx_u1|always0~4_combout\ & ((\inst|uart_tx_u1|Send_addr_w\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|enable~q\,
	datab => \inst|uart_tx_u1|Add16~14_combout\,
	datac => \inst|uart_tx_u1|Send_addr_w\(7),
	datad => \inst|uart_tx_u1|always0~4_combout\,
	combout => \inst|uart_tx_u1|Send_addr[7]~7_combout\);

-- Location: LCCOMB_X55_Y38_N24
\inst|uart_tx_u1|addr[7]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr[7]~30_combout\ = \inst|uart_tx_u1|Send_addr[7]~7_combout\ $ (!\inst|uart_tx_u1|addr[6]~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[7]~7_combout\,
	cin => \inst|uart_tx_u1|addr[6]~25\,
	combout => \inst|uart_tx_u1|addr[7]~30_combout\);

-- Location: LCCOMB_X54_Y38_N6
\inst|uart_tx_u1|addr~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~32_combout\ = (\inst|uart_tx_u1|enable~q\ & ((\inst|uart_tx_u1|always0~4_combout\ & (\inst|uart_tx_u1|Send_addr_w\(7))) # (!\inst|uart_tx_u1|always0~4_combout\ & ((\inst|uart_tx_u1|Add16~14_combout\))))) # 
-- (!\inst|uart_tx_u1|enable~q\ & (((\inst|uart_tx_u1|Add16~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|enable~q\,
	datab => \inst|uart_tx_u1|Send_addr_w\(7),
	datac => \inst|uart_tx_u1|Add16~14_combout\,
	datad => \inst|uart_tx_u1|always0~4_combout\,
	combout => \inst|uart_tx_u1|addr~32_combout\);

-- Location: FF_X55_Y38_N25
\inst|uart_tx_u1|addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|addr[7]~30_combout\,
	asdata => \inst|uart_tx_u1|addr~32_combout\,
	clrn => \res~input_o\,
	sload => \inst|uart_tx_u1|ALT_INV_always0~3_combout\,
	ena => \inst|uart_tx_u1|addr[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|addr\(7));

-- Location: LCCOMB_X53_Y38_N20
\inst|uart_tx_u1|AT|rom~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~13_combout\ = (\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(3) $ (((\inst|uart_tx_u1|addr\(2)) # (!\inst|uart_tx_u1|addr\(5)))))) # (!\inst|uart_tx_u1|addr\(1) & (!\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(2) & 
-- \inst|uart_tx_u1|addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~13_combout\);

-- Location: LCCOMB_X53_Y38_N4
\inst|uart_tx_u1|AT|rom~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~17_combout\ = (\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(2) & !\inst|uart_tx_u1|addr\(3)))) # (!\inst|uart_tx_u1|addr\(5) & (!\inst|uart_tx_u1|addr\(1) & (!\inst|uart_tx_u1|addr\(2) & 
-- \inst|uart_tx_u1|addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~17_combout\);

-- Location: LCCOMB_X53_Y38_N22
\inst|uart_tx_u1|AT|rom~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~14_combout\ = (\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(5)) # ((!\inst|uart_tx_u1|addr\(3))))) # (!\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(1)) # ((!\inst|uart_tx_u1|addr\(5) & \inst|uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~14_combout\);

-- Location: LCCOMB_X53_Y38_N24
\inst|uart_tx_u1|AT|rom~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~15_combout\ = (\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(3) & ((!\inst|uart_tx_u1|addr\(1)) # (!\inst|uart_tx_u1|addr\(2))))) # (!\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(1) $ (\inst|uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(2),
	datac => \inst|uart_tx_u1|addr\(1),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~15_combout\);

-- Location: LCCOMB_X53_Y38_N6
\inst|uart_tx_u1|AT|rom~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~16_combout\ = (\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|addr\(4))) # (!\inst|uart_tx_u1|addr\(6) & ((\inst|uart_tx_u1|addr\(4) & (!\inst|uart_tx_u1|AT|rom~14_combout\)) # (!\inst|uart_tx_u1|addr\(4) & 
-- ((\inst|uart_tx_u1|AT|rom~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(6),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|AT|rom~14_combout\,
	datad => \inst|uart_tx_u1|AT|rom~15_combout\,
	combout => \inst|uart_tx_u1|AT|rom~16_combout\);

-- Location: LCCOMB_X53_Y38_N10
\inst|uart_tx_u1|AT|rom~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~18_combout\ = (\inst|uart_tx_u1|addr\(6) & ((\inst|uart_tx_u1|AT|rom~16_combout\ & ((\inst|uart_tx_u1|AT|rom~17_combout\))) # (!\inst|uart_tx_u1|AT|rom~16_combout\ & (\inst|uart_tx_u1|AT|rom~13_combout\)))) # 
-- (!\inst|uart_tx_u1|addr\(6) & (((\inst|uart_tx_u1|AT|rom~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(6),
	datab => \inst|uart_tx_u1|AT|rom~13_combout\,
	datac => \inst|uart_tx_u1|AT|rom~17_combout\,
	datad => \inst|uart_tx_u1|AT|rom~16_combout\,
	combout => \inst|uart_tx_u1|AT|rom~18_combout\);

-- Location: LCCOMB_X54_Y38_N12
\inst|uart_tx_u1|AT|rom~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~23_combout\ = (\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(4) $ (((\inst|uart_tx_u1|addr\(6)) # (\inst|uart_tx_u1|addr\(2)))))) # (!\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(4)) # ((\inst|uart_tx_u1|addr\(6) & 
-- !\inst|uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(6),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(4),
	combout => \inst|uart_tx_u1|AT|rom~23_combout\);

-- Location: LCCOMB_X54_Y38_N4
\inst|uart_tx_u1|AT|rom~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~19_combout\ = (!\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|addr\(2) & \inst|uart_tx_u1|addr\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(6),
	combout => \inst|uart_tx_u1|AT|rom~19_combout\);

-- Location: LCCOMB_X54_Y38_N26
\inst|uart_tx_u1|AT|rom~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~20_combout\ = (\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|addr\(5) $ (((!\inst|uart_tx_u1|addr\(2) & !\inst|uart_tx_u1|addr\(4)))))) # (!\inst|uart_tx_u1|addr\(6) & ((\inst|uart_tx_u1|addr\(5) & ((!\inst|uart_tx_u1|addr\(4)))) # 
-- (!\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(2) & \inst|uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(6),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(4),
	combout => \inst|uart_tx_u1|AT|rom~20_combout\);

-- Location: LCCOMB_X54_Y38_N24
\inst|uart_tx_u1|AT|rom~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~21_combout\ = (\inst|uart_tx_u1|addr\(6) & ((\inst|uart_tx_u1|addr\(5) & (!\inst|uart_tx_u1|addr\(2))) # (!\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(4)))))) # (!\inst|uart_tx_u1|addr\(6) & ((\inst|uart_tx_u1|addr\(2)) # 
-- (\inst|uart_tx_u1|addr\(5) $ (\inst|uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(6),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(4),
	combout => \inst|uart_tx_u1|AT|rom~21_combout\);

-- Location: LCCOMB_X54_Y38_N18
\inst|uart_tx_u1|AT|rom~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~22_combout\ = (\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(3)) # ((!\inst|uart_tx_u1|AT|rom~20_combout\)))) # (!\inst|uart_tx_u1|addr\(1) & (!\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|AT|rom~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(3),
	datac => \inst|uart_tx_u1|AT|rom~20_combout\,
	datad => \inst|uart_tx_u1|AT|rom~21_combout\,
	combout => \inst|uart_tx_u1|AT|rom~22_combout\);

-- Location: LCCOMB_X54_Y38_N10
\inst|uart_tx_u1|AT|rom~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~24_combout\ = (\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|AT|rom~22_combout\ & (\inst|uart_tx_u1|AT|rom~23_combout\)) # (!\inst|uart_tx_u1|AT|rom~22_combout\ & ((\inst|uart_tx_u1|AT|rom~19_combout\))))) # 
-- (!\inst|uart_tx_u1|addr\(3) & (((\inst|uart_tx_u1|AT|rom~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|AT|rom~23_combout\,
	datab => \inst|uart_tx_u1|addr\(3),
	datac => \inst|uart_tx_u1|AT|rom~19_combout\,
	datad => \inst|uart_tx_u1|AT|rom~22_combout\,
	combout => \inst|uart_tx_u1|AT|rom~24_combout\);

-- Location: LCCOMB_X56_Y38_N26
\inst|uart_tx_u1|AT|rom~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~25_combout\ = (!\inst|uart_tx_u1|addr\(7) & ((\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|AT|rom~18_combout\)) # (!\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|AT|rom~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(0),
	datab => \inst|uart_tx_u1|addr\(7),
	datac => \inst|uart_tx_u1|AT|rom~18_combout\,
	datad => \inst|uart_tx_u1|AT|rom~24_combout\,
	combout => \inst|uart_tx_u1|AT|rom~25_combout\);

-- Location: LCCOMB_X53_Y38_N2
\inst|uart_tx_u1|AT|rom~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~30_combout\ = (!\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(2) $ (\inst|uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~30_combout\);

-- Location: LCCOMB_X52_Y38_N16
\inst|uart_tx_u1|AT|rom~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~26_combout\ = (\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(5) & ((!\inst|uart_tx_u1|addr\(3)))) # (!\inst|uart_tx_u1|addr\(5) & (!\inst|uart_tx_u1|addr\(2))))) # (!\inst|uart_tx_u1|addr\(1) & (((\inst|uart_tx_u1|addr\(2)) 
-- # (\inst|uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~26_combout\);

-- Location: LCCOMB_X53_Y38_N26
\inst|uart_tx_u1|AT|rom~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~28_combout\ = (\inst|uart_tx_u1|addr\(5) & (!\inst|uart_tx_u1|addr\(3) & ((!\inst|uart_tx_u1|addr\(2)) # (!\inst|uart_tx_u1|addr\(1))))) # (!\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(2) & 
-- \inst|uart_tx_u1|addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~28_combout\);

-- Location: LCCOMB_X53_Y38_N28
\inst|uart_tx_u1|AT|rom~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~27_combout\ = (\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(1) & ((!\inst|uart_tx_u1|addr\(3))))) # (!\inst|uart_tx_u1|addr\(5) & (!\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(1) $ (\inst|uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~27_combout\);

-- Location: LCCOMB_X53_Y38_N16
\inst|uart_tx_u1|AT|rom~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~29_combout\ = (\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(4))) # (!\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|AT|rom~27_combout\))) # (!\inst|uart_tx_u1|addr\(4) & 
-- (!\inst|uart_tx_u1|AT|rom~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(0),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|AT|rom~28_combout\,
	datad => \inst|uart_tx_u1|AT|rom~27_combout\,
	combout => \inst|uart_tx_u1|AT|rom~29_combout\);

-- Location: LCCOMB_X53_Y38_N8
\inst|uart_tx_u1|AT|rom~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~31_combout\ = (\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|AT|rom~29_combout\ & (\inst|uart_tx_u1|AT|rom~30_combout\)) # (!\inst|uart_tx_u1|AT|rom~29_combout\ & ((!\inst|uart_tx_u1|AT|rom~26_combout\))))) # 
-- (!\inst|uart_tx_u1|addr\(0) & (((\inst|uart_tx_u1|AT|rom~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(0),
	datab => \inst|uart_tx_u1|AT|rom~30_combout\,
	datac => \inst|uart_tx_u1|AT|rom~26_combout\,
	datad => \inst|uart_tx_u1|AT|rom~29_combout\,
	combout => \inst|uart_tx_u1|AT|rom~31_combout\);

-- Location: LCCOMB_X52_Y38_N6
\inst|uart_tx_u1|AT|rom~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~32_combout\ = (\inst|uart_tx_u1|addr\(3) & (!\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(1) $ (\inst|uart_tx_u1|addr\(2))))) # (!\inst|uart_tx_u1|addr\(3) & (!\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(2) & 
-- \inst|uart_tx_u1|addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(3),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(0),
	combout => \inst|uart_tx_u1|AT|rom~32_combout\);

-- Location: LCCOMB_X54_Y38_N0
\inst|uart_tx_u1|AT|rom~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~36_combout\ = (\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(2) & \inst|uart_tx_u1|addr\(0))) # (!\inst|uart_tx_u1|addr\(1) & ((!\inst|uart_tx_u1|addr\(0)))))) # (!\inst|uart_tx_u1|addr\(3) & 
-- ((\inst|uart_tx_u1|addr\(2) $ (\inst|uart_tx_u1|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(3),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(0),
	combout => \inst|uart_tx_u1|AT|rom~36_combout\);

-- Location: LCCOMB_X53_Y38_N30
\inst|uart_tx_u1|AT|rom~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~33_combout\ = (\inst|uart_tx_u1|addr\(0) & (!\inst|uart_tx_u1|addr\(3))) # (!\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(3)) # (\inst|uart_tx_u1|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(3),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(0),
	combout => \inst|uart_tx_u1|AT|rom~33_combout\);

-- Location: LCCOMB_X53_Y38_N12
\inst|uart_tx_u1|AT|rom~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~34_combout\ = (\inst|uart_tx_u1|addr\(3) & (((\inst|uart_tx_u1|addr\(0))))) # (!\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|addr\(2) & (!\inst|uart_tx_u1|addr\(1))) # (!\inst|uart_tx_u1|addr\(2) & 
-- ((\inst|uart_tx_u1|addr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(3),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(0),
	combout => \inst|uart_tx_u1|AT|rom~34_combout\);

-- Location: LCCOMB_X53_Y38_N18
\inst|uart_tx_u1|AT|rom~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~35_combout\ = (\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(4)) # ((\inst|uart_tx_u1|AT|rom~33_combout\)))) # (!\inst|uart_tx_u1|addr\(5) & (!\inst|uart_tx_u1|addr\(4) & ((!\inst|uart_tx_u1|AT|rom~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|AT|rom~33_combout\,
	datad => \inst|uart_tx_u1|AT|rom~34_combout\,
	combout => \inst|uart_tx_u1|AT|rom~35_combout\);

-- Location: LCCOMB_X53_Y38_N0
\inst|uart_tx_u1|AT|rom~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~37_combout\ = (\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|AT|rom~35_combout\ & ((!\inst|uart_tx_u1|AT|rom~36_combout\))) # (!\inst|uart_tx_u1|AT|rom~35_combout\ & (!\inst|uart_tx_u1|AT|rom~32_combout\)))) # 
-- (!\inst|uart_tx_u1|addr\(4) & (((\inst|uart_tx_u1|AT|rom~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|AT|rom~32_combout\,
	datac => \inst|uart_tx_u1|AT|rom~36_combout\,
	datad => \inst|uart_tx_u1|AT|rom~35_combout\,
	combout => \inst|uart_tx_u1|AT|rom~37_combout\);

-- Location: LCCOMB_X53_Y38_N14
\inst|uart_tx_u1|AT|rom~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~38_combout\ = (!\inst|uart_tx_u1|addr\(7) & ((\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|AT|rom~31_combout\)) # (!\inst|uart_tx_u1|addr\(6) & ((\inst|uart_tx_u1|AT|rom~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(6),
	datab => \inst|uart_tx_u1|addr\(7),
	datac => \inst|uart_tx_u1|AT|rom~31_combout\,
	datad => \inst|uart_tx_u1|AT|rom~37_combout\,
	combout => \inst|uart_tx_u1|AT|rom~38_combout\);

-- Location: LCCOMB_X59_Y38_N18
\inst|uart_tx_u1|AT|rom~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~10_combout\ = (\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(0)) # ((!\inst|uart_tx_u1|addr\(6) & \inst|uart_tx_u1|addr\(2))))) # (!\inst|uart_tx_u1|addr\(5) & (((\inst|uart_tx_u1|addr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(6),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~10_combout\);

-- Location: LCCOMB_X59_Y38_N14
\inst|uart_tx_u1|AT|rom~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~6_combout\ = (\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(0)) # ((\inst|uart_tx_u1|addr\(6)) # (!\inst|uart_tx_u1|addr\(2))))) # (!\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|addr\(0))) # 
-- (!\inst|uart_tx_u1|addr\(6) & ((\inst|uart_tx_u1|addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(6),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~6_combout\);

-- Location: LCCOMB_X59_Y38_N22
\inst|uart_tx_u1|AT|rom~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~8_combout\ = (\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(0) & (!\inst|uart_tx_u1|addr\(6) & \inst|uart_tx_u1|addr\(2))) # (!\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(6) & !\inst|uart_tx_u1|addr\(2))))) # 
-- (!\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(0) $ (\inst|uart_tx_u1|addr\(6) $ (\inst|uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(6),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~8_combout\);

-- Location: LCCOMB_X59_Y38_N28
\inst|uart_tx_u1|AT|rom~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~7_combout\ = (\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(0) & ((!\inst|uart_tx_u1|addr\(2)))) # (!\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(6) & \inst|uart_tx_u1|addr\(2))))) # (!\inst|uart_tx_u1|addr\(5) & 
-- ((\inst|uart_tx_u1|addr\(6) & (!\inst|uart_tx_u1|addr\(0) & !\inst|uart_tx_u1|addr\(2))) # (!\inst|uart_tx_u1|addr\(6) & ((\inst|uart_tx_u1|addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(6),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~7_combout\);

-- Location: LCCOMB_X59_Y38_N0
\inst|uart_tx_u1|AT|rom~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~9_combout\ = (\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|addr\(1))) # (!\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|AT|rom~7_combout\))) # (!\inst|uart_tx_u1|addr\(1) & 
-- (\inst|uart_tx_u1|AT|rom~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|AT|rom~8_combout\,
	datad => \inst|uart_tx_u1|AT|rom~7_combout\,
	combout => \inst|uart_tx_u1|AT|rom~9_combout\);

-- Location: LCCOMB_X59_Y38_N8
\inst|uart_tx_u1|AT|rom~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~11_combout\ = (\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|AT|rom~9_combout\ & (!\inst|uart_tx_u1|AT|rom~10_combout\)) # (!\inst|uart_tx_u1|AT|rom~9_combout\ & ((\inst|uart_tx_u1|AT|rom~6_combout\))))) # 
-- (!\inst|uart_tx_u1|addr\(4) & (((\inst|uart_tx_u1|AT|rom~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|AT|rom~10_combout\,
	datac => \inst|uart_tx_u1|AT|rom~6_combout\,
	datad => \inst|uart_tx_u1|AT|rom~9_combout\,
	combout => \inst|uart_tx_u1|AT|rom~11_combout\);

-- Location: LCCOMB_X60_Y38_N20
\inst|uart_tx_u1|AT|rom~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~4_combout\ = (\inst|uart_tx_u1|addr\(4) & (!\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|addr\(1) $ (\inst|uart_tx_u1|addr\(0))))) # (!\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(6),
	datad => \inst|uart_tx_u1|addr\(4),
	combout => \inst|uart_tx_u1|AT|rom~4_combout\);

-- Location: LCCOMB_X60_Y38_N8
\inst|uart_tx_u1|AT|rom~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~0_combout\ = (\inst|uart_tx_u1|addr\(0) & (!\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(6) & !\inst|uart_tx_u1|addr\(4)))) # (!\inst|uart_tx_u1|addr\(0) & (!\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|addr\(1) $ 
-- (\inst|uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(6),
	datad => \inst|uart_tx_u1|addr\(4),
	combout => \inst|uart_tx_u1|AT|rom~0_combout\);

-- Location: LCCOMB_X60_Y38_N22
\inst|uart_tx_u1|AT|rom~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~1_combout\ = (\inst|uart_tx_u1|addr\(6) & (!\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(0)) # (!\inst|uart_tx_u1|addr\(4))))) # (!\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|addr\(0) $ (((\inst|uart_tx_u1|addr\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(6),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|addr\(1),
	combout => \inst|uart_tx_u1|AT|rom~1_combout\);

-- Location: LCCOMB_X60_Y38_N12
\inst|uart_tx_u1|AT|rom~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~2_combout\ = (\inst|uart_tx_u1|addr\(6) & ((\inst|uart_tx_u1|addr\(0) $ (!\inst|uart_tx_u1|addr\(4))) # (!\inst|uart_tx_u1|addr\(1)))) # (!\inst|uart_tx_u1|addr\(6) & ((\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(1)) # 
-- (!\inst|uart_tx_u1|addr\(4)))) # (!\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(6),
	datad => \inst|uart_tx_u1|addr\(4),
	combout => \inst|uart_tx_u1|AT|rom~2_combout\);

-- Location: LCCOMB_X60_Y38_N6
\inst|uart_tx_u1|AT|rom~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~3_combout\ = (\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(5)) # ((!\inst|uart_tx_u1|AT|rom~1_combout\)))) # (!\inst|uart_tx_u1|addr\(2) & (!\inst|uart_tx_u1|addr\(5) & ((!\inst|uart_tx_u1|AT|rom~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|AT|rom~1_combout\,
	datad => \inst|uart_tx_u1|AT|rom~2_combout\,
	combout => \inst|uart_tx_u1|AT|rom~3_combout\);

-- Location: LCCOMB_X60_Y38_N10
\inst|uart_tx_u1|AT|rom~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~5_combout\ = (\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|AT|rom~3_combout\ & (\inst|uart_tx_u1|AT|rom~4_combout\)) # (!\inst|uart_tx_u1|AT|rom~3_combout\ & ((\inst|uart_tx_u1|AT|rom~0_combout\))))) # (!\inst|uart_tx_u1|addr\(5) 
-- & (((\inst|uart_tx_u1|AT|rom~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|AT|rom~4_combout\,
	datac => \inst|uart_tx_u1|AT|rom~0_combout\,
	datad => \inst|uart_tx_u1|AT|rom~3_combout\,
	combout => \inst|uart_tx_u1|AT|rom~5_combout\);

-- Location: LCCOMB_X56_Y38_N4
\inst|uart_tx_u1|AT|rom~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~12_combout\ = (!\inst|uart_tx_u1|addr\(7) & ((\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|AT|rom~5_combout\))) # (!\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|AT|rom~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(3),
	datab => \inst|uart_tx_u1|addr\(7),
	datac => \inst|uart_tx_u1|AT|rom~11_combout\,
	datad => \inst|uart_tx_u1|AT|rom~5_combout\,
	combout => \inst|uart_tx_u1|AT|rom~12_combout\);

-- Location: LCCOMB_X59_Y38_N2
\inst|uart_tx_u1|AT|rom~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~45_combout\ = (\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|addr\(0))) # (!\inst|uart_tx_u1|addr\(6) & ((\inst|uart_tx_u1|addr\(0) & ((!\inst|uart_tx_u1|addr\(2)))) # (!\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(4)) # 
-- (\inst|uart_tx_u1|addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(6),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~45_combout\);

-- Location: LCCOMB_X59_Y38_N26
\inst|uart_tx_u1|AT|rom~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~49_combout\ = (\inst|uart_tx_u1|addr\(6) & ((\inst|uart_tx_u1|addr\(2)) # (\inst|uart_tx_u1|addr\(0) $ (\inst|uart_tx_u1|addr\(4))))) # (!\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|addr\(0) $ (((\inst|uart_tx_u1|addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(6),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~49_combout\);

-- Location: LCCOMB_X59_Y38_N30
\inst|uart_tx_u1|AT|rom~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~47_combout\ = (\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|addr\(6) $ (!\inst|uart_tx_u1|addr\(0))))) # (!\inst|uart_tx_u1|addr\(2) & (!\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(6) $ 
-- (\inst|uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(6),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~47_combout\);

-- Location: LCCOMB_X59_Y38_N24
\inst|uart_tx_u1|AT|rom~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~46_combout\ = (\inst|uart_tx_u1|addr\(6) & ((\inst|uart_tx_u1|addr\(4)) # ((\inst|uart_tx_u1|addr\(0) & \inst|uart_tx_u1|addr\(2))))) # (!\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|addr\(0) $ ((\inst|uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(6),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~46_combout\);

-- Location: LCCOMB_X59_Y38_N12
\inst|uart_tx_u1|AT|rom~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~48_combout\ = (\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(1))) # (!\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(1) & ((!\inst|uart_tx_u1|AT|rom~46_combout\))) # (!\inst|uart_tx_u1|addr\(1) & 
-- (\inst|uart_tx_u1|AT|rom~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|AT|rom~47_combout\,
	datad => \inst|uart_tx_u1|AT|rom~46_combout\,
	combout => \inst|uart_tx_u1|AT|rom~48_combout\);

-- Location: LCCOMB_X59_Y38_N20
\inst|uart_tx_u1|AT|rom~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~50_combout\ = (\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|AT|rom~48_combout\ & ((\inst|uart_tx_u1|AT|rom~49_combout\))) # (!\inst|uart_tx_u1|AT|rom~48_combout\ & (!\inst|uart_tx_u1|AT|rom~45_combout\)))) # 
-- (!\inst|uart_tx_u1|addr\(5) & (((\inst|uart_tx_u1|AT|rom~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|AT|rom~45_combout\,
	datac => \inst|uart_tx_u1|AT|rom~49_combout\,
	datad => \inst|uart_tx_u1|AT|rom~48_combout\,
	combout => \inst|uart_tx_u1|AT|rom~50_combout\);

-- Location: LCCOMB_X60_Y38_N24
\inst|uart_tx_u1|AT|rom~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~43_combout\ = (\inst|uart_tx_u1|addr\(0) & !\inst|uart_tx_u1|addr\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(6),
	combout => \inst|uart_tx_u1|AT|rom~43_combout\);

-- Location: LCCOMB_X60_Y38_N4
\inst|uart_tx_u1|AT|rom~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~39_combout\ = (\inst|uart_tx_u1|addr\(1) & (!\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(6)) # (!\inst|uart_tx_u1|addr\(2))))) # (!\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(0) $ (((!\inst|uart_tx_u1|addr\(2) & 
-- \inst|uart_tx_u1|addr\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(6),
	datad => \inst|uart_tx_u1|addr\(1),
	combout => \inst|uart_tx_u1|AT|rom~39_combout\);

-- Location: LCCOMB_X60_Y38_N26
\inst|uart_tx_u1|AT|rom~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~40_combout\ = (!\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(6) & !\inst|uart_tx_u1|addr\(1))) # (!\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(6),
	datad => \inst|uart_tx_u1|addr\(1),
	combout => \inst|uart_tx_u1|AT|rom~40_combout\);

-- Location: LCCOMB_X60_Y38_N28
\inst|uart_tx_u1|AT|rom~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~41_combout\ = (\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|addr\(0) & \inst|uart_tx_u1|addr\(1))) # (!\inst|uart_tx_u1|addr\(6) & ((!\inst|uart_tx_u1|addr\(1)))))) # (!\inst|uart_tx_u1|addr\(2) & 
-- (!\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(6) $ (\inst|uart_tx_u1|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(6),
	datad => \inst|uart_tx_u1|addr\(1),
	combout => \inst|uart_tx_u1|AT|rom~41_combout\);

-- Location: LCCOMB_X60_Y38_N18
\inst|uart_tx_u1|AT|rom~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~42_combout\ = (\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|addr\(5))) # (!\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|AT|rom~40_combout\)) # (!\inst|uart_tx_u1|addr\(5) & 
-- ((\inst|uart_tx_u1|AT|rom~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|AT|rom~40_combout\,
	datad => \inst|uart_tx_u1|AT|rom~41_combout\,
	combout => \inst|uart_tx_u1|AT|rom~42_combout\);

-- Location: LCCOMB_X60_Y38_N30
\inst|uart_tx_u1|AT|rom~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~44_combout\ = (\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|AT|rom~42_combout\ & (\inst|uart_tx_u1|AT|rom~43_combout\)) # (!\inst|uart_tx_u1|AT|rom~42_combout\ & ((\inst|uart_tx_u1|AT|rom~39_combout\))))) # 
-- (!\inst|uart_tx_u1|addr\(4) & (((\inst|uart_tx_u1|AT|rom~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|AT|rom~43_combout\,
	datac => \inst|uart_tx_u1|AT|rom~39_combout\,
	datad => \inst|uart_tx_u1|AT|rom~42_combout\,
	combout => \inst|uart_tx_u1|AT|rom~44_combout\);

-- Location: LCCOMB_X56_Y38_N20
\inst|uart_tx_u1|AT|rom~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~51_combout\ = (!\inst|uart_tx_u1|addr\(7) & ((\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|AT|rom~44_combout\))) # (!\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|AT|rom~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(3),
	datab => \inst|uart_tx_u1|addr\(7),
	datac => \inst|uart_tx_u1|AT|rom~50_combout\,
	datad => \inst|uart_tx_u1|AT|rom~44_combout\,
	combout => \inst|uart_tx_u1|AT|rom~51_combout\);

-- Location: LCCOMB_X56_Y38_N0
\inst|uart_tx_u1|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Equal4~0_combout\ = ((\inst|uart_tx_u1|AT|rom~38_combout\) # ((\inst|uart_tx_u1|AT|rom~12_combout\) # (!\inst|uart_tx_u1|AT|rom~51_combout\))) # (!\inst|uart_tx_u1|AT|rom~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|AT|rom~25_combout\,
	datab => \inst|uart_tx_u1|AT|rom~38_combout\,
	datac => \inst|uart_tx_u1|AT|rom~12_combout\,
	datad => \inst|uart_tx_u1|AT|rom~51_combout\,
	combout => \inst|uart_tx_u1|Equal4~0_combout\);

-- Location: LCCOMB_X56_Y38_N12
\inst|uart_tx_u1|always0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|always0~4_combout\ = (\inst|uart_tx_u1|always0~1_combout\ & (!\inst|uart_tx_u1|Equal4~0_combout\ & (!\inst|uart_tx_u1|AT|rom~60_combout\ & !\inst|uart_tx_u1|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|always0~1_combout\,
	datab => \inst|uart_tx_u1|Equal4~0_combout\,
	datac => \inst|uart_tx_u1|AT|rom~60_combout\,
	datad => \inst|uart_tx_u1|Equal4~2_combout\,
	combout => \inst|uart_tx_u1|always0~4_combout\);

-- Location: LCCOMB_X56_Y38_N30
\inst|uart_tx_u1|Send_addr_w[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Send_addr_w[0]~0_combout\ = (\inst|uart_tx_u1|always0~4_combout\ & (\inst|uart_tx_u1|stage_tx.STOP~q\ & \inst|uart_tx_u1|always0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|always0~4_combout\,
	datac => \inst|uart_tx_u1|stage_tx.STOP~q\,
	datad => \inst|uart_tx_u1|always0~0_combout\,
	combout => \inst|uart_tx_u1|Send_addr_w[0]~0_combout\);

-- Location: FF_X60_Y38_N17
\inst|uart_tx_u1|enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|enable~feeder_combout\,
	clrn => \res~input_o\,
	ena => \inst|uart_tx_u1|Send_addr_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|enable~q\);

-- Location: LCCOMB_X56_Y38_N10
\inst|uart_tx_u1|always1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|always1~0_combout\ = (!\inst|uart_tx_u1|enable~q\ & (\inst|uart_tx_u1|always0~1_combout\ & !\inst|uart_tx_u1|Equal4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|enable~q\,
	datac => \inst|uart_tx_u1|always0~1_combout\,
	datad => \inst|uart_tx_u1|Equal4~1_combout\,
	combout => \inst|uart_tx_u1|always1~0_combout\);

-- Location: LCCOMB_X59_Y38_N4
\inst|uart_tx_u1|Send_addr_w[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Send_addr_w[0]~1_combout\ = (\inst|uart_tx_u1|Send_addr_w[0]~0_combout\ & ((\inst|uart_tx_u1|always1~0_combout\ & ((\inst|uart_tx_u1|Add16~0_combout\))) # (!\inst|uart_tx_u1|always1~0_combout\ & (\inst|uart_tx_u1|Send_addr_w\(0))))) # 
-- (!\inst|uart_tx_u1|Send_addr_w[0]~0_combout\ & (((\inst|uart_tx_u1|Send_addr_w\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr_w[0]~0_combout\,
	datab => \inst|uart_tx_u1|always1~0_combout\,
	datac => \inst|uart_tx_u1|Send_addr_w\(0),
	datad => \inst|uart_tx_u1|Add16~0_combout\,
	combout => \inst|uart_tx_u1|Send_addr_w[0]~1_combout\);

-- Location: FF_X59_Y38_N5
\inst|uart_tx_u1|Send_addr_w[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|Send_addr_w[0]~1_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|Send_addr_w\(0));

-- Location: LCCOMB_X56_Y38_N16
\inst|uart_tx_u1|addr~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~8_combout\ = ((\inst|uart_tx_u1|Equal4~1_combout\) # (!\inst|uart_tx_u1|always0~1_combout\)) # (!\inst|uart_tx_u1|enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|enable~q\,
	datac => \inst|uart_tx_u1|always0~1_combout\,
	datad => \inst|uart_tx_u1|Equal4~1_combout\,
	combout => \inst|uart_tx_u1|addr~8_combout\);

-- Location: LCCOMB_X59_Y38_N6
\inst|uart_tx_u1|addr[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr[0]~10_combout\ = (\inst|uart_tx_u1|Send_addr_w\(0) & ((\inst|uart_tx_u1|always0~3_combout\ & (!\inst|uart_tx_u1|always1~0_combout\)) # (!\inst|uart_tx_u1|always0~3_combout\ & ((!\inst|uart_tx_u1|addr~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|always1~0_combout\,
	datab => \inst|uart_tx_u1|Send_addr_w\(0),
	datac => \inst|uart_tx_u1|addr~8_combout\,
	datad => \inst|uart_tx_u1|always0~3_combout\,
	combout => \inst|uart_tx_u1|addr[0]~10_combout\);

-- Location: LCCOMB_X59_Y38_N10
\inst|uart_tx_u1|addr[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr[0]~9_combout\ = (\inst|uart_tx_u1|Add16~0_combout\ & ((\inst|uart_tx_u1|always0~3_combout\ & (\inst|uart_tx_u1|always1~0_combout\)) # (!\inst|uart_tx_u1|always0~3_combout\ & ((\inst|uart_tx_u1|addr~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|always1~0_combout\,
	datab => \inst|uart_tx_u1|Add16~0_combout\,
	datac => \inst|uart_tx_u1|addr~8_combout\,
	datad => \inst|uart_tx_u1|always0~3_combout\,
	combout => \inst|uart_tx_u1|addr[0]~9_combout\);

-- Location: LCCOMB_X59_Y38_N16
\inst|uart_tx_u1|addr[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr[0]~11_combout\ = (\inst|uart_tx_u1|addr[0]~7_combout\ & ((\inst|uart_tx_u1|addr[0]~10_combout\) # ((\inst|uart_tx_u1|addr[0]~9_combout\)))) # (!\inst|uart_tx_u1|addr[0]~7_combout\ & (((\inst|uart_tx_u1|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr[0]~10_combout\,
	datab => \inst|uart_tx_u1|addr[0]~7_combout\,
	datac => \inst|uart_tx_u1|addr\(0),
	datad => \inst|uart_tx_u1|addr[0]~9_combout\,
	combout => \inst|uart_tx_u1|addr[0]~11_combout\);

-- Location: FF_X59_Y38_N17
\inst|uart_tx_u1|addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|addr[0]~11_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|addr\(0));

-- Location: LCCOMB_X57_Y38_N20
\inst|uart_tx_u1|AT|rom~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~65_combout\ = (\inst|uart_tx_u1|addr\(3) & (((\inst|uart_tx_u1|addr\(6)) # (!\inst|uart_tx_u1|addr\(1))) # (!\inst|uart_tx_u1|addr\(2)))) # (!\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|addr\(2) $ (((\inst|uart_tx_u1|addr\(6) & 
-- !\inst|uart_tx_u1|addr\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(6),
	datac => \inst|uart_tx_u1|addr\(1),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~65_combout\);

-- Location: LCCOMB_X52_Y38_N2
\inst|uart_tx_u1|AT|rom~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~61_combout\ = (\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(1)) # ((\inst|uart_tx_u1|addr\(6) & \inst|uart_tx_u1|addr\(3))))) # (!\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(6),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~61_combout\);

-- Location: LCCOMB_X54_Y38_N30
\inst|uart_tx_u1|AT|rom~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~62_combout\ = (\inst|uart_tx_u1|addr\(6) & (!\inst|uart_tx_u1|addr\(1))) # (!\inst|uart_tx_u1|addr\(6) & ((\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(3)))) # (!\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(1) & 
-- !\inst|uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(6),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~62_combout\);

-- Location: LCCOMB_X54_Y38_N20
\inst|uart_tx_u1|AT|rom~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~63_combout\ = (\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(6) & ((!\inst|uart_tx_u1|addr\(3))))) # (!\inst|uart_tx_u1|addr\(1) & (!\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|addr\(2) & \inst|uart_tx_u1|addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(6),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~63_combout\);

-- Location: LCCOMB_X54_Y38_N22
\inst|uart_tx_u1|AT|rom~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~64_combout\ = (\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(4)) # ((\inst|uart_tx_u1|AT|rom~62_combout\)))) # (!\inst|uart_tx_u1|addr\(5) & (!\inst|uart_tx_u1|addr\(4) & ((!\inst|uart_tx_u1|AT|rom~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|AT|rom~62_combout\,
	datad => \inst|uart_tx_u1|AT|rom~63_combout\,
	combout => \inst|uart_tx_u1|AT|rom~64_combout\);

-- Location: LCCOMB_X56_Y38_N14
\inst|uart_tx_u1|AT|rom~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~66_combout\ = (\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|AT|rom~64_combout\ & (!\inst|uart_tx_u1|AT|rom~65_combout\)) # (!\inst|uart_tx_u1|AT|rom~64_combout\ & ((\inst|uart_tx_u1|AT|rom~61_combout\))))) # 
-- (!\inst|uart_tx_u1|addr\(4) & (((\inst|uart_tx_u1|AT|rom~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|AT|rom~65_combout\,
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|AT|rom~61_combout\,
	datad => \inst|uart_tx_u1|AT|rom~64_combout\,
	combout => \inst|uart_tx_u1|AT|rom~66_combout\);

-- Location: LCCOMB_X57_Y38_N14
\inst|uart_tx_u1|AT|rom~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~67_combout\ = (\inst|uart_tx_u1|addr\(4) & (((\inst|uart_tx_u1|addr\(5) & \inst|uart_tx_u1|addr\(2))) # (!\inst|uart_tx_u1|addr\(1)))) # (!\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|addr\(5) $ (((\inst|uart_tx_u1|addr\(1) & 
-- !\inst|uart_tx_u1|addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(5),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~67_combout\);

-- Location: LCCOMB_X54_Y38_N2
\inst|uart_tx_u1|AT|rom~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~71_combout\ = (\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(2) & !\inst|uart_tx_u1|addr\(4)))) # (!\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(1) $ (((\inst|uart_tx_u1|addr\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(4),
	combout => \inst|uart_tx_u1|AT|rom~71_combout\);

-- Location: LCCOMB_X54_Y38_N14
\inst|uart_tx_u1|AT|rom~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~69_combout\ = (\inst|uart_tx_u1|addr\(4) & (!\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(5)) # (\inst|uart_tx_u1|addr\(1))))) # (!\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(2),
	datac => \inst|uart_tx_u1|addr\(1),
	datad => \inst|uart_tx_u1|addr\(4),
	combout => \inst|uart_tx_u1|AT|rom~69_combout\);

-- Location: LCCOMB_X54_Y38_N28
\inst|uart_tx_u1|AT|rom~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~68_combout\ = (\inst|uart_tx_u1|addr\(1) & (((\inst|uart_tx_u1|addr\(2)) # (!\inst|uart_tx_u1|addr\(4))) # (!\inst|uart_tx_u1|addr\(5)))) # (!\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(4)) # (\inst|uart_tx_u1|addr\(5) $ 
-- (\inst|uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(4),
	combout => \inst|uart_tx_u1|AT|rom~68_combout\);

-- Location: LCCOMB_X54_Y38_N8
\inst|uart_tx_u1|AT|rom~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~70_combout\ = (\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|addr\(6))) # (!\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|addr\(6) & ((!\inst|uart_tx_u1|AT|rom~68_combout\))) # (!\inst|uart_tx_u1|addr\(6) & 
-- (\inst|uart_tx_u1|AT|rom~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(3),
	datab => \inst|uart_tx_u1|addr\(6),
	datac => \inst|uart_tx_u1|AT|rom~69_combout\,
	datad => \inst|uart_tx_u1|AT|rom~68_combout\,
	combout => \inst|uart_tx_u1|AT|rom~70_combout\);

-- Location: LCCOMB_X56_Y38_N24
\inst|uart_tx_u1|AT|rom~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~72_combout\ = (\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|AT|rom~70_combout\ & ((\inst|uart_tx_u1|AT|rom~71_combout\))) # (!\inst|uart_tx_u1|AT|rom~70_combout\ & (\inst|uart_tx_u1|AT|rom~67_combout\)))) # 
-- (!\inst|uart_tx_u1|addr\(3) & (((\inst|uart_tx_u1|AT|rom~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(3),
	datab => \inst|uart_tx_u1|AT|rom~67_combout\,
	datac => \inst|uart_tx_u1|AT|rom~71_combout\,
	datad => \inst|uart_tx_u1|AT|rom~70_combout\,
	combout => \inst|uart_tx_u1|AT|rom~72_combout\);

-- Location: LCCOMB_X56_Y38_N22
\inst|uart_tx_u1|AT|rom~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~73_combout\ = (!\inst|uart_tx_u1|addr\(7) & ((\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|AT|rom~66_combout\)) # (!\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|AT|rom~72_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(0),
	datab => \inst|uart_tx_u1|addr\(7),
	datac => \inst|uart_tx_u1|AT|rom~66_combout\,
	datad => \inst|uart_tx_u1|AT|rom~72_combout\,
	combout => \inst|uart_tx_u1|AT|rom~73_combout\);

-- Location: LCCOMB_X56_Y38_N6
\inst|uart_tx_u1|Equal4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Equal4~1_combout\ = (\inst|uart_tx_u1|AT|rom~73_combout\) # ((\inst|uart_tx_u1|AT|rom~84_combout\) # ((\inst|uart_tx_u1|AT|rom~60_combout\) # (\inst|uart_tx_u1|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|AT|rom~73_combout\,
	datab => \inst|uart_tx_u1|AT|rom~84_combout\,
	datac => \inst|uart_tx_u1|AT|rom~60_combout\,
	datad => \inst|uart_tx_u1|Equal4~0_combout\,
	combout => \inst|uart_tx_u1|Equal4~1_combout\);

-- Location: LCCOMB_X56_Y37_N10
\inst|uart_tx_u1|cnt_rom[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_rom[0]~6_combout\ = \inst|uart_tx_u1|cnt_rom\(0) $ (((!\inst|uart_tx_u1|Equal4~1_combout\ & (\inst|uart_tx_u1|stage_tx.SEND_DATA~q\ & \inst|uart_tx_u1|always5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Equal4~1_combout\,
	datab => \inst|uart_tx_u1|stage_tx.SEND_DATA~q\,
	datac => \inst|uart_tx_u1|cnt_rom\(0),
	datad => \inst|uart_tx_u1|always5~0_combout\,
	combout => \inst|uart_tx_u1|cnt_rom[0]~6_combout\);

-- Location: FF_X56_Y37_N11
\inst|uart_tx_u1|cnt_rom[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|cnt_rom[0]~6_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|cnt_rom\(0));

-- Location: LCCOMB_X56_Y37_N30
\inst|uart_tx_u1|cnt_rom[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_rom[1]~5_combout\ = (\inst|uart_tx_u1|cnt_rom[3]~2_combout\ & (((\inst|uart_tx_u1|cnt_rom\(1))))) # (!\inst|uart_tx_u1|cnt_rom[3]~2_combout\ & (\inst|uart_tx_u1|always5~1_combout\ & (\inst|uart_tx_u1|cnt_rom\(0) $ 
-- (\inst|uart_tx_u1|cnt_rom\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|always5~1_combout\,
	datab => \inst|uart_tx_u1|cnt_rom\(0),
	datac => \inst|uart_tx_u1|cnt_rom\(1),
	datad => \inst|uart_tx_u1|cnt_rom[3]~2_combout\,
	combout => \inst|uart_tx_u1|cnt_rom[1]~5_combout\);

-- Location: FF_X56_Y37_N31
\inst|uart_tx_u1|cnt_rom[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|cnt_rom[1]~5_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|cnt_rom\(1));

-- Location: LCCOMB_X56_Y37_N18
\inst|uart_tx_u1|Add19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add19~0_combout\ = \inst|uart_tx_u1|cnt_rom\(2) $ (((\inst|uart_tx_u1|cnt_rom\(1) & \inst|uart_tx_u1|cnt_rom\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_rom\(2),
	datac => \inst|uart_tx_u1|cnt_rom\(1),
	datad => \inst|uart_tx_u1|cnt_rom\(0),
	combout => \inst|uart_tx_u1|Add19~0_combout\);

-- Location: LCCOMB_X56_Y37_N12
\inst|uart_tx_u1|cnt_rom[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_rom[2]~3_combout\ = (\inst|uart_tx_u1|cnt_rom[3]~2_combout\ & (((\inst|uart_tx_u1|cnt_rom\(2))))) # (!\inst|uart_tx_u1|cnt_rom[3]~2_combout\ & (((\inst|uart_tx_u1|Add19~0_combout\)) # (!\inst|uart_tx_u1|always5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|always5~1_combout\,
	datab => \inst|uart_tx_u1|Add19~0_combout\,
	datac => \inst|uart_tx_u1|cnt_rom\(2),
	datad => \inst|uart_tx_u1|cnt_rom[3]~2_combout\,
	combout => \inst|uart_tx_u1|cnt_rom[2]~3_combout\);

-- Location: FF_X56_Y37_N13
\inst|uart_tx_u1|cnt_rom[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|cnt_rom[2]~3_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|cnt_rom\(2));

-- Location: LCCOMB_X56_Y37_N20
\inst|uart_tx_u1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|LessThan0~0_combout\ = (\inst|uart_tx_u1|cnt_rom\(3)) # ((\inst|uart_tx_u1|cnt_rom\(2) & ((\inst|uart_tx_u1|cnt_rom\(1)) # (\inst|uart_tx_u1|cnt_rom\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_rom\(2),
	datab => \inst|uart_tx_u1|cnt_rom\(3),
	datac => \inst|uart_tx_u1|cnt_rom\(1),
	datad => \inst|uart_tx_u1|cnt_rom\(0),
	combout => \inst|uart_tx_u1|LessThan0~0_combout\);

-- Location: FF_X56_Y37_N21
\inst|uart_tx_u1|SEND_END_cmd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|LessThan0~0_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|SEND_END_cmd~q\);

-- Location: LCCOMB_X56_Y37_N2
\inst|uart_tx_u1|SEND_DATA_en~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|SEND_DATA_en~0_combout\ = (\inst|uart_tx_u1|SEND_DATA_en~q\) # (\inst|uart_tx_u1|SEND_END_cmd~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|uart_tx_u1|SEND_DATA_en~q\,
	datad => \inst|uart_tx_u1|SEND_END_cmd~q\,
	combout => \inst|uart_tx_u1|SEND_DATA_en~0_combout\);

-- Location: FF_X56_Y37_N3
\inst|uart_tx_u1|SEND_DATA_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|SEND_DATA_en~0_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|SEND_DATA_en~q\);

-- Location: LCCOMB_X57_Y38_N10
\inst|uart_tx_u1|receive_ok_en~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|receive_ok_en~0_combout\ = (!\inst|uart_tx_u1|AT|rom~60_combout\ & (\inst|uart_tx_u1|stage_tx.STOP~q\ & (!\inst|uart_tx_u1|Equal4~0_combout\ & !\inst|uart_tx_u1|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|AT|rom~60_combout\,
	datab => \inst|uart_tx_u1|stage_tx.STOP~q\,
	datac => \inst|uart_tx_u1|Equal4~0_combout\,
	datad => \inst|uart_tx_u1|Equal4~2_combout\,
	combout => \inst|uart_tx_u1|receive_ok_en~0_combout\);

-- Location: FF_X57_Y38_N11
\inst|uart_tx_u1|receive_ok_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|receive_ok_en~0_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|receive_ok_en~q\);

-- Location: LCCOMB_X61_Y39_N8
\inst|uart_rx_u2|cnt_baud[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|cnt_baud[0]~9_combout\ = \inst|uart_rx_u2|cnt_baud\(0) $ (VCC)
-- \inst|uart_rx_u2|cnt_baud[0]~10\ = CARRY(\inst|uart_rx_u2|cnt_baud\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|cnt_baud\(0),
	datad => VCC,
	combout => \inst|uart_rx_u2|cnt_baud[0]~9_combout\,
	cout => \inst|uart_rx_u2|cnt_baud[0]~10\);

-- Location: LCCOMB_X61_Y39_N10
\inst|uart_rx_u2|cnt_baud[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|cnt_baud[1]~11_combout\ = (\inst|uart_rx_u2|cnt_baud\(1) & (!\inst|uart_rx_u2|cnt_baud[0]~10\)) # (!\inst|uart_rx_u2|cnt_baud\(1) & ((\inst|uart_rx_u2|cnt_baud[0]~10\) # (GND)))
-- \inst|uart_rx_u2|cnt_baud[1]~12\ = CARRY((!\inst|uart_rx_u2|cnt_baud[0]~10\) # (!\inst|uart_rx_u2|cnt_baud\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_baud\(1),
	datad => VCC,
	cin => \inst|uart_rx_u2|cnt_baud[0]~10\,
	combout => \inst|uart_rx_u2|cnt_baud[1]~11_combout\,
	cout => \inst|uart_rx_u2|cnt_baud[1]~12\);

-- Location: LCCOMB_X61_Y39_N12
\inst|uart_rx_u2|cnt_baud[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|cnt_baud[2]~13_combout\ = (\inst|uart_rx_u2|cnt_baud\(2) & (\inst|uart_rx_u2|cnt_baud[1]~12\ $ (GND))) # (!\inst|uart_rx_u2|cnt_baud\(2) & (!\inst|uart_rx_u2|cnt_baud[1]~12\ & VCC))
-- \inst|uart_rx_u2|cnt_baud[2]~14\ = CARRY((\inst|uart_rx_u2|cnt_baud\(2) & !\inst|uart_rx_u2|cnt_baud[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_baud\(2),
	datad => VCC,
	cin => \inst|uart_rx_u2|cnt_baud[1]~12\,
	combout => \inst|uart_rx_u2|cnt_baud[2]~13_combout\,
	cout => \inst|uart_rx_u2|cnt_baud[2]~14\);

-- Location: FF_X61_Y39_N13
\inst|uart_rx_u2|cnt_baud[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|cnt_baud[2]~13_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|cnt_baud[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|cnt_baud\(2));

-- Location: LCCOMB_X61_Y39_N14
\inst|uart_rx_u2|cnt_baud[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|cnt_baud[3]~15_combout\ = (\inst|uart_rx_u2|cnt_baud\(3) & (!\inst|uart_rx_u2|cnt_baud[2]~14\)) # (!\inst|uart_rx_u2|cnt_baud\(3) & ((\inst|uart_rx_u2|cnt_baud[2]~14\) # (GND)))
-- \inst|uart_rx_u2|cnt_baud[3]~16\ = CARRY((!\inst|uart_rx_u2|cnt_baud[2]~14\) # (!\inst|uart_rx_u2|cnt_baud\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|cnt_baud\(3),
	datad => VCC,
	cin => \inst|uart_rx_u2|cnt_baud[2]~14\,
	combout => \inst|uart_rx_u2|cnt_baud[3]~15_combout\,
	cout => \inst|uart_rx_u2|cnt_baud[3]~16\);

-- Location: FF_X61_Y39_N15
\inst|uart_rx_u2|cnt_baud[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|cnt_baud[3]~15_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|cnt_baud[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|cnt_baud\(3));

-- Location: LCCOMB_X61_Y39_N16
\inst|uart_rx_u2|cnt_baud[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|cnt_baud[4]~17_combout\ = (\inst|uart_rx_u2|cnt_baud\(4) & (\inst|uart_rx_u2|cnt_baud[3]~16\ $ (GND))) # (!\inst|uart_rx_u2|cnt_baud\(4) & (!\inst|uart_rx_u2|cnt_baud[3]~16\ & VCC))
-- \inst|uart_rx_u2|cnt_baud[4]~18\ = CARRY((\inst|uart_rx_u2|cnt_baud\(4) & !\inst|uart_rx_u2|cnt_baud[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|cnt_baud\(4),
	datad => VCC,
	cin => \inst|uart_rx_u2|cnt_baud[3]~16\,
	combout => \inst|uart_rx_u2|cnt_baud[4]~17_combout\,
	cout => \inst|uart_rx_u2|cnt_baud[4]~18\);

-- Location: FF_X61_Y39_N17
\inst|uart_rx_u2|cnt_baud[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|cnt_baud[4]~17_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|cnt_baud[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|cnt_baud\(4));

-- Location: LCCOMB_X61_Y39_N18
\inst|uart_rx_u2|cnt_baud[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|cnt_baud[5]~20_combout\ = (\inst|uart_rx_u2|cnt_baud\(5) & (!\inst|uart_rx_u2|cnt_baud[4]~18\)) # (!\inst|uart_rx_u2|cnt_baud\(5) & ((\inst|uart_rx_u2|cnt_baud[4]~18\) # (GND)))
-- \inst|uart_rx_u2|cnt_baud[5]~21\ = CARRY((!\inst|uart_rx_u2|cnt_baud[4]~18\) # (!\inst|uart_rx_u2|cnt_baud\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|cnt_baud\(5),
	datad => VCC,
	cin => \inst|uart_rx_u2|cnt_baud[4]~18\,
	combout => \inst|uart_rx_u2|cnt_baud[5]~20_combout\,
	cout => \inst|uart_rx_u2|cnt_baud[5]~21\);

-- Location: FF_X61_Y39_N19
\inst|uart_rx_u2|cnt_baud[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|cnt_baud[5]~20_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|cnt_baud[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|cnt_baud\(5));

-- Location: LCCOMB_X61_Y39_N20
\inst|uart_rx_u2|cnt_baud[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|cnt_baud[6]~22_combout\ = (\inst|uart_rx_u2|cnt_baud\(6) & (\inst|uart_rx_u2|cnt_baud[5]~21\ $ (GND))) # (!\inst|uart_rx_u2|cnt_baud\(6) & (!\inst|uart_rx_u2|cnt_baud[5]~21\ & VCC))
-- \inst|uart_rx_u2|cnt_baud[6]~23\ = CARRY((\inst|uart_rx_u2|cnt_baud\(6) & !\inst|uart_rx_u2|cnt_baud[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|cnt_baud\(6),
	datad => VCC,
	cin => \inst|uart_rx_u2|cnt_baud[5]~21\,
	combout => \inst|uart_rx_u2|cnt_baud[6]~22_combout\,
	cout => \inst|uart_rx_u2|cnt_baud[6]~23\);

-- Location: FF_X61_Y39_N21
\inst|uart_rx_u2|cnt_baud[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|cnt_baud[6]~22_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|cnt_baud[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|cnt_baud\(6));

-- Location: LCCOMB_X61_Y39_N22
\inst|uart_rx_u2|cnt_baud[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|cnt_baud[7]~24_combout\ = (\inst|uart_rx_u2|cnt_baud\(7) & (!\inst|uart_rx_u2|cnt_baud[6]~23\)) # (!\inst|uart_rx_u2|cnt_baud\(7) & ((\inst|uart_rx_u2|cnt_baud[6]~23\) # (GND)))
-- \inst|uart_rx_u2|cnt_baud[7]~25\ = CARRY((!\inst|uart_rx_u2|cnt_baud[6]~23\) # (!\inst|uart_rx_u2|cnt_baud\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_baud\(7),
	datad => VCC,
	cin => \inst|uart_rx_u2|cnt_baud[6]~23\,
	combout => \inst|uart_rx_u2|cnt_baud[7]~24_combout\,
	cout => \inst|uart_rx_u2|cnt_baud[7]~25\);

-- Location: FF_X61_Y39_N23
\inst|uart_rx_u2|cnt_baud[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|cnt_baud[7]~24_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|cnt_baud[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|cnt_baud\(7));

-- Location: LCCOMB_X61_Y39_N24
\inst|uart_rx_u2|cnt_baud[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|cnt_baud[8]~26_combout\ = \inst|uart_rx_u2|cnt_baud[7]~25\ $ (!\inst|uart_rx_u2|cnt_baud\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_rx_u2|cnt_baud\(8),
	cin => \inst|uart_rx_u2|cnt_baud[7]~25\,
	combout => \inst|uart_rx_u2|cnt_baud[8]~26_combout\);

-- Location: FF_X61_Y39_N25
\inst|uart_rx_u2|cnt_baud[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|cnt_baud[8]~26_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|cnt_baud[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|cnt_baud\(8));

-- Location: IOIBUF_X67_Y31_N22
\rx_c~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx_c,
	o => \rx_c~input_o\);

-- Location: LCCOMB_X63_Y37_N12
\inst|uart_rx_u2|rx_reg0~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|rx_reg0~feeder_combout\ = \rx_c~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_c~input_o\,
	combout => \inst|uart_rx_u2|rx_reg0~feeder_combout\);

-- Location: FF_X63_Y37_N13
\inst|uart_rx_u2|rx_reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|rx_reg0~feeder_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rx_reg0~q\);

-- Location: LCCOMB_X63_Y37_N10
\inst|uart_rx_u2|rx_reg1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|rx_reg1~feeder_combout\ = \inst|uart_rx_u2|rx_reg0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_rx_u2|rx_reg0~q\,
	combout => \inst|uart_rx_u2|rx_reg1~feeder_combout\);

-- Location: FF_X63_Y37_N11
\inst|uart_rx_u2|rx_reg1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|rx_reg1~feeder_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rx_reg1~q\);

-- Location: LCCOMB_X63_Y37_N0
\inst|uart_rx_u2|rx_reg2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|rx_reg2~feeder_combout\ = \inst|uart_rx_u2|rx_reg1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_rx_u2|rx_reg1~q\,
	combout => \inst|uart_rx_u2|rx_reg2~feeder_combout\);

-- Location: FF_X63_Y37_N1
\inst|uart_rx_u2|rx_reg2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|rx_reg2~feeder_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rx_reg2~q\);

-- Location: LCCOMB_X63_Y37_N26
\inst|uart_rx_u2|rx_reg3~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|rx_reg3~feeder_combout\ = \inst|uart_rx_u2|rx_reg2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_rx_u2|rx_reg2~q\,
	combout => \inst|uart_rx_u2|rx_reg3~feeder_combout\);

-- Location: FF_X63_Y37_N27
\inst|uart_rx_u2|rx_reg3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|rx_reg3~feeder_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rx_reg3~q\);

-- Location: LCCOMB_X61_Y39_N26
\inst|uart_rx_u2|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Equal2~0_combout\ = (((\inst|uart_rx_u2|cnt_baud\(0)) # (\inst|uart_rx_u2|cnt_baud\(5))) # (!\inst|uart_rx_u2|cnt_baud\(3))) # (!\inst|uart_rx_u2|cnt_baud\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_baud\(6),
	datab => \inst|uart_rx_u2|cnt_baud\(3),
	datac => \inst|uart_rx_u2|cnt_baud\(0),
	datad => \inst|uart_rx_u2|cnt_baud\(5),
	combout => \inst|uart_rx_u2|Equal2~0_combout\);

-- Location: LCCOMB_X63_Y39_N6
\inst|uart_rx_u2|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Equal2~1_combout\ = (\inst|uart_rx_u2|cnt_baud\(8)) # ((\inst|uart_rx_u2|Equal2~0_combout\) # (!\inst|uart_rx_u2|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|cnt_baud\(8),
	datac => \inst|uart_rx_u2|Equal2~0_combout\,
	datad => \inst|uart_rx_u2|Equal1~0_combout\,
	combout => \inst|uart_rx_u2|Equal2~1_combout\);

-- Location: LCCOMB_X63_Y39_N18
\inst|uart_rx_u2|stage_rx~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|stage_rx~11_combout\ = (\inst|uart_rx_u2|R_receiving~q\ & ((\inst|uart_rx_u2|Equal2~1_combout\ & (\inst|uart_rx_u2|stage_rx.START~q\)) # (!\inst|uart_rx_u2|Equal2~1_combout\ & ((!\inst|uart_rx_u2|stage_rx.STOP~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Equal2~1_combout\,
	datab => \inst|uart_rx_u2|R_receiving~q\,
	datac => \inst|uart_rx_u2|stage_rx.START~q\,
	datad => \inst|uart_rx_u2|stage_rx.STOP~q\,
	combout => \inst|uart_rx_u2|stage_rx~11_combout\);

-- Location: FF_X63_Y39_N19
\inst|uart_rx_u2|stage_rx.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|stage_rx~11_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|stage_rx.START~q\);

-- Location: LCCOMB_X63_Y39_N12
\inst|uart_rx_u2|stage_rx~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|stage_rx~10_combout\ = (\inst|uart_rx_u2|Equal2~1_combout\ & (((\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\)))) # (!\inst|uart_rx_u2|Equal2~1_combout\ & (((!\inst|uart_rx_u2|Decoder0~0_combout\ & \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\)) 
-- # (!\inst|uart_rx_u2|stage_rx.START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Decoder0~0_combout\,
	datab => \inst|uart_rx_u2|stage_rx.START~q\,
	datac => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datad => \inst|uart_rx_u2|Equal2~1_combout\,
	combout => \inst|uart_rx_u2|stage_rx~10_combout\);

-- Location: FF_X63_Y39_N13
\inst|uart_rx_u2|stage_rx.RECEIVE_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|stage_rx~10_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|ALT_INV_R_receiving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\);

-- Location: LCCOMB_X63_Y39_N16
\inst|uart_rx_u2|cnt_bit[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|cnt_bit[0]~0_combout\ = \inst|uart_rx_u2|cnt_bit\(0) $ (((\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & !\inst|uart_rx_u2|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datac => \inst|uart_rx_u2|cnt_bit\(0),
	datad => \inst|uart_rx_u2|Equal2~1_combout\,
	combout => \inst|uart_rx_u2|cnt_bit[0]~0_combout\);

-- Location: FF_X63_Y39_N17
\inst|uart_rx_u2|cnt_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|cnt_bit[0]~0_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|cnt_bit\(0));

-- Location: LCCOMB_X63_Y39_N4
\inst|uart_rx_u2|cnt_bit[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|cnt_bit[1]~2_combout\ = \inst|uart_rx_u2|cnt_bit\(1) $ (((\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & (\inst|uart_rx_u2|cnt_bit\(0) & !\inst|uart_rx_u2|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datab => \inst|uart_rx_u2|cnt_bit\(0),
	datac => \inst|uart_rx_u2|cnt_bit\(1),
	datad => \inst|uart_rx_u2|Equal2~1_combout\,
	combout => \inst|uart_rx_u2|cnt_bit[1]~2_combout\);

-- Location: FF_X63_Y39_N5
\inst|uart_rx_u2|cnt_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|cnt_bit[1]~2_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|cnt_bit\(1));

-- Location: LCCOMB_X64_Y39_N26
\inst|uart_rx_u2|Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Decoder0~1_combout\ = (\inst|uart_rx_u2|cnt_bit\(0) & \inst|uart_rx_u2|cnt_bit\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|uart_rx_u2|cnt_bit\(0),
	datad => \inst|uart_rx_u2|cnt_bit\(1),
	combout => \inst|uart_rx_u2|Decoder0~1_combout\);

-- Location: LCCOMB_X63_Y39_N14
\inst|uart_rx_u2|cnt_bit[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|cnt_bit[2]~1_combout\ = \inst|uart_rx_u2|cnt_bit\(2) $ (((\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & (\inst|uart_rx_u2|Decoder0~1_combout\ & !\inst|uart_rx_u2|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datab => \inst|uart_rx_u2|Decoder0~1_combout\,
	datac => \inst|uart_rx_u2|cnt_bit\(2),
	datad => \inst|uart_rx_u2|Equal2~1_combout\,
	combout => \inst|uart_rx_u2|cnt_bit[2]~1_combout\);

-- Location: FF_X63_Y39_N15
\inst|uart_rx_u2|cnt_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|cnt_bit[2]~1_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|cnt_bit\(2));

-- Location: LCCOMB_X63_Y39_N30
\inst|uart_rx_u2|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Decoder0~0_combout\ = (\inst|uart_rx_u2|cnt_bit\(2) & (\inst|uart_rx_u2|cnt_bit\(1) & \inst|uart_rx_u2|cnt_bit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|cnt_bit\(2),
	datac => \inst|uart_rx_u2|cnt_bit\(1),
	datad => \inst|uart_rx_u2|cnt_bit\(0),
	combout => \inst|uart_rx_u2|Decoder0~0_combout\);

-- Location: LCCOMB_X63_Y39_N2
\inst|uart_rx_u2|stage_rx~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|stage_rx~9_combout\ = (\inst|uart_rx_u2|Equal2~1_combout\ & (((\inst|uart_rx_u2|stage_rx.STOP~q\)))) # (!\inst|uart_rx_u2|Equal2~1_combout\ & (\inst|uart_rx_u2|Decoder0~0_combout\ & ((\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Equal2~1_combout\,
	datab => \inst|uart_rx_u2|Decoder0~0_combout\,
	datac => \inst|uart_rx_u2|stage_rx.STOP~q\,
	datad => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	combout => \inst|uart_rx_u2|stage_rx~9_combout\);

-- Location: FF_X63_Y39_N3
\inst|uart_rx_u2|stage_rx.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|stage_rx~9_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|ALT_INV_R_receiving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|stage_rx.STOP~q\);

-- Location: LCCOMB_X63_Y39_N8
\inst|uart_rx_u2|rx_done~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|rx_done~0_combout\ = (\inst|uart_rx_u2|R_receiving~q\ & ((\inst|uart_rx_u2|Equal2~1_combout\ & (\inst|uart_rx_u2|rx_done~q\)) # (!\inst|uart_rx_u2|Equal2~1_combout\ & ((\inst|uart_rx_u2|stage_rx.STOP~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Equal2~1_combout\,
	datab => \inst|uart_rx_u2|R_receiving~q\,
	datac => \inst|uart_rx_u2|rx_done~q\,
	datad => \inst|uart_rx_u2|stage_rx.STOP~q\,
	combout => \inst|uart_rx_u2|rx_done~0_combout\);

-- Location: FF_X63_Y39_N9
\inst|uart_rx_u2|rx_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|rx_done~0_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rx_done~q\);

-- Location: LCCOMB_X63_Y37_N8
\inst|uart_rx_u2|R_receiving~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|R_receiving~0_combout\ = (!\inst|uart_rx_u2|rx_done~q\ & ((\inst|uart_rx_u2|R_receiving~q\) # ((\inst|uart_rx_u2|rx_reg3~q\ & !\inst|uart_rx_u2|rx_reg2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|rx_reg3~q\,
	datab => \inst|uart_rx_u2|rx_reg2~q\,
	datac => \inst|uart_rx_u2|R_receiving~q\,
	datad => \inst|uart_rx_u2|rx_done~q\,
	combout => \inst|uart_rx_u2|R_receiving~0_combout\);

-- Location: FF_X63_Y37_N9
\inst|uart_rx_u2|R_receiving\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|R_receiving~0_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|R_receiving~q\);

-- Location: FF_X60_Y39_N7
\inst|uart_rx_u2|bps_rx_clk_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \inst|uart_rx_u2|R_receiving~q\,
	clrn => \res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|bps_rx_clk_en~q\);

-- Location: LCCOMB_X61_Y39_N2
\inst|uart_rx_u2|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Equal1~1_combout\ = (\inst|uart_rx_u2|cnt_baud\(6)) # ((\inst|uart_rx_u2|cnt_baud\(3)) # ((!\inst|uart_rx_u2|cnt_baud\(5)) # (!\inst|uart_rx_u2|cnt_baud\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_baud\(6),
	datab => \inst|uart_rx_u2|cnt_baud\(3),
	datac => \inst|uart_rx_u2|cnt_baud\(0),
	datad => \inst|uart_rx_u2|cnt_baud\(5),
	combout => \inst|uart_rx_u2|Equal1~1_combout\);

-- Location: LCCOMB_X60_Y39_N6
\inst|uart_rx_u2|cnt_baud[6]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|cnt_baud[6]~19_combout\ = ((\inst|uart_rx_u2|cnt_baud\(8) & (\inst|uart_rx_u2|Equal1~0_combout\ & !\inst|uart_rx_u2|Equal1~1_combout\))) # (!\inst|uart_rx_u2|bps_rx_clk_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_baud\(8),
	datab => \inst|uart_rx_u2|Equal1~0_combout\,
	datac => \inst|uart_rx_u2|bps_rx_clk_en~q\,
	datad => \inst|uart_rx_u2|Equal1~1_combout\,
	combout => \inst|uart_rx_u2|cnt_baud[6]~19_combout\);

-- Location: FF_X61_Y39_N9
\inst|uart_rx_u2|cnt_baud[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|cnt_baud[0]~9_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|cnt_baud[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|cnt_baud\(0));

-- Location: FF_X61_Y39_N11
\inst|uart_rx_u2|cnt_baud[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|cnt_baud[1]~11_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|cnt_baud[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|cnt_baud\(1));

-- Location: LCCOMB_X61_Y39_N0
\inst|uart_rx_u2|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Equal1~0_combout\ = (!\inst|uart_rx_u2|cnt_baud\(1) & (\inst|uart_rx_u2|cnt_baud\(4) & (\inst|uart_rx_u2|cnt_baud\(7) & !\inst|uart_rx_u2|cnt_baud\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_baud\(1),
	datab => \inst|uart_rx_u2|cnt_baud\(4),
	datac => \inst|uart_rx_u2|cnt_baud\(7),
	datad => \inst|uart_rx_u2|cnt_baud\(2),
	combout => \inst|uart_rx_u2|Equal1~0_combout\);

-- Location: LCCOMB_X63_Y39_N24
\inst|uart_rx_u2|RECEIVE_END~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|RECEIVE_END~0_combout\ = (\inst|uart_rx_u2|Equal1~0_combout\ & (!\inst|uart_rx_u2|cnt_baud\(8) & (!\inst|uart_rx_u2|Equal2~0_combout\ & \inst|uart_rx_u2|stage_rx.STOP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Equal1~0_combout\,
	datab => \inst|uart_rx_u2|cnt_baud\(8),
	datac => \inst|uart_rx_u2|Equal2~0_combout\,
	datad => \inst|uart_rx_u2|stage_rx.STOP~q\,
	combout => \inst|uart_rx_u2|RECEIVE_END~0_combout\);

-- Location: FF_X63_Y39_N25
\inst|uart_rx_u2|RECEIVE_END\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|RECEIVE_END~0_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|ALT_INV_R_receiving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|RECEIVE_END~q\);

-- Location: LCCOMB_X57_Y37_N22
\inst|receiver_OK_u1|OK~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|receiver_OK_u1|OK~1_combout\ = (\inst|uart_tx_u1|receive_ok_en~q\ & (!\inst|uart_rx_u2|RECEIVE_END~q\ & \inst|receiver_OK_u1|OK~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|receive_ok_en~q\,
	datac => \inst|uart_rx_u2|RECEIVE_END~q\,
	datad => \inst|receiver_OK_u1|OK~q\,
	combout => \inst|receiver_OK_u1|OK~1_combout\);

-- Location: LCCOMB_X61_Y39_N6
\inst|receiver_OK_u1|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|receiver_OK_u1|Selector0~0_combout\ = (\inst|receiver_OK_u1|state~14_combout\) # ((\inst|receiver_OK_u1|state~13_combout\) # (\inst|receiver_OK_u1|state~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|receiver_OK_u1|state~14_combout\,
	datac => \inst|receiver_OK_u1|state~13_combout\,
	datad => \inst|receiver_OK_u1|state~11_combout\,
	combout => \inst|receiver_OK_u1|Selector0~0_combout\);

-- Location: FF_X61_Y39_N7
\inst|receiver_OK_u1|state.000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|receiver_OK_u1|Selector0~0_combout\,
	clrn => \res~input_o\,
	ena => \inst|uart_rx_u2|RECEIVE_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|receiver_OK_u1|state.000~q\);

-- Location: LCCOMB_X62_Y39_N6
\inst|uart_rx_u2|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector5~0_combout\ = (!\inst|uart_rx_u2|cnt_bit\(0) & (\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & \rx_c~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_bit\(0),
	datab => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datad => \rx_c~input_o\,
	combout => \inst|uart_rx_u2|Selector5~0_combout\);

-- Location: LCCOMB_X63_Y39_N0
\inst|uart_rx_u2|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector4~0_combout\ = (\inst|uart_rx_u2|cnt_bit\(1) & !\inst|uart_rx_u2|cnt_bit\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|cnt_bit\(1),
	datac => \inst|uart_rx_u2|cnt_bit\(2),
	combout => \inst|uart_rx_u2|Selector4~0_combout\);

-- Location: LCCOMB_X63_Y39_N22
\inst|uart_rx_u2|Selector5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector5~1_combout\ = (\inst|uart_rx_u2|stage_rx.STOP~q\) # ((\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & ((\inst|uart_rx_u2|cnt_bit\(0)) # (!\inst|uart_rx_u2|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datab => \inst|uart_rx_u2|cnt_bit\(0),
	datac => \inst|uart_rx_u2|Selector4~0_combout\,
	datad => \inst|uart_rx_u2|stage_rx.STOP~q\,
	combout => \inst|uart_rx_u2|Selector5~1_combout\);

-- Location: LCCOMB_X62_Y39_N14
\inst|uart_rx_u2|Selector5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector5~2_combout\ = (\inst|uart_rx_u2|Selector5~0_combout\ & ((\inst|uart_rx_u2|Selector4~0_combout\) # ((\inst|uart_rx_u2|rx_data\(2) & \inst|uart_rx_u2|Selector5~1_combout\)))) # (!\inst|uart_rx_u2|Selector5~0_combout\ & 
-- (((\inst|uart_rx_u2|rx_data\(2) & \inst|uart_rx_u2|Selector5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Selector5~0_combout\,
	datab => \inst|uart_rx_u2|Selector4~0_combout\,
	datac => \inst|uart_rx_u2|rx_data\(2),
	datad => \inst|uart_rx_u2|Selector5~1_combout\,
	combout => \inst|uart_rx_u2|Selector5~2_combout\);

-- Location: LCCOMB_X61_Y39_N30
\inst|uart_rx_u2|rx_data[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|rx_data[3]~0_combout\ = ((\inst|uart_rx_u2|Equal1~0_combout\ & (!\inst|uart_rx_u2|cnt_baud\(8) & !\inst|uart_rx_u2|Equal2~0_combout\))) # (!\inst|uart_rx_u2|R_receiving~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Equal1~0_combout\,
	datab => \inst|uart_rx_u2|cnt_baud\(8),
	datac => \inst|uart_rx_u2|Equal2~0_combout\,
	datad => \inst|uart_rx_u2|R_receiving~q\,
	combout => \inst|uart_rx_u2|rx_data[3]~0_combout\);

-- Location: FF_X62_Y39_N15
\inst|uart_rx_u2|rx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|Selector5~2_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|ALT_INV_R_receiving~q\,
	ena => \inst|uart_rx_u2|rx_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rx_data\(2));

-- Location: LCCOMB_X62_Y37_N20
\inst|uart_rx_u2|rxd[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|rxd[7]~0_combout\ = (!\inst|uart_rx_u2|Equal2~1_combout\ & (\inst|uart_rx_u2|R_receiving~q\ & (\res~input_o\ & \inst|uart_rx_u2|stage_rx.STOP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Equal2~1_combout\,
	datab => \inst|uart_rx_u2|R_receiving~q\,
	datac => \res~input_o\,
	datad => \inst|uart_rx_u2|stage_rx.STOP~q\,
	combout => \inst|uart_rx_u2|rxd[7]~0_combout\);

-- Location: FF_X62_Y37_N9
\inst|uart_rx_u2|rxd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \inst|uart_rx_u2|rx_data\(2),
	sload => VCC,
	ena => \inst|uart_rx_u2|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rxd\(2));

-- Location: LCCOMB_X62_Y39_N22
\inst|uart_rx_u2|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector2~0_combout\ = (\inst|uart_rx_u2|cnt_bit\(0) & (\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & \rx_c~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_bit\(0),
	datab => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datad => \rx_c~input_o\,
	combout => \inst|uart_rx_u2|Selector2~0_combout\);

-- Location: LCCOMB_X62_Y39_N8
\inst|uart_rx_u2|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector6~0_combout\ = (!\inst|uart_rx_u2|cnt_bit\(2) & !\inst|uart_rx_u2|cnt_bit\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|uart_rx_u2|cnt_bit\(2),
	datad => \inst|uart_rx_u2|cnt_bit\(1),
	combout => \inst|uart_rx_u2|Selector6~0_combout\);

-- Location: LCCOMB_X62_Y39_N20
\inst|uart_rx_u2|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector6~1_combout\ = (\inst|uart_rx_u2|stage_rx.STOP~q\) # ((\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & ((!\inst|uart_rx_u2|Selector6~0_combout\) # (!\inst|uart_rx_u2|cnt_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_bit\(0),
	datab => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datac => \inst|uart_rx_u2|Selector6~0_combout\,
	datad => \inst|uart_rx_u2|stage_rx.STOP~q\,
	combout => \inst|uart_rx_u2|Selector6~1_combout\);

-- Location: LCCOMB_X62_Y39_N28
\inst|uart_rx_u2|Selector6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector6~2_combout\ = (\inst|uart_rx_u2|Selector2~0_combout\ & ((\inst|uart_rx_u2|Selector6~0_combout\) # ((\inst|uart_rx_u2|rx_data\(1) & \inst|uart_rx_u2|Selector6~1_combout\)))) # (!\inst|uart_rx_u2|Selector2~0_combout\ & 
-- (((\inst|uart_rx_u2|rx_data\(1) & \inst|uart_rx_u2|Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Selector2~0_combout\,
	datab => \inst|uart_rx_u2|Selector6~0_combout\,
	datac => \inst|uart_rx_u2|rx_data\(1),
	datad => \inst|uart_rx_u2|Selector6~1_combout\,
	combout => \inst|uart_rx_u2|Selector6~2_combout\);

-- Location: FF_X62_Y39_N29
\inst|uart_rx_u2|rx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|Selector6~2_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|ALT_INV_R_receiving~q\,
	ena => \inst|uart_rx_u2|rx_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rx_data\(1));

-- Location: FF_X62_Y37_N11
\inst|uart_rx_u2|rxd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \inst|uart_rx_u2|rx_data\(1),
	sload => VCC,
	ena => \inst|uart_rx_u2|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rxd\(1));

-- Location: LCCOMB_X63_Y39_N20
\inst|uart_rx_u2|Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector4~1_combout\ = (\inst|uart_rx_u2|stage_rx.STOP~q\) # ((\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & ((!\inst|uart_rx_u2|Selector4~0_combout\) # (!\inst|uart_rx_u2|cnt_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datab => \inst|uart_rx_u2|cnt_bit\(0),
	datac => \inst|uart_rx_u2|Selector4~0_combout\,
	datad => \inst|uart_rx_u2|stage_rx.STOP~q\,
	combout => \inst|uart_rx_u2|Selector4~1_combout\);

-- Location: LCCOMB_X62_Y39_N16
\inst|uart_rx_u2|Selector4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector4~2_combout\ = (\inst|uart_rx_u2|Selector2~0_combout\ & ((\inst|uart_rx_u2|Selector4~0_combout\) # ((\inst|uart_rx_u2|rx_data\(3) & \inst|uart_rx_u2|Selector4~1_combout\)))) # (!\inst|uart_rx_u2|Selector2~0_combout\ & 
-- (((\inst|uart_rx_u2|rx_data\(3) & \inst|uart_rx_u2|Selector4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Selector2~0_combout\,
	datab => \inst|uart_rx_u2|Selector4~0_combout\,
	datac => \inst|uart_rx_u2|rx_data\(3),
	datad => \inst|uart_rx_u2|Selector4~1_combout\,
	combout => \inst|uart_rx_u2|Selector4~2_combout\);

-- Location: FF_X62_Y39_N17
\inst|uart_rx_u2|rx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|Selector4~2_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|ALT_INV_R_receiving~q\,
	ena => \inst|uart_rx_u2|rx_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rx_data\(3));

-- Location: FF_X62_Y37_N29
\inst|uart_rx_u2|rxd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \inst|uart_rx_u2|rx_data\(3),
	sload => VCC,
	ena => \inst|uart_rx_u2|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rxd\(3));

-- Location: LCCOMB_X62_Y39_N0
\inst|uart_rx_u2|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector0~0_combout\ = (\inst|uart_rx_u2|rx_data\(7) & ((\inst|uart_rx_u2|stage_rx.STOP~q\) # ((!\inst|uart_rx_u2|Decoder0~0_combout\ & \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Decoder0~0_combout\,
	datab => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datac => \inst|uart_rx_u2|rx_data\(7),
	datad => \inst|uart_rx_u2|stage_rx.STOP~q\,
	combout => \inst|uart_rx_u2|Selector0~0_combout\);

-- Location: LCCOMB_X62_Y39_N26
\inst|uart_rx_u2|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector0~1_combout\ = (\inst|uart_rx_u2|Selector0~0_combout\) # ((\inst|uart_rx_u2|Decoder0~0_combout\ & (\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & \rx_c~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Decoder0~0_combout\,
	datab => \inst|uart_rx_u2|Selector0~0_combout\,
	datac => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datad => \rx_c~input_o\,
	combout => \inst|uart_rx_u2|Selector0~1_combout\);

-- Location: FF_X62_Y39_N27
\inst|uart_rx_u2|rx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|Selector0~1_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|ALT_INV_R_receiving~q\,
	ena => \inst|uart_rx_u2|rx_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rx_data\(7));

-- Location: FF_X62_Y37_N15
\inst|uart_rx_u2|rxd[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \inst|uart_rx_u2|rx_data\(7),
	sload => VCC,
	ena => \inst|uart_rx_u2|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rxd\(7));

-- Location: LCCOMB_X62_Y39_N30
\inst|uart_rx_u2|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector1~0_combout\ = (!\inst|uart_rx_u2|cnt_bit\(0) & (\inst|uart_rx_u2|cnt_bit\(2) & (\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & \rx_c~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_bit\(0),
	datab => \inst|uart_rx_u2|cnt_bit\(2),
	datac => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datad => \rx_c~input_o\,
	combout => \inst|uart_rx_u2|Selector1~0_combout\);

-- Location: LCCOMB_X64_Y39_N4
\inst|uart_rx_u2|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector1~1_combout\ = (!\inst|uart_rx_u2|cnt_bit\(0) & \inst|uart_rx_u2|cnt_bit\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|uart_rx_u2|cnt_bit\(0),
	datad => \inst|uart_rx_u2|cnt_bit\(2),
	combout => \inst|uart_rx_u2|Selector1~1_combout\);

-- Location: LCCOMB_X63_Y39_N10
\inst|uart_rx_u2|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector3~0_combout\ = (\inst|uart_rx_u2|stage_rx.STOP~q\) # ((\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & ((\inst|uart_rx_u2|cnt_bit\(1)) # (!\inst|uart_rx_u2|Selector1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datab => \inst|uart_rx_u2|stage_rx.STOP~q\,
	datac => \inst|uart_rx_u2|cnt_bit\(1),
	datad => \inst|uart_rx_u2|Selector1~1_combout\,
	combout => \inst|uart_rx_u2|Selector3~0_combout\);

-- Location: LCCOMB_X62_Y39_N4
\inst|uart_rx_u2|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector3~1_combout\ = (\inst|uart_rx_u2|Selector1~0_combout\ & (((\inst|uart_rx_u2|Selector3~0_combout\ & \inst|uart_rx_u2|rx_data\(4))) # (!\inst|uart_rx_u2|cnt_bit\(1)))) # (!\inst|uart_rx_u2|Selector1~0_combout\ & 
-- (\inst|uart_rx_u2|Selector3~0_combout\ & (\inst|uart_rx_u2|rx_data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Selector1~0_combout\,
	datab => \inst|uart_rx_u2|Selector3~0_combout\,
	datac => \inst|uart_rx_u2|rx_data\(4),
	datad => \inst|uart_rx_u2|cnt_bit\(1),
	combout => \inst|uart_rx_u2|Selector3~1_combout\);

-- Location: FF_X62_Y39_N5
\inst|uart_rx_u2|rx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|Selector3~1_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|ALT_INV_R_receiving~q\,
	ena => \inst|uart_rx_u2|rx_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rx_data\(4));

-- Location: FF_X62_Y37_N13
\inst|uart_rx_u2|rxd[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \inst|uart_rx_u2|rx_data\(4),
	sload => VCC,
	ena => \inst|uart_rx_u2|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rxd\(4));

-- Location: LCCOMB_X62_Y37_N2
\inst|uart_rx_u2|u1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|Equal0~0_combout\ = (\inst|uart_rx_u2|rxd\(3) & (!\inst|uart_rx_u2|rxd\(7) & !\inst|uart_rx_u2|rxd\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|rxd\(3),
	datac => \inst|uart_rx_u2|rxd\(7),
	datad => \inst|uart_rx_u2|rxd\(4),
	combout => \inst|uart_rx_u2|u1|Equal0~0_combout\);

-- Location: LCCOMB_X62_Y39_N12
\inst|uart_rx_u2|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector7~0_combout\ = (\inst|uart_rx_u2|stage_rx.STOP~q\) # ((\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & ((\inst|uart_rx_u2|cnt_bit\(0)) # (!\inst|uart_rx_u2|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_bit\(0),
	datab => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datac => \inst|uart_rx_u2|Selector6~0_combout\,
	datad => \inst|uart_rx_u2|stage_rx.STOP~q\,
	combout => \inst|uart_rx_u2|Selector7~0_combout\);

-- Location: LCCOMB_X62_Y39_N18
\inst|uart_rx_u2|Selector7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector7~1_combout\ = (\inst|uart_rx_u2|Selector7~0_combout\ & ((\inst|uart_rx_u2|rx_data\(0)) # ((\inst|uart_rx_u2|Selector6~0_combout\ & \inst|uart_rx_u2|Selector5~0_combout\)))) # (!\inst|uart_rx_u2|Selector7~0_combout\ & 
-- (\inst|uart_rx_u2|Selector6~0_combout\ & ((\inst|uart_rx_u2|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Selector7~0_combout\,
	datab => \inst|uart_rx_u2|Selector6~0_combout\,
	datac => \inst|uart_rx_u2|rx_data\(0),
	datad => \inst|uart_rx_u2|Selector5~0_combout\,
	combout => \inst|uart_rx_u2|Selector7~1_combout\);

-- Location: FF_X62_Y39_N19
\inst|uart_rx_u2|rx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|Selector7~1_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|ALT_INV_R_receiving~q\,
	ena => \inst|uart_rx_u2|rx_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rx_data\(0));

-- Location: FF_X62_Y37_N17
\inst|uart_rx_u2|rxd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \inst|uart_rx_u2|rx_data\(0),
	sload => VCC,
	ena => \inst|uart_rx_u2|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rxd\(0));

-- Location: LCCOMB_X62_Y39_N2
\inst|uart_rx_u2|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector2~1_combout\ = (\inst|uart_rx_u2|cnt_bit\(2) & (\inst|uart_rx_u2|Selector2~0_combout\ & !\inst|uart_rx_u2|cnt_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|cnt_bit\(2),
	datac => \inst|uart_rx_u2|Selector2~0_combout\,
	datad => \inst|uart_rx_u2|cnt_bit\(1),
	combout => \inst|uart_rx_u2|Selector2~1_combout\);

-- Location: LCCOMB_X63_Y39_N28
\inst|uart_rx_u2|Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector2~2_combout\ = (\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & (((\inst|uart_rx_u2|cnt_bit\(1)) # (!\inst|uart_rx_u2|cnt_bit\(0))) # (!\inst|uart_rx_u2|cnt_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datab => \inst|uart_rx_u2|cnt_bit\(2),
	datac => \inst|uart_rx_u2|cnt_bit\(1),
	datad => \inst|uart_rx_u2|cnt_bit\(0),
	combout => \inst|uart_rx_u2|Selector2~2_combout\);

-- Location: LCCOMB_X62_Y39_N10
\inst|uart_rx_u2|Selector2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector2~3_combout\ = (\inst|uart_rx_u2|Selector2~1_combout\) # ((\inst|uart_rx_u2|rx_data\(5) & ((\inst|uart_rx_u2|stage_rx.STOP~q\) # (\inst|uart_rx_u2|Selector2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|stage_rx.STOP~q\,
	datab => \inst|uart_rx_u2|Selector2~1_combout\,
	datac => \inst|uart_rx_u2|rx_data\(5),
	datad => \inst|uart_rx_u2|Selector2~2_combout\,
	combout => \inst|uart_rx_u2|Selector2~3_combout\);

-- Location: FF_X62_Y39_N11
\inst|uart_rx_u2|rx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|Selector2~3_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|ALT_INV_R_receiving~q\,
	ena => \inst|uart_rx_u2|rx_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rx_data\(5));

-- Location: FF_X62_Y37_N1
\inst|uart_rx_u2|rxd[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \inst|uart_rx_u2|rx_data\(5),
	sload => VCC,
	ena => \inst|uart_rx_u2|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rxd\(5));

-- Location: LCCOMB_X63_Y39_N26
\inst|uart_rx_u2|Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector1~2_combout\ = (\inst|uart_rx_u2|stage_rx.STOP~q\) # ((\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & ((!\inst|uart_rx_u2|Selector1~1_combout\) # (!\inst|uart_rx_u2|cnt_bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datab => \inst|uart_rx_u2|stage_rx.STOP~q\,
	datac => \inst|uart_rx_u2|cnt_bit\(1),
	datad => \inst|uart_rx_u2|Selector1~1_combout\,
	combout => \inst|uart_rx_u2|Selector1~2_combout\);

-- Location: LCCOMB_X62_Y39_N24
\inst|uart_rx_u2|Selector1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector1~3_combout\ = (\inst|uart_rx_u2|Selector1~0_combout\ & ((\inst|uart_rx_u2|cnt_bit\(1)) # ((\inst|uart_rx_u2|Selector1~2_combout\ & \inst|uart_rx_u2|rx_data\(6))))) # (!\inst|uart_rx_u2|Selector1~0_combout\ & 
-- (\inst|uart_rx_u2|Selector1~2_combout\ & (\inst|uart_rx_u2|rx_data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Selector1~0_combout\,
	datab => \inst|uart_rx_u2|Selector1~2_combout\,
	datac => \inst|uart_rx_u2|rx_data\(6),
	datad => \inst|uart_rx_u2|cnt_bit\(1),
	combout => \inst|uart_rx_u2|Selector1~3_combout\);

-- Location: FF_X62_Y39_N25
\inst|uart_rx_u2|rx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|Selector1~3_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|ALT_INV_R_receiving~q\,
	ena => \inst|uart_rx_u2|rx_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rx_data\(6));

-- Location: FF_X62_Y37_N27
\inst|uart_rx_u2|rxd[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \inst|uart_rx_u2|rx_data\(6),
	sload => VCC,
	ena => \inst|uart_rx_u2|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rxd\(6));

-- Location: LCCOMB_X61_Y37_N2
\inst|uart_rx_u2|u1|state~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|state~14_combout\ = (!\inst|uart_rx_u2|rxd\(5) & \inst|uart_rx_u2|rxd\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|rxd\(5),
	datad => \inst|uart_rx_u2|rxd\(6),
	combout => \inst|uart_rx_u2|u1|state~14_combout\);

-- Location: LCCOMB_X62_Y37_N22
\inst|receiver_OK_u1|state~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|receiver_OK_u1|state~12_combout\ = (\inst|uart_rx_u2|rxd\(1) & (\inst|uart_rx_u2|u1|Equal0~0_combout\ & (\inst|uart_rx_u2|rxd\(0) & \inst|uart_rx_u2|u1|state~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|rxd\(1),
	datab => \inst|uart_rx_u2|u1|Equal0~0_combout\,
	datac => \inst|uart_rx_u2|rxd\(0),
	datad => \inst|uart_rx_u2|u1|state~14_combout\,
	combout => \inst|receiver_OK_u1|state~12_combout\);

-- Location: LCCOMB_X61_Y39_N28
\inst|receiver_OK_u1|state~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|receiver_OK_u1|state~14_combout\ = (!\inst|receiver_OK_u1|state.000~q\ & (\inst|uart_rx_u2|rxd\(2) & \inst|receiver_OK_u1|state~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|receiver_OK_u1|state.000~q\,
	datab => \inst|uart_rx_u2|rxd\(2),
	datac => \inst|receiver_OK_u1|state~12_combout\,
	combout => \inst|receiver_OK_u1|state~14_combout\);

-- Location: FF_X61_Y39_N29
\inst|receiver_OK_u1|state.001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|receiver_OK_u1|state~14_combout\,
	clrn => \res~input_o\,
	ena => \inst|uart_rx_u2|RECEIVE_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|receiver_OK_u1|state.001~q\);

-- Location: LCCOMB_X61_Y39_N4
\inst|receiver_OK_u1|state~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|receiver_OK_u1|state~13_combout\ = (\inst|receiver_OK_u1|state.001~q\ & (!\inst|uart_rx_u2|rxd\(2) & \inst|receiver_OK_u1|state~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|receiver_OK_u1|state.001~q\,
	datab => \inst|uart_rx_u2|rxd\(2),
	datac => \inst|receiver_OK_u1|state~12_combout\,
	combout => \inst|receiver_OK_u1|state~13_combout\);

-- Location: FF_X61_Y39_N5
\inst|receiver_OK_u1|state.010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|receiver_OK_u1|state~13_combout\,
	clrn => \res~input_o\,
	ena => \inst|uart_rx_u2|RECEIVE_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|receiver_OK_u1|state.010~q\);

-- Location: LCCOMB_X62_Y37_N26
\inst|uart_rx_u2|u1|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|Equal4~0_combout\ = (!\inst|uart_rx_u2|rxd\(1) & (\inst|uart_rx_u2|rxd\(2) & (!\inst|uart_rx_u2|rxd\(6) & \inst|uart_rx_u2|u1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|rxd\(1),
	datab => \inst|uart_rx_u2|rxd\(2),
	datac => \inst|uart_rx_u2|rxd\(6),
	datad => \inst|uart_rx_u2|u1|Equal0~0_combout\,
	combout => \inst|uart_rx_u2|u1|Equal4~0_combout\);

-- Location: LCCOMB_X62_Y37_N16
\inst|receiver_OK_u1|state~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|receiver_OK_u1|state~11_combout\ = (\inst|receiver_OK_u1|state.010~q\ & (!\inst|uart_rx_u2|rxd\(5) & (\inst|uart_rx_u2|rxd\(0) & \inst|uart_rx_u2|u1|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|receiver_OK_u1|state.010~q\,
	datab => \inst|uart_rx_u2|rxd\(5),
	datac => \inst|uart_rx_u2|rxd\(0),
	datad => \inst|uart_rx_u2|u1|Equal4~0_combout\,
	combout => \inst|receiver_OK_u1|state~11_combout\);

-- Location: LCCOMB_X57_Y37_N16
\inst|receiver_OK_u1|state.011~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|receiver_OK_u1|state.011~feeder_combout\ = \inst|receiver_OK_u1|state~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|receiver_OK_u1|state~11_combout\,
	combout => \inst|receiver_OK_u1|state.011~feeder_combout\);

-- Location: FF_X57_Y37_N17
\inst|receiver_OK_u1|state.011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|receiver_OK_u1|state.011~feeder_combout\,
	clrn => \res~input_o\,
	ena => \inst|uart_rx_u2|RECEIVE_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|receiver_OK_u1|state.011~q\);

-- Location: LCCOMB_X62_Y37_N18
\inst|receiver_OK_u1|OK~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|receiver_OK_u1|OK~2_combout\ = (\inst|uart_rx_u2|rxd\(1) & (!\inst|uart_rx_u2|rxd\(2) & (!\inst|uart_rx_u2|rxd\(6) & !\inst|uart_rx_u2|rxd\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|rxd\(1),
	datab => \inst|uart_rx_u2|rxd\(2),
	datac => \inst|uart_rx_u2|rxd\(6),
	datad => \inst|uart_rx_u2|rxd\(0),
	combout => \inst|receiver_OK_u1|OK~2_combout\);

-- Location: LCCOMB_X62_Y37_N0
\inst|receiver_OK_u1|OK~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|receiver_OK_u1|OK~3_combout\ = (\inst|receiver_OK_u1|OK~q\) # ((\inst|uart_rx_u2|u1|Equal0~0_combout\ & (!\inst|uart_rx_u2|rxd\(5) & \inst|receiver_OK_u1|OK~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|receiver_OK_u1|OK~q\,
	datab => \inst|uart_rx_u2|u1|Equal0~0_combout\,
	datac => \inst|uart_rx_u2|rxd\(5),
	datad => \inst|receiver_OK_u1|OK~2_combout\,
	combout => \inst|receiver_OK_u1|OK~3_combout\);

-- Location: LCCOMB_X57_Y37_N28
\inst|receiver_OK_u1|OK~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|receiver_OK_u1|OK~4_combout\ = (\inst|receiver_OK_u1|OK~1_combout\) # ((\inst|receiver_OK_u1|state.011~q\ & (\inst|uart_rx_u2|RECEIVE_END~q\ & \inst|receiver_OK_u1|OK~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|receiver_OK_u1|OK~1_combout\,
	datab => \inst|receiver_OK_u1|state.011~q\,
	datac => \inst|uart_rx_u2|RECEIVE_END~q\,
	datad => \inst|receiver_OK_u1|OK~3_combout\,
	combout => \inst|receiver_OK_u1|OK~4_combout\);

-- Location: FF_X57_Y37_N29
\inst|receiver_OK_u1|OK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|receiver_OK_u1|OK~4_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|receiver_OK_u1|OK~q\);

-- Location: LCCOMB_X56_Y38_N28
\inst|uart_tx_u1|always0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|always0~0_combout\ = (!\inst|uart_tx_u1|SEND_DATA_en~q\ & (!\inst|uart_tx_u1|Equal3~2_combout\ & ((\inst|receiver_OK_u1|OK~q\) # (\inst|uart_tx_u1|Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|SEND_DATA_en~q\,
	datab => \inst|uart_tx_u1|Equal3~2_combout\,
	datac => \inst|receiver_OK_u1|OK~q\,
	datad => \inst|uart_tx_u1|Equal4~1_combout\,
	combout => \inst|uart_tx_u1|always0~0_combout\);

-- Location: LCCOMB_X57_Y38_N0
\inst|uart_tx_u1|Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Selector2~2_combout\ = (\inst|uart_tx_u1|always5~0_combout\ & ((\inst|uart_tx_u1|stage_tx.SEND_DATA~q\) # ((\inst|uart_tx_u1|stage_tx.STOP~q\ & !\inst|uart_tx_u1|always0~0_combout\)))) # (!\inst|uart_tx_u1|always5~0_combout\ & 
-- (((\inst|uart_tx_u1|stage_tx.STOP~q\ & !\inst|uart_tx_u1|always0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|always5~0_combout\,
	datab => \inst|uart_tx_u1|stage_tx.SEND_DATA~q\,
	datac => \inst|uart_tx_u1|stage_tx.STOP~q\,
	datad => \inst|uart_tx_u1|always0~0_combout\,
	combout => \inst|uart_tx_u1|Selector2~2_combout\);

-- Location: FF_X57_Y38_N1
\inst|uart_tx_u1|stage_tx.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|Selector2~2_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|stage_tx.STOP~q\);

-- Location: LCCOMB_X55_Y38_N6
\inst|uart_tx_u1|addr[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr[0]~7_combout\ = (\inst|uart_tx_u1|stage_tx.STOP~q\ & \inst|uart_tx_u1|always0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|uart_tx_u1|stage_tx.STOP~q\,
	datad => \inst|uart_tx_u1|always0~0_combout\,
	combout => \inst|uart_tx_u1|addr[0]~7_combout\);

-- Location: LCCOMB_X56_Y37_N26
\inst|uart_tx_u1|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Selector0~0_combout\ = (\inst|uart_tx_u1|addr[0]~7_combout\) # ((\inst|uart_tx_u1|Equal3~2_combout\ & ((\inst|uart_tx_u1|stage_tx.START~q\))) # (!\inst|uart_tx_u1|Equal3~2_combout\ & (!\inst|uart_tx_u1|stage_tx.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|stage_tx.IDLE~q\,
	datab => \inst|uart_tx_u1|Equal3~2_combout\,
	datac => \inst|uart_tx_u1|stage_tx.START~q\,
	datad => \inst|uart_tx_u1|addr[0]~7_combout\,
	combout => \inst|uart_tx_u1|Selector0~0_combout\);

-- Location: FF_X56_Y37_N27
\inst|uart_tx_u1|stage_tx.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|Selector0~0_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|stage_tx.START~q\);

-- Location: LCCOMB_X56_Y37_N8
\inst|uart_tx_u1|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Selector1~0_combout\ = (\inst|uart_tx_u1|stage_tx.START~q\ & (((\inst|uart_tx_u1|stage_tx.SEND_DATA~q\ & !\inst|uart_tx_u1|always5~0_combout\)) # (!\inst|uart_tx_u1|Equal3~2_combout\))) # (!\inst|uart_tx_u1|stage_tx.START~q\ & 
-- (((\inst|uart_tx_u1|stage_tx.SEND_DATA~q\ & !\inst|uart_tx_u1|always5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|stage_tx.START~q\,
	datab => \inst|uart_tx_u1|Equal3~2_combout\,
	datac => \inst|uart_tx_u1|stage_tx.SEND_DATA~q\,
	datad => \inst|uart_tx_u1|always5~0_combout\,
	combout => \inst|uart_tx_u1|Selector1~0_combout\);

-- Location: FF_X56_Y37_N9
\inst|uart_tx_u1|stage_tx.SEND_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|Selector1~0_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|stage_tx.SEND_DATA~q\);

-- Location: LCCOMB_X56_Y39_N12
\inst|uart_tx_u1|tx~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|tx~0_combout\ = (!\inst|uart_tx_u1|stage_tx.SEND_DATA~q\ & (!\inst|uart_tx_u1|stage_tx.START~q\ & ((\inst|uart_tx_u1|stage_tx.STOP~q\) # (!\inst|uart_tx_u1|tx~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|tx~q\,
	datab => \inst|uart_tx_u1|stage_tx.SEND_DATA~q\,
	datac => \inst|uart_tx_u1|stage_tx.START~q\,
	datad => \inst|uart_tx_u1|stage_tx.STOP~q\,
	combout => \inst|uart_tx_u1|tx~0_combout\);

-- Location: LCCOMB_X56_Y39_N10
\inst|uart_tx_u1|tx~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|tx~1_combout\ = (!\inst|uart_tx_u1|cnt_bit\(0) & ((\inst|uart_tx_u1|cnt_bit\(1) & (\inst|uart_tx_u1|AT|rom~60_combout\)) # (!\inst|uart_tx_u1|cnt_bit\(1) & ((\inst|uart_tx_u1|AT|rom~73_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_bit\(1),
	datab => \inst|uart_tx_u1|cnt_bit\(0),
	datac => \inst|uart_tx_u1|AT|rom~60_combout\,
	datad => \inst|uart_tx_u1|AT|rom~73_combout\,
	combout => \inst|uart_tx_u1|tx~1_combout\);

-- Location: LCCOMB_X56_Y39_N8
\inst|uart_tx_u1|tx~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|tx~2_combout\ = (\inst|uart_tx_u1|tx~1_combout\) # ((!\inst|uart_tx_u1|cnt_bit\(1) & (\inst|uart_tx_u1|cnt_bit\(0) & \inst|uart_tx_u1|AT|rom~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_bit\(1),
	datab => \inst|uart_tx_u1|cnt_bit\(0),
	datac => \inst|uart_tx_u1|AT|rom~84_combout\,
	datad => \inst|uart_tx_u1|tx~1_combout\,
	combout => \inst|uart_tx_u1|tx~2_combout\);

-- Location: LCCOMB_X56_Y39_N18
\inst|uart_tx_u1|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux8~0_combout\ = (\inst|uart_tx_u1|cnt_bit\(1) & (\inst|uart_tx_u1|cnt_bit\(0))) # (!\inst|uart_tx_u1|cnt_bit\(1) & ((\inst|uart_tx_u1|cnt_bit\(0) & (\inst|uart_tx_u1|AT|rom~25_combout\)) # (!\inst|uart_tx_u1|cnt_bit\(0) & 
-- ((\inst|uart_tx_u1|AT|rom~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_bit\(1),
	datab => \inst|uart_tx_u1|cnt_bit\(0),
	datac => \inst|uart_tx_u1|AT|rom~25_combout\,
	datad => \inst|uart_tx_u1|AT|rom~38_combout\,
	combout => \inst|uart_tx_u1|Mux8~0_combout\);

-- Location: LCCOMB_X56_Y39_N28
\inst|uart_tx_u1|Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux8~1_combout\ = (\inst|uart_tx_u1|cnt_bit\(1) & ((\inst|uart_tx_u1|Mux8~0_combout\ & ((\inst|uart_tx_u1|AT|rom~51_combout\))) # (!\inst|uart_tx_u1|Mux8~0_combout\ & (\inst|uart_tx_u1|AT|rom~12_combout\)))) # 
-- (!\inst|uart_tx_u1|cnt_bit\(1) & (((\inst|uart_tx_u1|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_bit\(1),
	datab => \inst|uart_tx_u1|AT|rom~12_combout\,
	datac => \inst|uart_tx_u1|AT|rom~51_combout\,
	datad => \inst|uart_tx_u1|Mux8~0_combout\,
	combout => \inst|uart_tx_u1|Mux8~1_combout\);

-- Location: LCCOMB_X56_Y39_N20
\inst|uart_tx_u1|tx~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|tx~3_combout\ = (\inst|uart_tx_u1|stage_tx.START~q\) # ((\inst|uart_tx_u1|cnt_bit\(2) & (\inst|uart_tx_u1|tx~2_combout\)) # (!\inst|uart_tx_u1|cnt_bit\(2) & ((\inst|uart_tx_u1|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_bit\(2),
	datab => \inst|uart_tx_u1|stage_tx.START~q\,
	datac => \inst|uart_tx_u1|tx~2_combout\,
	datad => \inst|uart_tx_u1|Mux8~1_combout\,
	combout => \inst|uart_tx_u1|tx~3_combout\);

-- Location: LCCOMB_X56_Y39_N0
\inst|uart_tx_u1|tx~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|tx~4_combout\ = (\inst|uart_tx_u1|tx~0_combout\ & (((\inst|uart_tx_u1|stage_tx.START~q\ & !\inst|uart_tx_u1|tx~3_combout\)))) # (!\inst|uart_tx_u1|tx~0_combout\ & (((\inst|uart_tx_u1|stage_tx.START~q\) # (!\inst|uart_tx_u1|tx~3_combout\)) 
-- # (!\inst|uart_tx_u1|stage_tx.SEND_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|tx~0_combout\,
	datab => \inst|uart_tx_u1|stage_tx.SEND_DATA~q\,
	datac => \inst|uart_tx_u1|stage_tx.START~q\,
	datad => \inst|uart_tx_u1|tx~3_combout\,
	combout => \inst|uart_tx_u1|tx~4_combout\);

-- Location: FF_X56_Y39_N1
\inst|uart_tx_u1|tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|tx~4_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|tx~q\);

-- Location: LCCOMB_X62_Y37_N30
\inst|uart_rx_u2|u1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|Add0~0_combout\ = (\inst|uart_rx_u2|rxd\(5) & \inst|uart_rx_u2|rxd\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|rxd\(5),
	datad => \inst|uart_rx_u2|rxd\(4),
	combout => \inst|uart_rx_u2|u1|Add0~0_combout\);

-- Location: LCCOMB_X62_Y37_N6
\inst|uart_rx_u2|u1|Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|Equal5~0_combout\ = (\inst|uart_rx_u2|u1|Add0~0_combout\ & (\inst|receiver_OK_u1|OK~2_combout\ & (!\inst|uart_rx_u2|rxd\(7) & \inst|uart_rx_u2|rxd\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|u1|Add0~0_combout\,
	datab => \inst|receiver_OK_u1|OK~2_combout\,
	datac => \inst|uart_rx_u2|rxd\(7),
	datad => \inst|uart_rx_u2|rxd\(3),
	combout => \inst|uart_rx_u2|u1|Equal5~0_combout\);

-- Location: LCCOMB_X60_Y37_N22
\inst|uart_rx_u2|u1|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|Selector3~0_combout\ = (\inst|uart_rx_u2|u1|state.LEN~q\ & \inst|uart_rx_u2|u1|Equal5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|u1|state.LEN~q\,
	datad => \inst|uart_rx_u2|u1|Equal5~0_combout\,
	combout => \inst|uart_rx_u2|u1|Selector3~0_combout\);

-- Location: LCCOMB_X61_Y37_N0
\inst|uart_rx_u2|u1|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|Selector5~0_combout\ = (\inst|uart_rx_u2|u1|state.LEN~q\ & (\inst|uart_rx_u2|rxd\(6) $ (((!\inst|uart_rx_u2|rxd\(4)) # (!\inst|uart_rx_u2|rxd\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|rxd\(5),
	datab => \inst|uart_rx_u2|rxd\(6),
	datac => \inst|uart_rx_u2|rxd\(4),
	datad => \inst|uart_rx_u2|u1|state.LEN~q\,
	combout => \inst|uart_rx_u2|u1|Selector5~0_combout\);

-- Location: LCCOMB_X62_Y37_N10
\inst|uart_rx_u2|u1|always0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|always0~0_combout\ = (\inst|uart_rx_u2|rxd\(6)) # ((\inst|uart_rx_u2|rxd\(3) & ((\inst|uart_rx_u2|rxd\(2)) # (\inst|uart_rx_u2|rxd\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|rxd\(6),
	datab => \inst|uart_rx_u2|rxd\(2),
	datac => \inst|uart_rx_u2|rxd\(1),
	datad => \inst|uart_rx_u2|rxd\(3),
	combout => \inst|uart_rx_u2|u1|always0~0_combout\);

-- Location: LCCOMB_X60_Y37_N18
\inst|uart_rx_u2|u1|length[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|length[0]~0_combout\ = (\inst|uart_rx_u2|u1|state.LEN~q\ & (\inst|uart_rx_u2|u1|Add0~0_combout\ & (!\inst|uart_rx_u2|u1|always0~0_combout\ & !\inst|uart_rx_u2|rxd\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|u1|state.LEN~q\,
	datab => \inst|uart_rx_u2|u1|Add0~0_combout\,
	datac => \inst|uart_rx_u2|u1|always0~0_combout\,
	datad => \inst|uart_rx_u2|rxd\(7),
	combout => \inst|uart_rx_u2|u1|length[0]~0_combout\);

-- Location: LCCOMB_X60_Y37_N0
\inst|uart_rx_u2|u1|length[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|length[0]~1_combout\ = (\inst|uart_rx_u2|RECEIVE_END~q\ & ((\inst|uart_rx_u2|u1|length[0]~0_combout\) # (\inst|uart_rx_u2|u1|state~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|u1|length[0]~0_combout\,
	datac => \inst|uart_rx_u2|RECEIVE_END~q\,
	datad => \inst|uart_rx_u2|u1|state~12_combout\,
	combout => \inst|uart_rx_u2|u1|length[0]~1_combout\);

-- Location: FF_X61_Y37_N1
\inst|uart_rx_u2|u1|length[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|u1|Selector5~0_combout\,
	clrn => \res~input_o\,
	ena => \inst|uart_rx_u2|u1|length[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|u1|length\(6));

-- Location: LCCOMB_X61_Y37_N30
\inst|uart_rx_u2|u1|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|Selector6~0_combout\ = (\inst|uart_rx_u2|u1|state.LEN~q\ & (\inst|uart_rx_u2|rxd\(5) $ (\inst|uart_rx_u2|rxd\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|rxd\(5),
	datac => \inst|uart_rx_u2|rxd\(4),
	datad => \inst|uart_rx_u2|u1|state.LEN~q\,
	combout => \inst|uart_rx_u2|u1|Selector6~0_combout\);

-- Location: FF_X61_Y37_N31
\inst|uart_rx_u2|u1|length[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|u1|Selector6~0_combout\,
	clrn => \res~input_o\,
	ena => \inst|uart_rx_u2|u1|length[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|u1|length\(5));

-- Location: LCCOMB_X61_Y37_N28
\inst|uart_rx_u2|u1|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|Selector7~0_combout\ = (!\inst|uart_rx_u2|rxd\(4) & \inst|uart_rx_u2|u1|state.LEN~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|uart_rx_u2|rxd\(4),
	datad => \inst|uart_rx_u2|u1|state.LEN~q\,
	combout => \inst|uart_rx_u2|u1|Selector7~0_combout\);

-- Location: FF_X61_Y37_N29
\inst|uart_rx_u2|u1|length[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|u1|Selector7~0_combout\,
	clrn => \res~input_o\,
	ena => \inst|uart_rx_u2|u1|length[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|u1|length\(4));

-- Location: LCCOMB_X61_Y37_N8
\inst|uart_rx_u2|u1|Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|Selector8~0_combout\ = (\inst|uart_rx_u2|rxd\(3) & \inst|uart_rx_u2|u1|state.LEN~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|uart_rx_u2|rxd\(3),
	datad => \inst|uart_rx_u2|u1|state.LEN~q\,
	combout => \inst|uart_rx_u2|u1|Selector8~0_combout\);

-- Location: FF_X61_Y37_N9
\inst|uart_rx_u2|u1|length[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|u1|Selector8~0_combout\,
	clrn => \res~input_o\,
	ena => \inst|uart_rx_u2|u1|length[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|u1|length\(3));

-- Location: LCCOMB_X62_Y37_N12
\inst|uart_rx_u2|u1|Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|Selector9~0_combout\ = (\inst|uart_rx_u2|rxd\(2) & \inst|uart_rx_u2|u1|state.LEN~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|rxd\(2),
	datad => \inst|uart_rx_u2|u1|state.LEN~q\,
	combout => \inst|uart_rx_u2|u1|Selector9~0_combout\);

-- Location: FF_X61_Y37_N3
\inst|uart_rx_u2|u1|length[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \inst|uart_rx_u2|u1|Selector9~0_combout\,
	clrn => \res~input_o\,
	sload => VCC,
	ena => \inst|uart_rx_u2|u1|length[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|u1|length\(2));

-- Location: LCCOMB_X61_Y37_N6
\inst|uart_rx_u2|u1|Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|Selector10~0_combout\ = (\inst|uart_rx_u2|u1|state.LEN~q\ & \inst|uart_rx_u2|rxd\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|u1|state.LEN~q\,
	datac => \inst|uart_rx_u2|rxd\(1),
	combout => \inst|uart_rx_u2|u1|Selector10~0_combout\);

-- Location: FF_X61_Y37_N7
\inst|uart_rx_u2|u1|length[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|u1|Selector10~0_combout\,
	clrn => \res~input_o\,
	ena => \inst|uart_rx_u2|u1|length[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|u1|length\(1));

-- Location: LCCOMB_X61_Y37_N4
\inst|uart_rx_u2|u1|Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|Selector11~0_combout\ = (\inst|uart_rx_u2|rxd\(0) & \inst|uart_rx_u2|u1|state.LEN~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|rxd\(0),
	datad => \inst|uart_rx_u2|u1|state.LEN~q\,
	combout => \inst|uart_rx_u2|u1|Selector11~0_combout\);

-- Location: FF_X61_Y37_N5
\inst|uart_rx_u2|u1|length[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|u1|Selector11~0_combout\,
	clrn => \res~input_o\,
	ena => \inst|uart_rx_u2|u1|length[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|u1|length\(0));

-- Location: LCCOMB_X61_Y37_N10
\inst|uart_rx_u2|u1|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|Add2~0_combout\ = \inst|uart_rx_u2|u1|length\(0) $ (VCC)
-- \inst|uart_rx_u2|u1|Add2~1\ = CARRY(\inst|uart_rx_u2|u1|length\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|u1|length\(0),
	datad => VCC,
	combout => \inst|uart_rx_u2|u1|Add2~0_combout\,
	cout => \inst|uart_rx_u2|u1|Add2~1\);

-- Location: LCCOMB_X61_Y37_N12
\inst|uart_rx_u2|u1|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|Add2~2_combout\ = (\inst|uart_rx_u2|u1|length\(1) & (\inst|uart_rx_u2|u1|Add2~1\ & VCC)) # (!\inst|uart_rx_u2|u1|length\(1) & (!\inst|uart_rx_u2|u1|Add2~1\))
-- \inst|uart_rx_u2|u1|Add2~3\ = CARRY((!\inst|uart_rx_u2|u1|length\(1) & !\inst|uart_rx_u2|u1|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|u1|length\(1),
	datad => VCC,
	cin => \inst|uart_rx_u2|u1|Add2~1\,
	combout => \inst|uart_rx_u2|u1|Add2~2_combout\,
	cout => \inst|uart_rx_u2|u1|Add2~3\);

-- Location: LCCOMB_X61_Y37_N14
\inst|uart_rx_u2|u1|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|Add2~4_combout\ = (\inst|uart_rx_u2|u1|length\(2) & ((GND) # (!\inst|uart_rx_u2|u1|Add2~3\))) # (!\inst|uart_rx_u2|u1|length\(2) & (\inst|uart_rx_u2|u1|Add2~3\ $ (GND)))
-- \inst|uart_rx_u2|u1|Add2~5\ = CARRY((\inst|uart_rx_u2|u1|length\(2)) # (!\inst|uart_rx_u2|u1|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|u1|length\(2),
	datad => VCC,
	cin => \inst|uart_rx_u2|u1|Add2~3\,
	combout => \inst|uart_rx_u2|u1|Add2~4_combout\,
	cout => \inst|uart_rx_u2|u1|Add2~5\);

-- Location: LCCOMB_X61_Y37_N16
\inst|uart_rx_u2|u1|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|Add2~6_combout\ = (\inst|uart_rx_u2|u1|length\(3) & (\inst|uart_rx_u2|u1|Add2~5\ & VCC)) # (!\inst|uart_rx_u2|u1|length\(3) & (!\inst|uart_rx_u2|u1|Add2~5\))
-- \inst|uart_rx_u2|u1|Add2~7\ = CARRY((!\inst|uart_rx_u2|u1|length\(3) & !\inst|uart_rx_u2|u1|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|u1|length\(3),
	datad => VCC,
	cin => \inst|uart_rx_u2|u1|Add2~5\,
	combout => \inst|uart_rx_u2|u1|Add2~6_combout\,
	cout => \inst|uart_rx_u2|u1|Add2~7\);

-- Location: LCCOMB_X61_Y37_N18
\inst|uart_rx_u2|u1|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|Add2~8_combout\ = (\inst|uart_rx_u2|u1|length\(4) & ((GND) # (!\inst|uart_rx_u2|u1|Add2~7\))) # (!\inst|uart_rx_u2|u1|length\(4) & (\inst|uart_rx_u2|u1|Add2~7\ $ (GND)))
-- \inst|uart_rx_u2|u1|Add2~9\ = CARRY((\inst|uart_rx_u2|u1|length\(4)) # (!\inst|uart_rx_u2|u1|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|u1|length\(4),
	datad => VCC,
	cin => \inst|uart_rx_u2|u1|Add2~7\,
	combout => \inst|uart_rx_u2|u1|Add2~8_combout\,
	cout => \inst|uart_rx_u2|u1|Add2~9\);

-- Location: LCCOMB_X61_Y37_N20
\inst|uart_rx_u2|u1|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|Add2~10_combout\ = (\inst|uart_rx_u2|u1|length\(5) & (\inst|uart_rx_u2|u1|Add2~9\ & VCC)) # (!\inst|uart_rx_u2|u1|length\(5) & (!\inst|uart_rx_u2|u1|Add2~9\))
-- \inst|uart_rx_u2|u1|Add2~11\ = CARRY((!\inst|uart_rx_u2|u1|length\(5) & !\inst|uart_rx_u2|u1|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|u1|length\(5),
	datad => VCC,
	cin => \inst|uart_rx_u2|u1|Add2~9\,
	combout => \inst|uart_rx_u2|u1|Add2~10_combout\,
	cout => \inst|uart_rx_u2|u1|Add2~11\);

-- Location: LCCOMB_X61_Y37_N22
\inst|uart_rx_u2|u1|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|Add2~12_combout\ = (\inst|uart_rx_u2|u1|length\(6) & ((GND) # (!\inst|uart_rx_u2|u1|Add2~11\))) # (!\inst|uart_rx_u2|u1|length\(6) & (\inst|uart_rx_u2|u1|Add2~11\ $ (GND)))
-- \inst|uart_rx_u2|u1|Add2~13\ = CARRY((\inst|uart_rx_u2|u1|length\(6)) # (!\inst|uart_rx_u2|u1|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|u1|length\(6),
	datad => VCC,
	cin => \inst|uart_rx_u2|u1|Add2~11\,
	combout => \inst|uart_rx_u2|u1|Add2~12_combout\,
	cout => \inst|uart_rx_u2|u1|Add2~13\);

-- Location: LCCOMB_X61_Y37_N24
\inst|uart_rx_u2|u1|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|Add2~14_combout\ = (\inst|uart_rx_u2|u1|length\(7) & (\inst|uart_rx_u2|u1|Add2~13\ & VCC)) # (!\inst|uart_rx_u2|u1|length\(7) & (!\inst|uart_rx_u2|u1|Add2~13\))
-- \inst|uart_rx_u2|u1|Add2~15\ = CARRY((!\inst|uart_rx_u2|u1|length\(7) & !\inst|uart_rx_u2|u1|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|u1|length\(7),
	datad => VCC,
	cin => \inst|uart_rx_u2|u1|Add2~13\,
	combout => \inst|uart_rx_u2|u1|Add2~14_combout\,
	cout => \inst|uart_rx_u2|u1|Add2~15\);

-- Location: LCCOMB_X61_Y37_N26
\inst|uart_rx_u2|u1|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|Add2~16_combout\ = !\inst|uart_rx_u2|u1|Add2~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|uart_rx_u2|u1|Add2~15\,
	combout => \inst|uart_rx_u2|u1|Add2~16_combout\);

-- Location: LCCOMB_X59_Y37_N6
\inst|uart_rx_u2|u1|count[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|count[0]~8_combout\ = \inst|uart_rx_u2|u1|count\(0) $ (VCC)
-- \inst|uart_rx_u2|u1|count[0]~9\ = CARRY(\inst|uart_rx_u2|u1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|u1|count\(0),
	datad => VCC,
	combout => \inst|uart_rx_u2|u1|count[0]~8_combout\,
	cout => \inst|uart_rx_u2|u1|count[0]~9\);

-- Location: LCCOMB_X59_Y37_N22
\inst|uart_rx_u2|u1|count[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|count[7]~24_combout\ = (\inst|uart_rx_u2|RECEIVE_END~q\ & (\inst|uart_rx_u2|u1|state.IDLE~q\ & !\inst|uart_rx_u2|u1|state.IPD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|RECEIVE_END~q\,
	datab => \inst|uart_rx_u2|u1|state.IDLE~q\,
	datad => \inst|uart_rx_u2|u1|state.IPD~q\,
	combout => \inst|uart_rx_u2|u1|count[7]~24_combout\);

-- Location: LCCOMB_X59_Y37_N4
\inst|uart_rx_u2|u1|count[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|count[7]~25_combout\ = (\inst|uart_rx_u2|u1|count[7]~24_combout\ & ((\inst|uart_rx_u2|u1|Equal5~0_combout\) # (!\inst|uart_rx_u2|u1|state.LEN~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|u1|count[7]~24_combout\,
	datab => \inst|uart_rx_u2|u1|state.LEN~q\,
	datad => \inst|uart_rx_u2|u1|Equal5~0_combout\,
	combout => \inst|uart_rx_u2|u1|count[7]~25_combout\);

-- Location: FF_X59_Y37_N7
\inst|uart_rx_u2|u1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|u1|count[0]~8_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|u1|ALT_INV_state.DATA~q\,
	ena => \inst|uart_rx_u2|u1|count[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|u1|count\(0));

-- Location: LCCOMB_X59_Y37_N8
\inst|uart_rx_u2|u1|count[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|count[1]~10_combout\ = (\inst|uart_rx_u2|u1|count\(1) & (!\inst|uart_rx_u2|u1|count[0]~9\)) # (!\inst|uart_rx_u2|u1|count\(1) & ((\inst|uart_rx_u2|u1|count[0]~9\) # (GND)))
-- \inst|uart_rx_u2|u1|count[1]~11\ = CARRY((!\inst|uart_rx_u2|u1|count[0]~9\) # (!\inst|uart_rx_u2|u1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|u1|count\(1),
	datad => VCC,
	cin => \inst|uart_rx_u2|u1|count[0]~9\,
	combout => \inst|uart_rx_u2|u1|count[1]~10_combout\,
	cout => \inst|uart_rx_u2|u1|count[1]~11\);

-- Location: FF_X59_Y37_N9
\inst|uart_rx_u2|u1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|u1|count[1]~10_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|u1|ALT_INV_state.DATA~q\,
	ena => \inst|uart_rx_u2|u1|count[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|u1|count\(1));

-- Location: LCCOMB_X59_Y37_N10
\inst|uart_rx_u2|u1|count[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|count[2]~12_combout\ = (\inst|uart_rx_u2|u1|count\(2) & (\inst|uart_rx_u2|u1|count[1]~11\ $ (GND))) # (!\inst|uart_rx_u2|u1|count\(2) & (!\inst|uart_rx_u2|u1|count[1]~11\ & VCC))
-- \inst|uart_rx_u2|u1|count[2]~13\ = CARRY((\inst|uart_rx_u2|u1|count\(2) & !\inst|uart_rx_u2|u1|count[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|u1|count\(2),
	datad => VCC,
	cin => \inst|uart_rx_u2|u1|count[1]~11\,
	combout => \inst|uart_rx_u2|u1|count[2]~12_combout\,
	cout => \inst|uart_rx_u2|u1|count[2]~13\);

-- Location: FF_X59_Y37_N11
\inst|uart_rx_u2|u1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|u1|count[2]~12_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|u1|ALT_INV_state.DATA~q\,
	ena => \inst|uart_rx_u2|u1|count[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|u1|count\(2));

-- Location: LCCOMB_X59_Y37_N12
\inst|uart_rx_u2|u1|count[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|count[3]~14_combout\ = (\inst|uart_rx_u2|u1|count\(3) & (!\inst|uart_rx_u2|u1|count[2]~13\)) # (!\inst|uart_rx_u2|u1|count\(3) & ((\inst|uart_rx_u2|u1|count[2]~13\) # (GND)))
-- \inst|uart_rx_u2|u1|count[3]~15\ = CARRY((!\inst|uart_rx_u2|u1|count[2]~13\) # (!\inst|uart_rx_u2|u1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|u1|count\(3),
	datad => VCC,
	cin => \inst|uart_rx_u2|u1|count[2]~13\,
	combout => \inst|uart_rx_u2|u1|count[3]~14_combout\,
	cout => \inst|uart_rx_u2|u1|count[3]~15\);

-- Location: FF_X59_Y37_N13
\inst|uart_rx_u2|u1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|u1|count[3]~14_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|u1|ALT_INV_state.DATA~q\,
	ena => \inst|uart_rx_u2|u1|count[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|u1|count\(3));

-- Location: LCCOMB_X59_Y37_N14
\inst|uart_rx_u2|u1|count[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|count[4]~16_combout\ = (\inst|uart_rx_u2|u1|count\(4) & (\inst|uart_rx_u2|u1|count[3]~15\ $ (GND))) # (!\inst|uart_rx_u2|u1|count\(4) & (!\inst|uart_rx_u2|u1|count[3]~15\ & VCC))
-- \inst|uart_rx_u2|u1|count[4]~17\ = CARRY((\inst|uart_rx_u2|u1|count\(4) & !\inst|uart_rx_u2|u1|count[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|u1|count\(4),
	datad => VCC,
	cin => \inst|uart_rx_u2|u1|count[3]~15\,
	combout => \inst|uart_rx_u2|u1|count[4]~16_combout\,
	cout => \inst|uart_rx_u2|u1|count[4]~17\);

-- Location: FF_X59_Y37_N15
\inst|uart_rx_u2|u1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|u1|count[4]~16_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|u1|ALT_INV_state.DATA~q\,
	ena => \inst|uart_rx_u2|u1|count[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|u1|count\(4));

-- Location: LCCOMB_X59_Y37_N16
\inst|uart_rx_u2|u1|count[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|count[5]~18_combout\ = (\inst|uart_rx_u2|u1|count\(5) & (!\inst|uart_rx_u2|u1|count[4]~17\)) # (!\inst|uart_rx_u2|u1|count\(5) & ((\inst|uart_rx_u2|u1|count[4]~17\) # (GND)))
-- \inst|uart_rx_u2|u1|count[5]~19\ = CARRY((!\inst|uart_rx_u2|u1|count[4]~17\) # (!\inst|uart_rx_u2|u1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|u1|count\(5),
	datad => VCC,
	cin => \inst|uart_rx_u2|u1|count[4]~17\,
	combout => \inst|uart_rx_u2|u1|count[5]~18_combout\,
	cout => \inst|uart_rx_u2|u1|count[5]~19\);

-- Location: FF_X59_Y37_N17
\inst|uart_rx_u2|u1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|u1|count[5]~18_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|u1|ALT_INV_state.DATA~q\,
	ena => \inst|uart_rx_u2|u1|count[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|u1|count\(5));

-- Location: LCCOMB_X60_Y37_N20
\inst|uart_rx_u2|u1|Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|Equal6~0_combout\ = (\inst|uart_rx_u2|u1|count\(5) & (\inst|uart_rx_u2|u1|Add2~10_combout\ & (\inst|uart_rx_u2|u1|Add2~8_combout\ $ (!\inst|uart_rx_u2|u1|count\(4))))) # (!\inst|uart_rx_u2|u1|count\(5) & 
-- (!\inst|uart_rx_u2|u1|Add2~10_combout\ & (\inst|uart_rx_u2|u1|Add2~8_combout\ $ (!\inst|uart_rx_u2|u1|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|u1|count\(5),
	datab => \inst|uart_rx_u2|u1|Add2~8_combout\,
	datac => \inst|uart_rx_u2|u1|Add2~10_combout\,
	datad => \inst|uart_rx_u2|u1|count\(4),
	combout => \inst|uart_rx_u2|u1|Equal6~0_combout\);

-- Location: LCCOMB_X59_Y37_N18
\inst|uart_rx_u2|u1|count[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|count[6]~20_combout\ = (\inst|uart_rx_u2|u1|count\(6) & (\inst|uart_rx_u2|u1|count[5]~19\ $ (GND))) # (!\inst|uart_rx_u2|u1|count\(6) & (!\inst|uart_rx_u2|u1|count[5]~19\ & VCC))
-- \inst|uart_rx_u2|u1|count[6]~21\ = CARRY((\inst|uart_rx_u2|u1|count\(6) & !\inst|uart_rx_u2|u1|count[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|u1|count\(6),
	datad => VCC,
	cin => \inst|uart_rx_u2|u1|count[5]~19\,
	combout => \inst|uart_rx_u2|u1|count[6]~20_combout\,
	cout => \inst|uart_rx_u2|u1|count[6]~21\);

-- Location: FF_X59_Y37_N19
\inst|uart_rx_u2|u1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|u1|count[6]~20_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|u1|ALT_INV_state.DATA~q\,
	ena => \inst|uart_rx_u2|u1|count[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|u1|count\(6));

-- Location: LCCOMB_X59_Y37_N20
\inst|uart_rx_u2|u1|count[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|count[7]~22_combout\ = \inst|uart_rx_u2|u1|count[6]~21\ $ (\inst|uart_rx_u2|u1|count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_rx_u2|u1|count\(7),
	cin => \inst|uart_rx_u2|u1|count[6]~21\,
	combout => \inst|uart_rx_u2|u1|count[7]~22_combout\);

-- Location: FF_X59_Y37_N21
\inst|uart_rx_u2|u1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|u1|count[7]~22_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|u1|ALT_INV_state.DATA~q\,
	ena => \inst|uart_rx_u2|u1|count[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|u1|count\(7));

-- Location: LCCOMB_X60_Y37_N26
\inst|uart_rx_u2|u1|Equal6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|Equal6~1_combout\ = (\inst|uart_rx_u2|u1|count\(1) & (\inst|uart_rx_u2|u1|Add2~2_combout\ & (\inst|uart_rx_u2|u1|Add2~0_combout\ $ (!\inst|uart_rx_u2|u1|count\(0))))) # (!\inst|uart_rx_u2|u1|count\(1) & 
-- (!\inst|uart_rx_u2|u1|Add2~2_combout\ & (\inst|uart_rx_u2|u1|Add2~0_combout\ $ (!\inst|uart_rx_u2|u1|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|u1|count\(1),
	datab => \inst|uart_rx_u2|u1|Add2~2_combout\,
	datac => \inst|uart_rx_u2|u1|Add2~0_combout\,
	datad => \inst|uart_rx_u2|u1|count\(0),
	combout => \inst|uart_rx_u2|u1|Equal6~1_combout\);

-- Location: LCCOMB_X60_Y37_N8
\inst|uart_rx_u2|u1|Equal6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|Equal6~2_combout\ = (\inst|uart_rx_u2|u1|count\(2) & (\inst|uart_rx_u2|u1|Add2~4_combout\ & (\inst|uart_rx_u2|u1|count\(3) $ (!\inst|uart_rx_u2|u1|Add2~6_combout\)))) # (!\inst|uart_rx_u2|u1|count\(2) & 
-- (!\inst|uart_rx_u2|u1|Add2~4_combout\ & (\inst|uart_rx_u2|u1|count\(3) $ (!\inst|uart_rx_u2|u1|Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|u1|count\(2),
	datab => \inst|uart_rx_u2|u1|count\(3),
	datac => \inst|uart_rx_u2|u1|Add2~4_combout\,
	datad => \inst|uart_rx_u2|u1|Add2~6_combout\,
	combout => \inst|uart_rx_u2|u1|Equal6~2_combout\);

-- Location: LCCOMB_X60_Y37_N2
\inst|uart_rx_u2|u1|Equal6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|Equal6~3_combout\ = (\inst|uart_rx_u2|u1|Equal6~1_combout\ & (\inst|uart_rx_u2|u1|Equal6~2_combout\ & (\inst|uart_rx_u2|u1|count\(6) $ (!\inst|uart_rx_u2|u1|Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|u1|Equal6~1_combout\,
	datab => \inst|uart_rx_u2|u1|count\(6),
	datac => \inst|uart_rx_u2|u1|Equal6~2_combout\,
	datad => \inst|uart_rx_u2|u1|Add2~12_combout\,
	combout => \inst|uart_rx_u2|u1|Equal6~3_combout\);

-- Location: LCCOMB_X60_Y37_N28
\inst|uart_rx_u2|u1|Equal6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|Equal6~4_combout\ = (\inst|uart_rx_u2|u1|Equal6~0_combout\ & (\inst|uart_rx_u2|u1|Equal6~3_combout\ & (\inst|uart_rx_u2|u1|Add2~14_combout\ $ (!\inst|uart_rx_u2|u1|count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|u1|Add2~14_combout\,
	datab => \inst|uart_rx_u2|u1|Equal6~0_combout\,
	datac => \inst|uart_rx_u2|u1|count\(7),
	datad => \inst|uart_rx_u2|u1|Equal6~3_combout\,
	combout => \inst|uart_rx_u2|u1|Equal6~4_combout\);

-- Location: LCCOMB_X60_Y37_N6
\inst|uart_rx_u2|u1|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|Selector3~1_combout\ = (\inst|uart_rx_u2|u1|Selector3~0_combout\) # ((\inst|uart_rx_u2|u1|state.DATA~q\ & ((!\inst|uart_rx_u2|u1|Equal6~4_combout\) # (!\inst|uart_rx_u2|u1|Add2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|u1|Selector3~0_combout\,
	datab => \inst|uart_rx_u2|u1|Add2~16_combout\,
	datac => \inst|uart_rx_u2|u1|state.DATA~q\,
	datad => \inst|uart_rx_u2|u1|Equal6~4_combout\,
	combout => \inst|uart_rx_u2|u1|Selector3~1_combout\);

-- Location: FF_X60_Y37_N7
\inst|uart_rx_u2|u1|state.DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|u1|Selector3~1_combout\,
	clrn => \res~input_o\,
	ena => \inst|uart_rx_u2|RECEIVE_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|u1|state.DATA~q\);

-- Location: LCCOMB_X62_Y37_N28
\inst|uart_rx_u2|u1|state~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|state~13_combout\ = (\inst|uart_rx_u2|rxd\(3) & (!\inst|uart_rx_u2|rxd\(4) & (!\inst|uart_rx_u2|rxd\(2) & \inst|uart_rx_u2|rxd\(0)))) # (!\inst|uart_rx_u2|rxd\(3) & (!\inst|uart_rx_u2|rxd\(0) & (\inst|uart_rx_u2|rxd\(4) $ 
-- (\inst|uart_rx_u2|rxd\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|rxd\(4),
	datab => \inst|uart_rx_u2|rxd\(2),
	datac => \inst|uart_rx_u2|rxd\(3),
	datad => \inst|uart_rx_u2|rxd\(0),
	combout => \inst|uart_rx_u2|u1|state~13_combout\);

-- Location: LCCOMB_X62_Y37_N14
\inst|uart_rx_u2|u1|state~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|state~15_combout\ = (\inst|uart_rx_u2|u1|state~14_combout\ & (\inst|uart_rx_u2|u1|state~13_combout\ & (!\inst|uart_rx_u2|rxd\(7) & !\inst|uart_rx_u2|rxd\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|u1|state~14_combout\,
	datab => \inst|uart_rx_u2|u1|state~13_combout\,
	datac => \inst|uart_rx_u2|rxd\(7),
	datad => \inst|uart_rx_u2|rxd\(1),
	combout => \inst|uart_rx_u2|u1|state~15_combout\);

-- Location: LCCOMB_X60_Y37_N12
\inst|uart_rx_u2|u1|state~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|state~21_combout\ = (\inst|uart_rx_u2|u1|state~15_combout\ & (!\inst|uart_rx_u2|u1|state.DATA~q\)) # (!\inst|uart_rx_u2|u1|state~15_combout\ & ((\inst|uart_rx_u2|u1|state~12_combout\) # ((!\inst|uart_rx_u2|u1|state.DATA~q\ & 
-- !\inst|uart_rx_u2|u1|state.IPD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|u1|state.DATA~q\,
	datab => \inst|uart_rx_u2|u1|state~15_combout\,
	datac => \inst|uart_rx_u2|u1|state.IPD~q\,
	datad => \inst|uart_rx_u2|u1|state~12_combout\,
	combout => \inst|uart_rx_u2|u1|state~21_combout\);

-- Location: LCCOMB_X62_Y37_N8
\inst|uart_rx_u2|u1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|Equal0~1_combout\ = (!\inst|uart_rx_u2|rxd\(6) & (\inst|uart_rx_u2|rxd\(5) & (!\inst|uart_rx_u2|rxd\(2) & \inst|uart_rx_u2|rxd\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|rxd\(6),
	datab => \inst|uart_rx_u2|rxd\(5),
	datac => \inst|uart_rx_u2|rxd\(2),
	datad => \inst|uart_rx_u2|rxd\(1),
	combout => \inst|uart_rx_u2|u1|Equal0~1_combout\);

-- Location: LCCOMB_X62_Y37_N24
\inst|uart_rx_u2|u1|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|Equal0~2_combout\ = (\inst|uart_rx_u2|u1|Equal0~1_combout\ & (\inst|uart_rx_u2|rxd\(0) & \inst|uart_rx_u2|u1|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|u1|Equal0~1_combout\,
	datab => \inst|uart_rx_u2|rxd\(0),
	datad => \inst|uart_rx_u2|u1|Equal0~0_combout\,
	combout => \inst|uart_rx_u2|u1|Equal0~2_combout\);

-- Location: LCCOMB_X59_Y37_N0
\inst|uart_rx_u2|u1|state~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|state~18_combout\ = (!\inst|uart_rx_u2|u1|Equal0~2_combout\ & (!\inst|uart_rx_u2|u1|state.IDLE~q\ & ((!\inst|uart_rx_u2|u1|Equal5~0_combout\) # (!\inst|uart_rx_u2|u1|state.LEN~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|u1|Equal0~2_combout\,
	datab => \inst|uart_rx_u2|u1|state.LEN~q\,
	datac => \inst|uart_rx_u2|u1|state.IDLE~q\,
	datad => \inst|uart_rx_u2|u1|Equal5~0_combout\,
	combout => \inst|uart_rx_u2|u1|state~18_combout\);

-- Location: LCCOMB_X60_Y37_N30
\inst|uart_rx_u2|u1|state~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|state~17_combout\ = ((\inst|uart_rx_u2|u1|state.DATA~q\ & ((!\inst|uart_rx_u2|u1|Equal6~4_combout\) # (!\inst|uart_rx_u2|u1|Add2~16_combout\)))) # (!\inst|uart_rx_u2|RECEIVE_END~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|u1|state.DATA~q\,
	datab => \inst|uart_rx_u2|u1|Add2~16_combout\,
	datac => \inst|uart_rx_u2|RECEIVE_END~q\,
	datad => \inst|uart_rx_u2|u1|Equal6~4_combout\,
	combout => \inst|uart_rx_u2|u1|state~17_combout\);

-- Location: LCCOMB_X60_Y37_N16
\inst|uart_rx_u2|u1|state~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|state~19_combout\ = ((\inst|uart_rx_u2|u1|Add0~0_combout\ & (!\inst|uart_rx_u2|u1|always0~0_combout\ & !\inst|uart_rx_u2|rxd\(7)))) # (!\inst|uart_rx_u2|u1|Selector3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|u1|Selector3~0_combout\,
	datab => \inst|uart_rx_u2|u1|Add0~0_combout\,
	datac => \inst|uart_rx_u2|u1|always0~0_combout\,
	datad => \inst|uart_rx_u2|rxd\(7),
	combout => \inst|uart_rx_u2|u1|state~19_combout\);

-- Location: LCCOMB_X60_Y37_N14
\inst|uart_rx_u2|u1|state~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|state~20_combout\ = (!\inst|uart_rx_u2|u1|state~18_combout\ & (!\inst|uart_rx_u2|u1|state~17_combout\ & ((!\inst|uart_rx_u2|u1|state~19_combout\) # (!\inst|uart_rx_u2|u1|state.LEN~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|u1|state~18_combout\,
	datab => \inst|uart_rx_u2|u1|state.LEN~q\,
	datac => \inst|uart_rx_u2|u1|state~17_combout\,
	datad => \inst|uart_rx_u2|u1|state~19_combout\,
	combout => \inst|uart_rx_u2|u1|state~20_combout\);

-- Location: FF_X60_Y37_N13
\inst|uart_rx_u2|u1|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|u1|state~21_combout\,
	clrn => \res~input_o\,
	ena => \inst|uart_rx_u2|u1|state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|u1|state.IDLE~q\);

-- Location: LCCOMB_X60_Y37_N4
\inst|uart_rx_u2|u1|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|Selector1~0_combout\ = (\inst|uart_rx_u2|u1|state.IDLE~q\ & (((\inst|uart_rx_u2|u1|state.IPD~q\ & \inst|uart_rx_u2|u1|state~15_combout\)))) # (!\inst|uart_rx_u2|u1|state.IDLE~q\ & ((\inst|uart_rx_u2|u1|Equal0~2_combout\) # 
-- ((\inst|uart_rx_u2|u1|state.IPD~q\ & \inst|uart_rx_u2|u1|state~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|u1|state.IDLE~q\,
	datab => \inst|uart_rx_u2|u1|Equal0~2_combout\,
	datac => \inst|uart_rx_u2|u1|state.IPD~q\,
	datad => \inst|uart_rx_u2|u1|state~15_combout\,
	combout => \inst|uart_rx_u2|u1|Selector1~0_combout\);

-- Location: FF_X60_Y37_N5
\inst|uart_rx_u2|u1|state.IPD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|u1|Selector1~0_combout\,
	clrn => \res~input_o\,
	ena => \inst|uart_rx_u2|RECEIVE_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|u1|state.IPD~q\);

-- Location: LCCOMB_X60_Y37_N10
\inst|uart_rx_u2|u1|state~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|state~12_combout\ = (!\inst|uart_rx_u2|rxd\(0) & (\inst|uart_rx_u2|rxd\(5) & (\inst|uart_rx_u2|u1|state.IPD~q\ & \inst|uart_rx_u2|u1|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|rxd\(0),
	datab => \inst|uart_rx_u2|rxd\(5),
	datac => \inst|uart_rx_u2|u1|state.IPD~q\,
	datad => \inst|uart_rx_u2|u1|Equal4~0_combout\,
	combout => \inst|uart_rx_u2|u1|state~12_combout\);

-- Location: LCCOMB_X60_Y37_N24
\inst|uart_rx_u2|u1|state~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|state~16_combout\ = (\inst|uart_rx_u2|u1|state~12_combout\ & !\inst|uart_rx_u2|u1|state~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|u1|state~12_combout\,
	datac => \inst|uart_rx_u2|u1|state~15_combout\,
	combout => \inst|uart_rx_u2|u1|state~16_combout\);

-- Location: FF_X60_Y37_N25
\inst|uart_rx_u2|u1|state.LEN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|u1|state~16_combout\,
	clrn => \res~input_o\,
	ena => \inst|uart_rx_u2|u1|state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|u1|state.LEN~q\);

-- Location: LCCOMB_X62_Y37_N4
\inst|uart_rx_u2|u1|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|u1|Selector4~0_combout\ = (\inst|uart_rx_u2|u1|state.LEN~q\ & (\inst|uart_rx_u2|rxd\(7) $ (((!\inst|uart_rx_u2|u1|Add0~0_combout\ & !\inst|uart_rx_u2|rxd\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|u1|Add0~0_combout\,
	datab => \inst|uart_rx_u2|rxd\(7),
	datac => \inst|uart_rx_u2|rxd\(6),
	datad => \inst|uart_rx_u2|u1|state.LEN~q\,
	combout => \inst|uart_rx_u2|u1|Selector4~0_combout\);

-- Location: FF_X62_Y37_N5
\inst|uart_rx_u2|u1|length[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|u1|Selector4~0_combout\,
	clrn => \res~input_o\,
	ena => \inst|uart_rx_u2|u1|length[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|u1|length\(7));

-- Location: LCCOMB_X63_Y37_N24
\inst|uart_rx_u2|length_reg[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|length_reg[7]~feeder_combout\ = \inst|uart_rx_u2|u1|length\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|uart_rx_u2|u1|length\(7),
	combout => \inst|uart_rx_u2|length_reg[7]~feeder_combout\);

-- Location: FF_X63_Y37_N25
\inst|uart_rx_u2|length_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|length_reg[7]~feeder_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|length_reg\(7));

-- Location: LCCOMB_X63_Y37_N4
\inst|length_REG[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|length_REG[7]~feeder_combout\ = \inst|uart_rx_u2|length_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_rx_u2|length_reg\(7),
	combout => \inst|length_REG[7]~feeder_combout\);

-- Location: FF_X63_Y37_N5
\inst|length_REG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|length_REG[7]~feeder_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|length_REG\(7));

-- Location: FF_X61_Y37_N21
\inst|uart_rx_u2|length_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \inst|uart_rx_u2|u1|length\(6),
	clrn => \res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|length_reg\(6));

-- Location: FF_X61_Y37_N17
\inst|length_REG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \inst|uart_rx_u2|length_reg\(6),
	clrn => \res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|length_REG\(6));

-- Location: LCCOMB_X63_Y37_N22
\inst|uart_rx_u2|length_reg[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|length_reg[5]~feeder_combout\ = \inst|uart_rx_u2|u1|length\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_rx_u2|u1|length\(5),
	combout => \inst|uart_rx_u2|length_reg[5]~feeder_combout\);

-- Location: FF_X63_Y37_N23
\inst|uart_rx_u2|length_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|length_reg[5]~feeder_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|length_reg\(5));

-- Location: LCCOMB_X63_Y37_N14
\inst|length_REG[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|length_REG[5]~feeder_combout\ = \inst|uart_rx_u2|length_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|uart_rx_u2|length_reg\(5),
	combout => \inst|length_REG[5]~feeder_combout\);

-- Location: FF_X63_Y37_N15
\inst|length_REG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|length_REG[5]~feeder_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|length_REG\(5));

-- Location: FF_X61_Y37_N19
\inst|uart_rx_u2|length_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \inst|uart_rx_u2|u1|length\(4),
	clrn => \res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|length_reg\(4));

-- Location: FF_X61_Y37_N23
\inst|length_REG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \inst|uart_rx_u2|length_reg\(4),
	clrn => \res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|length_REG\(4));

-- Location: FF_X61_Y37_N15
\inst|uart_rx_u2|length_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \inst|uart_rx_u2|u1|length\(3),
	clrn => \res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|length_reg\(3));

-- Location: FF_X61_Y37_N13
\inst|length_REG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \inst|uart_rx_u2|length_reg\(3),
	clrn => \res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|length_REG\(3));

-- Location: FF_X61_Y37_N25
\inst|uart_rx_u2|length_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \inst|uart_rx_u2|u1|length\(2),
	clrn => \res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|length_reg\(2));

-- Location: LCCOMB_X60_Y39_N28
\inst|length_REG[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|length_REG[2]~feeder_combout\ = \inst|uart_rx_u2|length_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_rx_u2|length_reg\(2),
	combout => \inst|length_REG[2]~feeder_combout\);

-- Location: FF_X60_Y39_N29
\inst|length_REG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|length_REG[2]~feeder_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|length_REG\(2));

-- Location: LCCOMB_X60_Y39_N0
\inst|uart_rx_u2|length_reg[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|length_reg[1]~feeder_combout\ = \inst|uart_rx_u2|u1|length\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_rx_u2|u1|length\(1),
	combout => \inst|uart_rx_u2|length_reg[1]~feeder_combout\);

-- Location: FF_X60_Y39_N1
\inst|uart_rx_u2|length_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|length_reg[1]~feeder_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|length_reg\(1));

-- Location: LCCOMB_X60_Y39_N2
\inst|length_REG[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|length_REG[1]~feeder_combout\ = \inst|uart_rx_u2|length_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_rx_u2|length_reg\(1),
	combout => \inst|length_REG[1]~feeder_combout\);

-- Location: FF_X60_Y39_N3
\inst|length_REG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|length_REG[1]~feeder_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|length_REG\(1));

-- Location: FF_X61_Y37_N11
\inst|uart_rx_u2|length_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \inst|uart_rx_u2|u1|length\(0),
	clrn => \res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|length_reg\(0));

-- Location: FF_X61_Y37_N27
\inst|length_REG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \inst|uart_rx_u2|length_reg\(0),
	clrn => \res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|length_REG\(0));

-- Location: LCCOMB_X37_Y2_N4
\inst3|D[0]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|D[0]~72_combout\ = !\inst3|D\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|D\(0),
	combout => \inst3|D[0]~72_combout\);

-- Location: FF_X37_Y2_N5
\inst3|D[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst3|D[0]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|D\(0));

-- Location: LCCOMB_X37_Y2_N8
\inst3|D[1]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|D[1]~24_combout\ = (\inst3|D\(0) & (\inst3|D\(1) $ (VCC))) # (!\inst3|D\(0) & (\inst3|D\(1) & VCC))
-- \inst3|D[1]~25\ = CARRY((\inst3|D\(0) & \inst3|D\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|D\(0),
	datab => \inst3|D\(1),
	datad => VCC,
	combout => \inst3|D[1]~24_combout\,
	cout => \inst3|D[1]~25\);

-- Location: FF_X37_Y2_N9
\inst3|D[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst3|D[1]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|D\(1));

-- Location: LCCOMB_X37_Y2_N10
\inst3|D[2]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|D[2]~26_combout\ = (\inst3|D\(2) & (!\inst3|D[1]~25\)) # (!\inst3|D\(2) & ((\inst3|D[1]~25\) # (GND)))
-- \inst3|D[2]~27\ = CARRY((!\inst3|D[1]~25\) # (!\inst3|D\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|D\(2),
	datad => VCC,
	cin => \inst3|D[1]~25\,
	combout => \inst3|D[2]~26_combout\,
	cout => \inst3|D[2]~27\);

-- Location: FF_X37_Y2_N11
\inst3|D[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst3|D[2]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|D\(2));

-- Location: LCCOMB_X37_Y2_N12
\inst3|D[3]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|D[3]~28_combout\ = (\inst3|D\(3) & (\inst3|D[2]~27\ $ (GND))) # (!\inst3|D\(3) & (!\inst3|D[2]~27\ & VCC))
-- \inst3|D[3]~29\ = CARRY((\inst3|D\(3) & !\inst3|D[2]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|D\(3),
	datad => VCC,
	cin => \inst3|D[2]~27\,
	combout => \inst3|D[3]~28_combout\,
	cout => \inst3|D[3]~29\);

-- Location: FF_X37_Y2_N13
\inst3|D[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst3|D[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|D\(3));

-- Location: LCCOMB_X37_Y2_N14
\inst3|D[4]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|D[4]~30_combout\ = (\inst3|D\(4) & (!\inst3|D[3]~29\)) # (!\inst3|D\(4) & ((\inst3|D[3]~29\) # (GND)))
-- \inst3|D[4]~31\ = CARRY((!\inst3|D[3]~29\) # (!\inst3|D\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|D\(4),
	datad => VCC,
	cin => \inst3|D[3]~29\,
	combout => \inst3|D[4]~30_combout\,
	cout => \inst3|D[4]~31\);

-- Location: FF_X37_Y2_N15
\inst3|D[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst3|D[4]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|D\(4));

-- Location: LCCOMB_X37_Y2_N16
\inst3|D[5]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|D[5]~32_combout\ = (\inst3|D\(5) & (\inst3|D[4]~31\ $ (GND))) # (!\inst3|D\(5) & (!\inst3|D[4]~31\ & VCC))
-- \inst3|D[5]~33\ = CARRY((\inst3|D\(5) & !\inst3|D[4]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|D\(5),
	datad => VCC,
	cin => \inst3|D[4]~31\,
	combout => \inst3|D[5]~32_combout\,
	cout => \inst3|D[5]~33\);

-- Location: FF_X37_Y2_N17
\inst3|D[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst3|D[5]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|D\(5));

-- Location: LCCOMB_X37_Y2_N18
\inst3|D[6]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|D[6]~34_combout\ = (\inst3|D\(6) & (!\inst3|D[5]~33\)) # (!\inst3|D\(6) & ((\inst3|D[5]~33\) # (GND)))
-- \inst3|D[6]~35\ = CARRY((!\inst3|D[5]~33\) # (!\inst3|D\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|D\(6),
	datad => VCC,
	cin => \inst3|D[5]~33\,
	combout => \inst3|D[6]~34_combout\,
	cout => \inst3|D[6]~35\);

-- Location: FF_X37_Y2_N19
\inst3|D[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst3|D[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|D\(6));

-- Location: LCCOMB_X37_Y2_N20
\inst3|D[7]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|D[7]~36_combout\ = (\inst3|D\(7) & (\inst3|D[6]~35\ $ (GND))) # (!\inst3|D\(7) & (!\inst3|D[6]~35\ & VCC))
-- \inst3|D[7]~37\ = CARRY((\inst3|D\(7) & !\inst3|D[6]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|D\(7),
	datad => VCC,
	cin => \inst3|D[6]~35\,
	combout => \inst3|D[7]~36_combout\,
	cout => \inst3|D[7]~37\);

-- Location: FF_X37_Y2_N21
\inst3|D[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst3|D[7]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|D\(7));

-- Location: LCCOMB_X37_Y2_N22
\inst3|D[8]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|D[8]~38_combout\ = (\inst3|D\(8) & (!\inst3|D[7]~37\)) # (!\inst3|D\(8) & ((\inst3|D[7]~37\) # (GND)))
-- \inst3|D[8]~39\ = CARRY((!\inst3|D[7]~37\) # (!\inst3|D\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|D\(8),
	datad => VCC,
	cin => \inst3|D[7]~37\,
	combout => \inst3|D[8]~38_combout\,
	cout => \inst3|D[8]~39\);

-- Location: FF_X37_Y2_N23
\inst3|D[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst3|D[8]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|D\(8));

-- Location: LCCOMB_X37_Y2_N24
\inst3|D[9]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|D[9]~40_combout\ = (\inst3|D\(9) & (\inst3|D[8]~39\ $ (GND))) # (!\inst3|D\(9) & (!\inst3|D[8]~39\ & VCC))
-- \inst3|D[9]~41\ = CARRY((\inst3|D\(9) & !\inst3|D[8]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|D\(9),
	datad => VCC,
	cin => \inst3|D[8]~39\,
	combout => \inst3|D[9]~40_combout\,
	cout => \inst3|D[9]~41\);

-- Location: FF_X37_Y2_N25
\inst3|D[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst3|D[9]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|D\(9));

-- Location: LCCOMB_X37_Y2_N26
\inst3|D[10]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|D[10]~42_combout\ = (\inst3|D\(10) & (!\inst3|D[9]~41\)) # (!\inst3|D\(10) & ((\inst3|D[9]~41\) # (GND)))
-- \inst3|D[10]~43\ = CARRY((!\inst3|D[9]~41\) # (!\inst3|D\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|D\(10),
	datad => VCC,
	cin => \inst3|D[9]~41\,
	combout => \inst3|D[10]~42_combout\,
	cout => \inst3|D[10]~43\);

-- Location: FF_X37_Y2_N27
\inst3|D[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst3|D[10]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|D\(10));

-- Location: LCCOMB_X37_Y2_N28
\inst3|D[11]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|D[11]~44_combout\ = (\inst3|D\(11) & (\inst3|D[10]~43\ $ (GND))) # (!\inst3|D\(11) & (!\inst3|D[10]~43\ & VCC))
-- \inst3|D[11]~45\ = CARRY((\inst3|D\(11) & !\inst3|D[10]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|D\(11),
	datad => VCC,
	cin => \inst3|D[10]~43\,
	combout => \inst3|D[11]~44_combout\,
	cout => \inst3|D[11]~45\);

-- Location: FF_X37_Y2_N29
\inst3|D[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst3|D[11]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|D\(11));

-- Location: LCCOMB_X37_Y2_N30
\inst3|D[12]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|D[12]~46_combout\ = (\inst3|D\(12) & (!\inst3|D[11]~45\)) # (!\inst3|D\(12) & ((\inst3|D[11]~45\) # (GND)))
-- \inst3|D[12]~47\ = CARRY((!\inst3|D[11]~45\) # (!\inst3|D\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|D\(12),
	datad => VCC,
	cin => \inst3|D[11]~45\,
	combout => \inst3|D[12]~46_combout\,
	cout => \inst3|D[12]~47\);

-- Location: FF_X37_Y2_N31
\inst3|D[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst3|D[12]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|D\(12));

-- Location: LCCOMB_X37_Y1_N0
\inst3|D[13]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|D[13]~48_combout\ = (\inst3|D\(13) & (\inst3|D[12]~47\ $ (GND))) # (!\inst3|D\(13) & (!\inst3|D[12]~47\ & VCC))
-- \inst3|D[13]~49\ = CARRY((\inst3|D\(13) & !\inst3|D[12]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|D\(13),
	datad => VCC,
	cin => \inst3|D[12]~47\,
	combout => \inst3|D[13]~48_combout\,
	cout => \inst3|D[13]~49\);

-- Location: FF_X37_Y1_N1
\inst3|D[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst3|D[13]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|D\(13));

-- Location: LCCOMB_X37_Y1_N2
\inst3|D[14]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|D[14]~50_combout\ = (\inst3|D\(14) & (!\inst3|D[13]~49\)) # (!\inst3|D\(14) & ((\inst3|D[13]~49\) # (GND)))
-- \inst3|D[14]~51\ = CARRY((!\inst3|D[13]~49\) # (!\inst3|D\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|D\(14),
	datad => VCC,
	cin => \inst3|D[13]~49\,
	combout => \inst3|D[14]~50_combout\,
	cout => \inst3|D[14]~51\);

-- Location: FF_X37_Y1_N3
\inst3|D[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst3|D[14]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|D\(14));

-- Location: LCCOMB_X37_Y1_N4
\inst3|D[15]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|D[15]~52_combout\ = (\inst3|D\(15) & (\inst3|D[14]~51\ $ (GND))) # (!\inst3|D\(15) & (!\inst3|D[14]~51\ & VCC))
-- \inst3|D[15]~53\ = CARRY((\inst3|D\(15) & !\inst3|D[14]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|D\(15),
	datad => VCC,
	cin => \inst3|D[14]~51\,
	combout => \inst3|D[15]~52_combout\,
	cout => \inst3|D[15]~53\);

-- Location: FF_X37_Y1_N5
\inst3|D[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst3|D[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|D\(15));

-- Location: LCCOMB_X37_Y1_N6
\inst3|D[16]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|D[16]~54_combout\ = (\inst3|D\(16) & (!\inst3|D[15]~53\)) # (!\inst3|D\(16) & ((\inst3|D[15]~53\) # (GND)))
-- \inst3|D[16]~55\ = CARRY((!\inst3|D[15]~53\) # (!\inst3|D\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|D\(16),
	datad => VCC,
	cin => \inst3|D[15]~53\,
	combout => \inst3|D[16]~54_combout\,
	cout => \inst3|D[16]~55\);

-- Location: FF_X37_Y1_N7
\inst3|D[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst3|D[16]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|D\(16));

-- Location: LCCOMB_X37_Y1_N8
\inst3|D[17]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|D[17]~56_combout\ = (\inst3|D\(17) & (\inst3|D[16]~55\ $ (GND))) # (!\inst3|D\(17) & (!\inst3|D[16]~55\ & VCC))
-- \inst3|D[17]~57\ = CARRY((\inst3|D\(17) & !\inst3|D[16]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|D\(17),
	datad => VCC,
	cin => \inst3|D[16]~55\,
	combout => \inst3|D[17]~56_combout\,
	cout => \inst3|D[17]~57\);

-- Location: FF_X37_Y1_N9
\inst3|D[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst3|D[17]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|D\(17));

-- Location: LCCOMB_X37_Y1_N10
\inst3|D[18]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|D[18]~58_combout\ = (\inst3|D\(18) & (!\inst3|D[17]~57\)) # (!\inst3|D\(18) & ((\inst3|D[17]~57\) # (GND)))
-- \inst3|D[18]~59\ = CARRY((!\inst3|D[17]~57\) # (!\inst3|D\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|D\(18),
	datad => VCC,
	cin => \inst3|D[17]~57\,
	combout => \inst3|D[18]~58_combout\,
	cout => \inst3|D[18]~59\);

-- Location: FF_X37_Y1_N11
\inst3|D[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst3|D[18]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|D\(18));

-- Location: LCCOMB_X37_Y1_N12
\inst3|D[19]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|D[19]~60_combout\ = (\inst3|D\(19) & (\inst3|D[18]~59\ $ (GND))) # (!\inst3|D\(19) & (!\inst3|D[18]~59\ & VCC))
-- \inst3|D[19]~61\ = CARRY((\inst3|D\(19) & !\inst3|D[18]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|D\(19),
	datad => VCC,
	cin => \inst3|D[18]~59\,
	combout => \inst3|D[19]~60_combout\,
	cout => \inst3|D[19]~61\);

-- Location: FF_X37_Y1_N13
\inst3|D[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst3|D[19]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|D\(19));

-- Location: LCCOMB_X37_Y1_N14
\inst3|D[20]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|D[20]~62_combout\ = (\inst3|D\(20) & (!\inst3|D[19]~61\)) # (!\inst3|D\(20) & ((\inst3|D[19]~61\) # (GND)))
-- \inst3|D[20]~63\ = CARRY((!\inst3|D[19]~61\) # (!\inst3|D\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|D\(20),
	datad => VCC,
	cin => \inst3|D[19]~61\,
	combout => \inst3|D[20]~62_combout\,
	cout => \inst3|D[20]~63\);

-- Location: FF_X37_Y1_N15
\inst3|D[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst3|D[20]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|D\(20));

-- Location: LCCOMB_X37_Y1_N16
\inst3|D[21]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|D[21]~64_combout\ = (\inst3|D\(21) & (\inst3|D[20]~63\ $ (GND))) # (!\inst3|D\(21) & (!\inst3|D[20]~63\ & VCC))
-- \inst3|D[21]~65\ = CARRY((\inst3|D\(21) & !\inst3|D[20]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|D\(21),
	datad => VCC,
	cin => \inst3|D[20]~63\,
	combout => \inst3|D[21]~64_combout\,
	cout => \inst3|D[21]~65\);

-- Location: FF_X37_Y1_N17
\inst3|D[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst3|D[21]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|D\(21));

-- Location: LCCOMB_X37_Y1_N18
\inst3|D[22]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|D[22]~66_combout\ = (\inst3|D\(22) & (!\inst3|D[21]~65\)) # (!\inst3|D\(22) & ((\inst3|D[21]~65\) # (GND)))
-- \inst3|D[22]~67\ = CARRY((!\inst3|D[21]~65\) # (!\inst3|D\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|D\(22),
	datad => VCC,
	cin => \inst3|D[21]~65\,
	combout => \inst3|D[22]~66_combout\,
	cout => \inst3|D[22]~67\);

-- Location: FF_X37_Y1_N19
\inst3|D[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst3|D[22]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|D\(22));

-- Location: LCCOMB_X37_Y1_N20
\inst3|D[23]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|D[23]~68_combout\ = (\inst3|D\(23) & (\inst3|D[22]~67\ $ (GND))) # (!\inst3|D\(23) & (!\inst3|D[22]~67\ & VCC))
-- \inst3|D[23]~69\ = CARRY((\inst3|D\(23) & !\inst3|D[22]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|D\(23),
	datad => VCC,
	cin => \inst3|D[22]~67\,
	combout => \inst3|D[23]~68_combout\,
	cout => \inst3|D[23]~69\);

-- Location: FF_X37_Y1_N21
\inst3|D[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst3|D[23]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|D\(23));

-- Location: LCCOMB_X37_Y1_N22
\inst3|D[24]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|D[24]~70_combout\ = \inst3|D\(24) $ (\inst3|D[23]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|D\(24),
	cin => \inst3|D[23]~69\,
	combout => \inst3|D[24]~70_combout\);

-- Location: FF_X37_Y1_N23
\inst3|D[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst3|D[24]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|D\(24));

-- Location: LCCOMB_X38_Y1_N6
\inst4|cnt_rgb[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cnt_rgb[1]~2_combout\ = \inst4|cnt_rgb\(0) $ (\inst4|cnt_rgb\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt_rgb\(0),
	datad => \inst4|cnt_rgb\(1),
	combout => \inst4|cnt_rgb[1]~2_combout\);

-- Location: LCCOMB_X38_Y1_N24
\inst4|cnt_rgb[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cnt_rgb[1]~feeder_combout\ = \inst4|cnt_rgb[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|cnt_rgb[1]~2_combout\,
	combout => \inst4|cnt_rgb[1]~feeder_combout\);

-- Location: FF_X38_Y1_N25
\inst4|cnt_rgb[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|D\(24),
	d => \inst4|cnt_rgb[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt_rgb\(1));

-- Location: LCCOMB_X38_Y1_N26
\inst4|cnt_rgb[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cnt_rgb[2]~1_combout\ = \inst4|cnt_rgb\(2) $ (((\inst4|cnt_rgb\(0) & \inst4|cnt_rgb\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt_rgb\(0),
	datac => \inst4|cnt_rgb\(2),
	datad => \inst4|cnt_rgb\(1),
	combout => \inst4|cnt_rgb[2]~1_combout\);

-- Location: FF_X38_Y1_N27
\inst4|cnt_rgb[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|D\(24),
	d => \inst4|cnt_rgb[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt_rgb\(2));

-- Location: LCCOMB_X38_Y1_N18
\inst4|cnt_rgb~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cnt_rgb~0_combout\ = (!\inst4|cnt_rgb\(0) & ((!\inst4|cnt_rgb\(1)) # (!\inst4|cnt_rgb\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt_rgb\(0),
	datac => \inst4|cnt_rgb\(2),
	datad => \inst4|cnt_rgb\(1),
	combout => \inst4|cnt_rgb~0_combout\);

-- Location: LCCOMB_X38_Y1_N28
\inst4|cnt_rgb[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cnt_rgb[0]~feeder_combout\ = \inst4|cnt_rgb~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|cnt_rgb~0_combout\,
	combout => \inst4|cnt_rgb[0]~feeder_combout\);

-- Location: FF_X38_Y1_N29
\inst4|cnt_rgb[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|D\(24),
	d => \inst4|cnt_rgb[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt_rgb\(0));

-- Location: LCCOMB_X38_Y1_N14
\inst4|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Mux1~0_combout\ = (\inst4|cnt_rgb\(0) & (\inst4|cnt_rgb\(2) & \inst4|cnt_rgb\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt_rgb\(0),
	datac => \inst4|cnt_rgb\(2),
	datad => \inst4|cnt_rgb\(1),
	combout => \inst4|Mux1~0_combout\);

-- Location: LCCOMB_X38_Y1_N8
\inst4|rgb[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|rgb\(2) = (\inst4|Mux1~0_combout\ & (\inst4|rgb\(2))) # (!\inst4|Mux1~0_combout\ & ((\inst4|cnt_rgb\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|rgb\(2),
	datac => \inst4|Mux1~0_combout\,
	datad => \inst4|cnt_rgb\(0),
	combout => \inst4|rgb\(2));

-- Location: CLKCTRL_G19
\inst3|D[13]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|D[13]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|D[13]~clkctrl_outclk\);

-- Location: LCCOMB_X42_Y1_N6
\inst5|S[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|S[0]~0_combout\ = !\inst5|S\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|S\(0),
	combout => \inst5|S[0]~0_combout\);

-- Location: FF_X42_Y1_N7
\inst5|S[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|D[13]~clkctrl_outclk\,
	d => \inst5|S[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|S\(0));

-- Location: LCCOMB_X42_Y1_N28
\inst5|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Mux3~0_combout\ = \inst5|S\(1) $ (\inst5|S\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|S\(1),
	datad => \inst5|S\(0),
	combout => \inst5|Mux3~0_combout\);

-- Location: FF_X42_Y1_N29
\inst5|S[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|D[13]~clkctrl_outclk\,
	d => \inst5|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|S\(1));

-- Location: LCCOMB_X42_Y1_N0
\inst5|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~0_combout\ = (\inst5|S\(0)) # (\inst5|S\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|S\(0),
	datad => \inst5|S\(1),
	combout => \inst5|Decoder0~0_combout\);

-- Location: LCCOMB_X42_Y1_N26
\inst5|Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~1_combout\ = (\inst5|S\(0) & !\inst5|S\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|S\(0),
	datad => \inst5|S\(1),
	combout => \inst5|Decoder0~1_combout\);

-- Location: LCCOMB_X42_Y1_N24
\inst5|Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~2_combout\ = (!\inst5|S\(0) & \inst5|S\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|S\(0),
	datad => \inst5|S\(1),
	combout => \inst5|Decoder0~2_combout\);

-- Location: LCCOMB_X42_Y1_N18
\inst5|Decoder0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|Decoder0~3_combout\ = (\inst5|S\(0) & \inst5|S\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|S\(0),
	datad => \inst5|S\(1),
	combout => \inst5|Decoder0~3_combout\);

-- Location: LCCOMB_X42_Y1_N12
\inst5|SegData[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|SegData[0]~0_combout\ = \inst5|S\(0) $ (!\inst5|S\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|S\(0),
	datad => \inst5|S\(1),
	combout => \inst5|SegData[0]~0_combout\);

ww_tx_c <= \tx_c~output_o\;

ww_txd <= \txd~output_o\;

ww_led(7) <= \led[7]~output_o\;

ww_led(6) <= \led[6]~output_o\;

ww_led(5) <= \led[5]~output_o\;

ww_led(4) <= \led[4]~output_o\;

ww_led(3) <= \led[3]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_led(1) <= \led[1]~output_o\;

ww_led(0) <= \led[0]~output_o\;

ww_rgb(2) <= \rgb[2]~output_o\;

ww_rgb(1) <= \rgb[1]~output_o\;

ww_rgb(0) <= \rgb[0]~output_o\;

ww_segcom1(3) <= \segcom1[3]~output_o\;

ww_segcom1(2) <= \segcom1[2]~output_o\;

ww_segcom1(1) <= \segcom1[1]~output_o\;

ww_segcom1(0) <= \segcom1[0]~output_o\;

ww_segcom2(3) <= \segcom2[3]~output_o\;

ww_segcom2(2) <= \segcom2[2]~output_o\;

ww_segcom2(1) <= \segcom2[1]~output_o\;

ww_segcom2(0) <= \segcom2[0]~output_o\;

ww_segdata1(7) <= \segdata1[7]~output_o\;

ww_segdata1(6) <= \segdata1[6]~output_o\;

ww_segdata1(5) <= \segdata1[5]~output_o\;

ww_segdata1(4) <= \segdata1[4]~output_o\;

ww_segdata1(3) <= \segdata1[3]~output_o\;

ww_segdata1(2) <= \segdata1[2]~output_o\;

ww_segdata1(1) <= \segdata1[1]~output_o\;

ww_segdata1(0) <= \segdata1[0]~output_o\;

ww_segdata2(7) <= \segdata2[7]~output_o\;

ww_segdata2(6) <= \segdata2[6]~output_o\;

ww_segdata2(5) <= \segdata2[5]~output_o\;

ww_segdata2(4) <= \segdata2[4]~output_o\;

ww_segdata2(3) <= \segdata2[3]~output_o\;

ww_segdata2(2) <= \segdata2[2]~output_o\;

ww_segdata2(1) <= \segdata2[1]~output_o\;

ww_segdata2(0) <= \segdata2[0]~output_o\;
END structure;


