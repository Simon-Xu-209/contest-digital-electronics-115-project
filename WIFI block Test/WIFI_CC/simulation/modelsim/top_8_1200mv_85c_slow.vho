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

-- DATE "07/21/2026 09:42:35"

-- 
-- Device: Altera EP3C16Q240C8 Package PQFP240
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
	key_c : IN std_logic_vector(3 DOWNTO 1);
	rx_c : IN std_logic;
	txd : OUT std_logic;
	key_r : OUT std_logic_vector(3 DOWNTO 1)
	);
END top;

-- Design Ports Information
-- tx_c	=>  Location: PIN_161,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txd	=>  Location: PIN_167,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_r[3]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_r[2]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_r[1]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_c	=>  Location: PIN_160,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ck	=>  Location: PIN_149,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res	=>  Location: PIN_145,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_c[3]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_c[2]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_c[1]	=>  Location: PIN_82,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_key_c : std_logic_vector(3 DOWNTO 1);
SIGNAL ww_rx_c : std_logic;
SIGNAL ww_txd : std_logic;
SIGNAL ww_key_r : std_logic_vector(3 DOWNTO 1);
SIGNAL \ck~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tx_c~output_o\ : std_logic;
SIGNAL \txd~output_o\ : std_logic;
SIGNAL \key_r[3]~output_o\ : std_logic;
SIGNAL \key_r[2]~output_o\ : std_logic;
SIGNAL \key_r[1]~output_o\ : std_logic;
SIGNAL \ck~input_o\ : std_logic;
SIGNAL \ck~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add17~0_combout\ : std_logic;
SIGNAL \res~input_o\ : std_logic;
SIGNAL \inst|uart_tx_u1|Equal3~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add17~1\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add17~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|cnt_baud~3_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add17~3\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add17~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add17~5\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add17~6_combout\ : std_logic;
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
SIGNAL \inst|uart_tx_u1|Equal3~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|stage_tx.IDLE~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|stage_tx.IDLE~q\ : std_logic;
SIGNAL \inst|uart_tx_u1|start_cnt~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|start_cnt~q\ : std_logic;
SIGNAL \inst|uart_tx_u1|cnt_bit[0]~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|cnt_bit[1]~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|cnt_bit[1]~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|cnt_bit[2]~3_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|always5~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Selector1~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|stage_tx.SEND_DATA~q\ : std_logic;
SIGNAL \inst|uart_tx_u1|always5~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|always0~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|enable~feeder_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Selector2~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|stage_tx.STOP~q\ : std_logic;
SIGNAL \inst|uart_tx_u1|always0~2_combout\ : std_logic;
SIGNAL \key_c[2]~input_o\ : std_logic;
SIGNAL \key_c[3]~input_o\ : std_logic;
SIGNAL \key_c[1]~input_o\ : std_logic;
SIGNAL \inst6|Equal0~0_combout\ : std_logic;
SIGNAL \inst6|bond~5_combout\ : std_logic;
SIGNAL \inst6|bond[0]~feeder_combout\ : std_logic;
SIGNAL \inst6|bond~4_combout\ : std_logic;
SIGNAL \inst6|bond~6_combout\ : std_logic;
SIGNAL \inst6|bond[1]~feeder_combout\ : std_logic;
SIGNAL \inst6|Mux1~0_combout\ : std_logic;
SIGNAL \inst6|Mux3~0_combout\ : std_logic;
SIGNAL \inst|Select_mode_u1|LED_select[2]~feeder_combout\ : std_logic;
SIGNAL \inst6|Mux2~2_combout\ : std_logic;
SIGNAL \inst6|Mux3~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[4]~21_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~50_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Send_addr[0]~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Send_addr[0]~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add7~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add3~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add1~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux7~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add5~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux7~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[0]~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~13_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|always0~3_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~1\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|always1~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Send_addr[1]~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[1]~3_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add1~1\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add1~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add5~1\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add5~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux6~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add7~1\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add7~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add3~1\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add3~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux6~3_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add4~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add0~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux6~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux6~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux6~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~3\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Send_addr[2]~3_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[2]~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add7~3\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add7~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux5~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add0~1\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add0~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add1~3\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add1~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux5~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add3~3\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add3~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add2~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux5~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux5~3_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add5~3\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add5~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add4~1\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add4~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux5~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux5~5_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~5\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~32_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Send_addr[3]~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[4]~22_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~49_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[4]~28_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add7~5\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add7~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add5~5\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add5~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add4~3\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add4~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[4]~27_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add3~5\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add3~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add2~1\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add2~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add1~5\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add1~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add0~3\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add0~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~33_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~34_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~35_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~36_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~37_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~7_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~23_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~7\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~8_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Send_addr[4]~5_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~24_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add7~7\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add7~8_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add4~5\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add4~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add5~7\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add5~8_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~29_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add3~7\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add3~8_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add0~5\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add0~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add1~7\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add1~8_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~25_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add2~3\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add2~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~26_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~30_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~31_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~3_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~8_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~9_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~118_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~119_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~125_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~126_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~120_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~121_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~83_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~122_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~123_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~124_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~86_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~87_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~97_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~93_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~95_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~94_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~96_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~98_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~91_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~88_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~89_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~90_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~92_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~99_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~100_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~101_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~102_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~104_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~108_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~105_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~106_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~107_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~109_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~114_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~110_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~111_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~112_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~113_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~115_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~116_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~117_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~103_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~127_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~128_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Equal4~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|always0~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Send_addr_w[0]~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|enable~q\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~12_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~9\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~10_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Send_addr[5]~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[5]~5_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add7~9\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add7~10_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add3~9\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add3~10_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~19_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add1~9\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add1~10_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add5~9\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add5~10_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~15_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add2~5\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add2~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~16_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add0~7\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add0~8_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add4~7\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add4~8_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~17_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~18_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~20_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~11\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~12_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Send_addr[6]~7_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[6]~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add4~9\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add4~10_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add6~8_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add2~7\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add2~8_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add0~9\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add0~10_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~40_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~41_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add7~11\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add7~12_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add5~11\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add5~12_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add1~11\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add1~12_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add3~11\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add3~12_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~38_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~39_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~42_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~13\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~14_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Send_addr[7]~8_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[7]~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add6~9_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add7~13\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add7~14_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~47_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add3~13\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add3~14_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add2~9\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add2~10_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~43_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add5~13\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add5~14_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add4~11\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add4~12_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~44_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add1~13\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add1~14_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add0~11\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add0~12_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~45_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~46_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~48_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~64_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~61_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~62_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~63_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~65_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~48_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~49_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~50_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~51_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~52_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~53_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~54_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~58_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~55_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~56_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~57_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~59_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~60_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~66_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~80_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~81_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~82_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~84_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~77_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~74_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~75_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~76_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~73_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~78_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~67_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~71_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~68_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~69_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~70_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~72_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~79_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~85_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~26_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~23_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~24_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~25_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~27_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~20_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~16_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~18_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~17_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~19_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~21_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~10_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~14_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~12_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~11_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~13_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~15_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~22_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~28_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~45_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~42_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~43_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~44_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~46_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~35_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~39_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~37_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~36_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~38_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~40_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~29_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~33_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~30_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~31_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~32_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~34_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~41_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~47_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Equal4~3_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Equal4~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|cnt_rom[0]~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|cnt_rom[0]~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|cnt_rom[1]~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add19~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|cnt_rom[2]~3_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add19~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|cnt_rom[3]~5_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|always0~5_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|SEND_END_cmd~q\ : std_logic;
SIGNAL \inst|uart_tx_u1|btn~feeder_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|btn~q\ : std_logic;
SIGNAL \inst|uart_tx_u1|SEND_DATA_en~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|SEND_DATA_en~q\ : std_logic;
SIGNAL \inst|uart_tx_u1|receive_ok_en~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|receive_ok_en~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[0]~9_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Equal1~1_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[6]~22\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[7]~23_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[7]~24\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[8]~25_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|stage_rx~9_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|stage_rx.STOP~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|rx_done~1_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|rx_done~q\ : std_logic;
SIGNAL \rx_c~input_o\ : std_logic;
SIGNAL \inst|uart_rx_u2|rx_reg0~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|rx_reg1~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|rx_reg2~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|rx_reg3~feeder_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|rx_reg3~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|R_receiving~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|R_receiving~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|bps_rx_clk_en~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|Equal1~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[4]~27_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[0]~10\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[1]~11_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[1]~12\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[2]~13_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[2]~14\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[3]~15_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[3]~16\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[4]~17_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[4]~18\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[5]~19_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[5]~20\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[6]~21_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Equal2~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Equal2~1_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_bit[1]~1_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Decoder0~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|stage_rx~11_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|stage_rx.START~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|stage_rx~10_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_bit[0]~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_bit[2]~2_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_bit[2]~3_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector2~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector2~1_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector6~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector6~1_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|rx_done~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|rxd[1]~feeder_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|rxd[7]~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector0~2_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector5~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector5~1_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector5~2_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|rxd[2]~feeder_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector1~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector1~1_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector1~2_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector7~1_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector7~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector7~2_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector2~2_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector2~3_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|rxd[5]~feeder_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector3~1_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector3~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector3~2_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector0~3_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector0~4_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector4~2_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector4~3_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector4~4_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|rxd[3]~feeder_combout\ : std_logic;
SIGNAL \inst|receiver_OK_u1|state~11_combout\ : std_logic;
SIGNAL \inst|receiver_OK_u1|state~14_combout\ : std_logic;
SIGNAL \inst|receiver_OK_u1|Selector0~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|RECEIVE_END~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|RECEIVE_END~q\ : std_logic;
SIGNAL \inst|receiver_OK_u1|state.000~q\ : std_logic;
SIGNAL \inst|receiver_OK_u1|state~16_combout\ : std_logic;
SIGNAL \inst|receiver_OK_u1|state.001~q\ : std_logic;
SIGNAL \inst|receiver_OK_u1|state~15_combout\ : std_logic;
SIGNAL \inst|receiver_OK_u1|state.010~q\ : std_logic;
SIGNAL \inst|receiver_OK_u1|state~12_combout\ : std_logic;
SIGNAL \inst|receiver_OK_u1|state~13_combout\ : std_logic;
SIGNAL \inst|receiver_OK_u1|state.011~q\ : std_logic;
SIGNAL \inst|receiver_OK_u1|OK~2_combout\ : std_logic;
SIGNAL \inst|receiver_OK_u1|OK~1_combout\ : std_logic;
SIGNAL \inst|receiver_OK_u1|OK~3_combout\ : std_logic;
SIGNAL \inst|receiver_OK_u1|OK~q\ : std_logic;
SIGNAL \inst|uart_tx_u1|always0~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[0]~14_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Selector0~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|stage_tx.START~q\ : std_logic;
SIGNAL \inst|uart_tx_u1|tx~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|tx~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux8~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux8~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|tx~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|tx~3_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|tx~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|tx~q\ : std_logic;
SIGNAL \inst6|krow[3]~0_combout\ : std_logic;
SIGNAL \inst6|krow[2]~1_combout\ : std_logic;
SIGNAL \inst6|Mux6~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|cnt_bit\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|uart_tx_u1|cnt_baud\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|uart_rx_u2|rxd\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|uart_tx_u1|cnt_rom\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|uart_tx_u1|addr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|uart_tx_u1|Send_addr_w\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|uart_rx_u2|rx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|uart_rx_u2|cnt_bit\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|uart_rx_u2|cnt_baud\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|Select_mode_u1|LED_select\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst6|krow\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \inst6|key\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst6|bond\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|uart_rx_u2|ALT_INV_R_receiving~q\ : std_logic;
SIGNAL \inst|uart_tx_u1|ALT_INV_always0~3_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|ALT_INV_tx~q\ : std_logic;

BEGIN

tx_c <= ww_tx_c;
ww_ck <= ck;
ww_res <= res;
ww_key_c <= key_c;
ww_rx_c <= rx_c;
txd <= ww_txd;
key_r <= ww_key_r;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ck~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ck~input_o\);
\inst|uart_rx_u2|ALT_INV_R_receiving~q\ <= NOT \inst|uart_rx_u2|R_receiving~q\;
\inst|uart_tx_u1|ALT_INV_always0~3_combout\ <= NOT \inst|uart_tx_u1|always0~3_combout\;
\inst|uart_tx_u1|ALT_INV_tx~q\ <= NOT \inst|uart_tx_u1|tx~q\;

-- Location: IOOBUF_X41_Y18_N2
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

-- Location: IOOBUF_X41_Y23_N16
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

-- Location: IOOBUF_X14_Y0_N23
\key_r[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|krow\(3),
	devoe => ww_devoe,
	o => \key_r[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\key_r[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|krow\(2),
	devoe => ww_devoe,
	o => \key_r[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N30
\key_r[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|krow\(1),
	devoe => ww_devoe,
	o => \key_r[1]~output_o\);

-- Location: IOIBUF_X41_Y15_N22
\ck~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ck,
	o => \ck~input_o\);

-- Location: CLKCTRL_G8
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

-- Location: LCCOMB_X32_Y17_N10
\inst|uart_tx_u1|Add17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add17~0_combout\ = \inst|uart_tx_u1|cnt_baud\(0) $ (VCC)
-- \inst|uart_tx_u1|Add17~1\ = CARRY(\inst|uart_tx_u1|cnt_baud\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_baud\(0),
	datad => VCC,
	combout => \inst|uart_tx_u1|Add17~0_combout\,
	cout => \inst|uart_tx_u1|Add17~1\);

-- Location: IOIBUF_X41_Y13_N8
\res~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_res,
	o => \res~input_o\);

-- Location: FF_X32_Y17_N11
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

-- Location: LCCOMB_X32_Y17_N6
\inst|uart_tx_u1|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Equal3~1_combout\ = ((\inst|uart_tx_u1|cnt_baud\(3)) # ((\inst|uart_tx_u1|cnt_baud\(2)) # (\inst|uart_tx_u1|cnt_baud\(1)))) # (!\inst|uart_tx_u1|cnt_baud\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_baud\(4),
	datab => \inst|uart_tx_u1|cnt_baud\(3),
	datac => \inst|uart_tx_u1|cnt_baud\(2),
	datad => \inst|uart_tx_u1|cnt_baud\(1),
	combout => \inst|uart_tx_u1|Equal3~1_combout\);

-- Location: LCCOMB_X32_Y17_N12
\inst|uart_tx_u1|Add17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add17~2_combout\ = (\inst|uart_tx_u1|cnt_baud\(1) & (!\inst|uart_tx_u1|Add17~1\)) # (!\inst|uart_tx_u1|cnt_baud\(1) & ((\inst|uart_tx_u1|Add17~1\) # (GND)))
-- \inst|uart_tx_u1|Add17~3\ = CARRY((!\inst|uart_tx_u1|Add17~1\) # (!\inst|uart_tx_u1|cnt_baud\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|cnt_baud\(1),
	datad => VCC,
	cin => \inst|uart_tx_u1|Add17~1\,
	combout => \inst|uart_tx_u1|Add17~2_combout\,
	cout => \inst|uart_tx_u1|Add17~3\);

-- Location: LCCOMB_X32_Y17_N0
\inst|uart_tx_u1|cnt_baud~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_baud~3_combout\ = (\inst|uart_tx_u1|Add17~2_combout\ & ((\inst|uart_tx_u1|Equal3~1_combout\) # ((\inst|uart_tx_u1|Equal3~0_combout\) # (!\inst|uart_tx_u1|cnt_baud\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Equal3~1_combout\,
	datab => \inst|uart_tx_u1|Equal3~0_combout\,
	datac => \inst|uart_tx_u1|Add17~2_combout\,
	datad => \inst|uart_tx_u1|cnt_baud\(0),
	combout => \inst|uart_tx_u1|cnt_baud~3_combout\);

-- Location: FF_X32_Y17_N1
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

-- Location: LCCOMB_X32_Y17_N14
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

-- Location: FF_X32_Y17_N15
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

-- Location: LCCOMB_X32_Y17_N16
\inst|uart_tx_u1|Add17~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add17~6_combout\ = (\inst|uart_tx_u1|cnt_baud\(3) & (!\inst|uart_tx_u1|Add17~5\)) # (!\inst|uart_tx_u1|cnt_baud\(3) & ((\inst|uart_tx_u1|Add17~5\) # (GND)))
-- \inst|uart_tx_u1|Add17~7\ = CARRY((!\inst|uart_tx_u1|Add17~5\) # (!\inst|uart_tx_u1|cnt_baud\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|cnt_baud\(3),
	datad => VCC,
	cin => \inst|uart_tx_u1|Add17~5\,
	combout => \inst|uart_tx_u1|Add17~6_combout\,
	cout => \inst|uart_tx_u1|Add17~7\);

-- Location: FF_X32_Y17_N17
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

-- Location: LCCOMB_X32_Y17_N18
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

-- Location: LCCOMB_X32_Y17_N8
\inst|uart_tx_u1|cnt_baud~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_baud~4_combout\ = (\inst|uart_tx_u1|Add17~8_combout\ & (((\inst|uart_tx_u1|Equal3~0_combout\) # (\inst|uart_tx_u1|Equal3~1_combout\)) # (!\inst|uart_tx_u1|cnt_baud\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_baud\(0),
	datab => \inst|uart_tx_u1|Equal3~0_combout\,
	datac => \inst|uart_tx_u1|Add17~8_combout\,
	datad => \inst|uart_tx_u1|Equal3~1_combout\,
	combout => \inst|uart_tx_u1|cnt_baud~4_combout\);

-- Location: FF_X32_Y17_N9
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

-- Location: LCCOMB_X32_Y17_N20
\inst|uart_tx_u1|Add17~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add17~10_combout\ = (\inst|uart_tx_u1|cnt_baud\(5) & (!\inst|uart_tx_u1|Add17~9\)) # (!\inst|uart_tx_u1|cnt_baud\(5) & ((\inst|uart_tx_u1|Add17~9\) # (GND)))
-- \inst|uart_tx_u1|Add17~11\ = CARRY((!\inst|uart_tx_u1|Add17~9\) # (!\inst|uart_tx_u1|cnt_baud\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|cnt_baud\(5),
	datad => VCC,
	cin => \inst|uart_tx_u1|Add17~9\,
	combout => \inst|uart_tx_u1|Add17~10_combout\,
	cout => \inst|uart_tx_u1|Add17~11\);

-- Location: LCCOMB_X32_Y17_N4
\inst|uart_tx_u1|cnt_baud~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_baud~2_combout\ = (\inst|uart_tx_u1|Add17~10_combout\ & (((\inst|uart_tx_u1|Equal3~0_combout\) # (\inst|uart_tx_u1|Equal3~1_combout\)) # (!\inst|uart_tx_u1|cnt_baud\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_baud\(0),
	datab => \inst|uart_tx_u1|Equal3~0_combout\,
	datac => \inst|uart_tx_u1|Add17~10_combout\,
	datad => \inst|uart_tx_u1|Equal3~1_combout\,
	combout => \inst|uart_tx_u1|cnt_baud~2_combout\);

-- Location: FF_X32_Y17_N5
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

-- Location: LCCOMB_X32_Y17_N22
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

-- Location: FF_X32_Y17_N23
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

-- Location: LCCOMB_X32_Y17_N24
\inst|uart_tx_u1|Add17~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add17~14_combout\ = (\inst|uart_tx_u1|cnt_baud\(7) & (!\inst|uart_tx_u1|Add17~13\)) # (!\inst|uart_tx_u1|cnt_baud\(7) & ((\inst|uart_tx_u1|Add17~13\) # (GND)))
-- \inst|uart_tx_u1|Add17~15\ = CARRY((!\inst|uart_tx_u1|Add17~13\) # (!\inst|uart_tx_u1|cnt_baud\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_baud\(7),
	datad => VCC,
	cin => \inst|uart_tx_u1|Add17~13\,
	combout => \inst|uart_tx_u1|Add17~14_combout\,
	cout => \inst|uart_tx_u1|Add17~15\);

-- Location: LCCOMB_X32_Y17_N30
\inst|uart_tx_u1|cnt_baud~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_baud~1_combout\ = (\inst|uart_tx_u1|Add17~14_combout\ & (((\inst|uart_tx_u1|Equal3~0_combout\) # (\inst|uart_tx_u1|Equal3~1_combout\)) # (!\inst|uart_tx_u1|cnt_baud\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_baud\(0),
	datab => \inst|uart_tx_u1|Equal3~0_combout\,
	datac => \inst|uart_tx_u1|Add17~14_combout\,
	datad => \inst|uart_tx_u1|Equal3~1_combout\,
	combout => \inst|uart_tx_u1|cnt_baud~1_combout\);

-- Location: FF_X32_Y17_N31
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

-- Location: LCCOMB_X32_Y17_N26
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

-- Location: LCCOMB_X32_Y17_N28
\inst|uart_tx_u1|cnt_baud~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_baud~0_combout\ = (\inst|uart_tx_u1|Add17~16_combout\ & ((\inst|uart_tx_u1|Equal3~1_combout\) # ((\inst|uart_tx_u1|Equal3~0_combout\) # (!\inst|uart_tx_u1|cnt_baud\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Equal3~1_combout\,
	datab => \inst|uart_tx_u1|Equal3~0_combout\,
	datac => \inst|uart_tx_u1|Add17~16_combout\,
	datad => \inst|uart_tx_u1|cnt_baud\(0),
	combout => \inst|uart_tx_u1|cnt_baud~0_combout\);

-- Location: FF_X32_Y17_N29
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

-- Location: LCCOMB_X32_Y17_N2
\inst|uart_tx_u1|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Equal3~0_combout\ = (\inst|uart_tx_u1|cnt_baud\(6)) # (((!\inst|uart_tx_u1|cnt_baud\(8)) # (!\inst|uart_tx_u1|cnt_baud\(7))) # (!\inst|uart_tx_u1|cnt_baud\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_baud\(6),
	datab => \inst|uart_tx_u1|cnt_baud\(5),
	datac => \inst|uart_tx_u1|cnt_baud\(7),
	datad => \inst|uart_tx_u1|cnt_baud\(8),
	combout => \inst|uart_tx_u1|Equal3~0_combout\);

-- Location: LCCOMB_X33_Y17_N16
\inst|uart_tx_u1|Equal3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Equal3~2_combout\ = (\inst|uart_tx_u1|Equal3~0_combout\) # ((\inst|uart_tx_u1|Equal3~1_combout\) # (!\inst|uart_tx_u1|cnt_baud\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Equal3~0_combout\,
	datac => \inst|uart_tx_u1|Equal3~1_combout\,
	datad => \inst|uart_tx_u1|cnt_baud\(0),
	combout => \inst|uart_tx_u1|Equal3~2_combout\);

-- Location: LCCOMB_X33_Y17_N12
\inst|uart_tx_u1|stage_tx.IDLE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|stage_tx.IDLE~0_combout\ = (\inst|uart_tx_u1|stage_tx.IDLE~q\) # ((!\inst|uart_tx_u1|Equal3~0_combout\ & (!\inst|uart_tx_u1|Equal3~1_combout\ & \inst|uart_tx_u1|cnt_baud\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Equal3~0_combout\,
	datab => \inst|uart_tx_u1|Equal3~1_combout\,
	datac => \inst|uart_tx_u1|stage_tx.IDLE~q\,
	datad => \inst|uart_tx_u1|cnt_baud\(0),
	combout => \inst|uart_tx_u1|stage_tx.IDLE~0_combout\);

-- Location: FF_X33_Y17_N13
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

-- Location: LCCOMB_X30_Y17_N12
\inst|uart_tx_u1|start_cnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|start_cnt~0_combout\ = (\inst|uart_tx_u1|stage_tx.SEND_DATA~q\ & ((!\inst|uart_tx_u1|always5~0_combout\))) # (!\inst|uart_tx_u1|stage_tx.SEND_DATA~q\ & (\inst|uart_tx_u1|start_cnt~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|stage_tx.SEND_DATA~q\,
	datac => \inst|uart_tx_u1|start_cnt~q\,
	datad => \inst|uart_tx_u1|always5~0_combout\,
	combout => \inst|uart_tx_u1|start_cnt~0_combout\);

-- Location: FF_X30_Y17_N13
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

-- Location: LCCOMB_X30_Y17_N8
\inst|uart_tx_u1|cnt_bit[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_bit[0]~2_combout\ = \inst|uart_tx_u1|cnt_bit\(0) $ (((\inst|uart_tx_u1|start_cnt~q\ & (\inst|uart_tx_u1|stage_tx.SEND_DATA~q\ & !\inst|uart_tx_u1|Equal3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|start_cnt~q\,
	datab => \inst|uart_tx_u1|stage_tx.SEND_DATA~q\,
	datac => \inst|uart_tx_u1|cnt_bit\(0),
	datad => \inst|uart_tx_u1|Equal3~2_combout\,
	combout => \inst|uart_tx_u1|cnt_bit[0]~2_combout\);

-- Location: FF_X30_Y17_N9
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

-- Location: LCCOMB_X30_Y17_N2
\inst|uart_tx_u1|cnt_bit[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_bit[1]~0_combout\ = (\inst|uart_tx_u1|start_cnt~q\ & (\inst|uart_tx_u1|stage_tx.SEND_DATA~q\ & (\inst|uart_tx_u1|cnt_bit\(0) & !\inst|uart_tx_u1|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|start_cnt~q\,
	datab => \inst|uart_tx_u1|stage_tx.SEND_DATA~q\,
	datac => \inst|uart_tx_u1|cnt_bit\(0),
	datad => \inst|uart_tx_u1|Equal3~2_combout\,
	combout => \inst|uart_tx_u1|cnt_bit[1]~0_combout\);

-- Location: LCCOMB_X30_Y17_N18
\inst|uart_tx_u1|cnt_bit[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_bit[1]~1_combout\ = \inst|uart_tx_u1|cnt_bit\(1) $ (\inst|uart_tx_u1|cnt_bit[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|uart_tx_u1|cnt_bit\(1),
	datad => \inst|uart_tx_u1|cnt_bit[1]~0_combout\,
	combout => \inst|uart_tx_u1|cnt_bit[1]~1_combout\);

-- Location: FF_X30_Y17_N19
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

-- Location: LCCOMB_X30_Y17_N22
\inst|uart_tx_u1|cnt_bit[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_bit[2]~3_combout\ = \inst|uart_tx_u1|cnt_bit\(2) $ (((\inst|uart_tx_u1|cnt_bit\(1) & \inst|uart_tx_u1|cnt_bit[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|cnt_bit\(1),
	datac => \inst|uart_tx_u1|cnt_bit\(2),
	datad => \inst|uart_tx_u1|cnt_bit[1]~0_combout\,
	combout => \inst|uart_tx_u1|cnt_bit[2]~3_combout\);

-- Location: FF_X30_Y17_N23
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

-- Location: LCCOMB_X30_Y17_N16
\inst|uart_tx_u1|always5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|always5~0_combout\ = (\inst|uart_tx_u1|cnt_bit\(2) & (\inst|uart_tx_u1|cnt_bit\(1) & (\inst|uart_tx_u1|cnt_bit\(0) & !\inst|uart_tx_u1|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_bit\(2),
	datab => \inst|uart_tx_u1|cnt_bit\(1),
	datac => \inst|uart_tx_u1|cnt_bit\(0),
	datad => \inst|uart_tx_u1|Equal3~2_combout\,
	combout => \inst|uart_tx_u1|always5~0_combout\);

-- Location: LCCOMB_X30_Y17_N14
\inst|uart_tx_u1|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Selector1~0_combout\ = (\inst|uart_tx_u1|stage_tx.START~q\ & (((!\inst|uart_tx_u1|always5~0_combout\ & \inst|uart_tx_u1|stage_tx.SEND_DATA~q\)) # (!\inst|uart_tx_u1|Equal3~2_combout\))) # (!\inst|uart_tx_u1|stage_tx.START~q\ & 
-- (!\inst|uart_tx_u1|always5~0_combout\ & (\inst|uart_tx_u1|stage_tx.SEND_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|stage_tx.START~q\,
	datab => \inst|uart_tx_u1|always5~0_combout\,
	datac => \inst|uart_tx_u1|stage_tx.SEND_DATA~q\,
	datad => \inst|uart_tx_u1|Equal3~2_combout\,
	combout => \inst|uart_tx_u1|Selector1~0_combout\);

-- Location: FF_X30_Y17_N15
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

-- Location: LCCOMB_X30_Y17_N6
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

-- Location: LCCOMB_X29_Y17_N26
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

-- Location: LCCOMB_X29_Y16_N0
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

-- Location: LCCOMB_X29_Y17_N8
\inst|uart_tx_u1|Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Selector2~2_combout\ = (\inst|uart_tx_u1|stage_tx.SEND_DATA~q\ & ((\inst|uart_tx_u1|always5~0_combout\) # ((!\inst|uart_tx_u1|always0~0_combout\ & \inst|uart_tx_u1|stage_tx.STOP~q\)))) # (!\inst|uart_tx_u1|stage_tx.SEND_DATA~q\ & 
-- (!\inst|uart_tx_u1|always0~0_combout\ & (\inst|uart_tx_u1|stage_tx.STOP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|stage_tx.SEND_DATA~q\,
	datab => \inst|uart_tx_u1|always0~0_combout\,
	datac => \inst|uart_tx_u1|stage_tx.STOP~q\,
	datad => \inst|uart_tx_u1|always5~0_combout\,
	combout => \inst|uart_tx_u1|Selector2~2_combout\);

-- Location: FF_X29_Y17_N9
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

-- Location: LCCOMB_X29_Y17_N12
\inst|uart_tx_u1|always0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|always0~2_combout\ = (\inst|uart_tx_u1|cnt_rom\(1) & (!\inst|uart_tx_u1|cnt_rom\(3) & (\inst|uart_tx_u1|cnt_rom\(2) & !\inst|uart_tx_u1|cnt_rom\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_rom\(1),
	datab => \inst|uart_tx_u1|cnt_rom\(3),
	datac => \inst|uart_tx_u1|cnt_rom\(2),
	datad => \inst|uart_tx_u1|cnt_rom\(0),
	combout => \inst|uart_tx_u1|always0~2_combout\);

-- Location: IOIBUF_X19_Y0_N29
\key_c[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_c(2),
	o => \key_c[2]~input_o\);

-- Location: IOIBUF_X19_Y0_N15
\key_c[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_c(3),
	o => \key_c[3]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\key_c[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_c(1),
	o => \key_c[1]~input_o\);

-- Location: LCCOMB_X24_Y13_N4
\inst6|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~0_combout\ = (\key_c[1]~input_o\ & \key_c[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key_c[1]~input_o\,
	datad => \key_c[2]~input_o\,
	combout => \inst6|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y13_N20
\inst6|bond~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|bond~5_combout\ = (!\inst6|bond\(1) & (\inst6|bond\(0) $ (((\key_c[3]~input_o\ & \inst6|Equal0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_c[3]~input_o\,
	datab => \inst6|bond\(1),
	datac => \inst6|Equal0~0_combout\,
	datad => \inst6|bond\(0),
	combout => \inst6|bond~5_combout\);

-- Location: LCCOMB_X24_Y13_N2
\inst6|bond[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|bond[0]~feeder_combout\ = \inst6|bond~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|bond~5_combout\,
	combout => \inst6|bond[0]~feeder_combout\);

-- Location: FF_X24_Y13_N3
\inst6|bond[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst6|bond[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|bond\(0));

-- Location: LCCOMB_X24_Y13_N6
\inst6|bond~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|bond~4_combout\ = (!\inst6|bond\(1) & \inst6|bond\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|bond\(1),
	datad => \inst6|bond\(0),
	combout => \inst6|bond~4_combout\);

-- Location: LCCOMB_X24_Y13_N30
\inst6|bond~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|bond~6_combout\ = (\key_c[2]~input_o\ & (\key_c[3]~input_o\ & (\key_c[1]~input_o\ & \inst6|bond~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_c[2]~input_o\,
	datab => \key_c[3]~input_o\,
	datac => \key_c[1]~input_o\,
	datad => \inst6|bond~4_combout\,
	combout => \inst6|bond~6_combout\);

-- Location: LCCOMB_X24_Y13_N28
\inst6|bond[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|bond[1]~feeder_combout\ = \inst6|bond~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|bond~6_combout\,
	combout => \inst6|bond[1]~feeder_combout\);

-- Location: FF_X24_Y13_N29
\inst6|bond[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst6|bond[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|bond\(1));

-- Location: LCCOMB_X24_Y13_N18
\inst6|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Mux1~0_combout\ = ((!\key_c[2]~input_o\ & (!\inst6|bond\(1) & \inst6|bond\(0)))) # (!\key_c[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_c[2]~input_o\,
	datab => \inst6|bond\(1),
	datac => \key_c[3]~input_o\,
	datad => \inst6|bond\(0),
	combout => \inst6|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y13_N16
\inst6|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Mux3~0_combout\ = (\key_c[3]~input_o\ & (\key_c[1]~input_o\ $ (\key_c[2]~input_o\))) # (!\key_c[3]~input_o\ & (\key_c[1]~input_o\ & \key_c[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key_c[3]~input_o\,
	datac => \key_c[1]~input_o\,
	datad => \key_c[2]~input_o\,
	combout => \inst6|Mux3~0_combout\);

-- Location: FF_X24_Y13_N19
\inst6|key[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst6|Mux1~0_combout\,
	ena => \inst6|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|key\(2));

-- Location: LCCOMB_X24_Y13_N26
\inst|Select_mode_u1|LED_select[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Select_mode_u1|LED_select[2]~feeder_combout\ = \inst6|key\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|key\(2),
	combout => \inst|Select_mode_u1|LED_select[2]~feeder_combout\);

-- Location: FF_X24_Y13_N27
\inst|Select_mode_u1|LED_select[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|Select_mode_u1|LED_select[2]~feeder_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Select_mode_u1|LED_select\(2));

-- Location: LCCOMB_X24_Y13_N12
\inst6|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Mux2~2_combout\ = ((\key_c[2]~input_o\ & (\key_c[1]~input_o\ & \inst6|bond~4_combout\)) # (!\key_c[2]~input_o\ & ((!\inst6|bond~4_combout\)))) # (!\key_c[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_c[2]~input_o\,
	datab => \key_c[3]~input_o\,
	datac => \key_c[1]~input_o\,
	datad => \inst6|bond~4_combout\,
	combout => \inst6|Mux2~2_combout\);

-- Location: FF_X24_Y13_N13
\inst6|key[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst6|Mux2~2_combout\,
	ena => \inst6|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|key\(1));

-- Location: FF_X27_Y13_N27
\inst|Select_mode_u1|LED_select[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \inst6|key\(1),
	clrn => \res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Select_mode_u1|LED_select\(1));

-- Location: LCCOMB_X24_Y13_N22
\inst6|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Mux3~1_combout\ = \inst6|bond~5_combout\ $ (((!\key_c[2]~input_o\ & \key_c[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_c[2]~input_o\,
	datab => \key_c[3]~input_o\,
	datad => \inst6|bond~5_combout\,
	combout => \inst6|Mux3~1_combout\);

-- Location: FF_X24_Y13_N23
\inst6|key[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst6|Mux3~1_combout\,
	ena => \inst6|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|key\(0));

-- Location: FF_X24_Y13_N25
\inst|Select_mode_u1|LED_select[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \inst6|key\(0),
	clrn => \res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Select_mode_u1|LED_select\(0));

-- Location: LCCOMB_X26_Y13_N0
\inst|uart_tx_u1|addr[4]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr[4]~21_combout\ = (\inst|Select_mode_u1|LED_select\(2) & (\inst|Select_mode_u1|LED_select\(1) & !\inst|Select_mode_u1|LED_select\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Select_mode_u1|LED_select\(2),
	datac => \inst|Select_mode_u1|LED_select\(1),
	datad => \inst|Select_mode_u1|LED_select\(0),
	combout => \inst|uart_tx_u1|addr[4]~21_combout\);

-- Location: LCCOMB_X26_Y13_N4
\inst|uart_tx_u1|addr~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~50_combout\ = (!\inst|uart_tx_u1|Equal4~3_combout\ & (\inst|uart_tx_u1|always0~2_combout\ & (!\inst|uart_tx_u1|Equal4~2_combout\ & !\inst|uart_tx_u1|addr[4]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Equal4~3_combout\,
	datab => \inst|uart_tx_u1|always0~2_combout\,
	datac => \inst|uart_tx_u1|Equal4~2_combout\,
	datad => \inst|uart_tx_u1|addr[4]~21_combout\,
	combout => \inst|uart_tx_u1|addr~50_combout\);

-- Location: LCCOMB_X26_Y17_N0
\inst|uart_tx_u1|Add16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add16~0_combout\ = \inst|uart_tx_u1|addr\(0) $ (VCC)
-- \inst|uart_tx_u1|Add16~1\ = CARRY(\inst|uart_tx_u1|addr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(0),
	datad => VCC,
	combout => \inst|uart_tx_u1|Add16~0_combout\,
	cout => \inst|uart_tx_u1|Add16~1\);

-- Location: FF_X27_Y17_N1
\inst|uart_tx_u1|Send_addr_w[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|Send_addr[0]~1_combout\,
	clrn => \res~input_o\,
	ena => \inst|uart_tx_u1|Send_addr_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|Send_addr_w\(0));

-- Location: LCCOMB_X28_Y17_N4
\inst|uart_tx_u1|Send_addr[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Send_addr[0]~0_combout\ = (\inst|uart_tx_u1|enable~q\ & (((\inst|uart_tx_u1|Send_addr_w\(0))))) # (!\inst|uart_tx_u1|enable~q\ & ((\inst|uart_tx_u1|always0~1_combout\ & (\inst|uart_tx_u1|Add16~0_combout\)) # 
-- (!\inst|uart_tx_u1|always0~1_combout\ & ((\inst|uart_tx_u1|Send_addr_w\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Add16~0_combout\,
	datab => \inst|uart_tx_u1|enable~q\,
	datac => \inst|uart_tx_u1|Send_addr_w\(0),
	datad => \inst|uart_tx_u1|always0~1_combout\,
	combout => \inst|uart_tx_u1|Send_addr[0]~0_combout\);

-- Location: LCCOMB_X27_Y17_N0
\inst|uart_tx_u1|Send_addr[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Send_addr[0]~1_combout\ = (\inst|uart_tx_u1|Equal4~2_combout\ & (((\inst|uart_tx_u1|Send_addr_w\(0))))) # (!\inst|uart_tx_u1|Equal4~2_combout\ & ((\inst|uart_tx_u1|Equal4~3_combout\ & ((\inst|uart_tx_u1|Send_addr_w\(0)))) # 
-- (!\inst|uart_tx_u1|Equal4~3_combout\ & (\inst|uart_tx_u1|Send_addr[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[0]~0_combout\,
	datab => \inst|uart_tx_u1|Equal4~2_combout\,
	datac => \inst|uart_tx_u1|Send_addr_w\(0),
	datad => \inst|uart_tx_u1|Equal4~3_combout\,
	combout => \inst|uart_tx_u1|Send_addr[0]~1_combout\);

-- Location: LCCOMB_X27_Y16_N10
\inst|uart_tx_u1|Add7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add7~0_combout\ = \inst|uart_tx_u1|Send_addr[0]~1_combout\ $ (VCC)
-- \inst|uart_tx_u1|Add7~1\ = CARRY(\inst|uart_tx_u1|Send_addr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[0]~1_combout\,
	datad => VCC,
	combout => \inst|uart_tx_u1|Add7~0_combout\,
	cout => \inst|uart_tx_u1|Add7~1\);

-- Location: LCCOMB_X27_Y13_N8
\inst|uart_tx_u1|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add3~0_combout\ = \inst|uart_tx_u1|Send_addr[0]~1_combout\ $ (VCC)
-- \inst|uart_tx_u1|Add3~1\ = CARRY(\inst|uart_tx_u1|Send_addr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[0]~1_combout\,
	datad => VCC,
	combout => \inst|uart_tx_u1|Add3~0_combout\,
	cout => \inst|uart_tx_u1|Add3~1\);

-- Location: LCCOMB_X26_Y13_N14
\inst|uart_tx_u1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add1~0_combout\ = \inst|uart_tx_u1|Send_addr[0]~1_combout\ $ (VCC)
-- \inst|uart_tx_u1|Add1~1\ = CARRY(\inst|uart_tx_u1|Send_addr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[0]~1_combout\,
	datad => VCC,
	combout => \inst|uart_tx_u1|Add1~0_combout\,
	cout => \inst|uart_tx_u1|Add1~1\);

-- Location: LCCOMB_X28_Y16_N30
\inst|uart_tx_u1|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux7~0_combout\ = (\inst|Select_mode_u1|LED_select\(1) & ((\inst|Select_mode_u1|LED_select\(2)) # ((\inst|uart_tx_u1|Add3~0_combout\)))) # (!\inst|Select_mode_u1|LED_select\(1) & (!\inst|Select_mode_u1|LED_select\(2) & 
-- ((\inst|uart_tx_u1|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(1),
	datab => \inst|Select_mode_u1|LED_select\(2),
	datac => \inst|uart_tx_u1|Add3~0_combout\,
	datad => \inst|uart_tx_u1|Add1~0_combout\,
	combout => \inst|uart_tx_u1|Mux7~0_combout\);

-- Location: LCCOMB_X26_Y15_N4
\inst|uart_tx_u1|Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add5~0_combout\ = \inst|uart_tx_u1|Send_addr[0]~1_combout\ $ (VCC)
-- \inst|uart_tx_u1|Add5~1\ = CARRY(\inst|uart_tx_u1|Send_addr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[0]~1_combout\,
	datad => VCC,
	combout => \inst|uart_tx_u1|Add5~0_combout\,
	cout => \inst|uart_tx_u1|Add5~1\);

-- Location: LCCOMB_X28_Y16_N20
\inst|uart_tx_u1|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux7~1_combout\ = (\inst|Select_mode_u1|LED_select\(2) & ((\inst|uart_tx_u1|Mux7~0_combout\ & (\inst|uart_tx_u1|Add7~0_combout\)) # (!\inst|uart_tx_u1|Mux7~0_combout\ & ((\inst|uart_tx_u1|Add5~0_combout\))))) # 
-- (!\inst|Select_mode_u1|LED_select\(2) & (((\inst|uart_tx_u1|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Add7~0_combout\,
	datab => \inst|Select_mode_u1|LED_select\(2),
	datac => \inst|uart_tx_u1|Mux7~0_combout\,
	datad => \inst|uart_tx_u1|Add5~0_combout\,
	combout => \inst|uart_tx_u1|Mux7~1_combout\);

-- Location: LCCOMB_X28_Y16_N4
\inst|uart_tx_u1|addr[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr[0]~2_combout\ = (\inst|Select_mode_u1|LED_select\(0) & ((\inst|uart_tx_u1|Mux7~1_combout\))) # (!\inst|Select_mode_u1|LED_select\(0) & (\inst|uart_tx_u1|Send_addr[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[0]~1_combout\,
	datab => \inst|Select_mode_u1|LED_select\(0),
	datad => \inst|uart_tx_u1|Mux7~1_combout\,
	combout => \inst|uart_tx_u1|addr[0]~2_combout\);

-- Location: LCCOMB_X28_Y16_N26
\inst|uart_tx_u1|addr~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~13_combout\ = (\inst|uart_tx_u1|addr~12_combout\ & (\inst|uart_tx_u1|Send_addr_w\(0))) # (!\inst|uart_tx_u1|addr~12_combout\ & ((\inst|uart_tx_u1|Add16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr_w\(0),
	datac => \inst|uart_tx_u1|Add16~0_combout\,
	datad => \inst|uart_tx_u1|addr~12_combout\,
	combout => \inst|uart_tx_u1|addr~13_combout\);

-- Location: LCCOMB_X26_Y14_N20
\inst|uart_tx_u1|always0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|always0~3_combout\ = (\inst|uart_tx_u1|always0~2_combout\ & (!\inst|uart_tx_u1|Equal4~3_combout\ & !\inst|uart_tx_u1|Equal4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|always0~2_combout\,
	datac => \inst|uart_tx_u1|Equal4~3_combout\,
	datad => \inst|uart_tx_u1|Equal4~2_combout\,
	combout => \inst|uart_tx_u1|always0~3_combout\);

-- Location: FF_X28_Y16_N5
\inst|uart_tx_u1|addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|addr[0]~2_combout\,
	asdata => \inst|uart_tx_u1|addr~13_combout\,
	clrn => \res~input_o\,
	sload => \inst|uart_tx_u1|ALT_INV_always0~3_combout\,
	ena => \inst|uart_tx_u1|addr[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|addr\(0));

-- Location: LCCOMB_X26_Y17_N2
\inst|uart_tx_u1|Add16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add16~2_combout\ = (\inst|uart_tx_u1|addr\(1) & (!\inst|uart_tx_u1|Add16~1\)) # (!\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|Add16~1\) # (GND)))
-- \inst|uart_tx_u1|Add16~3\ = CARRY((!\inst|uart_tx_u1|Add16~1\) # (!\inst|uart_tx_u1|addr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|addr\(1),
	datad => VCC,
	cin => \inst|uart_tx_u1|Add16~1\,
	combout => \inst|uart_tx_u1|Add16~2_combout\,
	cout => \inst|uart_tx_u1|Add16~3\);

-- Location: LCCOMB_X27_Y17_N16
\inst|uart_tx_u1|always1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|always1~0_combout\ = (\inst|uart_tx_u1|always0~1_combout\ & (!\inst|uart_tx_u1|enable~q\ & (!\inst|uart_tx_u1|Equal4~2_combout\ & !\inst|uart_tx_u1|Equal4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|always0~1_combout\,
	datab => \inst|uart_tx_u1|enable~q\,
	datac => \inst|uart_tx_u1|Equal4~2_combout\,
	datad => \inst|uart_tx_u1|Equal4~3_combout\,
	combout => \inst|uart_tx_u1|always1~0_combout\);

-- Location: LCCOMB_X27_Y17_N30
\inst|uart_tx_u1|Send_addr[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Send_addr[1]~2_combout\ = (\inst|uart_tx_u1|always1~0_combout\ & (\inst|uart_tx_u1|Add16~2_combout\)) # (!\inst|uart_tx_u1|always1~0_combout\ & ((\inst|uart_tx_u1|Send_addr_w\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Add16~2_combout\,
	datac => \inst|uart_tx_u1|Send_addr_w\(1),
	datad => \inst|uart_tx_u1|always1~0_combout\,
	combout => \inst|uart_tx_u1|Send_addr[1]~2_combout\);

-- Location: FF_X27_Y17_N31
\inst|uart_tx_u1|Send_addr_w[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|Send_addr[1]~2_combout\,
	clrn => \res~input_o\,
	ena => \inst|uart_tx_u1|Send_addr_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|Send_addr_w\(1));

-- Location: LCCOMB_X27_Y15_N0
\inst|uart_tx_u1|addr[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr[1]~3_combout\ = (\inst|uart_tx_u1|addr~12_combout\ & (\inst|uart_tx_u1|Send_addr_w\(1))) # (!\inst|uart_tx_u1|addr~12_combout\ & ((\inst|uart_tx_u1|Add16~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr_w\(1),
	datab => \inst|uart_tx_u1|Add16~2_combout\,
	datad => \inst|uart_tx_u1|addr~12_combout\,
	combout => \inst|uart_tx_u1|addr[1]~3_combout\);

-- Location: LCCOMB_X26_Y13_N16
\inst|uart_tx_u1|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add1~2_combout\ = (\inst|uart_tx_u1|Send_addr[1]~2_combout\ & (!\inst|uart_tx_u1|Add1~1\)) # (!\inst|uart_tx_u1|Send_addr[1]~2_combout\ & ((\inst|uart_tx_u1|Add1~1\) # (GND)))
-- \inst|uart_tx_u1|Add1~3\ = CARRY((!\inst|uart_tx_u1|Add1~1\) # (!\inst|uart_tx_u1|Send_addr[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add1~1\,
	combout => \inst|uart_tx_u1|Add1~2_combout\,
	cout => \inst|uart_tx_u1|Add1~3\);

-- Location: LCCOMB_X26_Y15_N6
\inst|uart_tx_u1|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add5~2_combout\ = (\inst|uart_tx_u1|Send_addr[1]~2_combout\ & (!\inst|uart_tx_u1|Add5~1\)) # (!\inst|uart_tx_u1|Send_addr[1]~2_combout\ & ((\inst|uart_tx_u1|Add5~1\) # (GND)))
-- \inst|uart_tx_u1|Add5~3\ = CARRY((!\inst|uart_tx_u1|Add5~1\) # (!\inst|uart_tx_u1|Send_addr[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add5~1\,
	combout => \inst|uart_tx_u1|Add5~2_combout\,
	cout => \inst|uart_tx_u1|Add5~3\);

-- Location: LCCOMB_X26_Y15_N0
\inst|uart_tx_u1|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux6~0_combout\ = (\inst|Select_mode_u1|LED_select\(2) & ((\inst|uart_tx_u1|Add5~2_combout\))) # (!\inst|Select_mode_u1|LED_select\(2) & (\inst|uart_tx_u1|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Select_mode_u1|LED_select\(2),
	datac => \inst|uart_tx_u1|Add1~2_combout\,
	datad => \inst|uart_tx_u1|Add5~2_combout\,
	combout => \inst|uart_tx_u1|Mux6~0_combout\);

-- Location: LCCOMB_X27_Y16_N12
\inst|uart_tx_u1|Add7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add7~2_combout\ = (\inst|uart_tx_u1|Send_addr[1]~2_combout\ & (\inst|uart_tx_u1|Add7~1\ & VCC)) # (!\inst|uart_tx_u1|Send_addr[1]~2_combout\ & (!\inst|uart_tx_u1|Add7~1\))
-- \inst|uart_tx_u1|Add7~3\ = CARRY((!\inst|uart_tx_u1|Send_addr[1]~2_combout\ & !\inst|uart_tx_u1|Add7~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add7~1\,
	combout => \inst|uart_tx_u1|Add7~2_combout\,
	cout => \inst|uart_tx_u1|Add7~3\);

-- Location: LCCOMB_X27_Y13_N10
\inst|uart_tx_u1|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add3~2_combout\ = (\inst|uart_tx_u1|Send_addr[1]~2_combout\ & (\inst|uart_tx_u1|Add3~1\ & VCC)) # (!\inst|uart_tx_u1|Send_addr[1]~2_combout\ & (!\inst|uart_tx_u1|Add3~1\))
-- \inst|uart_tx_u1|Add3~3\ = CARRY((!\inst|uart_tx_u1|Send_addr[1]~2_combout\ & !\inst|uart_tx_u1|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add3~1\,
	combout => \inst|uart_tx_u1|Add3~2_combout\,
	cout => \inst|uart_tx_u1|Add3~3\);

-- Location: LCCOMB_X26_Y15_N26
\inst|uart_tx_u1|Mux6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux6~3_combout\ = (\inst|Select_mode_u1|LED_select\(2) & (\inst|uart_tx_u1|Add7~2_combout\)) # (!\inst|Select_mode_u1|LED_select\(2) & ((\inst|uart_tx_u1|Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Select_mode_u1|LED_select\(2),
	datac => \inst|uart_tx_u1|Add7~2_combout\,
	datad => \inst|uart_tx_u1|Add3~2_combout\,
	combout => \inst|uart_tx_u1|Mux6~3_combout\);

-- Location: LCCOMB_X27_Y15_N12
\inst|uart_tx_u1|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add4~0_combout\ = \inst|uart_tx_u1|Send_addr[1]~2_combout\ $ (VCC)
-- \inst|uart_tx_u1|Add4~1\ = CARRY(\inst|uart_tx_u1|Send_addr[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	combout => \inst|uart_tx_u1|Add4~0_combout\,
	cout => \inst|uart_tx_u1|Add4~1\);

-- Location: LCCOMB_X27_Y14_N16
\inst|uart_tx_u1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add0~0_combout\ = \inst|uart_tx_u1|Send_addr[1]~2_combout\ $ (VCC)
-- \inst|uart_tx_u1|Add0~1\ = CARRY(\inst|uart_tx_u1|Send_addr[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	combout => \inst|uart_tx_u1|Add0~0_combout\,
	cout => \inst|uart_tx_u1|Add0~1\);

-- Location: LCCOMB_X26_Y15_N2
\inst|uart_tx_u1|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux6~1_combout\ = (\inst|Select_mode_u1|LED_select\(2) & (\inst|uart_tx_u1|Add4~0_combout\)) # (!\inst|Select_mode_u1|LED_select\(2) & ((\inst|uart_tx_u1|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Select_mode_u1|LED_select\(2),
	datac => \inst|uart_tx_u1|Add4~0_combout\,
	datad => \inst|uart_tx_u1|Add0~0_combout\,
	combout => \inst|uart_tx_u1|Mux6~1_combout\);

-- Location: LCCOMB_X26_Y15_N24
\inst|uart_tx_u1|Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux6~2_combout\ = (\inst|Select_mode_u1|LED_select\(0) & (((\inst|Select_mode_u1|LED_select\(1))))) # (!\inst|Select_mode_u1|LED_select\(0) & ((\inst|Select_mode_u1|LED_select\(1) & (\inst|uart_tx_u1|Send_addr[1]~2_combout\)) # 
-- (!\inst|Select_mode_u1|LED_select\(1) & ((\inst|uart_tx_u1|Mux6~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[1]~2_combout\,
	datab => \inst|Select_mode_u1|LED_select\(0),
	datac => \inst|Select_mode_u1|LED_select\(1),
	datad => \inst|uart_tx_u1|Mux6~1_combout\,
	combout => \inst|uart_tx_u1|Mux6~2_combout\);

-- Location: LCCOMB_X27_Y15_N4
\inst|uart_tx_u1|Mux6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux6~4_combout\ = (\inst|Select_mode_u1|LED_select\(0) & ((\inst|uart_tx_u1|Mux6~2_combout\ & ((\inst|uart_tx_u1|Mux6~3_combout\))) # (!\inst|uart_tx_u1|Mux6~2_combout\ & (\inst|uart_tx_u1|Mux6~0_combout\)))) # 
-- (!\inst|Select_mode_u1|LED_select\(0) & (((\inst|uart_tx_u1|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Mux6~0_combout\,
	datab => \inst|Select_mode_u1|LED_select\(0),
	datac => \inst|uart_tx_u1|Mux6~3_combout\,
	datad => \inst|uart_tx_u1|Mux6~2_combout\,
	combout => \inst|uart_tx_u1|Mux6~4_combout\);

-- Location: FF_X27_Y15_N1
\inst|uart_tx_u1|addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|addr[1]~3_combout\,
	asdata => \inst|uart_tx_u1|Mux6~4_combout\,
	clrn => \res~input_o\,
	sload => \inst|uart_tx_u1|always0~3_combout\,
	ena => \inst|uart_tx_u1|addr[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|addr\(1));

-- Location: LCCOMB_X26_Y17_N4
\inst|uart_tx_u1|Add16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add16~4_combout\ = (\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|Add16~3\ $ (GND))) # (!\inst|uart_tx_u1|addr\(2) & (!\inst|uart_tx_u1|Add16~3\ & VCC))
-- \inst|uart_tx_u1|Add16~5\ = CARRY((\inst|uart_tx_u1|addr\(2) & !\inst|uart_tx_u1|Add16~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datad => VCC,
	cin => \inst|uart_tx_u1|Add16~3\,
	combout => \inst|uart_tx_u1|Add16~4_combout\,
	cout => \inst|uart_tx_u1|Add16~5\);

-- Location: LCCOMB_X26_Y17_N30
\inst|uart_tx_u1|Send_addr[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Send_addr[2]~3_combout\ = (\inst|uart_tx_u1|always1~0_combout\ & (\inst|uart_tx_u1|Add16~4_combout\)) # (!\inst|uart_tx_u1|always1~0_combout\ & ((\inst|uart_tx_u1|Send_addr_w\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Add16~4_combout\,
	datac => \inst|uart_tx_u1|Send_addr_w\(2),
	datad => \inst|uart_tx_u1|always1~0_combout\,
	combout => \inst|uart_tx_u1|Send_addr[2]~3_combout\);

-- Location: FF_X26_Y17_N31
\inst|uart_tx_u1|Send_addr_w[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|Send_addr[2]~3_combout\,
	clrn => \res~input_o\,
	ena => \inst|uart_tx_u1|Send_addr_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|Send_addr_w\(2));

-- Location: LCCOMB_X27_Y16_N28
\inst|uart_tx_u1|addr[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr[2]~4_combout\ = (\inst|uart_tx_u1|addr~12_combout\ & ((\inst|uart_tx_u1|Send_addr_w\(2)))) # (!\inst|uart_tx_u1|addr~12_combout\ & (\inst|uart_tx_u1|Add16~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Add16~4_combout\,
	datab => \inst|uart_tx_u1|addr~12_combout\,
	datad => \inst|uart_tx_u1|Send_addr_w\(2),
	combout => \inst|uart_tx_u1|addr[2]~4_combout\);

-- Location: LCCOMB_X27_Y16_N14
\inst|uart_tx_u1|Add7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add7~4_combout\ = (\inst|uart_tx_u1|Send_addr[2]~3_combout\ & (\inst|uart_tx_u1|Add7~3\ $ (GND))) # (!\inst|uart_tx_u1|Send_addr[2]~3_combout\ & (!\inst|uart_tx_u1|Add7~3\ & VCC))
-- \inst|uart_tx_u1|Add7~5\ = CARRY((\inst|uart_tx_u1|Send_addr[2]~3_combout\ & !\inst|uart_tx_u1|Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add7~3\,
	combout => \inst|uart_tx_u1|Add7~4_combout\,
	cout => \inst|uart_tx_u1|Add7~5\);

-- Location: LCCOMB_X27_Y16_N6
\inst|uart_tx_u1|Mux5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux5~4_combout\ = (\inst|Select_mode_u1|LED_select\(0) & ((\inst|uart_tx_u1|Add7~4_combout\))) # (!\inst|Select_mode_u1|LED_select\(0) & (\inst|uart_tx_u1|Send_addr[2]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(0),
	datab => \inst|uart_tx_u1|Send_addr[2]~3_combout\,
	datac => \inst|uart_tx_u1|Add7~4_combout\,
	combout => \inst|uart_tx_u1|Mux5~4_combout\);

-- Location: LCCOMB_X27_Y14_N18
\inst|uart_tx_u1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add0~2_combout\ = (\inst|uart_tx_u1|Send_addr[2]~3_combout\ & (\inst|uart_tx_u1|Add0~1\ & VCC)) # (!\inst|uart_tx_u1|Send_addr[2]~3_combout\ & (!\inst|uart_tx_u1|Add0~1\))
-- \inst|uart_tx_u1|Add0~3\ = CARRY((!\inst|uart_tx_u1|Send_addr[2]~3_combout\ & !\inst|uart_tx_u1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add0~1\,
	combout => \inst|uart_tx_u1|Add0~2_combout\,
	cout => \inst|uart_tx_u1|Add0~3\);

-- Location: LCCOMB_X26_Y13_N18
\inst|uart_tx_u1|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add1~4_combout\ = (\inst|uart_tx_u1|Send_addr[2]~3_combout\ & (\inst|uart_tx_u1|Add1~3\ $ (GND))) # (!\inst|uart_tx_u1|Send_addr[2]~3_combout\ & (!\inst|uart_tx_u1|Add1~3\ & VCC))
-- \inst|uart_tx_u1|Add1~5\ = CARRY((\inst|uart_tx_u1|Send_addr[2]~3_combout\ & !\inst|uart_tx_u1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add1~3\,
	combout => \inst|uart_tx_u1|Add1~4_combout\,
	cout => \inst|uart_tx_u1|Add1~5\);

-- Location: LCCOMB_X27_Y16_N26
\inst|uart_tx_u1|Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux5~2_combout\ = (\inst|Select_mode_u1|LED_select\(0) & ((\inst|uart_tx_u1|Add1~4_combout\))) # (!\inst|Select_mode_u1|LED_select\(0) & (\inst|uart_tx_u1|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(0),
	datac => \inst|uart_tx_u1|Add0~2_combout\,
	datad => \inst|uart_tx_u1|Add1~4_combout\,
	combout => \inst|uart_tx_u1|Mux5~2_combout\);

-- Location: LCCOMB_X27_Y13_N12
\inst|uart_tx_u1|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add3~4_combout\ = (\inst|uart_tx_u1|Send_addr[2]~3_combout\ & ((GND) # (!\inst|uart_tx_u1|Add3~3\))) # (!\inst|uart_tx_u1|Send_addr[2]~3_combout\ & (\inst|uart_tx_u1|Add3~3\ $ (GND)))
-- \inst|uart_tx_u1|Add3~5\ = CARRY((\inst|uart_tx_u1|Send_addr[2]~3_combout\) # (!\inst|uart_tx_u1|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add3~3\,
	combout => \inst|uart_tx_u1|Add3~4_combout\,
	cout => \inst|uart_tx_u1|Add3~5\);

-- Location: LCCOMB_X26_Y17_N16
\inst|uart_tx_u1|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add2~0_combout\ = \inst|uart_tx_u1|Send_addr[2]~3_combout\ $ (VCC)
-- \inst|uart_tx_u1|Add2~1\ = CARRY(\inst|uart_tx_u1|Send_addr[2]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	combout => \inst|uart_tx_u1|Add2~0_combout\,
	cout => \inst|uart_tx_u1|Add2~1\);

-- Location: LCCOMB_X27_Y16_N0
\inst|uart_tx_u1|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux5~1_combout\ = (\inst|Select_mode_u1|LED_select\(0) & (\inst|uart_tx_u1|Add3~4_combout\)) # (!\inst|Select_mode_u1|LED_select\(0) & ((\inst|uart_tx_u1|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(0),
	datac => \inst|uart_tx_u1|Add3~4_combout\,
	datad => \inst|uart_tx_u1|Add2~0_combout\,
	combout => \inst|uart_tx_u1|Mux5~1_combout\);

-- Location: LCCOMB_X27_Y16_N4
\inst|uart_tx_u1|Mux5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux5~3_combout\ = (\inst|Select_mode_u1|LED_select\(1) & ((\inst|Select_mode_u1|LED_select\(2)) # ((\inst|uart_tx_u1|Mux5~1_combout\)))) # (!\inst|Select_mode_u1|LED_select\(1) & (!\inst|Select_mode_u1|LED_select\(2) & 
-- (\inst|uart_tx_u1|Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(1),
	datab => \inst|Select_mode_u1|LED_select\(2),
	datac => \inst|uart_tx_u1|Mux5~2_combout\,
	datad => \inst|uart_tx_u1|Mux5~1_combout\,
	combout => \inst|uart_tx_u1|Mux5~3_combout\);

-- Location: LCCOMB_X26_Y15_N8
\inst|uart_tx_u1|Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add5~4_combout\ = (\inst|uart_tx_u1|Send_addr[2]~3_combout\ & ((GND) # (!\inst|uart_tx_u1|Add5~3\))) # (!\inst|uart_tx_u1|Send_addr[2]~3_combout\ & (\inst|uart_tx_u1|Add5~3\ $ (GND)))
-- \inst|uart_tx_u1|Add5~5\ = CARRY((\inst|uart_tx_u1|Send_addr[2]~3_combout\) # (!\inst|uart_tx_u1|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add5~3\,
	combout => \inst|uart_tx_u1|Add5~4_combout\,
	cout => \inst|uart_tx_u1|Add5~5\);

-- Location: LCCOMB_X27_Y15_N14
\inst|uart_tx_u1|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add4~2_combout\ = (\inst|uart_tx_u1|Send_addr[2]~3_combout\ & (!\inst|uart_tx_u1|Add4~1\)) # (!\inst|uart_tx_u1|Send_addr[2]~3_combout\ & ((\inst|uart_tx_u1|Add4~1\) # (GND)))
-- \inst|uart_tx_u1|Add4~3\ = CARRY((!\inst|uart_tx_u1|Add4~1\) # (!\inst|uart_tx_u1|Send_addr[2]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add4~1\,
	combout => \inst|uart_tx_u1|Add4~2_combout\,
	cout => \inst|uart_tx_u1|Add4~3\);

-- Location: LCCOMB_X27_Y16_N2
\inst|uart_tx_u1|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux5~0_combout\ = (\inst|Select_mode_u1|LED_select\(0) & (\inst|uart_tx_u1|Add5~4_combout\)) # (!\inst|Select_mode_u1|LED_select\(0) & ((\inst|uart_tx_u1|Add4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Add5~4_combout\,
	datac => \inst|Select_mode_u1|LED_select\(0),
	datad => \inst|uart_tx_u1|Add4~2_combout\,
	combout => \inst|uart_tx_u1|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y16_N8
\inst|uart_tx_u1|Mux5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux5~5_combout\ = (\inst|Select_mode_u1|LED_select\(2) & ((\inst|uart_tx_u1|Mux5~3_combout\ & (\inst|uart_tx_u1|Mux5~4_combout\)) # (!\inst|uart_tx_u1|Mux5~3_combout\ & ((\inst|uart_tx_u1|Mux5~0_combout\))))) # 
-- (!\inst|Select_mode_u1|LED_select\(2) & (((\inst|uart_tx_u1|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Mux5~4_combout\,
	datab => \inst|Select_mode_u1|LED_select\(2),
	datac => \inst|uart_tx_u1|Mux5~3_combout\,
	datad => \inst|uart_tx_u1|Mux5~0_combout\,
	combout => \inst|uart_tx_u1|Mux5~5_combout\);

-- Location: FF_X27_Y16_N29
\inst|uart_tx_u1|addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|addr[2]~4_combout\,
	asdata => \inst|uart_tx_u1|Mux5~5_combout\,
	clrn => \res~input_o\,
	sload => \inst|uart_tx_u1|always0~3_combout\,
	ena => \inst|uart_tx_u1|addr[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|addr\(2));

-- Location: LCCOMB_X26_Y17_N6
\inst|uart_tx_u1|Add16~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add16~6_combout\ = (\inst|uart_tx_u1|addr\(3) & (!\inst|uart_tx_u1|Add16~5\)) # (!\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|Add16~5\) # (GND)))
-- \inst|uart_tx_u1|Add16~7\ = CARRY((!\inst|uart_tx_u1|Add16~5\) # (!\inst|uart_tx_u1|addr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|addr\(3),
	datad => VCC,
	cin => \inst|uart_tx_u1|Add16~5\,
	combout => \inst|uart_tx_u1|Add16~6_combout\,
	cout => \inst|uart_tx_u1|Add16~7\);

-- Location: LCCOMB_X26_Y13_N8
\inst|uart_tx_u1|addr~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~32_combout\ = (\inst|uart_tx_u1|Add16~6_combout\ & (!\inst|uart_tx_u1|always0~3_combout\ & !\inst|uart_tx_u1|always0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Add16~6_combout\,
	datac => \inst|uart_tx_u1|always0~3_combout\,
	datad => \inst|uart_tx_u1|always0~4_combout\,
	combout => \inst|uart_tx_u1|addr~32_combout\);

-- Location: LCCOMB_X27_Y17_N2
\inst|uart_tx_u1|Send_addr[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Send_addr[3]~6_combout\ = (\inst|uart_tx_u1|always1~0_combout\ & (\inst|uart_tx_u1|Add16~6_combout\)) # (!\inst|uart_tx_u1|always1~0_combout\ & ((\inst|uart_tx_u1|Send_addr_w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Add16~6_combout\,
	datac => \inst|uart_tx_u1|Send_addr_w\(3),
	datad => \inst|uart_tx_u1|always1~0_combout\,
	combout => \inst|uart_tx_u1|Send_addr[3]~6_combout\);

-- Location: FF_X27_Y17_N3
\inst|uart_tx_u1|Send_addr_w[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|Send_addr[3]~6_combout\,
	clrn => \res~input_o\,
	ena => \inst|uart_tx_u1|Send_addr_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|Send_addr_w\(3));

-- Location: LCCOMB_X26_Y13_N2
\inst|uart_tx_u1|addr[4]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr[4]~22_combout\ = (!\inst|uart_tx_u1|Equal4~4_combout\ & ((\inst|uart_tx_u1|always0~2_combout\ & ((\inst|uart_tx_u1|addr[4]~21_combout\))) # (!\inst|uart_tx_u1|always0~2_combout\ & (\inst|uart_tx_u1|always0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|always0~1_combout\,
	datab => \inst|uart_tx_u1|addr[4]~21_combout\,
	datac => \inst|uart_tx_u1|always0~2_combout\,
	datad => \inst|uart_tx_u1|Equal4~4_combout\,
	combout => \inst|uart_tx_u1|addr[4]~22_combout\);

-- Location: LCCOMB_X26_Y13_N6
\inst|uart_tx_u1|addr~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~49_combout\ = (\inst|uart_tx_u1|addr[4]~22_combout\ & ((\inst|uart_tx_u1|always1~0_combout\ & ((\inst|uart_tx_u1|Add16~6_combout\))) # (!\inst|uart_tx_u1|always1~0_combout\ & (\inst|uart_tx_u1|Send_addr_w\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr_w\(3),
	datab => \inst|uart_tx_u1|Add16~6_combout\,
	datac => \inst|uart_tx_u1|always1~0_combout\,
	datad => \inst|uart_tx_u1|addr[4]~22_combout\,
	combout => \inst|uart_tx_u1|addr~49_combout\);

-- Location: LCCOMB_X26_Y14_N12
\inst|uart_tx_u1|addr[4]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr[4]~28_combout\ = (\inst|Select_mode_u1|LED_select\(2) & ((\inst|Select_mode_u1|LED_select\(1)) # (\inst|Select_mode_u1|LED_select\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(1),
	datab => \inst|Select_mode_u1|LED_select\(2),
	datad => \inst|Select_mode_u1|LED_select\(0),
	combout => \inst|uart_tx_u1|addr[4]~28_combout\);

-- Location: LCCOMB_X27_Y16_N16
\inst|uart_tx_u1|Add7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add7~6_combout\ = (\inst|uart_tx_u1|Send_addr[3]~6_combout\ & (!\inst|uart_tx_u1|Add7~5\)) # (!\inst|uart_tx_u1|Send_addr[3]~6_combout\ & ((\inst|uart_tx_u1|Add7~5\) # (GND)))
-- \inst|uart_tx_u1|Add7~7\ = CARRY((!\inst|uart_tx_u1|Add7~5\) # (!\inst|uart_tx_u1|Send_addr[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add7~5\,
	combout => \inst|uart_tx_u1|Add7~6_combout\,
	cout => \inst|uart_tx_u1|Add7~7\);

-- Location: LCCOMB_X26_Y15_N10
\inst|uart_tx_u1|Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add5~6_combout\ = (\inst|uart_tx_u1|Send_addr[3]~6_combout\ & (\inst|uart_tx_u1|Add5~5\ & VCC)) # (!\inst|uart_tx_u1|Send_addr[3]~6_combout\ & (!\inst|uart_tx_u1|Add5~5\))
-- \inst|uart_tx_u1|Add5~7\ = CARRY((!\inst|uart_tx_u1|Send_addr[3]~6_combout\ & !\inst|uart_tx_u1|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add5~5\,
	combout => \inst|uart_tx_u1|Add5~6_combout\,
	cout => \inst|uart_tx_u1|Add5~7\);

-- Location: LCCOMB_X27_Y15_N16
\inst|uart_tx_u1|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add4~4_combout\ = (\inst|uart_tx_u1|Send_addr[3]~6_combout\ & ((GND) # (!\inst|uart_tx_u1|Add4~3\))) # (!\inst|uart_tx_u1|Send_addr[3]~6_combout\ & (\inst|uart_tx_u1|Add4~3\ $ (GND)))
-- \inst|uart_tx_u1|Add4~5\ = CARRY((\inst|uart_tx_u1|Send_addr[3]~6_combout\) # (!\inst|uart_tx_u1|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add4~3\,
	combout => \inst|uart_tx_u1|Add4~4_combout\,
	cout => \inst|uart_tx_u1|Add4~5\);

-- Location: LCCOMB_X26_Y14_N2
\inst|uart_tx_u1|addr[4]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr[4]~27_combout\ = (\inst|Select_mode_u1|LED_select\(1)) # (!\inst|Select_mode_u1|LED_select\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(1),
	datac => \inst|Select_mode_u1|LED_select\(2),
	combout => \inst|uart_tx_u1|addr[4]~27_combout\);

-- Location: LCCOMB_X27_Y13_N14
\inst|uart_tx_u1|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add3~6_combout\ = (\inst|uart_tx_u1|Send_addr[3]~6_combout\ & (!\inst|uart_tx_u1|Add3~5\)) # (!\inst|uart_tx_u1|Send_addr[3]~6_combout\ & ((\inst|uart_tx_u1|Add3~5\) # (GND)))
-- \inst|uart_tx_u1|Add3~7\ = CARRY((!\inst|uart_tx_u1|Add3~5\) # (!\inst|uart_tx_u1|Send_addr[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add3~5\,
	combout => \inst|uart_tx_u1|Add3~6_combout\,
	cout => \inst|uart_tx_u1|Add3~7\);

-- Location: LCCOMB_X26_Y17_N18
\inst|uart_tx_u1|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add2~2_combout\ = (\inst|uart_tx_u1|Send_addr[3]~6_combout\ & (!\inst|uart_tx_u1|Add2~1\)) # (!\inst|uart_tx_u1|Send_addr[3]~6_combout\ & ((\inst|uart_tx_u1|Add2~1\) # (GND)))
-- \inst|uart_tx_u1|Add2~3\ = CARRY((!\inst|uart_tx_u1|Add2~1\) # (!\inst|uart_tx_u1|Send_addr[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add2~1\,
	combout => \inst|uart_tx_u1|Add2~2_combout\,
	cout => \inst|uart_tx_u1|Add2~3\);

-- Location: LCCOMB_X26_Y13_N20
\inst|uart_tx_u1|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add1~6_combout\ = (\inst|uart_tx_u1|Send_addr[3]~6_combout\ & (!\inst|uart_tx_u1|Add1~5\)) # (!\inst|uart_tx_u1|Send_addr[3]~6_combout\ & ((\inst|uart_tx_u1|Add1~5\) # (GND)))
-- \inst|uart_tx_u1|Add1~7\ = CARRY((!\inst|uart_tx_u1|Add1~5\) # (!\inst|uart_tx_u1|Send_addr[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add1~5\,
	combout => \inst|uart_tx_u1|Add1~6_combout\,
	cout => \inst|uart_tx_u1|Add1~7\);

-- Location: LCCOMB_X27_Y14_N20
\inst|uart_tx_u1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add0~4_combout\ = (\inst|uart_tx_u1|Send_addr[3]~6_combout\ & ((GND) # (!\inst|uart_tx_u1|Add0~3\))) # (!\inst|uart_tx_u1|Send_addr[3]~6_combout\ & (\inst|uart_tx_u1|Add0~3\ $ (GND)))
-- \inst|uart_tx_u1|Add0~5\ = CARRY((\inst|uart_tx_u1|Send_addr[3]~6_combout\) # (!\inst|uart_tx_u1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add0~3\,
	combout => \inst|uart_tx_u1|Add0~4_combout\,
	cout => \inst|uart_tx_u1|Add0~5\);

-- Location: LCCOMB_X27_Y13_N0
\inst|uart_tx_u1|addr~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~33_combout\ = (\inst|Select_mode_u1|LED_select\(1) & (\inst|Select_mode_u1|LED_select\(0))) # (!\inst|Select_mode_u1|LED_select\(1) & ((\inst|Select_mode_u1|LED_select\(0) & (\inst|uart_tx_u1|Add1~6_combout\)) # 
-- (!\inst|Select_mode_u1|LED_select\(0) & ((\inst|uart_tx_u1|Add0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(1),
	datab => \inst|Select_mode_u1|LED_select\(0),
	datac => \inst|uart_tx_u1|Add1~6_combout\,
	datad => \inst|uart_tx_u1|Add0~4_combout\,
	combout => \inst|uart_tx_u1|addr~33_combout\);

-- Location: LCCOMB_X27_Y13_N6
\inst|uart_tx_u1|addr~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~34_combout\ = (\inst|Select_mode_u1|LED_select\(1) & ((\inst|uart_tx_u1|addr~33_combout\ & (\inst|uart_tx_u1|Add3~6_combout\)) # (!\inst|uart_tx_u1|addr~33_combout\ & ((\inst|uart_tx_u1|Add2~2_combout\))))) # 
-- (!\inst|Select_mode_u1|LED_select\(1) & (((\inst|uart_tx_u1|addr~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(1),
	datab => \inst|uart_tx_u1|Add3~6_combout\,
	datac => \inst|uart_tx_u1|Add2~2_combout\,
	datad => \inst|uart_tx_u1|addr~33_combout\,
	combout => \inst|uart_tx_u1|addr~34_combout\);

-- Location: LCCOMB_X27_Y13_N28
\inst|uart_tx_u1|addr~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~35_combout\ = (\inst|uart_tx_u1|addr[4]~27_combout\ & (((\inst|uart_tx_u1|addr[4]~28_combout\) # (\inst|uart_tx_u1|addr~34_combout\)))) # (!\inst|uart_tx_u1|addr[4]~27_combout\ & (\inst|uart_tx_u1|Add4~4_combout\ & 
-- (!\inst|uart_tx_u1|addr[4]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Add4~4_combout\,
	datab => \inst|uart_tx_u1|addr[4]~27_combout\,
	datac => \inst|uart_tx_u1|addr[4]~28_combout\,
	datad => \inst|uart_tx_u1|addr~34_combout\,
	combout => \inst|uart_tx_u1|addr~35_combout\);

-- Location: LCCOMB_X27_Y13_N2
\inst|uart_tx_u1|addr~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~36_combout\ = (\inst|uart_tx_u1|addr[4]~28_combout\ & ((\inst|uart_tx_u1|addr~35_combout\ & (\inst|uart_tx_u1|Add7~6_combout\)) # (!\inst|uart_tx_u1|addr~35_combout\ & ((\inst|uart_tx_u1|Add5~6_combout\))))) # 
-- (!\inst|uart_tx_u1|addr[4]~28_combout\ & (((\inst|uart_tx_u1|addr~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr[4]~28_combout\,
	datab => \inst|uart_tx_u1|Add7~6_combout\,
	datac => \inst|uart_tx_u1|Add5~6_combout\,
	datad => \inst|uart_tx_u1|addr~35_combout\,
	combout => \inst|uart_tx_u1|addr~36_combout\);

-- Location: LCCOMB_X27_Y13_N24
\inst|uart_tx_u1|addr~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~37_combout\ = (\inst|uart_tx_u1|addr~32_combout\) # ((\inst|uart_tx_u1|addr~49_combout\) # ((\inst|uart_tx_u1|addr~50_combout\ & \inst|uart_tx_u1|addr~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr~50_combout\,
	datab => \inst|uart_tx_u1|addr~32_combout\,
	datac => \inst|uart_tx_u1|addr~49_combout\,
	datad => \inst|uart_tx_u1|addr~36_combout\,
	combout => \inst|uart_tx_u1|addr~37_combout\);

-- Location: FF_X27_Y13_N25
\inst|uart_tx_u1|addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|addr~37_combout\,
	clrn => \res~input_o\,
	ena => \inst|uart_tx_u1|addr[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|addr\(3));

-- Location: LCCOMB_X28_Y18_N0
\inst|uart_tx_u1|AT|rom~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~6_combout\ = (!\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(1) $ (!\inst|uart_tx_u1|addr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|addr\(1),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~6_combout\);

-- Location: LCCOMB_X28_Y18_N14
\inst|uart_tx_u1|AT|rom~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~7_combout\ = (\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(2)) # (\inst|uart_tx_u1|addr\(0) $ (\inst|uart_tx_u1|addr\(5))))) # (!\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(5))) # 
-- (!\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(5),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~7_combout\);

-- Location: LCCOMB_X26_Y14_N18
\inst|uart_tx_u1|addr~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~23_combout\ = (\inst|uart_tx_u1|always1~0_combout\ & (((!\inst|uart_tx_u1|addr[4]~21_combout\ & \inst|uart_tx_u1|always0~3_combout\)))) # (!\inst|uart_tx_u1|always1~0_combout\ & ((\inst|uart_tx_u1|always0~4_combout\) # 
-- ((\inst|uart_tx_u1|always0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|always0~4_combout\,
	datab => \inst|uart_tx_u1|addr[4]~21_combout\,
	datac => \inst|uart_tx_u1|always1~0_combout\,
	datad => \inst|uart_tx_u1|always0~3_combout\,
	combout => \inst|uart_tx_u1|addr~23_combout\);

-- Location: LCCOMB_X26_Y17_N8
\inst|uart_tx_u1|Add16~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add16~8_combout\ = (\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|Add16~7\ $ (GND))) # (!\inst|uart_tx_u1|addr\(4) & (!\inst|uart_tx_u1|Add16~7\ & VCC))
-- \inst|uart_tx_u1|Add16~9\ = CARRY((\inst|uart_tx_u1|addr\(4) & !\inst|uart_tx_u1|Add16~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datad => VCC,
	cin => \inst|uart_tx_u1|Add16~7\,
	combout => \inst|uart_tx_u1|Add16~8_combout\,
	cout => \inst|uart_tx_u1|Add16~9\);

-- Location: LCCOMB_X27_Y17_N28
\inst|uart_tx_u1|Send_addr[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Send_addr[4]~5_combout\ = (\inst|uart_tx_u1|always1~0_combout\ & (\inst|uart_tx_u1|Add16~8_combout\)) # (!\inst|uart_tx_u1|always1~0_combout\ & ((\inst|uart_tx_u1|Send_addr_w\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Add16~8_combout\,
	datac => \inst|uart_tx_u1|Send_addr_w\(4),
	datad => \inst|uart_tx_u1|always1~0_combout\,
	combout => \inst|uart_tx_u1|Send_addr[4]~5_combout\);

-- Location: FF_X27_Y17_N29
\inst|uart_tx_u1|Send_addr_w[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|Send_addr[4]~5_combout\,
	clrn => \res~input_o\,
	ena => \inst|uart_tx_u1|Send_addr_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|Send_addr_w\(4));

-- Location: LCCOMB_X26_Y14_N8
\inst|uart_tx_u1|addr~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~24_combout\ = (\inst|uart_tx_u1|addr~23_combout\ & (((\inst|uart_tx_u1|Send_addr_w\(4) & \inst|uart_tx_u1|addr[4]~22_combout\)))) # (!\inst|uart_tx_u1|addr~23_combout\ & (\inst|uart_tx_u1|Add16~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Add16~8_combout\,
	datab => \inst|uart_tx_u1|addr~23_combout\,
	datac => \inst|uart_tx_u1|Send_addr_w\(4),
	datad => \inst|uart_tx_u1|addr[4]~22_combout\,
	combout => \inst|uart_tx_u1|addr~24_combout\);

-- Location: LCCOMB_X27_Y16_N18
\inst|uart_tx_u1|Add7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add7~8_combout\ = (\inst|uart_tx_u1|Send_addr[4]~5_combout\ & (\inst|uart_tx_u1|Add7~7\ $ (GND))) # (!\inst|uart_tx_u1|Send_addr[4]~5_combout\ & (!\inst|uart_tx_u1|Add7~7\ & VCC))
-- \inst|uart_tx_u1|Add7~9\ = CARRY((\inst|uart_tx_u1|Send_addr[4]~5_combout\ & !\inst|uart_tx_u1|Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add7~7\,
	combout => \inst|uart_tx_u1|Add7~8_combout\,
	cout => \inst|uart_tx_u1|Add7~9\);

-- Location: LCCOMB_X27_Y15_N18
\inst|uart_tx_u1|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add4~6_combout\ = (\inst|uart_tx_u1|Send_addr[4]~5_combout\ & (\inst|uart_tx_u1|Add4~5\ & VCC)) # (!\inst|uart_tx_u1|Send_addr[4]~5_combout\ & (!\inst|uart_tx_u1|Add4~5\))
-- \inst|uart_tx_u1|Add4~7\ = CARRY((!\inst|uart_tx_u1|Send_addr[4]~5_combout\ & !\inst|uart_tx_u1|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add4~5\,
	combout => \inst|uart_tx_u1|Add4~6_combout\,
	cout => \inst|uart_tx_u1|Add4~7\);

-- Location: LCCOMB_X26_Y15_N12
\inst|uart_tx_u1|Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add5~8_combout\ = (\inst|uart_tx_u1|Send_addr[4]~5_combout\ & ((GND) # (!\inst|uart_tx_u1|Add5~7\))) # (!\inst|uart_tx_u1|Send_addr[4]~5_combout\ & (\inst|uart_tx_u1|Add5~7\ $ (GND)))
-- \inst|uart_tx_u1|Add5~9\ = CARRY((\inst|uart_tx_u1|Send_addr[4]~5_combout\) # (!\inst|uart_tx_u1|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add5~7\,
	combout => \inst|uart_tx_u1|Add5~8_combout\,
	cout => \inst|uart_tx_u1|Add5~9\);

-- Location: LCCOMB_X26_Y14_N26
\inst|uart_tx_u1|addr~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~29_combout\ = (\inst|uart_tx_u1|addr[4]~28_combout\ & ((\inst|uart_tx_u1|addr[4]~27_combout\) # ((\inst|uart_tx_u1|Add5~8_combout\)))) # (!\inst|uart_tx_u1|addr[4]~28_combout\ & (!\inst|uart_tx_u1|addr[4]~27_combout\ & 
-- (\inst|uart_tx_u1|Add4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr[4]~28_combout\,
	datab => \inst|uart_tx_u1|addr[4]~27_combout\,
	datac => \inst|uart_tx_u1|Add4~6_combout\,
	datad => \inst|uart_tx_u1|Add5~8_combout\,
	combout => \inst|uart_tx_u1|addr~29_combout\);

-- Location: LCCOMB_X27_Y13_N16
\inst|uart_tx_u1|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add3~8_combout\ = (\inst|uart_tx_u1|Send_addr[4]~5_combout\ & ((GND) # (!\inst|uart_tx_u1|Add3~7\))) # (!\inst|uart_tx_u1|Send_addr[4]~5_combout\ & (\inst|uart_tx_u1|Add3~7\ $ (GND)))
-- \inst|uart_tx_u1|Add3~9\ = CARRY((\inst|uart_tx_u1|Send_addr[4]~5_combout\) # (!\inst|uart_tx_u1|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add3~7\,
	combout => \inst|uart_tx_u1|Add3~8_combout\,
	cout => \inst|uart_tx_u1|Add3~9\);

-- Location: LCCOMB_X27_Y14_N22
\inst|uart_tx_u1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add0~6_combout\ = (\inst|uart_tx_u1|Send_addr[4]~5_combout\ & (!\inst|uart_tx_u1|Add0~5\)) # (!\inst|uart_tx_u1|Send_addr[4]~5_combout\ & ((\inst|uart_tx_u1|Add0~5\) # (GND)))
-- \inst|uart_tx_u1|Add0~7\ = CARRY((!\inst|uart_tx_u1|Add0~5\) # (!\inst|uart_tx_u1|Send_addr[4]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add0~5\,
	combout => \inst|uart_tx_u1|Add0~6_combout\,
	cout => \inst|uart_tx_u1|Add0~7\);

-- Location: LCCOMB_X26_Y13_N22
\inst|uart_tx_u1|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add1~8_combout\ = (\inst|uart_tx_u1|Send_addr[4]~5_combout\ & ((GND) # (!\inst|uart_tx_u1|Add1~7\))) # (!\inst|uart_tx_u1|Send_addr[4]~5_combout\ & (\inst|uart_tx_u1|Add1~7\ $ (GND)))
-- \inst|uart_tx_u1|Add1~9\ = CARRY((\inst|uart_tx_u1|Send_addr[4]~5_combout\) # (!\inst|uart_tx_u1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add1~7\,
	combout => \inst|uart_tx_u1|Add1~8_combout\,
	cout => \inst|uart_tx_u1|Add1~9\);

-- Location: LCCOMB_X27_Y13_N4
\inst|uart_tx_u1|addr~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~25_combout\ = (\inst|Select_mode_u1|LED_select\(1) & (\inst|Select_mode_u1|LED_select\(0))) # (!\inst|Select_mode_u1|LED_select\(1) & ((\inst|Select_mode_u1|LED_select\(0) & ((\inst|uart_tx_u1|Add1~8_combout\))) # 
-- (!\inst|Select_mode_u1|LED_select\(0) & (\inst|uart_tx_u1|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(1),
	datab => \inst|Select_mode_u1|LED_select\(0),
	datac => \inst|uart_tx_u1|Add0~6_combout\,
	datad => \inst|uart_tx_u1|Add1~8_combout\,
	combout => \inst|uart_tx_u1|addr~25_combout\);

-- Location: LCCOMB_X26_Y17_N20
\inst|uart_tx_u1|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add2~4_combout\ = (\inst|uart_tx_u1|Send_addr[4]~5_combout\ & ((GND) # (!\inst|uart_tx_u1|Add2~3\))) # (!\inst|uart_tx_u1|Send_addr[4]~5_combout\ & (\inst|uart_tx_u1|Add2~3\ $ (GND)))
-- \inst|uart_tx_u1|Add2~5\ = CARRY((\inst|uart_tx_u1|Send_addr[4]~5_combout\) # (!\inst|uart_tx_u1|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add2~3\,
	combout => \inst|uart_tx_u1|Add2~4_combout\,
	cout => \inst|uart_tx_u1|Add2~5\);

-- Location: LCCOMB_X27_Y13_N30
\inst|uart_tx_u1|addr~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~26_combout\ = (\inst|Select_mode_u1|LED_select\(1) & ((\inst|uart_tx_u1|addr~25_combout\ & (\inst|uart_tx_u1|Add3~8_combout\)) # (!\inst|uart_tx_u1|addr~25_combout\ & ((\inst|uart_tx_u1|Add2~4_combout\))))) # 
-- (!\inst|Select_mode_u1|LED_select\(1) & (((\inst|uart_tx_u1|addr~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(1),
	datab => \inst|uart_tx_u1|Add3~8_combout\,
	datac => \inst|uart_tx_u1|addr~25_combout\,
	datad => \inst|uart_tx_u1|Add2~4_combout\,
	combout => \inst|uart_tx_u1|addr~26_combout\);

-- Location: LCCOMB_X26_Y14_N24
\inst|uart_tx_u1|addr~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~30_combout\ = (\inst|uart_tx_u1|addr[4]~27_combout\ & ((\inst|uart_tx_u1|addr~29_combout\ & (\inst|uart_tx_u1|Add7~8_combout\)) # (!\inst|uart_tx_u1|addr~29_combout\ & ((\inst|uart_tx_u1|addr~26_combout\))))) # 
-- (!\inst|uart_tx_u1|addr[4]~27_combout\ & (((\inst|uart_tx_u1|addr~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Add7~8_combout\,
	datab => \inst|uart_tx_u1|addr[4]~27_combout\,
	datac => \inst|uart_tx_u1|addr~29_combout\,
	datad => \inst|uart_tx_u1|addr~26_combout\,
	combout => \inst|uart_tx_u1|addr~30_combout\);

-- Location: LCCOMB_X26_Y14_N30
\inst|uart_tx_u1|addr~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~31_combout\ = (\inst|uart_tx_u1|addr~24_combout\) # ((!\inst|uart_tx_u1|addr[4]~22_combout\ & (\inst|uart_tx_u1|addr~23_combout\ & \inst|uart_tx_u1|addr~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr[4]~22_combout\,
	datab => \inst|uart_tx_u1|addr~23_combout\,
	datac => \inst|uart_tx_u1|addr~24_combout\,
	datad => \inst|uart_tx_u1|addr~30_combout\,
	combout => \inst|uart_tx_u1|addr~31_combout\);

-- Location: FF_X26_Y14_N31
\inst|uart_tx_u1|addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|addr~31_combout\,
	clrn => \res~input_o\,
	ena => \inst|uart_tx_u1|addr[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|addr\(4));

-- Location: LCCOMB_X28_Y18_N8
\inst|uart_tx_u1|AT|rom~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~3_combout\ = (\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(0)) # ((\inst|uart_tx_u1|addr\(1)) # (!\inst|uart_tx_u1|addr\(5))))) # (!\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(0) $ (\inst|uart_tx_u1|addr\(5))) # 
-- (!\inst|uart_tx_u1|addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(0),
	datab => \inst|uart_tx_u1|addr\(2),
	datac => \inst|uart_tx_u1|addr\(5),
	datad => \inst|uart_tx_u1|addr\(1),
	combout => \inst|uart_tx_u1|AT|rom~3_combout\);

-- Location: LCCOMB_X28_Y18_N10
\inst|uart_tx_u1|AT|rom~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~4_combout\ = (!\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(0) & ((!\inst|uart_tx_u1|addr\(1)) # (!\inst|uart_tx_u1|addr\(2)))) # (!\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(2)) # (\inst|uart_tx_u1|addr\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(0),
	datab => \inst|uart_tx_u1|addr\(2),
	datac => \inst|uart_tx_u1|addr\(5),
	datad => \inst|uart_tx_u1|addr\(1),
	combout => \inst|uart_tx_u1|AT|rom~4_combout\);

-- Location: LCCOMB_X28_Y18_N24
\inst|uart_tx_u1|AT|rom~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~8_combout\ = (\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|addr\(4))) # (!\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|AT|rom~4_combout\))) # (!\inst|uart_tx_u1|addr\(4) & 
-- (\inst|uart_tx_u1|AT|rom~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(3),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|AT|rom~3_combout\,
	datad => \inst|uart_tx_u1|AT|rom~4_combout\,
	combout => \inst|uart_tx_u1|AT|rom~8_combout\);

-- Location: LCCOMB_X28_Y18_N22
\inst|uart_tx_u1|AT|rom~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~9_combout\ = (\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|AT|rom~8_combout\ & ((\inst|uart_tx_u1|AT|rom~7_combout\))) # (!\inst|uart_tx_u1|AT|rom~8_combout\ & (\inst|uart_tx_u1|AT|rom~6_combout\)))) # (!\inst|uart_tx_u1|addr\(3) 
-- & (((\inst|uart_tx_u1|AT|rom~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(3),
	datab => \inst|uart_tx_u1|AT|rom~6_combout\,
	datac => \inst|uart_tx_u1|AT|rom~7_combout\,
	datad => \inst|uart_tx_u1|AT|rom~8_combout\,
	combout => \inst|uart_tx_u1|AT|rom~9_combout\);

-- Location: LCCOMB_X28_Y18_N18
\inst|uart_tx_u1|AT|rom~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~118_combout\ = (\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|addr\(1)) # ((\inst|uart_tx_u1|addr\(0) & \inst|uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(0),
	datab => \inst|uart_tx_u1|addr\(2),
	datac => \inst|uart_tx_u1|addr\(1),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~118_combout\);

-- Location: LCCOMB_X28_Y18_N4
\inst|uart_tx_u1|AT|rom~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~119_combout\ = (\inst|uart_tx_u1|addr\(4) & (!\inst|uart_tx_u1|addr\(2) & (!\inst|uart_tx_u1|addr\(3)))) # (!\inst|uart_tx_u1|addr\(4) & (((\inst|uart_tx_u1|AT|rom~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(2),
	datac => \inst|uart_tx_u1|addr\(3),
	datad => \inst|uart_tx_u1|AT|rom~118_combout\,
	combout => \inst|uart_tx_u1|AT|rom~119_combout\);

-- Location: LCCOMB_X28_Y18_N28
\inst|uart_tx_u1|AT|rom~125\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~125_combout\ = (\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(4) $ (((\inst|uart_tx_u1|addr\(3)))))) # (!\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(0) & (!\inst|uart_tx_u1|addr\(4))) # (!\inst|uart_tx_u1|addr\(0) & 
-- ((!\inst|uart_tx_u1|addr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010010100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~125_combout\);

-- Location: LCCOMB_X28_Y18_N6
\inst|uart_tx_u1|AT|rom~126\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~126_combout\ = (\inst|uart_tx_u1|addr\(3) & (!\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|addr\(1)) # (\inst|uart_tx_u1|AT|rom~125_combout\)))) # (!\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|addr\(1) $ 
-- (((\inst|uart_tx_u1|AT|rom~125_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|addr\(3),
	datad => \inst|uart_tx_u1|AT|rom~125_combout\,
	combout => \inst|uart_tx_u1|AT|rom~126_combout\);

-- Location: LCCOMB_X28_Y18_N26
\inst|uart_tx_u1|AT|rom~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~120_combout\ = (\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|AT|rom~119_combout\)) # (!\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|AT|rom~126_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|AT|rom~119_combout\,
	datad => \inst|uart_tx_u1|AT|rom~126_combout\,
	combout => \inst|uart_tx_u1|AT|rom~120_combout\);

-- Location: LCCOMB_X28_Y16_N22
\inst|uart_tx_u1|AT|rom~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~121_combout\ = (\inst|uart_tx_u1|addr\(0) & (!\inst|uart_tx_u1|addr\(1) & (!\inst|uart_tx_u1|addr\(3) & \inst|uart_tx_u1|addr\(2)))) # (!\inst|uart_tx_u1|addr\(0) & (!\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(1) $ 
-- (\inst|uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(3),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~121_combout\);

-- Location: LCCOMB_X28_Y16_N2
\inst|uart_tx_u1|AT|rom~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~83_combout\ = (\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(0) $ (!\inst|uart_tx_u1|addr\(3))))) # (!\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|addr\(0) $ 
-- (\inst|uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(3),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~83_combout\);

-- Location: LCCOMB_X28_Y16_N12
\inst|uart_tx_u1|AT|rom~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~122_combout\ = (\inst|uart_tx_u1|addr\(5) & (!\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|AT|rom~121_combout\))) # (!\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|AT|rom~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|AT|rom~121_combout\,
	datad => \inst|uart_tx_u1|AT|rom~83_combout\,
	combout => \inst|uart_tx_u1|AT|rom~122_combout\);

-- Location: LCCOMB_X28_Y18_N20
\inst|uart_tx_u1|AT|rom~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~123_combout\ = (\inst|uart_tx_u1|addr\(7) & (!\inst|uart_tx_u1|addr\(6) & \inst|uart_tx_u1|AT|rom~122_combout\)) # (!\inst|uart_tx_u1|addr\(7) & (\inst|uart_tx_u1|addr\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(7),
	datac => \inst|uart_tx_u1|addr\(6),
	datad => \inst|uart_tx_u1|AT|rom~122_combout\,
	combout => \inst|uart_tx_u1|AT|rom~123_combout\);

-- Location: LCCOMB_X28_Y18_N30
\inst|uart_tx_u1|AT|rom~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~124_combout\ = (\inst|uart_tx_u1|addr\(7) & (((\inst|uart_tx_u1|AT|rom~123_combout\)))) # (!\inst|uart_tx_u1|addr\(7) & ((\inst|uart_tx_u1|AT|rom~123_combout\ & ((\inst|uart_tx_u1|AT|rom~120_combout\))) # 
-- (!\inst|uart_tx_u1|AT|rom~123_combout\ & (\inst|uart_tx_u1|AT|rom~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|AT|rom~9_combout\,
	datab => \inst|uart_tx_u1|addr\(7),
	datac => \inst|uart_tx_u1|AT|rom~120_combout\,
	datad => \inst|uart_tx_u1|AT|rom~123_combout\,
	combout => \inst|uart_tx_u1|AT|rom~124_combout\);

-- Location: LCCOMB_X28_Y13_N28
\inst|uart_tx_u1|AT|rom~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~86_combout\ = (\inst|uart_tx_u1|addr\(4) & (!\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|addr\(1) $ (!\inst|uart_tx_u1|addr\(0))))) # (!\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|addr\(1) & 
-- !\inst|uart_tx_u1|addr\(0))) # (!\inst|uart_tx_u1|addr\(3) & (!\inst|uart_tx_u1|addr\(1) & \inst|uart_tx_u1|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(3),
	datac => \inst|uart_tx_u1|addr\(1),
	datad => \inst|uart_tx_u1|addr\(0),
	combout => \inst|uart_tx_u1|AT|rom~86_combout\);

-- Location: LCCOMB_X28_Y13_N18
\inst|uart_tx_u1|AT|rom~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~87_combout\ = (!\inst|uart_tx_u1|addr\(6) & (!\inst|uart_tx_u1|addr\(5) & \inst|uart_tx_u1|AT|rom~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(6),
	datac => \inst|uart_tx_u1|addr\(5),
	datad => \inst|uart_tx_u1|AT|rom~86_combout\,
	combout => \inst|uart_tx_u1|AT|rom~87_combout\);

-- Location: LCCOMB_X28_Y13_N2
\inst|uart_tx_u1|AT|rom~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~97_combout\ = (\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|addr\(0))) # (!\inst|uart_tx_u1|addr\(3) & ((!\inst|uart_tx_u1|addr\(6)))))) # (!\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|addr\(3) & 
-- ((!\inst|uart_tx_u1|addr\(6)))) # (!\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|addr\(0)) # (\inst|uart_tx_u1|addr\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(3),
	datac => \inst|uart_tx_u1|addr\(0),
	datad => \inst|uart_tx_u1|addr\(6),
	combout => \inst|uart_tx_u1|AT|rom~97_combout\);

-- Location: LCCOMB_X28_Y13_N26
\inst|uart_tx_u1|AT|rom~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~93_combout\ = (\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|addr\(3) & (!\inst|uart_tx_u1|addr\(0) & \inst|uart_tx_u1|addr\(6))) # (!\inst|uart_tx_u1|addr\(3) & ((!\inst|uart_tx_u1|addr\(6)))))) # (!\inst|uart_tx_u1|addr\(4) & 
-- (\inst|uart_tx_u1|addr\(3) $ (((\inst|uart_tx_u1|addr\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(3),
	datac => \inst|uart_tx_u1|addr\(0),
	datad => \inst|uart_tx_u1|addr\(6),
	combout => \inst|uart_tx_u1|AT|rom~93_combout\);

-- Location: LCCOMB_X28_Y13_N14
\inst|uart_tx_u1|AT|rom~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~95_combout\ = (\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|addr\(6))))) # (!\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(6) & ((\inst|uart_tx_u1|addr\(3)))) # (!\inst|uart_tx_u1|addr\(6) & 
-- (\inst|uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(3),
	datac => \inst|uart_tx_u1|addr\(0),
	datad => \inst|uart_tx_u1|addr\(6),
	combout => \inst|uart_tx_u1|AT|rom~95_combout\);

-- Location: LCCOMB_X28_Y13_N24
\inst|uart_tx_u1|AT|rom~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~94_combout\ = (\inst|uart_tx_u1|addr\(4) & (((!\inst|uart_tx_u1|addr\(3) & \inst|uart_tx_u1|addr\(0))) # (!\inst|uart_tx_u1|addr\(6)))) # (!\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|addr\(6)))) # 
-- (!\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|addr\(0) & !\inst|uart_tx_u1|addr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(3),
	datac => \inst|uart_tx_u1|addr\(0),
	datad => \inst|uart_tx_u1|addr\(6),
	combout => \inst|uart_tx_u1|AT|rom~94_combout\);

-- Location: LCCOMB_X28_Y13_N0
\inst|uart_tx_u1|AT|rom~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~96_combout\ = (\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(1))) # (!\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(1) & ((!\inst|uart_tx_u1|AT|rom~94_combout\))) # (!\inst|uart_tx_u1|addr\(1) & 
-- (\inst|uart_tx_u1|AT|rom~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|AT|rom~95_combout\,
	datad => \inst|uart_tx_u1|AT|rom~94_combout\,
	combout => \inst|uart_tx_u1|AT|rom~96_combout\);

-- Location: LCCOMB_X28_Y13_N8
\inst|uart_tx_u1|AT|rom~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~98_combout\ = (\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|AT|rom~96_combout\ & (\inst|uart_tx_u1|AT|rom~97_combout\)) # (!\inst|uart_tx_u1|AT|rom~96_combout\ & ((\inst|uart_tx_u1|AT|rom~93_combout\))))) # 
-- (!\inst|uart_tx_u1|addr\(5) & (((\inst|uart_tx_u1|AT|rom~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|AT|rom~97_combout\,
	datac => \inst|uart_tx_u1|AT|rom~93_combout\,
	datad => \inst|uart_tx_u1|AT|rom~96_combout\,
	combout => \inst|uart_tx_u1|AT|rom~98_combout\);

-- Location: LCCOMB_X28_Y13_N30
\inst|uart_tx_u1|AT|rom~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~91_combout\ = (\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(0)) # (\inst|uart_tx_u1|addr\(6) $ (\inst|uart_tx_u1|addr\(3))))) # (!\inst|uart_tx_u1|addr\(1) & (((\inst|uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(6),
	datab => \inst|uart_tx_u1|addr\(3),
	datac => \inst|uart_tx_u1|addr\(1),
	datad => \inst|uart_tx_u1|addr\(0),
	combout => \inst|uart_tx_u1|AT|rom~91_combout\);

-- Location: LCCOMB_X28_Y13_N4
\inst|uart_tx_u1|AT|rom~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~88_combout\ = (\inst|uart_tx_u1|addr\(6) & ((\inst|uart_tx_u1|addr\(1)) # ((\inst|uart_tx_u1|addr\(3))))) # (!\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(1) $ (\inst|uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(3),
	datac => \inst|uart_tx_u1|addr\(0),
	datad => \inst|uart_tx_u1|addr\(6),
	combout => \inst|uart_tx_u1|AT|rom~88_combout\);

-- Location: LCCOMB_X28_Y13_N6
\inst|uart_tx_u1|AT|rom~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~89_combout\ = (\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(3) $ (((!\inst|uart_tx_u1|addr\(6)))))) # (!\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(3) $ (!\inst|uart_tx_u1|addr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(3),
	datac => \inst|uart_tx_u1|addr\(0),
	datad => \inst|uart_tx_u1|addr\(6),
	combout => \inst|uart_tx_u1|AT|rom~89_combout\);

-- Location: LCCOMB_X28_Y13_N20
\inst|uart_tx_u1|AT|rom~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~90_combout\ = (\inst|uart_tx_u1|addr\(5) & (!\inst|uart_tx_u1|addr\(4) & ((!\inst|uart_tx_u1|AT|rom~89_combout\)))) # (!\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|AT|rom~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|AT|rom~88_combout\,
	datad => \inst|uart_tx_u1|AT|rom~89_combout\,
	combout => \inst|uart_tx_u1|AT|rom~90_combout\);

-- Location: LCCOMB_X28_Y13_N16
\inst|uart_tx_u1|AT|rom~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~92_combout\ = (\inst|uart_tx_u1|AT|rom~90_combout\) # ((\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|addr\(5) & !\inst|uart_tx_u1|AT|rom~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|AT|rom~91_combout\,
	datad => \inst|uart_tx_u1|AT|rom~90_combout\,
	combout => \inst|uart_tx_u1|AT|rom~92_combout\);

-- Location: LCCOMB_X28_Y13_N22
\inst|uart_tx_u1|AT|rom~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~99_combout\ = (\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(7)) # ((\inst|uart_tx_u1|AT|rom~92_combout\)))) # (!\inst|uart_tx_u1|addr\(2) & (!\inst|uart_tx_u1|addr\(7) & (\inst|uart_tx_u1|AT|rom~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(7),
	datac => \inst|uart_tx_u1|AT|rom~98_combout\,
	datad => \inst|uart_tx_u1|AT|rom~92_combout\,
	combout => \inst|uart_tx_u1|AT|rom~99_combout\);

-- Location: LCCOMB_X27_Y15_N26
\inst|uart_tx_u1|AT|rom~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~100_combout\ = (\inst|uart_tx_u1|addr\(6)) # ((\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(3)) # (!\inst|uart_tx_u1|addr\(0)))) # (!\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(3) $ (\inst|uart_tx_u1|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(6),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(3),
	datad => \inst|uart_tx_u1|addr\(0),
	combout => \inst|uart_tx_u1|AT|rom~100_combout\);

-- Location: LCCOMB_X28_Y13_N12
\inst|uart_tx_u1|AT|rom~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~101_combout\ = (\inst|uart_tx_u1|addr\(4)) # ((\inst|uart_tx_u1|addr\(5)) # (\inst|uart_tx_u1|AT|rom~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|addr\(5),
	datad => \inst|uart_tx_u1|AT|rom~100_combout\,
	combout => \inst|uart_tx_u1|AT|rom~101_combout\);

-- Location: LCCOMB_X28_Y13_N10
\inst|uart_tx_u1|AT|rom~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~102_combout\ = (\inst|uart_tx_u1|addr\(7) & ((\inst|uart_tx_u1|AT|rom~99_combout\ & ((!\inst|uart_tx_u1|AT|rom~101_combout\))) # (!\inst|uart_tx_u1|AT|rom~99_combout\ & (\inst|uart_tx_u1|AT|rom~87_combout\)))) # 
-- (!\inst|uart_tx_u1|addr\(7) & (((\inst|uart_tx_u1|AT|rom~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(7),
	datab => \inst|uart_tx_u1|AT|rom~87_combout\,
	datac => \inst|uart_tx_u1|AT|rom~99_combout\,
	datad => \inst|uart_tx_u1|AT|rom~101_combout\,
	combout => \inst|uart_tx_u1|AT|rom~102_combout\);

-- Location: LCCOMB_X28_Y15_N20
\inst|uart_tx_u1|AT|rom~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~104_combout\ = (\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(6)) # ((\inst|uart_tx_u1|addr\(2)) # (!\inst|uart_tx_u1|addr\(3))))) # (!\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(6) & (!\inst|uart_tx_u1|addr\(2) & 
-- !\inst|uart_tx_u1|addr\(3))) # (!\inst|uart_tx_u1|addr\(6) & ((\inst|uart_tx_u1|addr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(6),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~104_combout\);

-- Location: LCCOMB_X28_Y15_N4
\inst|uart_tx_u1|AT|rom~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~108_combout\ = (\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(2)) # (\inst|uart_tx_u1|addr\(6) $ (\inst|uart_tx_u1|addr\(3))))) # (!\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(3)) # ((\inst|uart_tx_u1|addr\(6) & 
-- !\inst|uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(6),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~108_combout\);

-- Location: LCCOMB_X28_Y15_N30
\inst|uart_tx_u1|AT|rom~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~105_combout\ = (\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(6) & ((\inst|uart_tx_u1|addr\(3)) # (!\inst|uart_tx_u1|addr\(2)))) # (!\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|addr\(2))))) # (!\inst|uart_tx_u1|addr\(1) & 
-- (\inst|uart_tx_u1|addr\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(6),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~105_combout\);

-- Location: LCCOMB_X28_Y15_N16
\inst|uart_tx_u1|AT|rom~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~106_combout\ = (!\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|addr\(2) $ (\inst|uart_tx_u1|addr\(3)))) # (!\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|addr\(2) & \inst|uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(6),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~106_combout\);

-- Location: LCCOMB_X28_Y15_N2
\inst|uart_tx_u1|AT|rom~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~107_combout\ = (\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(4))) # (!\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|AT|rom~105_combout\)) # (!\inst|uart_tx_u1|addr\(4) & 
-- ((!\inst|uart_tx_u1|AT|rom~106_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|AT|rom~105_combout\,
	datad => \inst|uart_tx_u1|AT|rom~106_combout\,
	combout => \inst|uart_tx_u1|AT|rom~107_combout\);

-- Location: LCCOMB_X28_Y15_N26
\inst|uart_tx_u1|AT|rom~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~109_combout\ = (\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|AT|rom~107_combout\ & ((!\inst|uart_tx_u1|AT|rom~108_combout\))) # (!\inst|uart_tx_u1|AT|rom~107_combout\ & (\inst|uart_tx_u1|AT|rom~104_combout\)))) # 
-- (!\inst|uart_tx_u1|addr\(5) & (((\inst|uart_tx_u1|AT|rom~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|AT|rom~104_combout\,
	datac => \inst|uart_tx_u1|AT|rom~108_combout\,
	datad => \inst|uart_tx_u1|AT|rom~107_combout\,
	combout => \inst|uart_tx_u1|AT|rom~109_combout\);

-- Location: LCCOMB_X28_Y15_N24
\inst|uart_tx_u1|AT|rom~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~114_combout\ = (\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(2) & ((!\inst|uart_tx_u1|addr\(3)))) # (!\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(6))))) # (!\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(3) & 
-- ((\inst|uart_tx_u1|addr\(2)) # (!\inst|uart_tx_u1|addr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(6),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~114_combout\);

-- Location: LCCOMB_X28_Y15_N8
\inst|uart_tx_u1|AT|rom~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~110_combout\ = (\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|addr\(1) $ ((!\inst|uart_tx_u1|addr\(6))))) # (!\inst|uart_tx_u1|addr\(3) & (!\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(1) $ (\inst|uart_tx_u1|addr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(6),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~110_combout\);

-- Location: LCCOMB_X28_Y15_N22
\inst|uart_tx_u1|AT|rom~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~111_combout\ = (\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(2) & !\inst|uart_tx_u1|addr\(3)))) # (!\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|addr\(1) $ (((!\inst|uart_tx_u1|addr\(2) & 
-- \inst|uart_tx_u1|addr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(6),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~111_combout\);

-- Location: LCCOMB_X28_Y15_N12
\inst|uart_tx_u1|AT|rom~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~112_combout\ = (\inst|uart_tx_u1|addr\(1) & (!\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(6) $ (\inst|uart_tx_u1|addr\(3))))) # (!\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|addr\(2) $ 
-- (!\inst|uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(6),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~112_combout\);

-- Location: LCCOMB_X28_Y15_N6
\inst|uart_tx_u1|AT|rom~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~113_combout\ = (\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(4)) # ((\inst|uart_tx_u1|AT|rom~111_combout\)))) # (!\inst|uart_tx_u1|addr\(5) & (!\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|AT|rom~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|AT|rom~111_combout\,
	datad => \inst|uart_tx_u1|AT|rom~112_combout\,
	combout => \inst|uart_tx_u1|AT|rom~113_combout\);

-- Location: LCCOMB_X28_Y15_N18
\inst|uart_tx_u1|AT|rom~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~115_combout\ = (\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|AT|rom~113_combout\ & (!\inst|uart_tx_u1|AT|rom~114_combout\)) # (!\inst|uart_tx_u1|AT|rom~113_combout\ & ((\inst|uart_tx_u1|AT|rom~110_combout\))))) # 
-- (!\inst|uart_tx_u1|addr\(4) & (((\inst|uart_tx_u1|AT|rom~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|AT|rom~114_combout\,
	datac => \inst|uart_tx_u1|AT|rom~110_combout\,
	datad => \inst|uart_tx_u1|AT|rom~113_combout\,
	combout => \inst|uart_tx_u1|AT|rom~115_combout\);

-- Location: LCCOMB_X28_Y15_N28
\inst|uart_tx_u1|AT|rom~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~116_combout\ = (\inst|uart_tx_u1|addr\(7) & (\inst|uart_tx_u1|addr\(0))) # (!\inst|uart_tx_u1|addr\(7) & ((\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|AT|rom~109_combout\)) # (!\inst|uart_tx_u1|addr\(0) & 
-- ((\inst|uart_tx_u1|AT|rom~115_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(7),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|AT|rom~109_combout\,
	datad => \inst|uart_tx_u1|AT|rom~115_combout\,
	combout => \inst|uart_tx_u1|AT|rom~116_combout\);

-- Location: LCCOMB_X26_Y14_N16
\inst|uart_tx_u1|AT|rom~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~117_combout\ = (\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(3)) # (\inst|uart_tx_u1|addr\(4) $ (!\inst|uart_tx_u1|addr\(2))))) # (!\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(4)) # (\inst|uart_tx_u1|addr\(3) $ 
-- (\inst|uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(3),
	datac => \inst|uart_tx_u1|addr\(1),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~117_combout\);

-- Location: LCCOMB_X26_Y17_N28
\inst|uart_tx_u1|AT|rom~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~103_combout\ = (\inst|uart_tx_u1|addr\(1) & (!\inst|uart_tx_u1|addr\(4) & (!\inst|uart_tx_u1|addr\(2) & \inst|uart_tx_u1|addr\(3)))) # (!\inst|uart_tx_u1|addr\(1) & (!\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|addr\(4) $ 
-- (\inst|uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~103_combout\);

-- Location: LCCOMB_X27_Y17_N20
\inst|uart_tx_u1|AT|rom~127\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~127_combout\ = (!\inst|uart_tx_u1|addr\(6) & (!\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|AT|rom~103_combout\) # (\inst|uart_tx_u1|AT|rom~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(6),
	datab => \inst|uart_tx_u1|AT|rom~103_combout\,
	datac => \inst|uart_tx_u1|addr\(5),
	datad => \inst|uart_tx_u1|AT|rom~116_combout\,
	combout => \inst|uart_tx_u1|AT|rom~127_combout\);

-- Location: LCCOMB_X27_Y17_N10
\inst|uart_tx_u1|AT|rom~128\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~128_combout\ = (\inst|uart_tx_u1|addr\(7) & (\inst|uart_tx_u1|AT|rom~127_combout\ & ((!\inst|uart_tx_u1|AT|rom~117_combout\) # (!\inst|uart_tx_u1|AT|rom~116_combout\)))) # (!\inst|uart_tx_u1|addr\(7) & 
-- (\inst|uart_tx_u1|AT|rom~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|AT|rom~116_combout\,
	datab => \inst|uart_tx_u1|AT|rom~117_combout\,
	datac => \inst|uart_tx_u1|addr\(7),
	datad => \inst|uart_tx_u1|AT|rom~127_combout\,
	combout => \inst|uart_tx_u1|AT|rom~128_combout\);

-- Location: LCCOMB_X27_Y17_N8
\inst|uart_tx_u1|Equal4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Equal4~2_combout\ = (\inst|uart_tx_u1|AT|rom~124_combout\) # ((\inst|uart_tx_u1|AT|rom~102_combout\) # (\inst|uart_tx_u1|AT|rom~128_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|AT|rom~124_combout\,
	datac => \inst|uart_tx_u1|AT|rom~102_combout\,
	datad => \inst|uart_tx_u1|AT|rom~128_combout\,
	combout => \inst|uart_tx_u1|Equal4~2_combout\);

-- Location: LCCOMB_X27_Y17_N4
\inst|uart_tx_u1|always0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|always0~4_combout\ = (\inst|uart_tx_u1|always0~1_combout\ & (!\inst|uart_tx_u1|Equal4~2_combout\ & !\inst|uart_tx_u1|Equal4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|always0~1_combout\,
	datab => \inst|uart_tx_u1|Equal4~2_combout\,
	datac => \inst|uart_tx_u1|Equal4~3_combout\,
	combout => \inst|uart_tx_u1|always0~4_combout\);

-- Location: LCCOMB_X28_Y17_N10
\inst|uart_tx_u1|Send_addr_w[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Send_addr_w[0]~0_combout\ = (\inst|uart_tx_u1|stage_tx.STOP~q\ & (\inst|uart_tx_u1|always0~4_combout\ & \inst|uart_tx_u1|always0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|stage_tx.STOP~q\,
	datac => \inst|uart_tx_u1|always0~4_combout\,
	datad => \inst|uart_tx_u1|always0~0_combout\,
	combout => \inst|uart_tx_u1|Send_addr_w[0]~0_combout\);

-- Location: FF_X29_Y16_N1
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

-- Location: LCCOMB_X26_Y14_N10
\inst|uart_tx_u1|addr~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~12_combout\ = (\inst|uart_tx_u1|always0~1_combout\ & (\inst|uart_tx_u1|enable~q\ & (!\inst|uart_tx_u1|Equal4~3_combout\ & !\inst|uart_tx_u1|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|always0~1_combout\,
	datab => \inst|uart_tx_u1|enable~q\,
	datac => \inst|uart_tx_u1|Equal4~3_combout\,
	datad => \inst|uart_tx_u1|Equal4~2_combout\,
	combout => \inst|uart_tx_u1|addr~12_combout\);

-- Location: LCCOMB_X26_Y17_N10
\inst|uart_tx_u1|Add16~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add16~10_combout\ = (\inst|uart_tx_u1|addr\(5) & (!\inst|uart_tx_u1|Add16~9\)) # (!\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|Add16~9\) # (GND)))
-- \inst|uart_tx_u1|Add16~11\ = CARRY((!\inst|uart_tx_u1|Add16~9\) # (!\inst|uart_tx_u1|addr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|addr\(5),
	datad => VCC,
	cin => \inst|uart_tx_u1|Add16~9\,
	combout => \inst|uart_tx_u1|Add16~10_combout\,
	cout => \inst|uart_tx_u1|Add16~11\);

-- Location: LCCOMB_X27_Y17_N22
\inst|uart_tx_u1|Send_addr[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Send_addr[5]~4_combout\ = (\inst|uart_tx_u1|always1~0_combout\ & (\inst|uart_tx_u1|Add16~10_combout\)) # (!\inst|uart_tx_u1|always1~0_combout\ & ((\inst|uart_tx_u1|Send_addr_w\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Add16~10_combout\,
	datac => \inst|uart_tx_u1|Send_addr_w\(5),
	datad => \inst|uart_tx_u1|always1~0_combout\,
	combout => \inst|uart_tx_u1|Send_addr[5]~4_combout\);

-- Location: FF_X27_Y17_N23
\inst|uart_tx_u1|Send_addr_w[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|Send_addr[5]~4_combout\,
	clrn => \res~input_o\,
	ena => \inst|uart_tx_u1|Send_addr_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|Send_addr_w\(5));

-- Location: LCCOMB_X27_Y14_N12
\inst|uart_tx_u1|addr[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr[5]~5_combout\ = (\inst|uart_tx_u1|addr~12_combout\ & (\inst|uart_tx_u1|Send_addr_w\(5))) # (!\inst|uart_tx_u1|addr~12_combout\ & ((\inst|uart_tx_u1|Add16~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr~12_combout\,
	datab => \inst|uart_tx_u1|Send_addr_w\(5),
	datad => \inst|uart_tx_u1|Add16~10_combout\,
	combout => \inst|uart_tx_u1|addr[5]~5_combout\);

-- Location: LCCOMB_X27_Y16_N20
\inst|uart_tx_u1|Add7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add7~10_combout\ = (\inst|uart_tx_u1|Send_addr[5]~4_combout\ & (\inst|uart_tx_u1|Add7~9\ & VCC)) # (!\inst|uart_tx_u1|Send_addr[5]~4_combout\ & (!\inst|uart_tx_u1|Add7~9\))
-- \inst|uart_tx_u1|Add7~11\ = CARRY((!\inst|uart_tx_u1|Send_addr[5]~4_combout\ & !\inst|uart_tx_u1|Add7~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add7~9\,
	combout => \inst|uart_tx_u1|Add7~10_combout\,
	cout => \inst|uart_tx_u1|Add7~11\);

-- Location: LCCOMB_X27_Y13_N18
\inst|uart_tx_u1|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add3~10_combout\ = (\inst|uart_tx_u1|Send_addr[5]~4_combout\ & (!\inst|uart_tx_u1|Add3~9\)) # (!\inst|uart_tx_u1|Send_addr[5]~4_combout\ & ((\inst|uart_tx_u1|Add3~9\) # (GND)))
-- \inst|uart_tx_u1|Add3~11\ = CARRY((!\inst|uart_tx_u1|Add3~9\) # (!\inst|uart_tx_u1|Send_addr[5]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add3~9\,
	combout => \inst|uart_tx_u1|Add3~10_combout\,
	cout => \inst|uart_tx_u1|Add3~11\);

-- Location: LCCOMB_X27_Y14_N2
\inst|uart_tx_u1|addr~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~19_combout\ = (\inst|Select_mode_u1|LED_select\(2) & (\inst|uart_tx_u1|Add7~10_combout\)) # (!\inst|Select_mode_u1|LED_select\(2) & ((\inst|uart_tx_u1|Add3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Select_mode_u1|LED_select\(2),
	datac => \inst|uart_tx_u1|Add7~10_combout\,
	datad => \inst|uart_tx_u1|Add3~10_combout\,
	combout => \inst|uart_tx_u1|addr~19_combout\);

-- Location: LCCOMB_X26_Y13_N24
\inst|uart_tx_u1|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add1~10_combout\ = (\inst|uart_tx_u1|Send_addr[5]~4_combout\ & (!\inst|uart_tx_u1|Add1~9\)) # (!\inst|uart_tx_u1|Send_addr[5]~4_combout\ & ((\inst|uart_tx_u1|Add1~9\) # (GND)))
-- \inst|uart_tx_u1|Add1~11\ = CARRY((!\inst|uart_tx_u1|Add1~9\) # (!\inst|uart_tx_u1|Send_addr[5]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add1~9\,
	combout => \inst|uart_tx_u1|Add1~10_combout\,
	cout => \inst|uart_tx_u1|Add1~11\);

-- Location: LCCOMB_X26_Y15_N14
\inst|uart_tx_u1|Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add5~10_combout\ = (\inst|uart_tx_u1|Send_addr[5]~4_combout\ & (!\inst|uart_tx_u1|Add5~9\)) # (!\inst|uart_tx_u1|Send_addr[5]~4_combout\ & ((\inst|uart_tx_u1|Add5~9\) # (GND)))
-- \inst|uart_tx_u1|Add5~11\ = CARRY((!\inst|uart_tx_u1|Add5~9\) # (!\inst|uart_tx_u1|Send_addr[5]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add5~9\,
	combout => \inst|uart_tx_u1|Add5~10_combout\,
	cout => \inst|uart_tx_u1|Add5~11\);

-- Location: LCCOMB_X27_Y14_N30
\inst|uart_tx_u1|addr~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~15_combout\ = (\inst|Select_mode_u1|LED_select\(2) & ((\inst|uart_tx_u1|Add5~10_combout\))) # (!\inst|Select_mode_u1|LED_select\(2) & (\inst|uart_tx_u1|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Select_mode_u1|LED_select\(2),
	datac => \inst|uart_tx_u1|Add1~10_combout\,
	datad => \inst|uart_tx_u1|Add5~10_combout\,
	combout => \inst|uart_tx_u1|addr~15_combout\);

-- Location: LCCOMB_X26_Y17_N22
\inst|uart_tx_u1|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add2~6_combout\ = (\inst|uart_tx_u1|Send_addr[5]~4_combout\ & (!\inst|uart_tx_u1|Add2~5\)) # (!\inst|uart_tx_u1|Send_addr[5]~4_combout\ & ((\inst|uart_tx_u1|Add2~5\) # (GND)))
-- \inst|uart_tx_u1|Add2~7\ = CARRY((!\inst|uart_tx_u1|Add2~5\) # (!\inst|uart_tx_u1|Send_addr[5]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add2~5\,
	combout => \inst|uart_tx_u1|Add2~6_combout\,
	cout => \inst|uart_tx_u1|Add2~7\);

-- Location: LCCOMB_X27_Y14_N8
\inst|uart_tx_u1|addr~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~16_combout\ = (\inst|Select_mode_u1|LED_select\(2) & ((!\inst|uart_tx_u1|Send_addr[5]~4_combout\))) # (!\inst|Select_mode_u1|LED_select\(2) & (\inst|uart_tx_u1|Add2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Select_mode_u1|LED_select\(2),
	datac => \inst|uart_tx_u1|Add2~6_combout\,
	datad => \inst|uart_tx_u1|Send_addr[5]~4_combout\,
	combout => \inst|uart_tx_u1|addr~16_combout\);

-- Location: LCCOMB_X27_Y14_N24
\inst|uart_tx_u1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add0~8_combout\ = (\inst|uart_tx_u1|Send_addr[5]~4_combout\ & (\inst|uart_tx_u1|Add0~7\ $ (GND))) # (!\inst|uart_tx_u1|Send_addr[5]~4_combout\ & (!\inst|uart_tx_u1|Add0~7\ & VCC))
-- \inst|uart_tx_u1|Add0~9\ = CARRY((\inst|uart_tx_u1|Send_addr[5]~4_combout\ & !\inst|uart_tx_u1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add0~7\,
	combout => \inst|uart_tx_u1|Add0~8_combout\,
	cout => \inst|uart_tx_u1|Add0~9\);

-- Location: LCCOMB_X27_Y15_N20
\inst|uart_tx_u1|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add4~8_combout\ = (\inst|uart_tx_u1|Send_addr[5]~4_combout\ & (\inst|uart_tx_u1|Add4~7\ $ (GND))) # (!\inst|uart_tx_u1|Send_addr[5]~4_combout\ & (!\inst|uart_tx_u1|Add4~7\ & VCC))
-- \inst|uart_tx_u1|Add4~9\ = CARRY((\inst|uart_tx_u1|Send_addr[5]~4_combout\ & !\inst|uart_tx_u1|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add4~7\,
	combout => \inst|uart_tx_u1|Add4~8_combout\,
	cout => \inst|uart_tx_u1|Add4~9\);

-- Location: LCCOMB_X27_Y14_N10
\inst|uart_tx_u1|addr~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~17_combout\ = (\inst|Select_mode_u1|LED_select\(2) & ((\inst|uart_tx_u1|Add4~8_combout\))) # (!\inst|Select_mode_u1|LED_select\(2) & (\inst|uart_tx_u1|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Add0~8_combout\,
	datac => \inst|Select_mode_u1|LED_select\(2),
	datad => \inst|uart_tx_u1|Add4~8_combout\,
	combout => \inst|uart_tx_u1|addr~17_combout\);

-- Location: LCCOMB_X27_Y14_N0
\inst|uart_tx_u1|addr~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~18_combout\ = (\inst|Select_mode_u1|LED_select\(0) & (\inst|Select_mode_u1|LED_select\(1))) # (!\inst|Select_mode_u1|LED_select\(0) & ((\inst|Select_mode_u1|LED_select\(1) & (\inst|uart_tx_u1|addr~16_combout\)) # 
-- (!\inst|Select_mode_u1|LED_select\(1) & ((\inst|uart_tx_u1|addr~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(0),
	datab => \inst|Select_mode_u1|LED_select\(1),
	datac => \inst|uart_tx_u1|addr~16_combout\,
	datad => \inst|uart_tx_u1|addr~17_combout\,
	combout => \inst|uart_tx_u1|addr~18_combout\);

-- Location: LCCOMB_X27_Y14_N14
\inst|uart_tx_u1|addr~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~20_combout\ = (\inst|Select_mode_u1|LED_select\(0) & ((\inst|uart_tx_u1|addr~18_combout\ & (\inst|uart_tx_u1|addr~19_combout\)) # (!\inst|uart_tx_u1|addr~18_combout\ & ((\inst|uart_tx_u1|addr~15_combout\))))) # 
-- (!\inst|Select_mode_u1|LED_select\(0) & (((\inst|uart_tx_u1|addr~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(0),
	datab => \inst|uart_tx_u1|addr~19_combout\,
	datac => \inst|uart_tx_u1|addr~15_combout\,
	datad => \inst|uart_tx_u1|addr~18_combout\,
	combout => \inst|uart_tx_u1|addr~20_combout\);

-- Location: FF_X27_Y14_N13
\inst|uart_tx_u1|addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|addr[5]~5_combout\,
	asdata => \inst|uart_tx_u1|addr~20_combout\,
	clrn => \res~input_o\,
	sload => \inst|uart_tx_u1|always0~3_combout\,
	ena => \inst|uart_tx_u1|addr[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|addr\(5));

-- Location: LCCOMB_X26_Y17_N12
\inst|uart_tx_u1|Add16~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add16~12_combout\ = (\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|Add16~11\ $ (GND))) # (!\inst|uart_tx_u1|addr\(6) & (!\inst|uart_tx_u1|Add16~11\ & VCC))
-- \inst|uart_tx_u1|Add16~13\ = CARRY((\inst|uart_tx_u1|addr\(6) & !\inst|uart_tx_u1|Add16~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|addr\(6),
	datad => VCC,
	cin => \inst|uart_tx_u1|Add16~11\,
	combout => \inst|uart_tx_u1|Add16~12_combout\,
	cout => \inst|uart_tx_u1|Add16~13\);

-- Location: LCCOMB_X27_Y17_N14
\inst|uart_tx_u1|Send_addr[6]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Send_addr[6]~7_combout\ = (\inst|uart_tx_u1|always1~0_combout\ & (\inst|uart_tx_u1|Add16~12_combout\)) # (!\inst|uart_tx_u1|always1~0_combout\ & ((\inst|uart_tx_u1|Send_addr_w\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Add16~12_combout\,
	datac => \inst|uart_tx_u1|Send_addr_w\(6),
	datad => \inst|uart_tx_u1|always1~0_combout\,
	combout => \inst|uart_tx_u1|Send_addr[6]~7_combout\);

-- Location: FF_X27_Y17_N15
\inst|uart_tx_u1|Send_addr_w[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|Send_addr[6]~7_combout\,
	clrn => \res~input_o\,
	ena => \inst|uart_tx_u1|Send_addr_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|Send_addr_w\(6));

-- Location: LCCOMB_X27_Y15_N6
\inst|uart_tx_u1|addr[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr[6]~1_combout\ = (\inst|uart_tx_u1|addr~12_combout\ & ((\inst|uart_tx_u1|Send_addr_w\(6)))) # (!\inst|uart_tx_u1|addr~12_combout\ & (\inst|uart_tx_u1|Add16~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Add16~12_combout\,
	datab => \inst|uart_tx_u1|Send_addr_w\(6),
	datad => \inst|uart_tx_u1|addr~12_combout\,
	combout => \inst|uart_tx_u1|addr[6]~1_combout\);

-- Location: LCCOMB_X27_Y15_N22
\inst|uart_tx_u1|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add4~10_combout\ = (\inst|uart_tx_u1|Send_addr[6]~7_combout\ & (!\inst|uart_tx_u1|Add4~9\)) # (!\inst|uart_tx_u1|Send_addr[6]~7_combout\ & ((\inst|uart_tx_u1|Add4~9\) # (GND)))
-- \inst|uart_tx_u1|Add4~11\ = CARRY((!\inst|uart_tx_u1|Add4~9\) # (!\inst|uart_tx_u1|Send_addr[6]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add4~9\,
	combout => \inst|uart_tx_u1|Add4~10_combout\,
	cout => \inst|uart_tx_u1|Add4~11\);

-- Location: LCCOMB_X27_Y17_N12
\inst|uart_tx_u1|Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add6~8_combout\ = \inst|uart_tx_u1|Send_addr[6]~7_combout\ $ (((\inst|uart_tx_u1|always1~0_combout\ & ((\inst|uart_tx_u1|Add16~10_combout\))) # (!\inst|uart_tx_u1|always1~0_combout\ & (\inst|uart_tx_u1|Send_addr_w\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr_w\(5),
	datab => \inst|uart_tx_u1|Add16~10_combout\,
	datac => \inst|uart_tx_u1|Send_addr[6]~7_combout\,
	datad => \inst|uart_tx_u1|always1~0_combout\,
	combout => \inst|uart_tx_u1|Add6~8_combout\);

-- Location: LCCOMB_X26_Y17_N24
\inst|uart_tx_u1|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add2~8_combout\ = (\inst|uart_tx_u1|Send_addr[6]~7_combout\ & (\inst|uart_tx_u1|Add2~7\ $ (GND))) # (!\inst|uart_tx_u1|Send_addr[6]~7_combout\ & (!\inst|uart_tx_u1|Add2~7\ & VCC))
-- \inst|uart_tx_u1|Add2~9\ = CARRY((\inst|uart_tx_u1|Send_addr[6]~7_combout\ & !\inst|uart_tx_u1|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add2~7\,
	combout => \inst|uart_tx_u1|Add2~8_combout\,
	cout => \inst|uart_tx_u1|Add2~9\);

-- Location: LCCOMB_X27_Y14_N26
\inst|uart_tx_u1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add0~10_combout\ = (\inst|uart_tx_u1|Send_addr[6]~7_combout\ & (!\inst|uart_tx_u1|Add0~9\)) # (!\inst|uart_tx_u1|Send_addr[6]~7_combout\ & ((\inst|uart_tx_u1|Add0~9\) # (GND)))
-- \inst|uart_tx_u1|Add0~11\ = CARRY((!\inst|uart_tx_u1|Add0~9\) # (!\inst|uart_tx_u1|Send_addr[6]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add0~9\,
	combout => \inst|uart_tx_u1|Add0~10_combout\,
	cout => \inst|uart_tx_u1|Add0~11\);

-- Location: LCCOMB_X27_Y15_N10
\inst|uart_tx_u1|addr~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~40_combout\ = (\inst|Select_mode_u1|LED_select\(1) & ((\inst|Select_mode_u1|LED_select\(2)) # ((\inst|uart_tx_u1|Add2~8_combout\)))) # (!\inst|Select_mode_u1|LED_select\(1) & (!\inst|Select_mode_u1|LED_select\(2) & 
-- ((\inst|uart_tx_u1|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(1),
	datab => \inst|Select_mode_u1|LED_select\(2),
	datac => \inst|uart_tx_u1|Add2~8_combout\,
	datad => \inst|uart_tx_u1|Add0~10_combout\,
	combout => \inst|uart_tx_u1|addr~40_combout\);

-- Location: LCCOMB_X27_Y15_N8
\inst|uart_tx_u1|addr~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~41_combout\ = (\inst|Select_mode_u1|LED_select\(2) & ((\inst|uart_tx_u1|addr~40_combout\ & ((\inst|uart_tx_u1|Add6~8_combout\))) # (!\inst|uart_tx_u1|addr~40_combout\ & (\inst|uart_tx_u1|Add4~10_combout\)))) # 
-- (!\inst|Select_mode_u1|LED_select\(2) & (((\inst|uart_tx_u1|addr~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Add4~10_combout\,
	datab => \inst|uart_tx_u1|Add6~8_combout\,
	datac => \inst|Select_mode_u1|LED_select\(2),
	datad => \inst|uart_tx_u1|addr~40_combout\,
	combout => \inst|uart_tx_u1|addr~41_combout\);

-- Location: LCCOMB_X27_Y16_N22
\inst|uart_tx_u1|Add7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add7~12_combout\ = (\inst|uart_tx_u1|Send_addr[6]~7_combout\ & (\inst|uart_tx_u1|Add7~11\ $ (GND))) # (!\inst|uart_tx_u1|Send_addr[6]~7_combout\ & (!\inst|uart_tx_u1|Add7~11\ & VCC))
-- \inst|uart_tx_u1|Add7~13\ = CARRY((\inst|uart_tx_u1|Send_addr[6]~7_combout\ & !\inst|uart_tx_u1|Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add7~11\,
	combout => \inst|uart_tx_u1|Add7~12_combout\,
	cout => \inst|uart_tx_u1|Add7~13\);

-- Location: LCCOMB_X26_Y15_N16
\inst|uart_tx_u1|Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add5~12_combout\ = (\inst|uart_tx_u1|Send_addr[6]~7_combout\ & (\inst|uart_tx_u1|Add5~11\ $ (GND))) # (!\inst|uart_tx_u1|Send_addr[6]~7_combout\ & (!\inst|uart_tx_u1|Add5~11\ & VCC))
-- \inst|uart_tx_u1|Add5~13\ = CARRY((\inst|uart_tx_u1|Send_addr[6]~7_combout\ & !\inst|uart_tx_u1|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add5~11\,
	combout => \inst|uart_tx_u1|Add5~12_combout\,
	cout => \inst|uart_tx_u1|Add5~13\);

-- Location: LCCOMB_X26_Y13_N26
\inst|uart_tx_u1|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add1~12_combout\ = (\inst|uart_tx_u1|Send_addr[6]~7_combout\ & (\inst|uart_tx_u1|Add1~11\ $ (GND))) # (!\inst|uart_tx_u1|Send_addr[6]~7_combout\ & (!\inst|uart_tx_u1|Add1~11\ & VCC))
-- \inst|uart_tx_u1|Add1~13\ = CARRY((\inst|uart_tx_u1|Send_addr[6]~7_combout\ & !\inst|uart_tx_u1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add1~11\,
	combout => \inst|uart_tx_u1|Add1~12_combout\,
	cout => \inst|uart_tx_u1|Add1~13\);

-- Location: LCCOMB_X27_Y13_N20
\inst|uart_tx_u1|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add3~12_combout\ = (\inst|uart_tx_u1|Send_addr[6]~7_combout\ & (\inst|uart_tx_u1|Add3~11\ $ (GND))) # (!\inst|uart_tx_u1|Send_addr[6]~7_combout\ & (!\inst|uart_tx_u1|Add3~11\ & VCC))
-- \inst|uart_tx_u1|Add3~13\ = CARRY((\inst|uart_tx_u1|Send_addr[6]~7_combout\ & !\inst|uart_tx_u1|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add3~11\,
	combout => \inst|uart_tx_u1|Add3~12_combout\,
	cout => \inst|uart_tx_u1|Add3~13\);

-- Location: LCCOMB_X27_Y13_N26
\inst|uart_tx_u1|addr~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~38_combout\ = (\inst|Select_mode_u1|LED_select\(2) & (((\inst|Select_mode_u1|LED_select\(1))))) # (!\inst|Select_mode_u1|LED_select\(2) & ((\inst|Select_mode_u1|LED_select\(1) & ((\inst|uart_tx_u1|Add3~12_combout\))) # 
-- (!\inst|Select_mode_u1|LED_select\(1) & (\inst|uart_tx_u1|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Add1~12_combout\,
	datab => \inst|Select_mode_u1|LED_select\(2),
	datac => \inst|Select_mode_u1|LED_select\(1),
	datad => \inst|uart_tx_u1|Add3~12_combout\,
	combout => \inst|uart_tx_u1|addr~38_combout\);

-- Location: LCCOMB_X27_Y15_N2
\inst|uart_tx_u1|addr~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~39_combout\ = (\inst|Select_mode_u1|LED_select\(2) & ((\inst|uart_tx_u1|addr~38_combout\ & (\inst|uart_tx_u1|Add7~12_combout\)) # (!\inst|uart_tx_u1|addr~38_combout\ & ((\inst|uart_tx_u1|Add5~12_combout\))))) # 
-- (!\inst|Select_mode_u1|LED_select\(2) & (((\inst|uart_tx_u1|addr~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Add7~12_combout\,
	datab => \inst|Select_mode_u1|LED_select\(2),
	datac => \inst|uart_tx_u1|Add5~12_combout\,
	datad => \inst|uart_tx_u1|addr~38_combout\,
	combout => \inst|uart_tx_u1|addr~39_combout\);

-- Location: LCCOMB_X27_Y15_N30
\inst|uart_tx_u1|addr~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~42_combout\ = (\inst|Select_mode_u1|LED_select\(0) & ((\inst|uart_tx_u1|addr~39_combout\))) # (!\inst|Select_mode_u1|LED_select\(0) & (\inst|uart_tx_u1|addr~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Select_mode_u1|LED_select\(0),
	datac => \inst|uart_tx_u1|addr~41_combout\,
	datad => \inst|uart_tx_u1|addr~39_combout\,
	combout => \inst|uart_tx_u1|addr~42_combout\);

-- Location: FF_X27_Y15_N7
\inst|uart_tx_u1|addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|addr[6]~1_combout\,
	asdata => \inst|uart_tx_u1|addr~42_combout\,
	clrn => \res~input_o\,
	sload => \inst|uart_tx_u1|always0~3_combout\,
	ena => \inst|uart_tx_u1|addr[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|addr\(6));

-- Location: LCCOMB_X26_Y17_N14
\inst|uart_tx_u1|Add16~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add16~14_combout\ = \inst|uart_tx_u1|addr\(7) $ (\inst|uart_tx_u1|Add16~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(7),
	cin => \inst|uart_tx_u1|Add16~13\,
	combout => \inst|uart_tx_u1|Add16~14_combout\);

-- Location: LCCOMB_X27_Y17_N24
\inst|uart_tx_u1|Send_addr[7]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Send_addr[7]~8_combout\ = (\inst|uart_tx_u1|always1~0_combout\ & (\inst|uart_tx_u1|Add16~14_combout\)) # (!\inst|uart_tx_u1|always1~0_combout\ & ((\inst|uart_tx_u1|Send_addr_w\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Add16~14_combout\,
	datac => \inst|uart_tx_u1|Send_addr_w\(7),
	datad => \inst|uart_tx_u1|always1~0_combout\,
	combout => \inst|uart_tx_u1|Send_addr[7]~8_combout\);

-- Location: FF_X27_Y17_N25
\inst|uart_tx_u1|Send_addr_w[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|Send_addr[7]~8_combout\,
	clrn => \res~input_o\,
	ena => \inst|uart_tx_u1|Send_addr_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|Send_addr_w\(7));

-- Location: LCCOMB_X26_Y14_N28
\inst|uart_tx_u1|addr[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr[7]~0_combout\ = (\inst|uart_tx_u1|addr~12_combout\ & ((\inst|uart_tx_u1|Send_addr_w\(7)))) # (!\inst|uart_tx_u1|addr~12_combout\ & (\inst|uart_tx_u1|Add16~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Add16~14_combout\,
	datab => \inst|uart_tx_u1|Send_addr_w\(7),
	datad => \inst|uart_tx_u1|addr~12_combout\,
	combout => \inst|uart_tx_u1|addr[7]~0_combout\);

-- Location: LCCOMB_X27_Y17_N6
\inst|uart_tx_u1|Add6~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add6~9_combout\ = (\inst|uart_tx_u1|Send_addr[6]~7_combout\ & ((\inst|uart_tx_u1|always1~0_combout\ & ((\inst|uart_tx_u1|Add16~10_combout\))) # (!\inst|uart_tx_u1|always1~0_combout\ & (\inst|uart_tx_u1|Send_addr_w\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr_w\(5),
	datab => \inst|uart_tx_u1|Add16~10_combout\,
	datac => \inst|uart_tx_u1|Send_addr[6]~7_combout\,
	datad => \inst|uart_tx_u1|always1~0_combout\,
	combout => \inst|uart_tx_u1|Add6~9_combout\);

-- Location: LCCOMB_X27_Y16_N24
\inst|uart_tx_u1|Add7~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add7~14_combout\ = \inst|uart_tx_u1|Add7~13\ $ (\inst|uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \inst|uart_tx_u1|Add7~13\,
	combout => \inst|uart_tx_u1|Add7~14_combout\);

-- Location: LCCOMB_X27_Y16_N30
\inst|uart_tx_u1|addr~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~47_combout\ = (\inst|Select_mode_u1|LED_select\(0) & (((\inst|uart_tx_u1|Add7~14_combout\)))) # (!\inst|Select_mode_u1|LED_select\(0) & (\inst|uart_tx_u1|Send_addr[7]~8_combout\ $ ((\inst|uart_tx_u1|Add6~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[7]~8_combout\,
	datab => \inst|uart_tx_u1|Add6~9_combout\,
	datac => \inst|Select_mode_u1|LED_select\(0),
	datad => \inst|uart_tx_u1|Add7~14_combout\,
	combout => \inst|uart_tx_u1|addr~47_combout\);

-- Location: LCCOMB_X27_Y13_N22
\inst|uart_tx_u1|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add3~14_combout\ = \inst|uart_tx_u1|Add3~13\ $ (\inst|uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \inst|uart_tx_u1|Add3~13\,
	combout => \inst|uart_tx_u1|Add3~14_combout\);

-- Location: LCCOMB_X26_Y17_N26
\inst|uart_tx_u1|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add2~10_combout\ = \inst|uart_tx_u1|Add2~9\ $ (\inst|uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \inst|uart_tx_u1|Add2~9\,
	combout => \inst|uart_tx_u1|Add2~10_combout\);

-- Location: LCCOMB_X26_Y14_N14
\inst|uart_tx_u1|addr~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~43_combout\ = (\inst|Select_mode_u1|LED_select\(0) & (\inst|uart_tx_u1|Add3~14_combout\)) # (!\inst|Select_mode_u1|LED_select\(0) & ((\inst|uart_tx_u1|Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(0),
	datac => \inst|uart_tx_u1|Add3~14_combout\,
	datad => \inst|uart_tx_u1|Add2~10_combout\,
	combout => \inst|uart_tx_u1|addr~43_combout\);

-- Location: LCCOMB_X26_Y15_N18
\inst|uart_tx_u1|Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add5~14_combout\ = \inst|uart_tx_u1|Send_addr[7]~8_combout\ $ (\inst|uart_tx_u1|Add5~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \inst|uart_tx_u1|Add5~13\,
	combout => \inst|uart_tx_u1|Add5~14_combout\);

-- Location: LCCOMB_X27_Y15_N24
\inst|uart_tx_u1|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add4~12_combout\ = \inst|uart_tx_u1|Add4~11\ $ (!\inst|uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \inst|uart_tx_u1|Add4~11\,
	combout => \inst|uart_tx_u1|Add4~12_combout\);

-- Location: LCCOMB_X26_Y14_N4
\inst|uart_tx_u1|addr~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~44_combout\ = (\inst|Select_mode_u1|LED_select\(0) & (\inst|uart_tx_u1|Add5~14_combout\)) # (!\inst|Select_mode_u1|LED_select\(0) & ((\inst|uart_tx_u1|Add4~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(0),
	datac => \inst|uart_tx_u1|Add5~14_combout\,
	datad => \inst|uart_tx_u1|Add4~12_combout\,
	combout => \inst|uart_tx_u1|addr~44_combout\);

-- Location: LCCOMB_X26_Y13_N28
\inst|uart_tx_u1|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add1~14_combout\ = \inst|uart_tx_u1|Send_addr[7]~8_combout\ $ (\inst|uart_tx_u1|Add1~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \inst|uart_tx_u1|Add1~13\,
	combout => \inst|uart_tx_u1|Add1~14_combout\);

-- Location: LCCOMB_X27_Y14_N28
\inst|uart_tx_u1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add0~12_combout\ = \inst|uart_tx_u1|Add0~11\ $ (!\inst|uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \inst|uart_tx_u1|Add0~11\,
	combout => \inst|uart_tx_u1|Add0~12_combout\);

-- Location: LCCOMB_X26_Y14_N6
\inst|uart_tx_u1|addr~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~45_combout\ = (\inst|Select_mode_u1|LED_select\(0) & (\inst|uart_tx_u1|Add1~14_combout\)) # (!\inst|Select_mode_u1|LED_select\(0) & ((\inst|uart_tx_u1|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(0),
	datac => \inst|uart_tx_u1|Add1~14_combout\,
	datad => \inst|uart_tx_u1|Add0~12_combout\,
	combout => \inst|uart_tx_u1|addr~45_combout\);

-- Location: LCCOMB_X26_Y14_N0
\inst|uart_tx_u1|addr~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~46_combout\ = (\inst|Select_mode_u1|LED_select\(1) & (\inst|Select_mode_u1|LED_select\(2))) # (!\inst|Select_mode_u1|LED_select\(1) & ((\inst|Select_mode_u1|LED_select\(2) & (\inst|uart_tx_u1|addr~44_combout\)) # 
-- (!\inst|Select_mode_u1|LED_select\(2) & ((\inst|uart_tx_u1|addr~45_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(1),
	datab => \inst|Select_mode_u1|LED_select\(2),
	datac => \inst|uart_tx_u1|addr~44_combout\,
	datad => \inst|uart_tx_u1|addr~45_combout\,
	combout => \inst|uart_tx_u1|addr~46_combout\);

-- Location: LCCOMB_X26_Y14_N22
\inst|uart_tx_u1|addr~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~48_combout\ = (\inst|Select_mode_u1|LED_select\(1) & ((\inst|uart_tx_u1|addr~46_combout\ & (\inst|uart_tx_u1|addr~47_combout\)) # (!\inst|uart_tx_u1|addr~46_combout\ & ((\inst|uart_tx_u1|addr~43_combout\))))) # 
-- (!\inst|Select_mode_u1|LED_select\(1) & (((\inst|uart_tx_u1|addr~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(1),
	datab => \inst|uart_tx_u1|addr~47_combout\,
	datac => \inst|uart_tx_u1|addr~43_combout\,
	datad => \inst|uart_tx_u1|addr~46_combout\,
	combout => \inst|uart_tx_u1|addr~48_combout\);

-- Location: FF_X26_Y14_N29
\inst|uart_tx_u1|addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|addr[7]~0_combout\,
	asdata => \inst|uart_tx_u1|addr~48_combout\,
	clrn => \res~input_o\,
	sload => \inst|uart_tx_u1|always0~3_combout\,
	ena => \inst|uart_tx_u1|addr[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|addr\(7));

-- Location: LCCOMB_X28_Y18_N12
\inst|uart_tx_u1|AT|rom~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~64_combout\ = (\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(2)) # (\inst|uart_tx_u1|addr\(3) $ (!\inst|uart_tx_u1|addr\(1))))) # (!\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(3))) # 
-- (!\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(3),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(1),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~64_combout\);

-- Location: LCCOMB_X28_Y16_N6
\inst|uart_tx_u1|AT|rom~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~61_combout\ = (\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(3) $ (((\inst|uart_tx_u1|addr\(0)) # (\inst|uart_tx_u1|addr\(2)))))) # (!\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(2) $ (((\inst|uart_tx_u1|addr\(0) & 
-- !\inst|uart_tx_u1|addr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(3),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~61_combout\);

-- Location: LCCOMB_X27_Y18_N20
\inst|uart_tx_u1|AT|rom~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~62_combout\ = \inst|uart_tx_u1|addr\(0) $ (((\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(2) $ (!\inst|uart_tx_u1|addr\(3)))) # (!\inst|uart_tx_u1|addr\(1) & (!\inst|uart_tx_u1|addr\(2) & \inst|uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(2),
	datac => \inst|uart_tx_u1|addr\(0),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~62_combout\);

-- Location: LCCOMB_X27_Y18_N18
\inst|uart_tx_u1|AT|rom~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~63_combout\ = (!\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|AT|rom~61_combout\)) # (!\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|AT|rom~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|AT|rom~61_combout\,
	datad => \inst|uart_tx_u1|AT|rom~62_combout\,
	combout => \inst|uart_tx_u1|AT|rom~63_combout\);

-- Location: LCCOMB_X27_Y18_N4
\inst|uart_tx_u1|AT|rom~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~65_combout\ = (\inst|uart_tx_u1|AT|rom~63_combout\) # ((\inst|uart_tx_u1|addr\(5) & (!\inst|uart_tx_u1|AT|rom~64_combout\ & !\inst|uart_tx_u1|addr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|AT|rom~64_combout\,
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|AT|rom~63_combout\,
	combout => \inst|uart_tx_u1|AT|rom~65_combout\);

-- Location: LCCOMB_X27_Y18_N12
\inst|uart_tx_u1|AT|rom~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~48_combout\ = (!\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(4) & ((!\inst|uart_tx_u1|addr\(1)))) # (!\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|addr\(5) & \inst|uart_tx_u1|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(2),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|addr\(1),
	combout => \inst|uart_tx_u1|AT|rom~48_combout\);

-- Location: LCCOMB_X27_Y18_N10
\inst|uart_tx_u1|AT|rom~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~49_combout\ = (\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(1)) # (!\inst|uart_tx_u1|addr\(2)))) # (!\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(2)) # (!\inst|uart_tx_u1|addr\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(2),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|addr\(1),
	combout => \inst|uart_tx_u1|AT|rom~49_combout\);

-- Location: LCCOMB_X27_Y18_N24
\inst|uart_tx_u1|AT|rom~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~50_combout\ = (\inst|uart_tx_u1|addr\(5) & (((!\inst|uart_tx_u1|addr\(2) & \inst|uart_tx_u1|addr\(1))) # (!\inst|uart_tx_u1|addr\(4)))) # (!\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|addr\(1)) # 
-- (!\inst|uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(2),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|addr\(1),
	combout => \inst|uart_tx_u1|AT|rom~50_combout\);

-- Location: LCCOMB_X27_Y18_N22
\inst|uart_tx_u1|AT|rom~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~51_combout\ = (\inst|uart_tx_u1|addr\(0) & (((\inst|uart_tx_u1|addr\(3))))) # (!\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(3) & (!\inst|uart_tx_u1|AT|rom~49_combout\)) # (!\inst|uart_tx_u1|addr\(3) & 
-- ((!\inst|uart_tx_u1|AT|rom~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|AT|rom~49_combout\,
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(3),
	datad => \inst|uart_tx_u1|AT|rom~50_combout\,
	combout => \inst|uart_tx_u1|AT|rom~51_combout\);

-- Location: LCCOMB_X27_Y18_N16
\inst|uart_tx_u1|AT|rom~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~52_combout\ = (\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(4) $ (((\inst|uart_tx_u1|addr\(1)) # (!\inst|uart_tx_u1|addr\(2)))))) # (!\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(1)) # ((\inst|uart_tx_u1|addr\(2) & 
-- !\inst|uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(2),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|addr\(1),
	combout => \inst|uart_tx_u1|AT|rom~52_combout\);

-- Location: LCCOMB_X27_Y18_N14
\inst|uart_tx_u1|AT|rom~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~53_combout\ = (\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|AT|rom~51_combout\ & ((!\inst|uart_tx_u1|AT|rom~52_combout\))) # (!\inst|uart_tx_u1|AT|rom~51_combout\ & (\inst|uart_tx_u1|AT|rom~48_combout\)))) # 
-- (!\inst|uart_tx_u1|addr\(0) & (((\inst|uart_tx_u1|AT|rom~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|AT|rom~48_combout\,
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|AT|rom~51_combout\,
	datad => \inst|uart_tx_u1|AT|rom~52_combout\,
	combout => \inst|uart_tx_u1|AT|rom~53_combout\);

-- Location: LCCOMB_X27_Y18_N8
\inst|uart_tx_u1|AT|rom~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~54_combout\ = (\inst|uart_tx_u1|addr\(1) & (!\inst|uart_tx_u1|addr\(2) & (!\inst|uart_tx_u1|addr\(0) & \inst|uart_tx_u1|addr\(3)))) # (!\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(0) $ 
-- (\inst|uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(2),
	datac => \inst|uart_tx_u1|addr\(0),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~54_combout\);

-- Location: LCCOMB_X28_Y16_N16
\inst|uart_tx_u1|AT|rom~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~58_combout\ = (\inst|uart_tx_u1|addr\(0) & (!\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|addr\(1) $ (\inst|uart_tx_u1|addr\(2))))) # (!\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(1)) # ((\inst|uart_tx_u1|addr\(3) & 
-- !\inst|uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(3),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~58_combout\);

-- Location: LCCOMB_X27_Y18_N26
\inst|uart_tx_u1|AT|rom~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~55_combout\ = (\inst|uart_tx_u1|addr\(1) & (!\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|addr\(2) $ (\inst|uart_tx_u1|addr\(0))))) # (!\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(0) & ((!\inst|uart_tx_u1|addr\(3)) # 
-- (!\inst|uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(2),
	datac => \inst|uart_tx_u1|addr\(0),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~55_combout\);

-- Location: LCCOMB_X27_Y18_N0
\inst|uart_tx_u1|AT|rom~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~56_combout\ = (\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|addr\(0)))) # (!\inst|uart_tx_u1|addr\(3) & (!\inst|uart_tx_u1|addr\(1))))) # (!\inst|uart_tx_u1|addr\(2) & 
-- (((\inst|uart_tx_u1|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(2),
	datac => \inst|uart_tx_u1|addr\(0),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~56_combout\);

-- Location: LCCOMB_X27_Y18_N2
\inst|uart_tx_u1|AT|rom~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~57_combout\ = (\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(4)) # ((\inst|uart_tx_u1|AT|rom~55_combout\)))) # (!\inst|uart_tx_u1|addr\(5) & (!\inst|uart_tx_u1|addr\(4) & ((!\inst|uart_tx_u1|AT|rom~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|AT|rom~55_combout\,
	datad => \inst|uart_tx_u1|AT|rom~56_combout\,
	combout => \inst|uart_tx_u1|AT|rom~57_combout\);

-- Location: LCCOMB_X27_Y18_N28
\inst|uart_tx_u1|AT|rom~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~59_combout\ = (\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|AT|rom~57_combout\ & ((!\inst|uart_tx_u1|AT|rom~58_combout\))) # (!\inst|uart_tx_u1|AT|rom~57_combout\ & (!\inst|uart_tx_u1|AT|rom~54_combout\)))) # 
-- (!\inst|uart_tx_u1|addr\(4) & (((\inst|uart_tx_u1|AT|rom~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|AT|rom~54_combout\,
	datac => \inst|uart_tx_u1|AT|rom~58_combout\,
	datad => \inst|uart_tx_u1|AT|rom~57_combout\,
	combout => \inst|uart_tx_u1|AT|rom~59_combout\);

-- Location: LCCOMB_X27_Y18_N6
\inst|uart_tx_u1|AT|rom~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~60_combout\ = (!\inst|uart_tx_u1|addr\(7) & ((\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|AT|rom~53_combout\)) # (!\inst|uart_tx_u1|addr\(6) & ((\inst|uart_tx_u1|AT|rom~59_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(7),
	datab => \inst|uart_tx_u1|addr\(6),
	datac => \inst|uart_tx_u1|AT|rom~53_combout\,
	datad => \inst|uart_tx_u1|AT|rom~59_combout\,
	combout => \inst|uart_tx_u1|AT|rom~60_combout\);

-- Location: LCCOMB_X27_Y18_N30
\inst|uart_tx_u1|AT|rom~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~66_combout\ = (\inst|uart_tx_u1|AT|rom~60_combout\) # ((\inst|uart_tx_u1|addr\(7) & (!\inst|uart_tx_u1|addr\(6) & \inst|uart_tx_u1|AT|rom~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(7),
	datab => \inst|uart_tx_u1|addr\(6),
	datac => \inst|uart_tx_u1|AT|rom~65_combout\,
	datad => \inst|uart_tx_u1|AT|rom~60_combout\,
	combout => \inst|uart_tx_u1|AT|rom~66_combout\);

-- Location: LCCOMB_X28_Y16_N8
\inst|uart_tx_u1|AT|rom~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~80_combout\ = (\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(0) & (!\inst|uart_tx_u1|addr\(3) & \inst|uart_tx_u1|addr\(2))) # (!\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(3) & !\inst|uart_tx_u1|addr\(2))))) # 
-- (!\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(3) $ (!\inst|uart_tx_u1|addr\(2)))) # (!\inst|uart_tx_u1|addr\(0) & (!\inst|uart_tx_u1|addr\(3) & \inst|uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(3),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~80_combout\);

-- Location: LCCOMB_X28_Y16_N18
\inst|uart_tx_u1|AT|rom~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~81_combout\ = (\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(3) $ (((!\inst|uart_tx_u1|addr\(0) & !\inst|uart_tx_u1|addr\(2)))))) # (!\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(2)))) # 
-- (!\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(3),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~81_combout\);

-- Location: LCCOMB_X28_Y16_N28
\inst|uart_tx_u1|AT|rom~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~82_combout\ = (!\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|addr\(5) & ((!\inst|uart_tx_u1|AT|rom~81_combout\))) # (!\inst|uart_tx_u1|addr\(5) & (!\inst|uart_tx_u1|AT|rom~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|AT|rom~80_combout\,
	datad => \inst|uart_tx_u1|AT|rom~81_combout\,
	combout => \inst|uart_tx_u1|AT|rom~82_combout\);

-- Location: LCCOMB_X28_Y16_N0
\inst|uart_tx_u1|AT|rom~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~84_combout\ = (\inst|uart_tx_u1|AT|rom~82_combout\) # ((!\inst|uart_tx_u1|addr\(5) & (!\inst|uart_tx_u1|AT|rom~83_combout\ & \inst|uart_tx_u1|addr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|AT|rom~83_combout\,
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|AT|rom~82_combout\,
	combout => \inst|uart_tx_u1|AT|rom~84_combout\);

-- Location: LCCOMB_X28_Y17_N24
\inst|uart_tx_u1|AT|rom~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~77_combout\ = (\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(5)) # (!\inst|uart_tx_u1|addr\(1))))) # (!\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(1) $ (\inst|uart_tx_u1|addr\(5) $ 
-- (\inst|uart_tx_u1|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(5),
	datad => \inst|uart_tx_u1|addr\(0),
	combout => \inst|uart_tx_u1|AT|rom~77_combout\);

-- Location: LCCOMB_X28_Y17_N22
\inst|uart_tx_u1|AT|rom~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~74_combout\ = (\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(0)))) # (!\inst|uart_tx_u1|addr\(5) & (!\inst|uart_tx_u1|addr\(2) & !\inst|uart_tx_u1|addr\(0))))) # (!\inst|uart_tx_u1|addr\(1) & 
-- ((\inst|uart_tx_u1|addr\(2) & (!\inst|uart_tx_u1|addr\(5))) # (!\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(5) & !\inst|uart_tx_u1|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(5),
	datad => \inst|uart_tx_u1|addr\(0),
	combout => \inst|uart_tx_u1|AT|rom~74_combout\);

-- Location: LCCOMB_X28_Y17_N16
\inst|uart_tx_u1|AT|rom~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~75_combout\ = (\inst|uart_tx_u1|addr\(5) & (!\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(1) $ (!\inst|uart_tx_u1|addr\(0))))) # (!\inst|uart_tx_u1|addr\(5) & (((\inst|uart_tx_u1|addr\(1) & !\inst|uart_tx_u1|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(5),
	datad => \inst|uart_tx_u1|addr\(0),
	combout => \inst|uart_tx_u1|AT|rom~75_combout\);

-- Location: LCCOMB_X28_Y17_N30
\inst|uart_tx_u1|AT|rom~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~76_combout\ = (\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|addr\(4)) # ((\inst|uart_tx_u1|AT|rom~74_combout\)))) # (!\inst|uart_tx_u1|addr\(3) & (!\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|AT|rom~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(3),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|AT|rom~74_combout\,
	datad => \inst|uart_tx_u1|AT|rom~75_combout\,
	combout => \inst|uart_tx_u1|AT|rom~76_combout\);

-- Location: LCCOMB_X28_Y17_N28
\inst|uart_tx_u1|AT|rom~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~73_combout\ = (\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(0) $ (((\inst|uart_tx_u1|addr\(2)) # (!\inst|uart_tx_u1|addr\(5)))))) # (!\inst|uart_tx_u1|addr\(1) & (((\inst|uart_tx_u1|addr\(5)) # (\inst|uart_tx_u1|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(5),
	datad => \inst|uart_tx_u1|addr\(0),
	combout => \inst|uart_tx_u1|AT|rom~73_combout\);

-- Location: LCCOMB_X28_Y17_N2
\inst|uart_tx_u1|AT|rom~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~78_combout\ = (\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|AT|rom~76_combout\ & (\inst|uart_tx_u1|AT|rom~77_combout\)) # (!\inst|uart_tx_u1|AT|rom~76_combout\ & ((!\inst|uart_tx_u1|AT|rom~73_combout\))))) # 
-- (!\inst|uart_tx_u1|addr\(4) & (((\inst|uart_tx_u1|AT|rom~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|AT|rom~77_combout\,
	datac => \inst|uart_tx_u1|AT|rom~76_combout\,
	datad => \inst|uart_tx_u1|AT|rom~73_combout\,
	combout => \inst|uart_tx_u1|AT|rom~78_combout\);

-- Location: LCCOMB_X28_Y17_N12
\inst|uart_tx_u1|AT|rom~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~67_combout\ = (\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|addr\(2) $ (!\inst|uart_tx_u1|addr\(4))))) # (!\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(2) & (!\inst|uart_tx_u1|addr\(4) & 
-- !\inst|uart_tx_u1|addr\(3))) # (!\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|addr\(3),
	datad => \inst|uart_tx_u1|addr\(1),
	combout => \inst|uart_tx_u1|AT|rom~67_combout\);

-- Location: LCCOMB_X28_Y17_N8
\inst|uart_tx_u1|AT|rom~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~71_combout\ = (\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(4) $ (((!\inst|uart_tx_u1|addr\(3) & !\inst|uart_tx_u1|addr\(1)))))) # (!\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(3) & ((!\inst|uart_tx_u1|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(3),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(1),
	combout => \inst|uart_tx_u1|AT|rom~71_combout\);

-- Location: LCCOMB_X28_Y17_N14
\inst|uart_tx_u1|AT|rom~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~68_combout\ = (\inst|uart_tx_u1|addr\(1) & (((!\inst|uart_tx_u1|addr\(4))) # (!\inst|uart_tx_u1|addr\(2)))) # (!\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(3)) # ((\inst|uart_tx_u1|addr\(2) & \inst|uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(3),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|addr\(1),
	combout => \inst|uart_tx_u1|AT|rom~68_combout\);

-- Location: LCCOMB_X28_Y17_N0
\inst|uart_tx_u1|AT|rom~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~69_combout\ = (\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|addr\(2) $ (((\inst|uart_tx_u1|addr\(1)) # (!\inst|uart_tx_u1|addr\(4)))))) # (!\inst|uart_tx_u1|addr\(3) & (!\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|addr\(2) $ 
-- (\inst|uart_tx_u1|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(3),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|addr\(1),
	combout => \inst|uart_tx_u1|AT|rom~69_combout\);

-- Location: LCCOMB_X28_Y17_N18
\inst|uart_tx_u1|AT|rom~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~70_combout\ = (\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(5)) # ((!\inst|uart_tx_u1|AT|rom~68_combout\)))) # (!\inst|uart_tx_u1|addr\(0) & (!\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|AT|rom~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(0),
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|AT|rom~68_combout\,
	datad => \inst|uart_tx_u1|AT|rom~69_combout\,
	combout => \inst|uart_tx_u1|AT|rom~70_combout\);

-- Location: LCCOMB_X28_Y17_N6
\inst|uart_tx_u1|AT|rom~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~72_combout\ = (\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|AT|rom~70_combout\ & ((\inst|uart_tx_u1|AT|rom~71_combout\))) # (!\inst|uart_tx_u1|AT|rom~70_combout\ & (!\inst|uart_tx_u1|AT|rom~67_combout\)))) # 
-- (!\inst|uart_tx_u1|addr\(5) & (((\inst|uart_tx_u1|AT|rom~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|AT|rom~67_combout\,
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|AT|rom~71_combout\,
	datad => \inst|uart_tx_u1|AT|rom~70_combout\,
	combout => \inst|uart_tx_u1|AT|rom~72_combout\);

-- Location: LCCOMB_X28_Y17_N20
\inst|uart_tx_u1|AT|rom~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~79_combout\ = (!\inst|uart_tx_u1|addr\(7) & ((\inst|uart_tx_u1|addr\(6) & ((\inst|uart_tx_u1|AT|rom~72_combout\))) # (!\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|AT|rom~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(7),
	datab => \inst|uart_tx_u1|AT|rom~78_combout\,
	datac => \inst|uart_tx_u1|addr\(6),
	datad => \inst|uart_tx_u1|AT|rom~72_combout\,
	combout => \inst|uart_tx_u1|AT|rom~79_combout\);

-- Location: LCCOMB_X28_Y17_N26
\inst|uart_tx_u1|AT|rom~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~85_combout\ = (\inst|uart_tx_u1|AT|rom~79_combout\) # ((\inst|uart_tx_u1|addr\(7) & (\inst|uart_tx_u1|AT|rom~84_combout\ & !\inst|uart_tx_u1|addr\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(7),
	datab => \inst|uart_tx_u1|AT|rom~84_combout\,
	datac => \inst|uart_tx_u1|addr\(6),
	datad => \inst|uart_tx_u1|AT|rom~79_combout\,
	combout => \inst|uart_tx_u1|AT|rom~85_combout\);

-- Location: LCCOMB_X27_Y15_N28
\inst|uart_tx_u1|AT|rom~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~26_combout\ = (\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(0) $ (((!\inst|uart_tx_u1|addr\(1) & !\inst|uart_tx_u1|addr\(3)))))) # (!\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(3) & 
-- !\inst|uart_tx_u1|addr\(0))) # (!\inst|uart_tx_u1|addr\(1) & (!\inst|uart_tx_u1|addr\(3) & \inst|uart_tx_u1|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(3),
	datad => \inst|uart_tx_u1|addr\(0),
	combout => \inst|uart_tx_u1|AT|rom~26_combout\);

-- Location: LCCOMB_X27_Y14_N4
\inst|uart_tx_u1|AT|rom~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~23_combout\ = (\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(1) $ (\inst|uart_tx_u1|addr\(0)))) # (!\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(1)) # (!\inst|uart_tx_u1|addr\(0)))))) # 
-- (!\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|addr\(2) $ (((\inst|uart_tx_u1|addr\(1) & !\inst|uart_tx_u1|addr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(3),
	datab => \inst|uart_tx_u1|addr\(2),
	datac => \inst|uart_tx_u1|addr\(1),
	datad => \inst|uart_tx_u1|addr\(0),
	combout => \inst|uart_tx_u1|AT|rom~23_combout\);

-- Location: LCCOMB_X28_Y14_N0
\inst|uart_tx_u1|AT|rom~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~24_combout\ = (\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(3)) # ((\inst|uart_tx_u1|addr\(0) & \inst|uart_tx_u1|addr\(2))))) # (!\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(2) $ (((\inst|uart_tx_u1|addr\(0) & 
-- !\inst|uart_tx_u1|addr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(0),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~24_combout\);

-- Location: LCCOMB_X28_Y14_N2
\inst|uart_tx_u1|AT|rom~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~25_combout\ = (!\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|addr\(5) & ((!\inst|uart_tx_u1|AT|rom~24_combout\))) # (!\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|AT|rom~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|AT|rom~23_combout\,
	datad => \inst|uart_tx_u1|AT|rom~24_combout\,
	combout => \inst|uart_tx_u1|AT|rom~25_combout\);

-- Location: LCCOMB_X28_Y14_N8
\inst|uart_tx_u1|AT|rom~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~27_combout\ = (\inst|uart_tx_u1|AT|rom~25_combout\) # ((!\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|AT|rom~26_combout\ & \inst|uart_tx_u1|addr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|AT|rom~26_combout\,
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|AT|rom~25_combout\,
	combout => \inst|uart_tx_u1|AT|rom~27_combout\);

-- Location: LCCOMB_X28_Y14_N18
\inst|uart_tx_u1|AT|rom~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~20_combout\ = (\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(2) $ (\inst|uart_tx_u1|addr\(4) $ (\inst|uart_tx_u1|addr\(0))))) # (!\inst|uart_tx_u1|addr\(1) & (!\inst|uart_tx_u1|addr\(2) & (!\inst|uart_tx_u1|addr\(4) & 
-- \inst|uart_tx_u1|addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|addr\(0),
	combout => \inst|uart_tx_u1|AT|rom~20_combout\);

-- Location: LCCOMB_X28_Y14_N30
\inst|uart_tx_u1|AT|rom~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~16_combout\ = (\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(4)) # (!\inst|uart_tx_u1|addr\(1))))) # (!\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(0)))) # 
-- (!\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|addr\(0),
	combout => \inst|uart_tx_u1|AT|rom~16_combout\);

-- Location: LCCOMB_X28_Y14_N22
\inst|uart_tx_u1|AT|rom~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~18_combout\ = (\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|addr\(1)) # ((\inst|uart_tx_u1|addr\(2))))) # (!\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|addr\(2) $ (((!\inst|uart_tx_u1|addr\(1) & \inst|uart_tx_u1|addr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(0),
	combout => \inst|uart_tx_u1|AT|rom~18_combout\);

-- Location: LCCOMB_X28_Y14_N28
\inst|uart_tx_u1|AT|rom~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~17_combout\ = (\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(1) $ (\inst|uart_tx_u1|addr\(0))))) # (!\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|addr\(1)) # (!\inst|uart_tx_u1|addr\(0)))) # 
-- (!\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|addr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(0),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~17_combout\);

-- Location: LCCOMB_X28_Y14_N12
\inst|uart_tx_u1|AT|rom~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~19_combout\ = (\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(3))) # (!\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(3) & ((!\inst|uart_tx_u1|AT|rom~17_combout\))) # (!\inst|uart_tx_u1|addr\(3) & 
-- (\inst|uart_tx_u1|AT|rom~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(3),
	datac => \inst|uart_tx_u1|AT|rom~18_combout\,
	datad => \inst|uart_tx_u1|AT|rom~17_combout\,
	combout => \inst|uart_tx_u1|AT|rom~19_combout\);

-- Location: LCCOMB_X28_Y14_N4
\inst|uart_tx_u1|AT|rom~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~21_combout\ = (\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|AT|rom~19_combout\ & (\inst|uart_tx_u1|AT|rom~20_combout\)) # (!\inst|uart_tx_u1|AT|rom~19_combout\ & ((\inst|uart_tx_u1|AT|rom~16_combout\))))) # 
-- (!\inst|uart_tx_u1|addr\(5) & (((\inst|uart_tx_u1|AT|rom~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|AT|rom~20_combout\,
	datac => \inst|uart_tx_u1|AT|rom~16_combout\,
	datad => \inst|uart_tx_u1|AT|rom~19_combout\,
	combout => \inst|uart_tx_u1|AT|rom~21_combout\);

-- Location: LCCOMB_X27_Y14_N6
\inst|uart_tx_u1|AT|rom~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~10_combout\ = (\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(5)) # (!\inst|uart_tx_u1|addr\(1))))) # (!\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(5) $ (((\inst|uart_tx_u1|addr\(2)) # 
-- (\inst|uart_tx_u1|addr\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(2),
	datac => \inst|uart_tx_u1|addr\(1),
	datad => \inst|uart_tx_u1|addr\(0),
	combout => \inst|uart_tx_u1|AT|rom~10_combout\);

-- Location: LCCOMB_X28_Y14_N14
\inst|uart_tx_u1|AT|rom~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~14_combout\ = (\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(0) $ (((!\inst|uart_tx_u1|addr\(1)) # (!\inst|uart_tx_u1|addr\(5)))))) # (!\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(5) & (!\inst|uart_tx_u1|addr\(1) & 
-- \inst|uart_tx_u1|addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(0),
	combout => \inst|uart_tx_u1|AT|rom~14_combout\);

-- Location: LCCOMB_X28_Y14_N26
\inst|uart_tx_u1|AT|rom~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~12_combout\ = (\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(1)))) # (!\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(2))))) # (!\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(0) $ 
-- (((\inst|uart_tx_u1|addr\(2) & \inst|uart_tx_u1|addr\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|addr\(0),
	datad => \inst|uart_tx_u1|addr\(1),
	combout => \inst|uart_tx_u1|AT|rom~12_combout\);

-- Location: LCCOMB_X28_Y14_N16
\inst|uart_tx_u1|AT|rom~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~11_combout\ = (\inst|uart_tx_u1|addr\(5) & (!\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(1) $ (!\inst|uart_tx_u1|addr\(0))))) # (!\inst|uart_tx_u1|addr\(5) & (!\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(0) & 
-- \inst|uart_tx_u1|addr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(0),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~11_combout\);

-- Location: LCCOMB_X28_Y14_N24
\inst|uart_tx_u1|AT|rom~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~13_combout\ = (\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|addr\(3))) # (!\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|AT|rom~11_combout\))) # (!\inst|uart_tx_u1|addr\(3) & 
-- (!\inst|uart_tx_u1|AT|rom~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(3),
	datac => \inst|uart_tx_u1|AT|rom~12_combout\,
	datad => \inst|uart_tx_u1|AT|rom~11_combout\,
	combout => \inst|uart_tx_u1|AT|rom~13_combout\);

-- Location: LCCOMB_X28_Y14_N20
\inst|uart_tx_u1|AT|rom~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~15_combout\ = (\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|AT|rom~13_combout\ & ((\inst|uart_tx_u1|AT|rom~14_combout\))) # (!\inst|uart_tx_u1|AT|rom~13_combout\ & (!\inst|uart_tx_u1|AT|rom~10_combout\)))) # 
-- (!\inst|uart_tx_u1|addr\(4) & (((\inst|uart_tx_u1|AT|rom~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|AT|rom~10_combout\,
	datac => \inst|uart_tx_u1|AT|rom~14_combout\,
	datad => \inst|uart_tx_u1|AT|rom~13_combout\,
	combout => \inst|uart_tx_u1|AT|rom~15_combout\);

-- Location: LCCOMB_X28_Y14_N10
\inst|uart_tx_u1|AT|rom~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~22_combout\ = (!\inst|uart_tx_u1|addr\(7) & ((\inst|uart_tx_u1|addr\(6) & ((\inst|uart_tx_u1|AT|rom~15_combout\))) # (!\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|AT|rom~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(6),
	datab => \inst|uart_tx_u1|addr\(7),
	datac => \inst|uart_tx_u1|AT|rom~21_combout\,
	datad => \inst|uart_tx_u1|AT|rom~15_combout\,
	combout => \inst|uart_tx_u1|AT|rom~22_combout\);

-- Location: LCCOMB_X28_Y14_N6
\inst|uart_tx_u1|AT|rom~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~28_combout\ = (\inst|uart_tx_u1|AT|rom~22_combout\) # ((!\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|addr\(7) & \inst|uart_tx_u1|AT|rom~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(6),
	datab => \inst|uart_tx_u1|addr\(7),
	datac => \inst|uart_tx_u1|AT|rom~27_combout\,
	datad => \inst|uart_tx_u1|AT|rom~22_combout\,
	combout => \inst|uart_tx_u1|AT|rom~28_combout\);

-- Location: LCCOMB_X26_Y16_N22
\inst|uart_tx_u1|AT|rom~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~45_combout\ = (\inst|uart_tx_u1|addr\(0) & (!\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|addr\(2)) # (!\inst|uart_tx_u1|addr\(1))))) # (!\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(2) & (!\inst|uart_tx_u1|addr\(3) & 
-- !\inst|uart_tx_u1|addr\(1))) # (!\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(0),
	datab => \inst|uart_tx_u1|addr\(2),
	datac => \inst|uart_tx_u1|addr\(3),
	datad => \inst|uart_tx_u1|addr\(1),
	combout => \inst|uart_tx_u1|AT|rom~45_combout\);

-- Location: LCCOMB_X26_Y16_N4
\inst|uart_tx_u1|AT|rom~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~42_combout\ = (\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(2) & (!\inst|uart_tx_u1|addr\(3) & !\inst|uart_tx_u1|addr\(1))) # (!\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(3))))) # (!\inst|uart_tx_u1|addr\(0) & 
-- (\inst|uart_tx_u1|addr\(3) $ (((!\inst|uart_tx_u1|addr\(2) & \inst|uart_tx_u1|addr\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(0),
	datab => \inst|uart_tx_u1|addr\(2),
	datac => \inst|uart_tx_u1|addr\(3),
	datad => \inst|uart_tx_u1|addr\(1),
	combout => \inst|uart_tx_u1|AT|rom~42_combout\);

-- Location: LCCOMB_X26_Y16_N18
\inst|uart_tx_u1|AT|rom~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~43_combout\ = (\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(2) & (!\inst|uart_tx_u1|addr\(3))) # (!\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(3) & \inst|uart_tx_u1|addr\(1))))) # (!\inst|uart_tx_u1|addr\(0) & 
-- (\inst|uart_tx_u1|addr\(2) $ (\inst|uart_tx_u1|addr\(3) $ (\inst|uart_tx_u1|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(0),
	datab => \inst|uart_tx_u1|addr\(2),
	datac => \inst|uart_tx_u1|addr\(3),
	datad => \inst|uart_tx_u1|addr\(1),
	combout => \inst|uart_tx_u1|AT|rom~43_combout\);

-- Location: LCCOMB_X26_Y16_N24
\inst|uart_tx_u1|AT|rom~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~44_combout\ = (!\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|AT|rom~42_combout\)) # (!\inst|uart_tx_u1|addr\(4) & ((!\inst|uart_tx_u1|AT|rom~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|AT|rom~42_combout\,
	datad => \inst|uart_tx_u1|AT|rom~43_combout\,
	combout => \inst|uart_tx_u1|AT|rom~44_combout\);

-- Location: LCCOMB_X26_Y16_N28
\inst|uart_tx_u1|AT|rom~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~46_combout\ = (\inst|uart_tx_u1|AT|rom~44_combout\) # ((\inst|uart_tx_u1|AT|rom~45_combout\ & (\inst|uart_tx_u1|addr\(5) & !\inst|uart_tx_u1|addr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|AT|rom~45_combout\,
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|AT|rom~44_combout\,
	combout => \inst|uart_tx_u1|AT|rom~46_combout\);

-- Location: LCCOMB_X26_Y16_N6
\inst|uart_tx_u1|AT|rom~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~35_combout\ = (\inst|uart_tx_u1|addr\(4) & (!\inst|uart_tx_u1|addr\(2) & ((!\inst|uart_tx_u1|addr\(1))))) # (!\inst|uart_tx_u1|addr\(4) & (((!\inst|uart_tx_u1|addr\(5) & \inst|uart_tx_u1|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(2),
	datac => \inst|uart_tx_u1|addr\(5),
	datad => \inst|uart_tx_u1|addr\(1),
	combout => \inst|uart_tx_u1|AT|rom~35_combout\);

-- Location: LCCOMB_X26_Y16_N26
\inst|uart_tx_u1|AT|rom~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~39_combout\ = (\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(2)) # (\inst|uart_tx_u1|addr\(4) $ (\inst|uart_tx_u1|addr\(1))))) # (!\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(4) & (!\inst|uart_tx_u1|addr\(2))) # 
-- (!\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|addr\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(2),
	datac => \inst|uart_tx_u1|addr\(5),
	datad => \inst|uart_tx_u1|addr\(1),
	combout => \inst|uart_tx_u1|AT|rom~39_combout\);

-- Location: LCCOMB_X26_Y16_N30
\inst|uart_tx_u1|AT|rom~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~37_combout\ = (\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(5) $ (!\inst|uart_tx_u1|addr\(1))) # (!\inst|uart_tx_u1|addr\(4)))) # (!\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(5) & ((!\inst|uart_tx_u1|addr\(1)))) # 
-- (!\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(4)) # (\inst|uart_tx_u1|addr\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(2),
	datac => \inst|uart_tx_u1|addr\(5),
	datad => \inst|uart_tx_u1|addr\(1),
	combout => \inst|uart_tx_u1|AT|rom~37_combout\);

-- Location: LCCOMB_X26_Y16_N20
\inst|uart_tx_u1|AT|rom~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~36_combout\ = (\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|addr\(5) $ (\inst|uart_tx_u1|addr\(1))))) # (!\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(2) $ (\inst|uart_tx_u1|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(2),
	datac => \inst|uart_tx_u1|addr\(5),
	datad => \inst|uart_tx_u1|addr\(1),
	combout => \inst|uart_tx_u1|AT|rom~36_combout\);

-- Location: LCCOMB_X26_Y16_N12
\inst|uart_tx_u1|AT|rom~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~38_combout\ = (\inst|uart_tx_u1|addr\(0) & (((\inst|uart_tx_u1|addr\(3))))) # (!\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|AT|rom~36_combout\))) # (!\inst|uart_tx_u1|addr\(3) & 
-- (\inst|uart_tx_u1|AT|rom~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|AT|rom~37_combout\,
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(3),
	datad => \inst|uart_tx_u1|AT|rom~36_combout\,
	combout => \inst|uart_tx_u1|AT|rom~38_combout\);

-- Location: LCCOMB_X26_Y16_N8
\inst|uart_tx_u1|AT|rom~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~40_combout\ = (\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|AT|rom~38_combout\ & ((!\inst|uart_tx_u1|AT|rom~39_combout\))) # (!\inst|uart_tx_u1|AT|rom~38_combout\ & (\inst|uart_tx_u1|AT|rom~35_combout\)))) # 
-- (!\inst|uart_tx_u1|addr\(0) & (((\inst|uart_tx_u1|AT|rom~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|AT|rom~35_combout\,
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|AT|rom~39_combout\,
	datad => \inst|uart_tx_u1|AT|rom~38_combout\,
	combout => \inst|uart_tx_u1|AT|rom~40_combout\);

-- Location: LCCOMB_X26_Y16_N16
\inst|uart_tx_u1|AT|rom~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~29_combout\ = (\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(5) $ (((!\inst|uart_tx_u1|addr\(3) & !\inst|uart_tx_u1|addr\(4)))))) # (!\inst|uart_tx_u1|addr\(2) & (((\inst|uart_tx_u1|addr\(3) & !\inst|uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|addr\(3),
	datad => \inst|uart_tx_u1|addr\(4),
	combout => \inst|uart_tx_u1|AT|rom~29_combout\);

-- Location: LCCOMB_X26_Y16_N14
\inst|uart_tx_u1|AT|rom~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~33_combout\ = (\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(2) & (!\inst|uart_tx_u1|addr\(3) & \inst|uart_tx_u1|addr\(4)))) # (!\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|addr\(2) $ 
-- (\inst|uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|addr\(3),
	datad => \inst|uart_tx_u1|addr\(4),
	combout => \inst|uart_tx_u1|AT|rom~33_combout\);

-- Location: LCCOMB_X28_Y16_N14
\inst|uart_tx_u1|AT|rom~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~30_combout\ = (\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|addr\(4)))) # (!\inst|uart_tx_u1|addr\(3) & (!\inst|uart_tx_u1|addr\(2))))) # (!\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(4) & 
-- ((\inst|uart_tx_u1|addr\(2)) # (!\inst|uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(2),
	datac => \inst|uart_tx_u1|addr\(3),
	datad => \inst|uart_tx_u1|addr\(4),
	combout => \inst|uart_tx_u1|AT|rom~30_combout\);

-- Location: LCCOMB_X28_Y16_N24
\inst|uart_tx_u1|AT|rom~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~31_combout\ = (\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(2) & ((!\inst|uart_tx_u1|addr\(4)))) # (!\inst|uart_tx_u1|addr\(2) & (!\inst|uart_tx_u1|addr\(3))))) # (!\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(3)) # 
-- ((\inst|uart_tx_u1|addr\(2) & \inst|uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(2),
	datac => \inst|uart_tx_u1|addr\(3),
	datad => \inst|uart_tx_u1|addr\(4),
	combout => \inst|uart_tx_u1|AT|rom~31_combout\);

-- Location: LCCOMB_X28_Y16_N10
\inst|uart_tx_u1|AT|rom~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~32_combout\ = (\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(0)) # ((\inst|uart_tx_u1|AT|rom~30_combout\)))) # (!\inst|uart_tx_u1|addr\(1) & (!\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|AT|rom~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|AT|rom~30_combout\,
	datad => \inst|uart_tx_u1|AT|rom~31_combout\,
	combout => \inst|uart_tx_u1|AT|rom~32_combout\);

-- Location: LCCOMB_X26_Y16_N0
\inst|uart_tx_u1|AT|rom~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~34_combout\ = (\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|AT|rom~32_combout\ & ((\inst|uart_tx_u1|AT|rom~33_combout\))) # (!\inst|uart_tx_u1|AT|rom~32_combout\ & (\inst|uart_tx_u1|AT|rom~29_combout\)))) # 
-- (!\inst|uart_tx_u1|addr\(0) & (((\inst|uart_tx_u1|AT|rom~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(0),
	datab => \inst|uart_tx_u1|AT|rom~29_combout\,
	datac => \inst|uart_tx_u1|AT|rom~33_combout\,
	datad => \inst|uart_tx_u1|AT|rom~32_combout\,
	combout => \inst|uart_tx_u1|AT|rom~34_combout\);

-- Location: LCCOMB_X26_Y16_N2
\inst|uart_tx_u1|AT|rom~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~41_combout\ = (!\inst|uart_tx_u1|addr\(7) & ((\inst|uart_tx_u1|addr\(6) & ((\inst|uart_tx_u1|AT|rom~34_combout\))) # (!\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|AT|rom~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(7),
	datab => \inst|uart_tx_u1|addr\(6),
	datac => \inst|uart_tx_u1|AT|rom~40_combout\,
	datad => \inst|uart_tx_u1|AT|rom~34_combout\,
	combout => \inst|uart_tx_u1|AT|rom~41_combout\);

-- Location: LCCOMB_X26_Y16_N10
\inst|uart_tx_u1|AT|rom~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~47_combout\ = (\inst|uart_tx_u1|AT|rom~41_combout\) # ((\inst|uart_tx_u1|addr\(7) & (!\inst|uart_tx_u1|addr\(6) & \inst|uart_tx_u1|AT|rom~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(7),
	datab => \inst|uart_tx_u1|addr\(6),
	datac => \inst|uart_tx_u1|AT|rom~46_combout\,
	datad => \inst|uart_tx_u1|AT|rom~41_combout\,
	combout => \inst|uart_tx_u1|AT|rom~47_combout\);

-- Location: LCCOMB_X27_Y17_N18
\inst|uart_tx_u1|Equal4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Equal4~3_combout\ = (\inst|uart_tx_u1|AT|rom~66_combout\) # (((\inst|uart_tx_u1|AT|rom~28_combout\) # (!\inst|uart_tx_u1|AT|rom~47_combout\)) # (!\inst|uart_tx_u1|AT|rom~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|AT|rom~66_combout\,
	datab => \inst|uart_tx_u1|AT|rom~85_combout\,
	datac => \inst|uart_tx_u1|AT|rom~28_combout\,
	datad => \inst|uart_tx_u1|AT|rom~47_combout\,
	combout => \inst|uart_tx_u1|Equal4~3_combout\);

-- Location: LCCOMB_X27_Y17_N26
\inst|uart_tx_u1|Equal4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Equal4~4_combout\ = (\inst|uart_tx_u1|Equal4~3_combout\) # ((\inst|uart_tx_u1|AT|rom~102_combout\) # ((\inst|uart_tx_u1|AT|rom~124_combout\) # (\inst|uart_tx_u1|AT|rom~128_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Equal4~3_combout\,
	datab => \inst|uart_tx_u1|AT|rom~102_combout\,
	datac => \inst|uart_tx_u1|AT|rom~124_combout\,
	datad => \inst|uart_tx_u1|AT|rom~128_combout\,
	combout => \inst|uart_tx_u1|Equal4~4_combout\);

-- Location: LCCOMB_X29_Y17_N20
\inst|uart_tx_u1|cnt_rom[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_rom[0]~2_combout\ = (\inst|uart_tx_u1|always5~1_combout\ & (\inst|uart_tx_u1|Equal4~4_combout\)) # (!\inst|uart_tx_u1|always5~1_combout\ & (((!\inst|uart_tx_u1|cnt_rom\(1)) # (!\inst|uart_tx_u1|always0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Equal4~4_combout\,
	datab => \inst|uart_tx_u1|always0~5_combout\,
	datac => \inst|uart_tx_u1|cnt_rom\(1),
	datad => \inst|uart_tx_u1|always5~1_combout\,
	combout => \inst|uart_tx_u1|cnt_rom[0]~2_combout\);

-- Location: LCCOMB_X29_Y17_N2
\inst|uart_tx_u1|cnt_rom[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_rom[0]~6_combout\ = (\inst|uart_tx_u1|cnt_rom\(0) & (((\inst|uart_tx_u1|cnt_rom[0]~2_combout\) # (!\inst|uart_tx_u1|always5~0_combout\)) # (!\inst|uart_tx_u1|stage_tx.SEND_DATA~q\))) # (!\inst|uart_tx_u1|cnt_rom\(0) & 
-- (((!\inst|uart_tx_u1|cnt_rom[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|stage_tx.SEND_DATA~q\,
	datab => \inst|uart_tx_u1|always5~0_combout\,
	datac => \inst|uart_tx_u1|cnt_rom\(0),
	datad => \inst|uart_tx_u1|cnt_rom[0]~2_combout\,
	combout => \inst|uart_tx_u1|cnt_rom[0]~6_combout\);

-- Location: FF_X29_Y17_N3
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

-- Location: LCCOMB_X29_Y17_N22
\inst|uart_tx_u1|cnt_rom[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_rom[1]~4_combout\ = (\inst|uart_tx_u1|cnt_rom[0]~2_combout\ & (((\inst|uart_tx_u1|cnt_rom\(1))))) # (!\inst|uart_tx_u1|cnt_rom[0]~2_combout\ & (\inst|uart_tx_u1|always5~1_combout\ & (\inst|uart_tx_u1|cnt_rom\(0) $ 
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
	datad => \inst|uart_tx_u1|cnt_rom[0]~2_combout\,
	combout => \inst|uart_tx_u1|cnt_rom[1]~4_combout\);

-- Location: FF_X29_Y17_N23
\inst|uart_tx_u1|cnt_rom[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|cnt_rom[1]~4_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|cnt_rom\(1));

-- Location: LCCOMB_X29_Y17_N14
\inst|uart_tx_u1|Add19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add19~0_combout\ = \inst|uart_tx_u1|cnt_rom\(2) $ (((\inst|uart_tx_u1|cnt_rom\(1) & \inst|uart_tx_u1|cnt_rom\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|cnt_rom\(2),
	datac => \inst|uart_tx_u1|cnt_rom\(1),
	datad => \inst|uart_tx_u1|cnt_rom\(0),
	combout => \inst|uart_tx_u1|Add19~0_combout\);

-- Location: LCCOMB_X29_Y17_N0
\inst|uart_tx_u1|cnt_rom[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_rom[2]~3_combout\ = (\inst|uart_tx_u1|cnt_rom[0]~2_combout\ & (((\inst|uart_tx_u1|cnt_rom\(2))))) # (!\inst|uart_tx_u1|cnt_rom[0]~2_combout\ & (((\inst|uart_tx_u1|Add19~0_combout\)) # (!\inst|uart_tx_u1|always5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|always5~1_combout\,
	datab => \inst|uart_tx_u1|Add19~0_combout\,
	datac => \inst|uart_tx_u1|cnt_rom\(2),
	datad => \inst|uart_tx_u1|cnt_rom[0]~2_combout\,
	combout => \inst|uart_tx_u1|cnt_rom[2]~3_combout\);

-- Location: FF_X29_Y17_N1
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

-- Location: LCCOMB_X29_Y17_N28
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

-- Location: LCCOMB_X29_Y17_N16
\inst|uart_tx_u1|cnt_rom[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_rom[3]~5_combout\ = (\inst|uart_tx_u1|cnt_rom[0]~2_combout\ & (((\inst|uart_tx_u1|cnt_rom\(3))))) # (!\inst|uart_tx_u1|cnt_rom[0]~2_combout\ & (\inst|uart_tx_u1|always5~1_combout\ & (\inst|uart_tx_u1|Add19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|always5~1_combout\,
	datab => \inst|uart_tx_u1|Add19~1_combout\,
	datac => \inst|uart_tx_u1|cnt_rom\(3),
	datad => \inst|uart_tx_u1|cnt_rom[0]~2_combout\,
	combout => \inst|uart_tx_u1|cnt_rom[3]~5_combout\);

-- Location: FF_X29_Y17_N17
\inst|uart_tx_u1|cnt_rom[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|cnt_rom[3]~5_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|cnt_rom\(3));

-- Location: LCCOMB_X29_Y17_N10
\inst|uart_tx_u1|always0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|always0~5_combout\ = (!\inst|uart_tx_u1|cnt_rom\(3) & (\inst|uart_tx_u1|cnt_rom\(2) & \inst|uart_tx_u1|cnt_rom\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|cnt_rom\(3),
	datac => \inst|uart_tx_u1|cnt_rom\(2),
	datad => \inst|uart_tx_u1|cnt_rom\(0),
	combout => \inst|uart_tx_u1|always0~5_combout\);

-- Location: FF_X29_Y17_N11
\inst|uart_tx_u1|SEND_END_cmd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|always0~5_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|SEND_END_cmd~q\);

-- Location: LCCOMB_X29_Y17_N24
\inst|uart_tx_u1|btn~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|btn~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|uart_tx_u1|btn~feeder_combout\);

-- Location: FF_X29_Y17_N25
\inst|uart_tx_u1|btn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|btn~feeder_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|btn~q\);

-- Location: LCCOMB_X29_Y17_N30
\inst|uart_tx_u1|SEND_DATA_en~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|SEND_DATA_en~0_combout\ = (!\inst|uart_tx_u1|btn~q\ & ((\inst|uart_tx_u1|SEND_END_cmd~q\) # (\inst|uart_tx_u1|SEND_DATA_en~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|SEND_END_cmd~q\,
	datac => \inst|uart_tx_u1|SEND_DATA_en~q\,
	datad => \inst|uart_tx_u1|btn~q\,
	combout => \inst|uart_tx_u1|SEND_DATA_en~0_combout\);

-- Location: FF_X29_Y17_N31
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

-- Location: LCCOMB_X33_Y17_N0
\inst|uart_tx_u1|receive_ok_en~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|receive_ok_en~0_combout\ = (\inst|uart_tx_u1|stage_tx.STOP~q\ & (!\inst|uart_tx_u1|Equal4~3_combout\ & !\inst|uart_tx_u1|Equal4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|stage_tx.STOP~q\,
	datac => \inst|uart_tx_u1|Equal4~3_combout\,
	datad => \inst|uart_tx_u1|Equal4~2_combout\,
	combout => \inst|uart_tx_u1|receive_ok_en~0_combout\);

-- Location: FF_X33_Y17_N1
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

-- Location: LCCOMB_X37_Y16_N8
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

-- Location: LCCOMB_X37_Y16_N4
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

-- Location: LCCOMB_X37_Y16_N20
\inst|uart_rx_u2|cnt_baud[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|cnt_baud[6]~21_combout\ = (\inst|uart_rx_u2|cnt_baud\(6) & (\inst|uart_rx_u2|cnt_baud[5]~20\ $ (GND))) # (!\inst|uart_rx_u2|cnt_baud\(6) & (!\inst|uart_rx_u2|cnt_baud[5]~20\ & VCC))
-- \inst|uart_rx_u2|cnt_baud[6]~22\ = CARRY((\inst|uart_rx_u2|cnt_baud\(6) & !\inst|uart_rx_u2|cnt_baud[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|cnt_baud\(6),
	datad => VCC,
	cin => \inst|uart_rx_u2|cnt_baud[5]~20\,
	combout => \inst|uart_rx_u2|cnt_baud[6]~21_combout\,
	cout => \inst|uart_rx_u2|cnt_baud[6]~22\);

-- Location: LCCOMB_X37_Y16_N22
\inst|uart_rx_u2|cnt_baud[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|cnt_baud[7]~23_combout\ = (\inst|uart_rx_u2|cnt_baud\(7) & (!\inst|uart_rx_u2|cnt_baud[6]~22\)) # (!\inst|uart_rx_u2|cnt_baud\(7) & ((\inst|uart_rx_u2|cnt_baud[6]~22\) # (GND)))
-- \inst|uart_rx_u2|cnt_baud[7]~24\ = CARRY((!\inst|uart_rx_u2|cnt_baud[6]~22\) # (!\inst|uart_rx_u2|cnt_baud\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_baud\(7),
	datad => VCC,
	cin => \inst|uart_rx_u2|cnt_baud[6]~22\,
	combout => \inst|uart_rx_u2|cnt_baud[7]~23_combout\,
	cout => \inst|uart_rx_u2|cnt_baud[7]~24\);

-- Location: FF_X37_Y16_N23
\inst|uart_rx_u2|cnt_baud[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|cnt_baud[7]~23_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|cnt_baud[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|cnt_baud\(7));

-- Location: LCCOMB_X37_Y16_N24
\inst|uart_rx_u2|cnt_baud[8]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|cnt_baud[8]~25_combout\ = \inst|uart_rx_u2|cnt_baud[7]~24\ $ (!\inst|uart_rx_u2|cnt_baud\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_rx_u2|cnt_baud\(8),
	cin => \inst|uart_rx_u2|cnt_baud[7]~24\,
	combout => \inst|uart_rx_u2|cnt_baud[8]~25_combout\);

-- Location: FF_X37_Y16_N25
\inst|uart_rx_u2|cnt_baud[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|cnt_baud[8]~25_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|cnt_baud[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|cnt_baud\(8));

-- Location: LCCOMB_X35_Y17_N6
\inst|uart_rx_u2|stage_rx~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|stage_rx~9_combout\ = (\inst|uart_rx_u2|Equal2~1_combout\ & (((\inst|uart_rx_u2|stage_rx.STOP~q\)))) # (!\inst|uart_rx_u2|Equal2~1_combout\ & (\inst|uart_rx_u2|Decoder0~0_combout\ & (\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Decoder0~0_combout\,
	datab => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datac => \inst|uart_rx_u2|stage_rx.STOP~q\,
	datad => \inst|uart_rx_u2|Equal2~1_combout\,
	combout => \inst|uart_rx_u2|stage_rx~9_combout\);

-- Location: FF_X35_Y17_N7
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

-- Location: LCCOMB_X36_Y17_N30
\inst|uart_rx_u2|rx_done~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|rx_done~1_combout\ = (\inst|uart_rx_u2|R_receiving~q\ & ((\inst|uart_rx_u2|Equal2~1_combout\ & ((\inst|uart_rx_u2|rx_done~q\))) # (!\inst|uart_rx_u2|Equal2~1_combout\ & (\inst|uart_rx_u2|stage_rx.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Equal2~1_combout\,
	datab => \inst|uart_rx_u2|stage_rx.STOP~q\,
	datac => \inst|uart_rx_u2|rx_done~q\,
	datad => \inst|uart_rx_u2|R_receiving~q\,
	combout => \inst|uart_rx_u2|rx_done~1_combout\);

-- Location: FF_X36_Y17_N31
\inst|uart_rx_u2|rx_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|rx_done~1_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rx_done~q\);

-- Location: IOIBUF_X41_Y18_N15
\rx_c~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx_c,
	o => \rx_c~input_o\);

-- Location: FF_X36_Y17_N15
\inst|uart_rx_u2|rx_reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \rx_c~input_o\,
	clrn => \res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rx_reg0~q\);

-- Location: FF_X36_Y17_N5
\inst|uart_rx_u2|rx_reg1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \inst|uart_rx_u2|rx_reg0~q\,
	clrn => \res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rx_reg1~q\);

-- Location: FF_X36_Y17_N29
\inst|uart_rx_u2|rx_reg2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \inst|uart_rx_u2|rx_reg1~q\,
	clrn => \res~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rx_reg2~q\);

-- Location: LCCOMB_X36_Y17_N0
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

-- Location: FF_X36_Y17_N1
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

-- Location: LCCOMB_X36_Y17_N2
\inst|uart_rx_u2|R_receiving~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|R_receiving~0_combout\ = (!\inst|uart_rx_u2|rx_done~q\ & ((\inst|uart_rx_u2|R_receiving~q\) # ((!\inst|uart_rx_u2|rx_reg2~q\ & \inst|uart_rx_u2|rx_reg3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|rx_done~q\,
	datab => \inst|uart_rx_u2|rx_reg2~q\,
	datac => \inst|uart_rx_u2|R_receiving~q\,
	datad => \inst|uart_rx_u2|rx_reg3~q\,
	combout => \inst|uart_rx_u2|R_receiving~0_combout\);

-- Location: FF_X36_Y17_N3
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

-- Location: FF_X36_Y16_N17
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

-- Location: LCCOMB_X37_Y16_N2
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

-- Location: LCCOMB_X36_Y16_N16
\inst|uart_rx_u2|cnt_baud[4]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|cnt_baud[4]~27_combout\ = ((!\inst|uart_rx_u2|Equal1~1_combout\ & (\inst|uart_rx_u2|cnt_baud\(8) & \inst|uart_rx_u2|Equal1~0_combout\))) # (!\inst|uart_rx_u2|bps_rx_clk_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Equal1~1_combout\,
	datab => \inst|uart_rx_u2|cnt_baud\(8),
	datac => \inst|uart_rx_u2|bps_rx_clk_en~q\,
	datad => \inst|uart_rx_u2|Equal1~0_combout\,
	combout => \inst|uart_rx_u2|cnt_baud[4]~27_combout\);

-- Location: FF_X37_Y16_N9
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
	sclr => \inst|uart_rx_u2|cnt_baud[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|cnt_baud\(0));

-- Location: LCCOMB_X37_Y16_N10
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

-- Location: FF_X37_Y16_N11
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
	sclr => \inst|uart_rx_u2|cnt_baud[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|cnt_baud\(1));

-- Location: LCCOMB_X37_Y16_N12
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

-- Location: FF_X37_Y16_N13
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
	sclr => \inst|uart_rx_u2|cnt_baud[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|cnt_baud\(2));

-- Location: LCCOMB_X37_Y16_N14
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

-- Location: FF_X37_Y16_N15
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
	sclr => \inst|uart_rx_u2|cnt_baud[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|cnt_baud\(3));

-- Location: LCCOMB_X37_Y16_N16
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

-- Location: FF_X37_Y16_N17
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
	sclr => \inst|uart_rx_u2|cnt_baud[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|cnt_baud\(4));

-- Location: LCCOMB_X37_Y16_N18
\inst|uart_rx_u2|cnt_baud[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|cnt_baud[5]~19_combout\ = (\inst|uart_rx_u2|cnt_baud\(5) & (!\inst|uart_rx_u2|cnt_baud[4]~18\)) # (!\inst|uart_rx_u2|cnt_baud\(5) & ((\inst|uart_rx_u2|cnt_baud[4]~18\) # (GND)))
-- \inst|uart_rx_u2|cnt_baud[5]~20\ = CARRY((!\inst|uart_rx_u2|cnt_baud[4]~18\) # (!\inst|uart_rx_u2|cnt_baud\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|cnt_baud\(5),
	datad => VCC,
	cin => \inst|uart_rx_u2|cnt_baud[4]~18\,
	combout => \inst|uart_rx_u2|cnt_baud[5]~19_combout\,
	cout => \inst|uart_rx_u2|cnt_baud[5]~20\);

-- Location: FF_X37_Y16_N19
\inst|uart_rx_u2|cnt_baud[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|cnt_baud[5]~19_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|cnt_baud[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|cnt_baud\(5));

-- Location: FF_X37_Y16_N21
\inst|uart_rx_u2|cnt_baud[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|cnt_baud[6]~21_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|cnt_baud[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|cnt_baud\(6));

-- Location: LCCOMB_X37_Y16_N0
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

-- Location: LCCOMB_X36_Y17_N28
\inst|uart_rx_u2|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Equal2~1_combout\ = (\inst|uart_rx_u2|Equal2~0_combout\) # ((\inst|uart_rx_u2|cnt_baud\(8)) # (!\inst|uart_rx_u2|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Equal2~0_combout\,
	datab => \inst|uart_rx_u2|cnt_baud\(8),
	datad => \inst|uart_rx_u2|Equal1~0_combout\,
	combout => \inst|uart_rx_u2|Equal2~1_combout\);

-- Location: LCCOMB_X35_Y17_N0
\inst|uart_rx_u2|cnt_bit[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|cnt_bit[1]~1_combout\ = \inst|uart_rx_u2|cnt_bit\(1) $ (((\inst|uart_rx_u2|cnt_bit\(0) & (\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & !\inst|uart_rx_u2|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_bit\(0),
	datab => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datac => \inst|uart_rx_u2|cnt_bit\(1),
	datad => \inst|uart_rx_u2|Equal2~1_combout\,
	combout => \inst|uart_rx_u2|cnt_bit[1]~1_combout\);

-- Location: FF_X35_Y17_N1
\inst|uart_rx_u2|cnt_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|cnt_bit[1]~1_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|cnt_bit\(1));

-- Location: LCCOMB_X35_Y17_N22
\inst|uart_rx_u2|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Decoder0~0_combout\ = (\inst|uart_rx_u2|cnt_bit\(1) & (\inst|uart_rx_u2|cnt_bit\(0) & \inst|uart_rx_u2|cnt_bit\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|cnt_bit\(1),
	datac => \inst|uart_rx_u2|cnt_bit\(0),
	datad => \inst|uart_rx_u2|cnt_bit\(2),
	combout => \inst|uart_rx_u2|Decoder0~0_combout\);

-- Location: LCCOMB_X35_Y17_N2
\inst|uart_rx_u2|stage_rx~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|stage_rx~11_combout\ = (\inst|uart_rx_u2|R_receiving~q\ & ((\inst|uart_rx_u2|Equal2~1_combout\ & ((\inst|uart_rx_u2|stage_rx.START~q\))) # (!\inst|uart_rx_u2|Equal2~1_combout\ & (!\inst|uart_rx_u2|stage_rx.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|stage_rx.STOP~q\,
	datab => \inst|uart_rx_u2|Equal2~1_combout\,
	datac => \inst|uart_rx_u2|stage_rx.START~q\,
	datad => \inst|uart_rx_u2|R_receiving~q\,
	combout => \inst|uart_rx_u2|stage_rx~11_combout\);

-- Location: FF_X35_Y17_N3
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

-- Location: LCCOMB_X35_Y17_N26
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

-- Location: FF_X35_Y17_N27
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

-- Location: LCCOMB_X36_Y17_N20
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

-- Location: FF_X36_Y17_N21
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

-- Location: LCCOMB_X37_Y17_N10
\inst|uart_rx_u2|cnt_bit[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|cnt_bit[2]~2_combout\ = (\inst|uart_rx_u2|cnt_bit\(0) & (\inst|uart_rx_u2|cnt_bit\(1) & (\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & !\inst|uart_rx_u2|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_bit\(0),
	datab => \inst|uart_rx_u2|cnt_bit\(1),
	datac => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datad => \inst|uart_rx_u2|Equal2~1_combout\,
	combout => \inst|uart_rx_u2|cnt_bit[2]~2_combout\);

-- Location: LCCOMB_X37_Y17_N6
\inst|uart_rx_u2|cnt_bit[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|cnt_bit[2]~3_combout\ = \inst|uart_rx_u2|cnt_bit\(2) $ (\inst|uart_rx_u2|cnt_bit[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|uart_rx_u2|cnt_bit\(2),
	datad => \inst|uart_rx_u2|cnt_bit[2]~2_combout\,
	combout => \inst|uart_rx_u2|cnt_bit[2]~3_combout\);

-- Location: FF_X37_Y17_N7
\inst|uart_rx_u2|cnt_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|cnt_bit[2]~3_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|cnt_bit\(2));

-- Location: LCCOMB_X35_Y17_N14
\inst|uart_rx_u2|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector2~0_combout\ = (\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & (!\inst|uart_rx_u2|cnt_bit\(1) & (\inst|uart_rx_u2|cnt_bit\(0) & \rx_c~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datab => \inst|uart_rx_u2|cnt_bit\(1),
	datac => \inst|uart_rx_u2|cnt_bit\(0),
	datad => \rx_c~input_o\,
	combout => \inst|uart_rx_u2|Selector2~0_combout\);

-- Location: LCCOMB_X35_Y17_N4
\inst|uart_rx_u2|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector2~1_combout\ = (!\inst|uart_rx_u2|cnt_bit\(1) & \inst|uart_rx_u2|cnt_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|cnt_bit\(1),
	datac => \inst|uart_rx_u2|cnt_bit\(0),
	combout => \inst|uart_rx_u2|Selector2~1_combout\);

-- Location: LCCOMB_X35_Y17_N20
\inst|uart_rx_u2|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector6~0_combout\ = (\inst|uart_rx_u2|stage_rx.STOP~q\) # ((\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & ((\inst|uart_rx_u2|cnt_bit\(2)) # (!\inst|uart_rx_u2|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|stage_rx.STOP~q\,
	datab => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datac => \inst|uart_rx_u2|Selector2~1_combout\,
	datad => \inst|uart_rx_u2|cnt_bit\(2),
	combout => \inst|uart_rx_u2|Selector6~0_combout\);

-- Location: LCCOMB_X35_Y17_N28
\inst|uart_rx_u2|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector6~1_combout\ = (\inst|uart_rx_u2|cnt_bit\(2) & (((\inst|uart_rx_u2|rx_data\(1) & \inst|uart_rx_u2|Selector6~0_combout\)))) # (!\inst|uart_rx_u2|cnt_bit\(2) & ((\inst|uart_rx_u2|Selector2~0_combout\) # 
-- ((\inst|uart_rx_u2|rx_data\(1) & \inst|uart_rx_u2|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_bit\(2),
	datab => \inst|uart_rx_u2|Selector2~0_combout\,
	datac => \inst|uart_rx_u2|rx_data\(1),
	datad => \inst|uart_rx_u2|Selector6~0_combout\,
	combout => \inst|uart_rx_u2|Selector6~1_combout\);

-- Location: LCCOMB_X38_Y17_N4
\inst|uart_rx_u2|rx_done~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|rx_done~0_combout\ = ((!\inst|uart_rx_u2|Equal2~0_combout\ & (\inst|uart_rx_u2|Equal1~0_combout\ & !\inst|uart_rx_u2|cnt_baud\(8)))) # (!\inst|uart_rx_u2|R_receiving~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Equal2~0_combout\,
	datab => \inst|uart_rx_u2|Equal1~0_combout\,
	datac => \inst|uart_rx_u2|R_receiving~q\,
	datad => \inst|uart_rx_u2|cnt_baud\(8),
	combout => \inst|uart_rx_u2|rx_done~0_combout\);

-- Location: FF_X35_Y17_N29
\inst|uart_rx_u2|rx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|Selector6~1_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|ALT_INV_R_receiving~q\,
	ena => \inst|uart_rx_u2|rx_done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rx_data\(1));

-- Location: LCCOMB_X36_Y17_N22
\inst|uart_rx_u2|rxd[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|rxd[1]~feeder_combout\ = \inst|uart_rx_u2|rx_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_rx_u2|rx_data\(1),
	combout => \inst|uart_rx_u2|rxd[1]~feeder_combout\);

-- Location: LCCOMB_X36_Y17_N18
\inst|uart_rx_u2|rxd[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|rxd[7]~0_combout\ = (\res~input_o\ & (!\inst|uart_rx_u2|Equal2~1_combout\ & (\inst|uart_rx_u2|stage_rx.STOP~q\ & \inst|uart_rx_u2|R_receiving~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res~input_o\,
	datab => \inst|uart_rx_u2|Equal2~1_combout\,
	datac => \inst|uart_rx_u2|stage_rx.STOP~q\,
	datad => \inst|uart_rx_u2|R_receiving~q\,
	combout => \inst|uart_rx_u2|rxd[7]~0_combout\);

-- Location: FF_X36_Y17_N23
\inst|uart_rx_u2|rxd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|rxd[1]~feeder_combout\,
	ena => \inst|uart_rx_u2|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rxd\(1));

-- Location: LCCOMB_X37_Y17_N0
\inst|uart_rx_u2|Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector0~2_combout\ = (\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & \rx_c~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datad => \rx_c~input_o\,
	combout => \inst|uart_rx_u2|Selector0~2_combout\);

-- Location: LCCOMB_X37_Y17_N22
\inst|uart_rx_u2|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector5~0_combout\ = (!\inst|uart_rx_u2|cnt_bit\(0) & (\inst|uart_rx_u2|Selector0~2_combout\ & (\inst|uart_rx_u2|cnt_bit\(1) & !\inst|uart_rx_u2|cnt_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_bit\(0),
	datab => \inst|uart_rx_u2|Selector0~2_combout\,
	datac => \inst|uart_rx_u2|cnt_bit\(1),
	datad => \inst|uart_rx_u2|cnt_bit\(2),
	combout => \inst|uart_rx_u2|Selector5~0_combout\);

-- Location: LCCOMB_X37_Y17_N24
\inst|uart_rx_u2|Selector5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector5~1_combout\ = (\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & ((\inst|uart_rx_u2|cnt_bit\(0)) # ((\inst|uart_rx_u2|cnt_bit\(2)) # (!\inst|uart_rx_u2|cnt_bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_bit\(0),
	datab => \inst|uart_rx_u2|cnt_bit\(1),
	datac => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datad => \inst|uart_rx_u2|cnt_bit\(2),
	combout => \inst|uart_rx_u2|Selector5~1_combout\);

-- Location: LCCOMB_X37_Y17_N4
\inst|uart_rx_u2|Selector5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector5~2_combout\ = (\inst|uart_rx_u2|Selector5~0_combout\) # ((\inst|uart_rx_u2|rx_data\(2) & ((\inst|uart_rx_u2|Selector5~1_combout\) # (\inst|uart_rx_u2|stage_rx.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Selector5~0_combout\,
	datab => \inst|uart_rx_u2|Selector5~1_combout\,
	datac => \inst|uart_rx_u2|rx_data\(2),
	datad => \inst|uart_rx_u2|stage_rx.STOP~q\,
	combout => \inst|uart_rx_u2|Selector5~2_combout\);

-- Location: FF_X37_Y17_N5
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
	ena => \inst|uart_rx_u2|rx_done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rx_data\(2));

-- Location: LCCOMB_X36_Y17_N12
\inst|uart_rx_u2|rxd[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|rxd[2]~feeder_combout\ = \inst|uart_rx_u2|rx_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_rx_u2|rx_data\(2),
	combout => \inst|uart_rx_u2|rxd[2]~feeder_combout\);

-- Location: FF_X36_Y17_N13
\inst|uart_rx_u2|rxd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|rxd[2]~feeder_combout\,
	ena => \inst|uart_rx_u2|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rxd\(2));

-- Location: LCCOMB_X37_Y17_N26
\inst|uart_rx_u2|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector1~0_combout\ = (!\inst|uart_rx_u2|cnt_bit\(0) & (\inst|uart_rx_u2|Selector0~2_combout\ & (\inst|uart_rx_u2|cnt_bit\(1) & \inst|uart_rx_u2|cnt_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_bit\(0),
	datab => \inst|uart_rx_u2|Selector0~2_combout\,
	datac => \inst|uart_rx_u2|cnt_bit\(1),
	datad => \inst|uart_rx_u2|cnt_bit\(2),
	combout => \inst|uart_rx_u2|Selector1~0_combout\);

-- Location: LCCOMB_X37_Y17_N20
\inst|uart_rx_u2|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector1~1_combout\ = (\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & ((\inst|uart_rx_u2|cnt_bit\(0)) # ((!\inst|uart_rx_u2|cnt_bit\(2)) # (!\inst|uart_rx_u2|cnt_bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_bit\(0),
	datab => \inst|uart_rx_u2|cnt_bit\(1),
	datac => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datad => \inst|uart_rx_u2|cnt_bit\(2),
	combout => \inst|uart_rx_u2|Selector1~1_combout\);

-- Location: LCCOMB_X37_Y17_N12
\inst|uart_rx_u2|Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector1~2_combout\ = (\inst|uart_rx_u2|Selector1~0_combout\) # ((\inst|uart_rx_u2|rx_data\(6) & ((\inst|uart_rx_u2|Selector1~1_combout\) # (\inst|uart_rx_u2|stage_rx.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Selector1~0_combout\,
	datab => \inst|uart_rx_u2|Selector1~1_combout\,
	datac => \inst|uart_rx_u2|rx_data\(6),
	datad => \inst|uart_rx_u2|stage_rx.STOP~q\,
	combout => \inst|uart_rx_u2|Selector1~2_combout\);

-- Location: FF_X37_Y17_N13
\inst|uart_rx_u2|rx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|Selector1~2_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|ALT_INV_R_receiving~q\,
	ena => \inst|uart_rx_u2|rx_done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rx_data\(6));

-- Location: FF_X36_Y17_N11
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

-- Location: LCCOMB_X37_Y17_N28
\inst|uart_rx_u2|Selector7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector7~1_combout\ = (\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & ((\inst|uart_rx_u2|cnt_bit\(0)) # ((\inst|uart_rx_u2|cnt_bit\(1)) # (\inst|uart_rx_u2|cnt_bit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_bit\(0),
	datab => \inst|uart_rx_u2|cnt_bit\(1),
	datac => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datad => \inst|uart_rx_u2|cnt_bit\(2),
	combout => \inst|uart_rx_u2|Selector7~1_combout\);

-- Location: LCCOMB_X37_Y17_N18
\inst|uart_rx_u2|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector7~0_combout\ = (!\inst|uart_rx_u2|cnt_bit\(0) & (\inst|uart_rx_u2|Selector0~2_combout\ & (!\inst|uart_rx_u2|cnt_bit\(1) & !\inst|uart_rx_u2|cnt_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_bit\(0),
	datab => \inst|uart_rx_u2|Selector0~2_combout\,
	datac => \inst|uart_rx_u2|cnt_bit\(1),
	datad => \inst|uart_rx_u2|cnt_bit\(2),
	combout => \inst|uart_rx_u2|Selector7~0_combout\);

-- Location: LCCOMB_X37_Y17_N30
\inst|uart_rx_u2|Selector7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector7~2_combout\ = (\inst|uart_rx_u2|Selector7~0_combout\) # ((\inst|uart_rx_u2|rx_data\(0) & ((\inst|uart_rx_u2|stage_rx.STOP~q\) # (\inst|uart_rx_u2|Selector7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|stage_rx.STOP~q\,
	datab => \inst|uart_rx_u2|Selector7~1_combout\,
	datac => \inst|uart_rx_u2|rx_data\(0),
	datad => \inst|uart_rx_u2|Selector7~0_combout\,
	combout => \inst|uart_rx_u2|Selector7~2_combout\);

-- Location: FF_X37_Y17_N31
\inst|uart_rx_u2|rx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|Selector7~2_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|ALT_INV_R_receiving~q\,
	ena => \inst|uart_rx_u2|rx_done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rx_data\(0));

-- Location: FF_X36_Y17_N25
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

-- Location: LCCOMB_X35_Y17_N10
\inst|uart_rx_u2|Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector2~2_combout\ = (\inst|uart_rx_u2|stage_rx.STOP~q\) # ((\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & ((!\inst|uart_rx_u2|cnt_bit\(2)) # (!\inst|uart_rx_u2|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|stage_rx.STOP~q\,
	datab => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datac => \inst|uart_rx_u2|Selector2~1_combout\,
	datad => \inst|uart_rx_u2|cnt_bit\(2),
	combout => \inst|uart_rx_u2|Selector2~2_combout\);

-- Location: LCCOMB_X35_Y17_N18
\inst|uart_rx_u2|Selector2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector2~3_combout\ = (\inst|uart_rx_u2|Selector2~2_combout\ & ((\inst|uart_rx_u2|rx_data\(5)) # ((\inst|uart_rx_u2|Selector2~0_combout\ & \inst|uart_rx_u2|cnt_bit\(2))))) # (!\inst|uart_rx_u2|Selector2~2_combout\ & 
-- (\inst|uart_rx_u2|Selector2~0_combout\ & ((\inst|uart_rx_u2|cnt_bit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Selector2~2_combout\,
	datab => \inst|uart_rx_u2|Selector2~0_combout\,
	datac => \inst|uart_rx_u2|rx_data\(5),
	datad => \inst|uart_rx_u2|cnt_bit\(2),
	combout => \inst|uart_rx_u2|Selector2~3_combout\);

-- Location: FF_X35_Y17_N19
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
	ena => \inst|uart_rx_u2|rx_done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rx_data\(5));

-- Location: LCCOMB_X36_Y17_N6
\inst|uart_rx_u2|rxd[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|rxd[5]~feeder_combout\ = \inst|uart_rx_u2|rx_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_rx_u2|rx_data\(5),
	combout => \inst|uart_rx_u2|rxd[5]~feeder_combout\);

-- Location: FF_X36_Y17_N7
\inst|uart_rx_u2|rxd[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|rxd[5]~feeder_combout\,
	ena => \inst|uart_rx_u2|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rxd\(5));

-- Location: LCCOMB_X37_Y17_N16
\inst|uart_rx_u2|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector3~1_combout\ = (\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & ((\inst|uart_rx_u2|cnt_bit\(0)) # ((\inst|uart_rx_u2|cnt_bit\(1)) # (!\inst|uart_rx_u2|cnt_bit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_bit\(0),
	datab => \inst|uart_rx_u2|cnt_bit\(1),
	datac => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datad => \inst|uart_rx_u2|cnt_bit\(2),
	combout => \inst|uart_rx_u2|Selector3~1_combout\);

-- Location: LCCOMB_X37_Y17_N2
\inst|uart_rx_u2|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector3~0_combout\ = (!\inst|uart_rx_u2|cnt_bit\(0) & (\inst|uart_rx_u2|Selector0~2_combout\ & (!\inst|uart_rx_u2|cnt_bit\(1) & \inst|uart_rx_u2|cnt_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_bit\(0),
	datab => \inst|uart_rx_u2|Selector0~2_combout\,
	datac => \inst|uart_rx_u2|cnt_bit\(1),
	datad => \inst|uart_rx_u2|cnt_bit\(2),
	combout => \inst|uart_rx_u2|Selector3~0_combout\);

-- Location: LCCOMB_X37_Y17_N14
\inst|uart_rx_u2|Selector3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector3~2_combout\ = (\inst|uart_rx_u2|Selector3~0_combout\) # ((\inst|uart_rx_u2|rx_data\(4) & ((\inst|uart_rx_u2|stage_rx.STOP~q\) # (\inst|uart_rx_u2|Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|stage_rx.STOP~q\,
	datab => \inst|uart_rx_u2|Selector3~1_combout\,
	datac => \inst|uart_rx_u2|rx_data\(4),
	datad => \inst|uart_rx_u2|Selector3~0_combout\,
	combout => \inst|uart_rx_u2|Selector3~2_combout\);

-- Location: FF_X37_Y17_N15
\inst|uart_rx_u2|rx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|Selector3~2_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|ALT_INV_R_receiving~q\,
	ena => \inst|uart_rx_u2|rx_done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rx_data\(4));

-- Location: FF_X36_Y17_N9
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

-- Location: LCCOMB_X35_Y17_N8
\inst|uart_rx_u2|Selector0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector0~3_combout\ = (\inst|uart_rx_u2|rx_data\(7) & ((\inst|uart_rx_u2|stage_rx.STOP~q\) # ((!\inst|uart_rx_u2|Decoder0~0_combout\ & \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|stage_rx.STOP~q\,
	datab => \inst|uart_rx_u2|rx_data\(7),
	datac => \inst|uart_rx_u2|Decoder0~0_combout\,
	datad => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	combout => \inst|uart_rx_u2|Selector0~3_combout\);

-- Location: LCCOMB_X35_Y17_N16
\inst|uart_rx_u2|Selector0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector0~4_combout\ = (\inst|uart_rx_u2|Selector0~3_combout\) # ((\inst|uart_rx_u2|Decoder0~0_combout\ & (\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & \rx_c~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Decoder0~0_combout\,
	datab => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datac => \inst|uart_rx_u2|Selector0~3_combout\,
	datad => \rx_c~input_o\,
	combout => \inst|uart_rx_u2|Selector0~4_combout\);

-- Location: FF_X35_Y17_N17
\inst|uart_rx_u2|rx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|Selector0~4_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|ALT_INV_R_receiving~q\,
	ena => \inst|uart_rx_u2|rx_done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rx_data\(7));

-- Location: FF_X36_Y17_N27
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

-- Location: LCCOMB_X35_Y17_N30
\inst|uart_rx_u2|Selector4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector4~2_combout\ = (\inst|uart_rx_u2|cnt_bit\(1) & (\inst|uart_rx_u2|cnt_bit\(0) & !\inst|uart_rx_u2|cnt_bit\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|cnt_bit\(1),
	datac => \inst|uart_rx_u2|cnt_bit\(0),
	datad => \inst|uart_rx_u2|cnt_bit\(2),
	combout => \inst|uart_rx_u2|Selector4~2_combout\);

-- Location: LCCOMB_X35_Y17_N12
\inst|uart_rx_u2|Selector4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector4~3_combout\ = (\inst|uart_rx_u2|rx_data\(3) & ((\inst|uart_rx_u2|stage_rx.STOP~q\) # ((!\inst|uart_rx_u2|Selector4~2_combout\ & \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|stage_rx.STOP~q\,
	datab => \inst|uart_rx_u2|rx_data\(3),
	datac => \inst|uart_rx_u2|Selector4~2_combout\,
	datad => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	combout => \inst|uart_rx_u2|Selector4~3_combout\);

-- Location: LCCOMB_X35_Y17_N24
\inst|uart_rx_u2|Selector4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector4~4_combout\ = (\inst|uart_rx_u2|Selector4~3_combout\) # ((\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & (\inst|uart_rx_u2|Selector4~2_combout\ & \rx_c~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Selector4~3_combout\,
	datab => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datac => \inst|uart_rx_u2|Selector4~2_combout\,
	datad => \rx_c~input_o\,
	combout => \inst|uart_rx_u2|Selector4~4_combout\);

-- Location: FF_X35_Y17_N25
\inst|uart_rx_u2|rx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|Selector4~4_combout\,
	clrn => \res~input_o\,
	sclr => \inst|uart_rx_u2|ALT_INV_R_receiving~q\,
	ena => \inst|uart_rx_u2|rx_done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rx_data\(3));

-- Location: LCCOMB_X36_Y17_N16
\inst|uart_rx_u2|rxd[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|rxd[3]~feeder_combout\ = \inst|uart_rx_u2|rx_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_rx_u2|rx_data\(3),
	combout => \inst|uart_rx_u2|rxd[3]~feeder_combout\);

-- Location: FF_X36_Y17_N17
\inst|uart_rx_u2|rxd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|rxd[3]~feeder_combout\,
	ena => \inst|uart_rx_u2|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rxd\(3));

-- Location: LCCOMB_X36_Y17_N26
\inst|receiver_OK_u1|state~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|receiver_OK_u1|state~11_combout\ = (!\inst|uart_rx_u2|rxd\(5) & (!\inst|uart_rx_u2|rxd\(4) & (!\inst|uart_rx_u2|rxd\(7) & \inst|uart_rx_u2|rxd\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|rxd\(5),
	datab => \inst|uart_rx_u2|rxd\(4),
	datac => \inst|uart_rx_u2|rxd\(7),
	datad => \inst|uart_rx_u2|rxd\(3),
	combout => \inst|receiver_OK_u1|state~11_combout\);

-- Location: LCCOMB_X33_Y17_N20
\inst|receiver_OK_u1|state~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|receiver_OK_u1|state~14_combout\ = (\inst|uart_rx_u2|rxd\(1) & (\inst|uart_rx_u2|rxd\(6) & (\inst|uart_rx_u2|rxd\(0) & \inst|receiver_OK_u1|state~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|rxd\(1),
	datab => \inst|uart_rx_u2|rxd\(6),
	datac => \inst|uart_rx_u2|rxd\(0),
	datad => \inst|receiver_OK_u1|state~11_combout\,
	combout => \inst|receiver_OK_u1|state~14_combout\);

-- Location: LCCOMB_X33_Y17_N8
\inst|receiver_OK_u1|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|receiver_OK_u1|Selector0~0_combout\ = (\inst|receiver_OK_u1|state~13_combout\) # ((\inst|receiver_OK_u1|state~15_combout\) # (\inst|receiver_OK_u1|state~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|receiver_OK_u1|state~13_combout\,
	datab => \inst|receiver_OK_u1|state~15_combout\,
	datac => \inst|receiver_OK_u1|state~16_combout\,
	combout => \inst|receiver_OK_u1|Selector0~0_combout\);

-- Location: LCCOMB_X37_Y17_N8
\inst|uart_rx_u2|RECEIVE_END~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|RECEIVE_END~0_combout\ = (\inst|uart_rx_u2|stage_rx.STOP~q\ & (!\inst|uart_rx_u2|Equal2~0_combout\ & (\inst|uart_rx_u2|Equal1~0_combout\ & !\inst|uart_rx_u2|cnt_baud\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|stage_rx.STOP~q\,
	datab => \inst|uart_rx_u2|Equal2~0_combout\,
	datac => \inst|uart_rx_u2|Equal1~0_combout\,
	datad => \inst|uart_rx_u2|cnt_baud\(8),
	combout => \inst|uart_rx_u2|RECEIVE_END~0_combout\);

-- Location: FF_X37_Y17_N9
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

-- Location: FF_X33_Y17_N9
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

-- Location: LCCOMB_X33_Y17_N26
\inst|receiver_OK_u1|state~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|receiver_OK_u1|state~16_combout\ = (\inst|receiver_OK_u1|state~14_combout\ & (!\inst|receiver_OK_u1|state.000~q\ & \inst|uart_rx_u2|rxd\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|receiver_OK_u1|state~14_combout\,
	datac => \inst|receiver_OK_u1|state.000~q\,
	datad => \inst|uart_rx_u2|rxd\(2),
	combout => \inst|receiver_OK_u1|state~16_combout\);

-- Location: FF_X33_Y17_N15
\inst|receiver_OK_u1|state.001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \inst|receiver_OK_u1|state~16_combout\,
	clrn => \res~input_o\,
	sload => VCC,
	ena => \inst|uart_rx_u2|RECEIVE_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|receiver_OK_u1|state.001~q\);

-- Location: LCCOMB_X33_Y17_N14
\inst|receiver_OK_u1|state~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|receiver_OK_u1|state~15_combout\ = (\inst|receiver_OK_u1|state~14_combout\ & (\inst|receiver_OK_u1|state.001~q\ & !\inst|uart_rx_u2|rxd\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|receiver_OK_u1|state~14_combout\,
	datac => \inst|receiver_OK_u1|state.001~q\,
	datad => \inst|uart_rx_u2|rxd\(2),
	combout => \inst|receiver_OK_u1|state~15_combout\);

-- Location: FF_X33_Y17_N29
\inst|receiver_OK_u1|state.010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \inst|receiver_OK_u1|state~15_combout\,
	clrn => \res~input_o\,
	sload => VCC,
	ena => \inst|uart_rx_u2|RECEIVE_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|receiver_OK_u1|state.010~q\);

-- Location: LCCOMB_X33_Y17_N28
\inst|receiver_OK_u1|state~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|receiver_OK_u1|state~12_combout\ = (!\inst|uart_rx_u2|rxd\(1) & (\inst|uart_rx_u2|rxd\(2) & (\inst|receiver_OK_u1|state.010~q\ & \inst|uart_rx_u2|rxd\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|rxd\(1),
	datab => \inst|uart_rx_u2|rxd\(2),
	datac => \inst|receiver_OK_u1|state.010~q\,
	datad => \inst|uart_rx_u2|rxd\(0),
	combout => \inst|receiver_OK_u1|state~12_combout\);

-- Location: LCCOMB_X33_Y17_N22
\inst|receiver_OK_u1|state~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|receiver_OK_u1|state~13_combout\ = (\inst|receiver_OK_u1|state~12_combout\ & (!\inst|uart_rx_u2|rxd\(6) & \inst|receiver_OK_u1|state~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|receiver_OK_u1|state~12_combout\,
	datac => \inst|uart_rx_u2|rxd\(6),
	datad => \inst|receiver_OK_u1|state~11_combout\,
	combout => \inst|receiver_OK_u1|state~13_combout\);

-- Location: FF_X33_Y17_N11
\inst|receiver_OK_u1|state.011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \inst|receiver_OK_u1|state~13_combout\,
	clrn => \res~input_o\,
	sload => VCC,
	ena => \inst|uart_rx_u2|RECEIVE_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|receiver_OK_u1|state.011~q\);

-- Location: LCCOMB_X33_Y17_N10
\inst|receiver_OK_u1|OK~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|receiver_OK_u1|OK~2_combout\ = (\inst|uart_rx_u2|RECEIVE_END~q\ & (((\inst|receiver_OK_u1|state.011~q\)))) # (!\inst|uart_rx_u2|RECEIVE_END~q\ & (\inst|receiver_OK_u1|OK~q\ & (\inst|uart_tx_u1|receive_ok_en~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|receiver_OK_u1|OK~q\,
	datab => \inst|uart_tx_u1|receive_ok_en~q\,
	datac => \inst|receiver_OK_u1|state.011~q\,
	datad => \inst|uart_rx_u2|RECEIVE_END~q\,
	combout => \inst|receiver_OK_u1|OK~2_combout\);

-- Location: LCCOMB_X33_Y17_N18
\inst|receiver_OK_u1|OK~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|receiver_OK_u1|OK~1_combout\ = (\inst|uart_rx_u2|rxd\(1) & (!\inst|uart_rx_u2|rxd\(6) & (!\inst|uart_rx_u2|rxd\(0) & !\inst|uart_rx_u2|rxd\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|rxd\(1),
	datab => \inst|uart_rx_u2|rxd\(6),
	datac => \inst|uart_rx_u2|rxd\(0),
	datad => \inst|uart_rx_u2|rxd\(2),
	combout => \inst|receiver_OK_u1|OK~1_combout\);

-- Location: LCCOMB_X33_Y17_N2
\inst|receiver_OK_u1|OK~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|receiver_OK_u1|OK~3_combout\ = (\inst|receiver_OK_u1|OK~2_combout\ & ((\inst|receiver_OK_u1|OK~q\) # ((\inst|receiver_OK_u1|OK~1_combout\ & \inst|receiver_OK_u1|state~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|receiver_OK_u1|OK~2_combout\,
	datab => \inst|receiver_OK_u1|OK~1_combout\,
	datac => \inst|receiver_OK_u1|OK~q\,
	datad => \inst|receiver_OK_u1|state~11_combout\,
	combout => \inst|receiver_OK_u1|OK~3_combout\);

-- Location: FF_X33_Y17_N3
\inst|receiver_OK_u1|OK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|receiver_OK_u1|OK~3_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|receiver_OK_u1|OK~q\);

-- Location: LCCOMB_X29_Y17_N4
\inst|uart_tx_u1|always0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|always0~0_combout\ = (!\inst|uart_tx_u1|SEND_DATA_en~q\ & (!\inst|uart_tx_u1|Equal3~2_combout\ & ((\inst|receiver_OK_u1|OK~q\) # (\inst|uart_tx_u1|Equal4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|SEND_DATA_en~q\,
	datab => \inst|receiver_OK_u1|OK~q\,
	datac => \inst|uart_tx_u1|Equal4~4_combout\,
	datad => \inst|uart_tx_u1|Equal3~2_combout\,
	combout => \inst|uart_tx_u1|always0~0_combout\);

-- Location: LCCOMB_X29_Y17_N18
\inst|uart_tx_u1|addr[0]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr[0]~14_combout\ = (\inst|uart_tx_u1|always0~0_combout\ & \inst|uart_tx_u1|stage_tx.STOP~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|uart_tx_u1|always0~0_combout\,
	datad => \inst|uart_tx_u1|stage_tx.STOP~q\,
	combout => \inst|uart_tx_u1|addr[0]~14_combout\);

-- Location: LCCOMB_X30_Y17_N26
\inst|uart_tx_u1|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Selector0~0_combout\ = (\inst|uart_tx_u1|addr[0]~14_combout\) # ((\inst|uart_tx_u1|Equal3~2_combout\ & ((\inst|uart_tx_u1|stage_tx.START~q\))) # (!\inst|uart_tx_u1|Equal3~2_combout\ & (!\inst|uart_tx_u1|stage_tx.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Equal3~2_combout\,
	datab => \inst|uart_tx_u1|stage_tx.IDLE~q\,
	datac => \inst|uart_tx_u1|stage_tx.START~q\,
	datad => \inst|uart_tx_u1|addr[0]~14_combout\,
	combout => \inst|uart_tx_u1|Selector0~0_combout\);

-- Location: FF_X30_Y17_N27
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

-- Location: LCCOMB_X30_Y17_N24
\inst|uart_tx_u1|tx~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|tx~0_combout\ = (!\inst|uart_tx_u1|stage_tx.SEND_DATA~q\ & ((\inst|uart_tx_u1|stage_tx.STOP~q\) # (!\inst|uart_tx_u1|tx~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|tx~q\,
	datac => \inst|uart_tx_u1|stage_tx.SEND_DATA~q\,
	datad => \inst|uart_tx_u1|stage_tx.STOP~q\,
	combout => \inst|uart_tx_u1|tx~0_combout\);

-- Location: LCCOMB_X30_Y17_N30
\inst|uart_tx_u1|tx~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|tx~2_combout\ = (!\inst|uart_tx_u1|cnt_bit\(0) & (\inst|uart_tx_u1|AT|rom~124_combout\ & \inst|uart_tx_u1|cnt_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|cnt_bit\(0),
	datac => \inst|uart_tx_u1|AT|rom~124_combout\,
	datad => \inst|uart_tx_u1|cnt_bit\(1),
	combout => \inst|uart_tx_u1|tx~2_combout\);

-- Location: LCCOMB_X30_Y17_N10
\inst|uart_tx_u1|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux8~0_combout\ = (\inst|uart_tx_u1|cnt_bit\(1) & (((\inst|uart_tx_u1|cnt_bit\(0))))) # (!\inst|uart_tx_u1|cnt_bit\(1) & ((\inst|uart_tx_u1|cnt_bit\(0) & ((\inst|uart_tx_u1|AT|rom~47_combout\))) # (!\inst|uart_tx_u1|cnt_bit\(0) & 
-- (\inst|uart_tx_u1|AT|rom~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|AT|rom~66_combout\,
	datab => \inst|uart_tx_u1|cnt_bit\(1),
	datac => \inst|uart_tx_u1|cnt_bit\(0),
	datad => \inst|uart_tx_u1|AT|rom~47_combout\,
	combout => \inst|uart_tx_u1|Mux8~0_combout\);

-- Location: LCCOMB_X30_Y17_N4
\inst|uart_tx_u1|Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux8~1_combout\ = (\inst|uart_tx_u1|Mux8~0_combout\ & (((\inst|uart_tx_u1|AT|rom~85_combout\)) # (!\inst|uart_tx_u1|cnt_bit\(1)))) # (!\inst|uart_tx_u1|Mux8~0_combout\ & (\inst|uart_tx_u1|cnt_bit\(1) & 
-- ((\inst|uart_tx_u1|AT|rom~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Mux8~0_combout\,
	datab => \inst|uart_tx_u1|cnt_bit\(1),
	datac => \inst|uart_tx_u1|AT|rom~85_combout\,
	datad => \inst|uart_tx_u1|AT|rom~28_combout\,
	combout => \inst|uart_tx_u1|Mux8~1_combout\);

-- Location: LCCOMB_X30_Y17_N28
\inst|uart_tx_u1|tx~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|tx~1_combout\ = (!\inst|uart_tx_u1|cnt_bit\(1) & ((\inst|uart_tx_u1|cnt_bit\(0) & ((\inst|uart_tx_u1|AT|rom~102_combout\))) # (!\inst|uart_tx_u1|cnt_bit\(0) & (\inst|uart_tx_u1|AT|rom~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_bit\(0),
	datab => \inst|uart_tx_u1|AT|rom~128_combout\,
	datac => \inst|uart_tx_u1|AT|rom~102_combout\,
	datad => \inst|uart_tx_u1|cnt_bit\(1),
	combout => \inst|uart_tx_u1|tx~1_combout\);

-- Location: LCCOMB_X30_Y17_N20
\inst|uart_tx_u1|tx~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|tx~3_combout\ = (\inst|uart_tx_u1|cnt_bit\(2) & ((\inst|uart_tx_u1|tx~2_combout\) # ((\inst|uart_tx_u1|tx~1_combout\)))) # (!\inst|uart_tx_u1|cnt_bit\(2) & (((\inst|uart_tx_u1|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|tx~2_combout\,
	datab => \inst|uart_tx_u1|Mux8~1_combout\,
	datac => \inst|uart_tx_u1|cnt_bit\(2),
	datad => \inst|uart_tx_u1|tx~1_combout\,
	combout => \inst|uart_tx_u1|tx~3_combout\);

-- Location: LCCOMB_X30_Y17_N0
\inst|uart_tx_u1|tx~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|tx~4_combout\ = (\inst|uart_tx_u1|stage_tx.START~q\) # ((!\inst|uart_tx_u1|tx~0_combout\ & ((!\inst|uart_tx_u1|tx~3_combout\) # (!\inst|uart_tx_u1|stage_tx.SEND_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|stage_tx.START~q\,
	datab => \inst|uart_tx_u1|tx~0_combout\,
	datac => \inst|uart_tx_u1|stage_tx.SEND_DATA~q\,
	datad => \inst|uart_tx_u1|tx~3_combout\,
	combout => \inst|uart_tx_u1|tx~4_combout\);

-- Location: FF_X30_Y17_N1
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

-- Location: LCCOMB_X21_Y13_N0
\inst6|krow[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|krow[3]~0_combout\ = !\inst6|bond~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|bond~6_combout\,
	combout => \inst6|krow[3]~0_combout\);

-- Location: FF_X21_Y13_N1
\inst6|krow[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst6|krow[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|krow\(3));

-- Location: LCCOMB_X24_Y13_N0
\inst6|krow[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|krow[2]~1_combout\ = !\inst6|bond~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|bond~5_combout\,
	combout => \inst6|krow[2]~1_combout\);

-- Location: FF_X24_Y13_N1
\inst6|krow[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst6|krow[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|krow\(2));

-- Location: LCCOMB_X24_Y13_N14
\inst6|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Mux6~0_combout\ = (!\inst6|bond\(1) & ((\inst6|bond\(0)) # ((\key_c[3]~input_o\ & \inst6|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_c[3]~input_o\,
	datab => \inst6|bond\(1),
	datac => \inst6|Equal0~0_combout\,
	datad => \inst6|bond\(0),
	combout => \inst6|Mux6~0_combout\);

-- Location: FF_X24_Y13_N15
\inst6|krow[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst6|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|krow\(1));

ww_tx_c <= \tx_c~output_o\;

ww_txd <= \txd~output_o\;

ww_key_r(3) <= \key_r[3]~output_o\;

ww_key_r(2) <= \key_r[2]~output_o\;

ww_key_r(1) <= \key_r[1]~output_o\;
END structure;


