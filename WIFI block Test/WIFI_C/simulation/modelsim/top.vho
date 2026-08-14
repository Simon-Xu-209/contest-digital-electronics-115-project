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

-- DATE "08/14/2026 08:53:19"

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
	key_c : IN std_logic_vector(4 DOWNTO 1);
	rx_c : IN std_logic;
	txd : OUT std_logic;
	key_r : OUT std_logic_vector(4 DOWNTO 1)
	);
END top;

-- Design Ports Information
-- tx_c	=>  Location: PIN_166,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txd	=>  Location: PIN_167,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_r[4]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_r[3]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_r[2]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_r[1]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_c	=>  Location: PIN_164,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ck	=>  Location: PIN_149,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res	=>  Location: PIN_145,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_c[2]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_c[1]	=>  Location: PIN_82,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_c[4]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_c[3]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_key_c : std_logic_vector(4 DOWNTO 1);
SIGNAL ww_rx_c : std_logic;
SIGNAL ww_txd : std_logic;
SIGNAL ww_key_r : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst6|T[13]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ck~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tx_c~output_o\ : std_logic;
SIGNAL \txd~output_o\ : std_logic;
SIGNAL \key_r[4]~output_o\ : std_logic;
SIGNAL \key_r[3]~output_o\ : std_logic;
SIGNAL \key_r[2]~output_o\ : std_logic;
SIGNAL \key_r[1]~output_o\ : std_logic;
SIGNAL \ck~input_o\ : std_logic;
SIGNAL \ck~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add17~0_combout\ : std_logic;
SIGNAL \res~input_o\ : std_logic;
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
SIGNAL \inst|uart_tx_u1|Equal3~1_combout\ : std_logic;
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
SIGNAL \inst|uart_tx_u1|stage_tx.IDLE~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|stage_tx.IDLE~q\ : std_logic;
SIGNAL \inst|uart_tx_u1|Equal3~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Selector1~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|stage_tx.SEND_DATA~q\ : std_logic;
SIGNAL \inst|uart_tx_u1|start_cnt~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|start_cnt~q\ : std_logic;
SIGNAL \inst|uart_tx_u1|cnt_bit[0]~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|cnt_bit[1]~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|cnt_bit[1]~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|cnt_bit[2]~3_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|always5~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|always5~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add19~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|cnt_rom[2]~3_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add19~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|cnt_rom[3]~5_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|always0~4_combout\ : std_logic;
SIGNAL \inst6|T[0]~39_combout\ : std_logic;
SIGNAL \inst6|T[1]~13_combout\ : std_logic;
SIGNAL \inst6|T[1]~14\ : std_logic;
SIGNAL \inst6|T[2]~15_combout\ : std_logic;
SIGNAL \inst6|T[2]~16\ : std_logic;
SIGNAL \inst6|T[3]~17_combout\ : std_logic;
SIGNAL \inst6|T[3]~18\ : std_logic;
SIGNAL \inst6|T[4]~19_combout\ : std_logic;
SIGNAL \inst6|T[4]~20\ : std_logic;
SIGNAL \inst6|T[5]~21_combout\ : std_logic;
SIGNAL \inst6|T[5]~22\ : std_logic;
SIGNAL \inst6|T[6]~23_combout\ : std_logic;
SIGNAL \inst6|T[6]~24\ : std_logic;
SIGNAL \inst6|T[7]~25_combout\ : std_logic;
SIGNAL \inst6|T[7]~26\ : std_logic;
SIGNAL \inst6|T[8]~27_combout\ : std_logic;
SIGNAL \inst6|T[8]~28\ : std_logic;
SIGNAL \inst6|T[9]~29_combout\ : std_logic;
SIGNAL \inst6|T[9]~30\ : std_logic;
SIGNAL \inst6|T[10]~31_combout\ : std_logic;
SIGNAL \inst6|T[10]~32\ : std_logic;
SIGNAL \inst6|T[11]~33_combout\ : std_logic;
SIGNAL \inst6|T[11]~34\ : std_logic;
SIGNAL \inst6|T[12]~35_combout\ : std_logic;
SIGNAL \inst6|T[12]~36\ : std_logic;
SIGNAL \inst6|T[13]~37_combout\ : std_logic;
SIGNAL \inst6|T[13]~clkctrl_outclk\ : std_logic;
SIGNAL \key_c[3]~input_o\ : std_logic;
SIGNAL \key_c[4]~input_o\ : std_logic;
SIGNAL \key_c[1]~input_o\ : std_logic;
SIGNAL \key_c[2]~input_o\ : std_logic;
SIGNAL \inst6|Equal0~0_combout\ : std_logic;
SIGNAL \inst6|key[1]~0_combout\ : std_logic;
SIGNAL \inst6|bond~1_combout\ : std_logic;
SIGNAL \inst6|DSW~feeder_combout\ : std_logic;
SIGNAL \inst6|DSW~q\ : std_logic;
SIGNAL \inst6|Mux4~0_combout\ : std_logic;
SIGNAL \inst6|Mux0~2_combout\ : std_logic;
SIGNAL \inst6|key[1]~1_combout\ : std_logic;
SIGNAL \inst6|key[1]~2_combout\ : std_logic;
SIGNAL \inst|Select_mode_u1|LED_select[0]~feeder_combout\ : std_logic;
SIGNAL \inst6|Mux0~1_combout\ : std_logic;
SIGNAL \inst6|Mux0~0_combout\ : std_logic;
SIGNAL \inst6|Mux0~3_combout\ : std_logic;
SIGNAL \inst6|Mux0~4_combout\ : std_logic;
SIGNAL \inst6|bond[1]~feeder_combout\ : std_logic;
SIGNAL \inst6|bond~0_combout\ : std_logic;
SIGNAL \inst6|Mux3~0_combout\ : std_logic;
SIGNAL \inst|Select_mode_u1|LED_select[1]~feeder_combout\ : std_logic;
SIGNAL \inst6|Mux2~1_combout\ : std_logic;
SIGNAL \inst6|Mux2~0_combout\ : std_logic;
SIGNAL \inst6|Mux2~3_combout\ : std_logic;
SIGNAL \inst6|Mux2~2_combout\ : std_logic;
SIGNAL \inst6|Mux2~4_combout\ : std_logic;
SIGNAL \inst|Select_mode_u1|LED_select[2]~feeder_combout\ : std_logic;
SIGNAL \inst6|Mux1~0_combout\ : std_logic;
SIGNAL \inst6|Mux1~1_combout\ : std_logic;
SIGNAL \inst6|Mux1~2_combout\ : std_logic;
SIGNAL \inst6|Mux1~3_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[3]~33_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|always0~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|always0~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[3]~34_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Send_addr_w[0]~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|enable~feeder_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|enable~q\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Send_addr[0]~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~121_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~73_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~122_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~114_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~118_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~115_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~116_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~117_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~119_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~108_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~112_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~110_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~109_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~111_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~113_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~120_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~123_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~90_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~91_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~76_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~77_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~81_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~79_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~78_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~80_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~82_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~87_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~84_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~85_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~86_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~83_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~88_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~89_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~92_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~107_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~98_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~94_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~95_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~96_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~97_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~99_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~100_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~104_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~101_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~102_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~103_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~105_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~106_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~93_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~124_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~125_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Equal4~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Send_addr[0]~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add15~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add13~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add7~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add5~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux7~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux7~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add3~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add9~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add1~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux7~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add11~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux7~3_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux7~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[0]~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~7_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|always0~3_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~1\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|always1~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Send_addr[1]~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[1]~3_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add15~1\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add15~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add11~1\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add11~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add3~1\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add3~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add7~1\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add7~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux6~5_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux6~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add1~1\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add1~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add9~1\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add9~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux6~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add5~1\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add5~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add13~1\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add13~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux6~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add4~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add12~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add8~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add0~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux6~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux6~3_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux6~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux6~7_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~3\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Send_addr[2]~3_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[2]~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add7~3\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add7~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add15~3\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add15~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux5~7_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux5~8_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add12~1\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add12~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add13~3\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add13~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add5~3\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add5~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add4~1\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add4~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux5~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux5~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add11~3\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add11~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add10~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add2~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add3~3\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add3~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux5~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux5~3_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add9~3\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add9~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add8~1\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add8~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add0~1\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add0~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add1~3\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add1~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux5~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux5~5_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux5~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux5~9_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~5\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Send_addr[3]~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[3]~28_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add14~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add12~3\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add12~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~43_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add15~5\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add15~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add13~5\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add13~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~44_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add11~5\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add11~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add10~1\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add10~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add9~5\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add9~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add8~3\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add8~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~40_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~41_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[3]~21_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~42_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add5~5\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add5~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[3]~25_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add7~5\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add7~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[3]~24_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add4~3\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add4~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add3~5\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add3~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add2~1\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add2~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add1~5\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add1~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add0~3\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add0~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~36_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~37_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~38_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~39_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~45_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~46_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~7\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~8_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Send_addr[4]~5_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add14~1\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add14~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add13~7\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add13~8_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add12~5\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add12~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~30_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add15~7\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add15~8_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~31_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add11~7\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add11~8_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add9~7\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add9~8_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add10~3\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add10~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add8~5\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add8~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~19_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~20_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add7~7\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add7~8_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add5~7\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add5~8_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add4~5\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add4~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~26_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add3~7\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add3~8_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add1~7\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add1~8_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add0~5\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add0~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~22_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add2~3\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add2~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~23_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~27_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~29_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~32_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~35_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~9\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~10_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Send_addr[5]~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[5]~5_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add5~9\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add5~10_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add13~9\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add13~10_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add9~9\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add9~10_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add1~9\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add1~10_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~9_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~10_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add4~7\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add4~8_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add0~7\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add0~8_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add8~7\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add8~8_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~13_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add12~7\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add12~8_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~14_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add14~3\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add14~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add2~5\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add2~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add10~5\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add10~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~11_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~12_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~15_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add15~9\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add15~10_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add7~9\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add7~10_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add11~9\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add11~10_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add3~9\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add3~10_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~16_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~17_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~18_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~11\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~12_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Send_addr[6]~7_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[6]~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add5~11\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add5~12_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add7~11\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add7~12_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add1~11\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add1~12_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add3~11\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add3~12_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~47_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~48_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add6~5_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add0~9\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add0~10_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add2~7\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add2~8_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~51_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add4~9\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add4~10_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~52_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add10~7\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add10~8_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add14~5\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add14~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add12~9\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add12~10_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add8~9\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add8~10_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~49_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~50_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~53_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add13~11\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add13~12_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add15~11\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add15~12_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add11~11\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add11~12_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add9~11\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add9~12_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~54_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~55_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~56_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~13\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add16~14_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Send_addr[7]~8_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[7]~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add15~13\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add15~14_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add6~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add7~13\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add7~14_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~64_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add14~7\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add14~8_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~65_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add3~13\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add3~14_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add11~13\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add11~14_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add10~9\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add10~10_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add2~9\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add2~10_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~57_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~58_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add12~11\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add12~12_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add13~13\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add13~14_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add4~11\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add4~12_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add5~13\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add5~14_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~59_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~60_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add1~13\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add1~14_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add9~13\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add9~14_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add8~11\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add8~12_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add0~11\ : std_logic;
SIGNAL \inst|uart_tx_u1|Add0~12_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~61_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~62_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~63_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr~66_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~54_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~51_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~52_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~53_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~55_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~48_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~44_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~45_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~46_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~47_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~49_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~42_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~38_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~39_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~40_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~41_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~43_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~50_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~56_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~3_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~5_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~10_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~7_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~8_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~9_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~11_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~12_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~16_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~14_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~13_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~15_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~17_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~18_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~35_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~33_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~32_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~34_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~36_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~29_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~25_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~26_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~27_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~28_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~30_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~19_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~23_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~20_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~21_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~22_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~24_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~31_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~37_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~70_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~71_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~72_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~74_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~57_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~61_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~58_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~59_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~60_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~62_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~67_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~63_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~65_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~64_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~66_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~68_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~69_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|AT|rom~75_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Equal4~3_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Equal4~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|cnt_rom[3]~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|cnt_rom[0]~6_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|cnt_rom[1]~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|btn~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|btn~q\ : std_logic;
SIGNAL \inst|uart_tx_u1|SEND_END_cmd~feeder_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|SEND_END_cmd~q\ : std_logic;
SIGNAL \inst|uart_tx_u1|SEND_DATA_en~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|SEND_DATA_en~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[0]~9_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[6]~22\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[7]~23_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Equal1~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Equal1~1_combout\ : std_logic;
SIGNAL \rx_c~input_o\ : std_logic;
SIGNAL \inst|uart_rx_u2|rx_reg0~feeder_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|rx_reg0~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|rx_reg1~feeder_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|rx_reg1~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|rx_reg2~feeder_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|rx_reg2~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|stage_rx~11_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|stage_rx.START~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|stage_rx~10_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_bit[0]~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_bit[2]~2_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_bit[2]~3_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Decoder0~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|stage_rx~9_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|stage_rx.STOP~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|rx_done~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|rx_done~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|rx_reg3~feeder_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|rx_reg3~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|R_receiving~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|R_receiving~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|bps_rx_clk_en~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[7]~24\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[8]~25_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|cnt_baud[7]~27_combout\ : std_logic;
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
SIGNAL \inst|uart_rx_u2|Selector0~2_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector5~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector5~1_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector5~2_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|rx_data[3]~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|rxd[2]~feeder_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|rxd[7]~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector7~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector7~1_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector7~2_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|rxd[0]~feeder_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector1~1_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector1~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector1~2_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|rxd[6]~feeder_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector2~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector2~1_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector6~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector6~1_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|rxd[1]~feeder_combout\ : std_logic;
SIGNAL \inst|receiver_OK_u1|OK~1_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|RECEIVE_END~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|RECEIVE_END~q\ : std_logic;
SIGNAL \inst|uart_tx_u1|receive_ok_en~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|receive_ok_en~q\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector3~0_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector3~1_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector3~2_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|rxd[4]~feeder_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector2~2_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector2~3_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|rxd[5]~feeder_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector0~3_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector0~4_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector4~2_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector4~3_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|Selector4~4_combout\ : std_logic;
SIGNAL \inst|uart_rx_u2|rxd[3]~feeder_combout\ : std_logic;
SIGNAL \inst|receiver_OK_u1|state~11_combout\ : std_logic;
SIGNAL \inst|receiver_OK_u1|state~14_combout\ : std_logic;
SIGNAL \inst|receiver_OK_u1|Selector0~0_combout\ : std_logic;
SIGNAL \inst|receiver_OK_u1|state.000~q\ : std_logic;
SIGNAL \inst|receiver_OK_u1|state~16_combout\ : std_logic;
SIGNAL \inst|receiver_OK_u1|state.001~q\ : std_logic;
SIGNAL \inst|receiver_OK_u1|state~15_combout\ : std_logic;
SIGNAL \inst|receiver_OK_u1|state.010~q\ : std_logic;
SIGNAL \inst|receiver_OK_u1|state~12_combout\ : std_logic;
SIGNAL \inst|receiver_OK_u1|state~13_combout\ : std_logic;
SIGNAL \inst|receiver_OK_u1|state.011~feeder_combout\ : std_logic;
SIGNAL \inst|receiver_OK_u1|state.011~q\ : std_logic;
SIGNAL \inst|receiver_OK_u1|OK~2_combout\ : std_logic;
SIGNAL \inst|receiver_OK_u1|OK~3_combout\ : std_logic;
SIGNAL \inst|receiver_OK_u1|OK~q\ : std_logic;
SIGNAL \inst|uart_tx_u1|always0~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Selector2~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|stage_tx.STOP~q\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr[0]~8_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Selector0~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|stage_tx.START~q\ : std_logic;
SIGNAL \inst|uart_tx_u1|tx~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|tx~2_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|tx~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux8~0_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|Mux8~1_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|tx~3_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|tx~4_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|tx~q\ : std_logic;
SIGNAL \inst6|Decoder0~0_combout\ : std_logic;
SIGNAL \inst6|Decoder0~1_combout\ : std_logic;
SIGNAL \inst6|Decoder0~2_combout\ : std_logic;
SIGNAL \inst6|Decoder0~3_combout\ : std_logic;
SIGNAL \inst|uart_tx_u1|addr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|uart_tx_u1|cnt_bit\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|uart_tx_u1|cnt_baud\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|uart_rx_u2|cnt_baud\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|uart_tx_u1|Send_addr_w\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|uart_rx_u2|rxd\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|uart_tx_u1|cnt_rom\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|uart_rx_u2|rx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|uart_rx_u2|cnt_bit\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|Select_mode_u1|LED_select\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst6|krow\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst6|key\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst6|bond\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst6|T\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst|uart_rx_u2|ALT_INV_R_receiving~q\ : std_logic;
SIGNAL \inst6|ALT_INV_key\ : std_logic_vector(4 DOWNTO 4);
SIGNAL \inst|uart_tx_u1|ALT_INV_always0~3_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Equal0~0_combout\ : std_logic;
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

\inst6|T[13]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst6|T\(13));

\ck~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ck~input_o\);
\inst|uart_rx_u2|ALT_INV_R_receiving~q\ <= NOT \inst|uart_rx_u2|R_receiving~q\;
\inst6|ALT_INV_key\(4) <= NOT \inst6|key\(4);
\inst|uart_tx_u1|ALT_INV_always0~3_combout\ <= NOT \inst|uart_tx_u1|always0~3_combout\;
\inst6|ALT_INV_Equal0~0_combout\ <= NOT \inst6|Equal0~0_combout\;
\inst|uart_tx_u1|ALT_INV_tx~q\ <= NOT \inst|uart_tx_u1|tx~q\;

-- Location: IOOBUF_X41_Y19_N2
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

-- Location: IOOBUF_X14_Y0_N2
\key_r[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|krow\(4),
	devoe => ww_devoe,
	o => \key_r[4]~output_o\);

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

-- Location: LCCOMB_X27_Y17_N12
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

-- Location: FF_X27_Y17_N13
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

-- Location: LCCOMB_X27_Y17_N14
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

-- Location: LCCOMB_X27_Y17_N10
\inst|uart_tx_u1|cnt_baud~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_baud~3_combout\ = (\inst|uart_tx_u1|Add17~2_combout\ & ((\inst|uart_tx_u1|Equal3~0_combout\) # ((\inst|uart_tx_u1|Equal3~1_combout\) # (!\inst|uart_tx_u1|cnt_baud\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Equal3~0_combout\,
	datab => \inst|uart_tx_u1|Equal3~1_combout\,
	datac => \inst|uart_tx_u1|Add17~2_combout\,
	datad => \inst|uart_tx_u1|cnt_baud\(0),
	combout => \inst|uart_tx_u1|cnt_baud~3_combout\);

-- Location: FF_X27_Y17_N11
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

-- Location: LCCOMB_X27_Y17_N16
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

-- Location: FF_X27_Y17_N17
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

-- Location: LCCOMB_X27_Y17_N18
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

-- Location: FF_X27_Y17_N19
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

-- Location: LCCOMB_X27_Y17_N20
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

-- Location: LCCOMB_X27_Y17_N8
\inst|uart_tx_u1|cnt_baud~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_baud~4_combout\ = (\inst|uart_tx_u1|Add17~8_combout\ & ((\inst|uart_tx_u1|Equal3~0_combout\) # ((\inst|uart_tx_u1|Equal3~1_combout\) # (!\inst|uart_tx_u1|cnt_baud\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Equal3~0_combout\,
	datab => \inst|uart_tx_u1|Add17~8_combout\,
	datac => \inst|uart_tx_u1|Equal3~1_combout\,
	datad => \inst|uart_tx_u1|cnt_baud\(0),
	combout => \inst|uart_tx_u1|cnt_baud~4_combout\);

-- Location: FF_X27_Y17_N9
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

-- Location: LCCOMB_X27_Y17_N2
\inst|uart_tx_u1|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Equal3~1_combout\ = (\inst|uart_tx_u1|cnt_baud\(1)) # ((\inst|uart_tx_u1|cnt_baud\(2)) # ((\inst|uart_tx_u1|cnt_baud\(3)) # (!\inst|uart_tx_u1|cnt_baud\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_baud\(1),
	datab => \inst|uart_tx_u1|cnt_baud\(2),
	datac => \inst|uart_tx_u1|cnt_baud\(4),
	datad => \inst|uart_tx_u1|cnt_baud\(3),
	combout => \inst|uart_tx_u1|Equal3~1_combout\);

-- Location: LCCOMB_X27_Y17_N22
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

-- Location: LCCOMB_X27_Y17_N4
\inst|uart_tx_u1|cnt_baud~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_baud~2_combout\ = (\inst|uart_tx_u1|Add17~10_combout\ & ((\inst|uart_tx_u1|Equal3~0_combout\) # ((\inst|uart_tx_u1|Equal3~1_combout\) # (!\inst|uart_tx_u1|cnt_baud\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Equal3~0_combout\,
	datab => \inst|uart_tx_u1|Equal3~1_combout\,
	datac => \inst|uart_tx_u1|Add17~10_combout\,
	datad => \inst|uart_tx_u1|cnt_baud\(0),
	combout => \inst|uart_tx_u1|cnt_baud~2_combout\);

-- Location: FF_X27_Y17_N5
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

-- Location: LCCOMB_X27_Y17_N24
\inst|uart_tx_u1|Add17~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add17~12_combout\ = (\inst|uart_tx_u1|cnt_baud\(6) & (\inst|uart_tx_u1|Add17~11\ $ (GND))) # (!\inst|uart_tx_u1|cnt_baud\(6) & (!\inst|uart_tx_u1|Add17~11\ & VCC))
-- \inst|uart_tx_u1|Add17~13\ = CARRY((\inst|uart_tx_u1|cnt_baud\(6) & !\inst|uart_tx_u1|Add17~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|cnt_baud\(6),
	datad => VCC,
	cin => \inst|uart_tx_u1|Add17~11\,
	combout => \inst|uart_tx_u1|Add17~12_combout\,
	cout => \inst|uart_tx_u1|Add17~13\);

-- Location: FF_X27_Y17_N25
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

-- Location: LCCOMB_X27_Y17_N26
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

-- Location: LCCOMB_X27_Y17_N6
\inst|uart_tx_u1|cnt_baud~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_baud~1_combout\ = (\inst|uart_tx_u1|Add17~14_combout\ & ((\inst|uart_tx_u1|Equal3~0_combout\) # ((\inst|uart_tx_u1|Equal3~1_combout\) # (!\inst|uart_tx_u1|cnt_baud\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Equal3~0_combout\,
	datab => \inst|uart_tx_u1|Equal3~1_combout\,
	datac => \inst|uart_tx_u1|Add17~14_combout\,
	datad => \inst|uart_tx_u1|cnt_baud\(0),
	combout => \inst|uart_tx_u1|cnt_baud~1_combout\);

-- Location: FF_X27_Y17_N7
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

-- Location: LCCOMB_X27_Y17_N28
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

-- Location: LCCOMB_X27_Y17_N0
\inst|uart_tx_u1|cnt_baud~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_baud~0_combout\ = (\inst|uart_tx_u1|Add17~16_combout\ & ((\inst|uart_tx_u1|Equal3~0_combout\) # ((\inst|uart_tx_u1|Equal3~1_combout\) # (!\inst|uart_tx_u1|cnt_baud\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Equal3~0_combout\,
	datab => \inst|uart_tx_u1|Add17~16_combout\,
	datac => \inst|uart_tx_u1|Equal3~1_combout\,
	datad => \inst|uart_tx_u1|cnt_baud\(0),
	combout => \inst|uart_tx_u1|cnt_baud~0_combout\);

-- Location: FF_X27_Y17_N1
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

-- Location: LCCOMB_X28_Y17_N4
\inst|uart_tx_u1|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Equal3~0_combout\ = (((\inst|uart_tx_u1|cnt_baud\(6)) # (!\inst|uart_tx_u1|cnt_baud\(5))) # (!\inst|uart_tx_u1|cnt_baud\(7))) # (!\inst|uart_tx_u1|cnt_baud\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_baud\(8),
	datab => \inst|uart_tx_u1|cnt_baud\(7),
	datac => \inst|uart_tx_u1|cnt_baud\(5),
	datad => \inst|uart_tx_u1|cnt_baud\(6),
	combout => \inst|uart_tx_u1|Equal3~0_combout\);

-- Location: LCCOMB_X27_Y17_N30
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

-- Location: FF_X27_Y17_N31
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

-- Location: LCCOMB_X26_Y17_N16
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

-- Location: LCCOMB_X26_Y17_N0
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

-- Location: FF_X26_Y17_N1
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

-- Location: LCCOMB_X26_Y17_N12
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

-- Location: FF_X26_Y17_N13
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

-- Location: LCCOMB_X26_Y17_N22
\inst|uart_tx_u1|cnt_bit[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_bit[0]~2_combout\ = \inst|uart_tx_u1|cnt_bit\(0) $ (((\inst|uart_tx_u1|start_cnt~q\ & (!\inst|uart_tx_u1|Equal3~2_combout\ & \inst|uart_tx_u1|stage_tx.SEND_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|start_cnt~q\,
	datab => \inst|uart_tx_u1|Equal3~2_combout\,
	datac => \inst|uart_tx_u1|cnt_bit\(0),
	datad => \inst|uart_tx_u1|stage_tx.SEND_DATA~q\,
	combout => \inst|uart_tx_u1|cnt_bit[0]~2_combout\);

-- Location: FF_X26_Y17_N23
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

-- Location: LCCOMB_X26_Y17_N18
\inst|uart_tx_u1|cnt_bit[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_bit[1]~0_combout\ = (\inst|uart_tx_u1|start_cnt~q\ & (!\inst|uart_tx_u1|Equal3~2_combout\ & (\inst|uart_tx_u1|cnt_bit\(0) & \inst|uart_tx_u1|stage_tx.SEND_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|start_cnt~q\,
	datab => \inst|uart_tx_u1|Equal3~2_combout\,
	datac => \inst|uart_tx_u1|cnt_bit\(0),
	datad => \inst|uart_tx_u1|stage_tx.SEND_DATA~q\,
	combout => \inst|uart_tx_u1|cnt_bit[1]~0_combout\);

-- Location: LCCOMB_X26_Y17_N4
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

-- Location: FF_X26_Y17_N5
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

-- Location: LCCOMB_X26_Y17_N14
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

-- Location: FF_X26_Y17_N15
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

-- Location: LCCOMB_X26_Y17_N30
\inst|uart_tx_u1|always5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|always5~0_combout\ = (\inst|uart_tx_u1|cnt_bit\(0) & (\inst|uart_tx_u1|cnt_bit\(2) & (\inst|uart_tx_u1|cnt_bit\(1) & !\inst|uart_tx_u1|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_bit\(0),
	datab => \inst|uart_tx_u1|cnt_bit\(2),
	datac => \inst|uart_tx_u1|cnt_bit\(1),
	datad => \inst|uart_tx_u1|Equal3~2_combout\,
	combout => \inst|uart_tx_u1|always5~0_combout\);

-- Location: LCCOMB_X26_Y16_N6
\inst|uart_tx_u1|always5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|always5~1_combout\ = (\inst|uart_tx_u1|always5~0_combout\ & \inst|uart_tx_u1|stage_tx.SEND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|uart_tx_u1|always5~0_combout\,
	datad => \inst|uart_tx_u1|stage_tx.SEND_DATA~q\,
	combout => \inst|uart_tx_u1|always5~1_combout\);

-- Location: LCCOMB_X26_Y16_N18
\inst|uart_tx_u1|Add19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add19~0_combout\ = \inst|uart_tx_u1|cnt_rom\(2) $ (((\inst|uart_tx_u1|cnt_rom\(1) & \inst|uart_tx_u1|cnt_rom\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|cnt_rom\(1),
	datac => \inst|uart_tx_u1|cnt_rom\(2),
	datad => \inst|uart_tx_u1|cnt_rom\(0),
	combout => \inst|uart_tx_u1|Add19~0_combout\);

-- Location: LCCOMB_X26_Y16_N26
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

-- Location: FF_X26_Y16_N27
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

-- Location: LCCOMB_X26_Y16_N8
\inst|uart_tx_u1|Add19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add19~1_combout\ = \inst|uart_tx_u1|cnt_rom\(3) $ (((\inst|uart_tx_u1|cnt_rom\(2) & (\inst|uart_tx_u1|cnt_rom\(0) & \inst|uart_tx_u1|cnt_rom\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_rom\(2),
	datab => \inst|uart_tx_u1|cnt_rom\(0),
	datac => \inst|uart_tx_u1|cnt_rom\(3),
	datad => \inst|uart_tx_u1|cnt_rom\(1),
	combout => \inst|uart_tx_u1|Add19~1_combout\);

-- Location: LCCOMB_X26_Y16_N30
\inst|uart_tx_u1|cnt_rom[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_rom[3]~5_combout\ = (\inst|uart_tx_u1|cnt_rom[3]~2_combout\ & (((\inst|uart_tx_u1|cnt_rom\(3))))) # (!\inst|uart_tx_u1|cnt_rom[3]~2_combout\ & (\inst|uart_tx_u1|always5~1_combout\ & (\inst|uart_tx_u1|Add19~1_combout\)))

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
	combout => \inst|uart_tx_u1|cnt_rom[3]~5_combout\);

-- Location: FF_X26_Y16_N31
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

-- Location: LCCOMB_X26_Y16_N10
\inst|uart_tx_u1|always0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|always0~4_combout\ = (!\inst|uart_tx_u1|cnt_rom\(3) & (\inst|uart_tx_u1|cnt_rom\(0) & \inst|uart_tx_u1|cnt_rom\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_rom\(3),
	datab => \inst|uart_tx_u1|cnt_rom\(0),
	datac => \inst|uart_tx_u1|cnt_rom\(2),
	combout => \inst|uart_tx_u1|always0~4_combout\);

-- Location: LCCOMB_X40_Y15_N30
\inst6|T[0]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|T[0]~39_combout\ = !\inst6|T\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|T\(0),
	combout => \inst6|T[0]~39_combout\);

-- Location: FF_X40_Y15_N31
\inst6|T[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst6|T[0]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|T\(0));

-- Location: LCCOMB_X40_Y15_N4
\inst6|T[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|T[1]~13_combout\ = (\inst6|T\(0) & (\inst6|T\(1) $ (VCC))) # (!\inst6|T\(0) & (\inst6|T\(1) & VCC))
-- \inst6|T[1]~14\ = CARRY((\inst6|T\(0) & \inst6|T\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|T\(0),
	datab => \inst6|T\(1),
	datad => VCC,
	combout => \inst6|T[1]~13_combout\,
	cout => \inst6|T[1]~14\);

-- Location: FF_X40_Y15_N5
\inst6|T[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst6|T[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|T\(1));

-- Location: LCCOMB_X40_Y15_N6
\inst6|T[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|T[2]~15_combout\ = (\inst6|T\(2) & (!\inst6|T[1]~14\)) # (!\inst6|T\(2) & ((\inst6|T[1]~14\) # (GND)))
-- \inst6|T[2]~16\ = CARRY((!\inst6|T[1]~14\) # (!\inst6|T\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|T\(2),
	datad => VCC,
	cin => \inst6|T[1]~14\,
	combout => \inst6|T[2]~15_combout\,
	cout => \inst6|T[2]~16\);

-- Location: FF_X40_Y15_N7
\inst6|T[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst6|T[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|T\(2));

-- Location: LCCOMB_X40_Y15_N8
\inst6|T[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|T[3]~17_combout\ = (\inst6|T\(3) & (\inst6|T[2]~16\ $ (GND))) # (!\inst6|T\(3) & (!\inst6|T[2]~16\ & VCC))
-- \inst6|T[3]~18\ = CARRY((\inst6|T\(3) & !\inst6|T[2]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|T\(3),
	datad => VCC,
	cin => \inst6|T[2]~16\,
	combout => \inst6|T[3]~17_combout\,
	cout => \inst6|T[3]~18\);

-- Location: FF_X40_Y15_N9
\inst6|T[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst6|T[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|T\(3));

-- Location: LCCOMB_X40_Y15_N10
\inst6|T[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|T[4]~19_combout\ = (\inst6|T\(4) & (!\inst6|T[3]~18\)) # (!\inst6|T\(4) & ((\inst6|T[3]~18\) # (GND)))
-- \inst6|T[4]~20\ = CARRY((!\inst6|T[3]~18\) # (!\inst6|T\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|T\(4),
	datad => VCC,
	cin => \inst6|T[3]~18\,
	combout => \inst6|T[4]~19_combout\,
	cout => \inst6|T[4]~20\);

-- Location: FF_X40_Y15_N11
\inst6|T[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst6|T[4]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|T\(4));

-- Location: LCCOMB_X40_Y15_N12
\inst6|T[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|T[5]~21_combout\ = (\inst6|T\(5) & (\inst6|T[4]~20\ $ (GND))) # (!\inst6|T\(5) & (!\inst6|T[4]~20\ & VCC))
-- \inst6|T[5]~22\ = CARRY((\inst6|T\(5) & !\inst6|T[4]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|T\(5),
	datad => VCC,
	cin => \inst6|T[4]~20\,
	combout => \inst6|T[5]~21_combout\,
	cout => \inst6|T[5]~22\);

-- Location: FF_X40_Y15_N13
\inst6|T[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst6|T[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|T\(5));

-- Location: LCCOMB_X40_Y15_N14
\inst6|T[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|T[6]~23_combout\ = (\inst6|T\(6) & (!\inst6|T[5]~22\)) # (!\inst6|T\(6) & ((\inst6|T[5]~22\) # (GND)))
-- \inst6|T[6]~24\ = CARRY((!\inst6|T[5]~22\) # (!\inst6|T\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|T\(6),
	datad => VCC,
	cin => \inst6|T[5]~22\,
	combout => \inst6|T[6]~23_combout\,
	cout => \inst6|T[6]~24\);

-- Location: FF_X40_Y15_N15
\inst6|T[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst6|T[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|T\(6));

-- Location: LCCOMB_X40_Y15_N16
\inst6|T[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|T[7]~25_combout\ = (\inst6|T\(7) & (\inst6|T[6]~24\ $ (GND))) # (!\inst6|T\(7) & (!\inst6|T[6]~24\ & VCC))
-- \inst6|T[7]~26\ = CARRY((\inst6|T\(7) & !\inst6|T[6]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|T\(7),
	datad => VCC,
	cin => \inst6|T[6]~24\,
	combout => \inst6|T[7]~25_combout\,
	cout => \inst6|T[7]~26\);

-- Location: FF_X40_Y15_N17
\inst6|T[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst6|T[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|T\(7));

-- Location: LCCOMB_X40_Y15_N18
\inst6|T[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|T[8]~27_combout\ = (\inst6|T\(8) & (!\inst6|T[7]~26\)) # (!\inst6|T\(8) & ((\inst6|T[7]~26\) # (GND)))
-- \inst6|T[8]~28\ = CARRY((!\inst6|T[7]~26\) # (!\inst6|T\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|T\(8),
	datad => VCC,
	cin => \inst6|T[7]~26\,
	combout => \inst6|T[8]~27_combout\,
	cout => \inst6|T[8]~28\);

-- Location: FF_X40_Y15_N19
\inst6|T[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst6|T[8]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|T\(8));

-- Location: LCCOMB_X40_Y15_N20
\inst6|T[9]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|T[9]~29_combout\ = (\inst6|T\(9) & (\inst6|T[8]~28\ $ (GND))) # (!\inst6|T\(9) & (!\inst6|T[8]~28\ & VCC))
-- \inst6|T[9]~30\ = CARRY((\inst6|T\(9) & !\inst6|T[8]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|T\(9),
	datad => VCC,
	cin => \inst6|T[8]~28\,
	combout => \inst6|T[9]~29_combout\,
	cout => \inst6|T[9]~30\);

-- Location: FF_X40_Y15_N21
\inst6|T[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst6|T[9]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|T\(9));

-- Location: LCCOMB_X40_Y15_N22
\inst6|T[10]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|T[10]~31_combout\ = (\inst6|T\(10) & (!\inst6|T[9]~30\)) # (!\inst6|T\(10) & ((\inst6|T[9]~30\) # (GND)))
-- \inst6|T[10]~32\ = CARRY((!\inst6|T[9]~30\) # (!\inst6|T\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|T\(10),
	datad => VCC,
	cin => \inst6|T[9]~30\,
	combout => \inst6|T[10]~31_combout\,
	cout => \inst6|T[10]~32\);

-- Location: FF_X40_Y15_N23
\inst6|T[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst6|T[10]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|T\(10));

-- Location: LCCOMB_X40_Y15_N24
\inst6|T[11]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|T[11]~33_combout\ = (\inst6|T\(11) & (\inst6|T[10]~32\ $ (GND))) # (!\inst6|T\(11) & (!\inst6|T[10]~32\ & VCC))
-- \inst6|T[11]~34\ = CARRY((\inst6|T\(11) & !\inst6|T[10]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|T\(11),
	datad => VCC,
	cin => \inst6|T[10]~32\,
	combout => \inst6|T[11]~33_combout\,
	cout => \inst6|T[11]~34\);

-- Location: FF_X40_Y15_N25
\inst6|T[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst6|T[11]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|T\(11));

-- Location: LCCOMB_X40_Y15_N26
\inst6|T[12]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|T[12]~35_combout\ = (\inst6|T\(12) & (!\inst6|T[11]~34\)) # (!\inst6|T\(12) & ((\inst6|T[11]~34\) # (GND)))
-- \inst6|T[12]~36\ = CARRY((!\inst6|T[11]~34\) # (!\inst6|T\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|T\(12),
	datad => VCC,
	cin => \inst6|T[11]~34\,
	combout => \inst6|T[12]~35_combout\,
	cout => \inst6|T[12]~36\);

-- Location: FF_X40_Y15_N27
\inst6|T[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst6|T[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|T\(12));

-- Location: LCCOMB_X40_Y15_N28
\inst6|T[13]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|T[13]~37_combout\ = \inst6|T[12]~36\ $ (!\inst6|T\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|T\(13),
	cin => \inst6|T[12]~36\,
	combout => \inst6|T[13]~37_combout\);

-- Location: FF_X40_Y15_N29
\inst6|T[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst6|T[13]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|T\(13));

-- Location: CLKCTRL_G7
\inst6|T[13]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst6|T[13]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst6|T[13]~clkctrl_outclk\);

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

-- Location: IOIBUF_X19_Y0_N1
\key_c[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_c(4),
	o => \key_c[4]~input_o\);

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

-- Location: LCCOMB_X19_Y16_N14
\inst6|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Equal0~0_combout\ = (((!\key_c[2]~input_o\) # (!\key_c[1]~input_o\)) # (!\key_c[4]~input_o\)) # (!\key_c[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_c[3]~input_o\,
	datab => \key_c[4]~input_o\,
	datac => \key_c[1]~input_o\,
	datad => \key_c[2]~input_o\,
	combout => \inst6|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y16_N24
\inst6|key[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|key[1]~0_combout\ = (\key_c[3]~input_o\ & ((\key_c[4]~input_o\ & (\key_c[1]~input_o\ $ (!\key_c[2]~input_o\))) # (!\key_c[4]~input_o\ & ((!\key_c[2]~input_o\) # (!\key_c[1]~input_o\))))) # (!\key_c[3]~input_o\ & (((!\key_c[2]~input_o\) # 
-- (!\key_c[1]~input_o\)) # (!\key_c[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_c[3]~input_o\,
	datab => \key_c[4]~input_o\,
	datac => \key_c[1]~input_o\,
	datad => \key_c[2]~input_o\,
	combout => \inst6|key[1]~0_combout\);

-- Location: LCCOMB_X20_Y16_N8
\inst6|bond~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|bond~1_combout\ = \inst6|bond\(0) $ (!\inst6|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|bond\(0),
	datad => \inst6|Equal0~0_combout\,
	combout => \inst6|bond~1_combout\);

-- Location: FF_X20_Y16_N9
\inst6|bond[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|T[13]~clkctrl_outclk\,
	d => \inst6|bond~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|bond\(0));

-- Location: LCCOMB_X19_Y16_N20
\inst6|DSW~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|DSW~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst6|DSW~feeder_combout\);

-- Location: FF_X19_Y16_N21
\inst6|DSW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|T[13]~clkctrl_outclk\,
	d => \inst6|DSW~feeder_combout\,
	clrn => \inst6|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|DSW~q\);

-- Location: LCCOMB_X20_Y16_N22
\inst6|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Mux4~0_combout\ = (!\inst6|key[1]~0_combout\ & (!\inst6|DSW~q\ & (\inst6|Equal0~0_combout\ $ (!\inst6|bond\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal0~0_combout\,
	datab => \inst6|key[1]~0_combout\,
	datac => \inst6|bond\(0),
	datad => \inst6|DSW~q\,
	combout => \inst6|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y16_N18
\inst6|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Mux0~2_combout\ = (\key_c[3]~input_o\ & ((\key_c[1]~input_o\ $ (\key_c[2]~input_o\)) # (!\key_c[4]~input_o\))) # (!\key_c[3]~input_o\ & ((\key_c[4]~input_o\) # (\key_c[1]~input_o\ $ (\key_c[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_c[3]~input_o\,
	datab => \key_c[4]~input_o\,
	datac => \key_c[1]~input_o\,
	datad => \key_c[2]~input_o\,
	combout => \inst6|Mux0~2_combout\);

-- Location: LCCOMB_X19_Y16_N26
\inst6|key[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|key[1]~1_combout\ = (\key_c[3]~input_o\ & ((\key_c[4]~input_o\ & (!\key_c[1]~input_o\ & !\key_c[2]~input_o\)) # (!\key_c[4]~input_o\ & ((!\key_c[2]~input_o\) # (!\key_c[1]~input_o\))))) # (!\key_c[3]~input_o\ & (((!\key_c[2]~input_o\) # 
-- (!\key_c[1]~input_o\)) # (!\key_c[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_c[3]~input_o\,
	datab => \key_c[4]~input_o\,
	datac => \key_c[1]~input_o\,
	datad => \key_c[2]~input_o\,
	combout => \inst6|key[1]~1_combout\);

-- Location: LCCOMB_X20_Y16_N14
\inst6|key[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|key[1]~2_combout\ = (!\inst6|key[1]~1_combout\ & (((!\inst6|DSW~q\) # (!\inst6|Mux0~2_combout\)) # (!\inst6|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal0~0_combout\,
	datab => \inst6|Mux0~2_combout\,
	datac => \inst6|key[1]~1_combout\,
	datad => \inst6|DSW~q\,
	combout => \inst6|key[1]~2_combout\);

-- Location: FF_X20_Y16_N23
\inst6|key[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|T[13]~clkctrl_outclk\,
	d => \inst6|Mux4~0_combout\,
	ena => \inst6|key[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|key\(0));

-- Location: LCCOMB_X21_Y16_N26
\inst|Select_mode_u1|LED_select[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Select_mode_u1|LED_select[0]~feeder_combout\ = \inst6|key\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|key\(0),
	combout => \inst|Select_mode_u1|LED_select[0]~feeder_combout\);

-- Location: LCCOMB_X19_Y16_N28
\inst6|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Mux0~1_combout\ = (\key_c[3]~input_o\ & (\key_c[4]~input_o\ & (\key_c[1]~input_o\ & \key_c[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_c[3]~input_o\,
	datab => \key_c[4]~input_o\,
	datac => \key_c[1]~input_o\,
	datad => \key_c[2]~input_o\,
	combout => \inst6|Mux0~1_combout\);

-- Location: LCCOMB_X19_Y16_N6
\inst6|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Mux0~0_combout\ = (\key_c[3]~input_o\ & ((\key_c[4]~input_o\) # ((\key_c[1]~input_o\ & \key_c[2]~input_o\)))) # (!\key_c[3]~input_o\ & (\key_c[4]~input_o\ & (\key_c[1]~input_o\ & \key_c[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_c[3]~input_o\,
	datab => \key_c[4]~input_o\,
	datac => \key_c[1]~input_o\,
	datad => \key_c[2]~input_o\,
	combout => \inst6|Mux0~0_combout\);

-- Location: LCCOMB_X20_Y16_N12
\inst6|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Mux0~3_combout\ = ((\inst6|DSW~q\) # (!\inst6|Mux0~0_combout\)) # (!\inst6|Mux0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Mux0~2_combout\,
	datac => \inst6|Mux0~0_combout\,
	datad => \inst6|DSW~q\,
	combout => \inst6|Mux0~3_combout\);

-- Location: LCCOMB_X20_Y16_N6
\inst6|Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Mux0~4_combout\ = (\inst6|Mux0~1_combout\) # ((\inst6|Mux0~3_combout\ & ((\inst6|key\(4)) # (!\inst6|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal0~0_combout\,
	datab => \inst6|Mux0~1_combout\,
	datac => \inst6|key\(4),
	datad => \inst6|Mux0~3_combout\,
	combout => \inst6|Mux0~4_combout\);

-- Location: FF_X20_Y16_N7
\inst6|key[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|T[13]~clkctrl_outclk\,
	d => \inst6|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|key\(4));

-- Location: FF_X21_Y16_N27
\inst|Select_mode_u1|LED_select[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|Select_mode_u1|LED_select[0]~feeder_combout\,
	clrn => \res~input_o\,
	ena => \inst6|ALT_INV_key\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Select_mode_u1|LED_select\(0));

-- Location: LCCOMB_X20_Y16_N18
\inst6|bond[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|bond[1]~feeder_combout\ = \inst6|bond~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|bond~0_combout\,
	combout => \inst6|bond[1]~feeder_combout\);

-- Location: FF_X20_Y16_N19
\inst6|bond[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|T[13]~clkctrl_outclk\,
	d => \inst6|bond[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|bond\(1));

-- Location: LCCOMB_X20_Y16_N26
\inst6|bond~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|bond~0_combout\ = \inst6|bond\(1) $ (((!\inst6|Equal0~0_combout\ & \inst6|bond\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal0~0_combout\,
	datac => \inst6|bond\(0),
	datad => \inst6|bond\(1),
	combout => \inst6|bond~0_combout\);

-- Location: LCCOMB_X20_Y16_N20
\inst6|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Mux3~0_combout\ = (!\inst6|key[1]~0_combout\ & (\inst6|bond~0_combout\ & !\inst6|DSW~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|key[1]~0_combout\,
	datac => \inst6|bond~0_combout\,
	datad => \inst6|DSW~q\,
	combout => \inst6|Mux3~0_combout\);

-- Location: FF_X20_Y16_N21
\inst6|key[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|T[13]~clkctrl_outclk\,
	d => \inst6|Mux3~0_combout\,
	ena => \inst6|key[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|key\(1));

-- Location: LCCOMB_X21_Y16_N6
\inst|Select_mode_u1|LED_select[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Select_mode_u1|LED_select[1]~feeder_combout\ = \inst6|key\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|key\(1),
	combout => \inst|Select_mode_u1|LED_select[1]~feeder_combout\);

-- Location: FF_X21_Y16_N7
\inst|Select_mode_u1|LED_select[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|Select_mode_u1|LED_select[1]~feeder_combout\,
	clrn => \res~input_o\,
	ena => \inst6|ALT_INV_key\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Select_mode_u1|LED_select\(1));

-- Location: LCCOMB_X19_Y16_N30
\inst6|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Mux2~1_combout\ = (\key_c[1]~input_o\ & !\inst6|DSW~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key_c[1]~input_o\,
	datad => \inst6|DSW~q\,
	combout => \inst6|Mux2~1_combout\);

-- Location: LCCOMB_X19_Y16_N16
\inst6|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Mux2~0_combout\ = (\key_c[2]~input_o\ & ((\key_c[1]~input_o\) # (!\inst6|DSW~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key_c[2]~input_o\,
	datac => \key_c[1]~input_o\,
	datad => \inst6|DSW~q\,
	combout => \inst6|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y16_N2
\inst6|Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Mux2~3_combout\ = (\key_c[3]~input_o\ & ((\key_c[4]~input_o\ & ((\inst6|Mux2~1_combout\) # (\inst6|Mux2~0_combout\))) # (!\key_c[4]~input_o\ & (\inst6|Mux2~1_combout\ & \inst6|Mux2~0_combout\)))) # (!\key_c[3]~input_o\ & (\key_c[4]~input_o\ & 
-- (\inst6|Mux2~1_combout\ & \inst6|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_c[3]~input_o\,
	datab => \key_c[4]~input_o\,
	datac => \inst6|Mux2~1_combout\,
	datad => \inst6|Mux2~0_combout\,
	combout => \inst6|Mux2~3_combout\);

-- Location: LCCOMB_X19_Y16_N12
\inst6|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Mux2~2_combout\ = (\key_c[3]~input_o\ & ((\key_c[4]~input_o\ & ((!\inst6|Mux2~0_combout\))) # (!\key_c[4]~input_o\ & (\inst6|Mux2~1_combout\ & \inst6|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_c[3]~input_o\,
	datab => \key_c[4]~input_o\,
	datac => \inst6|Mux2~1_combout\,
	datad => \inst6|Mux2~0_combout\,
	combout => \inst6|Mux2~2_combout\);

-- Location: LCCOMB_X19_Y16_N4
\inst6|Mux2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Mux2~4_combout\ = (\inst6|Mux2~3_combout\ & (((\inst6|Mux2~2_combout\)))) # (!\inst6|Mux2~3_combout\ & (\inst6|key\(2) & ((\inst6|Equal0~0_combout\) # (\inst6|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal0~0_combout\,
	datab => \inst6|Mux2~3_combout\,
	datac => \inst6|key\(2),
	datad => \inst6|Mux2~2_combout\,
	combout => \inst6|Mux2~4_combout\);

-- Location: FF_X19_Y16_N5
\inst6|key[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|T[13]~clkctrl_outclk\,
	d => \inst6|Mux2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|key\(2));

-- Location: LCCOMB_X21_Y16_N0
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

-- Location: FF_X21_Y16_N1
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
	ena => \inst6|ALT_INV_key\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Select_mode_u1|LED_select\(2));

-- Location: LCCOMB_X19_Y16_N22
\inst6|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Mux1~0_combout\ = (\inst6|Mux0~0_combout\ & (!\inst6|DSW~q\ & (\key_c[4]~input_o\ $ (\key_c[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mux0~0_combout\,
	datab => \key_c[4]~input_o\,
	datac => \key_c[3]~input_o\,
	datad => \inst6|DSW~q\,
	combout => \inst6|Mux1~0_combout\);

-- Location: LCCOMB_X19_Y16_N0
\inst6|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Mux1~1_combout\ = (((!\key_c[1]~input_o\ & !\key_c[2]~input_o\)) # (!\key_c[4]~input_o\)) # (!\key_c[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_c[3]~input_o\,
	datab => \key_c[4]~input_o\,
	datac => \key_c[1]~input_o\,
	datad => \key_c[2]~input_o\,
	combout => \inst6|Mux1~1_combout\);

-- Location: LCCOMB_X19_Y16_N10
\inst6|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Mux1~2_combout\ = (\inst6|Mux1~1_combout\) # ((\inst6|DSW~q\ & (\key_c[2]~input_o\ $ (\key_c[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Mux1~1_combout\,
	datab => \key_c[2]~input_o\,
	datac => \key_c[1]~input_o\,
	datad => \inst6|DSW~q\,
	combout => \inst6|Mux1~2_combout\);

-- Location: LCCOMB_X20_Y16_N16
\inst6|Mux1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Mux1~3_combout\ = (\inst6|Mux1~0_combout\) # ((\inst6|Equal0~0_combout\ & (\inst6|key\(3) & \inst6|Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal0~0_combout\,
	datab => \inst6|Mux1~0_combout\,
	datac => \inst6|key\(3),
	datad => \inst6|Mux1~2_combout\,
	combout => \inst6|Mux1~3_combout\);

-- Location: FF_X20_Y16_N17
\inst6|key[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|T[13]~clkctrl_outclk\,
	d => \inst6|Mux1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|key\(3));

-- Location: FF_X21_Y16_N29
\inst|Select_mode_u1|LED_select[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \inst6|key\(3),
	clrn => \res~input_o\,
	sload => VCC,
	ena => \inst6|ALT_INV_key\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Select_mode_u1|LED_select\(3));

-- Location: LCCOMB_X21_Y19_N0
\inst|uart_tx_u1|addr[3]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr[3]~33_combout\ = (!\inst|Select_mode_u1|LED_select\(0) & (\inst|Select_mode_u1|LED_select\(1) & (\inst|Select_mode_u1|LED_select\(2) & !\inst|Select_mode_u1|LED_select\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(0),
	datab => \inst|Select_mode_u1|LED_select\(1),
	datac => \inst|Select_mode_u1|LED_select\(2),
	datad => \inst|Select_mode_u1|LED_select\(3),
	combout => \inst|uart_tx_u1|addr[3]~33_combout\);

-- Location: LCCOMB_X26_Y16_N4
\inst|uart_tx_u1|always0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|always0~1_combout\ = (\inst|uart_tx_u1|cnt_rom\(2) & (\inst|uart_tx_u1|cnt_rom\(0) & (!\inst|uart_tx_u1|cnt_rom\(3) & !\inst|uart_tx_u1|cnt_rom\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_rom\(2),
	datab => \inst|uart_tx_u1|cnt_rom\(0),
	datac => \inst|uart_tx_u1|cnt_rom\(3),
	datad => \inst|uart_tx_u1|cnt_rom\(1),
	combout => \inst|uart_tx_u1|always0~1_combout\);

-- Location: LCCOMB_X26_Y16_N14
\inst|uart_tx_u1|always0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|always0~2_combout\ = (!\inst|uart_tx_u1|cnt_rom\(3) & (\inst|uart_tx_u1|cnt_rom\(1) & (\inst|uart_tx_u1|cnt_rom\(2) & !\inst|uart_tx_u1|cnt_rom\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_rom\(3),
	datab => \inst|uart_tx_u1|cnt_rom\(1),
	datac => \inst|uart_tx_u1|cnt_rom\(2),
	datad => \inst|uart_tx_u1|cnt_rom\(0),
	combout => \inst|uart_tx_u1|always0~2_combout\);

-- Location: LCCOMB_X20_Y18_N0
\inst|uart_tx_u1|addr[3]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr[3]~34_combout\ = (!\inst|uart_tx_u1|Equal4~4_combout\ & ((\inst|uart_tx_u1|always0~2_combout\ & (\inst|uart_tx_u1|addr[3]~33_combout\)) # (!\inst|uart_tx_u1|always0~2_combout\ & ((\inst|uart_tx_u1|always0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr[3]~33_combout\,
	datab => \inst|uart_tx_u1|always0~1_combout\,
	datac => \inst|uart_tx_u1|always0~2_combout\,
	datad => \inst|uart_tx_u1|Equal4~4_combout\,
	combout => \inst|uart_tx_u1|addr[3]~34_combout\);

-- Location: LCCOMB_X21_Y18_N28
\inst|uart_tx_u1|Send_addr_w[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Send_addr_w[0]~0_combout\ = (\inst|uart_tx_u1|always0~1_combout\ & (\inst|uart_tx_u1|stage_tx.STOP~q\ & (\inst|uart_tx_u1|always0~0_combout\ & !\inst|uart_tx_u1|Equal4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|always0~1_combout\,
	datab => \inst|uart_tx_u1|stage_tx.STOP~q\,
	datac => \inst|uart_tx_u1|always0~0_combout\,
	datad => \inst|uart_tx_u1|Equal4~4_combout\,
	combout => \inst|uart_tx_u1|Send_addr_w[0]~0_combout\);

-- Location: FF_X23_Y18_N3
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

-- Location: LCCOMB_X23_Y18_N8
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

-- Location: FF_X23_Y18_N9
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

-- Location: LCCOMB_X26_Y19_N8
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

-- Location: LCCOMB_X22_Y19_N8
\inst|uart_tx_u1|Send_addr[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Send_addr[0]~0_combout\ = (\inst|uart_tx_u1|enable~q\ & (\inst|uart_tx_u1|Send_addr_w\(0))) # (!\inst|uart_tx_u1|enable~q\ & ((\inst|uart_tx_u1|always0~1_combout\ & ((\inst|uart_tx_u1|Add16~0_combout\))) # 
-- (!\inst|uart_tx_u1|always0~1_combout\ & (\inst|uart_tx_u1|Send_addr_w\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr_w\(0),
	datab => \inst|uart_tx_u1|enable~q\,
	datac => \inst|uart_tx_u1|always0~1_combout\,
	datad => \inst|uart_tx_u1|Add16~0_combout\,
	combout => \inst|uart_tx_u1|Send_addr[0]~0_combout\);

-- Location: LCCOMB_X24_Y20_N14
\inst|uart_tx_u1|AT|rom~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~121_combout\ = (\inst|uart_tx_u1|addr\(0) & (!\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|addr\(2) & !\inst|uart_tx_u1|addr\(1)))) # (!\inst|uart_tx_u1|addr\(0) & (!\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(3) $ 
-- (\inst|uart_tx_u1|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(3),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(1),
	combout => \inst|uart_tx_u1|AT|rom~121_combout\);

-- Location: LCCOMB_X24_Y20_N24
\inst|uart_tx_u1|AT|rom~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~73_combout\ = (\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|addr\(2) $ (!\inst|uart_tx_u1|addr\(1))))) # (!\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(3) $ 
-- (\inst|uart_tx_u1|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(3),
	datad => \inst|uart_tx_u1|addr\(1),
	combout => \inst|uart_tx_u1|AT|rom~73_combout\);

-- Location: LCCOMB_X24_Y20_N0
\inst|uart_tx_u1|AT|rom~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~122_combout\ = (\inst|uart_tx_u1|addr\(4) & (!\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|AT|rom~73_combout\)))) # (!\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|AT|rom~121_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|AT|rom~121_combout\,
	datad => \inst|uart_tx_u1|AT|rom~73_combout\,
	combout => \inst|uart_tx_u1|AT|rom~122_combout\);

-- Location: LCCOMB_X24_Y20_N4
\inst|uart_tx_u1|AT|rom~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~114_combout\ = (\inst|uart_tx_u1|addr\(4)) # ((\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(1) & !\inst|uart_tx_u1|addr\(2))) # (!\inst|uart_tx_u1|addr\(0) & (!\inst|uart_tx_u1|addr\(1) & \inst|uart_tx_u1|addr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(1),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~114_combout\);

-- Location: LCCOMB_X24_Y20_N8
\inst|uart_tx_u1|AT|rom~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~118_combout\ = (\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|addr\(2)) # (\inst|uart_tx_u1|addr\(0) $ (\inst|uart_tx_u1|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|addr\(1),
	combout => \inst|uart_tx_u1|AT|rom~118_combout\);

-- Location: LCCOMB_X24_Y20_N26
\inst|uart_tx_u1|AT|rom~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~115_combout\ = (\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|addr\(0) & (!\inst|uart_tx_u1|addr\(1))) # (!\inst|uart_tx_u1|addr\(0) & ((!\inst|uart_tx_u1|addr\(2)))))) # (!\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|addr\(1) $ 
-- (((\inst|uart_tx_u1|addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~115_combout\);

-- Location: LCCOMB_X24_Y20_N12
\inst|uart_tx_u1|AT|rom~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~116_combout\ = (\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(4) & \inst|uart_tx_u1|addr\(2)))) # (!\inst|uart_tx_u1|addr\(0) & (!\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(1) $ 
-- (\inst|uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~116_combout\);

-- Location: LCCOMB_X24_Y20_N10
\inst|uart_tx_u1|AT|rom~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~117_combout\ = (\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|addr\(5)) # ((!\inst|uart_tx_u1|AT|rom~115_combout\)))) # (!\inst|uart_tx_u1|addr\(3) & (!\inst|uart_tx_u1|addr\(5) & ((!\inst|uart_tx_u1|AT|rom~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(3),
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|AT|rom~115_combout\,
	datad => \inst|uart_tx_u1|AT|rom~116_combout\,
	combout => \inst|uart_tx_u1|AT|rom~117_combout\);

-- Location: LCCOMB_X24_Y20_N22
\inst|uart_tx_u1|AT|rom~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~119_combout\ = (\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|AT|rom~117_combout\ & ((\inst|uart_tx_u1|AT|rom~118_combout\))) # (!\inst|uart_tx_u1|AT|rom~117_combout\ & (!\inst|uart_tx_u1|AT|rom~114_combout\)))) # 
-- (!\inst|uart_tx_u1|addr\(5) & (((\inst|uart_tx_u1|AT|rom~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|AT|rom~114_combout\,
	datac => \inst|uart_tx_u1|AT|rom~118_combout\,
	datad => \inst|uart_tx_u1|AT|rom~117_combout\,
	combout => \inst|uart_tx_u1|AT|rom~119_combout\);

-- Location: LCCOMB_X24_Y20_N6
\inst|uart_tx_u1|AT|rom~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~108_combout\ = (\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|addr\(1)) # ((\inst|uart_tx_u1|addr\(0) & \inst|uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(3),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(1),
	combout => \inst|uart_tx_u1|AT|rom~108_combout\);

-- Location: LCCOMB_X23_Y17_N6
\inst|uart_tx_u1|AT|rom~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~112_combout\ = (\inst|uart_tx_u1|addr\(2)) # (\inst|uart_tx_u1|addr\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~112_combout\);

-- Location: LCCOMB_X24_Y20_N30
\inst|uart_tx_u1|AT|rom~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~110_combout\ = (\inst|uart_tx_u1|addr\(3) & (!\inst|uart_tx_u1|addr\(1) & (!\inst|uart_tx_u1|addr\(0) & !\inst|uart_tx_u1|addr\(2)))) # (!\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|addr\(1) $ (((\inst|uart_tx_u1|addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(3),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~110_combout\);

-- Location: LCCOMB_X24_Y20_N20
\inst|uart_tx_u1|AT|rom~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~109_combout\ = (\inst|uart_tx_u1|addr\(3)) # (\inst|uart_tx_u1|addr\(1) $ (((\inst|uart_tx_u1|addr\(0) & !\inst|uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(3),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~109_combout\);

-- Location: LCCOMB_X24_Y20_N16
\inst|uart_tx_u1|AT|rom~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~111_combout\ = (\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(4))) # (!\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(4) & ((!\inst|uart_tx_u1|AT|rom~109_combout\))) # (!\inst|uart_tx_u1|addr\(4) & 
-- (!\inst|uart_tx_u1|AT|rom~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|AT|rom~110_combout\,
	datad => \inst|uart_tx_u1|AT|rom~109_combout\,
	combout => \inst|uart_tx_u1|AT|rom~111_combout\);

-- Location: LCCOMB_X24_Y20_N2
\inst|uart_tx_u1|AT|rom~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~113_combout\ = (\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|AT|rom~111_combout\ & ((!\inst|uart_tx_u1|AT|rom~112_combout\))) # (!\inst|uart_tx_u1|AT|rom~111_combout\ & (\inst|uart_tx_u1|AT|rom~108_combout\)))) # 
-- (!\inst|uart_tx_u1|addr\(5) & (((\inst|uart_tx_u1|AT|rom~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|AT|rom~108_combout\,
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|AT|rom~112_combout\,
	datad => \inst|uart_tx_u1|AT|rom~111_combout\,
	combout => \inst|uart_tx_u1|AT|rom~113_combout\);

-- Location: LCCOMB_X24_Y20_N28
\inst|uart_tx_u1|AT|rom~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~120_combout\ = (!\inst|uart_tx_u1|addr\(7) & ((\inst|uart_tx_u1|addr\(6) & ((\inst|uart_tx_u1|AT|rom~113_combout\))) # (!\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|AT|rom~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(6),
	datab => \inst|uart_tx_u1|addr\(7),
	datac => \inst|uart_tx_u1|AT|rom~119_combout\,
	datad => \inst|uart_tx_u1|AT|rom~113_combout\,
	combout => \inst|uart_tx_u1|AT|rom~120_combout\);

-- Location: LCCOMB_X24_Y20_N18
\inst|uart_tx_u1|AT|rom~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~123_combout\ = (\inst|uart_tx_u1|AT|rom~120_combout\) # ((!\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|AT|rom~122_combout\ & \inst|uart_tx_u1|addr\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(6),
	datab => \inst|uart_tx_u1|AT|rom~122_combout\,
	datac => \inst|uart_tx_u1|addr\(7),
	datad => \inst|uart_tx_u1|AT|rom~120_combout\,
	combout => \inst|uart_tx_u1|AT|rom~123_combout\);

-- Location: LCCOMB_X26_Y18_N6
\inst|uart_tx_u1|AT|rom~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~90_combout\ = (\inst|uart_tx_u1|addr\(6)) # ((\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(3)) # (!\inst|uart_tx_u1|addr\(0)))) # (!\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(3) $ (\inst|uart_tx_u1|addr\(0)))))

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
	combout => \inst|uart_tx_u1|AT|rom~90_combout\);

-- Location: LCCOMB_X26_Y18_N24
\inst|uart_tx_u1|AT|rom~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~91_combout\ = (\inst|uart_tx_u1|addr\(5)) # ((\inst|uart_tx_u1|addr\(4)) # (\inst|uart_tx_u1|AT|rom~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|AT|rom~90_combout\,
	combout => \inst|uart_tx_u1|AT|rom~91_combout\);

-- Location: LCCOMB_X26_Y18_N0
\inst|uart_tx_u1|AT|rom~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~76_combout\ = (\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|addr\(1) & (!\inst|uart_tx_u1|addr\(4) & !\inst|uart_tx_u1|addr\(0)))) # (!\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(4) & 
-- \inst|uart_tx_u1|addr\(0))) # (!\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(4) $ (\inst|uart_tx_u1|addr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(3),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|addr\(0),
	combout => \inst|uart_tx_u1|AT|rom~76_combout\);

-- Location: LCCOMB_X26_Y18_N18
\inst|uart_tx_u1|AT|rom~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~77_combout\ = (!\inst|uart_tx_u1|addr\(5) & (!\inst|uart_tx_u1|addr\(6) & \inst|uart_tx_u1|AT|rom~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|addr\(6),
	datad => \inst|uart_tx_u1|AT|rom~76_combout\,
	combout => \inst|uart_tx_u1|AT|rom~77_combout\);

-- Location: LCCOMB_X26_Y18_N26
\inst|uart_tx_u1|AT|rom~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~81_combout\ = (\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(0)) # (\inst|uart_tx_u1|addr\(6) $ (\inst|uart_tx_u1|addr\(3))))) # (!\inst|uart_tx_u1|addr\(1) & (((\inst|uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(0),
	datab => \inst|uart_tx_u1|addr\(6),
	datac => \inst|uart_tx_u1|addr\(3),
	datad => \inst|uart_tx_u1|addr\(1),
	combout => \inst|uart_tx_u1|AT|rom~81_combout\);

-- Location: LCCOMB_X26_Y18_N14
\inst|uart_tx_u1|AT|rom~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~79_combout\ = (\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(6) $ (((!\inst|uart_tx_u1|addr\(3)))))) # (!\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(6) $ (!\inst|uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(0),
	datab => \inst|uart_tx_u1|addr\(6),
	datac => \inst|uart_tx_u1|addr\(1),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~79_combout\);

-- Location: LCCOMB_X26_Y18_N16
\inst|uart_tx_u1|AT|rom~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~78_combout\ = (\inst|uart_tx_u1|addr\(6) & (((\inst|uart_tx_u1|addr\(1)) # (\inst|uart_tx_u1|addr\(3))))) # (!\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(1) $ (\inst|uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(0),
	datab => \inst|uart_tx_u1|addr\(6),
	datac => \inst|uart_tx_u1|addr\(1),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~78_combout\);

-- Location: LCCOMB_X26_Y18_N20
\inst|uart_tx_u1|AT|rom~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~80_combout\ = (\inst|uart_tx_u1|addr\(5) & (!\inst|uart_tx_u1|addr\(4) & (!\inst|uart_tx_u1|AT|rom~79_combout\))) # (!\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|AT|rom~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|AT|rom~79_combout\,
	datad => \inst|uart_tx_u1|AT|rom~78_combout\,
	combout => \inst|uart_tx_u1|AT|rom~80_combout\);

-- Location: LCCOMB_X26_Y18_N8
\inst|uart_tx_u1|AT|rom~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~82_combout\ = (\inst|uart_tx_u1|AT|rom~80_combout\) # ((\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(4) & !\inst|uart_tx_u1|AT|rom~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|AT|rom~81_combout\,
	datad => \inst|uart_tx_u1|AT|rom~80_combout\,
	combout => \inst|uart_tx_u1|AT|rom~82_combout\);

-- Location: LCCOMB_X26_Y18_N4
\inst|uart_tx_u1|AT|rom~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~87_combout\ = (\inst|uart_tx_u1|addr\(6) & ((\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|addr\(0) & \inst|uart_tx_u1|addr\(3))) # (!\inst|uart_tx_u1|addr\(4) & ((!\inst|uart_tx_u1|addr\(3)))))) # (!\inst|uart_tx_u1|addr\(6) & 
-- ((\inst|uart_tx_u1|addr\(0)) # (\inst|uart_tx_u1|addr\(4) $ (\inst|uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(0),
	datab => \inst|uart_tx_u1|addr\(6),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~87_combout\);

-- Location: LCCOMB_X26_Y18_N22
\inst|uart_tx_u1|AT|rom~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~84_combout\ = (\inst|uart_tx_u1|addr\(6) & ((\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|addr\(0) & !\inst|uart_tx_u1|addr\(3))) # (!\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|addr\(3)))))) # (!\inst|uart_tx_u1|addr\(6) & 
-- ((\inst|uart_tx_u1|addr\(4)) # ((\inst|uart_tx_u1|addr\(0) & !\inst|uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(0),
	datab => \inst|uart_tx_u1|addr\(6),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~84_combout\);

-- Location: LCCOMB_X26_Y18_N28
\inst|uart_tx_u1|AT|rom~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~85_combout\ = (\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|addr\(4)))) # (!\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(6) & ((\inst|uart_tx_u1|addr\(3)))) # (!\inst|uart_tx_u1|addr\(6) & 
-- (\inst|uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(0),
	datab => \inst|uart_tx_u1|addr\(6),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~85_combout\);

-- Location: LCCOMB_X26_Y18_N30
\inst|uart_tx_u1|AT|rom~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~86_combout\ = (\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(1))) # (!\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(1) & (!\inst|uart_tx_u1|AT|rom~84_combout\)) # (!\inst|uart_tx_u1|addr\(1) & 
-- ((\inst|uart_tx_u1|AT|rom~85_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|AT|rom~84_combout\,
	datad => \inst|uart_tx_u1|AT|rom~85_combout\,
	combout => \inst|uart_tx_u1|AT|rom~86_combout\);

-- Location: LCCOMB_X26_Y16_N12
\inst|uart_tx_u1|AT|rom~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~83_combout\ = (\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|addr\(4) & (!\inst|uart_tx_u1|addr\(0) & \inst|uart_tx_u1|addr\(6))) # (!\inst|uart_tx_u1|addr\(4) & ((!\inst|uart_tx_u1|addr\(6)))))) # (!\inst|uart_tx_u1|addr\(3) & 
-- ((\inst|uart_tx_u1|addr\(4) $ (\inst|uart_tx_u1|addr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(3),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|addr\(6),
	combout => \inst|uart_tx_u1|AT|rom~83_combout\);

-- Location: LCCOMB_X26_Y18_N10
\inst|uart_tx_u1|AT|rom~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~88_combout\ = (\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|AT|rom~86_combout\ & (\inst|uart_tx_u1|AT|rom~87_combout\)) # (!\inst|uart_tx_u1|AT|rom~86_combout\ & ((\inst|uart_tx_u1|AT|rom~83_combout\))))) # 
-- (!\inst|uart_tx_u1|addr\(5) & (((\inst|uart_tx_u1|AT|rom~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|AT|rom~87_combout\,
	datac => \inst|uart_tx_u1|AT|rom~86_combout\,
	datad => \inst|uart_tx_u1|AT|rom~83_combout\,
	combout => \inst|uart_tx_u1|AT|rom~88_combout\);

-- Location: LCCOMB_X26_Y18_N12
\inst|uart_tx_u1|AT|rom~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~89_combout\ = (\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(7)) # ((\inst|uart_tx_u1|AT|rom~82_combout\)))) # (!\inst|uart_tx_u1|addr\(2) & (!\inst|uart_tx_u1|addr\(7) & ((\inst|uart_tx_u1|AT|rom~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(7),
	datac => \inst|uart_tx_u1|AT|rom~82_combout\,
	datad => \inst|uart_tx_u1|AT|rom~88_combout\,
	combout => \inst|uart_tx_u1|AT|rom~89_combout\);

-- Location: LCCOMB_X26_Y18_N2
\inst|uart_tx_u1|AT|rom~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~92_combout\ = (\inst|uart_tx_u1|addr\(7) & ((\inst|uart_tx_u1|AT|rom~89_combout\ & (!\inst|uart_tx_u1|AT|rom~91_combout\)) # (!\inst|uart_tx_u1|AT|rom~89_combout\ & ((\inst|uart_tx_u1|AT|rom~77_combout\))))) # 
-- (!\inst|uart_tx_u1|addr\(7) & (((\inst|uart_tx_u1|AT|rom~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(7),
	datab => \inst|uart_tx_u1|AT|rom~91_combout\,
	datac => \inst|uart_tx_u1|AT|rom~77_combout\,
	datad => \inst|uart_tx_u1|AT|rom~89_combout\,
	combout => \inst|uart_tx_u1|AT|rom~92_combout\);

-- Location: LCCOMB_X23_Y16_N28
\inst|uart_tx_u1|AT|rom~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~107_combout\ = (\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(4)) # (\inst|uart_tx_u1|addr\(1) $ (!\inst|uart_tx_u1|addr\(3))))) # (!\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(3)) # (\inst|uart_tx_u1|addr\(4) $ 
-- (\inst|uart_tx_u1|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|addr\(1),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~107_combout\);

-- Location: LCCOMB_X24_Y18_N12
\inst|uart_tx_u1|AT|rom~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~98_combout\ = (\inst|uart_tx_u1|addr\(3) & (((\inst|uart_tx_u1|addr\(2)) # (!\inst|uart_tx_u1|addr\(6))) # (!\inst|uart_tx_u1|addr\(1)))) # (!\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(1))) # 
-- (!\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(3),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(6),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~98_combout\);

-- Location: LCCOMB_X24_Y18_N4
\inst|uart_tx_u1|AT|rom~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~94_combout\ = (\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(2)) # ((\inst|uart_tx_u1|addr\(6)) # (!\inst|uart_tx_u1|addr\(3))))) # (!\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(3) & ((!\inst|uart_tx_u1|addr\(6)))) 
-- # (!\inst|uart_tx_u1|addr\(3) & (!\inst|uart_tx_u1|addr\(2) & \inst|uart_tx_u1|addr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(3),
	datad => \inst|uart_tx_u1|addr\(6),
	combout => \inst|uart_tx_u1|AT|rom~94_combout\);

-- Location: LCCOMB_X24_Y18_N26
\inst|uart_tx_u1|AT|rom~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~95_combout\ = (\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(6) & ((\inst|uart_tx_u1|addr\(3)) # (!\inst|uart_tx_u1|addr\(2)))) # (!\inst|uart_tx_u1|addr\(6) & ((\inst|uart_tx_u1|addr\(2)))))) # (!\inst|uart_tx_u1|addr\(1) & 
-- (((\inst|uart_tx_u1|addr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(3),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(6),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~95_combout\);

-- Location: LCCOMB_X24_Y18_N28
\inst|uart_tx_u1|AT|rom~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~96_combout\ = (!\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|addr\(3) $ (\inst|uart_tx_u1|addr\(2)))) # (!\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|addr\(3) & \inst|uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(6),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(3),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~96_combout\);

-- Location: LCCOMB_X24_Y18_N6
\inst|uart_tx_u1|AT|rom~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~97_combout\ = (\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(4))) # (!\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|AT|rom~95_combout\)) # (!\inst|uart_tx_u1|addr\(4) & 
-- ((!\inst|uart_tx_u1|AT|rom~96_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|AT|rom~95_combout\,
	datad => \inst|uart_tx_u1|AT|rom~96_combout\,
	combout => \inst|uart_tx_u1|AT|rom~97_combout\);

-- Location: LCCOMB_X24_Y18_N14
\inst|uart_tx_u1|AT|rom~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~99_combout\ = (\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|AT|rom~97_combout\ & (!\inst|uart_tx_u1|AT|rom~98_combout\)) # (!\inst|uart_tx_u1|AT|rom~97_combout\ & ((\inst|uart_tx_u1|AT|rom~94_combout\))))) # 
-- (!\inst|uart_tx_u1|addr\(5) & (((\inst|uart_tx_u1|AT|rom~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|AT|rom~98_combout\,
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|AT|rom~94_combout\,
	datad => \inst|uart_tx_u1|AT|rom~97_combout\,
	combout => \inst|uart_tx_u1|AT|rom~99_combout\);

-- Location: LCCOMB_X24_Y18_N20
\inst|uart_tx_u1|AT|rom~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~100_combout\ = (\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|addr\(1) $ (!\inst|uart_tx_u1|addr\(6))))) # (!\inst|uart_tx_u1|addr\(3) & (!\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(1) $ (\inst|uart_tx_u1|addr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(3),
	datad => \inst|uart_tx_u1|addr\(6),
	combout => \inst|uart_tx_u1|AT|rom~100_combout\);

-- Location: LCCOMB_X24_Y18_N8
\inst|uart_tx_u1|AT|rom~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~104_combout\ = (\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|addr\(1) $ (((\inst|uart_tx_u1|addr\(2)) # (!\inst|uart_tx_u1|addr\(6)))))) # (!\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(2)) # 
-- (\inst|uart_tx_u1|addr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(3),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(6),
	combout => \inst|uart_tx_u1|AT|rom~104_combout\);

-- Location: LCCOMB_X24_Y18_N30
\inst|uart_tx_u1|AT|rom~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~101_combout\ = (\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|addr\(1) & (!\inst|uart_tx_u1|addr\(3) & \inst|uart_tx_u1|addr\(2)))) # (!\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|addr\(1) $ (((\inst|uart_tx_u1|addr\(3) & 
-- !\inst|uart_tx_u1|addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(6),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(3),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~101_combout\);

-- Location: LCCOMB_X24_Y18_N16
\inst|uart_tx_u1|AT|rom~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~102_combout\ = (\inst|uart_tx_u1|addr\(1) & (!\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(3) $ (\inst|uart_tx_u1|addr\(6))))) # (!\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|addr\(2) $ 
-- (!\inst|uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(3),
	datad => \inst|uart_tx_u1|addr\(6),
	combout => \inst|uart_tx_u1|AT|rom~102_combout\);

-- Location: LCCOMB_X24_Y18_N10
\inst|uart_tx_u1|AT|rom~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~103_combout\ = (\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(4)) # ((\inst|uart_tx_u1|AT|rom~101_combout\)))) # (!\inst|uart_tx_u1|addr\(5) & (!\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|AT|rom~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|AT|rom~101_combout\,
	datad => \inst|uart_tx_u1|AT|rom~102_combout\,
	combout => \inst|uart_tx_u1|AT|rom~103_combout\);

-- Location: LCCOMB_X24_Y18_N2
\inst|uart_tx_u1|AT|rom~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~105_combout\ = (\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|AT|rom~103_combout\ & ((!\inst|uart_tx_u1|AT|rom~104_combout\))) # (!\inst|uart_tx_u1|AT|rom~103_combout\ & (\inst|uart_tx_u1|AT|rom~100_combout\)))) # 
-- (!\inst|uart_tx_u1|addr\(4) & (((\inst|uart_tx_u1|AT|rom~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|AT|rom~100_combout\,
	datac => \inst|uart_tx_u1|AT|rom~104_combout\,
	datad => \inst|uart_tx_u1|AT|rom~103_combout\,
	combout => \inst|uart_tx_u1|AT|rom~105_combout\);

-- Location: LCCOMB_X24_Y18_N0
\inst|uart_tx_u1|AT|rom~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~106_combout\ = (\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(7)) # ((\inst|uart_tx_u1|AT|rom~99_combout\)))) # (!\inst|uart_tx_u1|addr\(0) & (!\inst|uart_tx_u1|addr\(7) & ((\inst|uart_tx_u1|AT|rom~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(0),
	datab => \inst|uart_tx_u1|addr\(7),
	datac => \inst|uart_tx_u1|AT|rom~99_combout\,
	datad => \inst|uart_tx_u1|AT|rom~105_combout\,
	combout => \inst|uart_tx_u1|AT|rom~106_combout\);

-- Location: LCCOMB_X24_Y18_N18
\inst|uart_tx_u1|AT|rom~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~93_combout\ = (\inst|uart_tx_u1|addr\(1) & (!\inst|uart_tx_u1|addr\(4) & (!\inst|uart_tx_u1|addr\(2) & \inst|uart_tx_u1|addr\(3)))) # (!\inst|uart_tx_u1|addr\(1) & (!\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|addr\(4) $ 
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
	combout => \inst|uart_tx_u1|AT|rom~93_combout\);

-- Location: LCCOMB_X24_Y18_N22
\inst|uart_tx_u1|AT|rom~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~124_combout\ = (!\inst|uart_tx_u1|addr\(6) & (!\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|AT|rom~93_combout\) # (\inst|uart_tx_u1|AT|rom~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(6),
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|AT|rom~93_combout\,
	datad => \inst|uart_tx_u1|AT|rom~106_combout\,
	combout => \inst|uart_tx_u1|AT|rom~124_combout\);

-- Location: LCCOMB_X23_Y18_N18
\inst|uart_tx_u1|AT|rom~125\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~125_combout\ = (\inst|uart_tx_u1|addr\(7) & (\inst|uart_tx_u1|AT|rom~124_combout\ & ((!\inst|uart_tx_u1|AT|rom~106_combout\) # (!\inst|uart_tx_u1|AT|rom~107_combout\)))) # (!\inst|uart_tx_u1|addr\(7) & 
-- (((\inst|uart_tx_u1|AT|rom~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|AT|rom~107_combout\,
	datab => \inst|uart_tx_u1|addr\(7),
	datac => \inst|uart_tx_u1|AT|rom~106_combout\,
	datad => \inst|uart_tx_u1|AT|rom~124_combout\,
	combout => \inst|uart_tx_u1|AT|rom~125_combout\);

-- Location: LCCOMB_X23_Y18_N4
\inst|uart_tx_u1|Equal4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Equal4~2_combout\ = (\inst|uart_tx_u1|AT|rom~123_combout\) # ((\inst|uart_tx_u1|AT|rom~92_combout\) # (\inst|uart_tx_u1|AT|rom~125_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|AT|rom~123_combout\,
	datac => \inst|uart_tx_u1|AT|rom~92_combout\,
	datad => \inst|uart_tx_u1|AT|rom~125_combout\,
	combout => \inst|uart_tx_u1|Equal4~2_combout\);

-- Location: LCCOMB_X23_Y18_N2
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

-- Location: LCCOMB_X20_Y18_N12
\inst|uart_tx_u1|Add15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add15~0_combout\ = \inst|uart_tx_u1|Send_addr[0]~1_combout\ $ (VCC)
-- \inst|uart_tx_u1|Add15~1\ = CARRY(\inst|uart_tx_u1|Send_addr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[0]~1_combout\,
	datad => VCC,
	combout => \inst|uart_tx_u1|Add15~0_combout\,
	cout => \inst|uart_tx_u1|Add15~1\);

-- Location: LCCOMB_X22_Y20_N0
\inst|uart_tx_u1|Add13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add13~0_combout\ = \inst|uart_tx_u1|Send_addr[0]~1_combout\ $ (VCC)
-- \inst|uart_tx_u1|Add13~1\ = CARRY(\inst|uart_tx_u1|Send_addr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[0]~1_combout\,
	datad => VCC,
	combout => \inst|uart_tx_u1|Add13~0_combout\,
	cout => \inst|uart_tx_u1|Add13~1\);

-- Location: LCCOMB_X22_Y16_N14
\inst|uart_tx_u1|Add7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add7~0_combout\ = \inst|uart_tx_u1|Send_addr[0]~1_combout\ $ (VCC)
-- \inst|uart_tx_u1|Add7~1\ = CARRY(\inst|uart_tx_u1|Send_addr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[0]~1_combout\,
	datad => VCC,
	combout => \inst|uart_tx_u1|Add7~0_combout\,
	cout => \inst|uart_tx_u1|Add7~1\);

-- Location: LCCOMB_X22_Y17_N4
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

-- Location: LCCOMB_X24_Y19_N6
\inst|uart_tx_u1|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux7~0_combout\ = (\inst|Select_mode_u1|LED_select\(3) & (((\inst|Select_mode_u1|LED_select\(1))))) # (!\inst|Select_mode_u1|LED_select\(3) & ((\inst|Select_mode_u1|LED_select\(1) & (\inst|uart_tx_u1|Add7~0_combout\)) # 
-- (!\inst|Select_mode_u1|LED_select\(1) & ((\inst|uart_tx_u1|Add5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(3),
	datab => \inst|uart_tx_u1|Add7~0_combout\,
	datac => \inst|Select_mode_u1|LED_select\(1),
	datad => \inst|uart_tx_u1|Add5~0_combout\,
	combout => \inst|uart_tx_u1|Mux7~0_combout\);

-- Location: LCCOMB_X24_Y19_N4
\inst|uart_tx_u1|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux7~1_combout\ = (\inst|Select_mode_u1|LED_select\(3) & ((\inst|uart_tx_u1|Mux7~0_combout\ & (\inst|uart_tx_u1|Add15~0_combout\)) # (!\inst|uart_tx_u1|Mux7~0_combout\ & ((\inst|uart_tx_u1|Add13~0_combout\))))) # 
-- (!\inst|Select_mode_u1|LED_select\(3) & (((\inst|uart_tx_u1|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Add15~0_combout\,
	datab => \inst|Select_mode_u1|LED_select\(3),
	datac => \inst|uart_tx_u1|Add13~0_combout\,
	datad => \inst|uart_tx_u1|Mux7~0_combout\,
	combout => \inst|uart_tx_u1|Mux7~1_combout\);

-- Location: LCCOMB_X23_Y20_N6
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

-- Location: LCCOMB_X22_Y19_N12
\inst|uart_tx_u1|Add9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add9~0_combout\ = \inst|uart_tx_u1|Send_addr[0]~1_combout\ $ (VCC)
-- \inst|uart_tx_u1|Add9~1\ = CARRY(\inst|uart_tx_u1|Send_addr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[0]~1_combout\,
	datad => VCC,
	combout => \inst|uart_tx_u1|Add9~0_combout\,
	cout => \inst|uart_tx_u1|Add9~1\);

-- Location: LCCOMB_X23_Y19_N8
\inst|uart_tx_u1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add1~0_combout\ = \inst|uart_tx_u1|Send_addr[0]~1_combout\ $ (VCC)
-- \inst|uart_tx_u1|Add1~1\ = CARRY(\inst|uart_tx_u1|Send_addr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[0]~1_combout\,
	datad => VCC,
	combout => \inst|uart_tx_u1|Add1~0_combout\,
	cout => \inst|uart_tx_u1|Add1~1\);

-- Location: LCCOMB_X24_Y19_N30
\inst|uart_tx_u1|Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux7~2_combout\ = (\inst|Select_mode_u1|LED_select\(1) & (\inst|Select_mode_u1|LED_select\(3))) # (!\inst|Select_mode_u1|LED_select\(1) & ((\inst|Select_mode_u1|LED_select\(3) & (\inst|uart_tx_u1|Add9~0_combout\)) # 
-- (!\inst|Select_mode_u1|LED_select\(3) & ((\inst|uart_tx_u1|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(1),
	datab => \inst|Select_mode_u1|LED_select\(3),
	datac => \inst|uart_tx_u1|Add9~0_combout\,
	datad => \inst|uart_tx_u1|Add1~0_combout\,
	combout => \inst|uart_tx_u1|Mux7~2_combout\);

-- Location: LCCOMB_X24_Y19_N12
\inst|uart_tx_u1|Add11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add11~0_combout\ = \inst|uart_tx_u1|Send_addr[0]~1_combout\ $ (VCC)
-- \inst|uart_tx_u1|Add11~1\ = CARRY(\inst|uart_tx_u1|Send_addr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[0]~1_combout\,
	datad => VCC,
	combout => \inst|uart_tx_u1|Add11~0_combout\,
	cout => \inst|uart_tx_u1|Add11~1\);

-- Location: LCCOMB_X24_Y19_N8
\inst|uart_tx_u1|Mux7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux7~3_combout\ = (\inst|Select_mode_u1|LED_select\(1) & ((\inst|uart_tx_u1|Mux7~2_combout\ & ((\inst|uart_tx_u1|Add11~0_combout\))) # (!\inst|uart_tx_u1|Mux7~2_combout\ & (\inst|uart_tx_u1|Add3~0_combout\)))) # 
-- (!\inst|Select_mode_u1|LED_select\(1) & (((\inst|uart_tx_u1|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(1),
	datab => \inst|uart_tx_u1|Add3~0_combout\,
	datac => \inst|uart_tx_u1|Mux7~2_combout\,
	datad => \inst|uart_tx_u1|Add11~0_combout\,
	combout => \inst|uart_tx_u1|Mux7~3_combout\);

-- Location: LCCOMB_X24_Y19_N2
\inst|uart_tx_u1|Mux7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux7~4_combout\ = (\inst|Select_mode_u1|LED_select\(2) & (\inst|uart_tx_u1|Mux7~1_combout\)) # (!\inst|Select_mode_u1|LED_select\(2) & ((\inst|uart_tx_u1|Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(2),
	datab => \inst|uart_tx_u1|Mux7~1_combout\,
	datac => \inst|uart_tx_u1|Mux7~3_combout\,
	combout => \inst|uart_tx_u1|Mux7~4_combout\);

-- Location: LCCOMB_X24_Y19_N0
\inst|uart_tx_u1|addr[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr[0]~2_combout\ = (\inst|Select_mode_u1|LED_select\(0) & ((\inst|uart_tx_u1|Mux7~4_combout\))) # (!\inst|Select_mode_u1|LED_select\(0) & (\inst|uart_tx_u1|Send_addr[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[0]~1_combout\,
	datab => \inst|Select_mode_u1|LED_select\(0),
	datad => \inst|uart_tx_u1|Mux7~4_combout\,
	combout => \inst|uart_tx_u1|addr[0]~2_combout\);

-- Location: LCCOMB_X23_Y17_N24
\inst|uart_tx_u1|addr~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~6_combout\ = (\inst|uart_tx_u1|always0~1_combout\ & (\inst|uart_tx_u1|enable~q\ & (!\inst|uart_tx_u1|Equal4~3_combout\ & !\inst|uart_tx_u1|Equal4~2_combout\)))

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
	combout => \inst|uart_tx_u1|addr~6_combout\);

-- Location: LCCOMB_X21_Y18_N14
\inst|uart_tx_u1|addr~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~7_combout\ = (\inst|uart_tx_u1|addr~6_combout\ & (\inst|uart_tx_u1|Send_addr_w\(0))) # (!\inst|uart_tx_u1|addr~6_combout\ & ((\inst|uart_tx_u1|Add16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr_w\(0),
	datac => \inst|uart_tx_u1|Add16~0_combout\,
	datad => \inst|uart_tx_u1|addr~6_combout\,
	combout => \inst|uart_tx_u1|addr~7_combout\);

-- Location: LCCOMB_X23_Y17_N22
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

-- Location: FF_X24_Y19_N1
\inst|uart_tx_u1|addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|addr[0]~2_combout\,
	asdata => \inst|uart_tx_u1|addr~7_combout\,
	clrn => \res~input_o\,
	sload => \inst|uart_tx_u1|ALT_INV_always0~3_combout\,
	ena => \inst|uart_tx_u1|addr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|addr\(0));

-- Location: LCCOMB_X26_Y19_N10
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

-- Location: LCCOMB_X23_Y18_N20
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

-- Location: LCCOMB_X23_Y18_N30
\inst|uart_tx_u1|Send_addr[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Send_addr[1]~2_combout\ = (\inst|uart_tx_u1|always1~0_combout\ & (\inst|uart_tx_u1|Add16~2_combout\)) # (!\inst|uart_tx_u1|always1~0_combout\ & ((\inst|uart_tx_u1|Send_addr_w\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Add16~2_combout\,
	datac => \inst|uart_tx_u1|Send_addr_w\(1),
	datad => \inst|uart_tx_u1|always1~0_combout\,
	combout => \inst|uart_tx_u1|Send_addr[1]~2_combout\);

-- Location: FF_X23_Y18_N31
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

-- Location: LCCOMB_X23_Y16_N24
\inst|uart_tx_u1|addr[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr[1]~3_combout\ = (\inst|uart_tx_u1|addr~6_combout\ & (\inst|uart_tx_u1|Send_addr_w\(1))) # (!\inst|uart_tx_u1|addr~6_combout\ & ((\inst|uart_tx_u1|Add16~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr_w\(1),
	datab => \inst|uart_tx_u1|Add16~2_combout\,
	datad => \inst|uart_tx_u1|addr~6_combout\,
	combout => \inst|uart_tx_u1|addr[1]~3_combout\);

-- Location: LCCOMB_X20_Y18_N14
\inst|uart_tx_u1|Add15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add15~2_combout\ = (\inst|uart_tx_u1|Send_addr[1]~2_combout\ & (\inst|uart_tx_u1|Add15~1\ & VCC)) # (!\inst|uart_tx_u1|Send_addr[1]~2_combout\ & (!\inst|uart_tx_u1|Add15~1\))
-- \inst|uart_tx_u1|Add15~3\ = CARRY((!\inst|uart_tx_u1|Send_addr[1]~2_combout\ & !\inst|uart_tx_u1|Add15~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add15~1\,
	combout => \inst|uart_tx_u1|Add15~2_combout\,
	cout => \inst|uart_tx_u1|Add15~3\);

-- Location: LCCOMB_X24_Y19_N14
\inst|uart_tx_u1|Add11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add11~2_combout\ = (\inst|uart_tx_u1|Send_addr[1]~2_combout\ & (\inst|uart_tx_u1|Add11~1\ & VCC)) # (!\inst|uart_tx_u1|Send_addr[1]~2_combout\ & (!\inst|uart_tx_u1|Add11~1\))
-- \inst|uart_tx_u1|Add11~3\ = CARRY((!\inst|uart_tx_u1|Send_addr[1]~2_combout\ & !\inst|uart_tx_u1|Add11~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add11~1\,
	combout => \inst|uart_tx_u1|Add11~2_combout\,
	cout => \inst|uart_tx_u1|Add11~3\);

-- Location: LCCOMB_X23_Y20_N8
\inst|uart_tx_u1|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add3~2_combout\ = (\inst|uart_tx_u1|Send_addr[1]~2_combout\ & (\inst|uart_tx_u1|Add3~1\ & VCC)) # (!\inst|uart_tx_u1|Send_addr[1]~2_combout\ & (!\inst|uart_tx_u1|Add3~1\))
-- \inst|uart_tx_u1|Add3~3\ = CARRY((!\inst|uart_tx_u1|Send_addr[1]~2_combout\ & !\inst|uart_tx_u1|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add3~1\,
	combout => \inst|uart_tx_u1|Add3~2_combout\,
	cout => \inst|uart_tx_u1|Add3~3\);

-- Location: LCCOMB_X22_Y16_N16
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

-- Location: LCCOMB_X23_Y16_N12
\inst|uart_tx_u1|Mux6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux6~5_combout\ = (\inst|Select_mode_u1|LED_select\(2) & (((\inst|uart_tx_u1|Add7~2_combout\) # (\inst|Select_mode_u1|LED_select\(3))))) # (!\inst|Select_mode_u1|LED_select\(2) & (\inst|uart_tx_u1|Add3~2_combout\ & 
-- ((!\inst|Select_mode_u1|LED_select\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(2),
	datab => \inst|uart_tx_u1|Add3~2_combout\,
	datac => \inst|uart_tx_u1|Add7~2_combout\,
	datad => \inst|Select_mode_u1|LED_select\(3),
	combout => \inst|uart_tx_u1|Mux6~5_combout\);

-- Location: LCCOMB_X23_Y16_N30
\inst|uart_tx_u1|Mux6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux6~6_combout\ = (\inst|Select_mode_u1|LED_select\(3) & ((\inst|uart_tx_u1|Mux6~5_combout\ & (\inst|uart_tx_u1|Add15~2_combout\)) # (!\inst|uart_tx_u1|Mux6~5_combout\ & ((\inst|uart_tx_u1|Add11~2_combout\))))) # 
-- (!\inst|Select_mode_u1|LED_select\(3) & (((\inst|uart_tx_u1|Mux6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Add15~2_combout\,
	datab => \inst|Select_mode_u1|LED_select\(3),
	datac => \inst|uart_tx_u1|Add11~2_combout\,
	datad => \inst|uart_tx_u1|Mux6~5_combout\,
	combout => \inst|uart_tx_u1|Mux6~6_combout\);

-- Location: LCCOMB_X23_Y19_N10
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

-- Location: LCCOMB_X22_Y19_N14
\inst|uart_tx_u1|Add9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add9~2_combout\ = (\inst|uart_tx_u1|Send_addr[1]~2_combout\ & (!\inst|uart_tx_u1|Add9~1\)) # (!\inst|uart_tx_u1|Send_addr[1]~2_combout\ & ((\inst|uart_tx_u1|Add9~1\) # (GND)))
-- \inst|uart_tx_u1|Add9~3\ = CARRY((!\inst|uart_tx_u1|Add9~1\) # (!\inst|uart_tx_u1|Send_addr[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add9~1\,
	combout => \inst|uart_tx_u1|Add9~2_combout\,
	cout => \inst|uart_tx_u1|Add9~3\);

-- Location: LCCOMB_X23_Y16_N20
\inst|uart_tx_u1|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux6~0_combout\ = (\inst|Select_mode_u1|LED_select\(2) & (\inst|Select_mode_u1|LED_select\(3))) # (!\inst|Select_mode_u1|LED_select\(2) & ((\inst|Select_mode_u1|LED_select\(3) & ((\inst|uart_tx_u1|Add9~2_combout\))) # 
-- (!\inst|Select_mode_u1|LED_select\(3) & (\inst|uart_tx_u1|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(2),
	datab => \inst|Select_mode_u1|LED_select\(3),
	datac => \inst|uart_tx_u1|Add1~2_combout\,
	datad => \inst|uart_tx_u1|Add9~2_combout\,
	combout => \inst|uart_tx_u1|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y17_N6
\inst|uart_tx_u1|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add5~2_combout\ = (\inst|uart_tx_u1|Send_addr[1]~2_combout\ & (!\inst|uart_tx_u1|Add5~1\)) # (!\inst|uart_tx_u1|Send_addr[1]~2_combout\ & ((\inst|uart_tx_u1|Add5~1\) # (GND)))
-- \inst|uart_tx_u1|Add5~3\ = CARRY((!\inst|uart_tx_u1|Add5~1\) # (!\inst|uart_tx_u1|Send_addr[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add5~1\,
	combout => \inst|uart_tx_u1|Add5~2_combout\,
	cout => \inst|uart_tx_u1|Add5~3\);

-- Location: LCCOMB_X22_Y20_N2
\inst|uart_tx_u1|Add13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add13~2_combout\ = (\inst|uart_tx_u1|Send_addr[1]~2_combout\ & (!\inst|uart_tx_u1|Add13~1\)) # (!\inst|uart_tx_u1|Send_addr[1]~2_combout\ & ((\inst|uart_tx_u1|Add13~1\) # (GND)))
-- \inst|uart_tx_u1|Add13~3\ = CARRY((!\inst|uart_tx_u1|Add13~1\) # (!\inst|uart_tx_u1|Send_addr[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add13~1\,
	combout => \inst|uart_tx_u1|Add13~2_combout\,
	cout => \inst|uart_tx_u1|Add13~3\);

-- Location: LCCOMB_X23_Y16_N14
\inst|uart_tx_u1|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux6~1_combout\ = (\inst|Select_mode_u1|LED_select\(2) & ((\inst|uart_tx_u1|Mux6~0_combout\ & ((\inst|uart_tx_u1|Add13~2_combout\))) # (!\inst|uart_tx_u1|Mux6~0_combout\ & (\inst|uart_tx_u1|Add5~2_combout\)))) # 
-- (!\inst|Select_mode_u1|LED_select\(2) & (\inst|uart_tx_u1|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(2),
	datab => \inst|uart_tx_u1|Mux6~0_combout\,
	datac => \inst|uart_tx_u1|Add5~2_combout\,
	datad => \inst|uart_tx_u1|Add13~2_combout\,
	combout => \inst|uart_tx_u1|Mux6~1_combout\);

-- Location: LCCOMB_X21_Y18_N0
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

-- Location: LCCOMB_X21_Y17_N16
\inst|uart_tx_u1|Add12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add12~0_combout\ = \inst|uart_tx_u1|Send_addr[1]~2_combout\ $ (VCC)
-- \inst|uart_tx_u1|Add12~1\ = CARRY(\inst|uart_tx_u1|Send_addr[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	combout => \inst|uart_tx_u1|Add12~0_combout\,
	cout => \inst|uart_tx_u1|Add12~1\);

-- Location: LCCOMB_X21_Y19_N8
\inst|uart_tx_u1|Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add8~0_combout\ = \inst|uart_tx_u1|Send_addr[1]~2_combout\ $ (VCC)
-- \inst|uart_tx_u1|Add8~1\ = CARRY(\inst|uart_tx_u1|Send_addr[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	combout => \inst|uart_tx_u1|Add8~0_combout\,
	cout => \inst|uart_tx_u1|Add8~1\);

-- Location: LCCOMB_X22_Y18_N2
\inst|uart_tx_u1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add0~0_combout\ = \inst|uart_tx_u1|Send_addr[1]~2_combout\ $ (VCC)
-- \inst|uart_tx_u1|Add0~1\ = CARRY(\inst|uart_tx_u1|Send_addr[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	combout => \inst|uart_tx_u1|Add0~0_combout\,
	cout => \inst|uart_tx_u1|Add0~1\);

-- Location: LCCOMB_X22_Y16_N0
\inst|uart_tx_u1|Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux6~2_combout\ = (\inst|Select_mode_u1|LED_select\(2) & (\inst|Select_mode_u1|LED_select\(3))) # (!\inst|Select_mode_u1|LED_select\(2) & ((\inst|Select_mode_u1|LED_select\(3) & (\inst|uart_tx_u1|Add8~0_combout\)) # 
-- (!\inst|Select_mode_u1|LED_select\(3) & ((\inst|uart_tx_u1|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(2),
	datab => \inst|Select_mode_u1|LED_select\(3),
	datac => \inst|uart_tx_u1|Add8~0_combout\,
	datad => \inst|uart_tx_u1|Add0~0_combout\,
	combout => \inst|uart_tx_u1|Mux6~2_combout\);

-- Location: LCCOMB_X22_Y16_N10
\inst|uart_tx_u1|Mux6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux6~3_combout\ = (\inst|Select_mode_u1|LED_select\(2) & ((\inst|uart_tx_u1|Mux6~2_combout\ & ((\inst|uart_tx_u1|Add12~0_combout\))) # (!\inst|uart_tx_u1|Mux6~2_combout\ & (\inst|uart_tx_u1|Add4~0_combout\)))) # 
-- (!\inst|Select_mode_u1|LED_select\(2) & (((\inst|uart_tx_u1|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(2),
	datab => \inst|uart_tx_u1|Add4~0_combout\,
	datac => \inst|uart_tx_u1|Add12~0_combout\,
	datad => \inst|uart_tx_u1|Mux6~2_combout\,
	combout => \inst|uart_tx_u1|Mux6~3_combout\);

-- Location: LCCOMB_X22_Y16_N8
\inst|uart_tx_u1|Mux6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux6~4_combout\ = (\inst|Select_mode_u1|LED_select\(0) & (\inst|Select_mode_u1|LED_select\(1))) # (!\inst|Select_mode_u1|LED_select\(0) & ((\inst|Select_mode_u1|LED_select\(1) & (\inst|uart_tx_u1|Send_addr[1]~2_combout\)) # 
-- (!\inst|Select_mode_u1|LED_select\(1) & ((\inst|uart_tx_u1|Mux6~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(0),
	datab => \inst|Select_mode_u1|LED_select\(1),
	datac => \inst|uart_tx_u1|Send_addr[1]~2_combout\,
	datad => \inst|uart_tx_u1|Mux6~3_combout\,
	combout => \inst|uart_tx_u1|Mux6~4_combout\);

-- Location: LCCOMB_X23_Y16_N8
\inst|uart_tx_u1|Mux6~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux6~7_combout\ = (\inst|Select_mode_u1|LED_select\(0) & ((\inst|uart_tx_u1|Mux6~4_combout\ & (\inst|uart_tx_u1|Mux6~6_combout\)) # (!\inst|uart_tx_u1|Mux6~4_combout\ & ((\inst|uart_tx_u1|Mux6~1_combout\))))) # 
-- (!\inst|Select_mode_u1|LED_select\(0) & (((\inst|uart_tx_u1|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Mux6~6_combout\,
	datab => \inst|Select_mode_u1|LED_select\(0),
	datac => \inst|uart_tx_u1|Mux6~1_combout\,
	datad => \inst|uart_tx_u1|Mux6~4_combout\,
	combout => \inst|uart_tx_u1|Mux6~7_combout\);

-- Location: FF_X23_Y16_N25
\inst|uart_tx_u1|addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|addr[1]~3_combout\,
	asdata => \inst|uart_tx_u1|Mux6~7_combout\,
	clrn => \res~input_o\,
	sload => \inst|uart_tx_u1|always0~3_combout\,
	ena => \inst|uart_tx_u1|addr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|addr\(1));

-- Location: LCCOMB_X26_Y19_N12
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

-- Location: LCCOMB_X23_Y18_N10
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

-- Location: FF_X23_Y18_N11
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

-- Location: LCCOMB_X23_Y17_N12
\inst|uart_tx_u1|addr[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr[2]~4_combout\ = (\inst|uart_tx_u1|addr~6_combout\ & ((\inst|uart_tx_u1|Send_addr_w\(2)))) # (!\inst|uart_tx_u1|addr~6_combout\ & (\inst|uart_tx_u1|Add16~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Add16~4_combout\,
	datab => \inst|uart_tx_u1|Send_addr_w\(2),
	datad => \inst|uart_tx_u1|addr~6_combout\,
	combout => \inst|uart_tx_u1|addr[2]~4_combout\);

-- Location: LCCOMB_X22_Y16_N18
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

-- Location: LCCOMB_X20_Y18_N16
\inst|uart_tx_u1|Add15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add15~4_combout\ = (\inst|uart_tx_u1|Send_addr[2]~3_combout\ & (\inst|uart_tx_u1|Add15~3\ $ (GND))) # (!\inst|uart_tx_u1|Send_addr[2]~3_combout\ & (!\inst|uart_tx_u1|Add15~3\ & VCC))
-- \inst|uart_tx_u1|Add15~5\ = CARRY((\inst|uart_tx_u1|Send_addr[2]~3_combout\ & !\inst|uart_tx_u1|Add15~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add15~3\,
	combout => \inst|uart_tx_u1|Add15~4_combout\,
	cout => \inst|uart_tx_u1|Add15~5\);

-- Location: LCCOMB_X23_Y17_N28
\inst|uart_tx_u1|Mux5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux5~7_combout\ = (\inst|Select_mode_u1|LED_select\(0) & ((\inst|Select_mode_u1|LED_select\(3) & ((\inst|uart_tx_u1|Add15~4_combout\))) # (!\inst|Select_mode_u1|LED_select\(3) & (\inst|uart_tx_u1|Add7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(3),
	datab => \inst|Select_mode_u1|LED_select\(0),
	datac => \inst|uart_tx_u1|Add7~4_combout\,
	datad => \inst|uart_tx_u1|Add15~4_combout\,
	combout => \inst|uart_tx_u1|Mux5~7_combout\);

-- Location: LCCOMB_X23_Y17_N14
\inst|uart_tx_u1|Mux5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux5~8_combout\ = (\inst|uart_tx_u1|Mux5~7_combout\) # ((\inst|uart_tx_u1|Send_addr[2]~3_combout\ & !\inst|Select_mode_u1|LED_select\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[2]~3_combout\,
	datac => \inst|Select_mode_u1|LED_select\(0),
	datad => \inst|uart_tx_u1|Mux5~7_combout\,
	combout => \inst|uart_tx_u1|Mux5~8_combout\);

-- Location: LCCOMB_X21_Y17_N18
\inst|uart_tx_u1|Add12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add12~2_combout\ = (\inst|uart_tx_u1|Send_addr[2]~3_combout\ & (!\inst|uart_tx_u1|Add12~1\)) # (!\inst|uart_tx_u1|Send_addr[2]~3_combout\ & ((\inst|uart_tx_u1|Add12~1\) # (GND)))
-- \inst|uart_tx_u1|Add12~3\ = CARRY((!\inst|uart_tx_u1|Add12~1\) # (!\inst|uart_tx_u1|Send_addr[2]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add12~1\,
	combout => \inst|uart_tx_u1|Add12~2_combout\,
	cout => \inst|uart_tx_u1|Add12~3\);

-- Location: LCCOMB_X22_Y20_N4
\inst|uart_tx_u1|Add13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add13~4_combout\ = (\inst|uart_tx_u1|Send_addr[2]~3_combout\ & ((GND) # (!\inst|uart_tx_u1|Add13~3\))) # (!\inst|uart_tx_u1|Send_addr[2]~3_combout\ & (\inst|uart_tx_u1|Add13~3\ $ (GND)))
-- \inst|uart_tx_u1|Add13~5\ = CARRY((\inst|uart_tx_u1|Send_addr[2]~3_combout\) # (!\inst|uart_tx_u1|Add13~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add13~3\,
	combout => \inst|uart_tx_u1|Add13~4_combout\,
	cout => \inst|uart_tx_u1|Add13~5\);

-- Location: LCCOMB_X22_Y17_N8
\inst|uart_tx_u1|Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add5~4_combout\ = (\inst|uart_tx_u1|Send_addr[2]~3_combout\ & ((GND) # (!\inst|uart_tx_u1|Add5~3\))) # (!\inst|uart_tx_u1|Send_addr[2]~3_combout\ & (\inst|uart_tx_u1|Add5~3\ $ (GND)))
-- \inst|uart_tx_u1|Add5~5\ = CARRY((\inst|uart_tx_u1|Send_addr[2]~3_combout\) # (!\inst|uart_tx_u1|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add5~3\,
	combout => \inst|uart_tx_u1|Add5~4_combout\,
	cout => \inst|uart_tx_u1|Add5~5\);

-- Location: LCCOMB_X21_Y18_N2
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

-- Location: LCCOMB_X21_Y17_N10
\inst|uart_tx_u1|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux5~0_combout\ = (\inst|Select_mode_u1|LED_select\(0) & ((\inst|Select_mode_u1|LED_select\(3)) # ((\inst|uart_tx_u1|Add5~4_combout\)))) # (!\inst|Select_mode_u1|LED_select\(0) & (!\inst|Select_mode_u1|LED_select\(3) & 
-- ((\inst|uart_tx_u1|Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(0),
	datab => \inst|Select_mode_u1|LED_select\(3),
	datac => \inst|uart_tx_u1|Add5~4_combout\,
	datad => \inst|uart_tx_u1|Add4~2_combout\,
	combout => \inst|uart_tx_u1|Mux5~0_combout\);

-- Location: LCCOMB_X21_Y17_N12
\inst|uart_tx_u1|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux5~1_combout\ = (\inst|Select_mode_u1|LED_select\(3) & ((\inst|uart_tx_u1|Mux5~0_combout\ & ((\inst|uart_tx_u1|Add13~4_combout\))) # (!\inst|uart_tx_u1|Mux5~0_combout\ & (\inst|uart_tx_u1|Add12~2_combout\)))) # 
-- (!\inst|Select_mode_u1|LED_select\(3) & (((\inst|uart_tx_u1|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(3),
	datab => \inst|uart_tx_u1|Add12~2_combout\,
	datac => \inst|uart_tx_u1|Add13~4_combout\,
	datad => \inst|uart_tx_u1|Mux5~0_combout\,
	combout => \inst|uart_tx_u1|Mux5~1_combout\);

-- Location: LCCOMB_X24_Y19_N16
\inst|uart_tx_u1|Add11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add11~4_combout\ = (\inst|uart_tx_u1|Send_addr[2]~3_combout\ & ((GND) # (!\inst|uart_tx_u1|Add11~3\))) # (!\inst|uart_tx_u1|Send_addr[2]~3_combout\ & (\inst|uart_tx_u1|Add11~3\ $ (GND)))
-- \inst|uart_tx_u1|Add11~5\ = CARRY((\inst|uart_tx_u1|Send_addr[2]~3_combout\) # (!\inst|uart_tx_u1|Add11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add11~3\,
	combout => \inst|uart_tx_u1|Add11~4_combout\,
	cout => \inst|uart_tx_u1|Add11~5\);

-- Location: LCCOMB_X21_Y18_N16
\inst|uart_tx_u1|Add10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add10~0_combout\ = \inst|uart_tx_u1|Send_addr[2]~3_combout\ $ (VCC)
-- \inst|uart_tx_u1|Add10~1\ = CARRY(\inst|uart_tx_u1|Send_addr[2]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	combout => \inst|uart_tx_u1|Add10~0_combout\,
	cout => \inst|uart_tx_u1|Add10~1\);

-- Location: LCCOMB_X22_Y18_N20
\inst|uart_tx_u1|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add2~0_combout\ = \inst|uart_tx_u1|Send_addr[2]~3_combout\ $ (VCC)
-- \inst|uart_tx_u1|Add2~1\ = CARRY(\inst|uart_tx_u1|Send_addr[2]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	combout => \inst|uart_tx_u1|Add2~0_combout\,
	cout => \inst|uart_tx_u1|Add2~1\);

-- Location: LCCOMB_X23_Y20_N10
\inst|uart_tx_u1|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add3~4_combout\ = (\inst|uart_tx_u1|Send_addr[2]~3_combout\ & ((GND) # (!\inst|uart_tx_u1|Add3~3\))) # (!\inst|uart_tx_u1|Send_addr[2]~3_combout\ & (\inst|uart_tx_u1|Add3~3\ $ (GND)))
-- \inst|uart_tx_u1|Add3~5\ = CARRY((\inst|uart_tx_u1|Send_addr[2]~3_combout\) # (!\inst|uart_tx_u1|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add3~3\,
	combout => \inst|uart_tx_u1|Add3~4_combout\,
	cout => \inst|uart_tx_u1|Add3~5\);

-- Location: LCCOMB_X23_Y17_N10
\inst|uart_tx_u1|Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux5~2_combout\ = (\inst|Select_mode_u1|LED_select\(3) & (\inst|Select_mode_u1|LED_select\(0))) # (!\inst|Select_mode_u1|LED_select\(3) & ((\inst|Select_mode_u1|LED_select\(0) & ((\inst|uart_tx_u1|Add3~4_combout\))) # 
-- (!\inst|Select_mode_u1|LED_select\(0) & (\inst|uart_tx_u1|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(3),
	datab => \inst|Select_mode_u1|LED_select\(0),
	datac => \inst|uart_tx_u1|Add2~0_combout\,
	datad => \inst|uart_tx_u1|Add3~4_combout\,
	combout => \inst|uart_tx_u1|Mux5~2_combout\);

-- Location: LCCOMB_X23_Y17_N8
\inst|uart_tx_u1|Mux5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux5~3_combout\ = (\inst|Select_mode_u1|LED_select\(3) & ((\inst|uart_tx_u1|Mux5~2_combout\ & (\inst|uart_tx_u1|Add11~4_combout\)) # (!\inst|uart_tx_u1|Mux5~2_combout\ & ((\inst|uart_tx_u1|Add10~0_combout\))))) # 
-- (!\inst|Select_mode_u1|LED_select\(3) & (((\inst|uart_tx_u1|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Add11~4_combout\,
	datab => \inst|Select_mode_u1|LED_select\(3),
	datac => \inst|uart_tx_u1|Add10~0_combout\,
	datad => \inst|uart_tx_u1|Mux5~2_combout\,
	combout => \inst|uart_tx_u1|Mux5~3_combout\);

-- Location: LCCOMB_X22_Y19_N16
\inst|uart_tx_u1|Add9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add9~4_combout\ = (\inst|uart_tx_u1|Send_addr[2]~3_combout\ & (\inst|uart_tx_u1|Add9~3\ $ (GND))) # (!\inst|uart_tx_u1|Send_addr[2]~3_combout\ & (!\inst|uart_tx_u1|Add9~3\ & VCC))
-- \inst|uart_tx_u1|Add9~5\ = CARRY((\inst|uart_tx_u1|Send_addr[2]~3_combout\ & !\inst|uart_tx_u1|Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add9~3\,
	combout => \inst|uart_tx_u1|Add9~4_combout\,
	cout => \inst|uart_tx_u1|Add9~5\);

-- Location: LCCOMB_X21_Y19_N10
\inst|uart_tx_u1|Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add8~2_combout\ = (\inst|uart_tx_u1|Send_addr[2]~3_combout\ & (\inst|uart_tx_u1|Add8~1\ & VCC)) # (!\inst|uart_tx_u1|Send_addr[2]~3_combout\ & (!\inst|uart_tx_u1|Add8~1\))
-- \inst|uart_tx_u1|Add8~3\ = CARRY((!\inst|uart_tx_u1|Send_addr[2]~3_combout\ & !\inst|uart_tx_u1|Add8~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add8~1\,
	combout => \inst|uart_tx_u1|Add8~2_combout\,
	cout => \inst|uart_tx_u1|Add8~3\);

-- Location: LCCOMB_X22_Y18_N4
\inst|uart_tx_u1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add0~2_combout\ = (\inst|uart_tx_u1|Send_addr[2]~3_combout\ & (\inst|uart_tx_u1|Add0~1\ & VCC)) # (!\inst|uart_tx_u1|Send_addr[2]~3_combout\ & (!\inst|uart_tx_u1|Add0~1\))
-- \inst|uart_tx_u1|Add0~3\ = CARRY((!\inst|uart_tx_u1|Send_addr[2]~3_combout\ & !\inst|uart_tx_u1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add0~1\,
	combout => \inst|uart_tx_u1|Add0~2_combout\,
	cout => \inst|uart_tx_u1|Add0~3\);

-- Location: LCCOMB_X23_Y19_N12
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

-- Location: LCCOMB_X23_Y17_N18
\inst|uart_tx_u1|Mux5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux5~4_combout\ = (\inst|Select_mode_u1|LED_select\(3) & (\inst|Select_mode_u1|LED_select\(0))) # (!\inst|Select_mode_u1|LED_select\(3) & ((\inst|Select_mode_u1|LED_select\(0) & ((\inst|uart_tx_u1|Add1~4_combout\))) # 
-- (!\inst|Select_mode_u1|LED_select\(0) & (\inst|uart_tx_u1|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(3),
	datab => \inst|Select_mode_u1|LED_select\(0),
	datac => \inst|uart_tx_u1|Add0~2_combout\,
	datad => \inst|uart_tx_u1|Add1~4_combout\,
	combout => \inst|uart_tx_u1|Mux5~4_combout\);

-- Location: LCCOMB_X23_Y17_N0
\inst|uart_tx_u1|Mux5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux5~5_combout\ = (\inst|Select_mode_u1|LED_select\(3) & ((\inst|uart_tx_u1|Mux5~4_combout\ & (\inst|uart_tx_u1|Add9~4_combout\)) # (!\inst|uart_tx_u1|Mux5~4_combout\ & ((\inst|uart_tx_u1|Add8~2_combout\))))) # 
-- (!\inst|Select_mode_u1|LED_select\(3) & (((\inst|uart_tx_u1|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(3),
	datab => \inst|uart_tx_u1|Add9~4_combout\,
	datac => \inst|uart_tx_u1|Add8~2_combout\,
	datad => \inst|uart_tx_u1|Mux5~4_combout\,
	combout => \inst|uart_tx_u1|Mux5~5_combout\);

-- Location: LCCOMB_X23_Y17_N2
\inst|uart_tx_u1|Mux5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux5~6_combout\ = (\inst|Select_mode_u1|LED_select\(2) & (\inst|Select_mode_u1|LED_select\(1))) # (!\inst|Select_mode_u1|LED_select\(2) & ((\inst|Select_mode_u1|LED_select\(1) & (\inst|uart_tx_u1|Mux5~3_combout\)) # 
-- (!\inst|Select_mode_u1|LED_select\(1) & ((\inst|uart_tx_u1|Mux5~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(2),
	datab => \inst|Select_mode_u1|LED_select\(1),
	datac => \inst|uart_tx_u1|Mux5~3_combout\,
	datad => \inst|uart_tx_u1|Mux5~5_combout\,
	combout => \inst|uart_tx_u1|Mux5~6_combout\);

-- Location: LCCOMB_X23_Y17_N4
\inst|uart_tx_u1|Mux5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux5~9_combout\ = (\inst|Select_mode_u1|LED_select\(2) & ((\inst|uart_tx_u1|Mux5~6_combout\ & (\inst|uart_tx_u1|Mux5~8_combout\)) # (!\inst|uart_tx_u1|Mux5~6_combout\ & ((\inst|uart_tx_u1|Mux5~1_combout\))))) # 
-- (!\inst|Select_mode_u1|LED_select\(2) & (((\inst|uart_tx_u1|Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(2),
	datab => \inst|uart_tx_u1|Mux5~8_combout\,
	datac => \inst|uart_tx_u1|Mux5~1_combout\,
	datad => \inst|uart_tx_u1|Mux5~6_combout\,
	combout => \inst|uart_tx_u1|Mux5~9_combout\);

-- Location: FF_X23_Y17_N13
\inst|uart_tx_u1|addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|addr[2]~4_combout\,
	asdata => \inst|uart_tx_u1|Mux5~9_combout\,
	clrn => \res~input_o\,
	sload => \inst|uart_tx_u1|always0~3_combout\,
	ena => \inst|uart_tx_u1|addr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|addr\(2));

-- Location: LCCOMB_X26_Y19_N14
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

-- Location: FF_X23_Y18_N1
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

-- Location: LCCOMB_X23_Y18_N0
\inst|uart_tx_u1|Send_addr[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Send_addr[3]~6_combout\ = (\inst|uart_tx_u1|always1~0_combout\ & (\inst|uart_tx_u1|Add16~6_combout\)) # (!\inst|uart_tx_u1|always1~0_combout\ & ((\inst|uart_tx_u1|Send_addr_w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Add16~6_combout\,
	datac => \inst|uart_tx_u1|Send_addr_w\(3),
	datad => \inst|uart_tx_u1|always1~0_combout\,
	combout => \inst|uart_tx_u1|Send_addr[3]~6_combout\);

-- Location: LCCOMB_X24_Y17_N10
\inst|uart_tx_u1|addr[3]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr[3]~28_combout\ = (\inst|uart_tx_u1|always0~2_combout\ & (!\inst|uart_tx_u1|Equal4~4_combout\ & ((\inst|Select_mode_u1|LED_select\(2)) # (!\inst|Select_mode_u1|LED_select\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|always0~2_combout\,
	datab => \inst|Select_mode_u1|LED_select\(3),
	datac => \inst|Select_mode_u1|LED_select\(2),
	datad => \inst|uart_tx_u1|Equal4~4_combout\,
	combout => \inst|uart_tx_u1|addr[3]~28_combout\);

-- Location: LCCOMB_X21_Y17_N0
\inst|uart_tx_u1|Add14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add14~0_combout\ = \inst|uart_tx_u1|Send_addr[3]~6_combout\ $ (VCC)
-- \inst|uart_tx_u1|Add14~1\ = CARRY(\inst|uart_tx_u1|Send_addr[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	combout => \inst|uart_tx_u1|Add14~0_combout\,
	cout => \inst|uart_tx_u1|Add14~1\);

-- Location: LCCOMB_X21_Y17_N20
\inst|uart_tx_u1|Add12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add12~4_combout\ = (\inst|uart_tx_u1|Send_addr[3]~6_combout\ & (\inst|uart_tx_u1|Add12~3\ $ (GND))) # (!\inst|uart_tx_u1|Send_addr[3]~6_combout\ & (!\inst|uart_tx_u1|Add12~3\ & VCC))
-- \inst|uart_tx_u1|Add12~5\ = CARRY((\inst|uart_tx_u1|Send_addr[3]~6_combout\ & !\inst|uart_tx_u1|Add12~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add12~3\,
	combout => \inst|uart_tx_u1|Add12~4_combout\,
	cout => \inst|uart_tx_u1|Add12~5\);

-- Location: LCCOMB_X21_Y17_N14
\inst|uart_tx_u1|addr~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~43_combout\ = (\inst|Select_mode_u1|LED_select\(1) & ((\inst|uart_tx_u1|Add14~0_combout\) # ((\inst|Select_mode_u1|LED_select\(0))))) # (!\inst|Select_mode_u1|LED_select\(1) & (((!\inst|Select_mode_u1|LED_select\(0) & 
-- \inst|uart_tx_u1|Add12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(1),
	datab => \inst|uart_tx_u1|Add14~0_combout\,
	datac => \inst|Select_mode_u1|LED_select\(0),
	datad => \inst|uart_tx_u1|Add12~4_combout\,
	combout => \inst|uart_tx_u1|addr~43_combout\);

-- Location: LCCOMB_X20_Y18_N18
\inst|uart_tx_u1|Add15~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add15~6_combout\ = (\inst|uart_tx_u1|Send_addr[3]~6_combout\ & (\inst|uart_tx_u1|Add15~5\ & VCC)) # (!\inst|uart_tx_u1|Send_addr[3]~6_combout\ & (!\inst|uart_tx_u1|Add15~5\))
-- \inst|uart_tx_u1|Add15~7\ = CARRY((!\inst|uart_tx_u1|Send_addr[3]~6_combout\ & !\inst|uart_tx_u1|Add15~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add15~5\,
	combout => \inst|uart_tx_u1|Add15~6_combout\,
	cout => \inst|uart_tx_u1|Add15~7\);

-- Location: LCCOMB_X22_Y20_N6
\inst|uart_tx_u1|Add13~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add13~6_combout\ = (\inst|uart_tx_u1|Send_addr[3]~6_combout\ & (!\inst|uart_tx_u1|Add13~5\)) # (!\inst|uart_tx_u1|Send_addr[3]~6_combout\ & ((\inst|uart_tx_u1|Add13~5\) # (GND)))
-- \inst|uart_tx_u1|Add13~7\ = CARRY((!\inst|uart_tx_u1|Add13~5\) # (!\inst|uart_tx_u1|Send_addr[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add13~5\,
	combout => \inst|uart_tx_u1|Add13~6_combout\,
	cout => \inst|uart_tx_u1|Add13~7\);

-- Location: LCCOMB_X21_Y17_N30
\inst|uart_tx_u1|addr~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~44_combout\ = (\inst|Select_mode_u1|LED_select\(0) & ((\inst|uart_tx_u1|addr~43_combout\ & (\inst|uart_tx_u1|Add15~6_combout\)) # (!\inst|uart_tx_u1|addr~43_combout\ & ((\inst|uart_tx_u1|Add13~6_combout\))))) # 
-- (!\inst|Select_mode_u1|LED_select\(0) & (\inst|uart_tx_u1|addr~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(0),
	datab => \inst|uart_tx_u1|addr~43_combout\,
	datac => \inst|uart_tx_u1|Add15~6_combout\,
	datad => \inst|uart_tx_u1|Add13~6_combout\,
	combout => \inst|uart_tx_u1|addr~44_combout\);

-- Location: LCCOMB_X24_Y19_N18
\inst|uart_tx_u1|Add11~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add11~6_combout\ = (\inst|uart_tx_u1|Send_addr[3]~6_combout\ & (\inst|uart_tx_u1|Add11~5\ & VCC)) # (!\inst|uart_tx_u1|Send_addr[3]~6_combout\ & (!\inst|uart_tx_u1|Add11~5\))
-- \inst|uart_tx_u1|Add11~7\ = CARRY((!\inst|uart_tx_u1|Send_addr[3]~6_combout\ & !\inst|uart_tx_u1|Add11~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add11~5\,
	combout => \inst|uart_tx_u1|Add11~6_combout\,
	cout => \inst|uart_tx_u1|Add11~7\);

-- Location: LCCOMB_X21_Y18_N18
\inst|uart_tx_u1|Add10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add10~2_combout\ = (\inst|uart_tx_u1|Send_addr[3]~6_combout\ & (\inst|uart_tx_u1|Add10~1\ & VCC)) # (!\inst|uart_tx_u1|Send_addr[3]~6_combout\ & (!\inst|uart_tx_u1|Add10~1\))
-- \inst|uart_tx_u1|Add10~3\ = CARRY((!\inst|uart_tx_u1|Send_addr[3]~6_combout\ & !\inst|uart_tx_u1|Add10~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add10~1\,
	combout => \inst|uart_tx_u1|Add10~2_combout\,
	cout => \inst|uart_tx_u1|Add10~3\);

-- Location: LCCOMB_X22_Y19_N18
\inst|uart_tx_u1|Add9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add9~6_combout\ = (\inst|uart_tx_u1|Send_addr[3]~6_combout\ & (\inst|uart_tx_u1|Add9~5\ & VCC)) # (!\inst|uart_tx_u1|Send_addr[3]~6_combout\ & (!\inst|uart_tx_u1|Add9~5\))
-- \inst|uart_tx_u1|Add9~7\ = CARRY((!\inst|uart_tx_u1|Send_addr[3]~6_combout\ & !\inst|uart_tx_u1|Add9~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add9~5\,
	combout => \inst|uart_tx_u1|Add9~6_combout\,
	cout => \inst|uart_tx_u1|Add9~7\);

-- Location: LCCOMB_X21_Y19_N12
\inst|uart_tx_u1|Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add8~4_combout\ = (\inst|uart_tx_u1|Send_addr[3]~6_combout\ & (\inst|uart_tx_u1|Add8~3\ $ (GND))) # (!\inst|uart_tx_u1|Send_addr[3]~6_combout\ & (!\inst|uart_tx_u1|Add8~3\ & VCC))
-- \inst|uart_tx_u1|Add8~5\ = CARRY((\inst|uart_tx_u1|Send_addr[3]~6_combout\ & !\inst|uart_tx_u1|Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add8~3\,
	combout => \inst|uart_tx_u1|Add8~4_combout\,
	cout => \inst|uart_tx_u1|Add8~5\);

-- Location: LCCOMB_X22_Y19_N28
\inst|uart_tx_u1|addr~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~40_combout\ = (\inst|Select_mode_u1|LED_select\(0) & ((\inst|uart_tx_u1|Add9~6_combout\) # ((\inst|Select_mode_u1|LED_select\(1))))) # (!\inst|Select_mode_u1|LED_select\(0) & (((!\inst|Select_mode_u1|LED_select\(1) & 
-- \inst|uart_tx_u1|Add8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(0),
	datab => \inst|uart_tx_u1|Add9~6_combout\,
	datac => \inst|Select_mode_u1|LED_select\(1),
	datad => \inst|uart_tx_u1|Add8~4_combout\,
	combout => \inst|uart_tx_u1|addr~40_combout\);

-- Location: LCCOMB_X23_Y19_N26
\inst|uart_tx_u1|addr~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~41_combout\ = (\inst|Select_mode_u1|LED_select\(1) & ((\inst|uart_tx_u1|addr~40_combout\ & (\inst|uart_tx_u1|Add11~6_combout\)) # (!\inst|uart_tx_u1|addr~40_combout\ & ((\inst|uart_tx_u1|Add10~2_combout\))))) # 
-- (!\inst|Select_mode_u1|LED_select\(1) & (((\inst|uart_tx_u1|addr~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(1),
	datab => \inst|uart_tx_u1|Add11~6_combout\,
	datac => \inst|uart_tx_u1|Add10~2_combout\,
	datad => \inst|uart_tx_u1|addr~40_combout\,
	combout => \inst|uart_tx_u1|addr~41_combout\);

-- Location: LCCOMB_X22_Y19_N30
\inst|uart_tx_u1|addr[3]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr[3]~21_combout\ = (\inst|Select_mode_u1|LED_select\(3) & (\inst|uart_tx_u1|always0~2_combout\ & (!\inst|uart_tx_u1|Equal4~2_combout\ & !\inst|uart_tx_u1|Equal4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(3),
	datab => \inst|uart_tx_u1|always0~2_combout\,
	datac => \inst|uart_tx_u1|Equal4~2_combout\,
	datad => \inst|uart_tx_u1|Equal4~3_combout\,
	combout => \inst|uart_tx_u1|addr[3]~21_combout\);

-- Location: LCCOMB_X23_Y19_N4
\inst|uart_tx_u1|addr~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~42_combout\ = (\inst|uart_tx_u1|addr[3]~28_combout\ & (((\inst|uart_tx_u1|addr[3]~21_combout\)))) # (!\inst|uart_tx_u1|addr[3]~28_combout\ & ((\inst|uart_tx_u1|addr[3]~21_combout\ & ((\inst|uart_tx_u1|addr~41_combout\))) # 
-- (!\inst|uart_tx_u1|addr[3]~21_combout\ & (\inst|uart_tx_u1|Add16~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr[3]~28_combout\,
	datab => \inst|uart_tx_u1|Add16~6_combout\,
	datac => \inst|uart_tx_u1|addr~41_combout\,
	datad => \inst|uart_tx_u1|addr[3]~21_combout\,
	combout => \inst|uart_tx_u1|addr~42_combout\);

-- Location: LCCOMB_X22_Y17_N10
\inst|uart_tx_u1|Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add5~6_combout\ = (\inst|uart_tx_u1|Send_addr[3]~6_combout\ & (\inst|uart_tx_u1|Add5~5\ & VCC)) # (!\inst|uart_tx_u1|Send_addr[3]~6_combout\ & (!\inst|uart_tx_u1|Add5~5\))
-- \inst|uart_tx_u1|Add5~7\ = CARRY((!\inst|uart_tx_u1|Send_addr[3]~6_combout\ & !\inst|uart_tx_u1|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add5~5\,
	combout => \inst|uart_tx_u1|Add5~6_combout\,
	cout => \inst|uart_tx_u1|Add5~7\);

-- Location: LCCOMB_X23_Y17_N20
\inst|uart_tx_u1|addr[3]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr[3]~25_combout\ = (\inst|Select_mode_u1|LED_select\(2) & ((\inst|Select_mode_u1|LED_select\(0)) # (\inst|Select_mode_u1|LED_select\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Select_mode_u1|LED_select\(0),
	datac => \inst|Select_mode_u1|LED_select\(2),
	datad => \inst|Select_mode_u1|LED_select\(1),
	combout => \inst|uart_tx_u1|addr[3]~25_combout\);

-- Location: LCCOMB_X22_Y16_N20
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

-- Location: LCCOMB_X23_Y17_N26
\inst|uart_tx_u1|addr[3]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr[3]~24_combout\ = (\inst|Select_mode_u1|LED_select\(1)) # (!\inst|Select_mode_u1|LED_select\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Select_mode_u1|LED_select\(2),
	datad => \inst|Select_mode_u1|LED_select\(1),
	combout => \inst|uart_tx_u1|addr[3]~24_combout\);

-- Location: LCCOMB_X21_Y18_N4
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

-- Location: LCCOMB_X23_Y20_N12
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

-- Location: LCCOMB_X22_Y18_N22
\inst|uart_tx_u1|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add2~2_combout\ = (\inst|uart_tx_u1|Send_addr[3]~6_combout\ & (!\inst|uart_tx_u1|Add2~1\)) # (!\inst|uart_tx_u1|Send_addr[3]~6_combout\ & ((\inst|uart_tx_u1|Add2~1\) # (GND)))
-- \inst|uart_tx_u1|Add2~3\ = CARRY((!\inst|uart_tx_u1|Add2~1\) # (!\inst|uart_tx_u1|Send_addr[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add2~1\,
	combout => \inst|uart_tx_u1|Add2~2_combout\,
	cout => \inst|uart_tx_u1|Add2~3\);

-- Location: LCCOMB_X23_Y19_N14
\inst|uart_tx_u1|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add1~6_combout\ = (\inst|uart_tx_u1|Send_addr[3]~6_combout\ & (!\inst|uart_tx_u1|Add1~5\)) # (!\inst|uart_tx_u1|Send_addr[3]~6_combout\ & ((\inst|uart_tx_u1|Add1~5\) # (GND)))
-- \inst|uart_tx_u1|Add1~7\ = CARRY((!\inst|uart_tx_u1|Add1~5\) # (!\inst|uart_tx_u1|Send_addr[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add1~5\,
	combout => \inst|uart_tx_u1|Add1~6_combout\,
	cout => \inst|uart_tx_u1|Add1~7\);

-- Location: LCCOMB_X22_Y18_N6
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

-- Location: LCCOMB_X23_Y19_N6
\inst|uart_tx_u1|addr~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~36_combout\ = (\inst|Select_mode_u1|LED_select\(1) & (\inst|Select_mode_u1|LED_select\(0))) # (!\inst|Select_mode_u1|LED_select\(1) & ((\inst|Select_mode_u1|LED_select\(0) & (\inst|uart_tx_u1|Add1~6_combout\)) # 
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
	combout => \inst|uart_tx_u1|addr~36_combout\);

-- Location: LCCOMB_X23_Y19_N24
\inst|uart_tx_u1|addr~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~37_combout\ = (\inst|Select_mode_u1|LED_select\(1) & ((\inst|uart_tx_u1|addr~36_combout\ & (\inst|uart_tx_u1|Add3~6_combout\)) # (!\inst|uart_tx_u1|addr~36_combout\ & ((\inst|uart_tx_u1|Add2~2_combout\))))) # 
-- (!\inst|Select_mode_u1|LED_select\(1) & (((\inst|uart_tx_u1|addr~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Add3~6_combout\,
	datab => \inst|Select_mode_u1|LED_select\(1),
	datac => \inst|uart_tx_u1|Add2~2_combout\,
	datad => \inst|uart_tx_u1|addr~36_combout\,
	combout => \inst|uart_tx_u1|addr~37_combout\);

-- Location: LCCOMB_X23_Y19_N2
\inst|uart_tx_u1|addr~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~38_combout\ = (\inst|uart_tx_u1|addr[3]~25_combout\ & (\inst|uart_tx_u1|addr[3]~24_combout\)) # (!\inst|uart_tx_u1|addr[3]~25_combout\ & ((\inst|uart_tx_u1|addr[3]~24_combout\ & ((\inst|uart_tx_u1|addr~37_combout\))) # 
-- (!\inst|uart_tx_u1|addr[3]~24_combout\ & (\inst|uart_tx_u1|Add4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr[3]~25_combout\,
	datab => \inst|uart_tx_u1|addr[3]~24_combout\,
	datac => \inst|uart_tx_u1|Add4~4_combout\,
	datad => \inst|uart_tx_u1|addr~37_combout\,
	combout => \inst|uart_tx_u1|addr~38_combout\);

-- Location: LCCOMB_X23_Y19_N0
\inst|uart_tx_u1|addr~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~39_combout\ = (\inst|uart_tx_u1|addr[3]~25_combout\ & ((\inst|uart_tx_u1|addr~38_combout\ & ((\inst|uart_tx_u1|Add7~6_combout\))) # (!\inst|uart_tx_u1|addr~38_combout\ & (\inst|uart_tx_u1|Add5~6_combout\)))) # 
-- (!\inst|uart_tx_u1|addr[3]~25_combout\ & (((\inst|uart_tx_u1|addr~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Add5~6_combout\,
	datab => \inst|uart_tx_u1|addr[3]~25_combout\,
	datac => \inst|uart_tx_u1|Add7~6_combout\,
	datad => \inst|uart_tx_u1|addr~38_combout\,
	combout => \inst|uart_tx_u1|addr~39_combout\);

-- Location: LCCOMB_X23_Y19_N30
\inst|uart_tx_u1|addr~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~45_combout\ = (\inst|uart_tx_u1|addr[3]~28_combout\ & ((\inst|uart_tx_u1|addr~42_combout\ & (\inst|uart_tx_u1|addr~44_combout\)) # (!\inst|uart_tx_u1|addr~42_combout\ & ((\inst|uart_tx_u1|addr~39_combout\))))) # 
-- (!\inst|uart_tx_u1|addr[3]~28_combout\ & (((\inst|uart_tx_u1|addr~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr[3]~28_combout\,
	datab => \inst|uart_tx_u1|addr~44_combout\,
	datac => \inst|uart_tx_u1|addr~42_combout\,
	datad => \inst|uart_tx_u1|addr~39_combout\,
	combout => \inst|uart_tx_u1|addr~45_combout\);

-- Location: LCCOMB_X23_Y19_N28
\inst|uart_tx_u1|addr~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~46_combout\ = (\inst|uart_tx_u1|addr[3]~34_combout\ & (\inst|uart_tx_u1|Send_addr[3]~6_combout\)) # (!\inst|uart_tx_u1|addr[3]~34_combout\ & ((\inst|uart_tx_u1|addr~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr[3]~34_combout\,
	datab => \inst|uart_tx_u1|Send_addr[3]~6_combout\,
	datac => \inst|uart_tx_u1|addr~45_combout\,
	combout => \inst|uart_tx_u1|addr~46_combout\);

-- Location: FF_X23_Y19_N29
\inst|uart_tx_u1|addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|addr~46_combout\,
	clrn => \res~input_o\,
	ena => \inst|uart_tx_u1|addr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|addr\(3));

-- Location: LCCOMB_X26_Y19_N16
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

-- Location: FF_X23_Y18_N23
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

-- Location: LCCOMB_X23_Y18_N22
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

-- Location: LCCOMB_X21_Y17_N2
\inst|uart_tx_u1|Add14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add14~2_combout\ = (\inst|uart_tx_u1|Send_addr[4]~5_combout\ & (\inst|uart_tx_u1|Add14~1\ & VCC)) # (!\inst|uart_tx_u1|Send_addr[4]~5_combout\ & (!\inst|uart_tx_u1|Add14~1\))
-- \inst|uart_tx_u1|Add14~3\ = CARRY((!\inst|uart_tx_u1|Send_addr[4]~5_combout\ & !\inst|uart_tx_u1|Add14~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add14~1\,
	combout => \inst|uart_tx_u1|Add14~2_combout\,
	cout => \inst|uart_tx_u1|Add14~3\);

-- Location: LCCOMB_X22_Y20_N8
\inst|uart_tx_u1|Add13~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add13~8_combout\ = (\inst|uart_tx_u1|Send_addr[4]~5_combout\ & ((GND) # (!\inst|uart_tx_u1|Add13~7\))) # (!\inst|uart_tx_u1|Send_addr[4]~5_combout\ & (\inst|uart_tx_u1|Add13~7\ $ (GND)))
-- \inst|uart_tx_u1|Add13~9\ = CARRY((\inst|uart_tx_u1|Send_addr[4]~5_combout\) # (!\inst|uart_tx_u1|Add13~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add13~7\,
	combout => \inst|uart_tx_u1|Add13~8_combout\,
	cout => \inst|uart_tx_u1|Add13~9\);

-- Location: LCCOMB_X21_Y17_N22
\inst|uart_tx_u1|Add12~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add12~6_combout\ = (\inst|uart_tx_u1|Send_addr[4]~5_combout\ & (\inst|uart_tx_u1|Add12~5\ & VCC)) # (!\inst|uart_tx_u1|Send_addr[4]~5_combout\ & (!\inst|uart_tx_u1|Add12~5\))
-- \inst|uart_tx_u1|Add12~7\ = CARRY((!\inst|uart_tx_u1|Send_addr[4]~5_combout\ & !\inst|uart_tx_u1|Add12~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add12~5\,
	combout => \inst|uart_tx_u1|Add12~6_combout\,
	cout => \inst|uart_tx_u1|Add12~7\);

-- Location: LCCOMB_X23_Y20_N30
\inst|uart_tx_u1|addr~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~30_combout\ = (\inst|Select_mode_u1|LED_select\(0) & ((\inst|Select_mode_u1|LED_select\(1)) # ((\inst|uart_tx_u1|Add13~8_combout\)))) # (!\inst|Select_mode_u1|LED_select\(0) & (!\inst|Select_mode_u1|LED_select\(1) & 
-- ((\inst|uart_tx_u1|Add12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(0),
	datab => \inst|Select_mode_u1|LED_select\(1),
	datac => \inst|uart_tx_u1|Add13~8_combout\,
	datad => \inst|uart_tx_u1|Add12~6_combout\,
	combout => \inst|uart_tx_u1|addr~30_combout\);

-- Location: LCCOMB_X20_Y18_N20
\inst|uart_tx_u1|Add15~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add15~8_combout\ = (\inst|uart_tx_u1|Send_addr[4]~5_combout\ & ((GND) # (!\inst|uart_tx_u1|Add15~7\))) # (!\inst|uart_tx_u1|Send_addr[4]~5_combout\ & (\inst|uart_tx_u1|Add15~7\ $ (GND)))
-- \inst|uart_tx_u1|Add15~9\ = CARRY((\inst|uart_tx_u1|Send_addr[4]~5_combout\) # (!\inst|uart_tx_u1|Add15~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add15~7\,
	combout => \inst|uart_tx_u1|Add15~8_combout\,
	cout => \inst|uart_tx_u1|Add15~9\);

-- Location: LCCOMB_X23_Y20_N24
\inst|uart_tx_u1|addr~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~31_combout\ = (\inst|Select_mode_u1|LED_select\(1) & ((\inst|uart_tx_u1|addr~30_combout\ & ((\inst|uart_tx_u1|Add15~8_combout\))) # (!\inst|uart_tx_u1|addr~30_combout\ & (\inst|uart_tx_u1|Add14~2_combout\)))) # 
-- (!\inst|Select_mode_u1|LED_select\(1) & (((\inst|uart_tx_u1|addr~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Add14~2_combout\,
	datab => \inst|Select_mode_u1|LED_select\(1),
	datac => \inst|uart_tx_u1|addr~30_combout\,
	datad => \inst|uart_tx_u1|Add15~8_combout\,
	combout => \inst|uart_tx_u1|addr~31_combout\);

-- Location: LCCOMB_X24_Y19_N20
\inst|uart_tx_u1|Add11~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add11~8_combout\ = (\inst|uart_tx_u1|Send_addr[4]~5_combout\ & (\inst|uart_tx_u1|Add11~7\ $ (GND))) # (!\inst|uart_tx_u1|Send_addr[4]~5_combout\ & (!\inst|uart_tx_u1|Add11~7\ & VCC))
-- \inst|uart_tx_u1|Add11~9\ = CARRY((\inst|uart_tx_u1|Send_addr[4]~5_combout\ & !\inst|uart_tx_u1|Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add11~7\,
	combout => \inst|uart_tx_u1|Add11~8_combout\,
	cout => \inst|uart_tx_u1|Add11~9\);

-- Location: LCCOMB_X22_Y19_N20
\inst|uart_tx_u1|Add9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add9~8_combout\ = (\inst|uart_tx_u1|Send_addr[4]~5_combout\ & (\inst|uart_tx_u1|Add9~7\ $ (GND))) # (!\inst|uart_tx_u1|Send_addr[4]~5_combout\ & (!\inst|uart_tx_u1|Add9~7\ & VCC))
-- \inst|uart_tx_u1|Add9~9\ = CARRY((\inst|uart_tx_u1|Send_addr[4]~5_combout\ & !\inst|uart_tx_u1|Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add9~7\,
	combout => \inst|uart_tx_u1|Add9~8_combout\,
	cout => \inst|uart_tx_u1|Add9~9\);

-- Location: LCCOMB_X21_Y18_N20
\inst|uart_tx_u1|Add10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add10~4_combout\ = (\inst|uart_tx_u1|Send_addr[4]~5_combout\ & (\inst|uart_tx_u1|Add10~3\ $ (GND))) # (!\inst|uart_tx_u1|Send_addr[4]~5_combout\ & (!\inst|uart_tx_u1|Add10~3\ & VCC))
-- \inst|uart_tx_u1|Add10~5\ = CARRY((\inst|uart_tx_u1|Send_addr[4]~5_combout\ & !\inst|uart_tx_u1|Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add10~3\,
	combout => \inst|uart_tx_u1|Add10~4_combout\,
	cout => \inst|uart_tx_u1|Add10~5\);

-- Location: LCCOMB_X21_Y19_N14
\inst|uart_tx_u1|Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add8~6_combout\ = (\inst|uart_tx_u1|Send_addr[4]~5_combout\ & (!\inst|uart_tx_u1|Add8~5\)) # (!\inst|uart_tx_u1|Send_addr[4]~5_combout\ & ((\inst|uart_tx_u1|Add8~5\) # (GND)))
-- \inst|uart_tx_u1|Add8~7\ = CARRY((!\inst|uart_tx_u1|Add8~5\) # (!\inst|uart_tx_u1|Send_addr[4]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add8~5\,
	combout => \inst|uart_tx_u1|Add8~6_combout\,
	cout => \inst|uart_tx_u1|Add8~7\);

-- Location: LCCOMB_X24_Y19_N28
\inst|uart_tx_u1|addr~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~19_combout\ = (\inst|Select_mode_u1|LED_select\(0) & (\inst|Select_mode_u1|LED_select\(1))) # (!\inst|Select_mode_u1|LED_select\(0) & ((\inst|Select_mode_u1|LED_select\(1) & (\inst|uart_tx_u1|Add10~4_combout\)) # 
-- (!\inst|Select_mode_u1|LED_select\(1) & ((\inst|uart_tx_u1|Add8~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(0),
	datab => \inst|Select_mode_u1|LED_select\(1),
	datac => \inst|uart_tx_u1|Add10~4_combout\,
	datad => \inst|uart_tx_u1|Add8~6_combout\,
	combout => \inst|uart_tx_u1|addr~19_combout\);

-- Location: LCCOMB_X24_Y19_N10
\inst|uart_tx_u1|addr~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~20_combout\ = (\inst|Select_mode_u1|LED_select\(0) & ((\inst|uart_tx_u1|addr~19_combout\ & (\inst|uart_tx_u1|Add11~8_combout\)) # (!\inst|uart_tx_u1|addr~19_combout\ & ((\inst|uart_tx_u1|Add9~8_combout\))))) # 
-- (!\inst|Select_mode_u1|LED_select\(0) & (((\inst|uart_tx_u1|addr~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(0),
	datab => \inst|uart_tx_u1|Add11~8_combout\,
	datac => \inst|uart_tx_u1|Add9~8_combout\,
	datad => \inst|uart_tx_u1|addr~19_combout\,
	combout => \inst|uart_tx_u1|addr~20_combout\);

-- Location: LCCOMB_X22_Y16_N22
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

-- Location: LCCOMB_X22_Y17_N12
\inst|uart_tx_u1|Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add5~8_combout\ = (\inst|uart_tx_u1|Send_addr[4]~5_combout\ & ((GND) # (!\inst|uart_tx_u1|Add5~7\))) # (!\inst|uart_tx_u1|Send_addr[4]~5_combout\ & (\inst|uart_tx_u1|Add5~7\ $ (GND)))
-- \inst|uart_tx_u1|Add5~9\ = CARRY((\inst|uart_tx_u1|Send_addr[4]~5_combout\) # (!\inst|uart_tx_u1|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add5~7\,
	combout => \inst|uart_tx_u1|Add5~8_combout\,
	cout => \inst|uart_tx_u1|Add5~9\);

-- Location: LCCOMB_X21_Y18_N6
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

-- Location: LCCOMB_X22_Y17_N22
\inst|uart_tx_u1|addr~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~26_combout\ = (\inst|uart_tx_u1|addr[3]~24_combout\ & (((\inst|uart_tx_u1|addr[3]~25_combout\)))) # (!\inst|uart_tx_u1|addr[3]~24_combout\ & ((\inst|uart_tx_u1|addr[3]~25_combout\ & (\inst|uart_tx_u1|Add5~8_combout\)) # 
-- (!\inst|uart_tx_u1|addr[3]~25_combout\ & ((\inst|uart_tx_u1|Add4~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Add5~8_combout\,
	datab => \inst|uart_tx_u1|addr[3]~24_combout\,
	datac => \inst|uart_tx_u1|addr[3]~25_combout\,
	datad => \inst|uart_tx_u1|Add4~6_combout\,
	combout => \inst|uart_tx_u1|addr~26_combout\);

-- Location: LCCOMB_X23_Y20_N14
\inst|uart_tx_u1|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add3~8_combout\ = (\inst|uart_tx_u1|Send_addr[4]~5_combout\ & ((GND) # (!\inst|uart_tx_u1|Add3~7\))) # (!\inst|uart_tx_u1|Send_addr[4]~5_combout\ & (\inst|uart_tx_u1|Add3~7\ $ (GND)))
-- \inst|uart_tx_u1|Add3~9\ = CARRY((\inst|uart_tx_u1|Send_addr[4]~5_combout\) # (!\inst|uart_tx_u1|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add3~7\,
	combout => \inst|uart_tx_u1|Add3~8_combout\,
	cout => \inst|uart_tx_u1|Add3~9\);

-- Location: LCCOMB_X23_Y19_N16
\inst|uart_tx_u1|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add1~8_combout\ = (\inst|uart_tx_u1|Send_addr[4]~5_combout\ & ((GND) # (!\inst|uart_tx_u1|Add1~7\))) # (!\inst|uart_tx_u1|Send_addr[4]~5_combout\ & (\inst|uart_tx_u1|Add1~7\ $ (GND)))
-- \inst|uart_tx_u1|Add1~9\ = CARRY((\inst|uart_tx_u1|Send_addr[4]~5_combout\) # (!\inst|uart_tx_u1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add1~7\,
	combout => \inst|uart_tx_u1|Add1~8_combout\,
	cout => \inst|uart_tx_u1|Add1~9\);

-- Location: LCCOMB_X22_Y18_N8
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

-- Location: LCCOMB_X23_Y20_N22
\inst|uart_tx_u1|addr~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~22_combout\ = (\inst|Select_mode_u1|LED_select\(0) & ((\inst|Select_mode_u1|LED_select\(1)) # ((\inst|uart_tx_u1|Add1~8_combout\)))) # (!\inst|Select_mode_u1|LED_select\(0) & (!\inst|Select_mode_u1|LED_select\(1) & 
-- ((\inst|uart_tx_u1|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(0),
	datab => \inst|Select_mode_u1|LED_select\(1),
	datac => \inst|uart_tx_u1|Add1~8_combout\,
	datad => \inst|uart_tx_u1|Add0~6_combout\,
	combout => \inst|uart_tx_u1|addr~22_combout\);

-- Location: LCCOMB_X22_Y18_N24
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

-- Location: LCCOMB_X23_Y20_N0
\inst|uart_tx_u1|addr~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~23_combout\ = (\inst|Select_mode_u1|LED_select\(1) & ((\inst|uart_tx_u1|addr~22_combout\ & (\inst|uart_tx_u1|Add3~8_combout\)) # (!\inst|uart_tx_u1|addr~22_combout\ & ((\inst|uart_tx_u1|Add2~4_combout\))))) # 
-- (!\inst|Select_mode_u1|LED_select\(1) & (((\inst|uart_tx_u1|addr~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(1),
	datab => \inst|uart_tx_u1|Add3~8_combout\,
	datac => \inst|uart_tx_u1|addr~22_combout\,
	datad => \inst|uart_tx_u1|Add2~4_combout\,
	combout => \inst|uart_tx_u1|addr~23_combout\);

-- Location: LCCOMB_X23_Y20_N2
\inst|uart_tx_u1|addr~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~27_combout\ = (\inst|uart_tx_u1|addr[3]~24_combout\ & ((\inst|uart_tx_u1|addr~26_combout\ & (\inst|uart_tx_u1|Add7~8_combout\)) # (!\inst|uart_tx_u1|addr~26_combout\ & ((\inst|uart_tx_u1|addr~23_combout\))))) # 
-- (!\inst|uart_tx_u1|addr[3]~24_combout\ & (((\inst|uart_tx_u1|addr~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr[3]~24_combout\,
	datab => \inst|uart_tx_u1|Add7~8_combout\,
	datac => \inst|uart_tx_u1|addr~26_combout\,
	datad => \inst|uart_tx_u1|addr~23_combout\,
	combout => \inst|uart_tx_u1|addr~27_combout\);

-- Location: LCCOMB_X23_Y20_N28
\inst|uart_tx_u1|addr~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~29_combout\ = (\inst|uart_tx_u1|addr[3]~21_combout\ & (\inst|uart_tx_u1|addr[3]~28_combout\)) # (!\inst|uart_tx_u1|addr[3]~21_combout\ & ((\inst|uart_tx_u1|addr[3]~28_combout\ & ((\inst|uart_tx_u1|addr~27_combout\))) # 
-- (!\inst|uart_tx_u1|addr[3]~28_combout\ & (\inst|uart_tx_u1|Add16~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr[3]~21_combout\,
	datab => \inst|uart_tx_u1|addr[3]~28_combout\,
	datac => \inst|uart_tx_u1|Add16~8_combout\,
	datad => \inst|uart_tx_u1|addr~27_combout\,
	combout => \inst|uart_tx_u1|addr~29_combout\);

-- Location: LCCOMB_X23_Y20_N26
\inst|uart_tx_u1|addr~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~32_combout\ = (\inst|uart_tx_u1|addr[3]~21_combout\ & ((\inst|uart_tx_u1|addr~29_combout\ & (\inst|uart_tx_u1|addr~31_combout\)) # (!\inst|uart_tx_u1|addr~29_combout\ & ((\inst|uart_tx_u1|addr~20_combout\))))) # 
-- (!\inst|uart_tx_u1|addr[3]~21_combout\ & (((\inst|uart_tx_u1|addr~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr[3]~21_combout\,
	datab => \inst|uart_tx_u1|addr~31_combout\,
	datac => \inst|uart_tx_u1|addr~20_combout\,
	datad => \inst|uart_tx_u1|addr~29_combout\,
	combout => \inst|uart_tx_u1|addr~32_combout\);

-- Location: LCCOMB_X23_Y20_N4
\inst|uart_tx_u1|addr~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~35_combout\ = (\inst|uart_tx_u1|addr[3]~34_combout\ & (\inst|uart_tx_u1|Send_addr[4]~5_combout\)) # (!\inst|uart_tx_u1|addr[3]~34_combout\ & ((\inst|uart_tx_u1|addr~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[4]~5_combout\,
	datac => \inst|uart_tx_u1|addr~32_combout\,
	datad => \inst|uart_tx_u1|addr[3]~34_combout\,
	combout => \inst|uart_tx_u1|addr~35_combout\);

-- Location: FF_X23_Y20_N5
\inst|uart_tx_u1|addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|addr~35_combout\,
	clrn => \res~input_o\,
	ena => \inst|uart_tx_u1|addr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|addr\(4));

-- Location: LCCOMB_X26_Y19_N18
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

-- Location: LCCOMB_X23_Y18_N16
\inst|uart_tx_u1|Send_addr[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Send_addr[5]~4_combout\ = (\inst|uart_tx_u1|always1~0_combout\ & (\inst|uart_tx_u1|Add16~10_combout\)) # (!\inst|uart_tx_u1|always1~0_combout\ & ((\inst|uart_tx_u1|Send_addr_w\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Add16~10_combout\,
	datac => \inst|uart_tx_u1|Send_addr_w\(5),
	datad => \inst|uart_tx_u1|always1~0_combout\,
	combout => \inst|uart_tx_u1|Send_addr[5]~4_combout\);

-- Location: FF_X23_Y18_N17
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

-- Location: LCCOMB_X26_Y19_N24
\inst|uart_tx_u1|addr[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr[5]~5_combout\ = (\inst|uart_tx_u1|addr~6_combout\ & (\inst|uart_tx_u1|Send_addr_w\(5))) # (!\inst|uart_tx_u1|addr~6_combout\ & ((\inst|uart_tx_u1|Add16~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr_w\(5),
	datab => \inst|uart_tx_u1|Add16~10_combout\,
	datad => \inst|uart_tx_u1|addr~6_combout\,
	combout => \inst|uart_tx_u1|addr[5]~5_combout\);

-- Location: LCCOMB_X22_Y17_N14
\inst|uart_tx_u1|Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add5~10_combout\ = (\inst|uart_tx_u1|Send_addr[5]~4_combout\ & (!\inst|uart_tx_u1|Add5~9\)) # (!\inst|uart_tx_u1|Send_addr[5]~4_combout\ & ((\inst|uart_tx_u1|Add5~9\) # (GND)))
-- \inst|uart_tx_u1|Add5~11\ = CARRY((!\inst|uart_tx_u1|Add5~9\) # (!\inst|uart_tx_u1|Send_addr[5]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add5~9\,
	combout => \inst|uart_tx_u1|Add5~10_combout\,
	cout => \inst|uart_tx_u1|Add5~11\);

-- Location: LCCOMB_X22_Y20_N10
\inst|uart_tx_u1|Add13~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add13~10_combout\ = (\inst|uart_tx_u1|Send_addr[5]~4_combout\ & (\inst|uart_tx_u1|Add13~9\ & VCC)) # (!\inst|uart_tx_u1|Send_addr[5]~4_combout\ & (!\inst|uart_tx_u1|Add13~9\))
-- \inst|uart_tx_u1|Add13~11\ = CARRY((!\inst|uart_tx_u1|Send_addr[5]~4_combout\ & !\inst|uart_tx_u1|Add13~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add13~9\,
	combout => \inst|uart_tx_u1|Add13~10_combout\,
	cout => \inst|uart_tx_u1|Add13~11\);

-- Location: LCCOMB_X22_Y19_N22
\inst|uart_tx_u1|Add9~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add9~10_combout\ = (\inst|uart_tx_u1|Send_addr[5]~4_combout\ & (\inst|uart_tx_u1|Add9~9\ & VCC)) # (!\inst|uart_tx_u1|Send_addr[5]~4_combout\ & (!\inst|uart_tx_u1|Add9~9\))
-- \inst|uart_tx_u1|Add9~11\ = CARRY((!\inst|uart_tx_u1|Send_addr[5]~4_combout\ & !\inst|uart_tx_u1|Add9~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add9~9\,
	combout => \inst|uart_tx_u1|Add9~10_combout\,
	cout => \inst|uart_tx_u1|Add9~11\);

-- Location: LCCOMB_X23_Y19_N18
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

-- Location: LCCOMB_X22_Y19_N6
\inst|uart_tx_u1|addr~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~9_combout\ = (\inst|Select_mode_u1|LED_select\(3) & ((\inst|Select_mode_u1|LED_select\(2)) # ((\inst|uart_tx_u1|Add9~10_combout\)))) # (!\inst|Select_mode_u1|LED_select\(3) & (!\inst|Select_mode_u1|LED_select\(2) & 
-- ((\inst|uart_tx_u1|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(3),
	datab => \inst|Select_mode_u1|LED_select\(2),
	datac => \inst|uart_tx_u1|Add9~10_combout\,
	datad => \inst|uart_tx_u1|Add1~10_combout\,
	combout => \inst|uart_tx_u1|addr~9_combout\);

-- Location: LCCOMB_X22_Y19_N4
\inst|uart_tx_u1|addr~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~10_combout\ = (\inst|Select_mode_u1|LED_select\(2) & ((\inst|uart_tx_u1|addr~9_combout\ & ((\inst|uart_tx_u1|Add13~10_combout\))) # (!\inst|uart_tx_u1|addr~9_combout\ & (\inst|uart_tx_u1|Add5~10_combout\)))) # 
-- (!\inst|Select_mode_u1|LED_select\(2) & (((\inst|uart_tx_u1|addr~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(2),
	datab => \inst|uart_tx_u1|Add5~10_combout\,
	datac => \inst|uart_tx_u1|Add13~10_combout\,
	datad => \inst|uart_tx_u1|addr~9_combout\,
	combout => \inst|uart_tx_u1|addr~10_combout\);

-- Location: LCCOMB_X21_Y18_N8
\inst|uart_tx_u1|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add4~8_combout\ = (\inst|uart_tx_u1|Send_addr[5]~4_combout\ & (\inst|uart_tx_u1|Add4~7\ $ (GND))) # (!\inst|uart_tx_u1|Send_addr[5]~4_combout\ & (!\inst|uart_tx_u1|Add4~7\ & VCC))
-- \inst|uart_tx_u1|Add4~9\ = CARRY((\inst|uart_tx_u1|Send_addr[5]~4_combout\ & !\inst|uart_tx_u1|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add4~7\,
	combout => \inst|uart_tx_u1|Add4~8_combout\,
	cout => \inst|uart_tx_u1|Add4~9\);

-- Location: LCCOMB_X22_Y18_N10
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

-- Location: LCCOMB_X21_Y19_N16
\inst|uart_tx_u1|Add8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add8~8_combout\ = (\inst|uart_tx_u1|Send_addr[5]~4_combout\ & ((GND) # (!\inst|uart_tx_u1|Add8~7\))) # (!\inst|uart_tx_u1|Send_addr[5]~4_combout\ & (\inst|uart_tx_u1|Add8~7\ $ (GND)))
-- \inst|uart_tx_u1|Add8~9\ = CARRY((\inst|uart_tx_u1|Send_addr[5]~4_combout\) # (!\inst|uart_tx_u1|Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add8~7\,
	combout => \inst|uart_tx_u1|Add8~8_combout\,
	cout => \inst|uart_tx_u1|Add8~9\);

-- Location: LCCOMB_X21_Y19_N4
\inst|uart_tx_u1|addr~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~13_combout\ = (\inst|Select_mode_u1|LED_select\(2) & (\inst|Select_mode_u1|LED_select\(3))) # (!\inst|Select_mode_u1|LED_select\(2) & ((\inst|Select_mode_u1|LED_select\(3) & ((\inst|uart_tx_u1|Add8~8_combout\))) # 
-- (!\inst|Select_mode_u1|LED_select\(3) & (\inst|uart_tx_u1|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(2),
	datab => \inst|Select_mode_u1|LED_select\(3),
	datac => \inst|uart_tx_u1|Add0~8_combout\,
	datad => \inst|uart_tx_u1|Add8~8_combout\,
	combout => \inst|uart_tx_u1|addr~13_combout\);

-- Location: LCCOMB_X21_Y17_N24
\inst|uart_tx_u1|Add12~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add12~8_combout\ = (\inst|uart_tx_u1|Send_addr[5]~4_combout\ & ((GND) # (!\inst|uart_tx_u1|Add12~7\))) # (!\inst|uart_tx_u1|Send_addr[5]~4_combout\ & (\inst|uart_tx_u1|Add12~7\ $ (GND)))
-- \inst|uart_tx_u1|Add12~9\ = CARRY((\inst|uart_tx_u1|Send_addr[5]~4_combout\) # (!\inst|uart_tx_u1|Add12~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add12~7\,
	combout => \inst|uart_tx_u1|Add12~8_combout\,
	cout => \inst|uart_tx_u1|Add12~9\);

-- Location: LCCOMB_X21_Y19_N22
\inst|uart_tx_u1|addr~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~14_combout\ = (\inst|Select_mode_u1|LED_select\(2) & ((\inst|uart_tx_u1|addr~13_combout\ & ((\inst|uart_tx_u1|Add12~8_combout\))) # (!\inst|uart_tx_u1|addr~13_combout\ & (\inst|uart_tx_u1|Add4~8_combout\)))) # 
-- (!\inst|Select_mode_u1|LED_select\(2) & (((\inst|uart_tx_u1|addr~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(2),
	datab => \inst|uart_tx_u1|Add4~8_combout\,
	datac => \inst|uart_tx_u1|addr~13_combout\,
	datad => \inst|uart_tx_u1|Add12~8_combout\,
	combout => \inst|uart_tx_u1|addr~14_combout\);

-- Location: LCCOMB_X21_Y17_N4
\inst|uart_tx_u1|Add14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add14~4_combout\ = (\inst|uart_tx_u1|Send_addr[5]~4_combout\ & ((GND) # (!\inst|uart_tx_u1|Add14~3\))) # (!\inst|uart_tx_u1|Send_addr[5]~4_combout\ & (\inst|uart_tx_u1|Add14~3\ $ (GND)))
-- \inst|uart_tx_u1|Add14~5\ = CARRY((\inst|uart_tx_u1|Send_addr[5]~4_combout\) # (!\inst|uart_tx_u1|Add14~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add14~3\,
	combout => \inst|uart_tx_u1|Add14~4_combout\,
	cout => \inst|uart_tx_u1|Add14~5\);

-- Location: LCCOMB_X22_Y18_N26
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

-- Location: LCCOMB_X21_Y18_N22
\inst|uart_tx_u1|Add10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add10~6_combout\ = (\inst|uart_tx_u1|Send_addr[5]~4_combout\ & (\inst|uart_tx_u1|Add10~5\ & VCC)) # (!\inst|uart_tx_u1|Send_addr[5]~4_combout\ & (!\inst|uart_tx_u1|Add10~5\))
-- \inst|uart_tx_u1|Add10~7\ = CARRY((!\inst|uart_tx_u1|Send_addr[5]~4_combout\ & !\inst|uart_tx_u1|Add10~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add10~5\,
	combout => \inst|uart_tx_u1|Add10~6_combout\,
	cout => \inst|uart_tx_u1|Add10~7\);

-- Location: LCCOMB_X21_Y19_N28
\inst|uart_tx_u1|addr~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~11_combout\ = (\inst|Select_mode_u1|LED_select\(2) & (\inst|Select_mode_u1|LED_select\(3))) # (!\inst|Select_mode_u1|LED_select\(2) & ((\inst|Select_mode_u1|LED_select\(3) & ((\inst|uart_tx_u1|Add10~6_combout\))) # 
-- (!\inst|Select_mode_u1|LED_select\(3) & (\inst|uart_tx_u1|Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(2),
	datab => \inst|Select_mode_u1|LED_select\(3),
	datac => \inst|uart_tx_u1|Add2~6_combout\,
	datad => \inst|uart_tx_u1|Add10~6_combout\,
	combout => \inst|uart_tx_u1|addr~11_combout\);

-- Location: LCCOMB_X21_Y19_N2
\inst|uart_tx_u1|addr~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~12_combout\ = (\inst|Select_mode_u1|LED_select\(2) & ((\inst|uart_tx_u1|addr~11_combout\ & ((\inst|uart_tx_u1|Add14~4_combout\))) # (!\inst|uart_tx_u1|addr~11_combout\ & (!\inst|uart_tx_u1|Send_addr[5]~4_combout\)))) # 
-- (!\inst|Select_mode_u1|LED_select\(2) & (((\inst|uart_tx_u1|addr~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(2),
	datab => \inst|uart_tx_u1|Send_addr[5]~4_combout\,
	datac => \inst|uart_tx_u1|Add14~4_combout\,
	datad => \inst|uart_tx_u1|addr~11_combout\,
	combout => \inst|uart_tx_u1|addr~12_combout\);

-- Location: LCCOMB_X21_Y19_N26
\inst|uart_tx_u1|addr~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~15_combout\ = (\inst|Select_mode_u1|LED_select\(0) & (\inst|Select_mode_u1|LED_select\(1))) # (!\inst|Select_mode_u1|LED_select\(0) & ((\inst|Select_mode_u1|LED_select\(1) & ((\inst|uart_tx_u1|addr~12_combout\))) # 
-- (!\inst|Select_mode_u1|LED_select\(1) & (\inst|uart_tx_u1|addr~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(0),
	datab => \inst|Select_mode_u1|LED_select\(1),
	datac => \inst|uart_tx_u1|addr~14_combout\,
	datad => \inst|uart_tx_u1|addr~12_combout\,
	combout => \inst|uart_tx_u1|addr~15_combout\);

-- Location: LCCOMB_X20_Y18_N22
\inst|uart_tx_u1|Add15~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add15~10_combout\ = (\inst|uart_tx_u1|Send_addr[5]~4_combout\ & (\inst|uart_tx_u1|Add15~9\ & VCC)) # (!\inst|uart_tx_u1|Send_addr[5]~4_combout\ & (!\inst|uart_tx_u1|Add15~9\))
-- \inst|uart_tx_u1|Add15~11\ = CARRY((!\inst|uart_tx_u1|Send_addr[5]~4_combout\ & !\inst|uart_tx_u1|Add15~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add15~9\,
	combout => \inst|uart_tx_u1|Add15~10_combout\,
	cout => \inst|uart_tx_u1|Add15~11\);

-- Location: LCCOMB_X22_Y16_N24
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

-- Location: LCCOMB_X24_Y19_N22
\inst|uart_tx_u1|Add11~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add11~10_combout\ = (\inst|uart_tx_u1|Send_addr[5]~4_combout\ & (\inst|uart_tx_u1|Add11~9\ & VCC)) # (!\inst|uart_tx_u1|Send_addr[5]~4_combout\ & (!\inst|uart_tx_u1|Add11~9\))
-- \inst|uart_tx_u1|Add11~11\ = CARRY((!\inst|uart_tx_u1|Send_addr[5]~4_combout\ & !\inst|uart_tx_u1|Add11~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add11~9\,
	combout => \inst|uart_tx_u1|Add11~10_combout\,
	cout => \inst|uart_tx_u1|Add11~11\);

-- Location: LCCOMB_X23_Y20_N16
\inst|uart_tx_u1|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add3~10_combout\ = (\inst|uart_tx_u1|Send_addr[5]~4_combout\ & (!\inst|uart_tx_u1|Add3~9\)) # (!\inst|uart_tx_u1|Send_addr[5]~4_combout\ & ((\inst|uart_tx_u1|Add3~9\) # (GND)))
-- \inst|uart_tx_u1|Add3~11\ = CARRY((!\inst|uart_tx_u1|Add3~9\) # (!\inst|uart_tx_u1|Send_addr[5]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add3~9\,
	combout => \inst|uart_tx_u1|Add3~10_combout\,
	cout => \inst|uart_tx_u1|Add3~11\);

-- Location: LCCOMB_X21_Y19_N24
\inst|uart_tx_u1|addr~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~16_combout\ = (\inst|Select_mode_u1|LED_select\(2) & (\inst|Select_mode_u1|LED_select\(3))) # (!\inst|Select_mode_u1|LED_select\(2) & ((\inst|Select_mode_u1|LED_select\(3) & (\inst|uart_tx_u1|Add11~10_combout\)) # 
-- (!\inst|Select_mode_u1|LED_select\(3) & ((\inst|uart_tx_u1|Add3~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(2),
	datab => \inst|Select_mode_u1|LED_select\(3),
	datac => \inst|uart_tx_u1|Add11~10_combout\,
	datad => \inst|uart_tx_u1|Add3~10_combout\,
	combout => \inst|uart_tx_u1|addr~16_combout\);

-- Location: LCCOMB_X21_Y19_N6
\inst|uart_tx_u1|addr~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~17_combout\ = (\inst|Select_mode_u1|LED_select\(2) & ((\inst|uart_tx_u1|addr~16_combout\ & (\inst|uart_tx_u1|Add15~10_combout\)) # (!\inst|uart_tx_u1|addr~16_combout\ & ((\inst|uart_tx_u1|Add7~10_combout\))))) # 
-- (!\inst|Select_mode_u1|LED_select\(2) & (((\inst|uart_tx_u1|addr~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(2),
	datab => \inst|uart_tx_u1|Add15~10_combout\,
	datac => \inst|uart_tx_u1|Add7~10_combout\,
	datad => \inst|uart_tx_u1|addr~16_combout\,
	combout => \inst|uart_tx_u1|addr~17_combout\);

-- Location: LCCOMB_X26_Y19_N30
\inst|uart_tx_u1|addr~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~18_combout\ = (\inst|Select_mode_u1|LED_select\(0) & ((\inst|uart_tx_u1|addr~15_combout\ & ((\inst|uart_tx_u1|addr~17_combout\))) # (!\inst|uart_tx_u1|addr~15_combout\ & (\inst|uart_tx_u1|addr~10_combout\)))) # 
-- (!\inst|Select_mode_u1|LED_select\(0) & (((\inst|uart_tx_u1|addr~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(0),
	datab => \inst|uart_tx_u1|addr~10_combout\,
	datac => \inst|uart_tx_u1|addr~15_combout\,
	datad => \inst|uart_tx_u1|addr~17_combout\,
	combout => \inst|uart_tx_u1|addr~18_combout\);

-- Location: FF_X26_Y19_N25
\inst|uart_tx_u1|addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|addr[5]~5_combout\,
	asdata => \inst|uart_tx_u1|addr~18_combout\,
	clrn => \res~input_o\,
	sload => \inst|uart_tx_u1|always0~3_combout\,
	ena => \inst|uart_tx_u1|addr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|addr\(5));

-- Location: LCCOMB_X26_Y19_N20
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

-- Location: LCCOMB_X23_Y18_N14
\inst|uart_tx_u1|Send_addr[6]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Send_addr[6]~7_combout\ = (\inst|uart_tx_u1|always1~0_combout\ & (\inst|uart_tx_u1|Add16~12_combout\)) # (!\inst|uart_tx_u1|always1~0_combout\ & ((\inst|uart_tx_u1|Send_addr_w\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Add16~12_combout\,
	datac => \inst|uart_tx_u1|Send_addr_w\(6),
	datad => \inst|uart_tx_u1|always1~0_combout\,
	combout => \inst|uart_tx_u1|Send_addr[6]~7_combout\);

-- Location: FF_X23_Y18_N15
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

-- Location: LCCOMB_X22_Y20_N28
\inst|uart_tx_u1|addr[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr[6]~1_combout\ = (\inst|uart_tx_u1|addr~6_combout\ & ((\inst|uart_tx_u1|Send_addr_w\(6)))) # (!\inst|uart_tx_u1|addr~6_combout\ & (\inst|uart_tx_u1|Add16~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Add16~12_combout\,
	datab => \inst|uart_tx_u1|Send_addr_w\(6),
	datad => \inst|uart_tx_u1|addr~6_combout\,
	combout => \inst|uart_tx_u1|addr[6]~1_combout\);

-- Location: LCCOMB_X22_Y17_N16
\inst|uart_tx_u1|Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add5~12_combout\ = (\inst|uart_tx_u1|Send_addr[6]~7_combout\ & (\inst|uart_tx_u1|Add5~11\ $ (GND))) # (!\inst|uart_tx_u1|Send_addr[6]~7_combout\ & (!\inst|uart_tx_u1|Add5~11\ & VCC))
-- \inst|uart_tx_u1|Add5~13\ = CARRY((\inst|uart_tx_u1|Send_addr[6]~7_combout\ & !\inst|uart_tx_u1|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add5~11\,
	combout => \inst|uart_tx_u1|Add5~12_combout\,
	cout => \inst|uart_tx_u1|Add5~13\);

-- Location: LCCOMB_X22_Y16_N26
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

-- Location: LCCOMB_X23_Y19_N20
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

-- Location: LCCOMB_X23_Y20_N18
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

-- Location: LCCOMB_X22_Y19_N10
\inst|uart_tx_u1|addr~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~47_combout\ = (\inst|Select_mode_u1|LED_select\(1) & ((\inst|Select_mode_u1|LED_select\(2)) # ((\inst|uart_tx_u1|Add3~12_combout\)))) # (!\inst|Select_mode_u1|LED_select\(1) & (!\inst|Select_mode_u1|LED_select\(2) & 
-- (\inst|uart_tx_u1|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(1),
	datab => \inst|Select_mode_u1|LED_select\(2),
	datac => \inst|uart_tx_u1|Add1~12_combout\,
	datad => \inst|uart_tx_u1|Add3~12_combout\,
	combout => \inst|uart_tx_u1|addr~47_combout\);

-- Location: LCCOMB_X22_Y19_N0
\inst|uart_tx_u1|addr~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~48_combout\ = (\inst|Select_mode_u1|LED_select\(2) & ((\inst|uart_tx_u1|addr~47_combout\ & ((\inst|uart_tx_u1|Add7~12_combout\))) # (!\inst|uart_tx_u1|addr~47_combout\ & (\inst|uart_tx_u1|Add5~12_combout\)))) # 
-- (!\inst|Select_mode_u1|LED_select\(2) & (((\inst|uart_tx_u1|addr~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Add5~12_combout\,
	datab => \inst|Select_mode_u1|LED_select\(2),
	datac => \inst|uart_tx_u1|Add7~12_combout\,
	datad => \inst|uart_tx_u1|addr~47_combout\,
	combout => \inst|uart_tx_u1|addr~48_combout\);

-- Location: LCCOMB_X22_Y18_N18
\inst|uart_tx_u1|Add6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add6~5_combout\ = \inst|uart_tx_u1|Send_addr[6]~7_combout\ $ (((\inst|uart_tx_u1|always1~0_combout\ & ((\inst|uart_tx_u1|Add16~10_combout\))) # (!\inst|uart_tx_u1|always1~0_combout\ & (\inst|uart_tx_u1|Send_addr_w\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr_w\(5),
	datab => \inst|uart_tx_u1|Send_addr[6]~7_combout\,
	datac => \inst|uart_tx_u1|Add16~10_combout\,
	datad => \inst|uart_tx_u1|always1~0_combout\,
	combout => \inst|uart_tx_u1|Add6~5_combout\);

-- Location: LCCOMB_X22_Y18_N12
\inst|uart_tx_u1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add0~10_combout\ = (\inst|uart_tx_u1|Send_addr[6]~7_combout\ & (!\inst|uart_tx_u1|Add0~9\)) # (!\inst|uart_tx_u1|Send_addr[6]~7_combout\ & ((\inst|uart_tx_u1|Add0~9\) # (GND)))
-- \inst|uart_tx_u1|Add0~11\ = CARRY((!\inst|uart_tx_u1|Add0~9\) # (!\inst|uart_tx_u1|Send_addr[6]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add0~9\,
	combout => \inst|uart_tx_u1|Add0~10_combout\,
	cout => \inst|uart_tx_u1|Add0~11\);

-- Location: LCCOMB_X22_Y18_N28
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

-- Location: LCCOMB_X22_Y20_N30
\inst|uart_tx_u1|addr~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~51_combout\ = (\inst|Select_mode_u1|LED_select\(2) & (\inst|Select_mode_u1|LED_select\(1))) # (!\inst|Select_mode_u1|LED_select\(2) & ((\inst|Select_mode_u1|LED_select\(1) & ((\inst|uart_tx_u1|Add2~8_combout\))) # 
-- (!\inst|Select_mode_u1|LED_select\(1) & (\inst|uart_tx_u1|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(2),
	datab => \inst|Select_mode_u1|LED_select\(1),
	datac => \inst|uart_tx_u1|Add0~10_combout\,
	datad => \inst|uart_tx_u1|Add2~8_combout\,
	combout => \inst|uart_tx_u1|addr~51_combout\);

-- Location: LCCOMB_X21_Y18_N10
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

-- Location: LCCOMB_X22_Y20_N16
\inst|uart_tx_u1|addr~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~52_combout\ = (\inst|Select_mode_u1|LED_select\(2) & ((\inst|uart_tx_u1|addr~51_combout\ & (\inst|uart_tx_u1|Add6~5_combout\)) # (!\inst|uart_tx_u1|addr~51_combout\ & ((\inst|uart_tx_u1|Add4~10_combout\))))) # 
-- (!\inst|Select_mode_u1|LED_select\(2) & (((\inst|uart_tx_u1|addr~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(2),
	datab => \inst|uart_tx_u1|Add6~5_combout\,
	datac => \inst|uart_tx_u1|addr~51_combout\,
	datad => \inst|uart_tx_u1|Add4~10_combout\,
	combout => \inst|uart_tx_u1|addr~52_combout\);

-- Location: LCCOMB_X21_Y18_N24
\inst|uart_tx_u1|Add10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add10~8_combout\ = (\inst|uart_tx_u1|Send_addr[6]~7_combout\ & (\inst|uart_tx_u1|Add10~7\ $ (GND))) # (!\inst|uart_tx_u1|Send_addr[6]~7_combout\ & (!\inst|uart_tx_u1|Add10~7\ & VCC))
-- \inst|uart_tx_u1|Add10~9\ = CARRY((\inst|uart_tx_u1|Send_addr[6]~7_combout\ & !\inst|uart_tx_u1|Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add10~7\,
	combout => \inst|uart_tx_u1|Add10~8_combout\,
	cout => \inst|uart_tx_u1|Add10~9\);

-- Location: LCCOMB_X21_Y17_N6
\inst|uart_tx_u1|Add14~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add14~6_combout\ = (\inst|uart_tx_u1|Send_addr[6]~7_combout\ & (!\inst|uart_tx_u1|Add14~5\)) # (!\inst|uart_tx_u1|Send_addr[6]~7_combout\ & ((\inst|uart_tx_u1|Add14~5\) # (GND)))
-- \inst|uart_tx_u1|Add14~7\ = CARRY((!\inst|uart_tx_u1|Add14~5\) # (!\inst|uart_tx_u1|Send_addr[6]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add14~5\,
	combout => \inst|uart_tx_u1|Add14~6_combout\,
	cout => \inst|uart_tx_u1|Add14~7\);

-- Location: LCCOMB_X21_Y17_N26
\inst|uart_tx_u1|Add12~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add12~10_combout\ = (\inst|uart_tx_u1|Send_addr[6]~7_combout\ & (!\inst|uart_tx_u1|Add12~9\)) # (!\inst|uart_tx_u1|Send_addr[6]~7_combout\ & ((\inst|uart_tx_u1|Add12~9\) # (GND)))
-- \inst|uart_tx_u1|Add12~11\ = CARRY((!\inst|uart_tx_u1|Add12~9\) # (!\inst|uart_tx_u1|Send_addr[6]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add12~9\,
	combout => \inst|uart_tx_u1|Add12~10_combout\,
	cout => \inst|uart_tx_u1|Add12~11\);

-- Location: LCCOMB_X21_Y19_N18
\inst|uart_tx_u1|Add8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add8~10_combout\ = (\inst|uart_tx_u1|Send_addr[6]~7_combout\ & (!\inst|uart_tx_u1|Add8~9\)) # (!\inst|uart_tx_u1|Send_addr[6]~7_combout\ & ((\inst|uart_tx_u1|Add8~9\) # (GND)))
-- \inst|uart_tx_u1|Add8~11\ = CARRY((!\inst|uart_tx_u1|Add8~9\) # (!\inst|uart_tx_u1|Send_addr[6]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add8~9\,
	combout => \inst|uart_tx_u1|Add8~10_combout\,
	cout => \inst|uart_tx_u1|Add8~11\);

-- Location: LCCOMB_X22_Y20_N18
\inst|uart_tx_u1|addr~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~49_combout\ = (\inst|Select_mode_u1|LED_select\(2) & ((\inst|Select_mode_u1|LED_select\(1)) # ((\inst|uart_tx_u1|Add12~10_combout\)))) # (!\inst|Select_mode_u1|LED_select\(2) & (!\inst|Select_mode_u1|LED_select\(1) & 
-- ((\inst|uart_tx_u1|Add8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(2),
	datab => \inst|Select_mode_u1|LED_select\(1),
	datac => \inst|uart_tx_u1|Add12~10_combout\,
	datad => \inst|uart_tx_u1|Add8~10_combout\,
	combout => \inst|uart_tx_u1|addr~49_combout\);

-- Location: LCCOMB_X22_Y20_N20
\inst|uart_tx_u1|addr~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~50_combout\ = (\inst|Select_mode_u1|LED_select\(1) & ((\inst|uart_tx_u1|addr~49_combout\ & ((\inst|uart_tx_u1|Add14~6_combout\))) # (!\inst|uart_tx_u1|addr~49_combout\ & (\inst|uart_tx_u1|Add10~8_combout\)))) # 
-- (!\inst|Select_mode_u1|LED_select\(1) & (((\inst|uart_tx_u1|addr~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Add10~8_combout\,
	datab => \inst|Select_mode_u1|LED_select\(1),
	datac => \inst|uart_tx_u1|Add14~6_combout\,
	datad => \inst|uart_tx_u1|addr~49_combout\,
	combout => \inst|uart_tx_u1|addr~50_combout\);

-- Location: LCCOMB_X22_Y20_N22
\inst|uart_tx_u1|addr~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~53_combout\ = (\inst|Select_mode_u1|LED_select\(0) & (((\inst|Select_mode_u1|LED_select\(3))))) # (!\inst|Select_mode_u1|LED_select\(0) & ((\inst|Select_mode_u1|LED_select\(3) & ((\inst|uart_tx_u1|addr~50_combout\))) # 
-- (!\inst|Select_mode_u1|LED_select\(3) & (\inst|uart_tx_u1|addr~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(0),
	datab => \inst|uart_tx_u1|addr~52_combout\,
	datac => \inst|Select_mode_u1|LED_select\(3),
	datad => \inst|uart_tx_u1|addr~50_combout\,
	combout => \inst|uart_tx_u1|addr~53_combout\);

-- Location: LCCOMB_X22_Y20_N12
\inst|uart_tx_u1|Add13~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add13~12_combout\ = (\inst|uart_tx_u1|Send_addr[6]~7_combout\ & (\inst|uart_tx_u1|Add13~11\ $ (GND))) # (!\inst|uart_tx_u1|Send_addr[6]~7_combout\ & (!\inst|uart_tx_u1|Add13~11\ & VCC))
-- \inst|uart_tx_u1|Add13~13\ = CARRY((\inst|uart_tx_u1|Send_addr[6]~7_combout\ & !\inst|uart_tx_u1|Add13~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add13~11\,
	combout => \inst|uart_tx_u1|Add13~12_combout\,
	cout => \inst|uart_tx_u1|Add13~13\);

-- Location: LCCOMB_X20_Y18_N24
\inst|uart_tx_u1|Add15~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add15~12_combout\ = (\inst|uart_tx_u1|Send_addr[6]~7_combout\ & (\inst|uart_tx_u1|Add15~11\ $ (GND))) # (!\inst|uart_tx_u1|Send_addr[6]~7_combout\ & (!\inst|uart_tx_u1|Add15~11\ & VCC))
-- \inst|uart_tx_u1|Add15~13\ = CARRY((\inst|uart_tx_u1|Send_addr[6]~7_combout\ & !\inst|uart_tx_u1|Add15~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add15~11\,
	combout => \inst|uart_tx_u1|Add15~12_combout\,
	cout => \inst|uart_tx_u1|Add15~13\);

-- Location: LCCOMB_X24_Y19_N24
\inst|uart_tx_u1|Add11~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add11~12_combout\ = (\inst|uart_tx_u1|Send_addr[6]~7_combout\ & (\inst|uart_tx_u1|Add11~11\ $ (GND))) # (!\inst|uart_tx_u1|Send_addr[6]~7_combout\ & (!\inst|uart_tx_u1|Add11~11\ & VCC))
-- \inst|uart_tx_u1|Add11~13\ = CARRY((\inst|uart_tx_u1|Send_addr[6]~7_combout\ & !\inst|uart_tx_u1|Add11~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add11~11\,
	combout => \inst|uart_tx_u1|Add11~12_combout\,
	cout => \inst|uart_tx_u1|Add11~13\);

-- Location: LCCOMB_X22_Y19_N24
\inst|uart_tx_u1|Add9~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add9~12_combout\ = (\inst|uart_tx_u1|Send_addr[6]~7_combout\ & (\inst|uart_tx_u1|Add9~11\ $ (GND))) # (!\inst|uart_tx_u1|Send_addr[6]~7_combout\ & (!\inst|uart_tx_u1|Add9~11\ & VCC))
-- \inst|uart_tx_u1|Add9~13\ = CARRY((\inst|uart_tx_u1|Send_addr[6]~7_combout\ & !\inst|uart_tx_u1|Add9~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \inst|uart_tx_u1|Add9~11\,
	combout => \inst|uart_tx_u1|Add9~12_combout\,
	cout => \inst|uart_tx_u1|Add9~13\);

-- Location: LCCOMB_X22_Y19_N2
\inst|uart_tx_u1|addr~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~54_combout\ = (\inst|Select_mode_u1|LED_select\(2) & (\inst|Select_mode_u1|LED_select\(1))) # (!\inst|Select_mode_u1|LED_select\(2) & ((\inst|Select_mode_u1|LED_select\(1) & (\inst|uart_tx_u1|Add11~12_combout\)) # 
-- (!\inst|Select_mode_u1|LED_select\(1) & ((\inst|uart_tx_u1|Add9~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(2),
	datab => \inst|Select_mode_u1|LED_select\(1),
	datac => \inst|uart_tx_u1|Add11~12_combout\,
	datad => \inst|uart_tx_u1|Add9~12_combout\,
	combout => \inst|uart_tx_u1|addr~54_combout\);

-- Location: LCCOMB_X22_Y20_N24
\inst|uart_tx_u1|addr~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~55_combout\ = (\inst|Select_mode_u1|LED_select\(2) & ((\inst|uart_tx_u1|addr~54_combout\ & ((\inst|uart_tx_u1|Add15~12_combout\))) # (!\inst|uart_tx_u1|addr~54_combout\ & (\inst|uart_tx_u1|Add13~12_combout\)))) # 
-- (!\inst|Select_mode_u1|LED_select\(2) & (((\inst|uart_tx_u1|addr~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Add13~12_combout\,
	datab => \inst|Select_mode_u1|LED_select\(2),
	datac => \inst|uart_tx_u1|Add15~12_combout\,
	datad => \inst|uart_tx_u1|addr~54_combout\,
	combout => \inst|uart_tx_u1|addr~55_combout\);

-- Location: LCCOMB_X22_Y20_N26
\inst|uart_tx_u1|addr~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~56_combout\ = (\inst|Select_mode_u1|LED_select\(0) & ((\inst|uart_tx_u1|addr~53_combout\ & ((\inst|uart_tx_u1|addr~55_combout\))) # (!\inst|uart_tx_u1|addr~53_combout\ & (\inst|uart_tx_u1|addr~48_combout\)))) # 
-- (!\inst|Select_mode_u1|LED_select\(0) & (((\inst|uart_tx_u1|addr~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(0),
	datab => \inst|uart_tx_u1|addr~48_combout\,
	datac => \inst|uart_tx_u1|addr~53_combout\,
	datad => \inst|uart_tx_u1|addr~55_combout\,
	combout => \inst|uart_tx_u1|addr~56_combout\);

-- Location: FF_X22_Y20_N29
\inst|uart_tx_u1|addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|addr[6]~1_combout\,
	asdata => \inst|uart_tx_u1|addr~56_combout\,
	clrn => \res~input_o\,
	sload => \inst|uart_tx_u1|always0~3_combout\,
	ena => \inst|uart_tx_u1|addr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|addr\(6));

-- Location: LCCOMB_X26_Y19_N22
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

-- Location: LCCOMB_X23_Y18_N24
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

-- Location: FF_X23_Y18_N25
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

-- Location: LCCOMB_X22_Y17_N0
\inst|uart_tx_u1|addr[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr[7]~0_combout\ = (\inst|uart_tx_u1|addr~6_combout\ & (\inst|uart_tx_u1|Send_addr_w\(7))) # (!\inst|uart_tx_u1|addr~6_combout\ & ((\inst|uart_tx_u1|Add16~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr_w\(7),
	datab => \inst|uart_tx_u1|Add16~14_combout\,
	datad => \inst|uart_tx_u1|addr~6_combout\,
	combout => \inst|uart_tx_u1|addr[7]~0_combout\);

-- Location: LCCOMB_X20_Y18_N26
\inst|uart_tx_u1|Add15~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add15~14_combout\ = \inst|uart_tx_u1|Add15~13\ $ (\inst|uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \inst|uart_tx_u1|Add15~13\,
	combout => \inst|uart_tx_u1|Add15~14_combout\);

-- Location: LCCOMB_X23_Y18_N26
\inst|uart_tx_u1|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add6~4_combout\ = \inst|uart_tx_u1|Send_addr[7]~8_combout\ $ (((\inst|uart_tx_u1|Send_addr[6]~7_combout\ & \inst|uart_tx_u1|Send_addr[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[7]~8_combout\,
	datac => \inst|uart_tx_u1|Send_addr[6]~7_combout\,
	datad => \inst|uart_tx_u1|Send_addr[5]~4_combout\,
	combout => \inst|uart_tx_u1|Add6~4_combout\);

-- Location: LCCOMB_X22_Y16_N28
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

-- Location: LCCOMB_X22_Y16_N2
\inst|uart_tx_u1|addr~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~64_combout\ = (\inst|Select_mode_u1|LED_select\(0) & ((\inst|Select_mode_u1|LED_select\(3)) # ((\inst|uart_tx_u1|Add7~14_combout\)))) # (!\inst|Select_mode_u1|LED_select\(0) & (!\inst|Select_mode_u1|LED_select\(3) & 
-- (\inst|uart_tx_u1|Add6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(0),
	datab => \inst|Select_mode_u1|LED_select\(3),
	datac => \inst|uart_tx_u1|Add6~4_combout\,
	datad => \inst|uart_tx_u1|Add7~14_combout\,
	combout => \inst|uart_tx_u1|addr~64_combout\);

-- Location: LCCOMB_X21_Y17_N8
\inst|uart_tx_u1|Add14~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add14~8_combout\ = \inst|uart_tx_u1|Add14~7\ $ (!\inst|uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \inst|uart_tx_u1|Add14~7\,
	combout => \inst|uart_tx_u1|Add14~8_combout\);

-- Location: LCCOMB_X22_Y17_N24
\inst|uart_tx_u1|addr~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~65_combout\ = (\inst|Select_mode_u1|LED_select\(3) & ((\inst|uart_tx_u1|addr~64_combout\ & (\inst|uart_tx_u1|Add15~14_combout\)) # (!\inst|uart_tx_u1|addr~64_combout\ & ((\inst|uart_tx_u1|Add14~8_combout\))))) # 
-- (!\inst|Select_mode_u1|LED_select\(3) & (((\inst|uart_tx_u1|addr~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Add15~14_combout\,
	datab => \inst|Select_mode_u1|LED_select\(3),
	datac => \inst|uart_tx_u1|addr~64_combout\,
	datad => \inst|uart_tx_u1|Add14~8_combout\,
	combout => \inst|uart_tx_u1|addr~65_combout\);

-- Location: LCCOMB_X23_Y20_N20
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

-- Location: LCCOMB_X24_Y19_N26
\inst|uart_tx_u1|Add11~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add11~14_combout\ = \inst|uart_tx_u1|Add11~13\ $ (\inst|uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \inst|uart_tx_u1|Add11~13\,
	combout => \inst|uart_tx_u1|Add11~14_combout\);

-- Location: LCCOMB_X21_Y18_N26
\inst|uart_tx_u1|Add10~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add10~10_combout\ = \inst|uart_tx_u1|Send_addr[7]~8_combout\ $ (\inst|uart_tx_u1|Add10~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \inst|uart_tx_u1|Add10~9\,
	combout => \inst|uart_tx_u1|Add10~10_combout\);

-- Location: LCCOMB_X22_Y18_N30
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

-- Location: LCCOMB_X22_Y18_N0
\inst|uart_tx_u1|addr~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~57_combout\ = (\inst|Select_mode_u1|LED_select\(3) & ((\inst|Select_mode_u1|LED_select\(0)) # ((\inst|uart_tx_u1|Add10~10_combout\)))) # (!\inst|Select_mode_u1|LED_select\(3) & (!\inst|Select_mode_u1|LED_select\(0) & 
-- ((\inst|uart_tx_u1|Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(3),
	datab => \inst|Select_mode_u1|LED_select\(0),
	datac => \inst|uart_tx_u1|Add10~10_combout\,
	datad => \inst|uart_tx_u1|Add2~10_combout\,
	combout => \inst|uart_tx_u1|addr~57_combout\);

-- Location: LCCOMB_X22_Y18_N16
\inst|uart_tx_u1|addr~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~58_combout\ = (\inst|Select_mode_u1|LED_select\(0) & ((\inst|uart_tx_u1|addr~57_combout\ & ((\inst|uart_tx_u1|Add11~14_combout\))) # (!\inst|uart_tx_u1|addr~57_combout\ & (\inst|uart_tx_u1|Add3~14_combout\)))) # 
-- (!\inst|Select_mode_u1|LED_select\(0) & (((\inst|uart_tx_u1|addr~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(0),
	datab => \inst|uart_tx_u1|Add3~14_combout\,
	datac => \inst|uart_tx_u1|Add11~14_combout\,
	datad => \inst|uart_tx_u1|addr~57_combout\,
	combout => \inst|uart_tx_u1|addr~58_combout\);

-- Location: LCCOMB_X21_Y17_N28
\inst|uart_tx_u1|Add12~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add12~12_combout\ = \inst|uart_tx_u1|Send_addr[7]~8_combout\ $ (!\inst|uart_tx_u1|Add12~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \inst|uart_tx_u1|Add12~11\,
	combout => \inst|uart_tx_u1|Add12~12_combout\);

-- Location: LCCOMB_X22_Y20_N14
\inst|uart_tx_u1|Add13~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add13~14_combout\ = \inst|uart_tx_u1|Add13~13\ $ (\inst|uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \inst|uart_tx_u1|Add13~13\,
	combout => \inst|uart_tx_u1|Add13~14_combout\);

-- Location: LCCOMB_X21_Y18_N12
\inst|uart_tx_u1|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add4~12_combout\ = \inst|uart_tx_u1|Send_addr[7]~8_combout\ $ (!\inst|uart_tx_u1|Add4~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \inst|uart_tx_u1|Add4~11\,
	combout => \inst|uart_tx_u1|Add4~12_combout\);

-- Location: LCCOMB_X22_Y17_N18
\inst|uart_tx_u1|Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add5~14_combout\ = \inst|uart_tx_u1|Add5~13\ $ (\inst|uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \inst|uart_tx_u1|Add5~13\,
	combout => \inst|uart_tx_u1|Add5~14_combout\);

-- Location: LCCOMB_X22_Y17_N20
\inst|uart_tx_u1|addr~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~59_combout\ = (\inst|Select_mode_u1|LED_select\(0) & ((\inst|Select_mode_u1|LED_select\(3)) # ((\inst|uart_tx_u1|Add5~14_combout\)))) # (!\inst|Select_mode_u1|LED_select\(0) & (!\inst|Select_mode_u1|LED_select\(3) & 
-- (\inst|uart_tx_u1|Add4~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(0),
	datab => \inst|Select_mode_u1|LED_select\(3),
	datac => \inst|uart_tx_u1|Add4~12_combout\,
	datad => \inst|uart_tx_u1|Add5~14_combout\,
	combout => \inst|uart_tx_u1|addr~59_combout\);

-- Location: LCCOMB_X22_Y17_N26
\inst|uart_tx_u1|addr~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~60_combout\ = (\inst|Select_mode_u1|LED_select\(3) & ((\inst|uart_tx_u1|addr~59_combout\ & ((\inst|uart_tx_u1|Add13~14_combout\))) # (!\inst|uart_tx_u1|addr~59_combout\ & (\inst|uart_tx_u1|Add12~12_combout\)))) # 
-- (!\inst|Select_mode_u1|LED_select\(3) & (((\inst|uart_tx_u1|addr~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(3),
	datab => \inst|uart_tx_u1|Add12~12_combout\,
	datac => \inst|uart_tx_u1|Add13~14_combout\,
	datad => \inst|uart_tx_u1|addr~59_combout\,
	combout => \inst|uart_tx_u1|addr~60_combout\);

-- Location: LCCOMB_X23_Y19_N22
\inst|uart_tx_u1|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add1~14_combout\ = \inst|uart_tx_u1|Add1~13\ $ (\inst|uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \inst|uart_tx_u1|Add1~13\,
	combout => \inst|uart_tx_u1|Add1~14_combout\);

-- Location: LCCOMB_X22_Y19_N26
\inst|uart_tx_u1|Add9~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add9~14_combout\ = \inst|uart_tx_u1|Add9~13\ $ (\inst|uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \inst|uart_tx_u1|Add9~13\,
	combout => \inst|uart_tx_u1|Add9~14_combout\);

-- Location: LCCOMB_X21_Y19_N20
\inst|uart_tx_u1|Add8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Add8~12_combout\ = \inst|uart_tx_u1|Add8~11\ $ (!\inst|uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \inst|uart_tx_u1|Add8~11\,
	combout => \inst|uart_tx_u1|Add8~12_combout\);

-- Location: LCCOMB_X22_Y18_N14
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

-- Location: LCCOMB_X21_Y19_N30
\inst|uart_tx_u1|addr~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~61_combout\ = (\inst|Select_mode_u1|LED_select\(0) & (((\inst|Select_mode_u1|LED_select\(3))))) # (!\inst|Select_mode_u1|LED_select\(0) & ((\inst|Select_mode_u1|LED_select\(3) & (\inst|uart_tx_u1|Add8~12_combout\)) # 
-- (!\inst|Select_mode_u1|LED_select\(3) & ((\inst|uart_tx_u1|Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(0),
	datab => \inst|uart_tx_u1|Add8~12_combout\,
	datac => \inst|Select_mode_u1|LED_select\(3),
	datad => \inst|uart_tx_u1|Add0~12_combout\,
	combout => \inst|uart_tx_u1|addr~61_combout\);

-- Location: LCCOMB_X22_Y17_N28
\inst|uart_tx_u1|addr~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~62_combout\ = (\inst|Select_mode_u1|LED_select\(0) & ((\inst|uart_tx_u1|addr~61_combout\ & ((\inst|uart_tx_u1|Add9~14_combout\))) # (!\inst|uart_tx_u1|addr~61_combout\ & (\inst|uart_tx_u1|Add1~14_combout\)))) # 
-- (!\inst|Select_mode_u1|LED_select\(0) & (((\inst|uart_tx_u1|addr~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(0),
	datab => \inst|uart_tx_u1|Add1~14_combout\,
	datac => \inst|uart_tx_u1|Add9~14_combout\,
	datad => \inst|uart_tx_u1|addr~61_combout\,
	combout => \inst|uart_tx_u1|addr~62_combout\);

-- Location: LCCOMB_X22_Y17_N2
\inst|uart_tx_u1|addr~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~63_combout\ = (\inst|Select_mode_u1|LED_select\(2) & ((\inst|Select_mode_u1|LED_select\(1)) # ((\inst|uart_tx_u1|addr~60_combout\)))) # (!\inst|Select_mode_u1|LED_select\(2) & (!\inst|Select_mode_u1|LED_select\(1) & 
-- ((\inst|uart_tx_u1|addr~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(2),
	datab => \inst|Select_mode_u1|LED_select\(1),
	datac => \inst|uart_tx_u1|addr~60_combout\,
	datad => \inst|uart_tx_u1|addr~62_combout\,
	combout => \inst|uart_tx_u1|addr~63_combout\);

-- Location: LCCOMB_X22_Y17_N30
\inst|uart_tx_u1|addr~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr~66_combout\ = (\inst|Select_mode_u1|LED_select\(1) & ((\inst|uart_tx_u1|addr~63_combout\ & (\inst|uart_tx_u1|addr~65_combout\)) # (!\inst|uart_tx_u1|addr~63_combout\ & ((\inst|uart_tx_u1|addr~58_combout\))))) # 
-- (!\inst|Select_mode_u1|LED_select\(1) & (((\inst|uart_tx_u1|addr~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Select_mode_u1|LED_select\(1),
	datab => \inst|uart_tx_u1|addr~65_combout\,
	datac => \inst|uart_tx_u1|addr~58_combout\,
	datad => \inst|uart_tx_u1|addr~63_combout\,
	combout => \inst|uart_tx_u1|addr~66_combout\);

-- Location: FF_X22_Y17_N1
\inst|uart_tx_u1|addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|addr[7]~0_combout\,
	asdata => \inst|uart_tx_u1|addr~66_combout\,
	clrn => \res~input_o\,
	sload => \inst|uart_tx_u1|always0~3_combout\,
	ena => \inst|uart_tx_u1|addr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|addr\(7));

-- Location: LCCOMB_X23_Y16_N4
\inst|uart_tx_u1|AT|rom~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~54_combout\ = (\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(3)) # ((\inst|uart_tx_u1|addr\(2) & \inst|uart_tx_u1|addr\(0))))) # (!\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(2)) # ((\inst|uart_tx_u1|addr\(0) & 
-- !\inst|uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(0),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~54_combout\);

-- Location: LCCOMB_X23_Y16_N26
\inst|uart_tx_u1|AT|rom~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~51_combout\ = (\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(3) $ (((\inst|uart_tx_u1|addr\(2)) # (\inst|uart_tx_u1|addr\(0)))))) # (!\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(2) $ (((\inst|uart_tx_u1|addr\(0) & 
-- !\inst|uart_tx_u1|addr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(0),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~51_combout\);

-- Location: LCCOMB_X23_Y16_N0
\inst|uart_tx_u1|AT|rom~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~52_combout\ = \inst|uart_tx_u1|addr\(0) $ (((\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(1) & \inst|uart_tx_u1|addr\(3))) # (!\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(1) $ (\inst|uart_tx_u1|addr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(0),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~52_combout\);

-- Location: LCCOMB_X23_Y16_N10
\inst|uart_tx_u1|AT|rom~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~53_combout\ = (!\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|AT|rom~51_combout\)) # (!\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|AT|rom~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|AT|rom~51_combout\,
	datad => \inst|uart_tx_u1|AT|rom~52_combout\,
	combout => \inst|uart_tx_u1|AT|rom~53_combout\);

-- Location: LCCOMB_X23_Y16_N2
\inst|uart_tx_u1|AT|rom~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~55_combout\ = (\inst|uart_tx_u1|AT|rom~53_combout\) # ((\inst|uart_tx_u1|addr\(5) & (!\inst|uart_tx_u1|addr\(4) & !\inst|uart_tx_u1|AT|rom~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|AT|rom~54_combout\,
	datad => \inst|uart_tx_u1|AT|rom~53_combout\,
	combout => \inst|uart_tx_u1|AT|rom~55_combout\);

-- Location: LCCOMB_X24_Y17_N24
\inst|uart_tx_u1|AT|rom~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~48_combout\ = (\inst|uart_tx_u1|addr\(0) & (!\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|addr\(1) $ (\inst|uart_tx_u1|addr\(2))))) # (!\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(1)) # ((!\inst|uart_tx_u1|addr\(2) & 
-- \inst|uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(0),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~48_combout\);

-- Location: LCCOMB_X24_Y17_N4
\inst|uart_tx_u1|AT|rom~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~44_combout\ = (\inst|uart_tx_u1|addr\(0) & (!\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(2) & !\inst|uart_tx_u1|addr\(3)))) # (!\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|addr\(1) $ 
-- (\inst|uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(0),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~44_combout\);

-- Location: LCCOMB_X24_Y17_N22
\inst|uart_tx_u1|AT|rom~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~45_combout\ = (\inst|uart_tx_u1|addr\(2) & (!\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|addr\(0) $ (\inst|uart_tx_u1|addr\(1))))) # (!\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(0) & ((!\inst|uart_tx_u1|addr\(1)) # 
-- (!\inst|uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(3),
	datad => \inst|uart_tx_u1|addr\(1),
	combout => \inst|uart_tx_u1|AT|rom~45_combout\);

-- Location: LCCOMB_X24_Y17_N0
\inst|uart_tx_u1|AT|rom~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~46_combout\ = (\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|addr\(0))) # (!\inst|uart_tx_u1|addr\(3) & ((!\inst|uart_tx_u1|addr\(1)))))) # (!\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(3),
	datad => \inst|uart_tx_u1|addr\(1),
	combout => \inst|uart_tx_u1|AT|rom~46_combout\);

-- Location: LCCOMB_X24_Y17_N18
\inst|uart_tx_u1|AT|rom~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~47_combout\ = (\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(4)) # ((\inst|uart_tx_u1|AT|rom~45_combout\)))) # (!\inst|uart_tx_u1|addr\(5) & (!\inst|uart_tx_u1|addr\(4) & ((!\inst|uart_tx_u1|AT|rom~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|AT|rom~45_combout\,
	datad => \inst|uart_tx_u1|AT|rom~46_combout\,
	combout => \inst|uart_tx_u1|AT|rom~47_combout\);

-- Location: LCCOMB_X24_Y17_N14
\inst|uart_tx_u1|AT|rom~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~49_combout\ = (\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|AT|rom~47_combout\ & (!\inst|uart_tx_u1|AT|rom~48_combout\)) # (!\inst|uart_tx_u1|AT|rom~47_combout\ & ((!\inst|uart_tx_u1|AT|rom~44_combout\))))) # 
-- (!\inst|uart_tx_u1|addr\(4) & (((\inst|uart_tx_u1|AT|rom~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|AT|rom~48_combout\,
	datac => \inst|uart_tx_u1|AT|rom~44_combout\,
	datad => \inst|uart_tx_u1|AT|rom~47_combout\,
	combout => \inst|uart_tx_u1|AT|rom~49_combout\);

-- Location: LCCOMB_X24_Y17_N12
\inst|uart_tx_u1|AT|rom~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~42_combout\ = (\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(4) $ (((\inst|uart_tx_u1|addr\(1)) # (!\inst|uart_tx_u1|addr\(2)))))) # (!\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(1)) # ((!\inst|uart_tx_u1|addr\(4) & 
-- \inst|uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(5),
	combout => \inst|uart_tx_u1|AT|rom~42_combout\);

-- Location: LCCOMB_X24_Y17_N8
\inst|uart_tx_u1|AT|rom~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~38_combout\ = (!\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(1) & (!\inst|uart_tx_u1|addr\(4) & \inst|uart_tx_u1|addr\(5))) # (!\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(5),
	combout => \inst|uart_tx_u1|AT|rom~38_combout\);

-- Location: LCCOMB_X24_Y17_N26
\inst|uart_tx_u1|AT|rom~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~39_combout\ = (\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(1)) # (!\inst|uart_tx_u1|addr\(5)))) # (!\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(5)) # (!\inst|uart_tx_u1|addr\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|addr\(5),
	combout => \inst|uart_tx_u1|AT|rom~39_combout\);

-- Location: LCCOMB_X24_Y17_N16
\inst|uart_tx_u1|AT|rom~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~40_combout\ = (\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(1) & !\inst|uart_tx_u1|addr\(5))) # (!\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(1)) # (!\inst|uart_tx_u1|addr\(5)))))) # 
-- (!\inst|uart_tx_u1|addr\(4) & (((\inst|uart_tx_u1|addr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|addr\(5),
	combout => \inst|uart_tx_u1|AT|rom~40_combout\);

-- Location: LCCOMB_X24_Y17_N2
\inst|uart_tx_u1|AT|rom~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~41_combout\ = (\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|addr\(0)) # ((!\inst|uart_tx_u1|AT|rom~39_combout\)))) # (!\inst|uart_tx_u1|addr\(3) & (!\inst|uart_tx_u1|addr\(0) & ((!\inst|uart_tx_u1|AT|rom~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(3),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|AT|rom~39_combout\,
	datad => \inst|uart_tx_u1|AT|rom~40_combout\,
	combout => \inst|uart_tx_u1|AT|rom~41_combout\);

-- Location: LCCOMB_X24_Y17_N6
\inst|uart_tx_u1|AT|rom~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~43_combout\ = (\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|AT|rom~41_combout\ & (!\inst|uart_tx_u1|AT|rom~42_combout\)) # (!\inst|uart_tx_u1|AT|rom~41_combout\ & ((\inst|uart_tx_u1|AT|rom~38_combout\))))) # 
-- (!\inst|uart_tx_u1|addr\(0) & (((\inst|uart_tx_u1|AT|rom~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|AT|rom~42_combout\,
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|AT|rom~38_combout\,
	datad => \inst|uart_tx_u1|AT|rom~41_combout\,
	combout => \inst|uart_tx_u1|AT|rom~43_combout\);

-- Location: LCCOMB_X24_Y17_N20
\inst|uart_tx_u1|AT|rom~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~50_combout\ = (!\inst|uart_tx_u1|addr\(7) & ((\inst|uart_tx_u1|addr\(6) & ((\inst|uart_tx_u1|AT|rom~43_combout\))) # (!\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|AT|rom~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(7),
	datab => \inst|uart_tx_u1|addr\(6),
	datac => \inst|uart_tx_u1|AT|rom~49_combout\,
	datad => \inst|uart_tx_u1|AT|rom~43_combout\,
	combout => \inst|uart_tx_u1|AT|rom~50_combout\);

-- Location: LCCOMB_X24_Y17_N30
\inst|uart_tx_u1|AT|rom~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~56_combout\ = (\inst|uart_tx_u1|AT|rom~50_combout\) # ((\inst|uart_tx_u1|addr\(7) & (!\inst|uart_tx_u1|addr\(6) & \inst|uart_tx_u1|AT|rom~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(7),
	datab => \inst|uart_tx_u1|addr\(6),
	datac => \inst|uart_tx_u1|AT|rom~55_combout\,
	datad => \inst|uart_tx_u1|AT|rom~50_combout\,
	combout => \inst|uart_tx_u1|AT|rom~56_combout\);

-- Location: LCCOMB_X27_Y18_N0
\inst|uart_tx_u1|AT|rom~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~4_combout\ = (\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(1) $ (!\inst|uart_tx_u1|addr\(2))))) # (!\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(2) & ((!\inst|uart_tx_u1|addr\(1)) # 
-- (!\inst|uart_tx_u1|addr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(0),
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|addr\(1),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~4_combout\);

-- Location: LCCOMB_X27_Y18_N4
\inst|uart_tx_u1|AT|rom~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~0_combout\ = (\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(5)) # (!\inst|uart_tx_u1|addr\(1))))) # (!\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(5) $ (((\inst|uart_tx_u1|addr\(1)) # 
-- (\inst|uart_tx_u1|addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(0),
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|addr\(1),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~0_combout\);

-- Location: LCCOMB_X27_Y18_N26
\inst|uart_tx_u1|AT|rom~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~1_combout\ = (\inst|uart_tx_u1|addr\(5) & (!\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(0) $ (!\inst|uart_tx_u1|addr\(1))))) # (!\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(0) & (!\inst|uart_tx_u1|addr\(1) & 
-- \inst|uart_tx_u1|addr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(0),
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|addr\(1),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~1_combout\);

-- Location: LCCOMB_X27_Y18_N24
\inst|uart_tx_u1|AT|rom~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~2_combout\ = (\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(1))) # (!\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(2)))))) # (!\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(0) $ 
-- (((\inst|uart_tx_u1|addr\(1) & \inst|uart_tx_u1|addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(0),
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|addr\(1),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~2_combout\);

-- Location: LCCOMB_X27_Y18_N6
\inst|uart_tx_u1|AT|rom~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~3_combout\ = (\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|addr\(3))) # (!\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|AT|rom~1_combout\)) # (!\inst|uart_tx_u1|addr\(3) & 
-- ((!\inst|uart_tx_u1|AT|rom~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(3),
	datac => \inst|uart_tx_u1|AT|rom~1_combout\,
	datad => \inst|uart_tx_u1|AT|rom~2_combout\,
	combout => \inst|uart_tx_u1|AT|rom~3_combout\);

-- Location: LCCOMB_X27_Y18_N14
\inst|uart_tx_u1|AT|rom~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~5_combout\ = (\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|AT|rom~3_combout\ & (\inst|uart_tx_u1|AT|rom~4_combout\)) # (!\inst|uart_tx_u1|AT|rom~3_combout\ & ((!\inst|uart_tx_u1|AT|rom~0_combout\))))) # 
-- (!\inst|uart_tx_u1|addr\(4) & (((\inst|uart_tx_u1|AT|rom~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|AT|rom~4_combout\,
	datac => \inst|uart_tx_u1|AT|rom~0_combout\,
	datad => \inst|uart_tx_u1|AT|rom~3_combout\,
	combout => \inst|uart_tx_u1|AT|rom~5_combout\);

-- Location: LCCOMB_X27_Y18_N20
\inst|uart_tx_u1|AT|rom~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~6_combout\ = (\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|addr\(0)) # ((!\inst|uart_tx_u1|addr\(1) & !\inst|uart_tx_u1|addr\(2))))) # (!\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(1) $ 
-- (\inst|uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(1),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~6_combout\);

-- Location: LCCOMB_X24_Y18_N24
\inst|uart_tx_u1|AT|rom~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~10_combout\ = (\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(0) $ (\inst|uart_tx_u1|addr\(4) $ (\inst|uart_tx_u1|addr\(2))))) # (!\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(0) & (!\inst|uart_tx_u1|addr\(4) & 
-- !\inst|uart_tx_u1|addr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(0),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|addr\(1),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~10_combout\);

-- Location: LCCOMB_X27_Y18_N30
\inst|uart_tx_u1|AT|rom~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~7_combout\ = (\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(0) $ (\inst|uart_tx_u1|addr\(1))))) # (!\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|addr\(1)) # (!\inst|uart_tx_u1|addr\(0)))) # 
-- (!\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(1),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~7_combout\);

-- Location: LCCOMB_X27_Y18_N28
\inst|uart_tx_u1|AT|rom~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~8_combout\ = (\inst|uart_tx_u1|addr\(4) & (((\inst|uart_tx_u1|addr\(1)) # (\inst|uart_tx_u1|addr\(2))))) # (!\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|addr\(2) $ (((\inst|uart_tx_u1|addr\(0) & !\inst|uart_tx_u1|addr\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(0),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|addr\(1),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~8_combout\);

-- Location: LCCOMB_X27_Y18_N10
\inst|uart_tx_u1|AT|rom~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~9_combout\ = (\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|addr\(5)) # ((!\inst|uart_tx_u1|AT|rom~7_combout\)))) # (!\inst|uart_tx_u1|addr\(3) & (!\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|AT|rom~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(3),
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|AT|rom~7_combout\,
	datad => \inst|uart_tx_u1|AT|rom~8_combout\,
	combout => \inst|uart_tx_u1|AT|rom~9_combout\);

-- Location: LCCOMB_X27_Y18_N12
\inst|uart_tx_u1|AT|rom~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~11_combout\ = (\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|AT|rom~9_combout\ & ((\inst|uart_tx_u1|AT|rom~10_combout\))) # (!\inst|uart_tx_u1|AT|rom~9_combout\ & (\inst|uart_tx_u1|AT|rom~6_combout\)))) # 
-- (!\inst|uart_tx_u1|addr\(5) & (((\inst|uart_tx_u1|AT|rom~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|AT|rom~6_combout\,
	datac => \inst|uart_tx_u1|AT|rom~10_combout\,
	datad => \inst|uart_tx_u1|AT|rom~9_combout\,
	combout => \inst|uart_tx_u1|AT|rom~11_combout\);

-- Location: LCCOMB_X27_Y18_N22
\inst|uart_tx_u1|AT|rom~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~12_combout\ = (!\inst|uart_tx_u1|addr\(7) & ((\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|AT|rom~5_combout\)) # (!\inst|uart_tx_u1|addr\(6) & ((\inst|uart_tx_u1|AT|rom~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(6),
	datab => \inst|uart_tx_u1|addr\(7),
	datac => \inst|uart_tx_u1|AT|rom~5_combout\,
	datad => \inst|uart_tx_u1|AT|rom~11_combout\,
	combout => \inst|uart_tx_u1|AT|rom~12_combout\);

-- Location: LCCOMB_X28_Y18_N12
\inst|uart_tx_u1|AT|rom~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~16_combout\ = (\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(0) $ (((!\inst|uart_tx_u1|addr\(1) & !\inst|uart_tx_u1|addr\(3)))))) # (!\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(1) & (!\inst|uart_tx_u1|addr\(0) & 
-- \inst|uart_tx_u1|addr\(3))) # (!\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(0) & !\inst|uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(0),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~16_combout\);

-- Location: LCCOMB_X27_Y18_N8
\inst|uart_tx_u1|AT|rom~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~14_combout\ = (\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(3)) # ((\inst|uart_tx_u1|addr\(0) & \inst|uart_tx_u1|addr\(2))))) # (!\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(2) $ (((\inst|uart_tx_u1|addr\(0) & 
-- !\inst|uart_tx_u1|addr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(3),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~14_combout\);

-- Location: LCCOMB_X27_Y19_N20
\inst|uart_tx_u1|AT|rom~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~13_combout\ = (\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(1) $ (\inst|uart_tx_u1|addr\(2)))) # (!\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(1)) # (!\inst|uart_tx_u1|addr\(2)))))) # 
-- (!\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|addr\(2) $ (((!\inst|uart_tx_u1|addr\(0) & \inst|uart_tx_u1|addr\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(3),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(1),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~13_combout\);

-- Location: LCCOMB_X27_Y18_N2
\inst|uart_tx_u1|AT|rom~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~15_combout\ = (!\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|addr\(5) & (!\inst|uart_tx_u1|AT|rom~14_combout\)) # (!\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|AT|rom~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|AT|rom~14_combout\,
	datad => \inst|uart_tx_u1|AT|rom~13_combout\,
	combout => \inst|uart_tx_u1|AT|rom~15_combout\);

-- Location: LCCOMB_X27_Y18_N16
\inst|uart_tx_u1|AT|rom~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~17_combout\ = (\inst|uart_tx_u1|AT|rom~15_combout\) # ((\inst|uart_tx_u1|addr\(4) & (!\inst|uart_tx_u1|addr\(5) & \inst|uart_tx_u1|AT|rom~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|AT|rom~16_combout\,
	datad => \inst|uart_tx_u1|AT|rom~15_combout\,
	combout => \inst|uart_tx_u1|AT|rom~17_combout\);

-- Location: LCCOMB_X27_Y18_N18
\inst|uart_tx_u1|AT|rom~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~18_combout\ = (\inst|uart_tx_u1|AT|rom~12_combout\) # ((!\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|addr\(7) & \inst|uart_tx_u1|AT|rom~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(6),
	datab => \inst|uart_tx_u1|addr\(7),
	datac => \inst|uart_tx_u1|AT|rom~12_combout\,
	datad => \inst|uart_tx_u1|AT|rom~17_combout\,
	combout => \inst|uart_tx_u1|AT|rom~18_combout\);

-- Location: LCCOMB_X27_Y19_N10
\inst|uart_tx_u1|AT|rom~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~35_combout\ = (\inst|uart_tx_u1|addr\(0) & (!\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|addr\(2)) # (!\inst|uart_tx_u1|addr\(1))))) # (!\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(3) & ((!\inst|uart_tx_u1|addr\(2)))) # 
-- (!\inst|uart_tx_u1|addr\(3) & (!\inst|uart_tx_u1|addr\(1) & \inst|uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(0),
	datab => \inst|uart_tx_u1|addr\(3),
	datac => \inst|uart_tx_u1|addr\(1),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~35_combout\);

-- Location: LCCOMB_X27_Y19_N14
\inst|uart_tx_u1|AT|rom~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~33_combout\ = (\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|addr\(1) & !\inst|uart_tx_u1|addr\(2))) # (!\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|addr\(2)))))) # (!\inst|uart_tx_u1|addr\(0) & 
-- (\inst|uart_tx_u1|addr\(3) $ (\inst|uart_tx_u1|addr\(1) $ (\inst|uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(3),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(1),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~33_combout\);

-- Location: LCCOMB_X27_Y19_N12
\inst|uart_tx_u1|AT|rom~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~32_combout\ = (\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(3) & ((!\inst|uart_tx_u1|addr\(2)))) # (!\inst|uart_tx_u1|addr\(3) & (!\inst|uart_tx_u1|addr\(1) & \inst|uart_tx_u1|addr\(2))))) # (!\inst|uart_tx_u1|addr\(0) & 
-- (\inst|uart_tx_u1|addr\(3) $ (((\inst|uart_tx_u1|addr\(1) & !\inst|uart_tx_u1|addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(3),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|addr\(1),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~32_combout\);

-- Location: LCCOMB_X27_Y19_N24
\inst|uart_tx_u1|AT|rom~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~34_combout\ = (!\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|AT|rom~32_combout\))) # (!\inst|uart_tx_u1|addr\(4) & (!\inst|uart_tx_u1|AT|rom~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|AT|rom~33_combout\,
	datad => \inst|uart_tx_u1|AT|rom~32_combout\,
	combout => \inst|uart_tx_u1|AT|rom~34_combout\);

-- Location: LCCOMB_X27_Y19_N28
\inst|uart_tx_u1|AT|rom~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~36_combout\ = (\inst|uart_tx_u1|AT|rom~34_combout\) # ((\inst|uart_tx_u1|AT|rom~35_combout\ & (\inst|uart_tx_u1|addr\(5) & !\inst|uart_tx_u1|addr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|AT|rom~35_combout\,
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|AT|rom~34_combout\,
	combout => \inst|uart_tx_u1|AT|rom~36_combout\);

-- Location: LCCOMB_X27_Y19_N22
\inst|uart_tx_u1|AT|rom~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~29_combout\ = (\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(2)) # (\inst|uart_tx_u1|addr\(1) $ (\inst|uart_tx_u1|addr\(4))))) # (!\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(4) & (!\inst|uart_tx_u1|addr\(2))) # 
-- (!\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|addr\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(2),
	datac => \inst|uart_tx_u1|addr\(1),
	datad => \inst|uart_tx_u1|addr\(4),
	combout => \inst|uart_tx_u1|AT|rom~29_combout\);

-- Location: LCCOMB_X27_Y19_N26
\inst|uart_tx_u1|AT|rom~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~25_combout\ = (\inst|uart_tx_u1|addr\(1) & (((!\inst|uart_tx_u1|addr\(5) & !\inst|uart_tx_u1|addr\(4))))) # (!\inst|uart_tx_u1|addr\(1) & (!\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|addr\(1),
	datad => \inst|uart_tx_u1|addr\(4),
	combout => \inst|uart_tx_u1|AT|rom~25_combout\);

-- Location: LCCOMB_X27_Y19_N8
\inst|uart_tx_u1|AT|rom~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~26_combout\ = (\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|addr\(5) $ ((\inst|uart_tx_u1|addr\(1))))) # (!\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(1) $ (\inst|uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|addr\(1),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~26_combout\);

-- Location: LCCOMB_X27_Y19_N18
\inst|uart_tx_u1|AT|rom~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~27_combout\ = (\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(5) $ (!\inst|uart_tx_u1|addr\(1))) # (!\inst|uart_tx_u1|addr\(4)))) # (!\inst|uart_tx_u1|addr\(2) & ((\inst|uart_tx_u1|addr\(5) & ((!\inst|uart_tx_u1|addr\(1)))) # 
-- (!\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|addr\(4)) # (\inst|uart_tx_u1|addr\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|addr\(1),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~27_combout\);

-- Location: LCCOMB_X27_Y19_N16
\inst|uart_tx_u1|AT|rom~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~28_combout\ = (\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(3))) # (!\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|AT|rom~26_combout\)) # (!\inst|uart_tx_u1|addr\(3) & 
-- ((\inst|uart_tx_u1|AT|rom~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(0),
	datab => \inst|uart_tx_u1|addr\(3),
	datac => \inst|uart_tx_u1|AT|rom~26_combout\,
	datad => \inst|uart_tx_u1|AT|rom~27_combout\,
	combout => \inst|uart_tx_u1|AT|rom~28_combout\);

-- Location: LCCOMB_X27_Y19_N4
\inst|uart_tx_u1|AT|rom~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~30_combout\ = (\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|AT|rom~28_combout\ & (!\inst|uart_tx_u1|AT|rom~29_combout\)) # (!\inst|uart_tx_u1|AT|rom~28_combout\ & ((\inst|uart_tx_u1|AT|rom~25_combout\))))) # 
-- (!\inst|uart_tx_u1|addr\(0) & (((\inst|uart_tx_u1|AT|rom~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|AT|rom~29_combout\,
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|AT|rom~25_combout\,
	datad => \inst|uart_tx_u1|AT|rom~28_combout\,
	combout => \inst|uart_tx_u1|AT|rom~30_combout\);

-- Location: LCCOMB_X26_Y19_N2
\inst|uart_tx_u1|AT|rom~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~19_combout\ = (\inst|uart_tx_u1|addr\(4) & (((\inst|uart_tx_u1|addr\(5) & \inst|uart_tx_u1|addr\(2))))) # (!\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|addr\(3) $ (((!\inst|uart_tx_u1|addr\(5) & \inst|uart_tx_u1|addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(3),
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~19_combout\);

-- Location: LCCOMB_X26_Y19_N26
\inst|uart_tx_u1|AT|rom~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~23_combout\ = (\inst|uart_tx_u1|addr\(3) & (!\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(4) $ (\inst|uart_tx_u1|addr\(2))))) # (!\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(4) & 
-- \inst|uart_tx_u1|addr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(3),
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~23_combout\);

-- Location: LCCOMB_X26_Y19_N4
\inst|uart_tx_u1|AT|rom~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~20_combout\ = (\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|addr\(5)) # (\inst|uart_tx_u1|addr\(2))))) # (!\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|addr\(5) & ((!\inst|uart_tx_u1|addr\(2)))) # 
-- (!\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(3),
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~20_combout\);

-- Location: LCCOMB_X26_Y19_N6
\inst|uart_tx_u1|AT|rom~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~21_combout\ = (\inst|uart_tx_u1|addr\(3) & (((!\inst|uart_tx_u1|addr\(4) & \inst|uart_tx_u1|addr\(2))) # (!\inst|uart_tx_u1|addr\(5)))) # (!\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|addr\(5) $ (((\inst|uart_tx_u1|addr\(4) & 
-- \inst|uart_tx_u1|addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(3),
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|addr\(2),
	combout => \inst|uart_tx_u1|AT|rom~21_combout\);

-- Location: LCCOMB_X26_Y19_N0
\inst|uart_tx_u1|AT|rom~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~22_combout\ = (\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(0)) # ((\inst|uart_tx_u1|AT|rom~20_combout\)))) # (!\inst|uart_tx_u1|addr\(1) & (!\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|AT|rom~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(0),
	datac => \inst|uart_tx_u1|AT|rom~20_combout\,
	datad => \inst|uart_tx_u1|AT|rom~21_combout\,
	combout => \inst|uart_tx_u1|AT|rom~22_combout\);

-- Location: LCCOMB_X26_Y19_N28
\inst|uart_tx_u1|AT|rom~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~24_combout\ = (\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|AT|rom~22_combout\ & ((\inst|uart_tx_u1|AT|rom~23_combout\))) # (!\inst|uart_tx_u1|AT|rom~22_combout\ & (\inst|uart_tx_u1|AT|rom~19_combout\)))) # 
-- (!\inst|uart_tx_u1|addr\(0) & (((\inst|uart_tx_u1|AT|rom~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(0),
	datab => \inst|uart_tx_u1|AT|rom~19_combout\,
	datac => \inst|uart_tx_u1|AT|rom~23_combout\,
	datad => \inst|uart_tx_u1|AT|rom~22_combout\,
	combout => \inst|uart_tx_u1|AT|rom~24_combout\);

-- Location: LCCOMB_X27_Y19_N6
\inst|uart_tx_u1|AT|rom~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~31_combout\ = (!\inst|uart_tx_u1|addr\(7) & ((\inst|uart_tx_u1|addr\(6) & ((\inst|uart_tx_u1|AT|rom~24_combout\))) # (!\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|AT|rom~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(7),
	datab => \inst|uart_tx_u1|addr\(6),
	datac => \inst|uart_tx_u1|AT|rom~30_combout\,
	datad => \inst|uart_tx_u1|AT|rom~24_combout\,
	combout => \inst|uart_tx_u1|AT|rom~31_combout\);

-- Location: LCCOMB_X27_Y19_N30
\inst|uart_tx_u1|AT|rom~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~37_combout\ = (\inst|uart_tx_u1|AT|rom~31_combout\) # ((\inst|uart_tx_u1|addr\(7) & (!\inst|uart_tx_u1|addr\(6) & \inst|uart_tx_u1|AT|rom~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(7),
	datab => \inst|uart_tx_u1|addr\(6),
	datac => \inst|uart_tx_u1|AT|rom~36_combout\,
	datad => \inst|uart_tx_u1|AT|rom~31_combout\,
	combout => \inst|uart_tx_u1|AT|rom~37_combout\);

-- Location: LCCOMB_X24_Y16_N14
\inst|uart_tx_u1|AT|rom~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~70_combout\ = (\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(2) & !\inst|uart_tx_u1|addr\(3))) # (!\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(2) $ (!\inst|uart_tx_u1|addr\(3)))))) # 
-- (!\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(1) & (!\inst|uart_tx_u1|addr\(2) & \inst|uart_tx_u1|addr\(3))) # (!\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(2) & !\inst|uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(0),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~70_combout\);

-- Location: LCCOMB_X24_Y16_N28
\inst|uart_tx_u1|AT|rom~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~71_combout\ = (\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(3)))) # (!\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(2))))) # (!\inst|uart_tx_u1|addr\(0) & (\inst|uart_tx_u1|addr\(3) $ 
-- (((\inst|uart_tx_u1|addr\(1) & !\inst|uart_tx_u1|addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(0),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~71_combout\);

-- Location: LCCOMB_X24_Y16_N30
\inst|uart_tx_u1|AT|rom~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~72_combout\ = (!\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|addr\(5) & ((!\inst|uart_tx_u1|AT|rom~71_combout\))) # (!\inst|uart_tx_u1|addr\(5) & (!\inst|uart_tx_u1|AT|rom~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|AT|rom~70_combout\,
	datad => \inst|uart_tx_u1|AT|rom~71_combout\,
	combout => \inst|uart_tx_u1|AT|rom~72_combout\);

-- Location: LCCOMB_X24_Y16_N8
\inst|uart_tx_u1|AT|rom~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~74_combout\ = (\inst|uart_tx_u1|AT|rom~72_combout\) # ((!\inst|uart_tx_u1|addr\(5) & (\inst|uart_tx_u1|addr\(4) & !\inst|uart_tx_u1|AT|rom~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(5),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|AT|rom~72_combout\,
	datad => \inst|uart_tx_u1|AT|rom~73_combout\,
	combout => \inst|uart_tx_u1|AT|rom~74_combout\);

-- Location: LCCOMB_X24_Y16_N12
\inst|uart_tx_u1|AT|rom~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~57_combout\ = (\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|addr\(2) $ (!\inst|uart_tx_u1|addr\(4))))) # (!\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(2) & (!\inst|uart_tx_u1|addr\(4) & 
-- !\inst|uart_tx_u1|addr\(3))) # (!\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~57_combout\);

-- Location: LCCOMB_X23_Y16_N16
\inst|uart_tx_u1|AT|rom~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~61_combout\ = (\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|addr\(2)))) # (!\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(3) $ (((!\inst|uart_tx_u1|addr\(4) & \inst|uart_tx_u1|addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~61_combout\);

-- Location: LCCOMB_X24_Y16_N26
\inst|uart_tx_u1|AT|rom~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~58_combout\ = (\inst|uart_tx_u1|addr\(1) & (((!\inst|uart_tx_u1|addr\(4))) # (!\inst|uart_tx_u1|addr\(2)))) # (!\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(3)) # ((\inst|uart_tx_u1|addr\(2) & \inst|uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(4),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~58_combout\);

-- Location: LCCOMB_X24_Y16_N20
\inst|uart_tx_u1|AT|rom~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~59_combout\ = (\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|addr\(3) & (\inst|uart_tx_u1|addr\(1) $ (\inst|uart_tx_u1|addr\(2))))) # (!\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|addr\(2) $ (((\inst|uart_tx_u1|addr\(1)) # 
-- (\inst|uart_tx_u1|addr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(1),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|addr\(2),
	datad => \inst|uart_tx_u1|addr\(3),
	combout => \inst|uart_tx_u1|AT|rom~59_combout\);

-- Location: LCCOMB_X24_Y16_N6
\inst|uart_tx_u1|AT|rom~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~60_combout\ = (\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(5)) # ((!\inst|uart_tx_u1|AT|rom~58_combout\)))) # (!\inst|uart_tx_u1|addr\(0) & (!\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|AT|rom~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(0),
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|AT|rom~58_combout\,
	datad => \inst|uart_tx_u1|AT|rom~59_combout\,
	combout => \inst|uart_tx_u1|AT|rom~60_combout\);

-- Location: LCCOMB_X24_Y16_N4
\inst|uart_tx_u1|AT|rom~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~62_combout\ = (\inst|uart_tx_u1|addr\(5) & ((\inst|uart_tx_u1|AT|rom~60_combout\ & ((\inst|uart_tx_u1|AT|rom~61_combout\))) # (!\inst|uart_tx_u1|AT|rom~60_combout\ & (!\inst|uart_tx_u1|AT|rom~57_combout\)))) # 
-- (!\inst|uart_tx_u1|addr\(5) & (((\inst|uart_tx_u1|AT|rom~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|AT|rom~57_combout\,
	datab => \inst|uart_tx_u1|addr\(5),
	datac => \inst|uart_tx_u1|AT|rom~61_combout\,
	datad => \inst|uart_tx_u1|AT|rom~60_combout\,
	combout => \inst|uart_tx_u1|AT|rom~62_combout\);

-- Location: LCCOMB_X24_Y16_N0
\inst|uart_tx_u1|AT|rom~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~67_combout\ = (\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(5)) # (!\inst|uart_tx_u1|addr\(1))))) # (!\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(1) $ (\inst|uart_tx_u1|addr\(0) $ 
-- (\inst|uart_tx_u1|addr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(0),
	datad => \inst|uart_tx_u1|addr\(5),
	combout => \inst|uart_tx_u1|AT|rom~67_combout\);

-- Location: LCCOMB_X24_Y16_N22
\inst|uart_tx_u1|AT|rom~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~63_combout\ = (\inst|uart_tx_u1|addr\(1) & (\inst|uart_tx_u1|addr\(0) $ (((\inst|uart_tx_u1|addr\(2)) # (!\inst|uart_tx_u1|addr\(5)))))) # (!\inst|uart_tx_u1|addr\(1) & (((\inst|uart_tx_u1|addr\(0)) # (\inst|uart_tx_u1|addr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(0),
	datad => \inst|uart_tx_u1|addr\(5),
	combout => \inst|uart_tx_u1|AT|rom~63_combout\);

-- Location: LCCOMB_X23_Y16_N6
\inst|uart_tx_u1|AT|rom~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~65_combout\ = (\inst|uart_tx_u1|addr\(5) & (!\inst|uart_tx_u1|addr\(2) & (\inst|uart_tx_u1|addr\(1) $ (!\inst|uart_tx_u1|addr\(0))))) # (!\inst|uart_tx_u1|addr\(5) & (((\inst|uart_tx_u1|addr\(1) & !\inst|uart_tx_u1|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(0),
	datad => \inst|uart_tx_u1|addr\(5),
	combout => \inst|uart_tx_u1|AT|rom~65_combout\);

-- Location: LCCOMB_X24_Y16_N24
\inst|uart_tx_u1|AT|rom~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~64_combout\ = (\inst|uart_tx_u1|addr\(1) & ((\inst|uart_tx_u1|addr\(0) & ((\inst|uart_tx_u1|addr\(5)))) # (!\inst|uart_tx_u1|addr\(0) & (!\inst|uart_tx_u1|addr\(2) & !\inst|uart_tx_u1|addr\(5))))) # (!\inst|uart_tx_u1|addr\(1) & 
-- ((\inst|uart_tx_u1|addr\(2) & ((!\inst|uart_tx_u1|addr\(5)))) # (!\inst|uart_tx_u1|addr\(2) & (!\inst|uart_tx_u1|addr\(0) & \inst|uart_tx_u1|addr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(2),
	datab => \inst|uart_tx_u1|addr\(1),
	datac => \inst|uart_tx_u1|addr\(0),
	datad => \inst|uart_tx_u1|addr\(5),
	combout => \inst|uart_tx_u1|AT|rom~64_combout\);

-- Location: LCCOMB_X24_Y16_N18
\inst|uart_tx_u1|AT|rom~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~66_combout\ = (\inst|uart_tx_u1|addr\(3) & ((\inst|uart_tx_u1|addr\(4)) # ((\inst|uart_tx_u1|AT|rom~64_combout\)))) # (!\inst|uart_tx_u1|addr\(3) & (!\inst|uart_tx_u1|addr\(4) & (\inst|uart_tx_u1|AT|rom~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(3),
	datab => \inst|uart_tx_u1|addr\(4),
	datac => \inst|uart_tx_u1|AT|rom~65_combout\,
	datad => \inst|uart_tx_u1|AT|rom~64_combout\,
	combout => \inst|uart_tx_u1|AT|rom~66_combout\);

-- Location: LCCOMB_X24_Y16_N10
\inst|uart_tx_u1|AT|rom~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~68_combout\ = (\inst|uart_tx_u1|addr\(4) & ((\inst|uart_tx_u1|AT|rom~66_combout\ & (\inst|uart_tx_u1|AT|rom~67_combout\)) # (!\inst|uart_tx_u1|AT|rom~66_combout\ & ((!\inst|uart_tx_u1|AT|rom~63_combout\))))) # 
-- (!\inst|uart_tx_u1|addr\(4) & (((\inst|uart_tx_u1|AT|rom~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(4),
	datab => \inst|uart_tx_u1|AT|rom~67_combout\,
	datac => \inst|uart_tx_u1|AT|rom~63_combout\,
	datad => \inst|uart_tx_u1|AT|rom~66_combout\,
	combout => \inst|uart_tx_u1|AT|rom~68_combout\);

-- Location: LCCOMB_X24_Y16_N16
\inst|uart_tx_u1|AT|rom~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~69_combout\ = (!\inst|uart_tx_u1|addr\(7) & ((\inst|uart_tx_u1|addr\(6) & (\inst|uart_tx_u1|AT|rom~62_combout\)) # (!\inst|uart_tx_u1|addr\(6) & ((\inst|uart_tx_u1|AT|rom~68_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(7),
	datab => \inst|uart_tx_u1|addr\(6),
	datac => \inst|uart_tx_u1|AT|rom~62_combout\,
	datad => \inst|uart_tx_u1|AT|rom~68_combout\,
	combout => \inst|uart_tx_u1|AT|rom~69_combout\);

-- Location: LCCOMB_X24_Y16_N2
\inst|uart_tx_u1|AT|rom~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|AT|rom~75_combout\ = (\inst|uart_tx_u1|AT|rom~69_combout\) # ((\inst|uart_tx_u1|addr\(7) & (!\inst|uart_tx_u1|addr\(6) & \inst|uart_tx_u1|AT|rom~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|addr\(7),
	datab => \inst|uart_tx_u1|addr\(6),
	datac => \inst|uart_tx_u1|AT|rom~74_combout\,
	datad => \inst|uart_tx_u1|AT|rom~69_combout\,
	combout => \inst|uart_tx_u1|AT|rom~75_combout\);

-- Location: LCCOMB_X23_Y18_N6
\inst|uart_tx_u1|Equal4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Equal4~3_combout\ = (\inst|uart_tx_u1|AT|rom~56_combout\) # ((\inst|uart_tx_u1|AT|rom~18_combout\) # ((!\inst|uart_tx_u1|AT|rom~75_combout\) # (!\inst|uart_tx_u1|AT|rom~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|AT|rom~56_combout\,
	datab => \inst|uart_tx_u1|AT|rom~18_combout\,
	datac => \inst|uart_tx_u1|AT|rom~37_combout\,
	datad => \inst|uart_tx_u1|AT|rom~75_combout\,
	combout => \inst|uart_tx_u1|Equal4~3_combout\);

-- Location: LCCOMB_X23_Y18_N28
\inst|uart_tx_u1|Equal4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Equal4~4_combout\ = (\inst|uart_tx_u1|Equal4~3_combout\) # ((\inst|uart_tx_u1|AT|rom~92_combout\) # ((\inst|uart_tx_u1|AT|rom~123_combout\) # (\inst|uart_tx_u1|AT|rom~125_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Equal4~3_combout\,
	datab => \inst|uart_tx_u1|AT|rom~92_combout\,
	datac => \inst|uart_tx_u1|AT|rom~123_combout\,
	datad => \inst|uart_tx_u1|AT|rom~125_combout\,
	combout => \inst|uart_tx_u1|Equal4~4_combout\);

-- Location: LCCOMB_X26_Y16_N20
\inst|uart_tx_u1|cnt_rom[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_rom[3]~2_combout\ = (\inst|uart_tx_u1|always5~1_combout\ & (((\inst|uart_tx_u1|Equal4~4_combout\)))) # (!\inst|uart_tx_u1|always5~1_combout\ & (((!\inst|uart_tx_u1|cnt_rom\(1))) # (!\inst|uart_tx_u1|always0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|always0~4_combout\,
	datab => \inst|uart_tx_u1|cnt_rom\(1),
	datac => \inst|uart_tx_u1|Equal4~4_combout\,
	datad => \inst|uart_tx_u1|always5~1_combout\,
	combout => \inst|uart_tx_u1|cnt_rom[3]~2_combout\);

-- Location: LCCOMB_X26_Y16_N16
\inst|uart_tx_u1|cnt_rom[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_rom[0]~6_combout\ = (\inst|uart_tx_u1|cnt_rom\(0) & (((\inst|uart_tx_u1|cnt_rom[3]~2_combout\) # (!\inst|uart_tx_u1|stage_tx.SEND_DATA~q\)) # (!\inst|uart_tx_u1|always5~0_combout\))) # (!\inst|uart_tx_u1|cnt_rom\(0) & 
-- (((!\inst|uart_tx_u1|cnt_rom[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|always5~0_combout\,
	datab => \inst|uart_tx_u1|stage_tx.SEND_DATA~q\,
	datac => \inst|uart_tx_u1|cnt_rom\(0),
	datad => \inst|uart_tx_u1|cnt_rom[3]~2_combout\,
	combout => \inst|uart_tx_u1|cnt_rom[0]~6_combout\);

-- Location: FF_X26_Y16_N17
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

-- Location: LCCOMB_X26_Y16_N24
\inst|uart_tx_u1|cnt_rom[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|cnt_rom[1]~4_combout\ = (\inst|uart_tx_u1|cnt_rom[3]~2_combout\ & (((\inst|uart_tx_u1|cnt_rom\(1))))) # (!\inst|uart_tx_u1|cnt_rom[3]~2_combout\ & (\inst|uart_tx_u1|always5~1_combout\ & (\inst|uart_tx_u1|cnt_rom\(0) $ 
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
	combout => \inst|uart_tx_u1|cnt_rom[1]~4_combout\);

-- Location: FF_X26_Y16_N25
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

-- Location: LCCOMB_X21_Y16_N20
\inst|uart_tx_u1|btn~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|btn~0_combout\ = ((\inst|uart_tx_u1|btn~q\ & ((!\inst|uart_tx_u1|always0~4_combout\) # (!\inst|uart_tx_u1|cnt_rom\(1))))) # (!\inst6|key\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_rom\(1),
	datab => \inst|uart_tx_u1|always0~4_combout\,
	datac => \inst|uart_tx_u1|btn~q\,
	datad => \inst6|key\(4),
	combout => \inst|uart_tx_u1|btn~0_combout\);

-- Location: FF_X21_Y16_N21
\inst|uart_tx_u1|btn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|btn~0_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|btn~q\);

-- Location: LCCOMB_X26_Y16_N28
\inst|uart_tx_u1|SEND_END_cmd~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|SEND_END_cmd~feeder_combout\ = \inst|uart_tx_u1|always0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_tx_u1|always0~4_combout\,
	combout => \inst|uart_tx_u1|SEND_END_cmd~feeder_combout\);

-- Location: FF_X26_Y16_N29
\inst|uart_tx_u1|SEND_END_cmd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_tx_u1|SEND_END_cmd~feeder_combout\,
	clrn => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_tx_u1|SEND_END_cmd~q\);

-- Location: LCCOMB_X23_Y16_N18
\inst|uart_tx_u1|SEND_DATA_en~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|SEND_DATA_en~0_combout\ = (!\inst|uart_tx_u1|btn~q\ & ((\inst|uart_tx_u1|SEND_DATA_en~q\) # (\inst|uart_tx_u1|SEND_END_cmd~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_tx_u1|btn~q\,
	datac => \inst|uart_tx_u1|SEND_DATA_en~q\,
	datad => \inst|uart_tx_u1|SEND_END_cmd~q\,
	combout => \inst|uart_tx_u1|SEND_DATA_en~0_combout\);

-- Location: FF_X23_Y16_N19
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

-- Location: LCCOMB_X30_Y19_N0
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

-- Location: LCCOMB_X30_Y19_N12
\inst|uart_rx_u2|cnt_baud[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|cnt_baud[6]~21_combout\ = (\inst|uart_rx_u2|cnt_baud\(6) & (\inst|uart_rx_u2|cnt_baud[5]~20\ $ (GND))) # (!\inst|uart_rx_u2|cnt_baud\(6) & (!\inst|uart_rx_u2|cnt_baud[5]~20\ & VCC))
-- \inst|uart_rx_u2|cnt_baud[6]~22\ = CARRY((\inst|uart_rx_u2|cnt_baud\(6) & !\inst|uart_rx_u2|cnt_baud[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_baud\(6),
	datad => VCC,
	cin => \inst|uart_rx_u2|cnt_baud[5]~20\,
	combout => \inst|uart_rx_u2|cnt_baud[6]~21_combout\,
	cout => \inst|uart_rx_u2|cnt_baud[6]~22\);

-- Location: LCCOMB_X30_Y19_N14
\inst|uart_rx_u2|cnt_baud[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|cnt_baud[7]~23_combout\ = (\inst|uart_rx_u2|cnt_baud\(7) & (!\inst|uart_rx_u2|cnt_baud[6]~22\)) # (!\inst|uart_rx_u2|cnt_baud\(7) & ((\inst|uart_rx_u2|cnt_baud[6]~22\) # (GND)))
-- \inst|uart_rx_u2|cnt_baud[7]~24\ = CARRY((!\inst|uart_rx_u2|cnt_baud[6]~22\) # (!\inst|uart_rx_u2|cnt_baud\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|cnt_baud\(7),
	datad => VCC,
	cin => \inst|uart_rx_u2|cnt_baud[6]~22\,
	combout => \inst|uart_rx_u2|cnt_baud[7]~23_combout\,
	cout => \inst|uart_rx_u2|cnt_baud[7]~24\);

-- Location: FF_X30_Y19_N15
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
	sclr => \inst|uart_rx_u2|cnt_baud[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|cnt_baud\(7));

-- Location: LCCOMB_X30_Y19_N24
\inst|uart_rx_u2|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Equal1~0_combout\ = (\inst|uart_rx_u2|cnt_baud\(4) & (\inst|uart_rx_u2|cnt_baud\(7) & (!\inst|uart_rx_u2|cnt_baud\(2) & !\inst|uart_rx_u2|cnt_baud\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_baud\(4),
	datab => \inst|uart_rx_u2|cnt_baud\(7),
	datac => \inst|uart_rx_u2|cnt_baud\(2),
	datad => \inst|uart_rx_u2|cnt_baud\(1),
	combout => \inst|uart_rx_u2|Equal1~0_combout\);

-- Location: LCCOMB_X30_Y19_N28
\inst|uart_rx_u2|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Equal1~1_combout\ = (\inst|uart_rx_u2|cnt_baud\(6)) # (((\inst|uart_rx_u2|cnt_baud\(3)) # (!\inst|uart_rx_u2|cnt_baud\(5))) # (!\inst|uart_rx_u2|cnt_baud\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_baud\(6),
	datab => \inst|uart_rx_u2|cnt_baud\(0),
	datac => \inst|uart_rx_u2|cnt_baud\(5),
	datad => \inst|uart_rx_u2|cnt_baud\(3),
	combout => \inst|uart_rx_u2|Equal1~1_combout\);

-- Location: IOIBUF_X41_Y19_N8
\rx_c~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx_c,
	o => \rx_c~input_o\);

-- Location: LCCOMB_X31_Y19_N24
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

-- Location: FF_X31_Y19_N25
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

-- Location: LCCOMB_X31_Y19_N2
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

-- Location: FF_X31_Y19_N3
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

-- Location: LCCOMB_X31_Y19_N10
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

-- Location: FF_X31_Y19_N11
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

-- Location: LCCOMB_X31_Y18_N2
\inst|uart_rx_u2|stage_rx~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|stage_rx~11_combout\ = (\inst|uart_rx_u2|R_receiving~q\ & ((\inst|uart_rx_u2|Equal2~1_combout\ & ((\inst|uart_rx_u2|stage_rx.START~q\))) # (!\inst|uart_rx_u2|Equal2~1_combout\ & (!\inst|uart_rx_u2|stage_rx.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|R_receiving~q\,
	datab => \inst|uart_rx_u2|stage_rx.STOP~q\,
	datac => \inst|uart_rx_u2|stage_rx.START~q\,
	datad => \inst|uart_rx_u2|Equal2~1_combout\,
	combout => \inst|uart_rx_u2|stage_rx~11_combout\);

-- Location: FF_X31_Y18_N3
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

-- Location: LCCOMB_X31_Y18_N6
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

-- Location: FF_X31_Y18_N7
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

-- Location: LCCOMB_X31_Y18_N24
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

-- Location: FF_X31_Y18_N25
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

-- Location: LCCOMB_X32_Y18_N18
\inst|uart_rx_u2|cnt_bit[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|cnt_bit[2]~2_combout\ = (!\inst|uart_rx_u2|Equal2~1_combout\ & (\inst|uart_rx_u2|cnt_bit\(0) & (\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & \inst|uart_rx_u2|cnt_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Equal2~1_combout\,
	datab => \inst|uart_rx_u2|cnt_bit\(0),
	datac => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datad => \inst|uart_rx_u2|cnt_bit\(1),
	combout => \inst|uart_rx_u2|cnt_bit[2]~2_combout\);

-- Location: LCCOMB_X32_Y18_N6
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

-- Location: FF_X32_Y18_N7
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

-- Location: LCCOMB_X31_Y18_N10
\inst|uart_rx_u2|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Decoder0~0_combout\ = (\inst|uart_rx_u2|cnt_bit\(0) & (\inst|uart_rx_u2|cnt_bit\(1) & \inst|uart_rx_u2|cnt_bit\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|cnt_bit\(0),
	datac => \inst|uart_rx_u2|cnt_bit\(1),
	datad => \inst|uart_rx_u2|cnt_bit\(2),
	combout => \inst|uart_rx_u2|Decoder0~0_combout\);

-- Location: LCCOMB_X31_Y18_N14
\inst|uart_rx_u2|stage_rx~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|stage_rx~9_combout\ = (\inst|uart_rx_u2|Equal2~1_combout\ & (((\inst|uart_rx_u2|stage_rx.STOP~q\)))) # (!\inst|uart_rx_u2|Equal2~1_combout\ & (\inst|uart_rx_u2|Decoder0~0_combout\ & ((\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Decoder0~0_combout\,
	datab => \inst|uart_rx_u2|Equal2~1_combout\,
	datac => \inst|uart_rx_u2|stage_rx.STOP~q\,
	datad => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	combout => \inst|uart_rx_u2|stage_rx~9_combout\);

-- Location: FF_X31_Y18_N15
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

-- Location: LCCOMB_X31_Y19_N20
\inst|uart_rx_u2|rx_done~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|rx_done~0_combout\ = (\inst|uart_rx_u2|R_receiving~q\ & ((\inst|uart_rx_u2|Equal2~1_combout\ & ((\inst|uart_rx_u2|rx_done~q\))) # (!\inst|uart_rx_u2|Equal2~1_combout\ & (\inst|uart_rx_u2|stage_rx.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|R_receiving~q\,
	datab => \inst|uart_rx_u2|stage_rx.STOP~q\,
	datac => \inst|uart_rx_u2|rx_done~q\,
	datad => \inst|uart_rx_u2|Equal2~1_combout\,
	combout => \inst|uart_rx_u2|rx_done~0_combout\);

-- Location: FF_X31_Y19_N21
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

-- Location: LCCOMB_X31_Y19_N0
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

-- Location: FF_X31_Y19_N1
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

-- Location: LCCOMB_X31_Y19_N22
\inst|uart_rx_u2|R_receiving~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|R_receiving~0_combout\ = (!\inst|uart_rx_u2|rx_done~q\ & ((\inst|uart_rx_u2|R_receiving~q\) # ((!\inst|uart_rx_u2|rx_reg2~q\ & \inst|uart_rx_u2|rx_reg3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|rx_reg2~q\,
	datab => \inst|uart_rx_u2|rx_done~q\,
	datac => \inst|uart_rx_u2|R_receiving~q\,
	datad => \inst|uart_rx_u2|rx_reg3~q\,
	combout => \inst|uart_rx_u2|R_receiving~0_combout\);

-- Location: FF_X31_Y19_N23
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

-- Location: FF_X29_Y19_N5
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

-- Location: LCCOMB_X30_Y19_N16
\inst|uart_rx_u2|cnt_baud[8]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|cnt_baud[8]~25_combout\ = \inst|uart_rx_u2|cnt_baud\(8) $ (!\inst|uart_rx_u2|cnt_baud[7]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_baud\(8),
	cin => \inst|uart_rx_u2|cnt_baud[7]~24\,
	combout => \inst|uart_rx_u2|cnt_baud[8]~25_combout\);

-- Location: FF_X30_Y19_N17
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
	sclr => \inst|uart_rx_u2|cnt_baud[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|cnt_baud\(8));

-- Location: LCCOMB_X29_Y19_N4
\inst|uart_rx_u2|cnt_baud[7]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|cnt_baud[7]~27_combout\ = ((\inst|uart_rx_u2|Equal1~0_combout\ & (!\inst|uart_rx_u2|Equal1~1_combout\ & \inst|uart_rx_u2|cnt_baud\(8)))) # (!\inst|uart_rx_u2|bps_rx_clk_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Equal1~0_combout\,
	datab => \inst|uart_rx_u2|Equal1~1_combout\,
	datac => \inst|uart_rx_u2|bps_rx_clk_en~q\,
	datad => \inst|uart_rx_u2|cnt_baud\(8),
	combout => \inst|uart_rx_u2|cnt_baud[7]~27_combout\);

-- Location: FF_X30_Y19_N1
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
	sclr => \inst|uart_rx_u2|cnt_baud[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|cnt_baud\(0));

-- Location: LCCOMB_X30_Y19_N2
\inst|uart_rx_u2|cnt_baud[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|cnt_baud[1]~11_combout\ = (\inst|uart_rx_u2|cnt_baud\(1) & (!\inst|uart_rx_u2|cnt_baud[0]~10\)) # (!\inst|uart_rx_u2|cnt_baud\(1) & ((\inst|uart_rx_u2|cnt_baud[0]~10\) # (GND)))
-- \inst|uart_rx_u2|cnt_baud[1]~12\ = CARRY((!\inst|uart_rx_u2|cnt_baud[0]~10\) # (!\inst|uart_rx_u2|cnt_baud\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|cnt_baud\(1),
	datad => VCC,
	cin => \inst|uart_rx_u2|cnt_baud[0]~10\,
	combout => \inst|uart_rx_u2|cnt_baud[1]~11_combout\,
	cout => \inst|uart_rx_u2|cnt_baud[1]~12\);

-- Location: FF_X30_Y19_N3
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
	sclr => \inst|uart_rx_u2|cnt_baud[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|cnt_baud\(1));

-- Location: LCCOMB_X30_Y19_N4
\inst|uart_rx_u2|cnt_baud[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|cnt_baud[2]~13_combout\ = (\inst|uart_rx_u2|cnt_baud\(2) & (\inst|uart_rx_u2|cnt_baud[1]~12\ $ (GND))) # (!\inst|uart_rx_u2|cnt_baud\(2) & (!\inst|uart_rx_u2|cnt_baud[1]~12\ & VCC))
-- \inst|uart_rx_u2|cnt_baud[2]~14\ = CARRY((\inst|uart_rx_u2|cnt_baud\(2) & !\inst|uart_rx_u2|cnt_baud[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|cnt_baud\(2),
	datad => VCC,
	cin => \inst|uart_rx_u2|cnt_baud[1]~12\,
	combout => \inst|uart_rx_u2|cnt_baud[2]~13_combout\,
	cout => \inst|uart_rx_u2|cnt_baud[2]~14\);

-- Location: FF_X30_Y19_N5
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
	sclr => \inst|uart_rx_u2|cnt_baud[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|cnt_baud\(2));

-- Location: LCCOMB_X30_Y19_N6
\inst|uart_rx_u2|cnt_baud[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|cnt_baud[3]~15_combout\ = (\inst|uart_rx_u2|cnt_baud\(3) & (!\inst|uart_rx_u2|cnt_baud[2]~14\)) # (!\inst|uart_rx_u2|cnt_baud\(3) & ((\inst|uart_rx_u2|cnt_baud[2]~14\) # (GND)))
-- \inst|uart_rx_u2|cnt_baud[3]~16\ = CARRY((!\inst|uart_rx_u2|cnt_baud[2]~14\) # (!\inst|uart_rx_u2|cnt_baud\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_baud\(3),
	datad => VCC,
	cin => \inst|uart_rx_u2|cnt_baud[2]~14\,
	combout => \inst|uart_rx_u2|cnt_baud[3]~15_combout\,
	cout => \inst|uart_rx_u2|cnt_baud[3]~16\);

-- Location: FF_X30_Y19_N7
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
	sclr => \inst|uart_rx_u2|cnt_baud[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|cnt_baud\(3));

-- Location: LCCOMB_X30_Y19_N8
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

-- Location: FF_X30_Y19_N9
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
	sclr => \inst|uart_rx_u2|cnt_baud[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|cnt_baud\(4));

-- Location: LCCOMB_X30_Y19_N10
\inst|uart_rx_u2|cnt_baud[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|cnt_baud[5]~19_combout\ = (\inst|uart_rx_u2|cnt_baud\(5) & (!\inst|uart_rx_u2|cnt_baud[4]~18\)) # (!\inst|uart_rx_u2|cnt_baud\(5) & ((\inst|uart_rx_u2|cnt_baud[4]~18\) # (GND)))
-- \inst|uart_rx_u2|cnt_baud[5]~20\ = CARRY((!\inst|uart_rx_u2|cnt_baud[4]~18\) # (!\inst|uart_rx_u2|cnt_baud\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_baud\(5),
	datad => VCC,
	cin => \inst|uart_rx_u2|cnt_baud[4]~18\,
	combout => \inst|uart_rx_u2|cnt_baud[5]~19_combout\,
	cout => \inst|uart_rx_u2|cnt_baud[5]~20\);

-- Location: FF_X30_Y19_N11
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
	sclr => \inst|uart_rx_u2|cnt_baud[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|cnt_baud\(5));

-- Location: FF_X30_Y19_N13
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
	sclr => \inst|uart_rx_u2|cnt_baud[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|cnt_baud\(6));

-- Location: LCCOMB_X30_Y19_N26
\inst|uart_rx_u2|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Equal2~0_combout\ = ((\inst|uart_rx_u2|cnt_baud\(0)) # ((\inst|uart_rx_u2|cnt_baud\(5)) # (!\inst|uart_rx_u2|cnt_baud\(3)))) # (!\inst|uart_rx_u2|cnt_baud\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_baud\(6),
	datab => \inst|uart_rx_u2|cnt_baud\(0),
	datac => \inst|uart_rx_u2|cnt_baud\(5),
	datad => \inst|uart_rx_u2|cnt_baud\(3),
	combout => \inst|uart_rx_u2|Equal2~0_combout\);

-- Location: LCCOMB_X31_Y19_N8
\inst|uart_rx_u2|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Equal2~1_combout\ = (\inst|uart_rx_u2|Equal2~0_combout\) # ((\inst|uart_rx_u2|cnt_baud\(8)) # (!\inst|uart_rx_u2|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Equal2~0_combout\,
	datac => \inst|uart_rx_u2|cnt_baud\(8),
	datad => \inst|uart_rx_u2|Equal1~0_combout\,
	combout => \inst|uart_rx_u2|Equal2~1_combout\);

-- Location: LCCOMB_X32_Y18_N12
\inst|uart_rx_u2|cnt_bit[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|cnt_bit[1]~1_combout\ = \inst|uart_rx_u2|cnt_bit\(1) $ (((!\inst|uart_rx_u2|Equal2~1_combout\ & (\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & \inst|uart_rx_u2|cnt_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Equal2~1_combout\,
	datab => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datac => \inst|uart_rx_u2|cnt_bit\(1),
	datad => \inst|uart_rx_u2|cnt_bit\(0),
	combout => \inst|uart_rx_u2|cnt_bit[1]~1_combout\);

-- Location: FF_X32_Y18_N13
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

-- Location: LCCOMB_X32_Y18_N8
\inst|uart_rx_u2|Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector0~2_combout\ = (\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & \rx_c~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datad => \rx_c~input_o\,
	combout => \inst|uart_rx_u2|Selector0~2_combout\);

-- Location: LCCOMB_X32_Y18_N30
\inst|uart_rx_u2|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector5~0_combout\ = (\inst|uart_rx_u2|cnt_bit\(1) & (!\inst|uart_rx_u2|cnt_bit\(0) & (\inst|uart_rx_u2|Selector0~2_combout\ & !\inst|uart_rx_u2|cnt_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_bit\(1),
	datab => \inst|uart_rx_u2|cnt_bit\(0),
	datac => \inst|uart_rx_u2|Selector0~2_combout\,
	datad => \inst|uart_rx_u2|cnt_bit\(2),
	combout => \inst|uart_rx_u2|Selector5~0_combout\);

-- Location: LCCOMB_X32_Y18_N16
\inst|uart_rx_u2|Selector5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector5~1_combout\ = (\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & (((\inst|uart_rx_u2|cnt_bit\(0)) # (\inst|uart_rx_u2|cnt_bit\(2))) # (!\inst|uart_rx_u2|cnt_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_bit\(1),
	datab => \inst|uart_rx_u2|cnt_bit\(0),
	datac => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datad => \inst|uart_rx_u2|cnt_bit\(2),
	combout => \inst|uart_rx_u2|Selector5~1_combout\);

-- Location: LCCOMB_X32_Y18_N2
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

-- Location: LCCOMB_X30_Y19_N30
\inst|uart_rx_u2|rx_data[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|rx_data[3]~0_combout\ = ((!\inst|uart_rx_u2|cnt_baud\(8) & (\inst|uart_rx_u2|Equal1~0_combout\ & !\inst|uart_rx_u2|Equal2~0_combout\))) # (!\inst|uart_rx_u2|R_receiving~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_baud\(8),
	datab => \inst|uart_rx_u2|Equal1~0_combout\,
	datac => \inst|uart_rx_u2|Equal2~0_combout\,
	datad => \inst|uart_rx_u2|R_receiving~q\,
	combout => \inst|uart_rx_u2|rx_data[3]~0_combout\);

-- Location: FF_X32_Y18_N3
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

-- Location: LCCOMB_X32_Y19_N22
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

-- Location: LCCOMB_X31_Y19_N6
\inst|uart_rx_u2|rxd[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|rxd[7]~0_combout\ = (\res~input_o\ & (\inst|uart_rx_u2|stage_rx.STOP~q\ & (!\inst|uart_rx_u2|Equal2~1_combout\ & \inst|uart_rx_u2|R_receiving~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res~input_o\,
	datab => \inst|uart_rx_u2|stage_rx.STOP~q\,
	datac => \inst|uart_rx_u2|Equal2~1_combout\,
	datad => \inst|uart_rx_u2|R_receiving~q\,
	combout => \inst|uart_rx_u2|rxd[7]~0_combout\);

-- Location: FF_X32_Y19_N23
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

-- Location: LCCOMB_X32_Y18_N22
\inst|uart_rx_u2|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector7~0_combout\ = (!\inst|uart_rx_u2|cnt_bit\(1) & (!\inst|uart_rx_u2|cnt_bit\(0) & (\inst|uart_rx_u2|Selector0~2_combout\ & !\inst|uart_rx_u2|cnt_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_bit\(1),
	datab => \inst|uart_rx_u2|cnt_bit\(0),
	datac => \inst|uart_rx_u2|Selector0~2_combout\,
	datad => \inst|uart_rx_u2|cnt_bit\(2),
	combout => \inst|uart_rx_u2|Selector7~0_combout\);

-- Location: LCCOMB_X32_Y18_N20
\inst|uart_rx_u2|Selector7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector7~1_combout\ = (\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & ((\inst|uart_rx_u2|cnt_bit\(1)) # ((\inst|uart_rx_u2|cnt_bit\(0)) # (\inst|uart_rx_u2|cnt_bit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_bit\(1),
	datab => \inst|uart_rx_u2|cnt_bit\(0),
	datac => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datad => \inst|uart_rx_u2|cnt_bit\(2),
	combout => \inst|uart_rx_u2|Selector7~1_combout\);

-- Location: LCCOMB_X32_Y18_N4
\inst|uart_rx_u2|Selector7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector7~2_combout\ = (\inst|uart_rx_u2|Selector7~0_combout\) # ((\inst|uart_rx_u2|rx_data\(0) & ((\inst|uart_rx_u2|Selector7~1_combout\) # (\inst|uart_rx_u2|stage_rx.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Selector7~0_combout\,
	datab => \inst|uart_rx_u2|Selector7~1_combout\,
	datac => \inst|uart_rx_u2|rx_data\(0),
	datad => \inst|uart_rx_u2|stage_rx.STOP~q\,
	combout => \inst|uart_rx_u2|Selector7~2_combout\);

-- Location: FF_X32_Y18_N5
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
	ena => \inst|uart_rx_u2|rx_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rx_data\(0));

-- Location: LCCOMB_X32_Y19_N24
\inst|uart_rx_u2|rxd[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|rxd[0]~feeder_combout\ = \inst|uart_rx_u2|rx_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_rx_u2|rx_data\(0),
	combout => \inst|uart_rx_u2|rxd[0]~feeder_combout\);

-- Location: FF_X32_Y19_N25
\inst|uart_rx_u2|rxd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|rxd[0]~feeder_combout\,
	ena => \inst|uart_rx_u2|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rxd\(0));

-- Location: LCCOMB_X32_Y18_N24
\inst|uart_rx_u2|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector1~1_combout\ = (\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & (((\inst|uart_rx_u2|cnt_bit\(0)) # (!\inst|uart_rx_u2|cnt_bit\(2))) # (!\inst|uart_rx_u2|cnt_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_bit\(1),
	datab => \inst|uart_rx_u2|cnt_bit\(0),
	datac => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datad => \inst|uart_rx_u2|cnt_bit\(2),
	combout => \inst|uart_rx_u2|Selector1~1_combout\);

-- Location: LCCOMB_X32_Y18_N10
\inst|uart_rx_u2|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector1~0_combout\ = (\inst|uart_rx_u2|cnt_bit\(1) & (!\inst|uart_rx_u2|cnt_bit\(0) & (\inst|uart_rx_u2|Selector0~2_combout\ & \inst|uart_rx_u2|cnt_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_bit\(1),
	datab => \inst|uart_rx_u2|cnt_bit\(0),
	datac => \inst|uart_rx_u2|Selector0~2_combout\,
	datad => \inst|uart_rx_u2|cnt_bit\(2),
	combout => \inst|uart_rx_u2|Selector1~0_combout\);

-- Location: LCCOMB_X32_Y18_N14
\inst|uart_rx_u2|Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector1~2_combout\ = (\inst|uart_rx_u2|Selector1~0_combout\) # ((\inst|uart_rx_u2|rx_data\(6) & ((\inst|uart_rx_u2|stage_rx.STOP~q\) # (\inst|uart_rx_u2|Selector1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|stage_rx.STOP~q\,
	datab => \inst|uart_rx_u2|Selector1~1_combout\,
	datac => \inst|uart_rx_u2|rx_data\(6),
	datad => \inst|uart_rx_u2|Selector1~0_combout\,
	combout => \inst|uart_rx_u2|Selector1~2_combout\);

-- Location: FF_X32_Y18_N15
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
	ena => \inst|uart_rx_u2|rx_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rx_data\(6));

-- Location: LCCOMB_X32_Y19_N14
\inst|uart_rx_u2|rxd[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|rxd[6]~feeder_combout\ = \inst|uart_rx_u2|rx_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_rx_u2|rx_data\(6),
	combout => \inst|uart_rx_u2|rxd[6]~feeder_combout\);

-- Location: FF_X32_Y19_N15
\inst|uart_rx_u2|rxd[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|rxd[6]~feeder_combout\,
	ena => \inst|uart_rx_u2|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rxd\(6));

-- Location: LCCOMB_X31_Y18_N22
\inst|uart_rx_u2|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector2~0_combout\ = (\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & (\inst|uart_rx_u2|cnt_bit\(0) & (!\inst|uart_rx_u2|cnt_bit\(1) & \rx_c~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datab => \inst|uart_rx_u2|cnt_bit\(0),
	datac => \inst|uart_rx_u2|cnt_bit\(1),
	datad => \rx_c~input_o\,
	combout => \inst|uart_rx_u2|Selector2~0_combout\);

-- Location: LCCOMB_X31_Y18_N4
\inst|uart_rx_u2|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector2~1_combout\ = (\inst|uart_rx_u2|cnt_bit\(0) & !\inst|uart_rx_u2|cnt_bit\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|cnt_bit\(0),
	datac => \inst|uart_rx_u2|cnt_bit\(1),
	combout => \inst|uart_rx_u2|Selector2~1_combout\);

-- Location: LCCOMB_X31_Y18_N20
\inst|uart_rx_u2|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector6~0_combout\ = (\inst|uart_rx_u2|stage_rx.STOP~q\) # ((\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & ((\inst|uart_rx_u2|cnt_bit\(2)) # (!\inst|uart_rx_u2|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datab => \inst|uart_rx_u2|stage_rx.STOP~q\,
	datac => \inst|uart_rx_u2|Selector2~1_combout\,
	datad => \inst|uart_rx_u2|cnt_bit\(2),
	combout => \inst|uart_rx_u2|Selector6~0_combout\);

-- Location: LCCOMB_X31_Y18_N28
\inst|uart_rx_u2|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector6~1_combout\ = (\inst|uart_rx_u2|Selector2~0_combout\ & (((\inst|uart_rx_u2|Selector6~0_combout\ & \inst|uart_rx_u2|rx_data\(1))) # (!\inst|uart_rx_u2|cnt_bit\(2)))) # (!\inst|uart_rx_u2|Selector2~0_combout\ & 
-- (\inst|uart_rx_u2|Selector6~0_combout\ & (\inst|uart_rx_u2|rx_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Selector2~0_combout\,
	datab => \inst|uart_rx_u2|Selector6~0_combout\,
	datac => \inst|uart_rx_u2|rx_data\(1),
	datad => \inst|uart_rx_u2|cnt_bit\(2),
	combout => \inst|uart_rx_u2|Selector6~1_combout\);

-- Location: FF_X31_Y18_N29
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
	ena => \inst|uart_rx_u2|rx_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rx_data\(1));

-- Location: LCCOMB_X32_Y19_N16
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

-- Location: FF_X32_Y19_N17
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

-- Location: LCCOMB_X32_Y19_N4
\inst|receiver_OK_u1|OK~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|receiver_OK_u1|OK~1_combout\ = (!\inst|uart_rx_u2|rxd\(2) & (!\inst|uart_rx_u2|rxd\(0) & (!\inst|uart_rx_u2|rxd\(6) & \inst|uart_rx_u2|rxd\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|rxd\(2),
	datab => \inst|uart_rx_u2|rxd\(0),
	datac => \inst|uart_rx_u2|rxd\(6),
	datad => \inst|uart_rx_u2|rxd\(1),
	combout => \inst|receiver_OK_u1|OK~1_combout\);

-- Location: LCCOMB_X31_Y19_N16
\inst|uart_rx_u2|RECEIVE_END~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|RECEIVE_END~0_combout\ = (!\inst|uart_rx_u2|cnt_baud\(8) & (\inst|uart_rx_u2|stage_rx.STOP~q\ & (!\inst|uart_rx_u2|Equal2~0_combout\ & \inst|uart_rx_u2|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_baud\(8),
	datab => \inst|uart_rx_u2|stage_rx.STOP~q\,
	datac => \inst|uart_rx_u2|Equal2~0_combout\,
	datad => \inst|uart_rx_u2|Equal1~0_combout\,
	combout => \inst|uart_rx_u2|RECEIVE_END~0_combout\);

-- Location: FF_X31_Y19_N17
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

-- Location: LCCOMB_X23_Y17_N30
\inst|uart_tx_u1|receive_ok_en~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|receive_ok_en~0_combout\ = (\inst|uart_tx_u1|stage_tx.STOP~q\ & (!\inst|uart_tx_u1|Equal4~3_combout\ & !\inst|uart_tx_u1|Equal4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|stage_tx.STOP~q\,
	datac => \inst|uart_tx_u1|Equal4~3_combout\,
	datad => \inst|uart_tx_u1|Equal4~2_combout\,
	combout => \inst|uart_tx_u1|receive_ok_en~0_combout\);

-- Location: FF_X23_Y17_N31
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

-- Location: LCCOMB_X32_Y18_N26
\inst|uart_rx_u2|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector3~0_combout\ = (!\inst|uart_rx_u2|cnt_bit\(1) & (!\inst|uart_rx_u2|cnt_bit\(0) & (\inst|uart_rx_u2|Selector0~2_combout\ & \inst|uart_rx_u2|cnt_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_bit\(1),
	datab => \inst|uart_rx_u2|cnt_bit\(0),
	datac => \inst|uart_rx_u2|Selector0~2_combout\,
	datad => \inst|uart_rx_u2|cnt_bit\(2),
	combout => \inst|uart_rx_u2|Selector3~0_combout\);

-- Location: LCCOMB_X32_Y18_N28
\inst|uart_rx_u2|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector3~1_combout\ = (\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & ((\inst|uart_rx_u2|cnt_bit\(1)) # ((\inst|uart_rx_u2|cnt_bit\(0)) # (!\inst|uart_rx_u2|cnt_bit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|cnt_bit\(1),
	datab => \inst|uart_rx_u2|cnt_bit\(0),
	datac => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datad => \inst|uart_rx_u2|cnt_bit\(2),
	combout => \inst|uart_rx_u2|Selector3~1_combout\);

-- Location: LCCOMB_X32_Y18_N0
\inst|uart_rx_u2|Selector3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector3~2_combout\ = (\inst|uart_rx_u2|Selector3~0_combout\) # ((\inst|uart_rx_u2|rx_data\(4) & ((\inst|uart_rx_u2|Selector3~1_combout\) # (\inst|uart_rx_u2|stage_rx.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Selector3~0_combout\,
	datab => \inst|uart_rx_u2|Selector3~1_combout\,
	datac => \inst|uart_rx_u2|rx_data\(4),
	datad => \inst|uart_rx_u2|stage_rx.STOP~q\,
	combout => \inst|uart_rx_u2|Selector3~2_combout\);

-- Location: FF_X32_Y18_N1
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
	ena => \inst|uart_rx_u2|rx_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rx_data\(4));

-- Location: LCCOMB_X32_Y19_N10
\inst|uart_rx_u2|rxd[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|rxd[4]~feeder_combout\ = \inst|uart_rx_u2|rx_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|uart_rx_u2|rx_data\(4),
	combout => \inst|uart_rx_u2|rxd[4]~feeder_combout\);

-- Location: FF_X32_Y19_N11
\inst|uart_rx_u2|rxd[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst|uart_rx_u2|rxd[4]~feeder_combout\,
	ena => \inst|uart_rx_u2|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rxd\(4));

-- Location: LCCOMB_X31_Y18_N18
\inst|uart_rx_u2|Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector2~2_combout\ = (\inst|uart_rx_u2|stage_rx.STOP~q\) # ((\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & ((!\inst|uart_rx_u2|cnt_bit\(2)) # (!\inst|uart_rx_u2|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datab => \inst|uart_rx_u2|stage_rx.STOP~q\,
	datac => \inst|uart_rx_u2|Selector2~1_combout\,
	datad => \inst|uart_rx_u2|cnt_bit\(2),
	combout => \inst|uart_rx_u2|Selector2~2_combout\);

-- Location: LCCOMB_X31_Y18_N26
\inst|uart_rx_u2|Selector2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector2~3_combout\ = (\inst|uart_rx_u2|Selector2~0_combout\ & ((\inst|uart_rx_u2|cnt_bit\(2)) # ((\inst|uart_rx_u2|Selector2~2_combout\ & \inst|uart_rx_u2|rx_data\(5))))) # (!\inst|uart_rx_u2|Selector2~0_combout\ & 
-- (\inst|uart_rx_u2|Selector2~2_combout\ & (\inst|uart_rx_u2|rx_data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Selector2~0_combout\,
	datab => \inst|uart_rx_u2|Selector2~2_combout\,
	datac => \inst|uart_rx_u2|rx_data\(5),
	datad => \inst|uart_rx_u2|cnt_bit\(2),
	combout => \inst|uart_rx_u2|Selector2~3_combout\);

-- Location: FF_X31_Y18_N27
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

-- Location: LCCOMB_X32_Y19_N20
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

-- Location: FF_X32_Y19_N21
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

-- Location: LCCOMB_X31_Y18_N12
\inst|uart_rx_u2|Selector0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector0~3_combout\ = (\inst|uart_rx_u2|rx_data\(7) & ((\inst|uart_rx_u2|stage_rx.STOP~q\) # ((\inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & !\inst|uart_rx_u2|Decoder0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datab => \inst|uart_rx_u2|rx_data\(7),
	datac => \inst|uart_rx_u2|stage_rx.STOP~q\,
	datad => \inst|uart_rx_u2|Decoder0~0_combout\,
	combout => \inst|uart_rx_u2|Selector0~3_combout\);

-- Location: LCCOMB_X31_Y18_N0
\inst|uart_rx_u2|Selector0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector0~4_combout\ = (\inst|uart_rx_u2|Selector0~3_combout\) # ((\inst|uart_rx_u2|Decoder0~0_combout\ & (\rx_c~input_o\ & \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Decoder0~0_combout\,
	datab => \rx_c~input_o\,
	datac => \inst|uart_rx_u2|Selector0~3_combout\,
	datad => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	combout => \inst|uart_rx_u2|Selector0~4_combout\);

-- Location: FF_X31_Y18_N1
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
	ena => \inst|uart_rx_u2|rx_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rx_data\(7));

-- Location: FF_X32_Y19_N7
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

-- Location: LCCOMB_X31_Y18_N30
\inst|uart_rx_u2|Selector4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector4~2_combout\ = (\inst|uart_rx_u2|cnt_bit\(0) & (\inst|uart_rx_u2|cnt_bit\(1) & !\inst|uart_rx_u2|cnt_bit\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|uart_rx_u2|cnt_bit\(0),
	datac => \inst|uart_rx_u2|cnt_bit\(1),
	datad => \inst|uart_rx_u2|cnt_bit\(2),
	combout => \inst|uart_rx_u2|Selector4~2_combout\);

-- Location: LCCOMB_X31_Y18_N8
\inst|uart_rx_u2|Selector4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector4~3_combout\ = (\inst|uart_rx_u2|rx_data\(3) & ((\inst|uart_rx_u2|stage_rx.STOP~q\) # ((!\inst|uart_rx_u2|Selector4~2_combout\ & \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Selector4~2_combout\,
	datab => \inst|uart_rx_u2|rx_data\(3),
	datac => \inst|uart_rx_u2|stage_rx.STOP~q\,
	datad => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	combout => \inst|uart_rx_u2|Selector4~3_combout\);

-- Location: LCCOMB_X31_Y18_N16
\inst|uart_rx_u2|Selector4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_rx_u2|Selector4~4_combout\ = (\inst|uart_rx_u2|Selector4~3_combout\) # ((\inst|uart_rx_u2|Selector4~2_combout\ & (\rx_c~input_o\ & \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|Selector4~2_combout\,
	datab => \rx_c~input_o\,
	datac => \inst|uart_rx_u2|Selector4~3_combout\,
	datad => \inst|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	combout => \inst|uart_rx_u2|Selector4~4_combout\);

-- Location: FF_X31_Y18_N17
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
	ena => \inst|uart_rx_u2|rx_data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|uart_rx_u2|rx_data\(3));

-- Location: LCCOMB_X32_Y19_N0
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

-- Location: FF_X32_Y19_N1
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

-- Location: LCCOMB_X32_Y19_N6
\inst|receiver_OK_u1|state~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|receiver_OK_u1|state~11_combout\ = (!\inst|uart_rx_u2|rxd\(4) & (!\inst|uart_rx_u2|rxd\(5) & (!\inst|uart_rx_u2|rxd\(7) & \inst|uart_rx_u2|rxd\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|rxd\(4),
	datab => \inst|uart_rx_u2|rxd\(5),
	datac => \inst|uart_rx_u2|rxd\(7),
	datad => \inst|uart_rx_u2|rxd\(3),
	combout => \inst|receiver_OK_u1|state~11_combout\);

-- Location: LCCOMB_X32_Y19_N28
\inst|receiver_OK_u1|state~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|receiver_OK_u1|state~14_combout\ = (\inst|receiver_OK_u1|state~11_combout\ & (\inst|uart_rx_u2|rxd\(0) & (\inst|uart_rx_u2|rxd\(6) & \inst|uart_rx_u2|rxd\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|receiver_OK_u1|state~11_combout\,
	datab => \inst|uart_rx_u2|rxd\(0),
	datac => \inst|uart_rx_u2|rxd\(6),
	datad => \inst|uart_rx_u2|rxd\(1),
	combout => \inst|receiver_OK_u1|state~14_combout\);

-- Location: LCCOMB_X32_Y19_N8
\inst|receiver_OK_u1|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|receiver_OK_u1|Selector0~0_combout\ = (\inst|receiver_OK_u1|state~15_combout\) # ((\inst|receiver_OK_u1|state~16_combout\) # (\inst|receiver_OK_u1|state~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|receiver_OK_u1|state~15_combout\,
	datac => \inst|receiver_OK_u1|state~16_combout\,
	datad => \inst|receiver_OK_u1|state~13_combout\,
	combout => \inst|receiver_OK_u1|Selector0~0_combout\);

-- Location: FF_X32_Y19_N9
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

-- Location: LCCOMB_X32_Y19_N30
\inst|receiver_OK_u1|state~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|receiver_OK_u1|state~16_combout\ = (\inst|uart_rx_u2|rxd\(2) & (\inst|receiver_OK_u1|state~14_combout\ & !\inst|receiver_OK_u1|state.000~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|rxd\(2),
	datab => \inst|receiver_OK_u1|state~14_combout\,
	datac => \inst|receiver_OK_u1|state.000~q\,
	combout => \inst|receiver_OK_u1|state~16_combout\);

-- Location: FF_X32_Y19_N27
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

-- Location: LCCOMB_X32_Y19_N26
\inst|receiver_OK_u1|state~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|receiver_OK_u1|state~15_combout\ = (!\inst|uart_rx_u2|rxd\(2) & (\inst|receiver_OK_u1|state~14_combout\ & \inst|receiver_OK_u1|state.001~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|rxd\(2),
	datab => \inst|receiver_OK_u1|state~14_combout\,
	datac => \inst|receiver_OK_u1|state.001~q\,
	combout => \inst|receiver_OK_u1|state~15_combout\);

-- Location: FF_X32_Y19_N13
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

-- Location: LCCOMB_X32_Y19_N12
\inst|receiver_OK_u1|state~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|receiver_OK_u1|state~12_combout\ = (\inst|uart_rx_u2|rxd\(2) & (\inst|uart_rx_u2|rxd\(0) & (\inst|receiver_OK_u1|state.010~q\ & !\inst|uart_rx_u2|rxd\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_rx_u2|rxd\(2),
	datab => \inst|uart_rx_u2|rxd\(0),
	datac => \inst|receiver_OK_u1|state.010~q\,
	datad => \inst|uart_rx_u2|rxd\(1),
	combout => \inst|receiver_OK_u1|state~12_combout\);

-- Location: LCCOMB_X32_Y19_N18
\inst|receiver_OK_u1|state~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|receiver_OK_u1|state~13_combout\ = (\inst|receiver_OK_u1|state~12_combout\ & (!\inst|uart_rx_u2|rxd\(6) & \inst|receiver_OK_u1|state~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|receiver_OK_u1|state~12_combout\,
	datac => \inst|uart_rx_u2|rxd\(6),
	datad => \inst|receiver_OK_u1|state~11_combout\,
	combout => \inst|receiver_OK_u1|state~13_combout\);

-- Location: LCCOMB_X32_Y19_N2
\inst|receiver_OK_u1|state.011~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|receiver_OK_u1|state.011~feeder_combout\ = \inst|receiver_OK_u1|state~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|receiver_OK_u1|state~13_combout\,
	combout => \inst|receiver_OK_u1|state.011~feeder_combout\);

-- Location: FF_X32_Y19_N3
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

-- Location: LCCOMB_X31_Y19_N28
\inst|receiver_OK_u1|OK~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|receiver_OK_u1|OK~2_combout\ = (\inst|uart_rx_u2|RECEIVE_END~q\ & (((\inst|receiver_OK_u1|state.011~q\)))) # (!\inst|uart_rx_u2|RECEIVE_END~q\ & (\inst|receiver_OK_u1|OK~q\ & (\inst|uart_tx_u1|receive_ok_en~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|receiver_OK_u1|OK~q\,
	datab => \inst|uart_rx_u2|RECEIVE_END~q\,
	datac => \inst|uart_tx_u1|receive_ok_en~q\,
	datad => \inst|receiver_OK_u1|state.011~q\,
	combout => \inst|receiver_OK_u1|OK~2_combout\);

-- Location: LCCOMB_X31_Y19_N26
\inst|receiver_OK_u1|OK~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|receiver_OK_u1|OK~3_combout\ = (\inst|receiver_OK_u1|OK~2_combout\ & ((\inst|receiver_OK_u1|OK~q\) # ((\inst|receiver_OK_u1|OK~1_combout\ & \inst|receiver_OK_u1|state~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|receiver_OK_u1|OK~1_combout\,
	datab => \inst|receiver_OK_u1|OK~2_combout\,
	datac => \inst|receiver_OK_u1|OK~q\,
	datad => \inst|receiver_OK_u1|state~11_combout\,
	combout => \inst|receiver_OK_u1|OK~3_combout\);

-- Location: FF_X31_Y19_N27
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

-- Location: LCCOMB_X23_Y18_N12
\inst|uart_tx_u1|always0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|always0~0_combout\ = (!\inst|uart_tx_u1|SEND_DATA_en~q\ & (!\inst|uart_tx_u1|Equal3~2_combout\ & ((\inst|uart_tx_u1|Equal4~4_combout\) # (\inst|receiver_OK_u1|OK~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|SEND_DATA_en~q\,
	datab => \inst|uart_tx_u1|Equal4~4_combout\,
	datac => \inst|uart_tx_u1|Equal3~2_combout\,
	datad => \inst|receiver_OK_u1|OK~q\,
	combout => \inst|uart_tx_u1|always0~0_combout\);

-- Location: LCCOMB_X26_Y17_N6
\inst|uart_tx_u1|Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Selector2~2_combout\ = (\inst|uart_tx_u1|always0~0_combout\ & (\inst|uart_tx_u1|stage_tx.SEND_DATA~q\ & ((\inst|uart_tx_u1|always5~0_combout\)))) # (!\inst|uart_tx_u1|always0~0_combout\ & ((\inst|uart_tx_u1|stage_tx.STOP~q\) # 
-- ((\inst|uart_tx_u1|stage_tx.SEND_DATA~q\ & \inst|uart_tx_u1|always5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|always0~0_combout\,
	datab => \inst|uart_tx_u1|stage_tx.SEND_DATA~q\,
	datac => \inst|uart_tx_u1|stage_tx.STOP~q\,
	datad => \inst|uart_tx_u1|always5~0_combout\,
	combout => \inst|uart_tx_u1|Selector2~2_combout\);

-- Location: FF_X26_Y17_N7
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

-- Location: LCCOMB_X23_Y17_N16
\inst|uart_tx_u1|addr[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|addr[0]~8_combout\ = (\inst|uart_tx_u1|stage_tx.STOP~q\ & \inst|uart_tx_u1|always0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|stage_tx.STOP~q\,
	datac => \inst|uart_tx_u1|always0~0_combout\,
	combout => \inst|uart_tx_u1|addr[0]~8_combout\);

-- Location: LCCOMB_X26_Y17_N10
\inst|uart_tx_u1|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Selector0~0_combout\ = (\inst|uart_tx_u1|addr[0]~8_combout\) # ((\inst|uart_tx_u1|Equal3~2_combout\ & ((\inst|uart_tx_u1|stage_tx.START~q\))) # (!\inst|uart_tx_u1|Equal3~2_combout\ & (!\inst|uart_tx_u1|stage_tx.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|stage_tx.IDLE~q\,
	datab => \inst|uart_tx_u1|Equal3~2_combout\,
	datac => \inst|uart_tx_u1|stage_tx.START~q\,
	datad => \inst|uart_tx_u1|addr[0]~8_combout\,
	combout => \inst|uart_tx_u1|Selector0~0_combout\);

-- Location: FF_X26_Y17_N11
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

-- Location: LCCOMB_X26_Y17_N2
\inst|uart_tx_u1|tx~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|tx~0_combout\ = (!\inst|uart_tx_u1|stage_tx.SEND_DATA~q\ & ((\inst|uart_tx_u1|stage_tx.STOP~q\) # (!\inst|uart_tx_u1|tx~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|stage_tx.STOP~q\,
	datab => \inst|uart_tx_u1|tx~q\,
	datad => \inst|uart_tx_u1|stage_tx.SEND_DATA~q\,
	combout => \inst|uart_tx_u1|tx~0_combout\);

-- Location: LCCOMB_X26_Y17_N26
\inst|uart_tx_u1|tx~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|tx~2_combout\ = (!\inst|uart_tx_u1|cnt_bit\(0) & (\inst|uart_tx_u1|cnt_bit\(1) & \inst|uart_tx_u1|AT|rom~123_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|cnt_bit\(0),
	datab => \inst|uart_tx_u1|cnt_bit\(1),
	datad => \inst|uart_tx_u1|AT|rom~123_combout\,
	combout => \inst|uart_tx_u1|tx~2_combout\);

-- Location: LCCOMB_X26_Y17_N28
\inst|uart_tx_u1|tx~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|tx~1_combout\ = (!\inst|uart_tx_u1|cnt_bit\(1) & ((\inst|uart_tx_u1|cnt_bit\(0) & ((\inst|uart_tx_u1|AT|rom~92_combout\))) # (!\inst|uart_tx_u1|cnt_bit\(0) & (\inst|uart_tx_u1|AT|rom~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|AT|rom~125_combout\,
	datab => \inst|uart_tx_u1|cnt_bit\(1),
	datac => \inst|uart_tx_u1|AT|rom~92_combout\,
	datad => \inst|uart_tx_u1|cnt_bit\(0),
	combout => \inst|uart_tx_u1|tx~1_combout\);

-- Location: LCCOMB_X24_Y17_N28
\inst|uart_tx_u1|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux8~0_combout\ = (\inst|uart_tx_u1|cnt_bit\(1) & (((\inst|uart_tx_u1|cnt_bit\(0))))) # (!\inst|uart_tx_u1|cnt_bit\(1) & ((\inst|uart_tx_u1|cnt_bit\(0) & ((\inst|uart_tx_u1|AT|rom~37_combout\))) # (!\inst|uart_tx_u1|cnt_bit\(0) & 
-- (\inst|uart_tx_u1|AT|rom~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|AT|rom~56_combout\,
	datab => \inst|uart_tx_u1|cnt_bit\(1),
	datac => \inst|uart_tx_u1|AT|rom~37_combout\,
	datad => \inst|uart_tx_u1|cnt_bit\(0),
	combout => \inst|uart_tx_u1|Mux8~0_combout\);

-- Location: LCCOMB_X26_Y17_N24
\inst|uart_tx_u1|Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|Mux8~1_combout\ = (\inst|uart_tx_u1|Mux8~0_combout\ & (((\inst|uart_tx_u1|AT|rom~75_combout\) # (!\inst|uart_tx_u1|cnt_bit\(1))))) # (!\inst|uart_tx_u1|Mux8~0_combout\ & (\inst|uart_tx_u1|AT|rom~18_combout\ & 
-- (\inst|uart_tx_u1|cnt_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|Mux8~0_combout\,
	datab => \inst|uart_tx_u1|AT|rom~18_combout\,
	datac => \inst|uart_tx_u1|cnt_bit\(1),
	datad => \inst|uart_tx_u1|AT|rom~75_combout\,
	combout => \inst|uart_tx_u1|Mux8~1_combout\);

-- Location: LCCOMB_X26_Y17_N8
\inst|uart_tx_u1|tx~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|tx~3_combout\ = (\inst|uart_tx_u1|cnt_bit\(2) & ((\inst|uart_tx_u1|tx~2_combout\) # ((\inst|uart_tx_u1|tx~1_combout\)))) # (!\inst|uart_tx_u1|cnt_bit\(2) & (((\inst|uart_tx_u1|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|tx~2_combout\,
	datab => \inst|uart_tx_u1|tx~1_combout\,
	datac => \inst|uart_tx_u1|cnt_bit\(2),
	datad => \inst|uart_tx_u1|Mux8~1_combout\,
	combout => \inst|uart_tx_u1|tx~3_combout\);

-- Location: LCCOMB_X26_Y17_N20
\inst|uart_tx_u1|tx~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|uart_tx_u1|tx~4_combout\ = (\inst|uart_tx_u1|stage_tx.START~q\) # ((!\inst|uart_tx_u1|tx~0_combout\ & ((!\inst|uart_tx_u1|stage_tx.SEND_DATA~q\) # (!\inst|uart_tx_u1|tx~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|uart_tx_u1|stage_tx.START~q\,
	datab => \inst|uart_tx_u1|tx~0_combout\,
	datac => \inst|uart_tx_u1|tx~3_combout\,
	datad => \inst|uart_tx_u1|stage_tx.SEND_DATA~q\,
	combout => \inst|uart_tx_u1|tx~4_combout\);

-- Location: FF_X26_Y17_N21
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

-- Location: LCCOMB_X19_Y16_N8
\inst6|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Decoder0~0_combout\ = (\inst6|Equal0~0_combout\ $ (\inst6|bond\(0))) # (!\inst6|bond\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Equal0~0_combout\,
	datac => \inst6|bond\(0),
	datad => \inst6|bond\(1),
	combout => \inst6|Decoder0~0_combout\);

-- Location: FF_X19_Y16_N9
\inst6|krow[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|T[13]~clkctrl_outclk\,
	d => \inst6|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|krow\(4));

-- Location: LCCOMB_X20_Y16_N28
\inst6|Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Decoder0~1_combout\ = (\inst6|Equal0~0_combout\ & ((\inst6|bond\(0)) # (!\inst6|bond\(1)))) # (!\inst6|Equal0~0_combout\ & ((\inst6|bond\(1)) # (!\inst6|bond\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal0~0_combout\,
	datac => \inst6|bond\(0),
	datad => \inst6|bond\(1),
	combout => \inst6|Decoder0~1_combout\);

-- Location: FF_X20_Y16_N29
\inst6|krow[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|T[13]~clkctrl_outclk\,
	d => \inst6|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|krow\(3));

-- Location: LCCOMB_X20_Y16_N30
\inst6|Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Decoder0~2_combout\ = (\inst6|bond\(1)) # (\inst6|Equal0~0_combout\ $ (\inst6|bond\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal0~0_combout\,
	datac => \inst6|bond\(0),
	datad => \inst6|bond\(1),
	combout => \inst6|Decoder0~2_combout\);

-- Location: FF_X20_Y16_N31
\inst6|krow[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|T[13]~clkctrl_outclk\,
	d => \inst6|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|krow\(2));

-- Location: LCCOMB_X20_Y16_N24
\inst6|Decoder0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Decoder0~3_combout\ = (\inst6|Equal0~0_combout\ & ((\inst6|bond\(0)) # (\inst6|bond\(1)))) # (!\inst6|Equal0~0_combout\ & ((!\inst6|bond\(1)) # (!\inst6|bond\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Equal0~0_combout\,
	datac => \inst6|bond\(0),
	datad => \inst6|bond\(1),
	combout => \inst6|Decoder0~3_combout\);

-- Location: FF_X20_Y16_N25
\inst6|krow[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|T[13]~clkctrl_outclk\,
	d => \inst6|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|krow\(1));

ww_tx_c <= \tx_c~output_o\;

ww_txd <= \txd~output_o\;

ww_key_r(4) <= \key_r[4]~output_o\;

ww_key_r(3) <= \key_r[3]~output_o\;

ww_key_r(2) <= \key_r[2]~output_o\;

ww_key_r(1) <= \key_r[1]~output_o\;
END structure;


