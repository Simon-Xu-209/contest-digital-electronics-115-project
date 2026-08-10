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

-- DATE "07/23/2026 10:36:14"

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
	txd : OUT std_logic;
	ck : IN std_logic;
	rst_n : IN std_logic;
	column : IN std_logic_vector(2 DOWNTO 0);
	rx : IN std_logic;
	tx : OUT std_logic;
	row : OUT std_logic_vector(2 DOWNTO 0)
	);
END top;

-- Design Ports Information
-- txd	=>  Location: PIN_166,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx	=>  Location: PIN_161,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[2]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[1]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[0]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx	=>  Location: PIN_164,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ck	=>  Location: PIN_149,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_145,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[1]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[2]	=>  Location: PIN_63,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[0]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_txd : std_logic;
SIGNAL ww_ck : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_column : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_rx : std_logic;
SIGNAL ww_tx : std_logic;
SIGNAL ww_row : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|T[13]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ck~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \txd~output_o\ : std_logic;
SIGNAL \tx~output_o\ : std_logic;
SIGNAL \row[2]~output_o\ : std_logic;
SIGNAL \row[1]~output_o\ : std_logic;
SIGNAL \row[0]~output_o\ : std_logic;
SIGNAL \rx~input_o\ : std_logic;
SIGNAL \ck~input_o\ : std_logic;
SIGNAL \ck~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add17~0_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add17~1\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add17~2_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|cnt_baud~3_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add17~3\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add17~4_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add17~5\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add17~6_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add17~7\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add17~8_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|cnt_baud~4_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Equal3~1_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add17~9\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add17~10_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|cnt_baud~2_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add17~11\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add17~12_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add17~13\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add17~14_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|cnt_baud~1_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add17~15\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add17~16_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|cnt_baud~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Equal3~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Equal3~2_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|stage_tx.IDLE~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|stage_tx.IDLE~q\ : std_logic;
SIGNAL \inst2|uart_tx_u1|always5~1_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|cnt_rom[1]~4_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|enable~feeder_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add19~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|cnt_rom[2]~3_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add19~1_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|cnt_rom[3]~5_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|always0~1_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Send_addr_w[0]~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|enable~q\ : std_logic;
SIGNAL \inst1|T[0]~39_combout\ : std_logic;
SIGNAL \inst1|T[1]~13_combout\ : std_logic;
SIGNAL \inst1|T[1]~14\ : std_logic;
SIGNAL \inst1|T[2]~15_combout\ : std_logic;
SIGNAL \inst1|T[2]~16\ : std_logic;
SIGNAL \inst1|T[3]~17_combout\ : std_logic;
SIGNAL \inst1|T[3]~18\ : std_logic;
SIGNAL \inst1|T[4]~19_combout\ : std_logic;
SIGNAL \inst1|T[4]~20\ : std_logic;
SIGNAL \inst1|T[5]~21_combout\ : std_logic;
SIGNAL \inst1|T[5]~22\ : std_logic;
SIGNAL \inst1|T[6]~23_combout\ : std_logic;
SIGNAL \inst1|T[6]~24\ : std_logic;
SIGNAL \inst1|T[7]~25_combout\ : std_logic;
SIGNAL \inst1|T[7]~26\ : std_logic;
SIGNAL \inst1|T[8]~27_combout\ : std_logic;
SIGNAL \inst1|T[8]~28\ : std_logic;
SIGNAL \inst1|T[9]~29_combout\ : std_logic;
SIGNAL \inst1|T[9]~30\ : std_logic;
SIGNAL \inst1|T[10]~31_combout\ : std_logic;
SIGNAL \inst1|T[10]~32\ : std_logic;
SIGNAL \inst1|T[11]~33_combout\ : std_logic;
SIGNAL \inst1|T[11]~34\ : std_logic;
SIGNAL \inst1|T[12]~35_combout\ : std_logic;
SIGNAL \inst1|T[12]~36\ : std_logic;
SIGNAL \inst1|T[13]~37_combout\ : std_logic;
SIGNAL \inst1|T[13]~clkctrl_outclk\ : std_logic;
SIGNAL \column[0]~input_o\ : std_logic;
SIGNAL \column[2]~input_o\ : std_logic;
SIGNAL \column[1]~input_o\ : std_logic;
SIGNAL \inst1|DSW~feeder_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|DSW~q\ : std_logic;
SIGNAL \inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|bond~1_combout\ : std_logic;
SIGNAL \inst1|bond~0_combout\ : std_logic;
SIGNAL \inst1|bond[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|Mux1~1_combout\ : std_logic;
SIGNAL \inst1|Mux1~2_combout\ : std_logic;
SIGNAL \inst1|t~0_combout\ : std_logic;
SIGNAL \inst1|t~q\ : std_logic;
SIGNAL \inst1|key~1_combout\ : std_logic;
SIGNAL \inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|key[1]~0_combout\ : std_logic;
SIGNAL \inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|Mux3~2_combout\ : std_logic;
SIGNAL \inst1|Mux3~1_combout\ : std_logic;
SIGNAL \inst1|Mux3~3_combout\ : std_logic;
SIGNAL \inst2|Select_mode_u1|LED_select[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|Mux4~1_combout\ : std_logic;
SIGNAL \inst1|Mux4~2_combout\ : std_logic;
SIGNAL \inst2|Select_mode_u1|LED_select[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|Mux2~2_combout\ : std_logic;
SIGNAL \inst1|Mux2~3_combout\ : std_logic;
SIGNAL \inst1|Mux2~4_combout\ : std_logic;
SIGNAL \inst1|Mux2~5_combout\ : std_logic;
SIGNAL \inst2|Select_mode_u1|LED_select[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr[3]~33_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|always0~2_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr[3]~34_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add16~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Send_addr[0]~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~26_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~24_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~23_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~25_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~27_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~14_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~10_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~11_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~12_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~13_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~15_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~16_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~20_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~17_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~18_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~19_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~21_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~22_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~28_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~64_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~61_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~62_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~63_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~65_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~52_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~48_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~49_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~50_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~51_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~53_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~54_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~58_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~56_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~55_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~57_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~59_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~60_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~66_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~77_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~73_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~74_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~75_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~76_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~78_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~71_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~68_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~69_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~70_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~67_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~72_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~79_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~83_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~80_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~81_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~82_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~84_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~85_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~35_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~39_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~36_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~37_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~38_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~40_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~33_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~29_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~30_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~31_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~32_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~34_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~41_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~45_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~42_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~43_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~44_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~46_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~47_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Equal4~3_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Send_addr[0]~1_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add13~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add5~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add7~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Mux7~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add15~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Mux7~1_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add11~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add3~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add1~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add9~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Mux7~2_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Mux7~3_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Mux7~4_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr[0]~2_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~7_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|always0~3_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add16~1\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add16~2_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|always1~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Send_addr[1]~2_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr[1]~3_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add5~1\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add5~2_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add13~1\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add13~2_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add1~1\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add1~2_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add9~1\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add9~2_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Mux6~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Mux6~1_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add15~1\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add15~2_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add3~1\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add3~2_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add7~1\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add7~2_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Mux6~5_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add11~1\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add11~2_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Mux6~6_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add4~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add12~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add8~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add0~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Mux6~2_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Mux6~3_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Mux6~4_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Mux6~7_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add16~3\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add16~4_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Send_addr[2]~3_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr[2]~4_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add15~3\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add15~4_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add7~3\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add7~4_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Mux5~7_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Mux5~8_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add13~3\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add13~4_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add12~1\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add12~2_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add4~1\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add4~2_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add5~3\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add5~4_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Mux5~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Mux5~1_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add10~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add3~3\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add3~4_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add2~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Mux5~2_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add11~3\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add11~4_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Mux5~3_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add9~3\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add9~4_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add8~1\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add8~2_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add0~1\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add0~2_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add1~3\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add1~4_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Mux5~4_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Mux5~5_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Mux5~6_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Mux5~9_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add16~5\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add16~6_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Send_addr[3]~6_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add13~5\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add13~6_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add15~5\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add15~6_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add14~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add12~3\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add12~4_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~43_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~44_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr[3]~28_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add7~5\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add7~6_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr[3]~25_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add5~5\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add5~6_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr[3]~24_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add4~3\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add4~4_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add2~1\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add2~2_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add3~5\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add3~6_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add1~5\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add1~6_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add0~3\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add0~4_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~36_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~37_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~38_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~39_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr[3]~21_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add10~1\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add10~2_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add11~5\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add11~6_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add8~3\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add8~4_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add9~5\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add9~6_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~40_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~41_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~42_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~45_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~46_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add16~7\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add16~8_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Send_addr[4]~5_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add11~7\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add11~8_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add9~7\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add9~8_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add10~3\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add10~4_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add8~5\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add8~6_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~19_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~20_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add7~7\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add7~8_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add4~5\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add4~6_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add5~7\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add5~8_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~26_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add3~7\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add3~8_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add2~3\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add2~4_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add0~5\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add0~6_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add1~7\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add1~8_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~22_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~23_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~27_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~29_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add15~7\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add15~8_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add12~5\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add12~6_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add13~7\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add13~8_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~30_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add14~1\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add14~2_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~31_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~32_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~35_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add16~9\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add16~11\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add16~12_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Send_addr[6]~7_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr[6]~1_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add16~10_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Send_addr[5]~4_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add13~9\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add13~11\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add13~12_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add9~9\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add9~11\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add9~12_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add11~9\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add11~11\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add11~12_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~54_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add15~9\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add15~11\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add15~12_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~55_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add5~9\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add5~11\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add5~12_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add7~9\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add7~11\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add7~12_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add3~9\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add3~11\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add3~12_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add1~9\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add1~11\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add1~12_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~47_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~48_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add6~5_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add4~7\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add4~9\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add4~10_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add0~7\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add0~9\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add0~10_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add2~5\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add2~7\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add2~8_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~51_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~52_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add10~5\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add10~7\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add10~8_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add14~3\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add14~5\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add14~6_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add12~7\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add12~9\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add12~10_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add8~7\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add8~9\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add8~10_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~49_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~50_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~53_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~56_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add16~13\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add16~14_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Send_addr[7]~8_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr[7]~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add3~13\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add3~14_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add10~9\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add10~10_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add2~9\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add2~10_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~57_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add11~13\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add11~14_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~58_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add14~7\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add14~8_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add15~13\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add15~14_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add7~13\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add7~14_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add6~4_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~64_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~65_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add12~11\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add12~12_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add13~13\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add13~14_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add4~11\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add4~12_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add5~13\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add5~14_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~59_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~60_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add1~13\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add1~14_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add9~13\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add9~14_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add8~11\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add8~12_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add0~11\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add0~12_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~61_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~62_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~63_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~66_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~100_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~101_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~86_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~87_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~91_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~88_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~89_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~90_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~92_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~97_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~93_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~94_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~95_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~96_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~98_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~99_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~102_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~117_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~104_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~108_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~105_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~106_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~107_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~109_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~110_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~114_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~112_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~111_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~113_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~115_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~116_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~103_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~127_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~128_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Equal4~2_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~6_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr[5]~5_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add7~10_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add15~10_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add3~10_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add11~10_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~16_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~17_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add13~10_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add5~10_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add9~10_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add1~10_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~9_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~10_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add14~4_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add2~6_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add10~6_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~11_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~12_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add4~8_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add12~8_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add0~8_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Add8~8_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~13_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~14_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~15_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr~18_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~118_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~119_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~125_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~126_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~120_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~6_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~7_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~4_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~3_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~8_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~9_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~121_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~122_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~123_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|AT|rom~124_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Equal4~4_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|cnt_rom[0]~2_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|cnt_rom[0]~6_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|always0~4_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|btn~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|btn~q\ : std_logic;
SIGNAL \inst2|uart_tx_u1|SEND_END_cmd~q\ : std_logic;
SIGNAL \inst2|uart_tx_u1|SEND_DATA_en~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|SEND_DATA_en~q\ : std_logic;
SIGNAL \inst2|uart_rx_u2|cnt_baud[0]~9_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|Equal1~1_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|rx_done~1_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|rx_done~q\ : std_logic;
SIGNAL \inst2|uart_rx_u2|rx_reg0~feeder_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|rx_reg0~q\ : std_logic;
SIGNAL \inst2|uart_rx_u2|rx_reg1~feeder_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|rx_reg1~q\ : std_logic;
SIGNAL \inst2|uart_rx_u2|rx_reg2~q\ : std_logic;
SIGNAL \inst2|uart_rx_u2|rx_reg3~feeder_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|rx_reg3~q\ : std_logic;
SIGNAL \inst2|uart_rx_u2|R_receiving~0_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|R_receiving~q\ : std_logic;
SIGNAL \inst2|uart_rx_u2|bps_rx_clk_en~q\ : std_logic;
SIGNAL \inst2|uart_rx_u2|Equal1~0_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|cnt_baud[6]~27_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|cnt_baud[0]~10\ : std_logic;
SIGNAL \inst2|uart_rx_u2|cnt_baud[1]~11_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|cnt_baud[1]~12\ : std_logic;
SIGNAL \inst2|uart_rx_u2|cnt_baud[2]~13_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|cnt_baud[2]~14\ : std_logic;
SIGNAL \inst2|uart_rx_u2|cnt_baud[3]~15_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|cnt_baud[3]~16\ : std_logic;
SIGNAL \inst2|uart_rx_u2|cnt_baud[4]~17_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|cnt_baud[4]~18\ : std_logic;
SIGNAL \inst2|uart_rx_u2|cnt_baud[5]~19_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|cnt_baud[5]~20\ : std_logic;
SIGNAL \inst2|uart_rx_u2|cnt_baud[6]~21_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|cnt_baud[6]~22\ : std_logic;
SIGNAL \inst2|uart_rx_u2|cnt_baud[7]~23_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|cnt_baud[7]~24\ : std_logic;
SIGNAL \inst2|uart_rx_u2|cnt_baud[8]~25_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|Equal2~0_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|Equal2~1_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|stage_rx~11_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|stage_rx.START~q\ : std_logic;
SIGNAL \inst2|uart_rx_u2|stage_rx~10_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ : std_logic;
SIGNAL \inst2|uart_rx_u2|cnt_bit[0]~0_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|cnt_bit[1]~1_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|cnt_bit[2]~2_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|cnt_bit[2]~3_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|Decoder0~0_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|stage_rx~9_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|stage_rx.STOP~q\ : std_logic;
SIGNAL \inst2|uart_rx_u2|Selector0~2_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|Selector3~0_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|Selector3~1_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|Selector3~2_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|rx_done~0_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|rxd[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|rxd[7]~0_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|Selector2~0_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|Selector2~1_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|Selector2~2_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|Selector2~3_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|rxd[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|Selector0~3_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|Selector0~4_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|Selector4~1_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|Selector4~0_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|Selector4~2_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|rxd[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|receiver_OK_u1|state~11_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|Selector5~1_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|Selector5~0_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|Selector5~2_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|rxd[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|Selector1~1_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|Selector1~0_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|Selector1~2_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|rxd[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|Selector7~1_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|Selector7~0_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|Selector7~2_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|rxd[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|Selector6~0_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|Selector6~1_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|rxd[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|receiver_OK_u1|OK~1_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|receive_ok_en~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|receive_ok_en~q\ : std_logic;
SIGNAL \inst2|receiver_OK_u1|state~14_combout\ : std_logic;
SIGNAL \inst2|receiver_OK_u1|Selector0~0_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|RECEIVE_END~0_combout\ : std_logic;
SIGNAL \inst2|uart_rx_u2|RECEIVE_END~q\ : std_logic;
SIGNAL \inst2|receiver_OK_u1|state.000~q\ : std_logic;
SIGNAL \inst2|receiver_OK_u1|state~16_combout\ : std_logic;
SIGNAL \inst2|receiver_OK_u1|state.001~q\ : std_logic;
SIGNAL \inst2|receiver_OK_u1|state~15_combout\ : std_logic;
SIGNAL \inst2|receiver_OK_u1|state.010~q\ : std_logic;
SIGNAL \inst2|receiver_OK_u1|state~12_combout\ : std_logic;
SIGNAL \inst2|receiver_OK_u1|state~13_combout\ : std_logic;
SIGNAL \inst2|receiver_OK_u1|state.011~q\ : std_logic;
SIGNAL \inst2|receiver_OK_u1|OK~2_combout\ : std_logic;
SIGNAL \inst2|receiver_OK_u1|OK~3_combout\ : std_logic;
SIGNAL \inst2|receiver_OK_u1|OK~q\ : std_logic;
SIGNAL \inst2|uart_tx_u1|always0~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|addr[0]~8_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Selector0~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|stage_tx.START~q\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Selector1~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|stage_tx.SEND_DATA~q\ : std_logic;
SIGNAL \inst2|uart_tx_u1|start_cnt~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|start_cnt~q\ : std_logic;
SIGNAL \inst2|uart_tx_u1|cnt_bit[0]~2_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|cnt_bit[1]~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|cnt_bit[1]~1_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|cnt_bit[2]~3_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|always5~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Selector2~2_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|stage_tx.STOP~q\ : std_logic;
SIGNAL \inst2|uart_tx_u1|tx~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|tx~2_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|tx~1_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Mux8~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|Mux8~1_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|tx~3_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|tx~4_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|tx~q\ : std_logic;
SIGNAL \inst1|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|krow[1]~0_combout\ : std_logic;
SIGNAL \inst1|Mux7~0_combout\ : std_logic;
SIGNAL \inst1|krow[0]~1_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|cnt_rom\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|uart_tx_u1|addr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|uart_tx_u1|Send_addr_w\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|uart_tx_u1|cnt_bit\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|uart_tx_u1|cnt_baud\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst2|uart_rx_u2|rxd\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|uart_rx_u2|rx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|uart_rx_u2|cnt_bit\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|uart_rx_u2|cnt_baud\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst2|Select_mode_u1|LED_select\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|krow\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|key\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|bond\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|T~-1594147105\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst2|uart_rx_u2|ALT_INV_R_receiving~q\ : std_logic;
SIGNAL \inst1|ALT_INV_t~q\ : std_logic;
SIGNAL \inst2|uart_tx_u1|ALT_INV_always0~3_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst2|uart_tx_u1|ALT_INV_tx~q\ : std_logic;

BEGIN

txd <= ww_txd;
ww_ck <= ck;
ww_rst_n <= rst_n;
ww_column <= column;
ww_rx <= rx;
tx <= ww_tx;
row <= ww_row;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|T[13]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|T~-1594147105\(13));

\ck~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ck~input_o\);
\inst2|uart_rx_u2|ALT_INV_R_receiving~q\ <= NOT \inst2|uart_rx_u2|R_receiving~q\;
\inst1|ALT_INV_t~q\ <= NOT \inst1|t~q\;
\inst2|uart_tx_u1|ALT_INV_always0~3_combout\ <= NOT \inst2|uart_tx_u1|always0~3_combout\;
\inst1|ALT_INV_Equal0~0_combout\ <= NOT \inst1|Equal0~0_combout\;
\inst2|uart_tx_u1|ALT_INV_tx~q\ <= NOT \inst2|uart_tx_u1|tx~q\;

-- Location: IOOBUF_X67_Y28_N23
\txd~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx~input_o\,
	devoe => ww_devoe,
	o => \txd~output_o\);

-- Location: IOOBUF_X67_Y26_N23
\tx~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|uart_tx_u1|ALT_INV_tx~q\,
	devoe => ww_devoe,
	o => \tx~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\row[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|krow\(2),
	devoe => ww_devoe,
	o => \row[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\row[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|krow\(1),
	devoe => ww_devoe,
	o => \row[1]~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\row[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|krow\(0),
	devoe => ww_devoe,
	o => \row[0]~output_o\);

-- Location: IOIBUF_X67_Y27_N15
\rx~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx,
	o => \rx~input_o\);

-- Location: IOIBUF_X67_Y22_N22
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

-- Location: LCCOMB_X41_Y24_N4
\inst2|uart_tx_u1|Add17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add17~0_combout\ = \inst2|uart_tx_u1|cnt_baud\(0) $ (VCC)
-- \inst2|uart_tx_u1|Add17~1\ = CARRY(\inst2|uart_tx_u1|cnt_baud\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|cnt_baud\(0),
	datad => VCC,
	combout => \inst2|uart_tx_u1|Add17~0_combout\,
	cout => \inst2|uart_tx_u1|Add17~1\);

-- Location: IOIBUF_X67_Y18_N15
\rst_n~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: FF_X41_Y24_N5
\inst2|uart_tx_u1|cnt_baud[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|Add17~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|cnt_baud\(0));

-- Location: LCCOMB_X41_Y24_N6
\inst2|uart_tx_u1|Add17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add17~2_combout\ = (\inst2|uart_tx_u1|cnt_baud\(1) & (!\inst2|uart_tx_u1|Add17~1\)) # (!\inst2|uart_tx_u1|cnt_baud\(1) & ((\inst2|uart_tx_u1|Add17~1\) # (GND)))
-- \inst2|uart_tx_u1|Add17~3\ = CARRY((!\inst2|uart_tx_u1|Add17~1\) # (!\inst2|uart_tx_u1|cnt_baud\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|cnt_baud\(1),
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add17~1\,
	combout => \inst2|uart_tx_u1|Add17~2_combout\,
	cout => \inst2|uart_tx_u1|Add17~3\);

-- Location: LCCOMB_X41_Y24_N22
\inst2|uart_tx_u1|cnt_baud~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|cnt_baud~3_combout\ = (\inst2|uart_tx_u1|Add17~2_combout\ & (((\inst2|uart_tx_u1|Equal3~1_combout\) # (\inst2|uart_tx_u1|Equal3~0_combout\)) # (!\inst2|uart_tx_u1|cnt_baud\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Add17~2_combout\,
	datab => \inst2|uart_tx_u1|cnt_baud\(0),
	datac => \inst2|uart_tx_u1|Equal3~1_combout\,
	datad => \inst2|uart_tx_u1|Equal3~0_combout\,
	combout => \inst2|uart_tx_u1|cnt_baud~3_combout\);

-- Location: FF_X41_Y24_N23
\inst2|uart_tx_u1|cnt_baud[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|cnt_baud~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|cnt_baud\(1));

-- Location: LCCOMB_X41_Y24_N8
\inst2|uart_tx_u1|Add17~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add17~4_combout\ = (\inst2|uart_tx_u1|cnt_baud\(2) & (\inst2|uart_tx_u1|Add17~3\ $ (GND))) # (!\inst2|uart_tx_u1|cnt_baud\(2) & (!\inst2|uart_tx_u1|Add17~3\ & VCC))
-- \inst2|uart_tx_u1|Add17~5\ = CARRY((\inst2|uart_tx_u1|cnt_baud\(2) & !\inst2|uart_tx_u1|Add17~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|cnt_baud\(2),
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add17~3\,
	combout => \inst2|uart_tx_u1|Add17~4_combout\,
	cout => \inst2|uart_tx_u1|Add17~5\);

-- Location: FF_X41_Y24_N9
\inst2|uart_tx_u1|cnt_baud[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|Add17~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|cnt_baud\(2));

-- Location: LCCOMB_X41_Y24_N10
\inst2|uart_tx_u1|Add17~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add17~6_combout\ = (\inst2|uart_tx_u1|cnt_baud\(3) & (!\inst2|uart_tx_u1|Add17~5\)) # (!\inst2|uart_tx_u1|cnt_baud\(3) & ((\inst2|uart_tx_u1|Add17~5\) # (GND)))
-- \inst2|uart_tx_u1|Add17~7\ = CARRY((!\inst2|uart_tx_u1|Add17~5\) # (!\inst2|uart_tx_u1|cnt_baud\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|cnt_baud\(3),
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add17~5\,
	combout => \inst2|uart_tx_u1|Add17~6_combout\,
	cout => \inst2|uart_tx_u1|Add17~7\);

-- Location: FF_X41_Y24_N11
\inst2|uart_tx_u1|cnt_baud[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|Add17~6_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|cnt_baud\(3));

-- Location: LCCOMB_X41_Y24_N12
\inst2|uart_tx_u1|Add17~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add17~8_combout\ = (\inst2|uart_tx_u1|cnt_baud\(4) & (\inst2|uart_tx_u1|Add17~7\ $ (GND))) # (!\inst2|uart_tx_u1|cnt_baud\(4) & (!\inst2|uart_tx_u1|Add17~7\ & VCC))
-- \inst2|uart_tx_u1|Add17~9\ = CARRY((\inst2|uart_tx_u1|cnt_baud\(4) & !\inst2|uart_tx_u1|Add17~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|cnt_baud\(4),
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add17~7\,
	combout => \inst2|uart_tx_u1|Add17~8_combout\,
	cout => \inst2|uart_tx_u1|Add17~9\);

-- Location: LCCOMB_X41_Y24_N0
\inst2|uart_tx_u1|cnt_baud~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|cnt_baud~4_combout\ = (\inst2|uart_tx_u1|Add17~8_combout\ & (((\inst2|uart_tx_u1|Equal3~1_combout\) # (\inst2|uart_tx_u1|Equal3~0_combout\)) # (!\inst2|uart_tx_u1|cnt_baud\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Add17~8_combout\,
	datab => \inst2|uart_tx_u1|cnt_baud\(0),
	datac => \inst2|uart_tx_u1|Equal3~1_combout\,
	datad => \inst2|uart_tx_u1|Equal3~0_combout\,
	combout => \inst2|uart_tx_u1|cnt_baud~4_combout\);

-- Location: FF_X41_Y24_N1
\inst2|uart_tx_u1|cnt_baud[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|cnt_baud~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|cnt_baud\(4));

-- Location: LCCOMB_X41_Y24_N2
\inst2|uart_tx_u1|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Equal3~1_combout\ = (\inst2|uart_tx_u1|cnt_baud\(3)) # ((\inst2|uart_tx_u1|cnt_baud\(2)) # ((\inst2|uart_tx_u1|cnt_baud\(1)) # (!\inst2|uart_tx_u1|cnt_baud\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|cnt_baud\(3),
	datab => \inst2|uart_tx_u1|cnt_baud\(2),
	datac => \inst2|uart_tx_u1|cnt_baud\(1),
	datad => \inst2|uart_tx_u1|cnt_baud\(4),
	combout => \inst2|uart_tx_u1|Equal3~1_combout\);

-- Location: LCCOMB_X41_Y24_N14
\inst2|uart_tx_u1|Add17~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add17~10_combout\ = (\inst2|uart_tx_u1|cnt_baud\(5) & (!\inst2|uart_tx_u1|Add17~9\)) # (!\inst2|uart_tx_u1|cnt_baud\(5) & ((\inst2|uart_tx_u1|Add17~9\) # (GND)))
-- \inst2|uart_tx_u1|Add17~11\ = CARRY((!\inst2|uart_tx_u1|Add17~9\) # (!\inst2|uart_tx_u1|cnt_baud\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|cnt_baud\(5),
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add17~9\,
	combout => \inst2|uart_tx_u1|Add17~10_combout\,
	cout => \inst2|uart_tx_u1|Add17~11\);

-- Location: LCCOMB_X41_Y24_N26
\inst2|uart_tx_u1|cnt_baud~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|cnt_baud~2_combout\ = (\inst2|uart_tx_u1|Add17~10_combout\ & ((\inst2|uart_tx_u1|Equal3~1_combout\) # ((\inst2|uart_tx_u1|Equal3~0_combout\) # (!\inst2|uart_tx_u1|cnt_baud\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Equal3~1_combout\,
	datab => \inst2|uart_tx_u1|Add17~10_combout\,
	datac => \inst2|uart_tx_u1|cnt_baud\(0),
	datad => \inst2|uart_tx_u1|Equal3~0_combout\,
	combout => \inst2|uart_tx_u1|cnt_baud~2_combout\);

-- Location: FF_X41_Y24_N27
\inst2|uart_tx_u1|cnt_baud[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|cnt_baud~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|cnt_baud\(5));

-- Location: LCCOMB_X41_Y24_N16
\inst2|uart_tx_u1|Add17~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add17~12_combout\ = (\inst2|uart_tx_u1|cnt_baud\(6) & (\inst2|uart_tx_u1|Add17~11\ $ (GND))) # (!\inst2|uart_tx_u1|cnt_baud\(6) & (!\inst2|uart_tx_u1|Add17~11\ & VCC))
-- \inst2|uart_tx_u1|Add17~13\ = CARRY((\inst2|uart_tx_u1|cnt_baud\(6) & !\inst2|uart_tx_u1|Add17~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|cnt_baud\(6),
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add17~11\,
	combout => \inst2|uart_tx_u1|Add17~12_combout\,
	cout => \inst2|uart_tx_u1|Add17~13\);

-- Location: FF_X41_Y24_N17
\inst2|uart_tx_u1|cnt_baud[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|Add17~12_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|cnt_baud\(6));

-- Location: LCCOMB_X41_Y24_N18
\inst2|uart_tx_u1|Add17~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add17~14_combout\ = (\inst2|uart_tx_u1|cnt_baud\(7) & (!\inst2|uart_tx_u1|Add17~13\)) # (!\inst2|uart_tx_u1|cnt_baud\(7) & ((\inst2|uart_tx_u1|Add17~13\) # (GND)))
-- \inst2|uart_tx_u1|Add17~15\ = CARRY((!\inst2|uart_tx_u1|Add17~13\) # (!\inst2|uart_tx_u1|cnt_baud\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|cnt_baud\(7),
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add17~13\,
	combout => \inst2|uart_tx_u1|Add17~14_combout\,
	cout => \inst2|uart_tx_u1|Add17~15\);

-- Location: LCCOMB_X41_Y24_N30
\inst2|uart_tx_u1|cnt_baud~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|cnt_baud~1_combout\ = (\inst2|uart_tx_u1|Add17~14_combout\ & ((\inst2|uart_tx_u1|Equal3~1_combout\) # ((\inst2|uart_tx_u1|Equal3~0_combout\) # (!\inst2|uart_tx_u1|cnt_baud\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Equal3~1_combout\,
	datab => \inst2|uart_tx_u1|Add17~14_combout\,
	datac => \inst2|uart_tx_u1|cnt_baud\(0),
	datad => \inst2|uart_tx_u1|Equal3~0_combout\,
	combout => \inst2|uart_tx_u1|cnt_baud~1_combout\);

-- Location: FF_X41_Y24_N31
\inst2|uart_tx_u1|cnt_baud[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|cnt_baud~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|cnt_baud\(7));

-- Location: LCCOMB_X41_Y24_N20
\inst2|uart_tx_u1|Add17~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add17~16_combout\ = \inst2|uart_tx_u1|Add17~15\ $ (!\inst2|uart_tx_u1|cnt_baud\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|uart_tx_u1|cnt_baud\(8),
	cin => \inst2|uart_tx_u1|Add17~15\,
	combout => \inst2|uart_tx_u1|Add17~16_combout\);

-- Location: LCCOMB_X41_Y24_N24
\inst2|uart_tx_u1|cnt_baud~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|cnt_baud~0_combout\ = (\inst2|uart_tx_u1|Add17~16_combout\ & ((\inst2|uart_tx_u1|Equal3~1_combout\) # ((\inst2|uart_tx_u1|Equal3~0_combout\) # (!\inst2|uart_tx_u1|cnt_baud\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Equal3~1_combout\,
	datab => \inst2|uart_tx_u1|Add17~16_combout\,
	datac => \inst2|uart_tx_u1|cnt_baud\(0),
	datad => \inst2|uart_tx_u1|Equal3~0_combout\,
	combout => \inst2|uart_tx_u1|cnt_baud~0_combout\);

-- Location: FF_X41_Y24_N25
\inst2|uart_tx_u1|cnt_baud[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|cnt_baud~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|cnt_baud\(8));

-- Location: LCCOMB_X41_Y24_N28
\inst2|uart_tx_u1|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Equal3~0_combout\ = (((\inst2|uart_tx_u1|cnt_baud\(6)) # (!\inst2|uart_tx_u1|cnt_baud\(5))) # (!\inst2|uart_tx_u1|cnt_baud\(8))) # (!\inst2|uart_tx_u1|cnt_baud\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|cnt_baud\(7),
	datab => \inst2|uart_tx_u1|cnt_baud\(8),
	datac => \inst2|uart_tx_u1|cnt_baud\(5),
	datad => \inst2|uart_tx_u1|cnt_baud\(6),
	combout => \inst2|uart_tx_u1|Equal3~0_combout\);

-- Location: LCCOMB_X39_Y24_N12
\inst2|uart_tx_u1|Equal3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Equal3~2_combout\ = (\inst2|uart_tx_u1|Equal3~0_combout\) # ((\inst2|uart_tx_u1|Equal3~1_combout\) # (!\inst2|uart_tx_u1|cnt_baud\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Equal3~0_combout\,
	datac => \inst2|uart_tx_u1|Equal3~1_combout\,
	datad => \inst2|uart_tx_u1|cnt_baud\(0),
	combout => \inst2|uart_tx_u1|Equal3~2_combout\);

-- Location: LCCOMB_X39_Y24_N18
\inst2|uart_tx_u1|stage_tx.IDLE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|stage_tx.IDLE~0_combout\ = (\inst2|uart_tx_u1|stage_tx.IDLE~q\) # ((!\inst2|uart_tx_u1|Equal3~1_combout\ & (!\inst2|uart_tx_u1|Equal3~0_combout\ & \inst2|uart_tx_u1|cnt_baud\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Equal3~1_combout\,
	datab => \inst2|uart_tx_u1|Equal3~0_combout\,
	datac => \inst2|uart_tx_u1|stage_tx.IDLE~q\,
	datad => \inst2|uart_tx_u1|cnt_baud\(0),
	combout => \inst2|uart_tx_u1|stage_tx.IDLE~0_combout\);

-- Location: FF_X39_Y24_N19
\inst2|uart_tx_u1|stage_tx.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|stage_tx.IDLE~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|stage_tx.IDLE~q\);

-- Location: LCCOMB_X38_Y24_N26
\inst2|uart_tx_u1|always5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|always5~1_combout\ = (\inst2|uart_tx_u1|stage_tx.SEND_DATA~q\ & \inst2|uart_tx_u1|always5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|uart_tx_u1|stage_tx.SEND_DATA~q\,
	datad => \inst2|uart_tx_u1|always5~0_combout\,
	combout => \inst2|uart_tx_u1|always5~1_combout\);

-- Location: LCCOMB_X38_Y24_N10
\inst2|uart_tx_u1|cnt_rom[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|cnt_rom[1]~4_combout\ = (\inst2|uart_tx_u1|cnt_rom[0]~2_combout\ & (((\inst2|uart_tx_u1|cnt_rom\(1))))) # (!\inst2|uart_tx_u1|cnt_rom[0]~2_combout\ & (\inst2|uart_tx_u1|always5~1_combout\ & (\inst2|uart_tx_u1|cnt_rom\(1) $ 
-- (\inst2|uart_tx_u1|cnt_rom\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|always5~1_combout\,
	datab => \inst2|uart_tx_u1|cnt_rom[0]~2_combout\,
	datac => \inst2|uart_tx_u1|cnt_rom\(1),
	datad => \inst2|uart_tx_u1|cnt_rom\(0),
	combout => \inst2|uart_tx_u1|cnt_rom[1]~4_combout\);

-- Location: FF_X38_Y24_N11
\inst2|uart_tx_u1|cnt_rom[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|cnt_rom[1]~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|cnt_rom\(1));

-- Location: LCCOMB_X39_Y22_N0
\inst2|uart_tx_u1|enable~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|enable~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst2|uart_tx_u1|enable~feeder_combout\);

-- Location: LCCOMB_X38_Y24_N28
\inst2|uart_tx_u1|Add19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add19~0_combout\ = \inst2|uart_tx_u1|cnt_rom\(2) $ (((\inst2|uart_tx_u1|cnt_rom\(0) & \inst2|uart_tx_u1|cnt_rom\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|cnt_rom\(0),
	datab => \inst2|uart_tx_u1|cnt_rom\(2),
	datad => \inst2|uart_tx_u1|cnt_rom\(1),
	combout => \inst2|uart_tx_u1|Add19~0_combout\);

-- Location: LCCOMB_X38_Y24_N0
\inst2|uart_tx_u1|cnt_rom[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|cnt_rom[2]~3_combout\ = (\inst2|uart_tx_u1|cnt_rom[0]~2_combout\ & (((\inst2|uart_tx_u1|cnt_rom\(2))))) # (!\inst2|uart_tx_u1|cnt_rom[0]~2_combout\ & (((\inst2|uart_tx_u1|Add19~0_combout\)) # (!\inst2|uart_tx_u1|always5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|always5~1_combout\,
	datab => \inst2|uart_tx_u1|Add19~0_combout\,
	datac => \inst2|uart_tx_u1|cnt_rom\(2),
	datad => \inst2|uart_tx_u1|cnt_rom[0]~2_combout\,
	combout => \inst2|uart_tx_u1|cnt_rom[2]~3_combout\);

-- Location: FF_X38_Y24_N1
\inst2|uart_tx_u1|cnt_rom[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|cnt_rom[2]~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|cnt_rom\(2));

-- Location: LCCOMB_X38_Y24_N14
\inst2|uart_tx_u1|Add19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add19~1_combout\ = \inst2|uart_tx_u1|cnt_rom\(3) $ (((\inst2|uart_tx_u1|cnt_rom\(0) & (\inst2|uart_tx_u1|cnt_rom\(2) & \inst2|uart_tx_u1|cnt_rom\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|cnt_rom\(0),
	datab => \inst2|uart_tx_u1|cnt_rom\(2),
	datac => \inst2|uart_tx_u1|cnt_rom\(3),
	datad => \inst2|uart_tx_u1|cnt_rom\(1),
	combout => \inst2|uart_tx_u1|Add19~1_combout\);

-- Location: LCCOMB_X38_Y24_N4
\inst2|uart_tx_u1|cnt_rom[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|cnt_rom[3]~5_combout\ = (\inst2|uart_tx_u1|cnt_rom[0]~2_combout\ & (((\inst2|uart_tx_u1|cnt_rom\(3))))) # (!\inst2|uart_tx_u1|cnt_rom[0]~2_combout\ & (\inst2|uart_tx_u1|always5~1_combout\ & (\inst2|uart_tx_u1|Add19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|always5~1_combout\,
	datab => \inst2|uart_tx_u1|Add19~1_combout\,
	datac => \inst2|uart_tx_u1|cnt_rom\(3),
	datad => \inst2|uart_tx_u1|cnt_rom[0]~2_combout\,
	combout => \inst2|uart_tx_u1|cnt_rom[3]~5_combout\);

-- Location: FF_X38_Y24_N5
\inst2|uart_tx_u1|cnt_rom[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|cnt_rom[3]~5_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|cnt_rom\(3));

-- Location: LCCOMB_X38_Y24_N2
\inst2|uart_tx_u1|always0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|always0~1_combout\ = (\inst2|uart_tx_u1|cnt_rom\(0) & (\inst2|uart_tx_u1|cnt_rom\(2) & (!\inst2|uart_tx_u1|cnt_rom\(3) & !\inst2|uart_tx_u1|cnt_rom\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|cnt_rom\(0),
	datab => \inst2|uart_tx_u1|cnt_rom\(2),
	datac => \inst2|uart_tx_u1|cnt_rom\(3),
	datad => \inst2|uart_tx_u1|cnt_rom\(1),
	combout => \inst2|uart_tx_u1|always0~1_combout\);

-- Location: LCCOMB_X38_Y23_N8
\inst2|uart_tx_u1|Send_addr_w[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Send_addr_w[0]~0_combout\ = (\inst2|uart_tx_u1|stage_tx.STOP~q\ & (\inst2|uart_tx_u1|always0~1_combout\ & (!\inst2|uart_tx_u1|Equal4~4_combout\ & \inst2|uart_tx_u1|always0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|stage_tx.STOP~q\,
	datab => \inst2|uart_tx_u1|always0~1_combout\,
	datac => \inst2|uart_tx_u1|Equal4~4_combout\,
	datad => \inst2|uart_tx_u1|always0~0_combout\,
	combout => \inst2|uart_tx_u1|Send_addr_w[0]~0_combout\);

-- Location: FF_X39_Y22_N1
\inst2|uart_tx_u1|enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|enable~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \inst2|uart_tx_u1|Send_addr_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|enable~q\);

-- Location: LCCOMB_X37_Y42_N30
\inst1|T[0]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|T[0]~39_combout\ = !\inst1|T~-1594147105\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|T~-1594147105\(0),
	combout => \inst1|T[0]~39_combout\);

-- Location: FF_X37_Y42_N31
\inst1|T[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst1|T[0]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|T~-1594147105\(0));

-- Location: LCCOMB_X37_Y42_N4
\inst1|T[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|T[1]~13_combout\ = (\inst1|T~-1594147105\(0) & (\inst1|T~-1594147105\(1) $ (VCC))) # (!\inst1|T~-1594147105\(0) & (\inst1|T~-1594147105\(1) & VCC))
-- \inst1|T[1]~14\ = CARRY((\inst1|T~-1594147105\(0) & \inst1|T~-1594147105\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|T~-1594147105\(0),
	datab => \inst1|T~-1594147105\(1),
	datad => VCC,
	combout => \inst1|T[1]~13_combout\,
	cout => \inst1|T[1]~14\);

-- Location: FF_X37_Y42_N5
\inst1|T[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst1|T[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|T~-1594147105\(1));

-- Location: LCCOMB_X37_Y42_N6
\inst1|T[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|T[2]~15_combout\ = (\inst1|T~-1594147105\(2) & (!\inst1|T[1]~14\)) # (!\inst1|T~-1594147105\(2) & ((\inst1|T[1]~14\) # (GND)))
-- \inst1|T[2]~16\ = CARRY((!\inst1|T[1]~14\) # (!\inst1|T~-1594147105\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|T~-1594147105\(2),
	datad => VCC,
	cin => \inst1|T[1]~14\,
	combout => \inst1|T[2]~15_combout\,
	cout => \inst1|T[2]~16\);

-- Location: FF_X37_Y42_N7
\inst1|T[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst1|T[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|T~-1594147105\(2));

-- Location: LCCOMB_X37_Y42_N8
\inst1|T[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|T[3]~17_combout\ = (\inst1|T~-1594147105\(3) & (\inst1|T[2]~16\ $ (GND))) # (!\inst1|T~-1594147105\(3) & (!\inst1|T[2]~16\ & VCC))
-- \inst1|T[3]~18\ = CARRY((\inst1|T~-1594147105\(3) & !\inst1|T[2]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|T~-1594147105\(3),
	datad => VCC,
	cin => \inst1|T[2]~16\,
	combout => \inst1|T[3]~17_combout\,
	cout => \inst1|T[3]~18\);

-- Location: FF_X37_Y42_N9
\inst1|T[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst1|T[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|T~-1594147105\(3));

-- Location: LCCOMB_X37_Y42_N10
\inst1|T[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|T[4]~19_combout\ = (\inst1|T~-1594147105\(4) & (!\inst1|T[3]~18\)) # (!\inst1|T~-1594147105\(4) & ((\inst1|T[3]~18\) # (GND)))
-- \inst1|T[4]~20\ = CARRY((!\inst1|T[3]~18\) # (!\inst1|T~-1594147105\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|T~-1594147105\(4),
	datad => VCC,
	cin => \inst1|T[3]~18\,
	combout => \inst1|T[4]~19_combout\,
	cout => \inst1|T[4]~20\);

-- Location: FF_X37_Y42_N11
\inst1|T[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst1|T[4]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|T~-1594147105\(4));

-- Location: LCCOMB_X37_Y42_N12
\inst1|T[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|T[5]~21_combout\ = (\inst1|T~-1594147105\(5) & (\inst1|T[4]~20\ $ (GND))) # (!\inst1|T~-1594147105\(5) & (!\inst1|T[4]~20\ & VCC))
-- \inst1|T[5]~22\ = CARRY((\inst1|T~-1594147105\(5) & !\inst1|T[4]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|T~-1594147105\(5),
	datad => VCC,
	cin => \inst1|T[4]~20\,
	combout => \inst1|T[5]~21_combout\,
	cout => \inst1|T[5]~22\);

-- Location: FF_X37_Y42_N13
\inst1|T[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst1|T[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|T~-1594147105\(5));

-- Location: LCCOMB_X37_Y42_N14
\inst1|T[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|T[6]~23_combout\ = (\inst1|T~-1594147105\(6) & (!\inst1|T[5]~22\)) # (!\inst1|T~-1594147105\(6) & ((\inst1|T[5]~22\) # (GND)))
-- \inst1|T[6]~24\ = CARRY((!\inst1|T[5]~22\) # (!\inst1|T~-1594147105\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|T~-1594147105\(6),
	datad => VCC,
	cin => \inst1|T[5]~22\,
	combout => \inst1|T[6]~23_combout\,
	cout => \inst1|T[6]~24\);

-- Location: FF_X37_Y42_N15
\inst1|T[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst1|T[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|T~-1594147105\(6));

-- Location: LCCOMB_X37_Y42_N16
\inst1|T[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|T[7]~25_combout\ = (\inst1|T~-1594147105\(7) & (\inst1|T[6]~24\ $ (GND))) # (!\inst1|T~-1594147105\(7) & (!\inst1|T[6]~24\ & VCC))
-- \inst1|T[7]~26\ = CARRY((\inst1|T~-1594147105\(7) & !\inst1|T[6]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|T~-1594147105\(7),
	datad => VCC,
	cin => \inst1|T[6]~24\,
	combout => \inst1|T[7]~25_combout\,
	cout => \inst1|T[7]~26\);

-- Location: FF_X37_Y42_N17
\inst1|T[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst1|T[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|T~-1594147105\(7));

-- Location: LCCOMB_X37_Y42_N18
\inst1|T[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|T[8]~27_combout\ = (\inst1|T~-1594147105\(8) & (!\inst1|T[7]~26\)) # (!\inst1|T~-1594147105\(8) & ((\inst1|T[7]~26\) # (GND)))
-- \inst1|T[8]~28\ = CARRY((!\inst1|T[7]~26\) # (!\inst1|T~-1594147105\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|T~-1594147105\(8),
	datad => VCC,
	cin => \inst1|T[7]~26\,
	combout => \inst1|T[8]~27_combout\,
	cout => \inst1|T[8]~28\);

-- Location: FF_X37_Y42_N19
\inst1|T[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst1|T[8]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|T~-1594147105\(8));

-- Location: LCCOMB_X37_Y42_N20
\inst1|T[9]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|T[9]~29_combout\ = (\inst1|T~-1594147105\(9) & (\inst1|T[8]~28\ $ (GND))) # (!\inst1|T~-1594147105\(9) & (!\inst1|T[8]~28\ & VCC))
-- \inst1|T[9]~30\ = CARRY((\inst1|T~-1594147105\(9) & !\inst1|T[8]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|T~-1594147105\(9),
	datad => VCC,
	cin => \inst1|T[8]~28\,
	combout => \inst1|T[9]~29_combout\,
	cout => \inst1|T[9]~30\);

-- Location: FF_X37_Y42_N21
\inst1|T[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst1|T[9]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|T~-1594147105\(9));

-- Location: LCCOMB_X37_Y42_N22
\inst1|T[10]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|T[10]~31_combout\ = (\inst1|T~-1594147105\(10) & (!\inst1|T[9]~30\)) # (!\inst1|T~-1594147105\(10) & ((\inst1|T[9]~30\) # (GND)))
-- \inst1|T[10]~32\ = CARRY((!\inst1|T[9]~30\) # (!\inst1|T~-1594147105\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|T~-1594147105\(10),
	datad => VCC,
	cin => \inst1|T[9]~30\,
	combout => \inst1|T[10]~31_combout\,
	cout => \inst1|T[10]~32\);

-- Location: FF_X37_Y42_N23
\inst1|T[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst1|T[10]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|T~-1594147105\(10));

-- Location: LCCOMB_X37_Y42_N24
\inst1|T[11]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|T[11]~33_combout\ = (\inst1|T~-1594147105\(11) & (\inst1|T[10]~32\ $ (GND))) # (!\inst1|T~-1594147105\(11) & (!\inst1|T[10]~32\ & VCC))
-- \inst1|T[11]~34\ = CARRY((\inst1|T~-1594147105\(11) & !\inst1|T[10]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|T~-1594147105\(11),
	datad => VCC,
	cin => \inst1|T[10]~32\,
	combout => \inst1|T[11]~33_combout\,
	cout => \inst1|T[11]~34\);

-- Location: FF_X37_Y42_N25
\inst1|T[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst1|T[11]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|T~-1594147105\(11));

-- Location: LCCOMB_X37_Y42_N26
\inst1|T[12]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|T[12]~35_combout\ = (\inst1|T~-1594147105\(12) & (!\inst1|T[11]~34\)) # (!\inst1|T~-1594147105\(12) & ((\inst1|T[11]~34\) # (GND)))
-- \inst1|T[12]~36\ = CARRY((!\inst1|T[11]~34\) # (!\inst1|T~-1594147105\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|T~-1594147105\(12),
	datad => VCC,
	cin => \inst1|T[11]~34\,
	combout => \inst1|T[12]~35_combout\,
	cout => \inst1|T[12]~36\);

-- Location: FF_X37_Y42_N27
\inst1|T[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst1|T[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|T~-1594147105\(12));

-- Location: LCCOMB_X37_Y42_N28
\inst1|T[13]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|T[13]~37_combout\ = \inst1|T[12]~36\ $ (!\inst1|T~-1594147105\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|T~-1594147105\(13),
	cin => \inst1|T[12]~36\,
	combout => \inst1|T[13]~37_combout\);

-- Location: FF_X37_Y42_N29
\inst1|T[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst1|T[13]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|T~-1594147105\(13));

-- Location: CLKCTRL_G12
\inst1|T[13]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|T[13]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|T[13]~clkctrl_outclk\);

-- Location: IOIBUF_X7_Y0_N29
\column[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_column(0),
	o => \column[0]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\column[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_column(2),
	o => \column[2]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\column[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_column(1),
	o => \column[1]~input_o\);

-- Location: LCCOMB_X34_Y18_N12
\inst1|DSW~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|DSW~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|DSW~feeder_combout\);

-- Location: LCCOMB_X34_Y18_N16
\inst1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = ((!\column[1]~input_o\) # (!\column[2]~input_o\)) # (!\column[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \column[0]~input_o\,
	datab => \column[2]~input_o\,
	datac => \column[1]~input_o\,
	combout => \inst1|Equal0~0_combout\);

-- Location: FF_X34_Y18_N13
\inst1|DSW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|T[13]~clkctrl_outclk\,
	d => \inst1|DSW~feeder_combout\,
	clrn => \inst1|ALT_INV_Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|DSW~q\);

-- Location: LCCOMB_X34_Y18_N22
\inst1|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux1~0_combout\ = (\inst1|DSW~q\) # ((\column[0]~input_o\ & (!\column[2]~input_o\ & !\column[1]~input_o\)) # (!\column[0]~input_o\ & ((!\column[1]~input_o\) # (!\column[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \column[0]~input_o\,
	datab => \column[2]~input_o\,
	datac => \column[1]~input_o\,
	datad => \inst1|DSW~q\,
	combout => \inst1|Mux1~0_combout\);

-- Location: LCCOMB_X35_Y18_N24
\inst1|bond~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|bond~1_combout\ = \inst1|bond\(0) $ (((\column[0]~input_o\ & (\column[1]~input_o\ & \column[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \column[0]~input_o\,
	datab => \column[1]~input_o\,
	datac => \inst1|bond\(0),
	datad => \column[2]~input_o\,
	combout => \inst1|bond~1_combout\);

-- Location: FF_X35_Y18_N25
\inst1|bond[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|T[13]~clkctrl_outclk\,
	d => \inst1|bond~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bond\(0));

-- Location: LCCOMB_X35_Y18_N6
\inst1|bond~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|bond~0_combout\ = \inst1|bond\(1) $ (((!\inst1|Equal0~0_combout\ & \inst1|bond\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~0_combout\,
	datac => \inst1|bond\(1),
	datad => \inst1|bond\(0),
	combout => \inst1|bond~0_combout\);

-- Location: LCCOMB_X35_Y18_N10
\inst1|bond[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|bond[1]~feeder_combout\ = \inst1|bond~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|bond~0_combout\,
	combout => \inst1|bond[1]~feeder_combout\);

-- Location: FF_X35_Y18_N11
\inst1|bond[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|T[13]~clkctrl_outclk\,
	d => \inst1|bond[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bond\(1));

-- Location: LCCOMB_X34_Y18_N20
\inst1|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux1~1_combout\ = (\column[2]~input_o\ & ((\column[0]~input_o\) # ((\inst1|bond\(1) & !\inst1|DSW~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \column[0]~input_o\,
	datab => \column[2]~input_o\,
	datac => \inst1|bond\(1),
	datad => \inst1|DSW~q\,
	combout => \inst1|Mux1~1_combout\);

-- Location: LCCOMB_X34_Y18_N2
\inst1|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux1~2_combout\ = (\inst1|Mux1~0_combout\ & ((\inst1|key\(3)) # ((\column[1]~input_o\ & \inst1|Mux1~1_combout\)))) # (!\inst1|Mux1~0_combout\ & (\column[1]~input_o\ & ((\inst1|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux1~0_combout\,
	datab => \column[1]~input_o\,
	datac => \inst1|key\(3),
	datad => \inst1|Mux1~1_combout\,
	combout => \inst1|Mux1~2_combout\);

-- Location: FF_X34_Y18_N3
\inst1|key[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|T[13]~clkctrl_outclk\,
	d => \inst1|Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|key\(3));

-- Location: LCCOMB_X35_Y20_N6
\inst1|t~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|t~0_combout\ = ((\inst1|t~q\ & \inst1|Mux1~0_combout\)) # (!\inst1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~0_combout\,
	datac => \inst1|t~q\,
	datad => \inst1|Mux1~0_combout\,
	combout => \inst1|t~0_combout\);

-- Location: FF_X35_Y20_N7
\inst1|t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|T[13]~clkctrl_outclk\,
	d => \inst1|t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|t~q\);

-- Location: FF_X35_Y20_N9
\inst2|Select_mode_u1|LED_select[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \inst1|key\(3),
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \inst1|ALT_INV_t~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Select_mode_u1|LED_select\(3));

-- Location: LCCOMB_X35_Y18_N0
\inst1|key~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|key~1_combout\ = (\inst1|key\(1) & (((!\column[2]~input_o\) # (!\column[1]~input_o\)) # (!\column[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \column[0]~input_o\,
	datab => \column[1]~input_o\,
	datac => \column[2]~input_o\,
	datad => \inst1|key\(1),
	combout => \inst1|key~1_combout\);

-- Location: LCCOMB_X34_Y18_N30
\inst1|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux3~0_combout\ = (\column[0]~input_o\ & (\column[1]~input_o\ & !\inst1|DSW~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \column[0]~input_o\,
	datac => \column[1]~input_o\,
	datad => \inst1|DSW~q\,
	combout => \inst1|Mux3~0_combout\);

-- Location: LCCOMB_X35_Y18_N12
\inst1|key[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|key[1]~0_combout\ = (\inst1|Mux3~0_combout\ & (\inst1|bond~0_combout\)) # (!\inst1|Mux3~0_combout\ & ((\inst1|key~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bond~0_combout\,
	datab => \inst1|key~1_combout\,
	datad => \inst1|Mux3~0_combout\,
	combout => \inst1|key[1]~0_combout\);

-- Location: LCCOMB_X35_Y18_N20
\inst1|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux2~0_combout\ = (!\column[0]~input_o\ & (\column[1]~input_o\ & !\inst1|bond\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \column[0]~input_o\,
	datab => \column[1]~input_o\,
	datad => \inst1|bond\(1),
	combout => \inst1|Mux2~0_combout\);

-- Location: LCCOMB_X35_Y18_N14
\inst1|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux2~1_combout\ = (\column[0]~input_o\ & !\column[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \column[0]~input_o\,
	datac => \column[1]~input_o\,
	combout => \inst1|Mux2~1_combout\);

-- Location: LCCOMB_X35_Y18_N8
\inst1|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux3~2_combout\ = (\inst1|Mux2~1_combout\ & (\inst1|bond\(1) $ (((\inst1|Equal0~0_combout\ & !\inst1|bond\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~0_combout\,
	datab => \inst1|Mux2~1_combout\,
	datac => \inst1|bond\(1),
	datad => \inst1|bond\(0),
	combout => \inst1|Mux3~2_combout\);

-- Location: LCCOMB_X35_Y18_N18
\inst1|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux3~1_combout\ = (\inst1|key\(1) & ((\inst1|DSW~q\ & ((!\column[0]~input_o\) # (!\column[1]~input_o\))) # (!\inst1|DSW~q\ & (!\column[1]~input_o\ & !\column[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DSW~q\,
	datab => \column[1]~input_o\,
	datac => \column[0]~input_o\,
	datad => \inst1|key\(1),
	combout => \inst1|Mux3~1_combout\);

-- Location: LCCOMB_X35_Y18_N22
\inst1|Mux3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux3~3_combout\ = (\inst1|Mux3~1_combout\) # ((!\inst1|DSW~q\ & ((\inst1|Mux2~0_combout\) # (\inst1|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DSW~q\,
	datab => \inst1|Mux2~0_combout\,
	datac => \inst1|Mux3~2_combout\,
	datad => \inst1|Mux3~1_combout\,
	combout => \inst1|Mux3~3_combout\);

-- Location: FF_X35_Y18_N13
\inst1|key[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|T[13]~clkctrl_outclk\,
	d => \inst1|key[1]~0_combout\,
	asdata => \inst1|Mux3~3_combout\,
	sload => \column[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|key\(1));

-- Location: LCCOMB_X35_Y20_N10
\inst2|Select_mode_u1|LED_select[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Select_mode_u1|LED_select[1]~feeder_combout\ = \inst1|key\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|key\(1),
	combout => \inst2|Select_mode_u1|LED_select[1]~feeder_combout\);

-- Location: FF_X35_Y20_N11
\inst2|Select_mode_u1|LED_select[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|Select_mode_u1|LED_select[1]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \inst1|ALT_INV_t~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Select_mode_u1|LED_select\(1));

-- Location: LCCOMB_X34_Y18_N28
\inst1|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux4~0_combout\ = (\inst1|DSW~q\ & (!\column[1]~input_o\)) # (!\inst1|DSW~q\ & ((\inst1|bond\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DSW~q\,
	datab => \column[1]~input_o\,
	datad => \inst1|bond\(0),
	combout => \inst1|Mux4~0_combout\);

-- Location: LCCOMB_X34_Y18_N10
\inst1|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux4~1_combout\ = (\inst1|Mux4~0_combout\ & (\column[1]~input_o\ & ((\column[0]~input_o\) # (\column[2]~input_o\)))) # (!\inst1|Mux4~0_combout\ & (\column[0]~input_o\ & (\column[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \column[0]~input_o\,
	datab => \column[2]~input_o\,
	datac => \column[1]~input_o\,
	datad => \inst1|Mux4~0_combout\,
	combout => \inst1|Mux4~1_combout\);

-- Location: LCCOMB_X34_Y18_N26
\inst1|Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux4~2_combout\ = (\inst1|Mux4~1_combout\) # ((\inst1|Mux1~0_combout\ & \inst1|key\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux1~0_combout\,
	datac => \inst1|key\(0),
	datad => \inst1|Mux4~1_combout\,
	combout => \inst1|Mux4~2_combout\);

-- Location: FF_X34_Y18_N27
\inst1|key[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|T[13]~clkctrl_outclk\,
	d => \inst1|Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|key\(0));

-- Location: LCCOMB_X35_Y20_N30
\inst2|Select_mode_u1|LED_select[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Select_mode_u1|LED_select[0]~feeder_combout\ = \inst1|key\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|key\(0),
	combout => \inst2|Select_mode_u1|LED_select[0]~feeder_combout\);

-- Location: FF_X35_Y20_N31
\inst2|Select_mode_u1|LED_select[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|Select_mode_u1|LED_select[0]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \inst1|ALT_INV_t~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Select_mode_u1|LED_select\(0));

-- Location: LCCOMB_X34_Y18_N4
\inst1|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux2~2_combout\ = (\inst1|key\(2) & ((\inst1|DSW~q\ & ((!\column[0]~input_o\) # (!\column[1]~input_o\))) # (!\inst1|DSW~q\ & (!\column[1]~input_o\ & !\column[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DSW~q\,
	datab => \column[1]~input_o\,
	datac => \column[0]~input_o\,
	datad => \inst1|key\(2),
	combout => \inst1|Mux2~2_combout\);

-- Location: LCCOMB_X35_Y18_N4
\inst1|Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux2~3_combout\ = (\inst1|Mux2~1_combout\ & ((\inst1|Equal0~0_combout\ & ((\inst1|bond\(1)) # (\inst1|bond\(0)))) # (!\inst1|Equal0~0_combout\ & ((!\inst1|bond\(0)) # (!\inst1|bond\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~0_combout\,
	datab => \inst1|Mux2~1_combout\,
	datac => \inst1|bond\(1),
	datad => \inst1|bond\(0),
	combout => \inst1|Mux2~3_combout\);

-- Location: LCCOMB_X34_Y18_N18
\inst1|Mux2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux2~4_combout\ = (\inst1|Mux2~2_combout\) # ((!\inst1|DSW~q\ & ((\inst1|Mux2~0_combout\) # (\inst1|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DSW~q\,
	datab => \inst1|Mux2~2_combout\,
	datac => \inst1|Mux2~0_combout\,
	datad => \inst1|Mux2~3_combout\,
	combout => \inst1|Mux2~4_combout\);

-- Location: LCCOMB_X34_Y18_N24
\inst1|Mux2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux2~5_combout\ = (\column[2]~input_o\ & (((\inst1|Mux2~4_combout\)))) # (!\column[2]~input_o\ & (!\inst1|Mux3~0_combout\ & (\inst1|key\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~0_combout\,
	datab => \column[2]~input_o\,
	datac => \inst1|key\(2),
	datad => \inst1|Mux2~4_combout\,
	combout => \inst1|Mux2~5_combout\);

-- Location: FF_X34_Y18_N25
\inst1|key[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|T[13]~clkctrl_outclk\,
	d => \inst1|Mux2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|key\(2));

-- Location: LCCOMB_X35_Y20_N4
\inst2|Select_mode_u1|LED_select[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Select_mode_u1|LED_select[2]~feeder_combout\ = \inst1|key\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|key\(2),
	combout => \inst2|Select_mode_u1|LED_select[2]~feeder_combout\);

-- Location: FF_X35_Y20_N5
\inst2|Select_mode_u1|LED_select[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|Select_mode_u1|LED_select[2]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \inst1|ALT_INV_t~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Select_mode_u1|LED_select\(2));

-- Location: LCCOMB_X36_Y22_N24
\inst2|uart_tx_u1|addr[3]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr[3]~33_combout\ = (!\inst2|Select_mode_u1|LED_select\(3) & (\inst2|Select_mode_u1|LED_select\(1) & (!\inst2|Select_mode_u1|LED_select\(0) & \inst2|Select_mode_u1|LED_select\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(3),
	datab => \inst2|Select_mode_u1|LED_select\(1),
	datac => \inst2|Select_mode_u1|LED_select\(0),
	datad => \inst2|Select_mode_u1|LED_select\(2),
	combout => \inst2|uart_tx_u1|addr[3]~33_combout\);

-- Location: LCCOMB_X38_Y24_N12
\inst2|uart_tx_u1|always0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|always0~2_combout\ = (!\inst2|uart_tx_u1|cnt_rom\(0) & (\inst2|uart_tx_u1|cnt_rom\(2) & (!\inst2|uart_tx_u1|cnt_rom\(3) & \inst2|uart_tx_u1|cnt_rom\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|cnt_rom\(0),
	datab => \inst2|uart_tx_u1|cnt_rom\(2),
	datac => \inst2|uart_tx_u1|cnt_rom\(3),
	datad => \inst2|uart_tx_u1|cnt_rom\(1),
	combout => \inst2|uart_tx_u1|always0~2_combout\);

-- Location: LCCOMB_X38_Y22_N10
\inst2|uart_tx_u1|addr[3]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr[3]~34_combout\ = (!\inst2|uart_tx_u1|Equal4~4_combout\ & ((\inst2|uart_tx_u1|always0~2_combout\ & (\inst2|uart_tx_u1|addr[3]~33_combout\)) # (!\inst2|uart_tx_u1|always0~2_combout\ & ((\inst2|uart_tx_u1|always0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr[3]~33_combout\,
	datab => \inst2|uart_tx_u1|always0~1_combout\,
	datac => \inst2|uart_tx_u1|Equal4~4_combout\,
	datad => \inst2|uart_tx_u1|always0~2_combout\,
	combout => \inst2|uart_tx_u1|addr[3]~34_combout\);

-- Location: FF_X38_Y23_N7
\inst2|uart_tx_u1|Send_addr_w[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|Send_addr[0]~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \inst2|uart_tx_u1|Send_addr_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|Send_addr_w\(0));

-- Location: LCCOMB_X39_Y22_N14
\inst2|uart_tx_u1|Add16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add16~0_combout\ = \inst2|uart_tx_u1|addr\(0) $ (VCC)
-- \inst2|uart_tx_u1|Add16~1\ = CARRY(\inst2|uart_tx_u1|addr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|addr\(0),
	datad => VCC,
	combout => \inst2|uart_tx_u1|Add16~0_combout\,
	cout => \inst2|uart_tx_u1|Add16~1\);

-- Location: LCCOMB_X39_Y22_N10
\inst2|uart_tx_u1|Send_addr[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Send_addr[0]~0_combout\ = (\inst2|uart_tx_u1|enable~q\ & (\inst2|uart_tx_u1|Send_addr_w\(0))) # (!\inst2|uart_tx_u1|enable~q\ & ((\inst2|uart_tx_u1|always0~1_combout\ & ((\inst2|uart_tx_u1|Add16~0_combout\))) # 
-- (!\inst2|uart_tx_u1|always0~1_combout\ & (\inst2|uart_tx_u1|Send_addr_w\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr_w\(0),
	datab => \inst2|uart_tx_u1|enable~q\,
	datac => \inst2|uart_tx_u1|Add16~0_combout\,
	datad => \inst2|uart_tx_u1|always0~1_combout\,
	combout => \inst2|uart_tx_u1|Send_addr[0]~0_combout\);

-- Location: LCCOMB_X37_Y22_N30
\inst2|uart_tx_u1|AT|rom~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~26_combout\ = (\inst2|uart_tx_u1|addr\(0) & (\inst2|uart_tx_u1|addr\(2) $ (((!\inst2|uart_tx_u1|addr\(3) & !\inst2|uart_tx_u1|addr\(1)))))) # (!\inst2|uart_tx_u1|addr\(0) & ((\inst2|uart_tx_u1|addr\(3) & 
-- (!\inst2|uart_tx_u1|addr\(2) & \inst2|uart_tx_u1|addr\(1))) # (!\inst2|uart_tx_u1|addr\(3) & (\inst2|uart_tx_u1|addr\(2) & !\inst2|uart_tx_u1|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(0),
	datab => \inst2|uart_tx_u1|addr\(3),
	datac => \inst2|uart_tx_u1|addr\(2),
	datad => \inst2|uart_tx_u1|addr\(1),
	combout => \inst2|uart_tx_u1|AT|rom~26_combout\);

-- Location: LCCOMB_X36_Y22_N8
\inst2|uart_tx_u1|AT|rom~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~24_combout\ = (\inst2|uart_tx_u1|addr\(1) & ((\inst2|uart_tx_u1|addr\(3)) # ((\inst2|uart_tx_u1|addr\(0) & \inst2|uart_tx_u1|addr\(2))))) # (!\inst2|uart_tx_u1|addr\(1) & (\inst2|uart_tx_u1|addr\(2) $ (((\inst2|uart_tx_u1|addr\(0) 
-- & !\inst2|uart_tx_u1|addr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(0),
	datab => \inst2|uart_tx_u1|addr\(2),
	datac => \inst2|uart_tx_u1|addr\(3),
	datad => \inst2|uart_tx_u1|addr\(1),
	combout => \inst2|uart_tx_u1|AT|rom~24_combout\);

-- Location: LCCOMB_X36_Y22_N18
\inst2|uart_tx_u1|AT|rom~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~23_combout\ = (\inst2|uart_tx_u1|addr\(3) & ((\inst2|uart_tx_u1|addr\(2) & (\inst2|uart_tx_u1|addr\(0) $ (\inst2|uart_tx_u1|addr\(1)))) # (!\inst2|uart_tx_u1|addr\(2) & ((\inst2|uart_tx_u1|addr\(1)) # 
-- (!\inst2|uart_tx_u1|addr\(0)))))) # (!\inst2|uart_tx_u1|addr\(3) & (\inst2|uart_tx_u1|addr\(2) $ (((!\inst2|uart_tx_u1|addr\(0) & \inst2|uart_tx_u1|addr\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(3),
	datab => \inst2|uart_tx_u1|addr\(2),
	datac => \inst2|uart_tx_u1|addr\(0),
	datad => \inst2|uart_tx_u1|addr\(1),
	combout => \inst2|uart_tx_u1|AT|rom~23_combout\);

-- Location: LCCOMB_X36_Y22_N10
\inst2|uart_tx_u1|AT|rom~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~25_combout\ = (!\inst2|uart_tx_u1|addr\(4) & ((\inst2|uart_tx_u1|addr\(5) & (!\inst2|uart_tx_u1|AT|rom~24_combout\)) # (!\inst2|uart_tx_u1|addr\(5) & ((\inst2|uart_tx_u1|AT|rom~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(4),
	datab => \inst2|uart_tx_u1|addr\(5),
	datac => \inst2|uart_tx_u1|AT|rom~24_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~23_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~25_combout\);

-- Location: LCCOMB_X37_Y22_N4
\inst2|uart_tx_u1|AT|rom~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~27_combout\ = (\inst2|uart_tx_u1|AT|rom~25_combout\) # ((!\inst2|uart_tx_u1|addr\(5) & (\inst2|uart_tx_u1|addr\(4) & \inst2|uart_tx_u1|AT|rom~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(5),
	datab => \inst2|uart_tx_u1|addr\(4),
	datac => \inst2|uart_tx_u1|AT|rom~26_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~25_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~27_combout\);

-- Location: LCCOMB_X37_Y22_N12
\inst2|uart_tx_u1|AT|rom~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~14_combout\ = (\inst2|uart_tx_u1|addr\(0) & (\inst2|uart_tx_u1|addr\(5) & (\inst2|uart_tx_u1|addr\(2) $ (!\inst2|uart_tx_u1|addr\(1))))) # (!\inst2|uart_tx_u1|addr\(0) & (\inst2|uart_tx_u1|addr\(2) & ((!\inst2|uart_tx_u1|addr\(5)) 
-- # (!\inst2|uart_tx_u1|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(0),
	datab => \inst2|uart_tx_u1|addr\(2),
	datac => \inst2|uart_tx_u1|addr\(1),
	datad => \inst2|uart_tx_u1|addr\(5),
	combout => \inst2|uart_tx_u1|AT|rom~14_combout\);

-- Location: LCCOMB_X37_Y22_N28
\inst2|uart_tx_u1|AT|rom~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~10_combout\ = (\inst2|uart_tx_u1|addr\(0) & (\inst2|uart_tx_u1|addr\(2) & ((\inst2|uart_tx_u1|addr\(5)) # (!\inst2|uart_tx_u1|addr\(1))))) # (!\inst2|uart_tx_u1|addr\(0) & (\inst2|uart_tx_u1|addr\(5) $ 
-- (((\inst2|uart_tx_u1|addr\(2)) # (\inst2|uart_tx_u1|addr\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(0),
	datab => \inst2|uart_tx_u1|addr\(2),
	datac => \inst2|uart_tx_u1|addr\(1),
	datad => \inst2|uart_tx_u1|addr\(5),
	combout => \inst2|uart_tx_u1|AT|rom~10_combout\);

-- Location: LCCOMB_X37_Y22_N26
\inst2|uart_tx_u1|AT|rom~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~11_combout\ = (\inst2|uart_tx_u1|addr\(2) & (\inst2|uart_tx_u1|addr\(0) & (!\inst2|uart_tx_u1|addr\(1) & !\inst2|uart_tx_u1|addr\(5)))) # (!\inst2|uart_tx_u1|addr\(2) & (\inst2|uart_tx_u1|addr\(5) & (\inst2|uart_tx_u1|addr\(0) $ 
-- (!\inst2|uart_tx_u1|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(0),
	datab => \inst2|uart_tx_u1|addr\(2),
	datac => \inst2|uart_tx_u1|addr\(1),
	datad => \inst2|uart_tx_u1|addr\(5),
	combout => \inst2|uart_tx_u1|AT|rom~11_combout\);

-- Location: LCCOMB_X37_Y22_N24
\inst2|uart_tx_u1|AT|rom~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~12_combout\ = (\inst2|uart_tx_u1|addr\(5) & ((\inst2|uart_tx_u1|addr\(0) & ((\inst2|uart_tx_u1|addr\(1)))) # (!\inst2|uart_tx_u1|addr\(0) & (\inst2|uart_tx_u1|addr\(2))))) # (!\inst2|uart_tx_u1|addr\(5) & 
-- (\inst2|uart_tx_u1|addr\(0) $ (((\inst2|uart_tx_u1|addr\(2) & \inst2|uart_tx_u1|addr\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(0),
	datab => \inst2|uart_tx_u1|addr\(2),
	datac => \inst2|uart_tx_u1|addr\(1),
	datad => \inst2|uart_tx_u1|addr\(5),
	combout => \inst2|uart_tx_u1|AT|rom~12_combout\);

-- Location: LCCOMB_X37_Y22_N18
\inst2|uart_tx_u1|AT|rom~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~13_combout\ = (\inst2|uart_tx_u1|addr\(4) & (\inst2|uart_tx_u1|addr\(3))) # (!\inst2|uart_tx_u1|addr\(4) & ((\inst2|uart_tx_u1|addr\(3) & (\inst2|uart_tx_u1|AT|rom~11_combout\)) # (!\inst2|uart_tx_u1|addr\(3) & 
-- ((!\inst2|uart_tx_u1|AT|rom~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(4),
	datab => \inst2|uart_tx_u1|addr\(3),
	datac => \inst2|uart_tx_u1|AT|rom~11_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~12_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~13_combout\);

-- Location: LCCOMB_X37_Y22_N22
\inst2|uart_tx_u1|AT|rom~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~15_combout\ = (\inst2|uart_tx_u1|addr\(4) & ((\inst2|uart_tx_u1|AT|rom~13_combout\ & (\inst2|uart_tx_u1|AT|rom~14_combout\)) # (!\inst2|uart_tx_u1|AT|rom~13_combout\ & ((!\inst2|uart_tx_u1|AT|rom~10_combout\))))) # 
-- (!\inst2|uart_tx_u1|addr\(4) & (((\inst2|uart_tx_u1|AT|rom~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|AT|rom~14_combout\,
	datab => \inst2|uart_tx_u1|AT|rom~10_combout\,
	datac => \inst2|uart_tx_u1|addr\(4),
	datad => \inst2|uart_tx_u1|AT|rom~13_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~15_combout\);

-- Location: LCCOMB_X37_Y22_N20
\inst2|uart_tx_u1|AT|rom~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~16_combout\ = (\inst2|uart_tx_u1|addr\(0) & ((\inst2|uart_tx_u1|addr\(4)) # (\inst2|uart_tx_u1|addr\(2) $ (\inst2|uart_tx_u1|addr\(1))))) # (!\inst2|uart_tx_u1|addr\(0) & (!\inst2|uart_tx_u1|addr\(2) & (!\inst2|uart_tx_u1|addr\(1) 
-- & \inst2|uart_tx_u1|addr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(0),
	datab => \inst2|uart_tx_u1|addr\(2),
	datac => \inst2|uart_tx_u1|addr\(1),
	datad => \inst2|uart_tx_u1|addr\(4),
	combout => \inst2|uart_tx_u1|AT|rom~16_combout\);

-- Location: LCCOMB_X37_Y22_N8
\inst2|uart_tx_u1|AT|rom~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~20_combout\ = (\inst2|uart_tx_u1|addr\(1) & (\inst2|uart_tx_u1|addr\(0) $ (\inst2|uart_tx_u1|addr\(2) $ (\inst2|uart_tx_u1|addr\(4))))) # (!\inst2|uart_tx_u1|addr\(1) & (\inst2|uart_tx_u1|addr\(0) & (!\inst2|uart_tx_u1|addr\(2) & 
-- !\inst2|uart_tx_u1|addr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(0),
	datab => \inst2|uart_tx_u1|addr\(2),
	datac => \inst2|uart_tx_u1|addr\(1),
	datad => \inst2|uart_tx_u1|addr\(4),
	combout => \inst2|uart_tx_u1|AT|rom~20_combout\);

-- Location: LCCOMB_X37_Y22_N14
\inst2|uart_tx_u1|AT|rom~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~17_combout\ = (\inst2|uart_tx_u1|addr\(2) & (\inst2|uart_tx_u1|addr\(0) $ (((\inst2|uart_tx_u1|addr\(1)))))) # (!\inst2|uart_tx_u1|addr\(2) & ((\inst2|uart_tx_u1|addr\(0) & ((\inst2|uart_tx_u1|addr\(1)) # 
-- (!\inst2|uart_tx_u1|addr\(4)))) # (!\inst2|uart_tx_u1|addr\(0) & (\inst2|uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(0),
	datab => \inst2|uart_tx_u1|addr\(2),
	datac => \inst2|uart_tx_u1|addr\(4),
	datad => \inst2|uart_tx_u1|addr\(1),
	combout => \inst2|uart_tx_u1|AT|rom~17_combout\);

-- Location: LCCOMB_X37_Y22_N0
\inst2|uart_tx_u1|AT|rom~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~18_combout\ = (\inst2|uart_tx_u1|addr\(4) & (((\inst2|uart_tx_u1|addr\(2)) # (\inst2|uart_tx_u1|addr\(1))))) # (!\inst2|uart_tx_u1|addr\(4) & (\inst2|uart_tx_u1|addr\(2) $ (((\inst2|uart_tx_u1|addr\(0) & 
-- !\inst2|uart_tx_u1|addr\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(0),
	datab => \inst2|uart_tx_u1|addr\(2),
	datac => \inst2|uart_tx_u1|addr\(4),
	datad => \inst2|uart_tx_u1|addr\(1),
	combout => \inst2|uart_tx_u1|AT|rom~18_combout\);

-- Location: LCCOMB_X37_Y22_N2
\inst2|uart_tx_u1|AT|rom~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~19_combout\ = (\inst2|uart_tx_u1|addr\(5) & (\inst2|uart_tx_u1|addr\(3))) # (!\inst2|uart_tx_u1|addr\(5) & ((\inst2|uart_tx_u1|addr\(3) & (!\inst2|uart_tx_u1|AT|rom~17_combout\)) # (!\inst2|uart_tx_u1|addr\(3) & 
-- ((\inst2|uart_tx_u1|AT|rom~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(5),
	datab => \inst2|uart_tx_u1|addr\(3),
	datac => \inst2|uart_tx_u1|AT|rom~17_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~18_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~19_combout\);

-- Location: LCCOMB_X37_Y22_N6
\inst2|uart_tx_u1|AT|rom~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~21_combout\ = (\inst2|uart_tx_u1|addr\(5) & ((\inst2|uart_tx_u1|AT|rom~19_combout\ & ((\inst2|uart_tx_u1|AT|rom~20_combout\))) # (!\inst2|uart_tx_u1|AT|rom~19_combout\ & (\inst2|uart_tx_u1|AT|rom~16_combout\)))) # 
-- (!\inst2|uart_tx_u1|addr\(5) & (((\inst2|uart_tx_u1|AT|rom~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(5),
	datab => \inst2|uart_tx_u1|AT|rom~16_combout\,
	datac => \inst2|uart_tx_u1|AT|rom~20_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~19_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~21_combout\);

-- Location: LCCOMB_X37_Y22_N16
\inst2|uart_tx_u1|AT|rom~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~22_combout\ = (!\inst2|uart_tx_u1|addr\(7) & ((\inst2|uart_tx_u1|addr\(6) & (\inst2|uart_tx_u1|AT|rom~15_combout\)) # (!\inst2|uart_tx_u1|addr\(6) & ((\inst2|uart_tx_u1|AT|rom~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(7),
	datab => \inst2|uart_tx_u1|addr\(6),
	datac => \inst2|uart_tx_u1|AT|rom~15_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~21_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~22_combout\);

-- Location: LCCOMB_X37_Y22_N10
\inst2|uart_tx_u1|AT|rom~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~28_combout\ = (\inst2|uart_tx_u1|AT|rom~22_combout\) # ((\inst2|uart_tx_u1|addr\(7) & (!\inst2|uart_tx_u1|addr\(6) & \inst2|uart_tx_u1|AT|rom~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(7),
	datab => \inst2|uart_tx_u1|addr\(6),
	datac => \inst2|uart_tx_u1|AT|rom~27_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~22_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~28_combout\);

-- Location: LCCOMB_X37_Y24_N10
\inst2|uart_tx_u1|AT|rom~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~64_combout\ = (\inst2|uart_tx_u1|addr\(0) & ((\inst2|uart_tx_u1|addr\(2)) # (\inst2|uart_tx_u1|addr\(1) $ (!\inst2|uart_tx_u1|addr\(3))))) # (!\inst2|uart_tx_u1|addr\(0) & ((\inst2|uart_tx_u1|addr\(1) & 
-- ((\inst2|uart_tx_u1|addr\(3)))) # (!\inst2|uart_tx_u1|addr\(1) & (\inst2|uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(0),
	datab => \inst2|uart_tx_u1|addr\(1),
	datac => \inst2|uart_tx_u1|addr\(2),
	datad => \inst2|uart_tx_u1|addr\(3),
	combout => \inst2|uart_tx_u1|AT|rom~64_combout\);

-- Location: LCCOMB_X37_Y24_N22
\inst2|uart_tx_u1|AT|rom~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~61_combout\ = (\inst2|uart_tx_u1|addr\(0) & (\inst2|uart_tx_u1|addr\(3) $ (((\inst2|uart_tx_u1|addr\(1)) # (!\inst2|uart_tx_u1|addr\(2)))))) # (!\inst2|uart_tx_u1|addr\(0) & (\inst2|uart_tx_u1|addr\(2) $ 
-- (((\inst2|uart_tx_u1|addr\(1) & \inst2|uart_tx_u1|addr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(0),
	datab => \inst2|uart_tx_u1|addr\(1),
	datac => \inst2|uart_tx_u1|addr\(2),
	datad => \inst2|uart_tx_u1|addr\(3),
	combout => \inst2|uart_tx_u1|AT|rom~61_combout\);

-- Location: LCCOMB_X36_Y24_N14
\inst2|uart_tx_u1|AT|rom~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~62_combout\ = \inst2|uart_tx_u1|addr\(0) $ (((\inst2|uart_tx_u1|addr\(1) & (\inst2|uart_tx_u1|addr\(3) $ (!\inst2|uart_tx_u1|addr\(2)))) # (!\inst2|uart_tx_u1|addr\(1) & (\inst2|uart_tx_u1|addr\(3) & 
-- !\inst2|uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(0),
	datab => \inst2|uart_tx_u1|addr\(1),
	datac => \inst2|uart_tx_u1|addr\(3),
	datad => \inst2|uart_tx_u1|addr\(2),
	combout => \inst2|uart_tx_u1|AT|rom~62_combout\);

-- Location: LCCOMB_X37_Y24_N24
\inst2|uart_tx_u1|AT|rom~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~63_combout\ = (!\inst2|uart_tx_u1|addr\(5) & ((\inst2|uart_tx_u1|addr\(4) & (\inst2|uart_tx_u1|AT|rom~61_combout\)) # (!\inst2|uart_tx_u1|addr\(4) & ((\inst2|uart_tx_u1|AT|rom~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(4),
	datab => \inst2|uart_tx_u1|addr\(5),
	datac => \inst2|uart_tx_u1|AT|rom~61_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~62_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~63_combout\);

-- Location: LCCOMB_X37_Y24_N4
\inst2|uart_tx_u1|AT|rom~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~65_combout\ = (\inst2|uart_tx_u1|AT|rom~63_combout\) # ((!\inst2|uart_tx_u1|addr\(4) & (\inst2|uart_tx_u1|addr\(5) & !\inst2|uart_tx_u1|AT|rom~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(4),
	datab => \inst2|uart_tx_u1|addr\(5),
	datac => \inst2|uart_tx_u1|AT|rom~64_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~63_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~65_combout\);

-- Location: LCCOMB_X37_Y24_N20
\inst2|uart_tx_u1|AT|rom~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~52_combout\ = (\inst2|uart_tx_u1|addr\(5) & (\inst2|uart_tx_u1|addr\(4) $ (((\inst2|uart_tx_u1|addr\(1)) # (!\inst2|uart_tx_u1|addr\(2)))))) # (!\inst2|uart_tx_u1|addr\(5) & ((\inst2|uart_tx_u1|addr\(1)) # 
-- ((\inst2|uart_tx_u1|addr\(2) & !\inst2|uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(1),
	datab => \inst2|uart_tx_u1|addr\(5),
	datac => \inst2|uart_tx_u1|addr\(2),
	datad => \inst2|uart_tx_u1|addr\(4),
	combout => \inst2|uart_tx_u1|AT|rom~52_combout\);

-- Location: LCCOMB_X37_Y24_N8
\inst2|uart_tx_u1|AT|rom~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~48_combout\ = (!\inst2|uart_tx_u1|addr\(2) & ((\inst2|uart_tx_u1|addr\(1) & (\inst2|uart_tx_u1|addr\(5) & !\inst2|uart_tx_u1|addr\(4))) # (!\inst2|uart_tx_u1|addr\(1) & ((\inst2|uart_tx_u1|addr\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(1),
	datab => \inst2|uart_tx_u1|addr\(5),
	datac => \inst2|uart_tx_u1|addr\(2),
	datad => \inst2|uart_tx_u1|addr\(4),
	combout => \inst2|uart_tx_u1|AT|rom~48_combout\);

-- Location: LCCOMB_X37_Y24_N14
\inst2|uart_tx_u1|AT|rom~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~49_combout\ = (\inst2|uart_tx_u1|addr\(4) & ((\inst2|uart_tx_u1|addr\(1) & ((\inst2|uart_tx_u1|addr\(5)) # (\inst2|uart_tx_u1|addr\(2)))) # (!\inst2|uart_tx_u1|addr\(1) & ((!\inst2|uart_tx_u1|addr\(2)) # 
-- (!\inst2|uart_tx_u1|addr\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(1),
	datab => \inst2|uart_tx_u1|addr\(5),
	datac => \inst2|uart_tx_u1|addr\(2),
	datad => \inst2|uart_tx_u1|addr\(4),
	combout => \inst2|uart_tx_u1|AT|rom~49_combout\);

-- Location: LCCOMB_X37_Y24_N0
\inst2|uart_tx_u1|AT|rom~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~50_combout\ = (\inst2|uart_tx_u1|addr\(5) & (((\inst2|uart_tx_u1|addr\(1) & !\inst2|uart_tx_u1|addr\(2))) # (!\inst2|uart_tx_u1|addr\(4)))) # (!\inst2|uart_tx_u1|addr\(5) & (\inst2|uart_tx_u1|addr\(4) & 
-- ((\inst2|uart_tx_u1|addr\(1)) # (!\inst2|uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(1),
	datab => \inst2|uart_tx_u1|addr\(5),
	datac => \inst2|uart_tx_u1|addr\(2),
	datad => \inst2|uart_tx_u1|addr\(4),
	combout => \inst2|uart_tx_u1|AT|rom~50_combout\);

-- Location: LCCOMB_X37_Y24_N2
\inst2|uart_tx_u1|AT|rom~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~51_combout\ = (\inst2|uart_tx_u1|addr\(3) & ((\inst2|uart_tx_u1|addr\(0)) # ((!\inst2|uart_tx_u1|AT|rom~49_combout\)))) # (!\inst2|uart_tx_u1|addr\(3) & (!\inst2|uart_tx_u1|addr\(0) & ((!\inst2|uart_tx_u1|AT|rom~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(3),
	datab => \inst2|uart_tx_u1|addr\(0),
	datac => \inst2|uart_tx_u1|AT|rom~49_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~50_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~51_combout\);

-- Location: LCCOMB_X37_Y24_N26
\inst2|uart_tx_u1|AT|rom~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~53_combout\ = (\inst2|uart_tx_u1|addr\(0) & ((\inst2|uart_tx_u1|AT|rom~51_combout\ & (!\inst2|uart_tx_u1|AT|rom~52_combout\)) # (!\inst2|uart_tx_u1|AT|rom~51_combout\ & ((\inst2|uart_tx_u1|AT|rom~48_combout\))))) # 
-- (!\inst2|uart_tx_u1|addr\(0) & (((\inst2|uart_tx_u1|AT|rom~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(0),
	datab => \inst2|uart_tx_u1|AT|rom~52_combout\,
	datac => \inst2|uart_tx_u1|AT|rom~48_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~51_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~53_combout\);

-- Location: LCCOMB_X36_Y24_N16
\inst2|uart_tx_u1|AT|rom~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~54_combout\ = (\inst2|uart_tx_u1|addr\(0) & (!\inst2|uart_tx_u1|addr\(1) & (!\inst2|uart_tx_u1|addr\(3) & \inst2|uart_tx_u1|addr\(2)))) # (!\inst2|uart_tx_u1|addr\(0) & (\inst2|uart_tx_u1|addr\(3) & (\inst2|uart_tx_u1|addr\(1) $ 
-- (\inst2|uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(0),
	datab => \inst2|uart_tx_u1|addr\(1),
	datac => \inst2|uart_tx_u1|addr\(3),
	datad => \inst2|uart_tx_u1|addr\(2),
	combout => \inst2|uart_tx_u1|AT|rom~54_combout\);

-- Location: LCCOMB_X36_Y22_N14
\inst2|uart_tx_u1|AT|rom~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~58_combout\ = (\inst2|uart_tx_u1|addr\(0) & (!\inst2|uart_tx_u1|addr\(3) & (\inst2|uart_tx_u1|addr\(2) $ (\inst2|uart_tx_u1|addr\(1))))) # (!\inst2|uart_tx_u1|addr\(0) & ((\inst2|uart_tx_u1|addr\(1)) # 
-- ((!\inst2|uart_tx_u1|addr\(2) & \inst2|uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(0),
	datab => \inst2|uart_tx_u1|addr\(2),
	datac => \inst2|uart_tx_u1|addr\(3),
	datad => \inst2|uart_tx_u1|addr\(1),
	combout => \inst2|uart_tx_u1|AT|rom~58_combout\);

-- Location: LCCOMB_X37_Y24_N30
\inst2|uart_tx_u1|AT|rom~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~56_combout\ = (\inst2|uart_tx_u1|addr\(2) & ((\inst2|uart_tx_u1|addr\(3) & (\inst2|uart_tx_u1|addr\(0))) # (!\inst2|uart_tx_u1|addr\(3) & ((!\inst2|uart_tx_u1|addr\(1)))))) # (!\inst2|uart_tx_u1|addr\(2) & 
-- (\inst2|uart_tx_u1|addr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(0),
	datab => \inst2|uart_tx_u1|addr\(1),
	datac => \inst2|uart_tx_u1|addr\(2),
	datad => \inst2|uart_tx_u1|addr\(3),
	combout => \inst2|uart_tx_u1|AT|rom~56_combout\);

-- Location: LCCOMB_X37_Y24_N28
\inst2|uart_tx_u1|AT|rom~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~55_combout\ = (\inst2|uart_tx_u1|addr\(1) & (!\inst2|uart_tx_u1|addr\(3) & (\inst2|uart_tx_u1|addr\(0) $ (\inst2|uart_tx_u1|addr\(2))))) # (!\inst2|uart_tx_u1|addr\(1) & (\inst2|uart_tx_u1|addr\(0) & ((!\inst2|uart_tx_u1|addr\(3)) 
-- # (!\inst2|uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(0),
	datab => \inst2|uart_tx_u1|addr\(1),
	datac => \inst2|uart_tx_u1|addr\(2),
	datad => \inst2|uart_tx_u1|addr\(3),
	combout => \inst2|uart_tx_u1|AT|rom~55_combout\);

-- Location: LCCOMB_X37_Y24_N16
\inst2|uart_tx_u1|AT|rom~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~57_combout\ = (\inst2|uart_tx_u1|addr\(4) & (\inst2|uart_tx_u1|addr\(5))) # (!\inst2|uart_tx_u1|addr\(4) & ((\inst2|uart_tx_u1|addr\(5) & ((\inst2|uart_tx_u1|AT|rom~55_combout\))) # (!\inst2|uart_tx_u1|addr\(5) & 
-- (!\inst2|uart_tx_u1|AT|rom~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(4),
	datab => \inst2|uart_tx_u1|addr\(5),
	datac => \inst2|uart_tx_u1|AT|rom~56_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~55_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~57_combout\);

-- Location: LCCOMB_X37_Y24_N6
\inst2|uart_tx_u1|AT|rom~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~59_combout\ = (\inst2|uart_tx_u1|addr\(4) & ((\inst2|uart_tx_u1|AT|rom~57_combout\ & ((!\inst2|uart_tx_u1|AT|rom~58_combout\))) # (!\inst2|uart_tx_u1|AT|rom~57_combout\ & (!\inst2|uart_tx_u1|AT|rom~54_combout\)))) # 
-- (!\inst2|uart_tx_u1|addr\(4) & (((\inst2|uart_tx_u1|AT|rom~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|AT|rom~54_combout\,
	datab => \inst2|uart_tx_u1|addr\(4),
	datac => \inst2|uart_tx_u1|AT|rom~58_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~57_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~59_combout\);

-- Location: LCCOMB_X37_Y24_N12
\inst2|uart_tx_u1|AT|rom~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~60_combout\ = (!\inst2|uart_tx_u1|addr\(7) & ((\inst2|uart_tx_u1|addr\(6) & (\inst2|uart_tx_u1|AT|rom~53_combout\)) # (!\inst2|uart_tx_u1|addr\(6) & ((\inst2|uart_tx_u1|AT|rom~59_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(6),
	datab => \inst2|uart_tx_u1|addr\(7),
	datac => \inst2|uart_tx_u1|AT|rom~53_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~59_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~60_combout\);

-- Location: LCCOMB_X37_Y24_N18
\inst2|uart_tx_u1|AT|rom~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~66_combout\ = (\inst2|uart_tx_u1|AT|rom~60_combout\) # ((!\inst2|uart_tx_u1|addr\(6) & (\inst2|uart_tx_u1|addr\(7) & \inst2|uart_tx_u1|AT|rom~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(6),
	datab => \inst2|uart_tx_u1|addr\(7),
	datac => \inst2|uart_tx_u1|AT|rom~65_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~60_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~66_combout\);

-- Location: LCCOMB_X37_Y21_N0
\inst2|uart_tx_u1|AT|rom~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~77_combout\ = (\inst2|uart_tx_u1|addr\(2) & (\inst2|uart_tx_u1|addr\(0) & ((\inst2|uart_tx_u1|addr\(5)) # (!\inst2|uart_tx_u1|addr\(1))))) # (!\inst2|uart_tx_u1|addr\(2) & (\inst2|uart_tx_u1|addr\(0) $ (\inst2|uart_tx_u1|addr\(5) 
-- $ (\inst2|uart_tx_u1|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(0),
	datab => \inst2|uart_tx_u1|addr\(5),
	datac => \inst2|uart_tx_u1|addr\(1),
	datad => \inst2|uart_tx_u1|addr\(2),
	combout => \inst2|uart_tx_u1|AT|rom~77_combout\);

-- Location: LCCOMB_X37_Y21_N8
\inst2|uart_tx_u1|AT|rom~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~73_combout\ = (\inst2|uart_tx_u1|addr\(5) & ((\inst2|uart_tx_u1|addr\(0) $ (\inst2|uart_tx_u1|addr\(2))) # (!\inst2|uart_tx_u1|addr\(1)))) # (!\inst2|uart_tx_u1|addr\(5) & (\inst2|uart_tx_u1|addr\(0) $ 
-- ((\inst2|uart_tx_u1|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(0),
	datab => \inst2|uart_tx_u1|addr\(5),
	datac => \inst2|uart_tx_u1|addr\(1),
	datad => \inst2|uart_tx_u1|addr\(2),
	combout => \inst2|uart_tx_u1|AT|rom~73_combout\);

-- Location: LCCOMB_X37_Y21_N30
\inst2|uart_tx_u1|AT|rom~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~74_combout\ = (\inst2|uart_tx_u1|addr\(5) & ((\inst2|uart_tx_u1|addr\(0) & (\inst2|uart_tx_u1|addr\(1))) # (!\inst2|uart_tx_u1|addr\(0) & (!\inst2|uart_tx_u1|addr\(1) & !\inst2|uart_tx_u1|addr\(2))))) # 
-- (!\inst2|uart_tx_u1|addr\(5) & ((\inst2|uart_tx_u1|addr\(1) & (!\inst2|uart_tx_u1|addr\(0) & !\inst2|uart_tx_u1|addr\(2))) # (!\inst2|uart_tx_u1|addr\(1) & ((\inst2|uart_tx_u1|addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(0),
	datab => \inst2|uart_tx_u1|addr\(5),
	datac => \inst2|uart_tx_u1|addr\(1),
	datad => \inst2|uart_tx_u1|addr\(2),
	combout => \inst2|uart_tx_u1|AT|rom~74_combout\);

-- Location: LCCOMB_X37_Y21_N24
\inst2|uart_tx_u1|AT|rom~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~75_combout\ = (\inst2|uart_tx_u1|addr\(5) & (!\inst2|uart_tx_u1|addr\(2) & (\inst2|uart_tx_u1|addr\(1) $ (!\inst2|uart_tx_u1|addr\(0))))) # (!\inst2|uart_tx_u1|addr\(5) & (\inst2|uart_tx_u1|addr\(1) & 
-- (!\inst2|uart_tx_u1|addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(5),
	datab => \inst2|uart_tx_u1|addr\(1),
	datac => \inst2|uart_tx_u1|addr\(0),
	datad => \inst2|uart_tx_u1|addr\(2),
	combout => \inst2|uart_tx_u1|AT|rom~75_combout\);

-- Location: LCCOMB_X37_Y21_N6
\inst2|uart_tx_u1|AT|rom~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~76_combout\ = (\inst2|uart_tx_u1|addr\(4) & (\inst2|uart_tx_u1|addr\(3))) # (!\inst2|uart_tx_u1|addr\(4) & ((\inst2|uart_tx_u1|addr\(3) & (\inst2|uart_tx_u1|AT|rom~74_combout\)) # (!\inst2|uart_tx_u1|addr\(3) & 
-- ((\inst2|uart_tx_u1|AT|rom~75_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(4),
	datab => \inst2|uart_tx_u1|addr\(3),
	datac => \inst2|uart_tx_u1|AT|rom~74_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~75_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~76_combout\);

-- Location: LCCOMB_X37_Y21_N26
\inst2|uart_tx_u1|AT|rom~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~78_combout\ = (\inst2|uart_tx_u1|addr\(4) & ((\inst2|uart_tx_u1|AT|rom~76_combout\ & (\inst2|uart_tx_u1|AT|rom~77_combout\)) # (!\inst2|uart_tx_u1|AT|rom~76_combout\ & ((!\inst2|uart_tx_u1|AT|rom~73_combout\))))) # 
-- (!\inst2|uart_tx_u1|addr\(4) & (((\inst2|uart_tx_u1|AT|rom~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(4),
	datab => \inst2|uart_tx_u1|AT|rom~77_combout\,
	datac => \inst2|uart_tx_u1|AT|rom~73_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~76_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~78_combout\);

-- Location: LCCOMB_X37_Y21_N16
\inst2|uart_tx_u1|AT|rom~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~71_combout\ = (\inst2|uart_tx_u1|addr\(2) & (\inst2|uart_tx_u1|addr\(4) $ (((!\inst2|uart_tx_u1|addr\(1) & !\inst2|uart_tx_u1|addr\(3)))))) # (!\inst2|uart_tx_u1|addr\(2) & (((!\inst2|uart_tx_u1|addr\(1) & 
-- \inst2|uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(4),
	datab => \inst2|uart_tx_u1|addr\(2),
	datac => \inst2|uart_tx_u1|addr\(1),
	datad => \inst2|uart_tx_u1|addr\(3),
	combout => \inst2|uart_tx_u1|AT|rom~71_combout\);

-- Location: LCCOMB_X37_Y21_N14
\inst2|uart_tx_u1|AT|rom~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~68_combout\ = (\inst2|uart_tx_u1|addr\(1) & (((!\inst2|uart_tx_u1|addr\(2))) # (!\inst2|uart_tx_u1|addr\(4)))) # (!\inst2|uart_tx_u1|addr\(1) & ((\inst2|uart_tx_u1|addr\(3)) # ((\inst2|uart_tx_u1|addr\(4) & 
-- \inst2|uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(4),
	datab => \inst2|uart_tx_u1|addr\(2),
	datac => \inst2|uart_tx_u1|addr\(1),
	datad => \inst2|uart_tx_u1|addr\(3),
	combout => \inst2|uart_tx_u1|AT|rom~68_combout\);

-- Location: LCCOMB_X37_Y21_N28
\inst2|uart_tx_u1|AT|rom~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~69_combout\ = (\inst2|uart_tx_u1|addr\(4) & (\inst2|uart_tx_u1|addr\(3) & (\inst2|uart_tx_u1|addr\(2) $ (\inst2|uart_tx_u1|addr\(1))))) # (!\inst2|uart_tx_u1|addr\(4) & (\inst2|uart_tx_u1|addr\(2) $ (((\inst2|uart_tx_u1|addr\(1)) 
-- # (\inst2|uart_tx_u1|addr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(4),
	datab => \inst2|uart_tx_u1|addr\(2),
	datac => \inst2|uart_tx_u1|addr\(1),
	datad => \inst2|uart_tx_u1|addr\(3),
	combout => \inst2|uart_tx_u1|AT|rom~69_combout\);

-- Location: LCCOMB_X37_Y21_N22
\inst2|uart_tx_u1|AT|rom~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~70_combout\ = (\inst2|uart_tx_u1|addr\(0) & ((\inst2|uart_tx_u1|addr\(5)) # ((!\inst2|uart_tx_u1|AT|rom~68_combout\)))) # (!\inst2|uart_tx_u1|addr\(0) & (!\inst2|uart_tx_u1|addr\(5) & ((\inst2|uart_tx_u1|AT|rom~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(0),
	datab => \inst2|uart_tx_u1|addr\(5),
	datac => \inst2|uart_tx_u1|AT|rom~68_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~69_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~70_combout\);

-- Location: LCCOMB_X37_Y20_N0
\inst2|uart_tx_u1|AT|rom~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~67_combout\ = (\inst2|uart_tx_u1|addr\(1) & (\inst2|uart_tx_u1|addr\(3) & (\inst2|uart_tx_u1|addr\(2) $ (!\inst2|uart_tx_u1|addr\(4))))) # (!\inst2|uart_tx_u1|addr\(1) & ((\inst2|uart_tx_u1|addr\(2) & (!\inst2|uart_tx_u1|addr\(3) 
-- & !\inst2|uart_tx_u1|addr\(4))) # (!\inst2|uart_tx_u1|addr\(2) & ((\inst2|uart_tx_u1|addr\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(2),
	datab => \inst2|uart_tx_u1|addr\(3),
	datac => \inst2|uart_tx_u1|addr\(4),
	datad => \inst2|uart_tx_u1|addr\(1),
	combout => \inst2|uart_tx_u1|AT|rom~67_combout\);

-- Location: LCCOMB_X37_Y21_N18
\inst2|uart_tx_u1|AT|rom~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~72_combout\ = (\inst2|uart_tx_u1|addr\(5) & ((\inst2|uart_tx_u1|AT|rom~70_combout\ & (\inst2|uart_tx_u1|AT|rom~71_combout\)) # (!\inst2|uart_tx_u1|AT|rom~70_combout\ & ((!\inst2|uart_tx_u1|AT|rom~67_combout\))))) # 
-- (!\inst2|uart_tx_u1|addr\(5) & (((\inst2|uart_tx_u1|AT|rom~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(5),
	datab => \inst2|uart_tx_u1|AT|rom~71_combout\,
	datac => \inst2|uart_tx_u1|AT|rom~70_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~67_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~72_combout\);

-- Location: LCCOMB_X37_Y21_N4
\inst2|uart_tx_u1|AT|rom~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~79_combout\ = (!\inst2|uart_tx_u1|addr\(7) & ((\inst2|uart_tx_u1|addr\(6) & ((\inst2|uart_tx_u1|AT|rom~72_combout\))) # (!\inst2|uart_tx_u1|addr\(6) & (\inst2|uart_tx_u1|AT|rom~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(6),
	datab => \inst2|uart_tx_u1|addr\(7),
	datac => \inst2|uart_tx_u1|AT|rom~78_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~72_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~79_combout\);

-- Location: LCCOMB_X37_Y25_N4
\inst2|uart_tx_u1|AT|rom~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~83_combout\ = (\inst2|uart_tx_u1|addr\(0) & (\inst2|uart_tx_u1|addr\(3) & (\inst2|uart_tx_u1|addr\(1) $ (!\inst2|uart_tx_u1|addr\(2))))) # (!\inst2|uart_tx_u1|addr\(0) & (\inst2|uart_tx_u1|addr\(2) & (\inst2|uart_tx_u1|addr\(1) $ 
-- (\inst2|uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(0),
	datab => \inst2|uart_tx_u1|addr\(1),
	datac => \inst2|uart_tx_u1|addr\(3),
	datad => \inst2|uart_tx_u1|addr\(2),
	combout => \inst2|uart_tx_u1|AT|rom~83_combout\);

-- Location: LCCOMB_X36_Y22_N16
\inst2|uart_tx_u1|AT|rom~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~80_combout\ = (\inst2|uart_tx_u1|addr\(0) & ((\inst2|uart_tx_u1|addr\(2) & (\inst2|uart_tx_u1|addr\(3) $ (\inst2|uart_tx_u1|addr\(1)))) # (!\inst2|uart_tx_u1|addr\(2) & (!\inst2|uart_tx_u1|addr\(3) & 
-- !\inst2|uart_tx_u1|addr\(1))))) # (!\inst2|uart_tx_u1|addr\(0) & ((\inst2|uart_tx_u1|addr\(2) & (!\inst2|uart_tx_u1|addr\(3) & !\inst2|uart_tx_u1|addr\(1))) # (!\inst2|uart_tx_u1|addr\(2) & (\inst2|uart_tx_u1|addr\(3) & \inst2|uart_tx_u1|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(0),
	datab => \inst2|uart_tx_u1|addr\(2),
	datac => \inst2|uart_tx_u1|addr\(3),
	datad => \inst2|uart_tx_u1|addr\(1),
	combout => \inst2|uart_tx_u1|AT|rom~80_combout\);

-- Location: LCCOMB_X36_Y22_N26
\inst2|uart_tx_u1|AT|rom~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~81_combout\ = (\inst2|uart_tx_u1|addr\(0) & ((\inst2|uart_tx_u1|addr\(1) & ((\inst2|uart_tx_u1|addr\(3)))) # (!\inst2|uart_tx_u1|addr\(1) & (\inst2|uart_tx_u1|addr\(2))))) # (!\inst2|uart_tx_u1|addr\(0) & 
-- (\inst2|uart_tx_u1|addr\(3) $ (((!\inst2|uart_tx_u1|addr\(2) & \inst2|uart_tx_u1|addr\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(0),
	datab => \inst2|uart_tx_u1|addr\(2),
	datac => \inst2|uart_tx_u1|addr\(3),
	datad => \inst2|uart_tx_u1|addr\(1),
	combout => \inst2|uart_tx_u1|AT|rom~81_combout\);

-- Location: LCCOMB_X37_Y21_N2
\inst2|uart_tx_u1|AT|rom~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~82_combout\ = (!\inst2|uart_tx_u1|addr\(4) & ((\inst2|uart_tx_u1|addr\(5) & ((!\inst2|uart_tx_u1|AT|rom~81_combout\))) # (!\inst2|uart_tx_u1|addr\(5) & (!\inst2|uart_tx_u1|AT|rom~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(4),
	datab => \inst2|uart_tx_u1|addr\(5),
	datac => \inst2|uart_tx_u1|AT|rom~80_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~81_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~82_combout\);

-- Location: LCCOMB_X37_Y21_N12
\inst2|uart_tx_u1|AT|rom~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~84_combout\ = (\inst2|uart_tx_u1|AT|rom~82_combout\) # ((\inst2|uart_tx_u1|addr\(4) & (!\inst2|uart_tx_u1|addr\(5) & !\inst2|uart_tx_u1|AT|rom~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(4),
	datab => \inst2|uart_tx_u1|addr\(5),
	datac => \inst2|uart_tx_u1|AT|rom~83_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~82_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~84_combout\);

-- Location: LCCOMB_X37_Y21_N10
\inst2|uart_tx_u1|AT|rom~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~85_combout\ = (\inst2|uart_tx_u1|AT|rom~79_combout\) # ((!\inst2|uart_tx_u1|addr\(6) & (\inst2|uart_tx_u1|addr\(7) & \inst2|uart_tx_u1|AT|rom~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(6),
	datab => \inst2|uart_tx_u1|addr\(7),
	datac => \inst2|uart_tx_u1|AT|rom~79_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~84_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~85_combout\);

-- Location: LCCOMB_X39_Y23_N28
\inst2|uart_tx_u1|AT|rom~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~35_combout\ = (\inst2|uart_tx_u1|addr\(1) & (((!\inst2|uart_tx_u1|addr\(4) & !\inst2|uart_tx_u1|addr\(5))))) # (!\inst2|uart_tx_u1|addr\(1) & (!\inst2|uart_tx_u1|addr\(2) & (\inst2|uart_tx_u1|addr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(2),
	datab => \inst2|uart_tx_u1|addr\(1),
	datac => \inst2|uart_tx_u1|addr\(4),
	datad => \inst2|uart_tx_u1|addr\(5),
	combout => \inst2|uart_tx_u1|AT|rom~35_combout\);

-- Location: LCCOMB_X39_Y23_N8
\inst2|uart_tx_u1|AT|rom~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~39_combout\ = (\inst2|uart_tx_u1|addr\(1) & ((\inst2|uart_tx_u1|addr\(2) $ (!\inst2|uart_tx_u1|addr\(5))) # (!\inst2|uart_tx_u1|addr\(4)))) # (!\inst2|uart_tx_u1|addr\(1) & ((\inst2|uart_tx_u1|addr\(2) & 
-- ((\inst2|uart_tx_u1|addr\(5)))) # (!\inst2|uart_tx_u1|addr\(2) & (\inst2|uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(2),
	datab => \inst2|uart_tx_u1|addr\(1),
	datac => \inst2|uart_tx_u1|addr\(4),
	datad => \inst2|uart_tx_u1|addr\(5),
	combout => \inst2|uart_tx_u1|AT|rom~39_combout\);

-- Location: LCCOMB_X39_Y23_N22
\inst2|uart_tx_u1|AT|rom~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~36_combout\ = (\inst2|uart_tx_u1|addr\(4) & (\inst2|uart_tx_u1|addr\(1) $ (((\inst2|uart_tx_u1|addr\(5)))))) # (!\inst2|uart_tx_u1|addr\(4) & (\inst2|uart_tx_u1|addr\(5) & (\inst2|uart_tx_u1|addr\(1) $ 
-- (\inst2|uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(4),
	datab => \inst2|uart_tx_u1|addr\(1),
	datac => \inst2|uart_tx_u1|addr\(2),
	datad => \inst2|uart_tx_u1|addr\(5),
	combout => \inst2|uart_tx_u1|AT|rom~36_combout\);

-- Location: LCCOMB_X39_Y23_N24
\inst2|uart_tx_u1|AT|rom~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~37_combout\ = (\inst2|uart_tx_u1|addr\(2) & ((\inst2|uart_tx_u1|addr\(1) $ (!\inst2|uart_tx_u1|addr\(5))) # (!\inst2|uart_tx_u1|addr\(4)))) # (!\inst2|uart_tx_u1|addr\(2) & ((\inst2|uart_tx_u1|addr\(1) & 
-- ((!\inst2|uart_tx_u1|addr\(5)))) # (!\inst2|uart_tx_u1|addr\(1) & ((\inst2|uart_tx_u1|addr\(4)) # (\inst2|uart_tx_u1|addr\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(4),
	datab => \inst2|uart_tx_u1|addr\(1),
	datac => \inst2|uart_tx_u1|addr\(2),
	datad => \inst2|uart_tx_u1|addr\(5),
	combout => \inst2|uart_tx_u1|AT|rom~37_combout\);

-- Location: LCCOMB_X39_Y23_N10
\inst2|uart_tx_u1|AT|rom~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~38_combout\ = (\inst2|uart_tx_u1|addr\(0) & (\inst2|uart_tx_u1|addr\(3))) # (!\inst2|uart_tx_u1|addr\(0) & ((\inst2|uart_tx_u1|addr\(3) & (\inst2|uart_tx_u1|AT|rom~36_combout\)) # (!\inst2|uart_tx_u1|addr\(3) & 
-- ((\inst2|uart_tx_u1|AT|rom~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(0),
	datab => \inst2|uart_tx_u1|addr\(3),
	datac => \inst2|uart_tx_u1|AT|rom~36_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~37_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~38_combout\);

-- Location: LCCOMB_X39_Y23_N30
\inst2|uart_tx_u1|AT|rom~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~40_combout\ = (\inst2|uart_tx_u1|addr\(0) & ((\inst2|uart_tx_u1|AT|rom~38_combout\ & ((!\inst2|uart_tx_u1|AT|rom~39_combout\))) # (!\inst2|uart_tx_u1|AT|rom~38_combout\ & (\inst2|uart_tx_u1|AT|rom~35_combout\)))) # 
-- (!\inst2|uart_tx_u1|addr\(0) & (((\inst2|uart_tx_u1|AT|rom~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(0),
	datab => \inst2|uart_tx_u1|AT|rom~35_combout\,
	datac => \inst2|uart_tx_u1|AT|rom~39_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~38_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~40_combout\);

-- Location: LCCOMB_X39_Y23_N12
\inst2|uart_tx_u1|AT|rom~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~33_combout\ = (\inst2|uart_tx_u1|addr\(3) & (!\inst2|uart_tx_u1|addr\(5) & (\inst2|uart_tx_u1|addr\(4) $ (\inst2|uart_tx_u1|addr\(2))))) # (!\inst2|uart_tx_u1|addr\(3) & (\inst2|uart_tx_u1|addr\(4) & (\inst2|uart_tx_u1|addr\(2) & 
-- \inst2|uart_tx_u1|addr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(4),
	datab => \inst2|uart_tx_u1|addr\(2),
	datac => \inst2|uart_tx_u1|addr\(3),
	datad => \inst2|uart_tx_u1|addr\(5),
	combout => \inst2|uart_tx_u1|AT|rom~33_combout\);

-- Location: LCCOMB_X39_Y23_N0
\inst2|uart_tx_u1|AT|rom~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~29_combout\ = (\inst2|uart_tx_u1|addr\(4) & (\inst2|uart_tx_u1|addr\(2) & ((\inst2|uart_tx_u1|addr\(5))))) # (!\inst2|uart_tx_u1|addr\(4) & (\inst2|uart_tx_u1|addr\(3) $ (((\inst2|uart_tx_u1|addr\(2) & 
-- !\inst2|uart_tx_u1|addr\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(4),
	datab => \inst2|uart_tx_u1|addr\(2),
	datac => \inst2|uart_tx_u1|addr\(3),
	datad => \inst2|uart_tx_u1|addr\(5),
	combout => \inst2|uart_tx_u1|AT|rom~29_combout\);

-- Location: LCCOMB_X39_Y23_N14
\inst2|uart_tx_u1|AT|rom~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~30_combout\ = (\inst2|uart_tx_u1|addr\(3) & (\inst2|uart_tx_u1|addr\(4) & ((\inst2|uart_tx_u1|addr\(2)) # (\inst2|uart_tx_u1|addr\(5))))) # (!\inst2|uart_tx_u1|addr\(3) & ((\inst2|uart_tx_u1|addr\(5) & 
-- ((!\inst2|uart_tx_u1|addr\(2)))) # (!\inst2|uart_tx_u1|addr\(5) & (\inst2|uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(4),
	datab => \inst2|uart_tx_u1|addr\(2),
	datac => \inst2|uart_tx_u1|addr\(3),
	datad => \inst2|uart_tx_u1|addr\(5),
	combout => \inst2|uart_tx_u1|AT|rom~30_combout\);

-- Location: LCCOMB_X39_Y23_N20
\inst2|uart_tx_u1|AT|rom~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~31_combout\ = (\inst2|uart_tx_u1|addr\(2) & ((\inst2|uart_tx_u1|addr\(4) & ((!\inst2|uart_tx_u1|addr\(5)))) # (!\inst2|uart_tx_u1|addr\(4) & ((\inst2|uart_tx_u1|addr\(3)) # (\inst2|uart_tx_u1|addr\(5)))))) # 
-- (!\inst2|uart_tx_u1|addr\(2) & ((\inst2|uart_tx_u1|addr\(3) $ (\inst2|uart_tx_u1|addr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(4),
	datab => \inst2|uart_tx_u1|addr\(2),
	datac => \inst2|uart_tx_u1|addr\(3),
	datad => \inst2|uart_tx_u1|addr\(5),
	combout => \inst2|uart_tx_u1|AT|rom~31_combout\);

-- Location: LCCOMB_X39_Y23_N6
\inst2|uart_tx_u1|AT|rom~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~32_combout\ = (\inst2|uart_tx_u1|addr\(0) & (\inst2|uart_tx_u1|addr\(1))) # (!\inst2|uart_tx_u1|addr\(0) & ((\inst2|uart_tx_u1|addr\(1) & (\inst2|uart_tx_u1|AT|rom~30_combout\)) # (!\inst2|uart_tx_u1|addr\(1) & 
-- ((\inst2|uart_tx_u1|AT|rom~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(0),
	datab => \inst2|uart_tx_u1|addr\(1),
	datac => \inst2|uart_tx_u1|AT|rom~30_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~31_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~32_combout\);

-- Location: LCCOMB_X39_Y23_N18
\inst2|uart_tx_u1|AT|rom~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~34_combout\ = (\inst2|uart_tx_u1|addr\(0) & ((\inst2|uart_tx_u1|AT|rom~32_combout\ & (\inst2|uart_tx_u1|AT|rom~33_combout\)) # (!\inst2|uart_tx_u1|AT|rom~32_combout\ & ((\inst2|uart_tx_u1|AT|rom~29_combout\))))) # 
-- (!\inst2|uart_tx_u1|addr\(0) & (((\inst2|uart_tx_u1|AT|rom~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|AT|rom~33_combout\,
	datab => \inst2|uart_tx_u1|AT|rom~29_combout\,
	datac => \inst2|uart_tx_u1|addr\(0),
	datad => \inst2|uart_tx_u1|AT|rom~32_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~34_combout\);

-- Location: LCCOMB_X39_Y23_N4
\inst2|uart_tx_u1|AT|rom~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~41_combout\ = (!\inst2|uart_tx_u1|addr\(7) & ((\inst2|uart_tx_u1|addr\(6) & ((\inst2|uart_tx_u1|AT|rom~34_combout\))) # (!\inst2|uart_tx_u1|addr\(6) & (\inst2|uart_tx_u1|AT|rom~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(6),
	datab => \inst2|uart_tx_u1|addr\(7),
	datac => \inst2|uart_tx_u1|AT|rom~40_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~34_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~41_combout\);

-- Location: LCCOMB_X38_Y22_N16
\inst2|uart_tx_u1|AT|rom~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~45_combout\ = (\inst2|uart_tx_u1|addr\(0) & (!\inst2|uart_tx_u1|addr\(3) & ((\inst2|uart_tx_u1|addr\(2)) # (!\inst2|uart_tx_u1|addr\(1))))) # (!\inst2|uart_tx_u1|addr\(0) & ((\inst2|uart_tx_u1|addr\(2) & 
-- (!\inst2|uart_tx_u1|addr\(1) & !\inst2|uart_tx_u1|addr\(3))) # (!\inst2|uart_tx_u1|addr\(2) & ((\inst2|uart_tx_u1|addr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(0),
	datab => \inst2|uart_tx_u1|addr\(2),
	datac => \inst2|uart_tx_u1|addr\(1),
	datad => \inst2|uart_tx_u1|addr\(3),
	combout => \inst2|uart_tx_u1|AT|rom~45_combout\);

-- Location: LCCOMB_X38_Y22_N14
\inst2|uart_tx_u1|AT|rom~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~42_combout\ = (\inst2|uart_tx_u1|addr\(0) & ((\inst2|uart_tx_u1|addr\(2) & (!\inst2|uart_tx_u1|addr\(1) & !\inst2|uart_tx_u1|addr\(3))) # (!\inst2|uart_tx_u1|addr\(2) & ((\inst2|uart_tx_u1|addr\(3)))))) # 
-- (!\inst2|uart_tx_u1|addr\(0) & (\inst2|uart_tx_u1|addr\(3) $ (((!\inst2|uart_tx_u1|addr\(2) & \inst2|uart_tx_u1|addr\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(0),
	datab => \inst2|uart_tx_u1|addr\(2),
	datac => \inst2|uart_tx_u1|addr\(1),
	datad => \inst2|uart_tx_u1|addr\(3),
	combout => \inst2|uart_tx_u1|AT|rom~42_combout\);

-- Location: LCCOMB_X36_Y22_N12
\inst2|uart_tx_u1|AT|rom~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~43_combout\ = (\inst2|uart_tx_u1|addr\(1) & (\inst2|uart_tx_u1|addr\(3) $ (\inst2|uart_tx_u1|addr\(2) $ (!\inst2|uart_tx_u1|addr\(0))))) # (!\inst2|uart_tx_u1|addr\(1) & ((\inst2|uart_tx_u1|addr\(3) & (!\inst2|uart_tx_u1|addr\(2) 
-- & !\inst2|uart_tx_u1|addr\(0))) # (!\inst2|uart_tx_u1|addr\(3) & (\inst2|uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(3),
	datab => \inst2|uart_tx_u1|addr\(2),
	datac => \inst2|uart_tx_u1|addr\(1),
	datad => \inst2|uart_tx_u1|addr\(0),
	combout => \inst2|uart_tx_u1|AT|rom~43_combout\);

-- Location: LCCOMB_X39_Y23_N2
\inst2|uart_tx_u1|AT|rom~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~44_combout\ = (!\inst2|uart_tx_u1|addr\(5) & ((\inst2|uart_tx_u1|addr\(4) & (\inst2|uart_tx_u1|AT|rom~42_combout\)) # (!\inst2|uart_tx_u1|addr\(4) & ((!\inst2|uart_tx_u1|AT|rom~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|AT|rom~42_combout\,
	datab => \inst2|uart_tx_u1|addr\(5),
	datac => \inst2|uart_tx_u1|addr\(4),
	datad => \inst2|uart_tx_u1|AT|rom~43_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~44_combout\);

-- Location: LCCOMB_X39_Y23_N16
\inst2|uart_tx_u1|AT|rom~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~46_combout\ = (\inst2|uart_tx_u1|AT|rom~44_combout\) # ((\inst2|uart_tx_u1|addr\(5) & (!\inst2|uart_tx_u1|addr\(4) & \inst2|uart_tx_u1|AT|rom~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(5),
	datab => \inst2|uart_tx_u1|addr\(4),
	datac => \inst2|uart_tx_u1|AT|rom~45_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~44_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~46_combout\);

-- Location: LCCOMB_X39_Y23_N26
\inst2|uart_tx_u1|AT|rom~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~47_combout\ = (\inst2|uart_tx_u1|AT|rom~41_combout\) # ((!\inst2|uart_tx_u1|addr\(6) & (\inst2|uart_tx_u1|addr\(7) & \inst2|uart_tx_u1|AT|rom~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(6),
	datab => \inst2|uart_tx_u1|addr\(7),
	datac => \inst2|uart_tx_u1|AT|rom~41_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~46_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~47_combout\);

-- Location: LCCOMB_X38_Y23_N10
\inst2|uart_tx_u1|Equal4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Equal4~3_combout\ = (\inst2|uart_tx_u1|AT|rom~28_combout\) # ((\inst2|uart_tx_u1|AT|rom~66_combout\) # ((!\inst2|uart_tx_u1|AT|rom~47_combout\) # (!\inst2|uart_tx_u1|AT|rom~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|AT|rom~28_combout\,
	datab => \inst2|uart_tx_u1|AT|rom~66_combout\,
	datac => \inst2|uart_tx_u1|AT|rom~85_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~47_combout\,
	combout => \inst2|uart_tx_u1|Equal4~3_combout\);

-- Location: LCCOMB_X38_Y23_N6
\inst2|uart_tx_u1|Send_addr[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Send_addr[0]~1_combout\ = (\inst2|uart_tx_u1|Equal4~2_combout\ & (((\inst2|uart_tx_u1|Send_addr_w\(0))))) # (!\inst2|uart_tx_u1|Equal4~2_combout\ & ((\inst2|uart_tx_u1|Equal4~3_combout\ & ((\inst2|uart_tx_u1|Send_addr_w\(0)))) # 
-- (!\inst2|uart_tx_u1|Equal4~3_combout\ & (\inst2|uart_tx_u1|Send_addr[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[0]~0_combout\,
	datab => \inst2|uart_tx_u1|Equal4~2_combout\,
	datac => \inst2|uart_tx_u1|Send_addr_w\(0),
	datad => \inst2|uart_tx_u1|Equal4~3_combout\,
	combout => \inst2|uart_tx_u1|Send_addr[0]~1_combout\);

-- Location: LCCOMB_X38_Y19_N12
\inst2|uart_tx_u1|Add13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add13~0_combout\ = \inst2|uart_tx_u1|Send_addr[0]~1_combout\ $ (VCC)
-- \inst2|uart_tx_u1|Add13~1\ = CARRY(\inst2|uart_tx_u1|Send_addr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[0]~1_combout\,
	datad => VCC,
	combout => \inst2|uart_tx_u1|Add13~0_combout\,
	cout => \inst2|uart_tx_u1|Add13~1\);

-- Location: LCCOMB_X38_Y20_N14
\inst2|uart_tx_u1|Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add5~0_combout\ = \inst2|uart_tx_u1|Send_addr[0]~1_combout\ $ (VCC)
-- \inst2|uart_tx_u1|Add5~1\ = CARRY(\inst2|uart_tx_u1|Send_addr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[0]~1_combout\,
	datad => VCC,
	combout => \inst2|uart_tx_u1|Add5~0_combout\,
	cout => \inst2|uart_tx_u1|Add5~1\);

-- Location: LCCOMB_X39_Y21_N2
\inst2|uart_tx_u1|Add7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add7~0_combout\ = \inst2|uart_tx_u1|Send_addr[0]~1_combout\ $ (VCC)
-- \inst2|uart_tx_u1|Add7~1\ = CARRY(\inst2|uart_tx_u1|Send_addr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[0]~1_combout\,
	datad => VCC,
	combout => \inst2|uart_tx_u1|Add7~0_combout\,
	cout => \inst2|uart_tx_u1|Add7~1\);

-- Location: LCCOMB_X36_Y22_N4
\inst2|uart_tx_u1|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Mux7~0_combout\ = (\inst2|Select_mode_u1|LED_select\(1) & ((\inst2|Select_mode_u1|LED_select\(3)) # ((\inst2|uart_tx_u1|Add7~0_combout\)))) # (!\inst2|Select_mode_u1|LED_select\(1) & (!\inst2|Select_mode_u1|LED_select\(3) & 
-- (\inst2|uart_tx_u1|Add5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(1),
	datab => \inst2|Select_mode_u1|LED_select\(3),
	datac => \inst2|uart_tx_u1|Add5~0_combout\,
	datad => \inst2|uart_tx_u1|Add7~0_combout\,
	combout => \inst2|uart_tx_u1|Mux7~0_combout\);

-- Location: LCCOMB_X37_Y19_N8
\inst2|uart_tx_u1|Add15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add15~0_combout\ = \inst2|uart_tx_u1|Send_addr[0]~1_combout\ $ (VCC)
-- \inst2|uart_tx_u1|Add15~1\ = CARRY(\inst2|uart_tx_u1|Send_addr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[0]~1_combout\,
	datad => VCC,
	combout => \inst2|uart_tx_u1|Add15~0_combout\,
	cout => \inst2|uart_tx_u1|Add15~1\);

-- Location: LCCOMB_X36_Y22_N22
\inst2|uart_tx_u1|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Mux7~1_combout\ = (\inst2|Select_mode_u1|LED_select\(3) & ((\inst2|uart_tx_u1|Mux7~0_combout\ & ((\inst2|uart_tx_u1|Add15~0_combout\))) # (!\inst2|uart_tx_u1|Mux7~0_combout\ & (\inst2|uart_tx_u1|Add13~0_combout\)))) # 
-- (!\inst2|Select_mode_u1|LED_select\(3) & (((\inst2|uart_tx_u1|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(3),
	datab => \inst2|uart_tx_u1|Add13~0_combout\,
	datac => \inst2|uart_tx_u1|Mux7~0_combout\,
	datad => \inst2|uart_tx_u1|Add15~0_combout\,
	combout => \inst2|uart_tx_u1|Mux7~1_combout\);

-- Location: LCCOMB_X35_Y21_N0
\inst2|uart_tx_u1|Add11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add11~0_combout\ = \inst2|uart_tx_u1|Send_addr[0]~1_combout\ $ (VCC)
-- \inst2|uart_tx_u1|Add11~1\ = CARRY(\inst2|uart_tx_u1|Send_addr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[0]~1_combout\,
	datad => VCC,
	combout => \inst2|uart_tx_u1|Add11~0_combout\,
	cout => \inst2|uart_tx_u1|Add11~1\);

-- Location: LCCOMB_X38_Y21_N0
\inst2|uart_tx_u1|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add3~0_combout\ = \inst2|uart_tx_u1|Send_addr[0]~1_combout\ $ (VCC)
-- \inst2|uart_tx_u1|Add3~1\ = CARRY(\inst2|uart_tx_u1|Send_addr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[0]~1_combout\,
	datad => VCC,
	combout => \inst2|uart_tx_u1|Add3~0_combout\,
	cout => \inst2|uart_tx_u1|Add3~1\);

-- Location: LCCOMB_X37_Y20_N6
\inst2|uart_tx_u1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add1~0_combout\ = \inst2|uart_tx_u1|Send_addr[0]~1_combout\ $ (VCC)
-- \inst2|uart_tx_u1|Add1~1\ = CARRY(\inst2|uart_tx_u1|Send_addr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[0]~1_combout\,
	datad => VCC,
	combout => \inst2|uart_tx_u1|Add1~0_combout\,
	cout => \inst2|uart_tx_u1|Add1~1\);

-- Location: LCCOMB_X34_Y23_N2
\inst2|uart_tx_u1|Add9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add9~0_combout\ = \inst2|uart_tx_u1|Send_addr[0]~1_combout\ $ (VCC)
-- \inst2|uart_tx_u1|Add9~1\ = CARRY(\inst2|uart_tx_u1|Send_addr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[0]~1_combout\,
	datad => VCC,
	combout => \inst2|uart_tx_u1|Add9~0_combout\,
	cout => \inst2|uart_tx_u1|Add9~1\);

-- Location: LCCOMB_X36_Y22_N20
\inst2|uart_tx_u1|Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Mux7~2_combout\ = (\inst2|Select_mode_u1|LED_select\(3) & (((\inst2|Select_mode_u1|LED_select\(1)) # (\inst2|uart_tx_u1|Add9~0_combout\)))) # (!\inst2|Select_mode_u1|LED_select\(3) & (\inst2|uart_tx_u1|Add1~0_combout\ & 
-- (!\inst2|Select_mode_u1|LED_select\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(3),
	datab => \inst2|uart_tx_u1|Add1~0_combout\,
	datac => \inst2|Select_mode_u1|LED_select\(1),
	datad => \inst2|uart_tx_u1|Add9~0_combout\,
	combout => \inst2|uart_tx_u1|Mux7~2_combout\);

-- Location: LCCOMB_X36_Y22_N2
\inst2|uart_tx_u1|Mux7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Mux7~3_combout\ = (\inst2|Select_mode_u1|LED_select\(1) & ((\inst2|uart_tx_u1|Mux7~2_combout\ & (\inst2|uart_tx_u1|Add11~0_combout\)) # (!\inst2|uart_tx_u1|Mux7~2_combout\ & ((\inst2|uart_tx_u1|Add3~0_combout\))))) # 
-- (!\inst2|Select_mode_u1|LED_select\(1) & (((\inst2|uart_tx_u1|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(1),
	datab => \inst2|uart_tx_u1|Add11~0_combout\,
	datac => \inst2|uart_tx_u1|Add3~0_combout\,
	datad => \inst2|uart_tx_u1|Mux7~2_combout\,
	combout => \inst2|uart_tx_u1|Mux7~3_combout\);

-- Location: LCCOMB_X36_Y22_N28
\inst2|uart_tx_u1|Mux7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Mux7~4_combout\ = (\inst2|Select_mode_u1|LED_select\(2) & (\inst2|uart_tx_u1|Mux7~1_combout\)) # (!\inst2|Select_mode_u1|LED_select\(2) & ((\inst2|uart_tx_u1|Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(2),
	datac => \inst2|uart_tx_u1|Mux7~1_combout\,
	datad => \inst2|uart_tx_u1|Mux7~3_combout\,
	combout => \inst2|uart_tx_u1|Mux7~4_combout\);

-- Location: LCCOMB_X36_Y22_N0
\inst2|uart_tx_u1|addr[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr[0]~2_combout\ = (\inst2|Select_mode_u1|LED_select\(0) & ((\inst2|uart_tx_u1|Mux7~4_combout\))) # (!\inst2|Select_mode_u1|LED_select\(0) & (\inst2|uart_tx_u1|Send_addr[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[0]~1_combout\,
	datab => \inst2|Select_mode_u1|LED_select\(0),
	datad => \inst2|uart_tx_u1|Mux7~4_combout\,
	combout => \inst2|uart_tx_u1|addr[0]~2_combout\);

-- Location: LCCOMB_X35_Y19_N16
\inst2|uart_tx_u1|addr~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~7_combout\ = (\inst2|uart_tx_u1|addr~6_combout\ & (\inst2|uart_tx_u1|Send_addr_w\(0))) # (!\inst2|uart_tx_u1|addr~6_combout\ & ((\inst2|uart_tx_u1|Add16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr_w\(0),
	datac => \inst2|uart_tx_u1|Add16~0_combout\,
	datad => \inst2|uart_tx_u1|addr~6_combout\,
	combout => \inst2|uart_tx_u1|addr~7_combout\);

-- Location: LCCOMB_X38_Y24_N22
\inst2|uart_tx_u1|always0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|always0~3_combout\ = (\inst2|uart_tx_u1|always0~2_combout\ & (!\inst2|uart_tx_u1|Equal4~2_combout\ & !\inst2|uart_tx_u1|Equal4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|always0~2_combout\,
	datac => \inst2|uart_tx_u1|Equal4~2_combout\,
	datad => \inst2|uart_tx_u1|Equal4~3_combout\,
	combout => \inst2|uart_tx_u1|always0~3_combout\);

-- Location: FF_X36_Y22_N1
\inst2|uart_tx_u1|addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|addr[0]~2_combout\,
	asdata => \inst2|uart_tx_u1|addr~7_combout\,
	clrn => \rst_n~input_o\,
	sload => \inst2|uart_tx_u1|ALT_INV_always0~3_combout\,
	ena => \inst2|uart_tx_u1|addr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|addr\(0));

-- Location: LCCOMB_X39_Y22_N16
\inst2|uart_tx_u1|Add16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add16~2_combout\ = (\inst2|uart_tx_u1|addr\(1) & (!\inst2|uart_tx_u1|Add16~1\)) # (!\inst2|uart_tx_u1|addr\(1) & ((\inst2|uart_tx_u1|Add16~1\) # (GND)))
-- \inst2|uart_tx_u1|Add16~3\ = CARRY((!\inst2|uart_tx_u1|Add16~1\) # (!\inst2|uart_tx_u1|addr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(1),
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add16~1\,
	combout => \inst2|uart_tx_u1|Add16~2_combout\,
	cout => \inst2|uart_tx_u1|Add16~3\);

-- Location: LCCOMB_X38_Y23_N2
\inst2|uart_tx_u1|always1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|always1~0_combout\ = (\inst2|uart_tx_u1|always0~1_combout\ & (!\inst2|uart_tx_u1|enable~q\ & (!\inst2|uart_tx_u1|Equal4~2_combout\ & !\inst2|uart_tx_u1|Equal4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|always0~1_combout\,
	datab => \inst2|uart_tx_u1|enable~q\,
	datac => \inst2|uart_tx_u1|Equal4~2_combout\,
	datad => \inst2|uart_tx_u1|Equal4~3_combout\,
	combout => \inst2|uart_tx_u1|always1~0_combout\);

-- Location: LCCOMB_X38_Y23_N20
\inst2|uart_tx_u1|Send_addr[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Send_addr[1]~2_combout\ = (\inst2|uart_tx_u1|always1~0_combout\ & (\inst2|uart_tx_u1|Add16~2_combout\)) # (!\inst2|uart_tx_u1|always1~0_combout\ & ((\inst2|uart_tx_u1|Send_addr_w\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Add16~2_combout\,
	datac => \inst2|uart_tx_u1|Send_addr_w\(1),
	datad => \inst2|uart_tx_u1|always1~0_combout\,
	combout => \inst2|uart_tx_u1|Send_addr[1]~2_combout\);

-- Location: FF_X38_Y23_N21
\inst2|uart_tx_u1|Send_addr_w[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|Send_addr[1]~2_combout\,
	clrn => \rst_n~input_o\,
	ena => \inst2|uart_tx_u1|Send_addr_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|Send_addr_w\(1));

-- Location: LCCOMB_X37_Y23_N0
\inst2|uart_tx_u1|addr[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr[1]~3_combout\ = (\inst2|uart_tx_u1|addr~6_combout\ & ((\inst2|uart_tx_u1|Send_addr_w\(1)))) # (!\inst2|uart_tx_u1|addr~6_combout\ & (\inst2|uart_tx_u1|Add16~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Add16~2_combout\,
	datab => \inst2|uart_tx_u1|Send_addr_w\(1),
	datad => \inst2|uart_tx_u1|addr~6_combout\,
	combout => \inst2|uart_tx_u1|addr[1]~3_combout\);

-- Location: LCCOMB_X38_Y20_N16
\inst2|uart_tx_u1|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add5~2_combout\ = (\inst2|uart_tx_u1|Send_addr[1]~2_combout\ & (!\inst2|uart_tx_u1|Add5~1\)) # (!\inst2|uart_tx_u1|Send_addr[1]~2_combout\ & ((\inst2|uart_tx_u1|Add5~1\) # (GND)))
-- \inst2|uart_tx_u1|Add5~3\ = CARRY((!\inst2|uart_tx_u1|Add5~1\) # (!\inst2|uart_tx_u1|Send_addr[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add5~1\,
	combout => \inst2|uart_tx_u1|Add5~2_combout\,
	cout => \inst2|uart_tx_u1|Add5~3\);

-- Location: LCCOMB_X38_Y19_N14
\inst2|uart_tx_u1|Add13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add13~2_combout\ = (\inst2|uart_tx_u1|Send_addr[1]~2_combout\ & (!\inst2|uart_tx_u1|Add13~1\)) # (!\inst2|uart_tx_u1|Send_addr[1]~2_combout\ & ((\inst2|uart_tx_u1|Add13~1\) # (GND)))
-- \inst2|uart_tx_u1|Add13~3\ = CARRY((!\inst2|uart_tx_u1|Add13~1\) # (!\inst2|uart_tx_u1|Send_addr[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add13~1\,
	combout => \inst2|uart_tx_u1|Add13~2_combout\,
	cout => \inst2|uart_tx_u1|Add13~3\);

-- Location: LCCOMB_X37_Y20_N8
\inst2|uart_tx_u1|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add1~2_combout\ = (\inst2|uart_tx_u1|Send_addr[1]~2_combout\ & (!\inst2|uart_tx_u1|Add1~1\)) # (!\inst2|uart_tx_u1|Send_addr[1]~2_combout\ & ((\inst2|uart_tx_u1|Add1~1\) # (GND)))
-- \inst2|uart_tx_u1|Add1~3\ = CARRY((!\inst2|uart_tx_u1|Add1~1\) # (!\inst2|uart_tx_u1|Send_addr[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add1~1\,
	combout => \inst2|uart_tx_u1|Add1~2_combout\,
	cout => \inst2|uart_tx_u1|Add1~3\);

-- Location: LCCOMB_X34_Y23_N4
\inst2|uart_tx_u1|Add9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add9~2_combout\ = (\inst2|uart_tx_u1|Send_addr[1]~2_combout\ & (!\inst2|uart_tx_u1|Add9~1\)) # (!\inst2|uart_tx_u1|Send_addr[1]~2_combout\ & ((\inst2|uart_tx_u1|Add9~1\) # (GND)))
-- \inst2|uart_tx_u1|Add9~3\ = CARRY((!\inst2|uart_tx_u1|Add9~1\) # (!\inst2|uart_tx_u1|Send_addr[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add9~1\,
	combout => \inst2|uart_tx_u1|Add9~2_combout\,
	cout => \inst2|uart_tx_u1|Add9~3\);

-- Location: LCCOMB_X37_Y20_N2
\inst2|uart_tx_u1|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Mux6~0_combout\ = (\inst2|Select_mode_u1|LED_select\(2) & (\inst2|Select_mode_u1|LED_select\(3))) # (!\inst2|Select_mode_u1|LED_select\(2) & ((\inst2|Select_mode_u1|LED_select\(3) & ((\inst2|uart_tx_u1|Add9~2_combout\))) # 
-- (!\inst2|Select_mode_u1|LED_select\(3) & (\inst2|uart_tx_u1|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(2),
	datab => \inst2|Select_mode_u1|LED_select\(3),
	datac => \inst2|uart_tx_u1|Add1~2_combout\,
	datad => \inst2|uart_tx_u1|Add9~2_combout\,
	combout => \inst2|uart_tx_u1|Mux6~0_combout\);

-- Location: LCCOMB_X37_Y20_N24
\inst2|uart_tx_u1|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Mux6~1_combout\ = (\inst2|Select_mode_u1|LED_select\(2) & ((\inst2|uart_tx_u1|Mux6~0_combout\ & ((\inst2|uart_tx_u1|Add13~2_combout\))) # (!\inst2|uart_tx_u1|Mux6~0_combout\ & (\inst2|uart_tx_u1|Add5~2_combout\)))) # 
-- (!\inst2|Select_mode_u1|LED_select\(2) & (((\inst2|uart_tx_u1|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(2),
	datab => \inst2|uart_tx_u1|Add5~2_combout\,
	datac => \inst2|uart_tx_u1|Add13~2_combout\,
	datad => \inst2|uart_tx_u1|Mux6~0_combout\,
	combout => \inst2|uart_tx_u1|Mux6~1_combout\);

-- Location: LCCOMB_X37_Y19_N10
\inst2|uart_tx_u1|Add15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add15~2_combout\ = (\inst2|uart_tx_u1|Send_addr[1]~2_combout\ & (\inst2|uart_tx_u1|Add15~1\ & VCC)) # (!\inst2|uart_tx_u1|Send_addr[1]~2_combout\ & (!\inst2|uart_tx_u1|Add15~1\))
-- \inst2|uart_tx_u1|Add15~3\ = CARRY((!\inst2|uart_tx_u1|Send_addr[1]~2_combout\ & !\inst2|uart_tx_u1|Add15~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add15~1\,
	combout => \inst2|uart_tx_u1|Add15~2_combout\,
	cout => \inst2|uart_tx_u1|Add15~3\);

-- Location: LCCOMB_X38_Y21_N2
\inst2|uart_tx_u1|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add3~2_combout\ = (\inst2|uart_tx_u1|Send_addr[1]~2_combout\ & (\inst2|uart_tx_u1|Add3~1\ & VCC)) # (!\inst2|uart_tx_u1|Send_addr[1]~2_combout\ & (!\inst2|uart_tx_u1|Add3~1\))
-- \inst2|uart_tx_u1|Add3~3\ = CARRY((!\inst2|uart_tx_u1|Send_addr[1]~2_combout\ & !\inst2|uart_tx_u1|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add3~1\,
	combout => \inst2|uart_tx_u1|Add3~2_combout\,
	cout => \inst2|uart_tx_u1|Add3~3\);

-- Location: LCCOMB_X39_Y21_N4
\inst2|uart_tx_u1|Add7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add7~2_combout\ = (\inst2|uart_tx_u1|Send_addr[1]~2_combout\ & (\inst2|uart_tx_u1|Add7~1\ & VCC)) # (!\inst2|uart_tx_u1|Send_addr[1]~2_combout\ & (!\inst2|uart_tx_u1|Add7~1\))
-- \inst2|uart_tx_u1|Add7~3\ = CARRY((!\inst2|uart_tx_u1|Send_addr[1]~2_combout\ & !\inst2|uart_tx_u1|Add7~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add7~1\,
	combout => \inst2|uart_tx_u1|Add7~2_combout\,
	cout => \inst2|uart_tx_u1|Add7~3\);

-- Location: LCCOMB_X36_Y21_N22
\inst2|uart_tx_u1|Mux6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Mux6~5_combout\ = (\inst2|Select_mode_u1|LED_select\(2) & (((\inst2|uart_tx_u1|Add7~2_combout\) # (\inst2|Select_mode_u1|LED_select\(3))))) # (!\inst2|Select_mode_u1|LED_select\(2) & (\inst2|uart_tx_u1|Add3~2_combout\ & 
-- ((!\inst2|Select_mode_u1|LED_select\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Add3~2_combout\,
	datab => \inst2|Select_mode_u1|LED_select\(2),
	datac => \inst2|uart_tx_u1|Add7~2_combout\,
	datad => \inst2|Select_mode_u1|LED_select\(3),
	combout => \inst2|uart_tx_u1|Mux6~5_combout\);

-- Location: LCCOMB_X35_Y21_N2
\inst2|uart_tx_u1|Add11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add11~2_combout\ = (\inst2|uart_tx_u1|Send_addr[1]~2_combout\ & (\inst2|uart_tx_u1|Add11~1\ & VCC)) # (!\inst2|uart_tx_u1|Send_addr[1]~2_combout\ & (!\inst2|uart_tx_u1|Add11~1\))
-- \inst2|uart_tx_u1|Add11~3\ = CARRY((!\inst2|uart_tx_u1|Send_addr[1]~2_combout\ & !\inst2|uart_tx_u1|Add11~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add11~1\,
	combout => \inst2|uart_tx_u1|Add11~2_combout\,
	cout => \inst2|uart_tx_u1|Add11~3\);

-- Location: LCCOMB_X36_Y21_N24
\inst2|uart_tx_u1|Mux6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Mux6~6_combout\ = (\inst2|Select_mode_u1|LED_select\(3) & ((\inst2|uart_tx_u1|Mux6~5_combout\ & (\inst2|uart_tx_u1|Add15~2_combout\)) # (!\inst2|uart_tx_u1|Mux6~5_combout\ & ((\inst2|uart_tx_u1|Add11~2_combout\))))) # 
-- (!\inst2|Select_mode_u1|LED_select\(3) & (((\inst2|uart_tx_u1|Mux6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(3),
	datab => \inst2|uart_tx_u1|Add15~2_combout\,
	datac => \inst2|uart_tx_u1|Mux6~5_combout\,
	datad => \inst2|uart_tx_u1|Add11~2_combout\,
	combout => \inst2|uart_tx_u1|Mux6~6_combout\);

-- Location: LCCOMB_X39_Y20_N14
\inst2|uart_tx_u1|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add4~0_combout\ = \inst2|uart_tx_u1|Send_addr[1]~2_combout\ $ (VCC)
-- \inst2|uart_tx_u1|Add4~1\ = CARRY(\inst2|uart_tx_u1|Send_addr[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	combout => \inst2|uart_tx_u1|Add4~0_combout\,
	cout => \inst2|uart_tx_u1|Add4~1\);

-- Location: LCCOMB_X39_Y21_N18
\inst2|uart_tx_u1|Add12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add12~0_combout\ = \inst2|uart_tx_u1|Send_addr[1]~2_combout\ $ (VCC)
-- \inst2|uart_tx_u1|Add12~1\ = CARRY(\inst2|uart_tx_u1|Send_addr[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	combout => \inst2|uart_tx_u1|Add12~0_combout\,
	cout => \inst2|uart_tx_u1|Add12~1\);

-- Location: LCCOMB_X35_Y20_N14
\inst2|uart_tx_u1|Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add8~0_combout\ = \inst2|uart_tx_u1|Send_addr[1]~2_combout\ $ (VCC)
-- \inst2|uart_tx_u1|Add8~1\ = CARRY(\inst2|uart_tx_u1|Send_addr[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	combout => \inst2|uart_tx_u1|Add8~0_combout\,
	cout => \inst2|uart_tx_u1|Add8~1\);

-- Location: LCCOMB_X34_Y23_N18
\inst2|uart_tx_u1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add0~0_combout\ = \inst2|uart_tx_u1|Send_addr[1]~2_combout\ $ (VCC)
-- \inst2|uart_tx_u1|Add0~1\ = CARRY(\inst2|uart_tx_u1|Send_addr[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	combout => \inst2|uart_tx_u1|Add0~0_combout\,
	cout => \inst2|uart_tx_u1|Add0~1\);

-- Location: LCCOMB_X35_Y20_N12
\inst2|uart_tx_u1|Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Mux6~2_combout\ = (\inst2|Select_mode_u1|LED_select\(2) & (((\inst2|Select_mode_u1|LED_select\(3))))) # (!\inst2|Select_mode_u1|LED_select\(2) & ((\inst2|Select_mode_u1|LED_select\(3) & (\inst2|uart_tx_u1|Add8~0_combout\)) # 
-- (!\inst2|Select_mode_u1|LED_select\(3) & ((\inst2|uart_tx_u1|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(2),
	datab => \inst2|uart_tx_u1|Add8~0_combout\,
	datac => \inst2|uart_tx_u1|Add0~0_combout\,
	datad => \inst2|Select_mode_u1|LED_select\(3),
	combout => \inst2|uart_tx_u1|Mux6~2_combout\);

-- Location: LCCOMB_X35_Y20_N2
\inst2|uart_tx_u1|Mux6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Mux6~3_combout\ = (\inst2|Select_mode_u1|LED_select\(2) & ((\inst2|uart_tx_u1|Mux6~2_combout\ & ((\inst2|uart_tx_u1|Add12~0_combout\))) # (!\inst2|uart_tx_u1|Mux6~2_combout\ & (\inst2|uart_tx_u1|Add4~0_combout\)))) # 
-- (!\inst2|Select_mode_u1|LED_select\(2) & (((\inst2|uart_tx_u1|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(2),
	datab => \inst2|uart_tx_u1|Add4~0_combout\,
	datac => \inst2|uart_tx_u1|Add12~0_combout\,
	datad => \inst2|uart_tx_u1|Mux6~2_combout\,
	combout => \inst2|uart_tx_u1|Mux6~3_combout\);

-- Location: LCCOMB_X35_Y20_N28
\inst2|uart_tx_u1|Mux6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Mux6~4_combout\ = (\inst2|Select_mode_u1|LED_select\(0) & (((\inst2|Select_mode_u1|LED_select\(1))))) # (!\inst2|Select_mode_u1|LED_select\(0) & ((\inst2|Select_mode_u1|LED_select\(1) & (\inst2|uart_tx_u1|Send_addr[1]~2_combout\)) # 
-- (!\inst2|Select_mode_u1|LED_select\(1) & ((\inst2|uart_tx_u1|Mux6~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[1]~2_combout\,
	datab => \inst2|Select_mode_u1|LED_select\(0),
	datac => \inst2|Select_mode_u1|LED_select\(1),
	datad => \inst2|uart_tx_u1|Mux6~3_combout\,
	combout => \inst2|uart_tx_u1|Mux6~4_combout\);

-- Location: LCCOMB_X37_Y23_N24
\inst2|uart_tx_u1|Mux6~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Mux6~7_combout\ = (\inst2|Select_mode_u1|LED_select\(0) & ((\inst2|uart_tx_u1|Mux6~4_combout\ & ((\inst2|uart_tx_u1|Mux6~6_combout\))) # (!\inst2|uart_tx_u1|Mux6~4_combout\ & (\inst2|uart_tx_u1|Mux6~1_combout\)))) # 
-- (!\inst2|Select_mode_u1|LED_select\(0) & (((\inst2|uart_tx_u1|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(0),
	datab => \inst2|uart_tx_u1|Mux6~1_combout\,
	datac => \inst2|uart_tx_u1|Mux6~6_combout\,
	datad => \inst2|uart_tx_u1|Mux6~4_combout\,
	combout => \inst2|uart_tx_u1|Mux6~7_combout\);

-- Location: FF_X37_Y23_N1
\inst2|uart_tx_u1|addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|addr[1]~3_combout\,
	asdata => \inst2|uart_tx_u1|Mux6~7_combout\,
	clrn => \rst_n~input_o\,
	sload => \inst2|uart_tx_u1|always0~3_combout\,
	ena => \inst2|uart_tx_u1|addr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|addr\(1));

-- Location: LCCOMB_X39_Y22_N18
\inst2|uart_tx_u1|Add16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add16~4_combout\ = (\inst2|uart_tx_u1|addr\(2) & (\inst2|uart_tx_u1|Add16~3\ $ (GND))) # (!\inst2|uart_tx_u1|addr\(2) & (!\inst2|uart_tx_u1|Add16~3\ & VCC))
-- \inst2|uart_tx_u1|Add16~5\ = CARRY((\inst2|uart_tx_u1|addr\(2) & !\inst2|uart_tx_u1|Add16~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(2),
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add16~3\,
	combout => \inst2|uart_tx_u1|Add16~4_combout\,
	cout => \inst2|uart_tx_u1|Add16~5\);

-- Location: LCCOMB_X38_Y23_N16
\inst2|uart_tx_u1|Send_addr[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Send_addr[2]~3_combout\ = (\inst2|uart_tx_u1|always1~0_combout\ & (\inst2|uart_tx_u1|Add16~4_combout\)) # (!\inst2|uart_tx_u1|always1~0_combout\ & ((\inst2|uart_tx_u1|Send_addr_w\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Add16~4_combout\,
	datac => \inst2|uart_tx_u1|Send_addr_w\(2),
	datad => \inst2|uart_tx_u1|always1~0_combout\,
	combout => \inst2|uart_tx_u1|Send_addr[2]~3_combout\);

-- Location: FF_X38_Y23_N17
\inst2|uart_tx_u1|Send_addr_w[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|Send_addr[2]~3_combout\,
	clrn => \rst_n~input_o\,
	ena => \inst2|uart_tx_u1|Send_addr_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|Send_addr_w\(2));

-- Location: LCCOMB_X38_Y22_N0
\inst2|uart_tx_u1|addr[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr[2]~4_combout\ = (\inst2|uart_tx_u1|addr~6_combout\ & ((\inst2|uart_tx_u1|Send_addr_w\(2)))) # (!\inst2|uart_tx_u1|addr~6_combout\ & (\inst2|uart_tx_u1|Add16~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Add16~4_combout\,
	datab => \inst2|uart_tx_u1|Send_addr_w\(2),
	datad => \inst2|uart_tx_u1|addr~6_combout\,
	combout => \inst2|uart_tx_u1|addr[2]~4_combout\);

-- Location: LCCOMB_X37_Y19_N12
\inst2|uart_tx_u1|Add15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add15~4_combout\ = (\inst2|uart_tx_u1|Send_addr[2]~3_combout\ & (\inst2|uart_tx_u1|Add15~3\ $ (GND))) # (!\inst2|uart_tx_u1|Send_addr[2]~3_combout\ & (!\inst2|uart_tx_u1|Add15~3\ & VCC))
-- \inst2|uart_tx_u1|Add15~5\ = CARRY((\inst2|uart_tx_u1|Send_addr[2]~3_combout\ & !\inst2|uart_tx_u1|Add15~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add15~3\,
	combout => \inst2|uart_tx_u1|Add15~4_combout\,
	cout => \inst2|uart_tx_u1|Add15~5\);

-- Location: LCCOMB_X39_Y21_N6
\inst2|uart_tx_u1|Add7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add7~4_combout\ = (\inst2|uart_tx_u1|Send_addr[2]~3_combout\ & (\inst2|uart_tx_u1|Add7~3\ $ (GND))) # (!\inst2|uart_tx_u1|Send_addr[2]~3_combout\ & (!\inst2|uart_tx_u1|Add7~3\ & VCC))
-- \inst2|uart_tx_u1|Add7~5\ = CARRY((\inst2|uart_tx_u1|Send_addr[2]~3_combout\ & !\inst2|uart_tx_u1|Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add7~3\,
	combout => \inst2|uart_tx_u1|Add7~4_combout\,
	cout => \inst2|uart_tx_u1|Add7~5\);

-- Location: LCCOMB_X38_Y22_N24
\inst2|uart_tx_u1|Mux5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Mux5~7_combout\ = (\inst2|Select_mode_u1|LED_select\(0) & ((\inst2|Select_mode_u1|LED_select\(3) & (\inst2|uart_tx_u1|Add15~4_combout\)) # (!\inst2|Select_mode_u1|LED_select\(3) & ((\inst2|uart_tx_u1|Add7~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(0),
	datab => \inst2|Select_mode_u1|LED_select\(3),
	datac => \inst2|uart_tx_u1|Add15~4_combout\,
	datad => \inst2|uart_tx_u1|Add7~4_combout\,
	combout => \inst2|uart_tx_u1|Mux5~7_combout\);

-- Location: LCCOMB_X38_Y22_N30
\inst2|uart_tx_u1|Mux5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Mux5~8_combout\ = (\inst2|uart_tx_u1|Mux5~7_combout\) # ((!\inst2|Select_mode_u1|LED_select\(0) & \inst2|uart_tx_u1|Send_addr[2]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(0),
	datac => \inst2|uart_tx_u1|Send_addr[2]~3_combout\,
	datad => \inst2|uart_tx_u1|Mux5~7_combout\,
	combout => \inst2|uart_tx_u1|Mux5~8_combout\);

-- Location: LCCOMB_X38_Y19_N16
\inst2|uart_tx_u1|Add13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add13~4_combout\ = (\inst2|uart_tx_u1|Send_addr[2]~3_combout\ & ((GND) # (!\inst2|uart_tx_u1|Add13~3\))) # (!\inst2|uart_tx_u1|Send_addr[2]~3_combout\ & (\inst2|uart_tx_u1|Add13~3\ $ (GND)))
-- \inst2|uart_tx_u1|Add13~5\ = CARRY((\inst2|uart_tx_u1|Send_addr[2]~3_combout\) # (!\inst2|uart_tx_u1|Add13~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add13~3\,
	combout => \inst2|uart_tx_u1|Add13~4_combout\,
	cout => \inst2|uart_tx_u1|Add13~5\);

-- Location: LCCOMB_X39_Y21_N20
\inst2|uart_tx_u1|Add12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add12~2_combout\ = (\inst2|uart_tx_u1|Send_addr[2]~3_combout\ & (!\inst2|uart_tx_u1|Add12~1\)) # (!\inst2|uart_tx_u1|Send_addr[2]~3_combout\ & ((\inst2|uart_tx_u1|Add12~1\) # (GND)))
-- \inst2|uart_tx_u1|Add12~3\ = CARRY((!\inst2|uart_tx_u1|Add12~1\) # (!\inst2|uart_tx_u1|Send_addr[2]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add12~1\,
	combout => \inst2|uart_tx_u1|Add12~2_combout\,
	cout => \inst2|uart_tx_u1|Add12~3\);

-- Location: LCCOMB_X39_Y20_N16
\inst2|uart_tx_u1|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add4~2_combout\ = (\inst2|uart_tx_u1|Send_addr[2]~3_combout\ & (!\inst2|uart_tx_u1|Add4~1\)) # (!\inst2|uart_tx_u1|Send_addr[2]~3_combout\ & ((\inst2|uart_tx_u1|Add4~1\) # (GND)))
-- \inst2|uart_tx_u1|Add4~3\ = CARRY((!\inst2|uart_tx_u1|Add4~1\) # (!\inst2|uart_tx_u1|Send_addr[2]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add4~1\,
	combout => \inst2|uart_tx_u1|Add4~2_combout\,
	cout => \inst2|uart_tx_u1|Add4~3\);

-- Location: LCCOMB_X38_Y20_N18
\inst2|uart_tx_u1|Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add5~4_combout\ = (\inst2|uart_tx_u1|Send_addr[2]~3_combout\ & ((GND) # (!\inst2|uart_tx_u1|Add5~3\))) # (!\inst2|uart_tx_u1|Send_addr[2]~3_combout\ & (\inst2|uart_tx_u1|Add5~3\ $ (GND)))
-- \inst2|uart_tx_u1|Add5~5\ = CARRY((\inst2|uart_tx_u1|Send_addr[2]~3_combout\) # (!\inst2|uart_tx_u1|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add5~3\,
	combout => \inst2|uart_tx_u1|Add5~4_combout\,
	cout => \inst2|uart_tx_u1|Add5~5\);

-- Location: LCCOMB_X38_Y22_N26
\inst2|uart_tx_u1|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Mux5~0_combout\ = (\inst2|Select_mode_u1|LED_select\(0) & ((\inst2|Select_mode_u1|LED_select\(3)) # ((\inst2|uart_tx_u1|Add5~4_combout\)))) # (!\inst2|Select_mode_u1|LED_select\(0) & (!\inst2|Select_mode_u1|LED_select\(3) & 
-- (\inst2|uart_tx_u1|Add4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(0),
	datab => \inst2|Select_mode_u1|LED_select\(3),
	datac => \inst2|uart_tx_u1|Add4~2_combout\,
	datad => \inst2|uart_tx_u1|Add5~4_combout\,
	combout => \inst2|uart_tx_u1|Mux5~0_combout\);

-- Location: LCCOMB_X38_Y22_N28
\inst2|uart_tx_u1|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Mux5~1_combout\ = (\inst2|Select_mode_u1|LED_select\(3) & ((\inst2|uart_tx_u1|Mux5~0_combout\ & (\inst2|uart_tx_u1|Add13~4_combout\)) # (!\inst2|uart_tx_u1|Mux5~0_combout\ & ((\inst2|uart_tx_u1|Add12~2_combout\))))) # 
-- (!\inst2|Select_mode_u1|LED_select\(3) & (((\inst2|uart_tx_u1|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Add13~4_combout\,
	datab => \inst2|Select_mode_u1|LED_select\(3),
	datac => \inst2|uart_tx_u1|Add12~2_combout\,
	datad => \inst2|uart_tx_u1|Mux5~0_combout\,
	combout => \inst2|uart_tx_u1|Mux5~1_combout\);

-- Location: LCCOMB_X38_Y20_N2
\inst2|uart_tx_u1|Add10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add10~0_combout\ = \inst2|uart_tx_u1|Send_addr[2]~3_combout\ $ (VCC)
-- \inst2|uart_tx_u1|Add10~1\ = CARRY(\inst2|uart_tx_u1|Send_addr[2]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	combout => \inst2|uart_tx_u1|Add10~0_combout\,
	cout => \inst2|uart_tx_u1|Add10~1\);

-- Location: LCCOMB_X38_Y21_N4
\inst2|uart_tx_u1|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add3~4_combout\ = (\inst2|uart_tx_u1|Send_addr[2]~3_combout\ & ((GND) # (!\inst2|uart_tx_u1|Add3~3\))) # (!\inst2|uart_tx_u1|Send_addr[2]~3_combout\ & (\inst2|uart_tx_u1|Add3~3\ $ (GND)))
-- \inst2|uart_tx_u1|Add3~5\ = CARRY((\inst2|uart_tx_u1|Send_addr[2]~3_combout\) # (!\inst2|uart_tx_u1|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add3~3\,
	combout => \inst2|uart_tx_u1|Add3~4_combout\,
	cout => \inst2|uart_tx_u1|Add3~5\);

-- Location: LCCOMB_X36_Y23_N6
\inst2|uart_tx_u1|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add2~0_combout\ = \inst2|uart_tx_u1|Send_addr[2]~3_combout\ $ (VCC)
-- \inst2|uart_tx_u1|Add2~1\ = CARRY(\inst2|uart_tx_u1|Send_addr[2]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	combout => \inst2|uart_tx_u1|Add2~0_combout\,
	cout => \inst2|uart_tx_u1|Add2~1\);

-- Location: LCCOMB_X38_Y22_N22
\inst2|uart_tx_u1|Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Mux5~2_combout\ = (\inst2|Select_mode_u1|LED_select\(0) & ((\inst2|Select_mode_u1|LED_select\(3)) # ((\inst2|uart_tx_u1|Add3~4_combout\)))) # (!\inst2|Select_mode_u1|LED_select\(0) & (!\inst2|Select_mode_u1|LED_select\(3) & 
-- ((\inst2|uart_tx_u1|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(0),
	datab => \inst2|Select_mode_u1|LED_select\(3),
	datac => \inst2|uart_tx_u1|Add3~4_combout\,
	datad => \inst2|uart_tx_u1|Add2~0_combout\,
	combout => \inst2|uart_tx_u1|Mux5~2_combout\);

-- Location: LCCOMB_X35_Y21_N4
\inst2|uart_tx_u1|Add11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add11~4_combout\ = (\inst2|uart_tx_u1|Send_addr[2]~3_combout\ & ((GND) # (!\inst2|uart_tx_u1|Add11~3\))) # (!\inst2|uart_tx_u1|Send_addr[2]~3_combout\ & (\inst2|uart_tx_u1|Add11~3\ $ (GND)))
-- \inst2|uart_tx_u1|Add11~5\ = CARRY((\inst2|uart_tx_u1|Send_addr[2]~3_combout\) # (!\inst2|uart_tx_u1|Add11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add11~3\,
	combout => \inst2|uart_tx_u1|Add11~4_combout\,
	cout => \inst2|uart_tx_u1|Add11~5\);

-- Location: LCCOMB_X38_Y22_N4
\inst2|uart_tx_u1|Mux5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Mux5~3_combout\ = (\inst2|Select_mode_u1|LED_select\(3) & ((\inst2|uart_tx_u1|Mux5~2_combout\ & ((\inst2|uart_tx_u1|Add11~4_combout\))) # (!\inst2|uart_tx_u1|Mux5~2_combout\ & (\inst2|uart_tx_u1|Add10~0_combout\)))) # 
-- (!\inst2|Select_mode_u1|LED_select\(3) & (((\inst2|uart_tx_u1|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Add10~0_combout\,
	datab => \inst2|Select_mode_u1|LED_select\(3),
	datac => \inst2|uart_tx_u1|Mux5~2_combout\,
	datad => \inst2|uart_tx_u1|Add11~4_combout\,
	combout => \inst2|uart_tx_u1|Mux5~3_combout\);

-- Location: LCCOMB_X34_Y23_N6
\inst2|uart_tx_u1|Add9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add9~4_combout\ = (\inst2|uart_tx_u1|Send_addr[2]~3_combout\ & (\inst2|uart_tx_u1|Add9~3\ $ (GND))) # (!\inst2|uart_tx_u1|Send_addr[2]~3_combout\ & (!\inst2|uart_tx_u1|Add9~3\ & VCC))
-- \inst2|uart_tx_u1|Add9~5\ = CARRY((\inst2|uart_tx_u1|Send_addr[2]~3_combout\ & !\inst2|uart_tx_u1|Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add9~3\,
	combout => \inst2|uart_tx_u1|Add9~4_combout\,
	cout => \inst2|uart_tx_u1|Add9~5\);

-- Location: LCCOMB_X35_Y20_N16
\inst2|uart_tx_u1|Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add8~2_combout\ = (\inst2|uart_tx_u1|Send_addr[2]~3_combout\ & (\inst2|uart_tx_u1|Add8~1\ & VCC)) # (!\inst2|uart_tx_u1|Send_addr[2]~3_combout\ & (!\inst2|uart_tx_u1|Add8~1\))
-- \inst2|uart_tx_u1|Add8~3\ = CARRY((!\inst2|uart_tx_u1|Send_addr[2]~3_combout\ & !\inst2|uart_tx_u1|Add8~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add8~1\,
	combout => \inst2|uart_tx_u1|Add8~2_combout\,
	cout => \inst2|uart_tx_u1|Add8~3\);

-- Location: LCCOMB_X34_Y23_N20
\inst2|uart_tx_u1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add0~2_combout\ = (\inst2|uart_tx_u1|Send_addr[2]~3_combout\ & (\inst2|uart_tx_u1|Add0~1\ & VCC)) # (!\inst2|uart_tx_u1|Send_addr[2]~3_combout\ & (!\inst2|uart_tx_u1|Add0~1\))
-- \inst2|uart_tx_u1|Add0~3\ = CARRY((!\inst2|uart_tx_u1|Send_addr[2]~3_combout\ & !\inst2|uart_tx_u1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add0~1\,
	combout => \inst2|uart_tx_u1|Add0~2_combout\,
	cout => \inst2|uart_tx_u1|Add0~3\);

-- Location: LCCOMB_X37_Y20_N10
\inst2|uart_tx_u1|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add1~4_combout\ = (\inst2|uart_tx_u1|Send_addr[2]~3_combout\ & (\inst2|uart_tx_u1|Add1~3\ $ (GND))) # (!\inst2|uart_tx_u1|Send_addr[2]~3_combout\ & (!\inst2|uart_tx_u1|Add1~3\ & VCC))
-- \inst2|uart_tx_u1|Add1~5\ = CARRY((\inst2|uart_tx_u1|Send_addr[2]~3_combout\ & !\inst2|uart_tx_u1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add1~3\,
	combout => \inst2|uart_tx_u1|Add1~4_combout\,
	cout => \inst2|uart_tx_u1|Add1~5\);

-- Location: LCCOMB_X38_Y22_N2
\inst2|uart_tx_u1|Mux5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Mux5~4_combout\ = (\inst2|Select_mode_u1|LED_select\(0) & ((\inst2|Select_mode_u1|LED_select\(3)) # ((\inst2|uart_tx_u1|Add1~4_combout\)))) # (!\inst2|Select_mode_u1|LED_select\(0) & (!\inst2|Select_mode_u1|LED_select\(3) & 
-- (\inst2|uart_tx_u1|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(0),
	datab => \inst2|Select_mode_u1|LED_select\(3),
	datac => \inst2|uart_tx_u1|Add0~2_combout\,
	datad => \inst2|uart_tx_u1|Add1~4_combout\,
	combout => \inst2|uart_tx_u1|Mux5~4_combout\);

-- Location: LCCOMB_X38_Y22_N12
\inst2|uart_tx_u1|Mux5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Mux5~5_combout\ = (\inst2|Select_mode_u1|LED_select\(3) & ((\inst2|uart_tx_u1|Mux5~4_combout\ & (\inst2|uart_tx_u1|Add9~4_combout\)) # (!\inst2|uart_tx_u1|Mux5~4_combout\ & ((\inst2|uart_tx_u1|Add8~2_combout\))))) # 
-- (!\inst2|Select_mode_u1|LED_select\(3) & (((\inst2|uart_tx_u1|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Add9~4_combout\,
	datab => \inst2|Select_mode_u1|LED_select\(3),
	datac => \inst2|uart_tx_u1|Add8~2_combout\,
	datad => \inst2|uart_tx_u1|Mux5~4_combout\,
	combout => \inst2|uart_tx_u1|Mux5~5_combout\);

-- Location: LCCOMB_X38_Y22_N6
\inst2|uart_tx_u1|Mux5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Mux5~6_combout\ = (\inst2|Select_mode_u1|LED_select\(1) & ((\inst2|Select_mode_u1|LED_select\(2)) # ((\inst2|uart_tx_u1|Mux5~3_combout\)))) # (!\inst2|Select_mode_u1|LED_select\(1) & (!\inst2|Select_mode_u1|LED_select\(2) & 
-- ((\inst2|uart_tx_u1|Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(1),
	datab => \inst2|Select_mode_u1|LED_select\(2),
	datac => \inst2|uart_tx_u1|Mux5~3_combout\,
	datad => \inst2|uart_tx_u1|Mux5~5_combout\,
	combout => \inst2|uart_tx_u1|Mux5~6_combout\);

-- Location: LCCOMB_X38_Y22_N8
\inst2|uart_tx_u1|Mux5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Mux5~9_combout\ = (\inst2|Select_mode_u1|LED_select\(2) & ((\inst2|uart_tx_u1|Mux5~6_combout\ & (\inst2|uart_tx_u1|Mux5~8_combout\)) # (!\inst2|uart_tx_u1|Mux5~6_combout\ & ((\inst2|uart_tx_u1|Mux5~1_combout\))))) # 
-- (!\inst2|Select_mode_u1|LED_select\(2) & (((\inst2|uart_tx_u1|Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Mux5~8_combout\,
	datab => \inst2|uart_tx_u1|Mux5~1_combout\,
	datac => \inst2|Select_mode_u1|LED_select\(2),
	datad => \inst2|uart_tx_u1|Mux5~6_combout\,
	combout => \inst2|uart_tx_u1|Mux5~9_combout\);

-- Location: FF_X38_Y22_N1
\inst2|uart_tx_u1|addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|addr[2]~4_combout\,
	asdata => \inst2|uart_tx_u1|Mux5~9_combout\,
	clrn => \rst_n~input_o\,
	sload => \inst2|uart_tx_u1|always0~3_combout\,
	ena => \inst2|uart_tx_u1|addr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|addr\(2));

-- Location: LCCOMB_X39_Y22_N20
\inst2|uart_tx_u1|Add16~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add16~6_combout\ = (\inst2|uart_tx_u1|addr\(3) & (!\inst2|uart_tx_u1|Add16~5\)) # (!\inst2|uart_tx_u1|addr\(3) & ((\inst2|uart_tx_u1|Add16~5\) # (GND)))
-- \inst2|uart_tx_u1|Add16~7\ = CARRY((!\inst2|uart_tx_u1|Add16~5\) # (!\inst2|uart_tx_u1|addr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|addr\(3),
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add16~5\,
	combout => \inst2|uart_tx_u1|Add16~6_combout\,
	cout => \inst2|uart_tx_u1|Add16~7\);

-- Location: FF_X38_Y23_N15
\inst2|uart_tx_u1|Send_addr_w[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|Send_addr[3]~6_combout\,
	clrn => \rst_n~input_o\,
	ena => \inst2|uart_tx_u1|Send_addr_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|Send_addr_w\(3));

-- Location: LCCOMB_X38_Y23_N14
\inst2|uart_tx_u1|Send_addr[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Send_addr[3]~6_combout\ = (\inst2|uart_tx_u1|always1~0_combout\ & (\inst2|uart_tx_u1|Add16~6_combout\)) # (!\inst2|uart_tx_u1|always1~0_combout\ & ((\inst2|uart_tx_u1|Send_addr_w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Add16~6_combout\,
	datac => \inst2|uart_tx_u1|Send_addr_w\(3),
	datad => \inst2|uart_tx_u1|always1~0_combout\,
	combout => \inst2|uart_tx_u1|Send_addr[3]~6_combout\);

-- Location: LCCOMB_X38_Y19_N18
\inst2|uart_tx_u1|Add13~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add13~6_combout\ = (\inst2|uart_tx_u1|Send_addr[3]~6_combout\ & (!\inst2|uart_tx_u1|Add13~5\)) # (!\inst2|uart_tx_u1|Send_addr[3]~6_combout\ & ((\inst2|uart_tx_u1|Add13~5\) # (GND)))
-- \inst2|uart_tx_u1|Add13~7\ = CARRY((!\inst2|uart_tx_u1|Add13~5\) # (!\inst2|uart_tx_u1|Send_addr[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add13~5\,
	combout => \inst2|uart_tx_u1|Add13~6_combout\,
	cout => \inst2|uart_tx_u1|Add13~7\);

-- Location: LCCOMB_X37_Y19_N14
\inst2|uart_tx_u1|Add15~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add15~6_combout\ = (\inst2|uart_tx_u1|Send_addr[3]~6_combout\ & (\inst2|uart_tx_u1|Add15~5\ & VCC)) # (!\inst2|uart_tx_u1|Send_addr[3]~6_combout\ & (!\inst2|uart_tx_u1|Add15~5\))
-- \inst2|uart_tx_u1|Add15~7\ = CARRY((!\inst2|uart_tx_u1|Send_addr[3]~6_combout\ & !\inst2|uart_tx_u1|Add15~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add15~5\,
	combout => \inst2|uart_tx_u1|Add15~6_combout\,
	cout => \inst2|uart_tx_u1|Add15~7\);

-- Location: LCCOMB_X36_Y20_N6
\inst2|uart_tx_u1|Add14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add14~0_combout\ = \inst2|uart_tx_u1|Send_addr[3]~6_combout\ $ (VCC)
-- \inst2|uart_tx_u1|Add14~1\ = CARRY(\inst2|uart_tx_u1|Send_addr[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	combout => \inst2|uart_tx_u1|Add14~0_combout\,
	cout => \inst2|uart_tx_u1|Add14~1\);

-- Location: LCCOMB_X39_Y21_N22
\inst2|uart_tx_u1|Add12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add12~4_combout\ = (\inst2|uart_tx_u1|Send_addr[3]~6_combout\ & (\inst2|uart_tx_u1|Add12~3\ $ (GND))) # (!\inst2|uart_tx_u1|Send_addr[3]~6_combout\ & (!\inst2|uart_tx_u1|Add12~3\ & VCC))
-- \inst2|uart_tx_u1|Add12~5\ = CARRY((\inst2|uart_tx_u1|Send_addr[3]~6_combout\ & !\inst2|uart_tx_u1|Add12~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add12~3\,
	combout => \inst2|uart_tx_u1|Add12~4_combout\,
	cout => \inst2|uart_tx_u1|Add12~5\);

-- Location: LCCOMB_X37_Y19_N0
\inst2|uart_tx_u1|addr~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~43_combout\ = (\inst2|Select_mode_u1|LED_select\(1) & ((\inst2|Select_mode_u1|LED_select\(0)) # ((\inst2|uart_tx_u1|Add14~0_combout\)))) # (!\inst2|Select_mode_u1|LED_select\(1) & (!\inst2|Select_mode_u1|LED_select\(0) & 
-- ((\inst2|uart_tx_u1|Add12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(1),
	datab => \inst2|Select_mode_u1|LED_select\(0),
	datac => \inst2|uart_tx_u1|Add14~0_combout\,
	datad => \inst2|uart_tx_u1|Add12~4_combout\,
	combout => \inst2|uart_tx_u1|addr~43_combout\);

-- Location: LCCOMB_X37_Y19_N2
\inst2|uart_tx_u1|addr~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~44_combout\ = (\inst2|Select_mode_u1|LED_select\(0) & ((\inst2|uart_tx_u1|addr~43_combout\ & ((\inst2|uart_tx_u1|Add15~6_combout\))) # (!\inst2|uart_tx_u1|addr~43_combout\ & (\inst2|uart_tx_u1|Add13~6_combout\)))) # 
-- (!\inst2|Select_mode_u1|LED_select\(0) & (((\inst2|uart_tx_u1|addr~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Add13~6_combout\,
	datab => \inst2|Select_mode_u1|LED_select\(0),
	datac => \inst2|uart_tx_u1|Add15~6_combout\,
	datad => \inst2|uart_tx_u1|addr~43_combout\,
	combout => \inst2|uart_tx_u1|addr~44_combout\);

-- Location: LCCOMB_X37_Y20_N4
\inst2|uart_tx_u1|addr[3]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr[3]~28_combout\ = (\inst2|uart_tx_u1|always0~2_combout\ & (!\inst2|uart_tx_u1|Equal4~4_combout\ & ((\inst2|Select_mode_u1|LED_select\(2)) # (!\inst2|Select_mode_u1|LED_select\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(2),
	datab => \inst2|Select_mode_u1|LED_select\(3),
	datac => \inst2|uart_tx_u1|always0~2_combout\,
	datad => \inst2|uart_tx_u1|Equal4~4_combout\,
	combout => \inst2|uart_tx_u1|addr[3]~28_combout\);

-- Location: LCCOMB_X39_Y21_N8
\inst2|uart_tx_u1|Add7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add7~6_combout\ = (\inst2|uart_tx_u1|Send_addr[3]~6_combout\ & (!\inst2|uart_tx_u1|Add7~5\)) # (!\inst2|uart_tx_u1|Send_addr[3]~6_combout\ & ((\inst2|uart_tx_u1|Add7~5\) # (GND)))
-- \inst2|uart_tx_u1|Add7~7\ = CARRY((!\inst2|uart_tx_u1|Add7~5\) # (!\inst2|uart_tx_u1|Send_addr[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add7~5\,
	combout => \inst2|uart_tx_u1|Add7~6_combout\,
	cout => \inst2|uart_tx_u1|Add7~7\);

-- Location: LCCOMB_X36_Y22_N6
\inst2|uart_tx_u1|addr[3]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr[3]~25_combout\ = (\inst2|Select_mode_u1|LED_select\(2) & ((\inst2|Select_mode_u1|LED_select\(0)) # (\inst2|Select_mode_u1|LED_select\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(2),
	datac => \inst2|Select_mode_u1|LED_select\(0),
	datad => \inst2|Select_mode_u1|LED_select\(1),
	combout => \inst2|uart_tx_u1|addr[3]~25_combout\);

-- Location: LCCOMB_X38_Y20_N20
\inst2|uart_tx_u1|Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add5~6_combout\ = (\inst2|uart_tx_u1|Send_addr[3]~6_combout\ & (\inst2|uart_tx_u1|Add5~5\ & VCC)) # (!\inst2|uart_tx_u1|Send_addr[3]~6_combout\ & (!\inst2|uart_tx_u1|Add5~5\))
-- \inst2|uart_tx_u1|Add5~7\ = CARRY((!\inst2|uart_tx_u1|Send_addr[3]~6_combout\ & !\inst2|uart_tx_u1|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add5~5\,
	combout => \inst2|uart_tx_u1|Add5~6_combout\,
	cout => \inst2|uart_tx_u1|Add5~7\);

-- Location: LCCOMB_X36_Y21_N30
\inst2|uart_tx_u1|addr[3]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr[3]~24_combout\ = (\inst2|Select_mode_u1|LED_select\(1)) # (!\inst2|Select_mode_u1|LED_select\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(2),
	datac => \inst2|Select_mode_u1|LED_select\(1),
	combout => \inst2|uart_tx_u1|addr[3]~24_combout\);

-- Location: LCCOMB_X39_Y20_N18
\inst2|uart_tx_u1|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add4~4_combout\ = (\inst2|uart_tx_u1|Send_addr[3]~6_combout\ & ((GND) # (!\inst2|uart_tx_u1|Add4~3\))) # (!\inst2|uart_tx_u1|Send_addr[3]~6_combout\ & (\inst2|uart_tx_u1|Add4~3\ $ (GND)))
-- \inst2|uart_tx_u1|Add4~5\ = CARRY((\inst2|uart_tx_u1|Send_addr[3]~6_combout\) # (!\inst2|uart_tx_u1|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add4~3\,
	combout => \inst2|uart_tx_u1|Add4~4_combout\,
	cout => \inst2|uart_tx_u1|Add4~5\);

-- Location: LCCOMB_X36_Y23_N8
\inst2|uart_tx_u1|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add2~2_combout\ = (\inst2|uart_tx_u1|Send_addr[3]~6_combout\ & (!\inst2|uart_tx_u1|Add2~1\)) # (!\inst2|uart_tx_u1|Send_addr[3]~6_combout\ & ((\inst2|uart_tx_u1|Add2~1\) # (GND)))
-- \inst2|uart_tx_u1|Add2~3\ = CARRY((!\inst2|uart_tx_u1|Add2~1\) # (!\inst2|uart_tx_u1|Send_addr[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add2~1\,
	combout => \inst2|uart_tx_u1|Add2~2_combout\,
	cout => \inst2|uart_tx_u1|Add2~3\);

-- Location: LCCOMB_X38_Y21_N6
\inst2|uart_tx_u1|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add3~6_combout\ = (\inst2|uart_tx_u1|Send_addr[3]~6_combout\ & (!\inst2|uart_tx_u1|Add3~5\)) # (!\inst2|uart_tx_u1|Send_addr[3]~6_combout\ & ((\inst2|uart_tx_u1|Add3~5\) # (GND)))
-- \inst2|uart_tx_u1|Add3~7\ = CARRY((!\inst2|uart_tx_u1|Add3~5\) # (!\inst2|uart_tx_u1|Send_addr[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add3~5\,
	combout => \inst2|uart_tx_u1|Add3~6_combout\,
	cout => \inst2|uart_tx_u1|Add3~7\);

-- Location: LCCOMB_X37_Y20_N12
\inst2|uart_tx_u1|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add1~6_combout\ = (\inst2|uart_tx_u1|Send_addr[3]~6_combout\ & (!\inst2|uart_tx_u1|Add1~5\)) # (!\inst2|uart_tx_u1|Send_addr[3]~6_combout\ & ((\inst2|uart_tx_u1|Add1~5\) # (GND)))
-- \inst2|uart_tx_u1|Add1~7\ = CARRY((!\inst2|uart_tx_u1|Add1~5\) # (!\inst2|uart_tx_u1|Send_addr[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add1~5\,
	combout => \inst2|uart_tx_u1|Add1~6_combout\,
	cout => \inst2|uart_tx_u1|Add1~7\);

-- Location: LCCOMB_X34_Y23_N22
\inst2|uart_tx_u1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add0~4_combout\ = (\inst2|uart_tx_u1|Send_addr[3]~6_combout\ & ((GND) # (!\inst2|uart_tx_u1|Add0~3\))) # (!\inst2|uart_tx_u1|Send_addr[3]~6_combout\ & (\inst2|uart_tx_u1|Add0~3\ $ (GND)))
-- \inst2|uart_tx_u1|Add0~5\ = CARRY((\inst2|uart_tx_u1|Send_addr[3]~6_combout\) # (!\inst2|uart_tx_u1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add0~3\,
	combout => \inst2|uart_tx_u1|Add0~4_combout\,
	cout => \inst2|uart_tx_u1|Add0~5\);

-- Location: LCCOMB_X36_Y23_N28
\inst2|uart_tx_u1|addr~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~36_combout\ = (\inst2|Select_mode_u1|LED_select\(1) & (\inst2|Select_mode_u1|LED_select\(0))) # (!\inst2|Select_mode_u1|LED_select\(1) & ((\inst2|Select_mode_u1|LED_select\(0) & (\inst2|uart_tx_u1|Add1~6_combout\)) # 
-- (!\inst2|Select_mode_u1|LED_select\(0) & ((\inst2|uart_tx_u1|Add0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(1),
	datab => \inst2|Select_mode_u1|LED_select\(0),
	datac => \inst2|uart_tx_u1|Add1~6_combout\,
	datad => \inst2|uart_tx_u1|Add0~4_combout\,
	combout => \inst2|uart_tx_u1|addr~36_combout\);

-- Location: LCCOMB_X36_Y23_N18
\inst2|uart_tx_u1|addr~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~37_combout\ = (\inst2|Select_mode_u1|LED_select\(1) & ((\inst2|uart_tx_u1|addr~36_combout\ & ((\inst2|uart_tx_u1|Add3~6_combout\))) # (!\inst2|uart_tx_u1|addr~36_combout\ & (\inst2|uart_tx_u1|Add2~2_combout\)))) # 
-- (!\inst2|Select_mode_u1|LED_select\(1) & (((\inst2|uart_tx_u1|addr~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(1),
	datab => \inst2|uart_tx_u1|Add2~2_combout\,
	datac => \inst2|uart_tx_u1|Add3~6_combout\,
	datad => \inst2|uart_tx_u1|addr~36_combout\,
	combout => \inst2|uart_tx_u1|addr~37_combout\);

-- Location: LCCOMB_X36_Y23_N20
\inst2|uart_tx_u1|addr~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~38_combout\ = (\inst2|uart_tx_u1|addr[3]~24_combout\ & ((\inst2|uart_tx_u1|addr[3]~25_combout\) # ((\inst2|uart_tx_u1|addr~37_combout\)))) # (!\inst2|uart_tx_u1|addr[3]~24_combout\ & (!\inst2|uart_tx_u1|addr[3]~25_combout\ & 
-- (\inst2|uart_tx_u1|Add4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr[3]~24_combout\,
	datab => \inst2|uart_tx_u1|addr[3]~25_combout\,
	datac => \inst2|uart_tx_u1|Add4~4_combout\,
	datad => \inst2|uart_tx_u1|addr~37_combout\,
	combout => \inst2|uart_tx_u1|addr~38_combout\);

-- Location: LCCOMB_X36_Y23_N30
\inst2|uart_tx_u1|addr~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~39_combout\ = (\inst2|uart_tx_u1|addr[3]~25_combout\ & ((\inst2|uart_tx_u1|addr~38_combout\ & (\inst2|uart_tx_u1|Add7~6_combout\)) # (!\inst2|uart_tx_u1|addr~38_combout\ & ((\inst2|uart_tx_u1|Add5~6_combout\))))) # 
-- (!\inst2|uart_tx_u1|addr[3]~25_combout\ & (((\inst2|uart_tx_u1|addr~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Add7~6_combout\,
	datab => \inst2|uart_tx_u1|addr[3]~25_combout\,
	datac => \inst2|uart_tx_u1|Add5~6_combout\,
	datad => \inst2|uart_tx_u1|addr~38_combout\,
	combout => \inst2|uart_tx_u1|addr~39_combout\);

-- Location: LCCOMB_X37_Y20_N22
\inst2|uart_tx_u1|addr[3]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr[3]~21_combout\ = (!\inst2|uart_tx_u1|Equal4~3_combout\ & (\inst2|Select_mode_u1|LED_select\(3) & (\inst2|uart_tx_u1|always0~2_combout\ & !\inst2|uart_tx_u1|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Equal4~3_combout\,
	datab => \inst2|Select_mode_u1|LED_select\(3),
	datac => \inst2|uart_tx_u1|always0~2_combout\,
	datad => \inst2|uart_tx_u1|Equal4~2_combout\,
	combout => \inst2|uart_tx_u1|addr[3]~21_combout\);

-- Location: LCCOMB_X38_Y20_N4
\inst2|uart_tx_u1|Add10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add10~2_combout\ = (\inst2|uart_tx_u1|Send_addr[3]~6_combout\ & (\inst2|uart_tx_u1|Add10~1\ & VCC)) # (!\inst2|uart_tx_u1|Send_addr[3]~6_combout\ & (!\inst2|uart_tx_u1|Add10~1\))
-- \inst2|uart_tx_u1|Add10~3\ = CARRY((!\inst2|uart_tx_u1|Send_addr[3]~6_combout\ & !\inst2|uart_tx_u1|Add10~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add10~1\,
	combout => \inst2|uart_tx_u1|Add10~2_combout\,
	cout => \inst2|uart_tx_u1|Add10~3\);

-- Location: LCCOMB_X35_Y21_N6
\inst2|uart_tx_u1|Add11~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add11~6_combout\ = (\inst2|uart_tx_u1|Send_addr[3]~6_combout\ & (\inst2|uart_tx_u1|Add11~5\ & VCC)) # (!\inst2|uart_tx_u1|Send_addr[3]~6_combout\ & (!\inst2|uart_tx_u1|Add11~5\))
-- \inst2|uart_tx_u1|Add11~7\ = CARRY((!\inst2|uart_tx_u1|Send_addr[3]~6_combout\ & !\inst2|uart_tx_u1|Add11~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add11~5\,
	combout => \inst2|uart_tx_u1|Add11~6_combout\,
	cout => \inst2|uart_tx_u1|Add11~7\);

-- Location: LCCOMB_X35_Y20_N18
\inst2|uart_tx_u1|Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add8~4_combout\ = (\inst2|uart_tx_u1|Send_addr[3]~6_combout\ & (\inst2|uart_tx_u1|Add8~3\ $ (GND))) # (!\inst2|uart_tx_u1|Send_addr[3]~6_combout\ & (!\inst2|uart_tx_u1|Add8~3\ & VCC))
-- \inst2|uart_tx_u1|Add8~5\ = CARRY((\inst2|uart_tx_u1|Send_addr[3]~6_combout\ & !\inst2|uart_tx_u1|Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add8~3\,
	combout => \inst2|uart_tx_u1|Add8~4_combout\,
	cout => \inst2|uart_tx_u1|Add8~5\);

-- Location: LCCOMB_X34_Y23_N8
\inst2|uart_tx_u1|Add9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add9~6_combout\ = (\inst2|uart_tx_u1|Send_addr[3]~6_combout\ & (\inst2|uart_tx_u1|Add9~5\ & VCC)) # (!\inst2|uart_tx_u1|Send_addr[3]~6_combout\ & (!\inst2|uart_tx_u1|Add9~5\))
-- \inst2|uart_tx_u1|Add9~7\ = CARRY((!\inst2|uart_tx_u1|Send_addr[3]~6_combout\ & !\inst2|uart_tx_u1|Add9~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add9~5\,
	combout => \inst2|uart_tx_u1|Add9~6_combout\,
	cout => \inst2|uart_tx_u1|Add9~7\);

-- Location: LCCOMB_X36_Y23_N24
\inst2|uart_tx_u1|addr~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~40_combout\ = (\inst2|Select_mode_u1|LED_select\(1) & (\inst2|Select_mode_u1|LED_select\(0))) # (!\inst2|Select_mode_u1|LED_select\(1) & ((\inst2|Select_mode_u1|LED_select\(0) & ((\inst2|uart_tx_u1|Add9~6_combout\))) # 
-- (!\inst2|Select_mode_u1|LED_select\(0) & (\inst2|uart_tx_u1|Add8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(1),
	datab => \inst2|Select_mode_u1|LED_select\(0),
	datac => \inst2|uart_tx_u1|Add8~4_combout\,
	datad => \inst2|uart_tx_u1|Add9~6_combout\,
	combout => \inst2|uart_tx_u1|addr~40_combout\);

-- Location: LCCOMB_X36_Y23_N22
\inst2|uart_tx_u1|addr~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~41_combout\ = (\inst2|Select_mode_u1|LED_select\(1) & ((\inst2|uart_tx_u1|addr~40_combout\ & ((\inst2|uart_tx_u1|Add11~6_combout\))) # (!\inst2|uart_tx_u1|addr~40_combout\ & (\inst2|uart_tx_u1|Add10~2_combout\)))) # 
-- (!\inst2|Select_mode_u1|LED_select\(1) & (((\inst2|uart_tx_u1|addr~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(1),
	datab => \inst2|uart_tx_u1|Add10~2_combout\,
	datac => \inst2|uart_tx_u1|Add11~6_combout\,
	datad => \inst2|uart_tx_u1|addr~40_combout\,
	combout => \inst2|uart_tx_u1|addr~41_combout\);

-- Location: LCCOMB_X36_Y23_N0
\inst2|uart_tx_u1|addr~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~42_combout\ = (\inst2|uart_tx_u1|addr[3]~28_combout\ & (\inst2|uart_tx_u1|addr[3]~21_combout\)) # (!\inst2|uart_tx_u1|addr[3]~28_combout\ & ((\inst2|uart_tx_u1|addr[3]~21_combout\ & (\inst2|uart_tx_u1|addr~41_combout\)) # 
-- (!\inst2|uart_tx_u1|addr[3]~21_combout\ & ((\inst2|uart_tx_u1|Add16~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr[3]~28_combout\,
	datab => \inst2|uart_tx_u1|addr[3]~21_combout\,
	datac => \inst2|uart_tx_u1|addr~41_combout\,
	datad => \inst2|uart_tx_u1|Add16~6_combout\,
	combout => \inst2|uart_tx_u1|addr~42_combout\);

-- Location: LCCOMB_X36_Y23_N2
\inst2|uart_tx_u1|addr~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~45_combout\ = (\inst2|uart_tx_u1|addr[3]~28_combout\ & ((\inst2|uart_tx_u1|addr~42_combout\ & (\inst2|uart_tx_u1|addr~44_combout\)) # (!\inst2|uart_tx_u1|addr~42_combout\ & ((\inst2|uart_tx_u1|addr~39_combout\))))) # 
-- (!\inst2|uart_tx_u1|addr[3]~28_combout\ & (((\inst2|uart_tx_u1|addr~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr~44_combout\,
	datab => \inst2|uart_tx_u1|addr[3]~28_combout\,
	datac => \inst2|uart_tx_u1|addr~39_combout\,
	datad => \inst2|uart_tx_u1|addr~42_combout\,
	combout => \inst2|uart_tx_u1|addr~45_combout\);

-- Location: LCCOMB_X36_Y23_N4
\inst2|uart_tx_u1|addr~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~46_combout\ = (\inst2|uart_tx_u1|addr[3]~34_combout\ & (\inst2|uart_tx_u1|Send_addr[3]~6_combout\)) # (!\inst2|uart_tx_u1|addr[3]~34_combout\ & ((\inst2|uart_tx_u1|addr~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[3]~6_combout\,
	datac => \inst2|uart_tx_u1|addr[3]~34_combout\,
	datad => \inst2|uart_tx_u1|addr~45_combout\,
	combout => \inst2|uart_tx_u1|addr~46_combout\);

-- Location: FF_X36_Y23_N5
\inst2|uart_tx_u1|addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|addr~46_combout\,
	clrn => \rst_n~input_o\,
	ena => \inst2|uart_tx_u1|addr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|addr\(3));

-- Location: LCCOMB_X39_Y22_N22
\inst2|uart_tx_u1|Add16~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add16~8_combout\ = (\inst2|uart_tx_u1|addr\(4) & (\inst2|uart_tx_u1|Add16~7\ $ (GND))) # (!\inst2|uart_tx_u1|addr\(4) & (!\inst2|uart_tx_u1|Add16~7\ & VCC))
-- \inst2|uart_tx_u1|Add16~9\ = CARRY((\inst2|uart_tx_u1|addr\(4) & !\inst2|uart_tx_u1|Add16~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(4),
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add16~7\,
	combout => \inst2|uart_tx_u1|Add16~8_combout\,
	cout => \inst2|uart_tx_u1|Add16~9\);

-- Location: FF_X38_Y23_N1
\inst2|uart_tx_u1|Send_addr_w[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|Send_addr[4]~5_combout\,
	clrn => \rst_n~input_o\,
	ena => \inst2|uart_tx_u1|Send_addr_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|Send_addr_w\(4));

-- Location: LCCOMB_X38_Y23_N0
\inst2|uart_tx_u1|Send_addr[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Send_addr[4]~5_combout\ = (\inst2|uart_tx_u1|always1~0_combout\ & (\inst2|uart_tx_u1|Add16~8_combout\)) # (!\inst2|uart_tx_u1|always1~0_combout\ & ((\inst2|uart_tx_u1|Send_addr_w\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Add16~8_combout\,
	datac => \inst2|uart_tx_u1|Send_addr_w\(4),
	datad => \inst2|uart_tx_u1|always1~0_combout\,
	combout => \inst2|uart_tx_u1|Send_addr[4]~5_combout\);

-- Location: LCCOMB_X35_Y21_N8
\inst2|uart_tx_u1|Add11~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add11~8_combout\ = (\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & (\inst2|uart_tx_u1|Add11~7\ $ (GND))) # (!\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & (!\inst2|uart_tx_u1|Add11~7\ & VCC))
-- \inst2|uart_tx_u1|Add11~9\ = CARRY((\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & !\inst2|uart_tx_u1|Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add11~7\,
	combout => \inst2|uart_tx_u1|Add11~8_combout\,
	cout => \inst2|uart_tx_u1|Add11~9\);

-- Location: LCCOMB_X34_Y23_N10
\inst2|uart_tx_u1|Add9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add9~8_combout\ = (\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & (\inst2|uart_tx_u1|Add9~7\ $ (GND))) # (!\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & (!\inst2|uart_tx_u1|Add9~7\ & VCC))
-- \inst2|uart_tx_u1|Add9~9\ = CARRY((\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & !\inst2|uart_tx_u1|Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add9~7\,
	combout => \inst2|uart_tx_u1|Add9~8_combout\,
	cout => \inst2|uart_tx_u1|Add9~9\);

-- Location: LCCOMB_X38_Y20_N6
\inst2|uart_tx_u1|Add10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add10~4_combout\ = (\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & (\inst2|uart_tx_u1|Add10~3\ $ (GND))) # (!\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & (!\inst2|uart_tx_u1|Add10~3\ & VCC))
-- \inst2|uart_tx_u1|Add10~5\ = CARRY((\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & !\inst2|uart_tx_u1|Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add10~3\,
	combout => \inst2|uart_tx_u1|Add10~4_combout\,
	cout => \inst2|uart_tx_u1|Add10~5\);

-- Location: LCCOMB_X35_Y20_N20
\inst2|uart_tx_u1|Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add8~6_combout\ = (\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & (!\inst2|uart_tx_u1|Add8~5\)) # (!\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & ((\inst2|uart_tx_u1|Add8~5\) # (GND)))
-- \inst2|uart_tx_u1|Add8~7\ = CARRY((!\inst2|uart_tx_u1|Add8~5\) # (!\inst2|uart_tx_u1|Send_addr[4]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add8~5\,
	combout => \inst2|uart_tx_u1|Add8~6_combout\,
	cout => \inst2|uart_tx_u1|Add8~7\);

-- Location: LCCOMB_X35_Y20_N0
\inst2|uart_tx_u1|addr~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~19_combout\ = (\inst2|Select_mode_u1|LED_select\(1) & ((\inst2|Select_mode_u1|LED_select\(0)) # ((\inst2|uart_tx_u1|Add10~4_combout\)))) # (!\inst2|Select_mode_u1|LED_select\(1) & (!\inst2|Select_mode_u1|LED_select\(0) & 
-- ((\inst2|uart_tx_u1|Add8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(1),
	datab => \inst2|Select_mode_u1|LED_select\(0),
	datac => \inst2|uart_tx_u1|Add10~4_combout\,
	datad => \inst2|uart_tx_u1|Add8~6_combout\,
	combout => \inst2|uart_tx_u1|addr~19_combout\);

-- Location: LCCOMB_X38_Y21_N22
\inst2|uart_tx_u1|addr~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~20_combout\ = (\inst2|Select_mode_u1|LED_select\(0) & ((\inst2|uart_tx_u1|addr~19_combout\ & (\inst2|uart_tx_u1|Add11~8_combout\)) # (!\inst2|uart_tx_u1|addr~19_combout\ & ((\inst2|uart_tx_u1|Add9~8_combout\))))) # 
-- (!\inst2|Select_mode_u1|LED_select\(0) & (((\inst2|uart_tx_u1|addr~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(0),
	datab => \inst2|uart_tx_u1|Add11~8_combout\,
	datac => \inst2|uart_tx_u1|Add9~8_combout\,
	datad => \inst2|uart_tx_u1|addr~19_combout\,
	combout => \inst2|uart_tx_u1|addr~20_combout\);

-- Location: LCCOMB_X39_Y21_N10
\inst2|uart_tx_u1|Add7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add7~8_combout\ = (\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & (\inst2|uart_tx_u1|Add7~7\ $ (GND))) # (!\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & (!\inst2|uart_tx_u1|Add7~7\ & VCC))
-- \inst2|uart_tx_u1|Add7~9\ = CARRY((\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & !\inst2|uart_tx_u1|Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add7~7\,
	combout => \inst2|uart_tx_u1|Add7~8_combout\,
	cout => \inst2|uart_tx_u1|Add7~9\);

-- Location: LCCOMB_X39_Y20_N20
\inst2|uart_tx_u1|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add4~6_combout\ = (\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & (\inst2|uart_tx_u1|Add4~5\ & VCC)) # (!\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & (!\inst2|uart_tx_u1|Add4~5\))
-- \inst2|uart_tx_u1|Add4~7\ = CARRY((!\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & !\inst2|uart_tx_u1|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add4~5\,
	combout => \inst2|uart_tx_u1|Add4~6_combout\,
	cout => \inst2|uart_tx_u1|Add4~7\);

-- Location: LCCOMB_X38_Y20_N22
\inst2|uart_tx_u1|Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add5~8_combout\ = (\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & ((GND) # (!\inst2|uart_tx_u1|Add5~7\))) # (!\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & (\inst2|uart_tx_u1|Add5~7\ $ (GND)))
-- \inst2|uart_tx_u1|Add5~9\ = CARRY((\inst2|uart_tx_u1|Send_addr[4]~5_combout\) # (!\inst2|uart_tx_u1|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add5~7\,
	combout => \inst2|uart_tx_u1|Add5~8_combout\,
	cout => \inst2|uart_tx_u1|Add5~9\);

-- Location: LCCOMB_X39_Y20_N0
\inst2|uart_tx_u1|addr~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~26_combout\ = (\inst2|uart_tx_u1|addr[3]~25_combout\ & (((\inst2|uart_tx_u1|addr[3]~24_combout\) # (\inst2|uart_tx_u1|Add5~8_combout\)))) # (!\inst2|uart_tx_u1|addr[3]~25_combout\ & (\inst2|uart_tx_u1|Add4~6_combout\ & 
-- (!\inst2|uart_tx_u1|addr[3]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr[3]~25_combout\,
	datab => \inst2|uart_tx_u1|Add4~6_combout\,
	datac => \inst2|uart_tx_u1|addr[3]~24_combout\,
	datad => \inst2|uart_tx_u1|Add5~8_combout\,
	combout => \inst2|uart_tx_u1|addr~26_combout\);

-- Location: LCCOMB_X38_Y21_N8
\inst2|uart_tx_u1|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add3~8_combout\ = (\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & ((GND) # (!\inst2|uart_tx_u1|Add3~7\))) # (!\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & (\inst2|uart_tx_u1|Add3~7\ $ (GND)))
-- \inst2|uart_tx_u1|Add3~9\ = CARRY((\inst2|uart_tx_u1|Send_addr[4]~5_combout\) # (!\inst2|uart_tx_u1|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add3~7\,
	combout => \inst2|uart_tx_u1|Add3~8_combout\,
	cout => \inst2|uart_tx_u1|Add3~9\);

-- Location: LCCOMB_X36_Y23_N10
\inst2|uart_tx_u1|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add2~4_combout\ = (\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & ((GND) # (!\inst2|uart_tx_u1|Add2~3\))) # (!\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & (\inst2|uart_tx_u1|Add2~3\ $ (GND)))
-- \inst2|uart_tx_u1|Add2~5\ = CARRY((\inst2|uart_tx_u1|Send_addr[4]~5_combout\) # (!\inst2|uart_tx_u1|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add2~3\,
	combout => \inst2|uart_tx_u1|Add2~4_combout\,
	cout => \inst2|uart_tx_u1|Add2~5\);

-- Location: LCCOMB_X34_Y23_N24
\inst2|uart_tx_u1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add0~6_combout\ = (\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & (!\inst2|uart_tx_u1|Add0~5\)) # (!\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & ((\inst2|uart_tx_u1|Add0~5\) # (GND)))
-- \inst2|uart_tx_u1|Add0~7\ = CARRY((!\inst2|uart_tx_u1|Add0~5\) # (!\inst2|uart_tx_u1|Send_addr[4]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add0~5\,
	combout => \inst2|uart_tx_u1|Add0~6_combout\,
	cout => \inst2|uart_tx_u1|Add0~7\);

-- Location: LCCOMB_X37_Y20_N14
\inst2|uart_tx_u1|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add1~8_combout\ = (\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & ((GND) # (!\inst2|uart_tx_u1|Add1~7\))) # (!\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & (\inst2|uart_tx_u1|Add1~7\ $ (GND)))
-- \inst2|uart_tx_u1|Add1~9\ = CARRY((\inst2|uart_tx_u1|Send_addr[4]~5_combout\) # (!\inst2|uart_tx_u1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add1~7\,
	combout => \inst2|uart_tx_u1|Add1~8_combout\,
	cout => \inst2|uart_tx_u1|Add1~9\);

-- Location: LCCOMB_X38_Y21_N16
\inst2|uart_tx_u1|addr~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~22_combout\ = (\inst2|Select_mode_u1|LED_select\(1) & (\inst2|Select_mode_u1|LED_select\(0))) # (!\inst2|Select_mode_u1|LED_select\(1) & ((\inst2|Select_mode_u1|LED_select\(0) & ((\inst2|uart_tx_u1|Add1~8_combout\))) # 
-- (!\inst2|Select_mode_u1|LED_select\(0) & (\inst2|uart_tx_u1|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(1),
	datab => \inst2|Select_mode_u1|LED_select\(0),
	datac => \inst2|uart_tx_u1|Add0~6_combout\,
	datad => \inst2|uart_tx_u1|Add1~8_combout\,
	combout => \inst2|uart_tx_u1|addr~22_combout\);

-- Location: LCCOMB_X38_Y21_N18
\inst2|uart_tx_u1|addr~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~23_combout\ = (\inst2|Select_mode_u1|LED_select\(1) & ((\inst2|uart_tx_u1|addr~22_combout\ & (\inst2|uart_tx_u1|Add3~8_combout\)) # (!\inst2|uart_tx_u1|addr~22_combout\ & ((\inst2|uart_tx_u1|Add2~4_combout\))))) # 
-- (!\inst2|Select_mode_u1|LED_select\(1) & (((\inst2|uart_tx_u1|addr~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(1),
	datab => \inst2|uart_tx_u1|Add3~8_combout\,
	datac => \inst2|uart_tx_u1|Add2~4_combout\,
	datad => \inst2|uart_tx_u1|addr~22_combout\,
	combout => \inst2|uart_tx_u1|addr~23_combout\);

-- Location: LCCOMB_X38_Y21_N24
\inst2|uart_tx_u1|addr~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~27_combout\ = (\inst2|uart_tx_u1|addr[3]~24_combout\ & ((\inst2|uart_tx_u1|addr~26_combout\ & (\inst2|uart_tx_u1|Add7~8_combout\)) # (!\inst2|uart_tx_u1|addr~26_combout\ & ((\inst2|uart_tx_u1|addr~23_combout\))))) # 
-- (!\inst2|uart_tx_u1|addr[3]~24_combout\ & (((\inst2|uart_tx_u1|addr~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr[3]~24_combout\,
	datab => \inst2|uart_tx_u1|Add7~8_combout\,
	datac => \inst2|uart_tx_u1|addr~26_combout\,
	datad => \inst2|uart_tx_u1|addr~23_combout\,
	combout => \inst2|uart_tx_u1|addr~27_combout\);

-- Location: LCCOMB_X38_Y21_N26
\inst2|uart_tx_u1|addr~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~29_combout\ = (\inst2|uart_tx_u1|addr[3]~21_combout\ & (((\inst2|uart_tx_u1|addr[3]~28_combout\)))) # (!\inst2|uart_tx_u1|addr[3]~21_combout\ & ((\inst2|uart_tx_u1|addr[3]~28_combout\ & ((\inst2|uart_tx_u1|addr~27_combout\))) # 
-- (!\inst2|uart_tx_u1|addr[3]~28_combout\ & (\inst2|uart_tx_u1|Add16~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Add16~8_combout\,
	datab => \inst2|uart_tx_u1|addr[3]~21_combout\,
	datac => \inst2|uart_tx_u1|addr[3]~28_combout\,
	datad => \inst2|uart_tx_u1|addr~27_combout\,
	combout => \inst2|uart_tx_u1|addr~29_combout\);

-- Location: LCCOMB_X37_Y19_N16
\inst2|uart_tx_u1|Add15~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add15~8_combout\ = (\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & ((GND) # (!\inst2|uart_tx_u1|Add15~7\))) # (!\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & (\inst2|uart_tx_u1|Add15~7\ $ (GND)))
-- \inst2|uart_tx_u1|Add15~9\ = CARRY((\inst2|uart_tx_u1|Send_addr[4]~5_combout\) # (!\inst2|uart_tx_u1|Add15~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add15~7\,
	combout => \inst2|uart_tx_u1|Add15~8_combout\,
	cout => \inst2|uart_tx_u1|Add15~9\);

-- Location: LCCOMB_X39_Y21_N24
\inst2|uart_tx_u1|Add12~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add12~6_combout\ = (\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & (\inst2|uart_tx_u1|Add12~5\ & VCC)) # (!\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & (!\inst2|uart_tx_u1|Add12~5\))
-- \inst2|uart_tx_u1|Add12~7\ = CARRY((!\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & !\inst2|uart_tx_u1|Add12~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add12~5\,
	combout => \inst2|uart_tx_u1|Add12~6_combout\,
	cout => \inst2|uart_tx_u1|Add12~7\);

-- Location: LCCOMB_X38_Y19_N20
\inst2|uart_tx_u1|Add13~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add13~8_combout\ = (\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & ((GND) # (!\inst2|uart_tx_u1|Add13~7\))) # (!\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & (\inst2|uart_tx_u1|Add13~7\ $ (GND)))
-- \inst2|uart_tx_u1|Add13~9\ = CARRY((\inst2|uart_tx_u1|Send_addr[4]~5_combout\) # (!\inst2|uart_tx_u1|Add13~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add13~7\,
	combout => \inst2|uart_tx_u1|Add13~8_combout\,
	cout => \inst2|uart_tx_u1|Add13~9\);

-- Location: LCCOMB_X39_Y21_N0
\inst2|uart_tx_u1|addr~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~30_combout\ = (\inst2|Select_mode_u1|LED_select\(0) & (((\inst2|Select_mode_u1|LED_select\(1)) # (\inst2|uart_tx_u1|Add13~8_combout\)))) # (!\inst2|Select_mode_u1|LED_select\(0) & (\inst2|uart_tx_u1|Add12~6_combout\ & 
-- (!\inst2|Select_mode_u1|LED_select\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(0),
	datab => \inst2|uart_tx_u1|Add12~6_combout\,
	datac => \inst2|Select_mode_u1|LED_select\(1),
	datad => \inst2|uart_tx_u1|Add13~8_combout\,
	combout => \inst2|uart_tx_u1|addr~30_combout\);

-- Location: LCCOMB_X36_Y20_N8
\inst2|uart_tx_u1|Add14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add14~2_combout\ = (\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & (\inst2|uart_tx_u1|Add14~1\ & VCC)) # (!\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & (!\inst2|uart_tx_u1|Add14~1\))
-- \inst2|uart_tx_u1|Add14~3\ = CARRY((!\inst2|uart_tx_u1|Send_addr[4]~5_combout\ & !\inst2|uart_tx_u1|Add14~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add14~1\,
	combout => \inst2|uart_tx_u1|Add14~2_combout\,
	cout => \inst2|uart_tx_u1|Add14~3\);

-- Location: LCCOMB_X38_Y21_N28
\inst2|uart_tx_u1|addr~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~31_combout\ = (\inst2|Select_mode_u1|LED_select\(1) & ((\inst2|uart_tx_u1|addr~30_combout\ & (\inst2|uart_tx_u1|Add15~8_combout\)) # (!\inst2|uart_tx_u1|addr~30_combout\ & ((\inst2|uart_tx_u1|Add14~2_combout\))))) # 
-- (!\inst2|Select_mode_u1|LED_select\(1) & (((\inst2|uart_tx_u1|addr~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(1),
	datab => \inst2|uart_tx_u1|Add15~8_combout\,
	datac => \inst2|uart_tx_u1|addr~30_combout\,
	datad => \inst2|uart_tx_u1|Add14~2_combout\,
	combout => \inst2|uart_tx_u1|addr~31_combout\);

-- Location: LCCOMB_X38_Y21_N30
\inst2|uart_tx_u1|addr~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~32_combout\ = (\inst2|uart_tx_u1|addr[3]~21_combout\ & ((\inst2|uart_tx_u1|addr~29_combout\ & ((\inst2|uart_tx_u1|addr~31_combout\))) # (!\inst2|uart_tx_u1|addr~29_combout\ & (\inst2|uart_tx_u1|addr~20_combout\)))) # 
-- (!\inst2|uart_tx_u1|addr[3]~21_combout\ & (((\inst2|uart_tx_u1|addr~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr~20_combout\,
	datab => \inst2|uart_tx_u1|addr[3]~21_combout\,
	datac => \inst2|uart_tx_u1|addr~29_combout\,
	datad => \inst2|uart_tx_u1|addr~31_combout\,
	combout => \inst2|uart_tx_u1|addr~32_combout\);

-- Location: LCCOMB_X38_Y21_N20
\inst2|uart_tx_u1|addr~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~35_combout\ = (\inst2|uart_tx_u1|addr[3]~34_combout\ & ((\inst2|uart_tx_u1|Send_addr[4]~5_combout\))) # (!\inst2|uart_tx_u1|addr[3]~34_combout\ & (\inst2|uart_tx_u1|addr~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|addr[3]~34_combout\,
	datac => \inst2|uart_tx_u1|addr~32_combout\,
	datad => \inst2|uart_tx_u1|Send_addr[4]~5_combout\,
	combout => \inst2|uart_tx_u1|addr~35_combout\);

-- Location: FF_X38_Y21_N21
\inst2|uart_tx_u1|addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|addr~35_combout\,
	clrn => \rst_n~input_o\,
	ena => \inst2|uart_tx_u1|addr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|addr\(4));

-- Location: LCCOMB_X39_Y22_N24
\inst2|uart_tx_u1|Add16~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add16~10_combout\ = (\inst2|uart_tx_u1|addr\(5) & (!\inst2|uart_tx_u1|Add16~9\)) # (!\inst2|uart_tx_u1|addr\(5) & ((\inst2|uart_tx_u1|Add16~9\) # (GND)))
-- \inst2|uart_tx_u1|Add16~11\ = CARRY((!\inst2|uart_tx_u1|Add16~9\) # (!\inst2|uart_tx_u1|addr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|addr\(5),
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add16~9\,
	combout => \inst2|uart_tx_u1|Add16~10_combout\,
	cout => \inst2|uart_tx_u1|Add16~11\);

-- Location: LCCOMB_X39_Y22_N26
\inst2|uart_tx_u1|Add16~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add16~12_combout\ = (\inst2|uart_tx_u1|addr\(6) & (\inst2|uart_tx_u1|Add16~11\ $ (GND))) # (!\inst2|uart_tx_u1|addr\(6) & (!\inst2|uart_tx_u1|Add16~11\ & VCC))
-- \inst2|uart_tx_u1|Add16~13\ = CARRY((\inst2|uart_tx_u1|addr\(6) & !\inst2|uart_tx_u1|Add16~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|addr\(6),
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add16~11\,
	combout => \inst2|uart_tx_u1|Add16~12_combout\,
	cout => \inst2|uart_tx_u1|Add16~13\);

-- Location: LCCOMB_X38_Y23_N12
\inst2|uart_tx_u1|Send_addr[6]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Send_addr[6]~7_combout\ = (\inst2|uart_tx_u1|always1~0_combout\ & (\inst2|uart_tx_u1|Add16~12_combout\)) # (!\inst2|uart_tx_u1|always1~0_combout\ & ((\inst2|uart_tx_u1|Send_addr_w\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Add16~12_combout\,
	datac => \inst2|uart_tx_u1|Send_addr_w\(6),
	datad => \inst2|uart_tx_u1|always1~0_combout\,
	combout => \inst2|uart_tx_u1|Send_addr[6]~7_combout\);

-- Location: FF_X38_Y23_N13
\inst2|uart_tx_u1|Send_addr_w[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|Send_addr[6]~7_combout\,
	clrn => \rst_n~input_o\,
	ena => \inst2|uart_tx_u1|Send_addr_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|Send_addr_w\(6));

-- Location: LCCOMB_X35_Y21_N28
\inst2|uart_tx_u1|addr[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr[6]~1_combout\ = (\inst2|uart_tx_u1|addr~6_combout\ & (\inst2|uart_tx_u1|Send_addr_w\(6))) # (!\inst2|uart_tx_u1|addr~6_combout\ & ((\inst2|uart_tx_u1|Add16~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr_w\(6),
	datab => \inst2|uart_tx_u1|Add16~12_combout\,
	datad => \inst2|uart_tx_u1|addr~6_combout\,
	combout => \inst2|uart_tx_u1|addr[6]~1_combout\);

-- Location: FF_X38_Y23_N31
\inst2|uart_tx_u1|Send_addr_w[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|Send_addr[5]~4_combout\,
	clrn => \rst_n~input_o\,
	ena => \inst2|uart_tx_u1|Send_addr_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|Send_addr_w\(5));

-- Location: LCCOMB_X38_Y23_N30
\inst2|uart_tx_u1|Send_addr[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Send_addr[5]~4_combout\ = (\inst2|uart_tx_u1|always1~0_combout\ & (\inst2|uart_tx_u1|Add16~10_combout\)) # (!\inst2|uart_tx_u1|always1~0_combout\ & ((\inst2|uart_tx_u1|Send_addr_w\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Add16~10_combout\,
	datac => \inst2|uart_tx_u1|Send_addr_w\(5),
	datad => \inst2|uart_tx_u1|always1~0_combout\,
	combout => \inst2|uart_tx_u1|Send_addr[5]~4_combout\);

-- Location: LCCOMB_X38_Y19_N22
\inst2|uart_tx_u1|Add13~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add13~10_combout\ = (\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & (\inst2|uart_tx_u1|Add13~9\ & VCC)) # (!\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & (!\inst2|uart_tx_u1|Add13~9\))
-- \inst2|uart_tx_u1|Add13~11\ = CARRY((!\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & !\inst2|uart_tx_u1|Add13~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add13~9\,
	combout => \inst2|uart_tx_u1|Add13~10_combout\,
	cout => \inst2|uart_tx_u1|Add13~11\);

-- Location: LCCOMB_X38_Y19_N24
\inst2|uart_tx_u1|Add13~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add13~12_combout\ = (\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & (\inst2|uart_tx_u1|Add13~11\ $ (GND))) # (!\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & (!\inst2|uart_tx_u1|Add13~11\ & VCC))
-- \inst2|uart_tx_u1|Add13~13\ = CARRY((\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & !\inst2|uart_tx_u1|Add13~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add13~11\,
	combout => \inst2|uart_tx_u1|Add13~12_combout\,
	cout => \inst2|uart_tx_u1|Add13~13\);

-- Location: LCCOMB_X34_Y23_N12
\inst2|uart_tx_u1|Add9~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add9~10_combout\ = (\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & (\inst2|uart_tx_u1|Add9~9\ & VCC)) # (!\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & (!\inst2|uart_tx_u1|Add9~9\))
-- \inst2|uart_tx_u1|Add9~11\ = CARRY((!\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & !\inst2|uart_tx_u1|Add9~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add9~9\,
	combout => \inst2|uart_tx_u1|Add9~10_combout\,
	cout => \inst2|uart_tx_u1|Add9~11\);

-- Location: LCCOMB_X34_Y23_N14
\inst2|uart_tx_u1|Add9~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add9~12_combout\ = (\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & (\inst2|uart_tx_u1|Add9~11\ $ (GND))) # (!\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & (!\inst2|uart_tx_u1|Add9~11\ & VCC))
-- \inst2|uart_tx_u1|Add9~13\ = CARRY((\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & !\inst2|uart_tx_u1|Add9~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add9~11\,
	combout => \inst2|uart_tx_u1|Add9~12_combout\,
	cout => \inst2|uart_tx_u1|Add9~13\);

-- Location: LCCOMB_X35_Y21_N10
\inst2|uart_tx_u1|Add11~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add11~10_combout\ = (\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & (\inst2|uart_tx_u1|Add11~9\ & VCC)) # (!\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & (!\inst2|uart_tx_u1|Add11~9\))
-- \inst2|uart_tx_u1|Add11~11\ = CARRY((!\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & !\inst2|uart_tx_u1|Add11~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add11~9\,
	combout => \inst2|uart_tx_u1|Add11~10_combout\,
	cout => \inst2|uart_tx_u1|Add11~11\);

-- Location: LCCOMB_X35_Y21_N12
\inst2|uart_tx_u1|Add11~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add11~12_combout\ = (\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & (\inst2|uart_tx_u1|Add11~11\ $ (GND))) # (!\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & (!\inst2|uart_tx_u1|Add11~11\ & VCC))
-- \inst2|uart_tx_u1|Add11~13\ = CARRY((\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & !\inst2|uart_tx_u1|Add11~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add11~11\,
	combout => \inst2|uart_tx_u1|Add11~12_combout\,
	cout => \inst2|uart_tx_u1|Add11~13\);

-- Location: LCCOMB_X35_Y21_N30
\inst2|uart_tx_u1|addr~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~54_combout\ = (\inst2|Select_mode_u1|LED_select\(1) & ((\inst2|Select_mode_u1|LED_select\(2)) # ((\inst2|uart_tx_u1|Add11~12_combout\)))) # (!\inst2|Select_mode_u1|LED_select\(1) & (!\inst2|Select_mode_u1|LED_select\(2) & 
-- (\inst2|uart_tx_u1|Add9~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(1),
	datab => \inst2|Select_mode_u1|LED_select\(2),
	datac => \inst2|uart_tx_u1|Add9~12_combout\,
	datad => \inst2|uart_tx_u1|Add11~12_combout\,
	combout => \inst2|uart_tx_u1|addr~54_combout\);

-- Location: LCCOMB_X37_Y19_N18
\inst2|uart_tx_u1|Add15~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add15~10_combout\ = (\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & (\inst2|uart_tx_u1|Add15~9\ & VCC)) # (!\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & (!\inst2|uart_tx_u1|Add15~9\))
-- \inst2|uart_tx_u1|Add15~11\ = CARRY((!\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & !\inst2|uart_tx_u1|Add15~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add15~9\,
	combout => \inst2|uart_tx_u1|Add15~10_combout\,
	cout => \inst2|uart_tx_u1|Add15~11\);

-- Location: LCCOMB_X37_Y19_N20
\inst2|uart_tx_u1|Add15~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add15~12_combout\ = (\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & (\inst2|uart_tx_u1|Add15~11\ $ (GND))) # (!\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & (!\inst2|uart_tx_u1|Add15~11\ & VCC))
-- \inst2|uart_tx_u1|Add15~13\ = CARRY((\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & !\inst2|uart_tx_u1|Add15~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add15~11\,
	combout => \inst2|uart_tx_u1|Add15~12_combout\,
	cout => \inst2|uart_tx_u1|Add15~13\);

-- Location: LCCOMB_X35_Y21_N16
\inst2|uart_tx_u1|addr~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~55_combout\ = (\inst2|Select_mode_u1|LED_select\(2) & ((\inst2|uart_tx_u1|addr~54_combout\ & ((\inst2|uart_tx_u1|Add15~12_combout\))) # (!\inst2|uart_tx_u1|addr~54_combout\ & (\inst2|uart_tx_u1|Add13~12_combout\)))) # 
-- (!\inst2|Select_mode_u1|LED_select\(2) & (((\inst2|uart_tx_u1|addr~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Add13~12_combout\,
	datab => \inst2|Select_mode_u1|LED_select\(2),
	datac => \inst2|uart_tx_u1|addr~54_combout\,
	datad => \inst2|uart_tx_u1|Add15~12_combout\,
	combout => \inst2|uart_tx_u1|addr~55_combout\);

-- Location: LCCOMB_X38_Y20_N24
\inst2|uart_tx_u1|Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add5~10_combout\ = (\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & (!\inst2|uart_tx_u1|Add5~9\)) # (!\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & ((\inst2|uart_tx_u1|Add5~9\) # (GND)))
-- \inst2|uart_tx_u1|Add5~11\ = CARRY((!\inst2|uart_tx_u1|Add5~9\) # (!\inst2|uart_tx_u1|Send_addr[5]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add5~9\,
	combout => \inst2|uart_tx_u1|Add5~10_combout\,
	cout => \inst2|uart_tx_u1|Add5~11\);

-- Location: LCCOMB_X38_Y20_N26
\inst2|uart_tx_u1|Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add5~12_combout\ = (\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & (\inst2|uart_tx_u1|Add5~11\ $ (GND))) # (!\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & (!\inst2|uart_tx_u1|Add5~11\ & VCC))
-- \inst2|uart_tx_u1|Add5~13\ = CARRY((\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & !\inst2|uart_tx_u1|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add5~11\,
	combout => \inst2|uart_tx_u1|Add5~12_combout\,
	cout => \inst2|uart_tx_u1|Add5~13\);

-- Location: LCCOMB_X39_Y21_N12
\inst2|uart_tx_u1|Add7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add7~10_combout\ = (\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & (\inst2|uart_tx_u1|Add7~9\ & VCC)) # (!\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & (!\inst2|uart_tx_u1|Add7~9\))
-- \inst2|uart_tx_u1|Add7~11\ = CARRY((!\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & !\inst2|uart_tx_u1|Add7~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add7~9\,
	combout => \inst2|uart_tx_u1|Add7~10_combout\,
	cout => \inst2|uart_tx_u1|Add7~11\);

-- Location: LCCOMB_X39_Y21_N14
\inst2|uart_tx_u1|Add7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add7~12_combout\ = (\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & (\inst2|uart_tx_u1|Add7~11\ $ (GND))) # (!\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & (!\inst2|uart_tx_u1|Add7~11\ & VCC))
-- \inst2|uart_tx_u1|Add7~13\ = CARRY((\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & !\inst2|uart_tx_u1|Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add7~11\,
	combout => \inst2|uart_tx_u1|Add7~12_combout\,
	cout => \inst2|uart_tx_u1|Add7~13\);

-- Location: LCCOMB_X38_Y21_N10
\inst2|uart_tx_u1|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add3~10_combout\ = (\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & (!\inst2|uart_tx_u1|Add3~9\)) # (!\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & ((\inst2|uart_tx_u1|Add3~9\) # (GND)))
-- \inst2|uart_tx_u1|Add3~11\ = CARRY((!\inst2|uart_tx_u1|Add3~9\) # (!\inst2|uart_tx_u1|Send_addr[5]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add3~9\,
	combout => \inst2|uart_tx_u1|Add3~10_combout\,
	cout => \inst2|uart_tx_u1|Add3~11\);

-- Location: LCCOMB_X38_Y21_N12
\inst2|uart_tx_u1|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add3~12_combout\ = (\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & (\inst2|uart_tx_u1|Add3~11\ $ (GND))) # (!\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & (!\inst2|uart_tx_u1|Add3~11\ & VCC))
-- \inst2|uart_tx_u1|Add3~13\ = CARRY((\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & !\inst2|uart_tx_u1|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add3~11\,
	combout => \inst2|uart_tx_u1|Add3~12_combout\,
	cout => \inst2|uart_tx_u1|Add3~13\);

-- Location: LCCOMB_X37_Y20_N16
\inst2|uart_tx_u1|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add1~10_combout\ = (\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & (!\inst2|uart_tx_u1|Add1~9\)) # (!\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & ((\inst2|uart_tx_u1|Add1~9\) # (GND)))
-- \inst2|uart_tx_u1|Add1~11\ = CARRY((!\inst2|uart_tx_u1|Add1~9\) # (!\inst2|uart_tx_u1|Send_addr[5]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add1~9\,
	combout => \inst2|uart_tx_u1|Add1~10_combout\,
	cout => \inst2|uart_tx_u1|Add1~11\);

-- Location: LCCOMB_X37_Y20_N18
\inst2|uart_tx_u1|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add1~12_combout\ = (\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & (\inst2|uart_tx_u1|Add1~11\ $ (GND))) # (!\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & (!\inst2|uart_tx_u1|Add1~11\ & VCC))
-- \inst2|uart_tx_u1|Add1~13\ = CARRY((\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & !\inst2|uart_tx_u1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add1~11\,
	combout => \inst2|uart_tx_u1|Add1~12_combout\,
	cout => \inst2|uart_tx_u1|Add1~13\);

-- Location: LCCOMB_X36_Y21_N20
\inst2|uart_tx_u1|addr~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~47_combout\ = (\inst2|Select_mode_u1|LED_select\(2) & (\inst2|Select_mode_u1|LED_select\(1))) # (!\inst2|Select_mode_u1|LED_select\(2) & ((\inst2|Select_mode_u1|LED_select\(1) & (\inst2|uart_tx_u1|Add3~12_combout\)) # 
-- (!\inst2|Select_mode_u1|LED_select\(1) & ((\inst2|uart_tx_u1|Add1~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(2),
	datab => \inst2|Select_mode_u1|LED_select\(1),
	datac => \inst2|uart_tx_u1|Add3~12_combout\,
	datad => \inst2|uart_tx_u1|Add1~12_combout\,
	combout => \inst2|uart_tx_u1|addr~47_combout\);

-- Location: LCCOMB_X36_Y21_N14
\inst2|uart_tx_u1|addr~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~48_combout\ = (\inst2|Select_mode_u1|LED_select\(2) & ((\inst2|uart_tx_u1|addr~47_combout\ & ((\inst2|uart_tx_u1|Add7~12_combout\))) # (!\inst2|uart_tx_u1|addr~47_combout\ & (\inst2|uart_tx_u1|Add5~12_combout\)))) # 
-- (!\inst2|Select_mode_u1|LED_select\(2) & (((\inst2|uart_tx_u1|addr~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Add5~12_combout\,
	datab => \inst2|Select_mode_u1|LED_select\(2),
	datac => \inst2|uart_tx_u1|Add7~12_combout\,
	datad => \inst2|uart_tx_u1|addr~47_combout\,
	combout => \inst2|uart_tx_u1|addr~48_combout\);

-- Location: LCCOMB_X38_Y23_N28
\inst2|uart_tx_u1|Add6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add6~5_combout\ = \inst2|uart_tx_u1|Send_addr[6]~7_combout\ $ (((\inst2|uart_tx_u1|always1~0_combout\ & ((\inst2|uart_tx_u1|Add16~10_combout\))) # (!\inst2|uart_tx_u1|always1~0_combout\ & (\inst2|uart_tx_u1|Send_addr_w\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr_w\(5),
	datab => \inst2|uart_tx_u1|Add16~10_combout\,
	datac => \inst2|uart_tx_u1|always1~0_combout\,
	datad => \inst2|uart_tx_u1|Send_addr[6]~7_combout\,
	combout => \inst2|uart_tx_u1|Add6~5_combout\);

-- Location: LCCOMB_X39_Y20_N22
\inst2|uart_tx_u1|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add4~8_combout\ = (\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & (\inst2|uart_tx_u1|Add4~7\ $ (GND))) # (!\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & (!\inst2|uart_tx_u1|Add4~7\ & VCC))
-- \inst2|uart_tx_u1|Add4~9\ = CARRY((\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & !\inst2|uart_tx_u1|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add4~7\,
	combout => \inst2|uart_tx_u1|Add4~8_combout\,
	cout => \inst2|uart_tx_u1|Add4~9\);

-- Location: LCCOMB_X39_Y20_N24
\inst2|uart_tx_u1|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add4~10_combout\ = (\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & (!\inst2|uart_tx_u1|Add4~9\)) # (!\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & ((\inst2|uart_tx_u1|Add4~9\) # (GND)))
-- \inst2|uart_tx_u1|Add4~11\ = CARRY((!\inst2|uart_tx_u1|Add4~9\) # (!\inst2|uart_tx_u1|Send_addr[6]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add4~9\,
	combout => \inst2|uart_tx_u1|Add4~10_combout\,
	cout => \inst2|uart_tx_u1|Add4~11\);

-- Location: LCCOMB_X34_Y23_N26
\inst2|uart_tx_u1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add0~8_combout\ = (\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & (\inst2|uart_tx_u1|Add0~7\ $ (GND))) # (!\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & (!\inst2|uart_tx_u1|Add0~7\ & VCC))
-- \inst2|uart_tx_u1|Add0~9\ = CARRY((\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & !\inst2|uart_tx_u1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add0~7\,
	combout => \inst2|uart_tx_u1|Add0~8_combout\,
	cout => \inst2|uart_tx_u1|Add0~9\);

-- Location: LCCOMB_X34_Y23_N28
\inst2|uart_tx_u1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add0~10_combout\ = (\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & (!\inst2|uart_tx_u1|Add0~9\)) # (!\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & ((\inst2|uart_tx_u1|Add0~9\) # (GND)))
-- \inst2|uart_tx_u1|Add0~11\ = CARRY((!\inst2|uart_tx_u1|Add0~9\) # (!\inst2|uart_tx_u1|Send_addr[6]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add0~9\,
	combout => \inst2|uart_tx_u1|Add0~10_combout\,
	cout => \inst2|uart_tx_u1|Add0~11\);

-- Location: LCCOMB_X36_Y23_N12
\inst2|uart_tx_u1|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add2~6_combout\ = (\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & (!\inst2|uart_tx_u1|Add2~5\)) # (!\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & ((\inst2|uart_tx_u1|Add2~5\) # (GND)))
-- \inst2|uart_tx_u1|Add2~7\ = CARRY((!\inst2|uart_tx_u1|Add2~5\) # (!\inst2|uart_tx_u1|Send_addr[5]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add2~5\,
	combout => \inst2|uart_tx_u1|Add2~6_combout\,
	cout => \inst2|uart_tx_u1|Add2~7\);

-- Location: LCCOMB_X36_Y23_N14
\inst2|uart_tx_u1|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add2~8_combout\ = (\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & (\inst2|uart_tx_u1|Add2~7\ $ (GND))) # (!\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & (!\inst2|uart_tx_u1|Add2~7\ & VCC))
-- \inst2|uart_tx_u1|Add2~9\ = CARRY((\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & !\inst2|uart_tx_u1|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add2~7\,
	combout => \inst2|uart_tx_u1|Add2~8_combout\,
	cout => \inst2|uart_tx_u1|Add2~9\);

-- Location: LCCOMB_X34_Y23_N0
\inst2|uart_tx_u1|addr~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~51_combout\ = (\inst2|Select_mode_u1|LED_select\(1) & (((\inst2|Select_mode_u1|LED_select\(2)) # (\inst2|uart_tx_u1|Add2~8_combout\)))) # (!\inst2|Select_mode_u1|LED_select\(1) & (\inst2|uart_tx_u1|Add0~10_combout\ & 
-- (!\inst2|Select_mode_u1|LED_select\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(1),
	datab => \inst2|uart_tx_u1|Add0~10_combout\,
	datac => \inst2|Select_mode_u1|LED_select\(2),
	datad => \inst2|uart_tx_u1|Add2~8_combout\,
	combout => \inst2|uart_tx_u1|addr~51_combout\);

-- Location: LCCOMB_X35_Y21_N26
\inst2|uart_tx_u1|addr~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~52_combout\ = (\inst2|Select_mode_u1|LED_select\(2) & ((\inst2|uart_tx_u1|addr~51_combout\ & (\inst2|uart_tx_u1|Add6~5_combout\)) # (!\inst2|uart_tx_u1|addr~51_combout\ & ((\inst2|uart_tx_u1|Add4~10_combout\))))) # 
-- (!\inst2|Select_mode_u1|LED_select\(2) & (((\inst2|uart_tx_u1|addr~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Add6~5_combout\,
	datab => \inst2|Select_mode_u1|LED_select\(2),
	datac => \inst2|uart_tx_u1|Add4~10_combout\,
	datad => \inst2|uart_tx_u1|addr~51_combout\,
	combout => \inst2|uart_tx_u1|addr~52_combout\);

-- Location: LCCOMB_X38_Y20_N8
\inst2|uart_tx_u1|Add10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add10~6_combout\ = (\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & (\inst2|uart_tx_u1|Add10~5\ & VCC)) # (!\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & (!\inst2|uart_tx_u1|Add10~5\))
-- \inst2|uart_tx_u1|Add10~7\ = CARRY((!\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & !\inst2|uart_tx_u1|Add10~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add10~5\,
	combout => \inst2|uart_tx_u1|Add10~6_combout\,
	cout => \inst2|uart_tx_u1|Add10~7\);

-- Location: LCCOMB_X38_Y20_N10
\inst2|uart_tx_u1|Add10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add10~8_combout\ = (\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & (\inst2|uart_tx_u1|Add10~7\ $ (GND))) # (!\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & (!\inst2|uart_tx_u1|Add10~7\ & VCC))
-- \inst2|uart_tx_u1|Add10~9\ = CARRY((\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & !\inst2|uart_tx_u1|Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add10~7\,
	combout => \inst2|uart_tx_u1|Add10~8_combout\,
	cout => \inst2|uart_tx_u1|Add10~9\);

-- Location: LCCOMB_X36_Y20_N10
\inst2|uart_tx_u1|Add14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add14~4_combout\ = (\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & ((GND) # (!\inst2|uart_tx_u1|Add14~3\))) # (!\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & (\inst2|uart_tx_u1|Add14~3\ $ (GND)))
-- \inst2|uart_tx_u1|Add14~5\ = CARRY((\inst2|uart_tx_u1|Send_addr[5]~4_combout\) # (!\inst2|uart_tx_u1|Add14~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add14~3\,
	combout => \inst2|uart_tx_u1|Add14~4_combout\,
	cout => \inst2|uart_tx_u1|Add14~5\);

-- Location: LCCOMB_X36_Y20_N12
\inst2|uart_tx_u1|Add14~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add14~6_combout\ = (\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & (!\inst2|uart_tx_u1|Add14~5\)) # (!\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & ((\inst2|uart_tx_u1|Add14~5\) # (GND)))
-- \inst2|uart_tx_u1|Add14~7\ = CARRY((!\inst2|uart_tx_u1|Add14~5\) # (!\inst2|uart_tx_u1|Send_addr[6]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add14~5\,
	combout => \inst2|uart_tx_u1|Add14~6_combout\,
	cout => \inst2|uart_tx_u1|Add14~7\);

-- Location: LCCOMB_X39_Y21_N26
\inst2|uart_tx_u1|Add12~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add12~8_combout\ = (\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & ((GND) # (!\inst2|uart_tx_u1|Add12~7\))) # (!\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & (\inst2|uart_tx_u1|Add12~7\ $ (GND)))
-- \inst2|uart_tx_u1|Add12~9\ = CARRY((\inst2|uart_tx_u1|Send_addr[5]~4_combout\) # (!\inst2|uart_tx_u1|Add12~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add12~7\,
	combout => \inst2|uart_tx_u1|Add12~8_combout\,
	cout => \inst2|uart_tx_u1|Add12~9\);

-- Location: LCCOMB_X39_Y21_N28
\inst2|uart_tx_u1|Add12~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add12~10_combout\ = (\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & (!\inst2|uart_tx_u1|Add12~9\)) # (!\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & ((\inst2|uart_tx_u1|Add12~9\) # (GND)))
-- \inst2|uart_tx_u1|Add12~11\ = CARRY((!\inst2|uart_tx_u1|Add12~9\) # (!\inst2|uart_tx_u1|Send_addr[6]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add12~9\,
	combout => \inst2|uart_tx_u1|Add12~10_combout\,
	cout => \inst2|uart_tx_u1|Add12~11\);

-- Location: LCCOMB_X35_Y20_N22
\inst2|uart_tx_u1|Add8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add8~8_combout\ = (\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & ((GND) # (!\inst2|uart_tx_u1|Add8~7\))) # (!\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & (\inst2|uart_tx_u1|Add8~7\ $ (GND)))
-- \inst2|uart_tx_u1|Add8~9\ = CARRY((\inst2|uart_tx_u1|Send_addr[5]~4_combout\) # (!\inst2|uart_tx_u1|Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add8~7\,
	combout => \inst2|uart_tx_u1|Add8~8_combout\,
	cout => \inst2|uart_tx_u1|Add8~9\);

-- Location: LCCOMB_X35_Y20_N24
\inst2|uart_tx_u1|Add8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add8~10_combout\ = (\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & (!\inst2|uart_tx_u1|Add8~9\)) # (!\inst2|uart_tx_u1|Send_addr[6]~7_combout\ & ((\inst2|uart_tx_u1|Add8~9\) # (GND)))
-- \inst2|uart_tx_u1|Add8~11\ = CARRY((!\inst2|uart_tx_u1|Add8~9\) # (!\inst2|uart_tx_u1|Send_addr[6]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \inst2|uart_tx_u1|Add8~9\,
	combout => \inst2|uart_tx_u1|Add8~10_combout\,
	cout => \inst2|uart_tx_u1|Add8~11\);

-- Location: LCCOMB_X35_Y21_N18
\inst2|uart_tx_u1|addr~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~49_combout\ = (\inst2|Select_mode_u1|LED_select\(1) & (\inst2|Select_mode_u1|LED_select\(2))) # (!\inst2|Select_mode_u1|LED_select\(1) & ((\inst2|Select_mode_u1|LED_select\(2) & (\inst2|uart_tx_u1|Add12~10_combout\)) # 
-- (!\inst2|Select_mode_u1|LED_select\(2) & ((\inst2|uart_tx_u1|Add8~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(1),
	datab => \inst2|Select_mode_u1|LED_select\(2),
	datac => \inst2|uart_tx_u1|Add12~10_combout\,
	datad => \inst2|uart_tx_u1|Add8~10_combout\,
	combout => \inst2|uart_tx_u1|addr~49_combout\);

-- Location: LCCOMB_X35_Y21_N24
\inst2|uart_tx_u1|addr~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~50_combout\ = (\inst2|Select_mode_u1|LED_select\(1) & ((\inst2|uart_tx_u1|addr~49_combout\ & ((\inst2|uart_tx_u1|Add14~6_combout\))) # (!\inst2|uart_tx_u1|addr~49_combout\ & (\inst2|uart_tx_u1|Add10~8_combout\)))) # 
-- (!\inst2|Select_mode_u1|LED_select\(1) & (((\inst2|uart_tx_u1|addr~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(1),
	datab => \inst2|uart_tx_u1|Add10~8_combout\,
	datac => \inst2|uart_tx_u1|Add14~6_combout\,
	datad => \inst2|uart_tx_u1|addr~49_combout\,
	combout => \inst2|uart_tx_u1|addr~50_combout\);

-- Location: LCCOMB_X35_Y21_N20
\inst2|uart_tx_u1|addr~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~53_combout\ = (\inst2|Select_mode_u1|LED_select\(0) & (\inst2|Select_mode_u1|LED_select\(3))) # (!\inst2|Select_mode_u1|LED_select\(0) & ((\inst2|Select_mode_u1|LED_select\(3) & ((\inst2|uart_tx_u1|addr~50_combout\))) # 
-- (!\inst2|Select_mode_u1|LED_select\(3) & (\inst2|uart_tx_u1|addr~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(0),
	datab => \inst2|Select_mode_u1|LED_select\(3),
	datac => \inst2|uart_tx_u1|addr~52_combout\,
	datad => \inst2|uart_tx_u1|addr~50_combout\,
	combout => \inst2|uart_tx_u1|addr~53_combout\);

-- Location: LCCOMB_X35_Y21_N22
\inst2|uart_tx_u1|addr~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~56_combout\ = (\inst2|Select_mode_u1|LED_select\(0) & ((\inst2|uart_tx_u1|addr~53_combout\ & (\inst2|uart_tx_u1|addr~55_combout\)) # (!\inst2|uart_tx_u1|addr~53_combout\ & ((\inst2|uart_tx_u1|addr~48_combout\))))) # 
-- (!\inst2|Select_mode_u1|LED_select\(0) & (((\inst2|uart_tx_u1|addr~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(0),
	datab => \inst2|uart_tx_u1|addr~55_combout\,
	datac => \inst2|uart_tx_u1|addr~48_combout\,
	datad => \inst2|uart_tx_u1|addr~53_combout\,
	combout => \inst2|uart_tx_u1|addr~56_combout\);

-- Location: FF_X35_Y21_N29
\inst2|uart_tx_u1|addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|addr[6]~1_combout\,
	asdata => \inst2|uart_tx_u1|addr~56_combout\,
	clrn => \rst_n~input_o\,
	sload => \inst2|uart_tx_u1|always0~3_combout\,
	ena => \inst2|uart_tx_u1|addr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|addr\(6));

-- Location: LCCOMB_X39_Y22_N28
\inst2|uart_tx_u1|Add16~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add16~14_combout\ = \inst2|uart_tx_u1|Add16~13\ $ (\inst2|uart_tx_u1|addr\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|uart_tx_u1|addr\(7),
	cin => \inst2|uart_tx_u1|Add16~13\,
	combout => \inst2|uart_tx_u1|Add16~14_combout\);

-- Location: LCCOMB_X38_Y23_N22
\inst2|uart_tx_u1|Send_addr[7]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Send_addr[7]~8_combout\ = (\inst2|uart_tx_u1|always1~0_combout\ & (\inst2|uart_tx_u1|Add16~14_combout\)) # (!\inst2|uart_tx_u1|always1~0_combout\ & ((\inst2|uart_tx_u1|Send_addr_w\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Add16~14_combout\,
	datac => \inst2|uart_tx_u1|Send_addr_w\(7),
	datad => \inst2|uart_tx_u1|always1~0_combout\,
	combout => \inst2|uart_tx_u1|Send_addr[7]~8_combout\);

-- Location: FF_X38_Y23_N23
\inst2|uart_tx_u1|Send_addr_w[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|Send_addr[7]~8_combout\,
	clrn => \rst_n~input_o\,
	ena => \inst2|uart_tx_u1|Send_addr_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|Send_addr_w\(7));

-- Location: LCCOMB_X36_Y20_N28
\inst2|uart_tx_u1|addr[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr[7]~0_combout\ = (\inst2|uart_tx_u1|addr~6_combout\ & (\inst2|uart_tx_u1|Send_addr_w\(7))) # (!\inst2|uart_tx_u1|addr~6_combout\ & ((\inst2|uart_tx_u1|Add16~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr_w\(7),
	datab => \inst2|uart_tx_u1|addr~6_combout\,
	datad => \inst2|uart_tx_u1|Add16~14_combout\,
	combout => \inst2|uart_tx_u1|addr[7]~0_combout\);

-- Location: LCCOMB_X38_Y21_N14
\inst2|uart_tx_u1|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add3~14_combout\ = \inst2|uart_tx_u1|Add3~13\ $ (\inst2|uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \inst2|uart_tx_u1|Add3~13\,
	combout => \inst2|uart_tx_u1|Add3~14_combout\);

-- Location: LCCOMB_X38_Y20_N12
\inst2|uart_tx_u1|Add10~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add10~10_combout\ = \inst2|uart_tx_u1|Send_addr[7]~8_combout\ $ (\inst2|uart_tx_u1|Add10~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \inst2|uart_tx_u1|Add10~9\,
	combout => \inst2|uart_tx_u1|Add10~10_combout\);

-- Location: LCCOMB_X36_Y23_N16
\inst2|uart_tx_u1|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add2~10_combout\ = \inst2|uart_tx_u1|Add2~9\ $ (\inst2|uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \inst2|uart_tx_u1|Add2~9\,
	combout => \inst2|uart_tx_u1|Add2~10_combout\);

-- Location: LCCOMB_X36_Y20_N30
\inst2|uart_tx_u1|addr~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~57_combout\ = (\inst2|Select_mode_u1|LED_select\(3) & ((\inst2|Select_mode_u1|LED_select\(0)) # ((\inst2|uart_tx_u1|Add10~10_combout\)))) # (!\inst2|Select_mode_u1|LED_select\(3) & (!\inst2|Select_mode_u1|LED_select\(0) & 
-- ((\inst2|uart_tx_u1|Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(3),
	datab => \inst2|Select_mode_u1|LED_select\(0),
	datac => \inst2|uart_tx_u1|Add10~10_combout\,
	datad => \inst2|uart_tx_u1|Add2~10_combout\,
	combout => \inst2|uart_tx_u1|addr~57_combout\);

-- Location: LCCOMB_X35_Y21_N14
\inst2|uart_tx_u1|Add11~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add11~14_combout\ = \inst2|uart_tx_u1|Add11~13\ $ (\inst2|uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \inst2|uart_tx_u1|Add11~13\,
	combout => \inst2|uart_tx_u1|Add11~14_combout\);

-- Location: LCCOMB_X36_Y20_N0
\inst2|uart_tx_u1|addr~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~58_combout\ = (\inst2|Select_mode_u1|LED_select\(0) & ((\inst2|uart_tx_u1|addr~57_combout\ & ((\inst2|uart_tx_u1|Add11~14_combout\))) # (!\inst2|uart_tx_u1|addr~57_combout\ & (\inst2|uart_tx_u1|Add3~14_combout\)))) # 
-- (!\inst2|Select_mode_u1|LED_select\(0) & (((\inst2|uart_tx_u1|addr~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Add3~14_combout\,
	datab => \inst2|Select_mode_u1|LED_select\(0),
	datac => \inst2|uart_tx_u1|addr~57_combout\,
	datad => \inst2|uart_tx_u1|Add11~14_combout\,
	combout => \inst2|uart_tx_u1|addr~58_combout\);

-- Location: LCCOMB_X36_Y20_N14
\inst2|uart_tx_u1|Add14~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add14~8_combout\ = \inst2|uart_tx_u1|Add14~7\ $ (!\inst2|uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \inst2|uart_tx_u1|Add14~7\,
	combout => \inst2|uart_tx_u1|Add14~8_combout\);

-- Location: LCCOMB_X37_Y19_N22
\inst2|uart_tx_u1|Add15~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add15~14_combout\ = \inst2|uart_tx_u1|Add15~13\ $ (\inst2|uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \inst2|uart_tx_u1|Add15~13\,
	combout => \inst2|uart_tx_u1|Add15~14_combout\);

-- Location: LCCOMB_X39_Y21_N16
\inst2|uart_tx_u1|Add7~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add7~14_combout\ = \inst2|uart_tx_u1|Add7~13\ $ (\inst2|uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \inst2|uart_tx_u1|Add7~13\,
	combout => \inst2|uart_tx_u1|Add7~14_combout\);

-- Location: LCCOMB_X36_Y20_N16
\inst2|uart_tx_u1|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add6~4_combout\ = \inst2|uart_tx_u1|Send_addr[7]~8_combout\ $ (((\inst2|uart_tx_u1|Send_addr[5]~4_combout\ & \inst2|uart_tx_u1|Send_addr[6]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|Send_addr[5]~4_combout\,
	datac => \inst2|uart_tx_u1|Send_addr[6]~7_combout\,
	datad => \inst2|uart_tx_u1|Send_addr[7]~8_combout\,
	combout => \inst2|uart_tx_u1|Add6~4_combout\);

-- Location: LCCOMB_X36_Y20_N18
\inst2|uart_tx_u1|addr~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~64_combout\ = (\inst2|Select_mode_u1|LED_select\(3) & (\inst2|Select_mode_u1|LED_select\(0))) # (!\inst2|Select_mode_u1|LED_select\(3) & ((\inst2|Select_mode_u1|LED_select\(0) & (\inst2|uart_tx_u1|Add7~14_combout\)) # 
-- (!\inst2|Select_mode_u1|LED_select\(0) & ((\inst2|uart_tx_u1|Add6~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(3),
	datab => \inst2|Select_mode_u1|LED_select\(0),
	datac => \inst2|uart_tx_u1|Add7~14_combout\,
	datad => \inst2|uart_tx_u1|Add6~4_combout\,
	combout => \inst2|uart_tx_u1|addr~64_combout\);

-- Location: LCCOMB_X36_Y20_N4
\inst2|uart_tx_u1|addr~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~65_combout\ = (\inst2|Select_mode_u1|LED_select\(3) & ((\inst2|uart_tx_u1|addr~64_combout\ & ((\inst2|uart_tx_u1|Add15~14_combout\))) # (!\inst2|uart_tx_u1|addr~64_combout\ & (\inst2|uart_tx_u1|Add14~8_combout\)))) # 
-- (!\inst2|Select_mode_u1|LED_select\(3) & (((\inst2|uart_tx_u1|addr~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(3),
	datab => \inst2|uart_tx_u1|Add14~8_combout\,
	datac => \inst2|uart_tx_u1|Add15~14_combout\,
	datad => \inst2|uart_tx_u1|addr~64_combout\,
	combout => \inst2|uart_tx_u1|addr~65_combout\);

-- Location: LCCOMB_X39_Y21_N30
\inst2|uart_tx_u1|Add12~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add12~12_combout\ = \inst2|uart_tx_u1|Add12~11\ $ (!\inst2|uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \inst2|uart_tx_u1|Add12~11\,
	combout => \inst2|uart_tx_u1|Add12~12_combout\);

-- Location: LCCOMB_X38_Y19_N26
\inst2|uart_tx_u1|Add13~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add13~14_combout\ = \inst2|uart_tx_u1|Send_addr[7]~8_combout\ $ (\inst2|uart_tx_u1|Add13~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \inst2|uart_tx_u1|Add13~13\,
	combout => \inst2|uart_tx_u1|Add13~14_combout\);

-- Location: LCCOMB_X39_Y20_N26
\inst2|uart_tx_u1|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add4~12_combout\ = \inst2|uart_tx_u1|Add4~11\ $ (!\inst2|uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \inst2|uart_tx_u1|Add4~11\,
	combout => \inst2|uart_tx_u1|Add4~12_combout\);

-- Location: LCCOMB_X38_Y20_N28
\inst2|uart_tx_u1|Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add5~14_combout\ = \inst2|uart_tx_u1|Send_addr[7]~8_combout\ $ (\inst2|uart_tx_u1|Add5~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \inst2|uart_tx_u1|Add5~13\,
	combout => \inst2|uart_tx_u1|Add5~14_combout\);

-- Location: LCCOMB_X36_Y20_N20
\inst2|uart_tx_u1|addr~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~59_combout\ = (\inst2|Select_mode_u1|LED_select\(3) & (\inst2|Select_mode_u1|LED_select\(0))) # (!\inst2|Select_mode_u1|LED_select\(3) & ((\inst2|Select_mode_u1|LED_select\(0) & ((\inst2|uart_tx_u1|Add5~14_combout\))) # 
-- (!\inst2|Select_mode_u1|LED_select\(0) & (\inst2|uart_tx_u1|Add4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(3),
	datab => \inst2|Select_mode_u1|LED_select\(0),
	datac => \inst2|uart_tx_u1|Add4~12_combout\,
	datad => \inst2|uart_tx_u1|Add5~14_combout\,
	combout => \inst2|uart_tx_u1|addr~59_combout\);

-- Location: LCCOMB_X36_Y20_N22
\inst2|uart_tx_u1|addr~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~60_combout\ = (\inst2|Select_mode_u1|LED_select\(3) & ((\inst2|uart_tx_u1|addr~59_combout\ & ((\inst2|uart_tx_u1|Add13~14_combout\))) # (!\inst2|uart_tx_u1|addr~59_combout\ & (\inst2|uart_tx_u1|Add12~12_combout\)))) # 
-- (!\inst2|Select_mode_u1|LED_select\(3) & (((\inst2|uart_tx_u1|addr~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Add12~12_combout\,
	datab => \inst2|Select_mode_u1|LED_select\(3),
	datac => \inst2|uart_tx_u1|Add13~14_combout\,
	datad => \inst2|uart_tx_u1|addr~59_combout\,
	combout => \inst2|uart_tx_u1|addr~60_combout\);

-- Location: LCCOMB_X37_Y20_N20
\inst2|uart_tx_u1|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add1~14_combout\ = \inst2|uart_tx_u1|Add1~13\ $ (\inst2|uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \inst2|uart_tx_u1|Add1~13\,
	combout => \inst2|uart_tx_u1|Add1~14_combout\);

-- Location: LCCOMB_X34_Y23_N16
\inst2|uart_tx_u1|Add9~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add9~14_combout\ = \inst2|uart_tx_u1|Add9~13\ $ (\inst2|uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \inst2|uart_tx_u1|Add9~13\,
	combout => \inst2|uart_tx_u1|Add9~14_combout\);

-- Location: LCCOMB_X35_Y20_N26
\inst2|uart_tx_u1|Add8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add8~12_combout\ = \inst2|uart_tx_u1|Add8~11\ $ (!\inst2|uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \inst2|uart_tx_u1|Add8~11\,
	combout => \inst2|uart_tx_u1|Add8~12_combout\);

-- Location: LCCOMB_X34_Y23_N30
\inst2|uart_tx_u1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Add0~12_combout\ = \inst2|uart_tx_u1|Add0~11\ $ (!\inst2|uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \inst2|uart_tx_u1|Add0~11\,
	combout => \inst2|uart_tx_u1|Add0~12_combout\);

-- Location: LCCOMB_X35_Y20_N8
\inst2|uart_tx_u1|addr~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~61_combout\ = (\inst2|Select_mode_u1|LED_select\(0) & (((\inst2|Select_mode_u1|LED_select\(3))))) # (!\inst2|Select_mode_u1|LED_select\(0) & ((\inst2|Select_mode_u1|LED_select\(3) & (\inst2|uart_tx_u1|Add8~12_combout\)) # 
-- (!\inst2|Select_mode_u1|LED_select\(3) & ((\inst2|uart_tx_u1|Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Add8~12_combout\,
	datab => \inst2|Select_mode_u1|LED_select\(0),
	datac => \inst2|Select_mode_u1|LED_select\(3),
	datad => \inst2|uart_tx_u1|Add0~12_combout\,
	combout => \inst2|uart_tx_u1|addr~61_combout\);

-- Location: LCCOMB_X36_Y20_N24
\inst2|uart_tx_u1|addr~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~62_combout\ = (\inst2|Select_mode_u1|LED_select\(0) & ((\inst2|uart_tx_u1|addr~61_combout\ & ((\inst2|uart_tx_u1|Add9~14_combout\))) # (!\inst2|uart_tx_u1|addr~61_combout\ & (\inst2|uart_tx_u1|Add1~14_combout\)))) # 
-- (!\inst2|Select_mode_u1|LED_select\(0) & (((\inst2|uart_tx_u1|addr~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Add1~14_combout\,
	datab => \inst2|Select_mode_u1|LED_select\(0),
	datac => \inst2|uart_tx_u1|Add9~14_combout\,
	datad => \inst2|uart_tx_u1|addr~61_combout\,
	combout => \inst2|uart_tx_u1|addr~62_combout\);

-- Location: LCCOMB_X36_Y20_N2
\inst2|uart_tx_u1|addr~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~63_combout\ = (\inst2|Select_mode_u1|LED_select\(1) & (\inst2|Select_mode_u1|LED_select\(2))) # (!\inst2|Select_mode_u1|LED_select\(1) & ((\inst2|Select_mode_u1|LED_select\(2) & (\inst2|uart_tx_u1|addr~60_combout\)) # 
-- (!\inst2|Select_mode_u1|LED_select\(2) & ((\inst2|uart_tx_u1|addr~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(1),
	datab => \inst2|Select_mode_u1|LED_select\(2),
	datac => \inst2|uart_tx_u1|addr~60_combout\,
	datad => \inst2|uart_tx_u1|addr~62_combout\,
	combout => \inst2|uart_tx_u1|addr~63_combout\);

-- Location: LCCOMB_X36_Y20_N26
\inst2|uart_tx_u1|addr~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~66_combout\ = (\inst2|Select_mode_u1|LED_select\(1) & ((\inst2|uart_tx_u1|addr~63_combout\ & ((\inst2|uart_tx_u1|addr~65_combout\))) # (!\inst2|uart_tx_u1|addr~63_combout\ & (\inst2|uart_tx_u1|addr~58_combout\)))) # 
-- (!\inst2|Select_mode_u1|LED_select\(1) & (((\inst2|uart_tx_u1|addr~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(1),
	datab => \inst2|uart_tx_u1|addr~58_combout\,
	datac => \inst2|uart_tx_u1|addr~65_combout\,
	datad => \inst2|uart_tx_u1|addr~63_combout\,
	combout => \inst2|uart_tx_u1|addr~66_combout\);

-- Location: FF_X36_Y20_N29
\inst2|uart_tx_u1|addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|addr[7]~0_combout\,
	asdata => \inst2|uart_tx_u1|addr~66_combout\,
	clrn => \rst_n~input_o\,
	sload => \inst2|uart_tx_u1|always0~3_combout\,
	ena => \inst2|uart_tx_u1|addr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|addr\(7));

-- Location: LCCOMB_X35_Y23_N6
\inst2|uart_tx_u1|AT|rom~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~100_combout\ = (\inst2|uart_tx_u1|addr\(6)) # ((\inst2|uart_tx_u1|addr\(3) & ((\inst2|uart_tx_u1|addr\(1)) # (!\inst2|uart_tx_u1|addr\(0)))) # (!\inst2|uart_tx_u1|addr\(3) & (\inst2|uart_tx_u1|addr\(1) $ 
-- (\inst2|uart_tx_u1|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(3),
	datab => \inst2|uart_tx_u1|addr\(1),
	datac => \inst2|uart_tx_u1|addr\(0),
	datad => \inst2|uart_tx_u1|addr\(6),
	combout => \inst2|uart_tx_u1|AT|rom~100_combout\);

-- Location: LCCOMB_X35_Y23_N20
\inst2|uart_tx_u1|AT|rom~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~101_combout\ = (\inst2|uart_tx_u1|AT|rom~100_combout\) # ((\inst2|uart_tx_u1|addr\(5)) # (\inst2|uart_tx_u1|addr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|AT|rom~100_combout\,
	datab => \inst2|uart_tx_u1|addr\(5),
	datad => \inst2|uart_tx_u1|addr\(4),
	combout => \inst2|uart_tx_u1|AT|rom~101_combout\);

-- Location: LCCOMB_X36_Y21_N28
\inst2|uart_tx_u1|AT|rom~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~86_combout\ = (\inst2|uart_tx_u1|addr\(4) & (!\inst2|uart_tx_u1|addr\(3) & (\inst2|uart_tx_u1|addr\(1) $ (!\inst2|uart_tx_u1|addr\(0))))) # (!\inst2|uart_tx_u1|addr\(4) & ((\inst2|uart_tx_u1|addr\(3) & (\inst2|uart_tx_u1|addr\(1) 
-- & !\inst2|uart_tx_u1|addr\(0))) # (!\inst2|uart_tx_u1|addr\(3) & (!\inst2|uart_tx_u1|addr\(1) & \inst2|uart_tx_u1|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(4),
	datab => \inst2|uart_tx_u1|addr\(3),
	datac => \inst2|uart_tx_u1|addr\(1),
	datad => \inst2|uart_tx_u1|addr\(0),
	combout => \inst2|uart_tx_u1|AT|rom~86_combout\);

-- Location: LCCOMB_X35_Y23_N8
\inst2|uart_tx_u1|AT|rom~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~87_combout\ = (!\inst2|uart_tx_u1|addr\(6) & (!\inst2|uart_tx_u1|addr\(5) & \inst2|uart_tx_u1|AT|rom~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|addr\(6),
	datac => \inst2|uart_tx_u1|addr\(5),
	datad => \inst2|uart_tx_u1|AT|rom~86_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~87_combout\);

-- Location: LCCOMB_X35_Y23_N24
\inst2|uart_tx_u1|AT|rom~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~91_combout\ = (\inst2|uart_tx_u1|addr\(1) & ((\inst2|uart_tx_u1|addr\(0)) # (\inst2|uart_tx_u1|addr\(3) $ (\inst2|uart_tx_u1|addr\(6))))) # (!\inst2|uart_tx_u1|addr\(1) & (\inst2|uart_tx_u1|addr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(3),
	datab => \inst2|uart_tx_u1|addr\(6),
	datac => \inst2|uart_tx_u1|addr\(1),
	datad => \inst2|uart_tx_u1|addr\(0),
	combout => \inst2|uart_tx_u1|AT|rom~91_combout\);

-- Location: LCCOMB_X35_Y23_N14
\inst2|uart_tx_u1|AT|rom~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~88_combout\ = (\inst2|uart_tx_u1|addr\(6) & ((\inst2|uart_tx_u1|addr\(3)) # ((\inst2|uart_tx_u1|addr\(1))))) # (!\inst2|uart_tx_u1|addr\(6) & (\inst2|uart_tx_u1|addr\(0) & (\inst2|uart_tx_u1|addr\(3) $ 
-- (\inst2|uart_tx_u1|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(3),
	datab => \inst2|uart_tx_u1|addr\(6),
	datac => \inst2|uart_tx_u1|addr\(1),
	datad => \inst2|uart_tx_u1|addr\(0),
	combout => \inst2|uart_tx_u1|AT|rom~88_combout\);

-- Location: LCCOMB_X35_Y23_N16
\inst2|uart_tx_u1|AT|rom~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~89_combout\ = (\inst2|uart_tx_u1|addr\(1) & (\inst2|uart_tx_u1|addr\(3) $ ((!\inst2|uart_tx_u1|addr\(6))))) # (!\inst2|uart_tx_u1|addr\(1) & (\inst2|uart_tx_u1|addr\(0) & (\inst2|uart_tx_u1|addr\(3) $ 
-- (!\inst2|uart_tx_u1|addr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(3),
	datab => \inst2|uart_tx_u1|addr\(1),
	datac => \inst2|uart_tx_u1|addr\(6),
	datad => \inst2|uart_tx_u1|addr\(0),
	combout => \inst2|uart_tx_u1|AT|rom~89_combout\);

-- Location: LCCOMB_X35_Y23_N2
\inst2|uart_tx_u1|AT|rom~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~90_combout\ = (\inst2|uart_tx_u1|addr\(5) & (!\inst2|uart_tx_u1|addr\(4) & ((!\inst2|uart_tx_u1|AT|rom~89_combout\)))) # (!\inst2|uart_tx_u1|addr\(5) & (\inst2|uart_tx_u1|addr\(4) & (\inst2|uart_tx_u1|AT|rom~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(5),
	datab => \inst2|uart_tx_u1|addr\(4),
	datac => \inst2|uart_tx_u1|AT|rom~88_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~89_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~90_combout\);

-- Location: LCCOMB_X35_Y23_N30
\inst2|uart_tx_u1|AT|rom~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~92_combout\ = (\inst2|uart_tx_u1|AT|rom~90_combout\) # ((\inst2|uart_tx_u1|addr\(4) & (!\inst2|uart_tx_u1|AT|rom~91_combout\ & \inst2|uart_tx_u1|addr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(4),
	datab => \inst2|uart_tx_u1|AT|rom~91_combout\,
	datac => \inst2|uart_tx_u1|addr\(5),
	datad => \inst2|uart_tx_u1|AT|rom~90_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~92_combout\);

-- Location: LCCOMB_X35_Y23_N0
\inst2|uart_tx_u1|AT|rom~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~97_combout\ = (\inst2|uart_tx_u1|addr\(3) & ((\inst2|uart_tx_u1|addr\(4) & ((\inst2|uart_tx_u1|addr\(0)))) # (!\inst2|uart_tx_u1|addr\(4) & (!\inst2|uart_tx_u1|addr\(6))))) # (!\inst2|uart_tx_u1|addr\(3) & 
-- ((\inst2|uart_tx_u1|addr\(6) & ((!\inst2|uart_tx_u1|addr\(4)))) # (!\inst2|uart_tx_u1|addr\(6) & ((\inst2|uart_tx_u1|addr\(0)) # (\inst2|uart_tx_u1|addr\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(3),
	datab => \inst2|uart_tx_u1|addr\(6),
	datac => \inst2|uart_tx_u1|addr\(0),
	datad => \inst2|uart_tx_u1|addr\(4),
	combout => \inst2|uart_tx_u1|AT|rom~97_combout\);

-- Location: LCCOMB_X35_Y23_N4
\inst2|uart_tx_u1|AT|rom~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~93_combout\ = (\inst2|uart_tx_u1|addr\(3) & ((\inst2|uart_tx_u1|addr\(6) & (!\inst2|uart_tx_u1|addr\(0) & \inst2|uart_tx_u1|addr\(4))) # (!\inst2|uart_tx_u1|addr\(6) & ((!\inst2|uart_tx_u1|addr\(4)))))) # 
-- (!\inst2|uart_tx_u1|addr\(3) & (\inst2|uart_tx_u1|addr\(6) $ (((\inst2|uart_tx_u1|addr\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(3),
	datab => \inst2|uart_tx_u1|addr\(6),
	datac => \inst2|uart_tx_u1|addr\(0),
	datad => \inst2|uart_tx_u1|addr\(4),
	combout => \inst2|uart_tx_u1|AT|rom~93_combout\);

-- Location: LCCOMB_X35_Y23_N22
\inst2|uart_tx_u1|AT|rom~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~94_combout\ = (\inst2|uart_tx_u1|addr\(3) & ((\inst2|uart_tx_u1|addr\(6) $ (\inst2|uart_tx_u1|addr\(4))))) # (!\inst2|uart_tx_u1|addr\(3) & ((\inst2|uart_tx_u1|addr\(0) & ((\inst2|uart_tx_u1|addr\(4)) # 
-- (!\inst2|uart_tx_u1|addr\(6)))) # (!\inst2|uart_tx_u1|addr\(0) & (!\inst2|uart_tx_u1|addr\(6) & \inst2|uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(3),
	datab => \inst2|uart_tx_u1|addr\(0),
	datac => \inst2|uart_tx_u1|addr\(6),
	datad => \inst2|uart_tx_u1|addr\(4),
	combout => \inst2|uart_tx_u1|AT|rom~94_combout\);

-- Location: LCCOMB_X35_Y23_N28
\inst2|uart_tx_u1|AT|rom~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~95_combout\ = (\inst2|uart_tx_u1|addr\(0) & (((\inst2|uart_tx_u1|addr\(6) & \inst2|uart_tx_u1|addr\(4))))) # (!\inst2|uart_tx_u1|addr\(0) & ((\inst2|uart_tx_u1|addr\(6) & (\inst2|uart_tx_u1|addr\(3))) # 
-- (!\inst2|uart_tx_u1|addr\(6) & ((\inst2|uart_tx_u1|addr\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(3),
	datab => \inst2|uart_tx_u1|addr\(0),
	datac => \inst2|uart_tx_u1|addr\(6),
	datad => \inst2|uart_tx_u1|addr\(4),
	combout => \inst2|uart_tx_u1|AT|rom~95_combout\);

-- Location: LCCOMB_X35_Y23_N10
\inst2|uart_tx_u1|AT|rom~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~96_combout\ = (\inst2|uart_tx_u1|addr\(1) & ((\inst2|uart_tx_u1|addr\(5)) # ((!\inst2|uart_tx_u1|AT|rom~94_combout\)))) # (!\inst2|uart_tx_u1|addr\(1) & (!\inst2|uart_tx_u1|addr\(5) & ((\inst2|uart_tx_u1|AT|rom~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(1),
	datab => \inst2|uart_tx_u1|addr\(5),
	datac => \inst2|uart_tx_u1|AT|rom~94_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~95_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~96_combout\);

-- Location: LCCOMB_X35_Y23_N18
\inst2|uart_tx_u1|AT|rom~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~98_combout\ = (\inst2|uart_tx_u1|addr\(5) & ((\inst2|uart_tx_u1|AT|rom~96_combout\ & (\inst2|uart_tx_u1|AT|rom~97_combout\)) # (!\inst2|uart_tx_u1|AT|rom~96_combout\ & ((\inst2|uart_tx_u1|AT|rom~93_combout\))))) # 
-- (!\inst2|uart_tx_u1|addr\(5) & (((\inst2|uart_tx_u1|AT|rom~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(5),
	datab => \inst2|uart_tx_u1|AT|rom~97_combout\,
	datac => \inst2|uart_tx_u1|AT|rom~93_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~96_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~98_combout\);

-- Location: LCCOMB_X35_Y23_N12
\inst2|uart_tx_u1|AT|rom~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~99_combout\ = (\inst2|uart_tx_u1|addr\(2) & ((\inst2|uart_tx_u1|addr\(7)) # ((\inst2|uart_tx_u1|AT|rom~92_combout\)))) # (!\inst2|uart_tx_u1|addr\(2) & (!\inst2|uart_tx_u1|addr\(7) & ((\inst2|uart_tx_u1|AT|rom~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(2),
	datab => \inst2|uart_tx_u1|addr\(7),
	datac => \inst2|uart_tx_u1|AT|rom~92_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~98_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~99_combout\);

-- Location: LCCOMB_X35_Y23_N26
\inst2|uart_tx_u1|AT|rom~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~102_combout\ = (\inst2|uart_tx_u1|addr\(7) & ((\inst2|uart_tx_u1|AT|rom~99_combout\ & (!\inst2|uart_tx_u1|AT|rom~101_combout\)) # (!\inst2|uart_tx_u1|AT|rom~99_combout\ & ((\inst2|uart_tx_u1|AT|rom~87_combout\))))) # 
-- (!\inst2|uart_tx_u1|addr\(7) & (((\inst2|uart_tx_u1|AT|rom~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(7),
	datab => \inst2|uart_tx_u1|AT|rom~101_combout\,
	datac => \inst2|uart_tx_u1|AT|rom~87_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~99_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~102_combout\);

-- Location: LCCOMB_X38_Y24_N30
\inst2|uart_tx_u1|AT|rom~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~117_combout\ = (\inst2|uart_tx_u1|addr\(1) & ((\inst2|uart_tx_u1|addr\(3)) # (\inst2|uart_tx_u1|addr\(2) $ (!\inst2|uart_tx_u1|addr\(4))))) # (!\inst2|uart_tx_u1|addr\(1) & ((\inst2|uart_tx_u1|addr\(4)) # 
-- (\inst2|uart_tx_u1|addr\(2) $ (\inst2|uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(1),
	datab => \inst2|uart_tx_u1|addr\(2),
	datac => \inst2|uart_tx_u1|addr\(3),
	datad => \inst2|uart_tx_u1|addr\(4),
	combout => \inst2|uart_tx_u1|AT|rom~117_combout\);

-- Location: LCCOMB_X37_Y23_N10
\inst2|uart_tx_u1|AT|rom~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~104_combout\ = (\inst2|uart_tx_u1|addr\(1) & (((\inst2|uart_tx_u1|addr\(2)) # (\inst2|uart_tx_u1|addr\(6))) # (!\inst2|uart_tx_u1|addr\(3)))) # (!\inst2|uart_tx_u1|addr\(1) & ((\inst2|uart_tx_u1|addr\(3) & 
-- ((!\inst2|uart_tx_u1|addr\(6)))) # (!\inst2|uart_tx_u1|addr\(3) & (!\inst2|uart_tx_u1|addr\(2) & \inst2|uart_tx_u1|addr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(1),
	datab => \inst2|uart_tx_u1|addr\(3),
	datac => \inst2|uart_tx_u1|addr\(2),
	datad => \inst2|uart_tx_u1|addr\(6),
	combout => \inst2|uart_tx_u1|AT|rom~104_combout\);

-- Location: LCCOMB_X37_Y23_N30
\inst2|uart_tx_u1|AT|rom~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~108_combout\ = (\inst2|uart_tx_u1|addr\(1) & ((\inst2|uart_tx_u1|addr\(2)) # (\inst2|uart_tx_u1|addr\(3) $ (\inst2|uart_tx_u1|addr\(6))))) # (!\inst2|uart_tx_u1|addr\(1) & ((\inst2|uart_tx_u1|addr\(3)) # 
-- ((!\inst2|uart_tx_u1|addr\(2) & \inst2|uart_tx_u1|addr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(1),
	datab => \inst2|uart_tx_u1|addr\(3),
	datac => \inst2|uart_tx_u1|addr\(2),
	datad => \inst2|uart_tx_u1|addr\(6),
	combout => \inst2|uart_tx_u1|AT|rom~108_combout\);

-- Location: LCCOMB_X37_Y23_N8
\inst2|uart_tx_u1|AT|rom~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~105_combout\ = (\inst2|uart_tx_u1|addr\(1) & ((\inst2|uart_tx_u1|addr\(2) & ((\inst2|uart_tx_u1|addr\(3)) # (!\inst2|uart_tx_u1|addr\(6)))) # (!\inst2|uart_tx_u1|addr\(2) & ((\inst2|uart_tx_u1|addr\(6)))))) # 
-- (!\inst2|uart_tx_u1|addr\(1) & (((\inst2|uart_tx_u1|addr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(1),
	datab => \inst2|uart_tx_u1|addr\(3),
	datac => \inst2|uart_tx_u1|addr\(2),
	datad => \inst2|uart_tx_u1|addr\(6),
	combout => \inst2|uart_tx_u1|AT|rom~105_combout\);

-- Location: LCCOMB_X37_Y23_N18
\inst2|uart_tx_u1|AT|rom~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~106_combout\ = (!\inst2|uart_tx_u1|addr\(1) & ((\inst2|uart_tx_u1|addr\(3) & (\inst2|uart_tx_u1|addr\(2) $ (\inst2|uart_tx_u1|addr\(6)))) # (!\inst2|uart_tx_u1|addr\(3) & (\inst2|uart_tx_u1|addr\(2) & 
-- \inst2|uart_tx_u1|addr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(1),
	datab => \inst2|uart_tx_u1|addr\(3),
	datac => \inst2|uart_tx_u1|addr\(2),
	datad => \inst2|uart_tx_u1|addr\(6),
	combout => \inst2|uart_tx_u1|AT|rom~106_combout\);

-- Location: LCCOMB_X37_Y23_N16
\inst2|uart_tx_u1|AT|rom~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~107_combout\ = (\inst2|uart_tx_u1|addr\(5) & (\inst2|uart_tx_u1|addr\(4))) # (!\inst2|uart_tx_u1|addr\(5) & ((\inst2|uart_tx_u1|addr\(4) & (\inst2|uart_tx_u1|AT|rom~105_combout\)) # (!\inst2|uart_tx_u1|addr\(4) & 
-- ((!\inst2|uart_tx_u1|AT|rom~106_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(5),
	datab => \inst2|uart_tx_u1|addr\(4),
	datac => \inst2|uart_tx_u1|AT|rom~105_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~106_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~107_combout\);

-- Location: LCCOMB_X37_Y23_N4
\inst2|uart_tx_u1|AT|rom~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~109_combout\ = (\inst2|uart_tx_u1|addr\(5) & ((\inst2|uart_tx_u1|AT|rom~107_combout\ & ((!\inst2|uart_tx_u1|AT|rom~108_combout\))) # (!\inst2|uart_tx_u1|AT|rom~107_combout\ & (\inst2|uart_tx_u1|AT|rom~104_combout\)))) # 
-- (!\inst2|uart_tx_u1|addr\(5) & (((\inst2|uart_tx_u1|AT|rom~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|AT|rom~104_combout\,
	datab => \inst2|uart_tx_u1|addr\(5),
	datac => \inst2|uart_tx_u1|AT|rom~108_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~107_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~109_combout\);

-- Location: LCCOMB_X37_Y23_N2
\inst2|uart_tx_u1|AT|rom~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~110_combout\ = (\inst2|uart_tx_u1|addr\(3) & (\inst2|uart_tx_u1|addr\(1) $ (((!\inst2|uart_tx_u1|addr\(6)))))) # (!\inst2|uart_tx_u1|addr\(3) & (!\inst2|uart_tx_u1|addr\(2) & (\inst2|uart_tx_u1|addr\(1) $ 
-- (\inst2|uart_tx_u1|addr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(1),
	datab => \inst2|uart_tx_u1|addr\(3),
	datac => \inst2|uart_tx_u1|addr\(2),
	datad => \inst2|uart_tx_u1|addr\(6),
	combout => \inst2|uart_tx_u1|AT|rom~110_combout\);

-- Location: LCCOMB_X37_Y23_N6
\inst2|uart_tx_u1|AT|rom~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~114_combout\ = (\inst2|uart_tx_u1|addr\(1) & ((\inst2|uart_tx_u1|addr\(2) & (!\inst2|uart_tx_u1|addr\(3))) # (!\inst2|uart_tx_u1|addr\(2) & ((\inst2|uart_tx_u1|addr\(6)))))) # (!\inst2|uart_tx_u1|addr\(1) & 
-- (\inst2|uart_tx_u1|addr\(3) & ((\inst2|uart_tx_u1|addr\(2)) # (!\inst2|uart_tx_u1|addr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(1),
	datab => \inst2|uart_tx_u1|addr\(3),
	datac => \inst2|uart_tx_u1|addr\(2),
	datad => \inst2|uart_tx_u1|addr\(6),
	combout => \inst2|uart_tx_u1|AT|rom~114_combout\);

-- Location: LCCOMB_X37_Y23_N22
\inst2|uart_tx_u1|AT|rom~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~112_combout\ = (\inst2|uart_tx_u1|addr\(1) & (!\inst2|uart_tx_u1|addr\(2) & (\inst2|uart_tx_u1|addr\(3) $ (\inst2|uart_tx_u1|addr\(6))))) # (!\inst2|uart_tx_u1|addr\(1) & (\inst2|uart_tx_u1|addr\(6) & (\inst2|uart_tx_u1|addr\(3) $ 
-- (!\inst2|uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(1),
	datab => \inst2|uart_tx_u1|addr\(3),
	datac => \inst2|uart_tx_u1|addr\(2),
	datad => \inst2|uart_tx_u1|addr\(6),
	combout => \inst2|uart_tx_u1|AT|rom~112_combout\);

-- Location: LCCOMB_X37_Y23_N20
\inst2|uart_tx_u1|AT|rom~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~111_combout\ = (\inst2|uart_tx_u1|addr\(2) & (\inst2|uart_tx_u1|addr\(1) & ((!\inst2|uart_tx_u1|addr\(6)) # (!\inst2|uart_tx_u1|addr\(3))))) # (!\inst2|uart_tx_u1|addr\(2) & (!\inst2|uart_tx_u1|addr\(6) & 
-- (\inst2|uart_tx_u1|addr\(1) $ (\inst2|uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(2),
	datab => \inst2|uart_tx_u1|addr\(1),
	datac => \inst2|uart_tx_u1|addr\(3),
	datad => \inst2|uart_tx_u1|addr\(6),
	combout => \inst2|uart_tx_u1|AT|rom~111_combout\);

-- Location: LCCOMB_X37_Y23_N28
\inst2|uart_tx_u1|AT|rom~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~113_combout\ = (\inst2|uart_tx_u1|addr\(5) & ((\inst2|uart_tx_u1|addr\(4)) # ((\inst2|uart_tx_u1|AT|rom~111_combout\)))) # (!\inst2|uart_tx_u1|addr\(5) & (!\inst2|uart_tx_u1|addr\(4) & (\inst2|uart_tx_u1|AT|rom~112_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(5),
	datab => \inst2|uart_tx_u1|addr\(4),
	datac => \inst2|uart_tx_u1|AT|rom~112_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~111_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~113_combout\);

-- Location: LCCOMB_X37_Y23_N12
\inst2|uart_tx_u1|AT|rom~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~115_combout\ = (\inst2|uart_tx_u1|addr\(4) & ((\inst2|uart_tx_u1|AT|rom~113_combout\ & ((!\inst2|uart_tx_u1|AT|rom~114_combout\))) # (!\inst2|uart_tx_u1|AT|rom~113_combout\ & (\inst2|uart_tx_u1|AT|rom~110_combout\)))) # 
-- (!\inst2|uart_tx_u1|addr\(4) & (((\inst2|uart_tx_u1|AT|rom~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(4),
	datab => \inst2|uart_tx_u1|AT|rom~110_combout\,
	datac => \inst2|uart_tx_u1|AT|rom~114_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~113_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~115_combout\);

-- Location: LCCOMB_X37_Y23_N26
\inst2|uart_tx_u1|AT|rom~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~116_combout\ = (\inst2|uart_tx_u1|addr\(0) & ((\inst2|uart_tx_u1|addr\(7)) # ((\inst2|uart_tx_u1|AT|rom~109_combout\)))) # (!\inst2|uart_tx_u1|addr\(0) & (!\inst2|uart_tx_u1|addr\(7) & ((\inst2|uart_tx_u1|AT|rom~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(0),
	datab => \inst2|uart_tx_u1|addr\(7),
	datac => \inst2|uart_tx_u1|AT|rom~109_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~115_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~116_combout\);

-- Location: LCCOMB_X36_Y23_N26
\inst2|uart_tx_u1|AT|rom~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~103_combout\ = (\inst2|uart_tx_u1|addr\(3) & (!\inst2|uart_tx_u1|addr\(4) & (\inst2|uart_tx_u1|addr\(1) & !\inst2|uart_tx_u1|addr\(2)))) # (!\inst2|uart_tx_u1|addr\(3) & (!\inst2|uart_tx_u1|addr\(1) & (\inst2|uart_tx_u1|addr\(4) $ 
-- (\inst2|uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(3),
	datab => \inst2|uart_tx_u1|addr\(4),
	datac => \inst2|uart_tx_u1|addr\(1),
	datad => \inst2|uart_tx_u1|addr\(2),
	combout => \inst2|uart_tx_u1|AT|rom~103_combout\);

-- Location: LCCOMB_X37_Y23_N14
\inst2|uart_tx_u1|AT|rom~127\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~127_combout\ = (!\inst2|uart_tx_u1|addr\(6) & (!\inst2|uart_tx_u1|addr\(5) & ((\inst2|uart_tx_u1|AT|rom~116_combout\) # (\inst2|uart_tx_u1|AT|rom~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(6),
	datab => \inst2|uart_tx_u1|addr\(5),
	datac => \inst2|uart_tx_u1|AT|rom~116_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~103_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~127_combout\);

-- Location: LCCOMB_X38_Y23_N18
\inst2|uart_tx_u1|AT|rom~128\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~128_combout\ = (\inst2|uart_tx_u1|addr\(7) & (\inst2|uart_tx_u1|AT|rom~127_combout\ & ((!\inst2|uart_tx_u1|AT|rom~116_combout\) # (!\inst2|uart_tx_u1|AT|rom~117_combout\)))) # (!\inst2|uart_tx_u1|addr\(7) & 
-- (((\inst2|uart_tx_u1|AT|rom~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|AT|rom~117_combout\,
	datab => \inst2|uart_tx_u1|addr\(7),
	datac => \inst2|uart_tx_u1|AT|rom~116_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~127_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~128_combout\);

-- Location: LCCOMB_X38_Y23_N4
\inst2|uart_tx_u1|Equal4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Equal4~2_combout\ = (\inst2|uart_tx_u1|AT|rom~124_combout\) # ((\inst2|uart_tx_u1|AT|rom~102_combout\) # (\inst2|uart_tx_u1|AT|rom~128_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|AT|rom~124_combout\,
	datac => \inst2|uart_tx_u1|AT|rom~102_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~128_combout\,
	combout => \inst2|uart_tx_u1|Equal4~2_combout\);

-- Location: LCCOMB_X39_Y19_N24
\inst2|uart_tx_u1|addr~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~6_combout\ = (\inst2|uart_tx_u1|enable~q\ & (!\inst2|uart_tx_u1|Equal4~2_combout\ & (\inst2|uart_tx_u1|always0~1_combout\ & !\inst2|uart_tx_u1|Equal4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|enable~q\,
	datab => \inst2|uart_tx_u1|Equal4~2_combout\,
	datac => \inst2|uart_tx_u1|always0~1_combout\,
	datad => \inst2|uart_tx_u1|Equal4~3_combout\,
	combout => \inst2|uart_tx_u1|addr~6_combout\);

-- Location: LCCOMB_X37_Y21_N20
\inst2|uart_tx_u1|addr[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr[5]~5_combout\ = (\inst2|uart_tx_u1|addr~6_combout\ & (\inst2|uart_tx_u1|Send_addr_w\(5))) # (!\inst2|uart_tx_u1|addr~6_combout\ & ((\inst2|uart_tx_u1|Add16~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr~6_combout\,
	datab => \inst2|uart_tx_u1|Send_addr_w\(5),
	datad => \inst2|uart_tx_u1|Add16~10_combout\,
	combout => \inst2|uart_tx_u1|addr[5]~5_combout\);

-- Location: LCCOMB_X36_Y21_N0
\inst2|uart_tx_u1|addr~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~16_combout\ = (\inst2|Select_mode_u1|LED_select\(3) & ((\inst2|Select_mode_u1|LED_select\(2)) # ((\inst2|uart_tx_u1|Add11~10_combout\)))) # (!\inst2|Select_mode_u1|LED_select\(3) & (!\inst2|Select_mode_u1|LED_select\(2) & 
-- (\inst2|uart_tx_u1|Add3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(3),
	datab => \inst2|Select_mode_u1|LED_select\(2),
	datac => \inst2|uart_tx_u1|Add3~10_combout\,
	datad => \inst2|uart_tx_u1|Add11~10_combout\,
	combout => \inst2|uart_tx_u1|addr~16_combout\);

-- Location: LCCOMB_X36_Y21_N26
\inst2|uart_tx_u1|addr~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~17_combout\ = (\inst2|Select_mode_u1|LED_select\(2) & ((\inst2|uart_tx_u1|addr~16_combout\ & ((\inst2|uart_tx_u1|Add15~10_combout\))) # (!\inst2|uart_tx_u1|addr~16_combout\ & (\inst2|uart_tx_u1|Add7~10_combout\)))) # 
-- (!\inst2|Select_mode_u1|LED_select\(2) & (((\inst2|uart_tx_u1|addr~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Add7~10_combout\,
	datab => \inst2|Select_mode_u1|LED_select\(2),
	datac => \inst2|uart_tx_u1|Add15~10_combout\,
	datad => \inst2|uart_tx_u1|addr~16_combout\,
	combout => \inst2|uart_tx_u1|addr~17_combout\);

-- Location: LCCOMB_X36_Y21_N10
\inst2|uart_tx_u1|addr~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~9_combout\ = (\inst2|Select_mode_u1|LED_select\(3) & ((\inst2|Select_mode_u1|LED_select\(2)) # ((\inst2|uart_tx_u1|Add9~10_combout\)))) # (!\inst2|Select_mode_u1|LED_select\(3) & (!\inst2|Select_mode_u1|LED_select\(2) & 
-- ((\inst2|uart_tx_u1|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(3),
	datab => \inst2|Select_mode_u1|LED_select\(2),
	datac => \inst2|uart_tx_u1|Add9~10_combout\,
	datad => \inst2|uart_tx_u1|Add1~10_combout\,
	combout => \inst2|uart_tx_u1|addr~9_combout\);

-- Location: LCCOMB_X36_Y21_N4
\inst2|uart_tx_u1|addr~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~10_combout\ = (\inst2|Select_mode_u1|LED_select\(2) & ((\inst2|uart_tx_u1|addr~9_combout\ & (\inst2|uart_tx_u1|Add13~10_combout\)) # (!\inst2|uart_tx_u1|addr~9_combout\ & ((\inst2|uart_tx_u1|Add5~10_combout\))))) # 
-- (!\inst2|Select_mode_u1|LED_select\(2) & (((\inst2|uart_tx_u1|addr~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(2),
	datab => \inst2|uart_tx_u1|Add13~10_combout\,
	datac => \inst2|uart_tx_u1|Add5~10_combout\,
	datad => \inst2|uart_tx_u1|addr~9_combout\,
	combout => \inst2|uart_tx_u1|addr~10_combout\);

-- Location: LCCOMB_X36_Y21_N6
\inst2|uart_tx_u1|addr~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~11_combout\ = (\inst2|Select_mode_u1|LED_select\(3) & ((\inst2|Select_mode_u1|LED_select\(2)) # ((\inst2|uart_tx_u1|Add10~6_combout\)))) # (!\inst2|Select_mode_u1|LED_select\(3) & (!\inst2|Select_mode_u1|LED_select\(2) & 
-- (\inst2|uart_tx_u1|Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(3),
	datab => \inst2|Select_mode_u1|LED_select\(2),
	datac => \inst2|uart_tx_u1|Add2~6_combout\,
	datad => \inst2|uart_tx_u1|Add10~6_combout\,
	combout => \inst2|uart_tx_u1|addr~11_combout\);

-- Location: LCCOMB_X36_Y21_N8
\inst2|uart_tx_u1|addr~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~12_combout\ = (\inst2|Select_mode_u1|LED_select\(2) & ((\inst2|uart_tx_u1|addr~11_combout\ & ((\inst2|uart_tx_u1|Add14~4_combout\))) # (!\inst2|uart_tx_u1|addr~11_combout\ & (!\inst2|uart_tx_u1|Send_addr[5]~4_combout\)))) # 
-- (!\inst2|Select_mode_u1|LED_select\(2) & (((\inst2|uart_tx_u1|addr~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Send_addr[5]~4_combout\,
	datab => \inst2|Select_mode_u1|LED_select\(2),
	datac => \inst2|uart_tx_u1|Add14~4_combout\,
	datad => \inst2|uart_tx_u1|addr~11_combout\,
	combout => \inst2|uart_tx_u1|addr~12_combout\);

-- Location: LCCOMB_X36_Y21_N18
\inst2|uart_tx_u1|addr~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~13_combout\ = (\inst2|Select_mode_u1|LED_select\(3) & ((\inst2|Select_mode_u1|LED_select\(2)) # ((\inst2|uart_tx_u1|Add8~8_combout\)))) # (!\inst2|Select_mode_u1|LED_select\(3) & (!\inst2|Select_mode_u1|LED_select\(2) & 
-- (\inst2|uart_tx_u1|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(3),
	datab => \inst2|Select_mode_u1|LED_select\(2),
	datac => \inst2|uart_tx_u1|Add0~8_combout\,
	datad => \inst2|uart_tx_u1|Add8~8_combout\,
	combout => \inst2|uart_tx_u1|addr~13_combout\);

-- Location: LCCOMB_X36_Y21_N12
\inst2|uart_tx_u1|addr~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~14_combout\ = (\inst2|Select_mode_u1|LED_select\(2) & ((\inst2|uart_tx_u1|addr~13_combout\ & ((\inst2|uart_tx_u1|Add12~8_combout\))) # (!\inst2|uart_tx_u1|addr~13_combout\ & (\inst2|uart_tx_u1|Add4~8_combout\)))) # 
-- (!\inst2|Select_mode_u1|LED_select\(2) & (((\inst2|uart_tx_u1|addr~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(2),
	datab => \inst2|uart_tx_u1|Add4~8_combout\,
	datac => \inst2|uart_tx_u1|Add12~8_combout\,
	datad => \inst2|uart_tx_u1|addr~13_combout\,
	combout => \inst2|uart_tx_u1|addr~14_combout\);

-- Location: LCCOMB_X36_Y21_N2
\inst2|uart_tx_u1|addr~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~15_combout\ = (\inst2|Select_mode_u1|LED_select\(0) & (\inst2|Select_mode_u1|LED_select\(1))) # (!\inst2|Select_mode_u1|LED_select\(0) & ((\inst2|Select_mode_u1|LED_select\(1) & (\inst2|uart_tx_u1|addr~12_combout\)) # 
-- (!\inst2|Select_mode_u1|LED_select\(1) & ((\inst2|uart_tx_u1|addr~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Select_mode_u1|LED_select\(0),
	datab => \inst2|Select_mode_u1|LED_select\(1),
	datac => \inst2|uart_tx_u1|addr~12_combout\,
	datad => \inst2|uart_tx_u1|addr~14_combout\,
	combout => \inst2|uart_tx_u1|addr~15_combout\);

-- Location: LCCOMB_X36_Y21_N16
\inst2|uart_tx_u1|addr~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr~18_combout\ = (\inst2|Select_mode_u1|LED_select\(0) & ((\inst2|uart_tx_u1|addr~15_combout\ & (\inst2|uart_tx_u1|addr~17_combout\)) # (!\inst2|uart_tx_u1|addr~15_combout\ & ((\inst2|uart_tx_u1|addr~10_combout\))))) # 
-- (!\inst2|Select_mode_u1|LED_select\(0) & (((\inst2|uart_tx_u1|addr~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr~17_combout\,
	datab => \inst2|Select_mode_u1|LED_select\(0),
	datac => \inst2|uart_tx_u1|addr~10_combout\,
	datad => \inst2|uart_tx_u1|addr~15_combout\,
	combout => \inst2|uart_tx_u1|addr~18_combout\);

-- Location: FF_X37_Y21_N21
\inst2|uart_tx_u1|addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|addr[5]~5_combout\,
	asdata => \inst2|uart_tx_u1|addr~18_combout\,
	clrn => \rst_n~input_o\,
	sload => \inst2|uart_tx_u1|always0~3_combout\,
	ena => \inst2|uart_tx_u1|addr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|addr\(5));

-- Location: LCCOMB_X37_Y25_N18
\inst2|uart_tx_u1|AT|rom~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~118_combout\ = (\inst2|uart_tx_u1|addr\(3) & ((\inst2|uart_tx_u1|addr\(1)) # ((\inst2|uart_tx_u1|addr\(0) & \inst2|uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(0),
	datab => \inst2|uart_tx_u1|addr\(1),
	datac => \inst2|uart_tx_u1|addr\(3),
	datad => \inst2|uart_tx_u1|addr\(2),
	combout => \inst2|uart_tx_u1|AT|rom~118_combout\);

-- Location: LCCOMB_X37_Y25_N8
\inst2|uart_tx_u1|AT|rom~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~119_combout\ = (\inst2|uart_tx_u1|addr\(4) & (!\inst2|uart_tx_u1|addr\(2) & (!\inst2|uart_tx_u1|addr\(3)))) # (!\inst2|uart_tx_u1|addr\(4) & (((\inst2|uart_tx_u1|AT|rom~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(2),
	datab => \inst2|uart_tx_u1|addr\(4),
	datac => \inst2|uart_tx_u1|addr\(3),
	datad => \inst2|uart_tx_u1|AT|rom~118_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~119_combout\);

-- Location: LCCOMB_X37_Y25_N20
\inst2|uart_tx_u1|AT|rom~125\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~125_combout\ = (\inst2|uart_tx_u1|addr\(2) & (\inst2|uart_tx_u1|addr\(3) $ (((\inst2|uart_tx_u1|addr\(4)))))) # (!\inst2|uart_tx_u1|addr\(2) & ((\inst2|uart_tx_u1|addr\(0) & ((!\inst2|uart_tx_u1|addr\(4)))) # 
-- (!\inst2|uart_tx_u1|addr\(0) & (!\inst2|uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(2),
	datab => \inst2|uart_tx_u1|addr\(3),
	datac => \inst2|uart_tx_u1|addr\(0),
	datad => \inst2|uart_tx_u1|addr\(4),
	combout => \inst2|uart_tx_u1|AT|rom~125_combout\);

-- Location: LCCOMB_X37_Y25_N6
\inst2|uart_tx_u1|AT|rom~126\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~126_combout\ = (\inst2|uart_tx_u1|addr\(3) & (!\inst2|uart_tx_u1|addr\(4) & ((\inst2|uart_tx_u1|addr\(1)) # (\inst2|uart_tx_u1|AT|rom~125_combout\)))) # (!\inst2|uart_tx_u1|addr\(3) & (\inst2|uart_tx_u1|addr\(1) $ 
-- (((\inst2|uart_tx_u1|AT|rom~125_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(1),
	datab => \inst2|uart_tx_u1|addr\(4),
	datac => \inst2|uart_tx_u1|addr\(3),
	datad => \inst2|uart_tx_u1|AT|rom~125_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~126_combout\);

-- Location: LCCOMB_X37_Y25_N30
\inst2|uart_tx_u1|AT|rom~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~120_combout\ = (\inst2|uart_tx_u1|addr\(5) & (\inst2|uart_tx_u1|AT|rom~119_combout\)) # (!\inst2|uart_tx_u1|addr\(5) & ((\inst2|uart_tx_u1|AT|rom~126_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(5),
	datac => \inst2|uart_tx_u1|AT|rom~119_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~126_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~120_combout\);

-- Location: LCCOMB_X37_Y25_N0
\inst2|uart_tx_u1|AT|rom~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~6_combout\ = (!\inst2|uart_tx_u1|addr\(5) & (\inst2|uart_tx_u1|addr\(1) $ (!\inst2|uart_tx_u1|addr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|addr\(1),
	datac => \inst2|uart_tx_u1|addr\(5),
	datad => \inst2|uart_tx_u1|addr\(2),
	combout => \inst2|uart_tx_u1|AT|rom~6_combout\);

-- Location: LCCOMB_X37_Y25_N14
\inst2|uart_tx_u1|AT|rom~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~7_combout\ = (\inst2|uart_tx_u1|addr\(1) & ((\inst2|uart_tx_u1|addr\(2)) # (\inst2|uart_tx_u1|addr\(5) $ (\inst2|uart_tx_u1|addr\(0))))) # (!\inst2|uart_tx_u1|addr\(1) & ((\inst2|uart_tx_u1|addr\(0) & (\inst2|uart_tx_u1|addr\(5))) 
-- # (!\inst2|uart_tx_u1|addr\(0) & ((\inst2|uart_tx_u1|addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(1),
	datab => \inst2|uart_tx_u1|addr\(5),
	datac => \inst2|uart_tx_u1|addr\(0),
	datad => \inst2|uart_tx_u1|addr\(2),
	combout => \inst2|uart_tx_u1|AT|rom~7_combout\);

-- Location: LCCOMB_X37_Y25_N26
\inst2|uart_tx_u1|AT|rom~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~4_combout\ = (!\inst2|uart_tx_u1|addr\(5) & ((\inst2|uart_tx_u1|addr\(1) & ((!\inst2|uart_tx_u1|addr\(2)) # (!\inst2|uart_tx_u1|addr\(0)))) # (!\inst2|uart_tx_u1|addr\(1) & ((\inst2|uart_tx_u1|addr\(0)) # 
-- (\inst2|uart_tx_u1|addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(5),
	datab => \inst2|uart_tx_u1|addr\(1),
	datac => \inst2|uart_tx_u1|addr\(0),
	datad => \inst2|uart_tx_u1|addr\(2),
	combout => \inst2|uart_tx_u1|AT|rom~4_combout\);

-- Location: LCCOMB_X37_Y25_N12
\inst2|uart_tx_u1|AT|rom~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~3_combout\ = (\inst2|uart_tx_u1|addr\(2) & ((\inst2|uart_tx_u1|addr\(1)) # ((\inst2|uart_tx_u1|addr\(0)) # (!\inst2|uart_tx_u1|addr\(5))))) # (!\inst2|uart_tx_u1|addr\(2) & ((\inst2|uart_tx_u1|addr\(5) $ 
-- (\inst2|uart_tx_u1|addr\(0))) # (!\inst2|uart_tx_u1|addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(2),
	datab => \inst2|uart_tx_u1|addr\(1),
	datac => \inst2|uart_tx_u1|addr\(5),
	datad => \inst2|uart_tx_u1|addr\(0),
	combout => \inst2|uart_tx_u1|AT|rom~3_combout\);

-- Location: LCCOMB_X37_Y25_N28
\inst2|uart_tx_u1|AT|rom~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~8_combout\ = (\inst2|uart_tx_u1|addr\(3) & (\inst2|uart_tx_u1|addr\(4))) # (!\inst2|uart_tx_u1|addr\(3) & ((\inst2|uart_tx_u1|addr\(4) & (\inst2|uart_tx_u1|AT|rom~4_combout\)) # (!\inst2|uart_tx_u1|addr\(4) & 
-- ((\inst2|uart_tx_u1|AT|rom~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(3),
	datab => \inst2|uart_tx_u1|addr\(4),
	datac => \inst2|uart_tx_u1|AT|rom~4_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~3_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~8_combout\);

-- Location: LCCOMB_X37_Y25_N22
\inst2|uart_tx_u1|AT|rom~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~9_combout\ = (\inst2|uart_tx_u1|addr\(3) & ((\inst2|uart_tx_u1|AT|rom~8_combout\ & ((\inst2|uart_tx_u1|AT|rom~7_combout\))) # (!\inst2|uart_tx_u1|AT|rom~8_combout\ & (\inst2|uart_tx_u1|AT|rom~6_combout\)))) # 
-- (!\inst2|uart_tx_u1|addr\(3) & (((\inst2|uart_tx_u1|AT|rom~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(3),
	datab => \inst2|uart_tx_u1|AT|rom~6_combout\,
	datac => \inst2|uart_tx_u1|AT|rom~7_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~8_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~9_combout\);

-- Location: LCCOMB_X37_Y25_N24
\inst2|uart_tx_u1|AT|rom~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~121_combout\ = (\inst2|uart_tx_u1|addr\(0) & (!\inst2|uart_tx_u1|addr\(1) & (!\inst2|uart_tx_u1|addr\(3) & \inst2|uart_tx_u1|addr\(2)))) # (!\inst2|uart_tx_u1|addr\(0) & (!\inst2|uart_tx_u1|addr\(2) & (\inst2|uart_tx_u1|addr\(1) $ 
-- (\inst2|uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(0),
	datab => \inst2|uart_tx_u1|addr\(1),
	datac => \inst2|uart_tx_u1|addr\(3),
	datad => \inst2|uart_tx_u1|addr\(2),
	combout => \inst2|uart_tx_u1|AT|rom~121_combout\);

-- Location: LCCOMB_X37_Y25_N2
\inst2|uart_tx_u1|AT|rom~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~122_combout\ = (\inst2|uart_tx_u1|addr\(5) & (!\inst2|uart_tx_u1|addr\(4) & ((\inst2|uart_tx_u1|AT|rom~121_combout\)))) # (!\inst2|uart_tx_u1|addr\(5) & (\inst2|uart_tx_u1|addr\(4) & (\inst2|uart_tx_u1|AT|rom~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(5),
	datab => \inst2|uart_tx_u1|addr\(4),
	datac => \inst2|uart_tx_u1|AT|rom~83_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~121_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~122_combout\);

-- Location: LCCOMB_X37_Y25_N16
\inst2|uart_tx_u1|AT|rom~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~123_combout\ = (\inst2|uart_tx_u1|addr\(6) & (!\inst2|uart_tx_u1|addr\(7))) # (!\inst2|uart_tx_u1|addr\(6) & (\inst2|uart_tx_u1|addr\(7) & \inst2|uart_tx_u1|AT|rom~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|addr\(6),
	datac => \inst2|uart_tx_u1|addr\(7),
	datad => \inst2|uart_tx_u1|AT|rom~122_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~123_combout\);

-- Location: LCCOMB_X37_Y25_N10
\inst2|uart_tx_u1|AT|rom~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|AT|rom~124_combout\ = (\inst2|uart_tx_u1|addr\(7) & (((\inst2|uart_tx_u1|AT|rom~123_combout\)))) # (!\inst2|uart_tx_u1|addr\(7) & ((\inst2|uart_tx_u1|AT|rom~123_combout\ & (\inst2|uart_tx_u1|AT|rom~120_combout\)) # 
-- (!\inst2|uart_tx_u1|AT|rom~123_combout\ & ((\inst2|uart_tx_u1|AT|rom~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|AT|rom~120_combout\,
	datab => \inst2|uart_tx_u1|addr\(7),
	datac => \inst2|uart_tx_u1|AT|rom~9_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~123_combout\,
	combout => \inst2|uart_tx_u1|AT|rom~124_combout\);

-- Location: LCCOMB_X38_Y23_N26
\inst2|uart_tx_u1|Equal4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Equal4~4_combout\ = (\inst2|uart_tx_u1|AT|rom~124_combout\) # ((\inst2|uart_tx_u1|AT|rom~128_combout\) # ((\inst2|uart_tx_u1|AT|rom~102_combout\) # (\inst2|uart_tx_u1|Equal4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|AT|rom~124_combout\,
	datab => \inst2|uart_tx_u1|AT|rom~128_combout\,
	datac => \inst2|uart_tx_u1|AT|rom~102_combout\,
	datad => \inst2|uart_tx_u1|Equal4~3_combout\,
	combout => \inst2|uart_tx_u1|Equal4~4_combout\);

-- Location: LCCOMB_X38_Y24_N18
\inst2|uart_tx_u1|cnt_rom[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|cnt_rom[0]~2_combout\ = (\inst2|uart_tx_u1|always5~1_combout\ & (((\inst2|uart_tx_u1|Equal4~4_combout\)))) # (!\inst2|uart_tx_u1|always5~1_combout\ & (((!\inst2|uart_tx_u1|always0~4_combout\)) # (!\inst2|uart_tx_u1|cnt_rom\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|cnt_rom\(1),
	datab => \inst2|uart_tx_u1|always0~4_combout\,
	datac => \inst2|uart_tx_u1|always5~1_combout\,
	datad => \inst2|uart_tx_u1|Equal4~4_combout\,
	combout => \inst2|uart_tx_u1|cnt_rom[0]~2_combout\);

-- Location: LCCOMB_X38_Y24_N6
\inst2|uart_tx_u1|cnt_rom[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|cnt_rom[0]~6_combout\ = (\inst2|uart_tx_u1|cnt_rom\(0) & (((\inst2|uart_tx_u1|cnt_rom[0]~2_combout\) # (!\inst2|uart_tx_u1|stage_tx.SEND_DATA~q\)) # (!\inst2|uart_tx_u1|always5~0_combout\))) # (!\inst2|uart_tx_u1|cnt_rom\(0) & 
-- (((!\inst2|uart_tx_u1|cnt_rom[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|always5~0_combout\,
	datab => \inst2|uart_tx_u1|stage_tx.SEND_DATA~q\,
	datac => \inst2|uart_tx_u1|cnt_rom\(0),
	datad => \inst2|uart_tx_u1|cnt_rom[0]~2_combout\,
	combout => \inst2|uart_tx_u1|cnt_rom[0]~6_combout\);

-- Location: FF_X38_Y24_N7
\inst2|uart_tx_u1|cnt_rom[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|cnt_rom[0]~6_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|cnt_rom\(0));

-- Location: LCCOMB_X38_Y24_N16
\inst2|uart_tx_u1|always0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|always0~4_combout\ = (\inst2|uart_tx_u1|cnt_rom\(0) & (!\inst2|uart_tx_u1|cnt_rom\(3) & \inst2|uart_tx_u1|cnt_rom\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|cnt_rom\(0),
	datab => \inst2|uart_tx_u1|cnt_rom\(3),
	datad => \inst2|uart_tx_u1|cnt_rom\(2),
	combout => \inst2|uart_tx_u1|always0~4_combout\);

-- Location: LCCOMB_X34_Y20_N24
\inst2|uart_tx_u1|btn~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|btn~0_combout\ = ((\inst2|uart_tx_u1|btn~q\ & ((!\inst2|uart_tx_u1|cnt_rom\(1)) # (!\inst2|uart_tx_u1|always0~4_combout\)))) # (!\inst1|t~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|always0~4_combout\,
	datab => \inst2|uart_tx_u1|cnt_rom\(1),
	datac => \inst2|uart_tx_u1|btn~q\,
	datad => \inst1|t~q\,
	combout => \inst2|uart_tx_u1|btn~0_combout\);

-- Location: FF_X34_Y20_N25
\inst2|uart_tx_u1|btn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|btn~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|btn~q\);

-- Location: FF_X38_Y24_N21
\inst2|uart_tx_u1|SEND_END_cmd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \inst2|uart_tx_u1|always0~4_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|SEND_END_cmd~q\);

-- Location: LCCOMB_X38_Y24_N8
\inst2|uart_tx_u1|SEND_DATA_en~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|SEND_DATA_en~0_combout\ = (!\inst2|uart_tx_u1|btn~q\ & ((\inst2|uart_tx_u1|SEND_DATA_en~q\) # (\inst2|uart_tx_u1|SEND_END_cmd~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|btn~q\,
	datac => \inst2|uart_tx_u1|SEND_DATA_en~q\,
	datad => \inst2|uart_tx_u1|SEND_END_cmd~q\,
	combout => \inst2|uart_tx_u1|SEND_DATA_en~0_combout\);

-- Location: FF_X38_Y24_N9
\inst2|uart_tx_u1|SEND_DATA_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|SEND_DATA_en~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|SEND_DATA_en~q\);

-- Location: LCCOMB_X43_Y23_N0
\inst2|uart_rx_u2|cnt_baud[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|cnt_baud[0]~9_combout\ = \inst2|uart_rx_u2|cnt_baud\(0) $ (VCC)
-- \inst2|uart_rx_u2|cnt_baud[0]~10\ = CARRY(\inst2|uart_rx_u2|cnt_baud\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_rx_u2|cnt_baud\(0),
	datad => VCC,
	combout => \inst2|uart_rx_u2|cnt_baud[0]~9_combout\,
	cout => \inst2|uart_rx_u2|cnt_baud[0]~10\);

-- Location: LCCOMB_X43_Y23_N28
\inst2|uart_rx_u2|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|Equal1~1_combout\ = (((\inst2|uart_rx_u2|cnt_baud\(6)) # (\inst2|uart_rx_u2|cnt_baud\(3))) # (!\inst2|uart_rx_u2|cnt_baud\(0))) # (!\inst2|uart_rx_u2|cnt_baud\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|cnt_baud\(5),
	datab => \inst2|uart_rx_u2|cnt_baud\(0),
	datac => \inst2|uart_rx_u2|cnt_baud\(6),
	datad => \inst2|uart_rx_u2|cnt_baud\(3),
	combout => \inst2|uart_rx_u2|Equal1~1_combout\);

-- Location: LCCOMB_X43_Y23_N22
\inst2|uart_rx_u2|rx_done~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|rx_done~1_combout\ = (\inst2|uart_rx_u2|R_receiving~q\ & ((\inst2|uart_rx_u2|Equal2~1_combout\ & ((\inst2|uart_rx_u2|rx_done~q\))) # (!\inst2|uart_rx_u2|Equal2~1_combout\ & (\inst2|uart_rx_u2|stage_rx.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|Equal2~1_combout\,
	datab => \inst2|uart_rx_u2|stage_rx.STOP~q\,
	datac => \inst2|uart_rx_u2|rx_done~q\,
	datad => \inst2|uart_rx_u2|R_receiving~q\,
	combout => \inst2|uart_rx_u2|rx_done~1_combout\);

-- Location: FF_X43_Y23_N23
\inst2|uart_rx_u2|rx_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_rx_u2|rx_done~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|rx_done~q\);

-- Location: LCCOMB_X44_Y24_N24
\inst2|uart_rx_u2|rx_reg0~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|rx_reg0~feeder_combout\ = \rx~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx~input_o\,
	combout => \inst2|uart_rx_u2|rx_reg0~feeder_combout\);

-- Location: FF_X44_Y24_N25
\inst2|uart_rx_u2|rx_reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_rx_u2|rx_reg0~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|rx_reg0~q\);

-- Location: LCCOMB_X44_Y24_N22
\inst2|uart_rx_u2|rx_reg1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|rx_reg1~feeder_combout\ = \inst2|uart_rx_u2|rx_reg0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|uart_rx_u2|rx_reg0~q\,
	combout => \inst2|uart_rx_u2|rx_reg1~feeder_combout\);

-- Location: FF_X44_Y24_N23
\inst2|uart_rx_u2|rx_reg1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_rx_u2|rx_reg1~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|rx_reg1~q\);

-- Location: FF_X44_Y24_N1
\inst2|uart_rx_u2|rx_reg2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \inst2|uart_rx_u2|rx_reg1~q\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|rx_reg2~q\);

-- Location: LCCOMB_X44_Y24_N2
\inst2|uart_rx_u2|rx_reg3~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|rx_reg3~feeder_combout\ = \inst2|uart_rx_u2|rx_reg2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|uart_rx_u2|rx_reg2~q\,
	combout => \inst2|uart_rx_u2|rx_reg3~feeder_combout\);

-- Location: FF_X44_Y24_N3
\inst2|uart_rx_u2|rx_reg3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_rx_u2|rx_reg3~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|rx_reg3~q\);

-- Location: LCCOMB_X44_Y24_N20
\inst2|uart_rx_u2|R_receiving~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|R_receiving~0_combout\ = (!\inst2|uart_rx_u2|rx_done~q\ & ((\inst2|uart_rx_u2|R_receiving~q\) # ((!\inst2|uart_rx_u2|rx_reg2~q\ & \inst2|uart_rx_u2|rx_reg3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|rx_done~q\,
	datab => \inst2|uart_rx_u2|rx_reg2~q\,
	datac => \inst2|uart_rx_u2|R_receiving~q\,
	datad => \inst2|uart_rx_u2|rx_reg3~q\,
	combout => \inst2|uart_rx_u2|R_receiving~0_combout\);

-- Location: FF_X44_Y24_N21
\inst2|uart_rx_u2|R_receiving\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_rx_u2|R_receiving~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|R_receiving~q\);

-- Location: FF_X44_Y23_N13
\inst2|uart_rx_u2|bps_rx_clk_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \inst2|uart_rx_u2|R_receiving~q\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|bps_rx_clk_en~q\);

-- Location: LCCOMB_X43_Y23_N20
\inst2|uart_rx_u2|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|Equal1~0_combout\ = (\inst2|uart_rx_u2|cnt_baud\(7) & (\inst2|uart_rx_u2|cnt_baud\(4) & (!\inst2|uart_rx_u2|cnt_baud\(2) & !\inst2|uart_rx_u2|cnt_baud\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|cnt_baud\(7),
	datab => \inst2|uart_rx_u2|cnt_baud\(4),
	datac => \inst2|uart_rx_u2|cnt_baud\(2),
	datad => \inst2|uart_rx_u2|cnt_baud\(1),
	combout => \inst2|uart_rx_u2|Equal1~0_combout\);

-- Location: LCCOMB_X44_Y23_N12
\inst2|uart_rx_u2|cnt_baud[6]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|cnt_baud[6]~27_combout\ = ((\inst2|uart_rx_u2|cnt_baud\(8) & (!\inst2|uart_rx_u2|Equal1~1_combout\ & \inst2|uart_rx_u2|Equal1~0_combout\))) # (!\inst2|uart_rx_u2|bps_rx_clk_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|cnt_baud\(8),
	datab => \inst2|uart_rx_u2|Equal1~1_combout\,
	datac => \inst2|uart_rx_u2|bps_rx_clk_en~q\,
	datad => \inst2|uart_rx_u2|Equal1~0_combout\,
	combout => \inst2|uart_rx_u2|cnt_baud[6]~27_combout\);

-- Location: FF_X43_Y23_N1
\inst2|uart_rx_u2|cnt_baud[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_rx_u2|cnt_baud[0]~9_combout\,
	clrn => \rst_n~input_o\,
	sclr => \inst2|uart_rx_u2|cnt_baud[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|cnt_baud\(0));

-- Location: LCCOMB_X43_Y23_N2
\inst2|uart_rx_u2|cnt_baud[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|cnt_baud[1]~11_combout\ = (\inst2|uart_rx_u2|cnt_baud\(1) & (!\inst2|uart_rx_u2|cnt_baud[0]~10\)) # (!\inst2|uart_rx_u2|cnt_baud\(1) & ((\inst2|uart_rx_u2|cnt_baud[0]~10\) # (GND)))
-- \inst2|uart_rx_u2|cnt_baud[1]~12\ = CARRY((!\inst2|uart_rx_u2|cnt_baud[0]~10\) # (!\inst2|uart_rx_u2|cnt_baud\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_rx_u2|cnt_baud\(1),
	datad => VCC,
	cin => \inst2|uart_rx_u2|cnt_baud[0]~10\,
	combout => \inst2|uart_rx_u2|cnt_baud[1]~11_combout\,
	cout => \inst2|uart_rx_u2|cnt_baud[1]~12\);

-- Location: FF_X43_Y23_N3
\inst2|uart_rx_u2|cnt_baud[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_rx_u2|cnt_baud[1]~11_combout\,
	clrn => \rst_n~input_o\,
	sclr => \inst2|uart_rx_u2|cnt_baud[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|cnt_baud\(1));

-- Location: LCCOMB_X43_Y23_N4
\inst2|uart_rx_u2|cnt_baud[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|cnt_baud[2]~13_combout\ = (\inst2|uart_rx_u2|cnt_baud\(2) & (\inst2|uart_rx_u2|cnt_baud[1]~12\ $ (GND))) # (!\inst2|uart_rx_u2|cnt_baud\(2) & (!\inst2|uart_rx_u2|cnt_baud[1]~12\ & VCC))
-- \inst2|uart_rx_u2|cnt_baud[2]~14\ = CARRY((\inst2|uart_rx_u2|cnt_baud\(2) & !\inst2|uart_rx_u2|cnt_baud[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_rx_u2|cnt_baud\(2),
	datad => VCC,
	cin => \inst2|uart_rx_u2|cnt_baud[1]~12\,
	combout => \inst2|uart_rx_u2|cnt_baud[2]~13_combout\,
	cout => \inst2|uart_rx_u2|cnt_baud[2]~14\);

-- Location: FF_X43_Y23_N5
\inst2|uart_rx_u2|cnt_baud[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_rx_u2|cnt_baud[2]~13_combout\,
	clrn => \rst_n~input_o\,
	sclr => \inst2|uart_rx_u2|cnt_baud[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|cnt_baud\(2));

-- Location: LCCOMB_X43_Y23_N6
\inst2|uart_rx_u2|cnt_baud[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|cnt_baud[3]~15_combout\ = (\inst2|uart_rx_u2|cnt_baud\(3) & (!\inst2|uart_rx_u2|cnt_baud[2]~14\)) # (!\inst2|uart_rx_u2|cnt_baud\(3) & ((\inst2|uart_rx_u2|cnt_baud[2]~14\) # (GND)))
-- \inst2|uart_rx_u2|cnt_baud[3]~16\ = CARRY((!\inst2|uart_rx_u2|cnt_baud[2]~14\) # (!\inst2|uart_rx_u2|cnt_baud\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|cnt_baud\(3),
	datad => VCC,
	cin => \inst2|uart_rx_u2|cnt_baud[2]~14\,
	combout => \inst2|uart_rx_u2|cnt_baud[3]~15_combout\,
	cout => \inst2|uart_rx_u2|cnt_baud[3]~16\);

-- Location: FF_X43_Y23_N7
\inst2|uart_rx_u2|cnt_baud[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_rx_u2|cnt_baud[3]~15_combout\,
	clrn => \rst_n~input_o\,
	sclr => \inst2|uart_rx_u2|cnt_baud[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|cnt_baud\(3));

-- Location: LCCOMB_X43_Y23_N8
\inst2|uart_rx_u2|cnt_baud[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|cnt_baud[4]~17_combout\ = (\inst2|uart_rx_u2|cnt_baud\(4) & (\inst2|uart_rx_u2|cnt_baud[3]~16\ $ (GND))) # (!\inst2|uart_rx_u2|cnt_baud\(4) & (!\inst2|uart_rx_u2|cnt_baud[3]~16\ & VCC))
-- \inst2|uart_rx_u2|cnt_baud[4]~18\ = CARRY((\inst2|uart_rx_u2|cnt_baud\(4) & !\inst2|uart_rx_u2|cnt_baud[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_rx_u2|cnt_baud\(4),
	datad => VCC,
	cin => \inst2|uart_rx_u2|cnt_baud[3]~16\,
	combout => \inst2|uart_rx_u2|cnt_baud[4]~17_combout\,
	cout => \inst2|uart_rx_u2|cnt_baud[4]~18\);

-- Location: FF_X43_Y23_N9
\inst2|uart_rx_u2|cnt_baud[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_rx_u2|cnt_baud[4]~17_combout\,
	clrn => \rst_n~input_o\,
	sclr => \inst2|uart_rx_u2|cnt_baud[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|cnt_baud\(4));

-- Location: LCCOMB_X43_Y23_N10
\inst2|uart_rx_u2|cnt_baud[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|cnt_baud[5]~19_combout\ = (\inst2|uart_rx_u2|cnt_baud\(5) & (!\inst2|uart_rx_u2|cnt_baud[4]~18\)) # (!\inst2|uart_rx_u2|cnt_baud\(5) & ((\inst2|uart_rx_u2|cnt_baud[4]~18\) # (GND)))
-- \inst2|uart_rx_u2|cnt_baud[5]~20\ = CARRY((!\inst2|uart_rx_u2|cnt_baud[4]~18\) # (!\inst2|uart_rx_u2|cnt_baud\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|cnt_baud\(5),
	datad => VCC,
	cin => \inst2|uart_rx_u2|cnt_baud[4]~18\,
	combout => \inst2|uart_rx_u2|cnt_baud[5]~19_combout\,
	cout => \inst2|uart_rx_u2|cnt_baud[5]~20\);

-- Location: FF_X43_Y23_N11
\inst2|uart_rx_u2|cnt_baud[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_rx_u2|cnt_baud[5]~19_combout\,
	clrn => \rst_n~input_o\,
	sclr => \inst2|uart_rx_u2|cnt_baud[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|cnt_baud\(5));

-- Location: LCCOMB_X43_Y23_N12
\inst2|uart_rx_u2|cnt_baud[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|cnt_baud[6]~21_combout\ = (\inst2|uart_rx_u2|cnt_baud\(6) & (\inst2|uart_rx_u2|cnt_baud[5]~20\ $ (GND))) # (!\inst2|uart_rx_u2|cnt_baud\(6) & (!\inst2|uart_rx_u2|cnt_baud[5]~20\ & VCC))
-- \inst2|uart_rx_u2|cnt_baud[6]~22\ = CARRY((\inst2|uart_rx_u2|cnt_baud\(6) & !\inst2|uart_rx_u2|cnt_baud[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_rx_u2|cnt_baud\(6),
	datad => VCC,
	cin => \inst2|uart_rx_u2|cnt_baud[5]~20\,
	combout => \inst2|uart_rx_u2|cnt_baud[6]~21_combout\,
	cout => \inst2|uart_rx_u2|cnt_baud[6]~22\);

-- Location: FF_X43_Y23_N13
\inst2|uart_rx_u2|cnt_baud[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_rx_u2|cnt_baud[6]~21_combout\,
	clrn => \rst_n~input_o\,
	sclr => \inst2|uart_rx_u2|cnt_baud[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|cnt_baud\(6));

-- Location: LCCOMB_X43_Y23_N14
\inst2|uart_rx_u2|cnt_baud[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|cnt_baud[7]~23_combout\ = (\inst2|uart_rx_u2|cnt_baud\(7) & (!\inst2|uart_rx_u2|cnt_baud[6]~22\)) # (!\inst2|uart_rx_u2|cnt_baud\(7) & ((\inst2|uart_rx_u2|cnt_baud[6]~22\) # (GND)))
-- \inst2|uart_rx_u2|cnt_baud[7]~24\ = CARRY((!\inst2|uart_rx_u2|cnt_baud[6]~22\) # (!\inst2|uart_rx_u2|cnt_baud\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_rx_u2|cnt_baud\(7),
	datad => VCC,
	cin => \inst2|uart_rx_u2|cnt_baud[6]~22\,
	combout => \inst2|uart_rx_u2|cnt_baud[7]~23_combout\,
	cout => \inst2|uart_rx_u2|cnt_baud[7]~24\);

-- Location: FF_X43_Y23_N15
\inst2|uart_rx_u2|cnt_baud[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_rx_u2|cnt_baud[7]~23_combout\,
	clrn => \rst_n~input_o\,
	sclr => \inst2|uart_rx_u2|cnt_baud[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|cnt_baud\(7));

-- Location: LCCOMB_X43_Y23_N16
\inst2|uart_rx_u2|cnt_baud[8]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|cnt_baud[8]~25_combout\ = \inst2|uart_rx_u2|cnt_baud[7]~24\ $ (!\inst2|uart_rx_u2|cnt_baud\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|uart_rx_u2|cnt_baud\(8),
	cin => \inst2|uart_rx_u2|cnt_baud[7]~24\,
	combout => \inst2|uart_rx_u2|cnt_baud[8]~25_combout\);

-- Location: FF_X43_Y23_N17
\inst2|uart_rx_u2|cnt_baud[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_rx_u2|cnt_baud[8]~25_combout\,
	clrn => \rst_n~input_o\,
	sclr => \inst2|uart_rx_u2|cnt_baud[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|cnt_baud\(8));

-- Location: LCCOMB_X43_Y23_N30
\inst2|uart_rx_u2|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|Equal2~0_combout\ = (\inst2|uart_rx_u2|cnt_baud\(5)) # ((\inst2|uart_rx_u2|cnt_baud\(0)) # ((!\inst2|uart_rx_u2|cnt_baud\(3)) # (!\inst2|uart_rx_u2|cnt_baud\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|cnt_baud\(5),
	datab => \inst2|uart_rx_u2|cnt_baud\(0),
	datac => \inst2|uart_rx_u2|cnt_baud\(6),
	datad => \inst2|uart_rx_u2|cnt_baud\(3),
	combout => \inst2|uart_rx_u2|Equal2~0_combout\);

-- Location: LCCOMB_X43_Y23_N26
\inst2|uart_rx_u2|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|Equal2~1_combout\ = (\inst2|uart_rx_u2|cnt_baud\(8)) # ((\inst2|uart_rx_u2|Equal2~0_combout\) # (!\inst2|uart_rx_u2|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_rx_u2|cnt_baud\(8),
	datac => \inst2|uart_rx_u2|Equal2~0_combout\,
	datad => \inst2|uart_rx_u2|Equal1~0_combout\,
	combout => \inst2|uart_rx_u2|Equal2~1_combout\);

-- Location: LCCOMB_X43_Y23_N18
\inst2|uart_rx_u2|stage_rx~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|stage_rx~11_combout\ = (\inst2|uart_rx_u2|R_receiving~q\ & ((\inst2|uart_rx_u2|Equal2~1_combout\ & ((\inst2|uart_rx_u2|stage_rx.START~q\))) # (!\inst2|uart_rx_u2|Equal2~1_combout\ & (!\inst2|uart_rx_u2|stage_rx.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|Equal2~1_combout\,
	datab => \inst2|uart_rx_u2|stage_rx.STOP~q\,
	datac => \inst2|uart_rx_u2|stage_rx.START~q\,
	datad => \inst2|uart_rx_u2|R_receiving~q\,
	combout => \inst2|uart_rx_u2|stage_rx~11_combout\);

-- Location: FF_X43_Y23_N19
\inst2|uart_rx_u2|stage_rx.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_rx_u2|stage_rx~11_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|stage_rx.START~q\);

-- Location: LCCOMB_X42_Y23_N22
\inst2|uart_rx_u2|stage_rx~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|stage_rx~10_combout\ = (\inst2|uart_rx_u2|Equal2~1_combout\ & (((\inst2|uart_rx_u2|stage_rx.RECEIVE_DATA~q\)))) # (!\inst2|uart_rx_u2|Equal2~1_combout\ & (((!\inst2|uart_rx_u2|Decoder0~0_combout\ & 
-- \inst2|uart_rx_u2|stage_rx.RECEIVE_DATA~q\)) # (!\inst2|uart_rx_u2|stage_rx.START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|Decoder0~0_combout\,
	datab => \inst2|uart_rx_u2|stage_rx.START~q\,
	datac => \inst2|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datad => \inst2|uart_rx_u2|Equal2~1_combout\,
	combout => \inst2|uart_rx_u2|stage_rx~10_combout\);

-- Location: FF_X42_Y23_N23
\inst2|uart_rx_u2|stage_rx.RECEIVE_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_rx_u2|stage_rx~10_combout\,
	clrn => \rst_n~input_o\,
	sclr => \inst2|uart_rx_u2|ALT_INV_R_receiving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|stage_rx.RECEIVE_DATA~q\);

-- Location: LCCOMB_X42_Y23_N20
\inst2|uart_rx_u2|cnt_bit[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|cnt_bit[0]~0_combout\ = \inst2|uart_rx_u2|cnt_bit\(0) $ (((\inst2|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & !\inst2|uart_rx_u2|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datac => \inst2|uart_rx_u2|cnt_bit\(0),
	datad => \inst2|uart_rx_u2|Equal2~1_combout\,
	combout => \inst2|uart_rx_u2|cnt_bit[0]~0_combout\);

-- Location: FF_X42_Y23_N21
\inst2|uart_rx_u2|cnt_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_rx_u2|cnt_bit[0]~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|cnt_bit\(0));

-- Location: LCCOMB_X42_Y23_N30
\inst2|uart_rx_u2|cnt_bit[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|cnt_bit[1]~1_combout\ = \inst2|uart_rx_u2|cnt_bit\(1) $ (((\inst2|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & (\inst2|uart_rx_u2|cnt_bit\(0) & !\inst2|uart_rx_u2|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datab => \inst2|uart_rx_u2|cnt_bit\(0),
	datac => \inst2|uart_rx_u2|cnt_bit\(1),
	datad => \inst2|uart_rx_u2|Equal2~1_combout\,
	combout => \inst2|uart_rx_u2|cnt_bit[1]~1_combout\);

-- Location: FF_X42_Y23_N31
\inst2|uart_rx_u2|cnt_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_rx_u2|cnt_bit[1]~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|cnt_bit\(1));

-- Location: LCCOMB_X42_Y23_N10
\inst2|uart_rx_u2|cnt_bit[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|cnt_bit[2]~2_combout\ = (\inst2|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & (\inst2|uart_rx_u2|cnt_bit\(0) & (\inst2|uart_rx_u2|cnt_bit\(1) & !\inst2|uart_rx_u2|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datab => \inst2|uart_rx_u2|cnt_bit\(0),
	datac => \inst2|uart_rx_u2|cnt_bit\(1),
	datad => \inst2|uart_rx_u2|Equal2~1_combout\,
	combout => \inst2|uart_rx_u2|cnt_bit[2]~2_combout\);

-- Location: LCCOMB_X42_Y23_N28
\inst2|uart_rx_u2|cnt_bit[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|cnt_bit[2]~3_combout\ = \inst2|uart_rx_u2|cnt_bit\(2) $ (\inst2|uart_rx_u2|cnt_bit[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|uart_rx_u2|cnt_bit\(2),
	datad => \inst2|uart_rx_u2|cnt_bit[2]~2_combout\,
	combout => \inst2|uart_rx_u2|cnt_bit[2]~3_combout\);

-- Location: FF_X42_Y23_N29
\inst2|uart_rx_u2|cnt_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_rx_u2|cnt_bit[2]~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|cnt_bit\(2));

-- Location: LCCOMB_X42_Y23_N26
\inst2|uart_rx_u2|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|Decoder0~0_combout\ = (\inst2|uart_rx_u2|cnt_bit\(2) & (\inst2|uart_rx_u2|cnt_bit\(1) & \inst2|uart_rx_u2|cnt_bit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_rx_u2|cnt_bit\(2),
	datac => \inst2|uart_rx_u2|cnt_bit\(1),
	datad => \inst2|uart_rx_u2|cnt_bit\(0),
	combout => \inst2|uart_rx_u2|Decoder0~0_combout\);

-- Location: LCCOMB_X42_Y23_N2
\inst2|uart_rx_u2|stage_rx~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|stage_rx~9_combout\ = (\inst2|uart_rx_u2|Equal2~1_combout\ & (((\inst2|uart_rx_u2|stage_rx.STOP~q\)))) # (!\inst2|uart_rx_u2|Equal2~1_combout\ & (\inst2|uart_rx_u2|Decoder0~0_combout\ & (\inst2|uart_rx_u2|stage_rx.RECEIVE_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|Decoder0~0_combout\,
	datab => \inst2|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datac => \inst2|uart_rx_u2|stage_rx.STOP~q\,
	datad => \inst2|uart_rx_u2|Equal2~1_combout\,
	combout => \inst2|uart_rx_u2|stage_rx~9_combout\);

-- Location: FF_X42_Y23_N3
\inst2|uart_rx_u2|stage_rx.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_rx_u2|stage_rx~9_combout\,
	clrn => \rst_n~input_o\,
	sclr => \inst2|uart_rx_u2|ALT_INV_R_receiving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|stage_rx.STOP~q\);

-- Location: LCCOMB_X42_Y24_N2
\inst2|uart_rx_u2|Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|Selector0~2_combout\ = (\inst2|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & \rx~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datad => \rx~input_o\,
	combout => \inst2|uart_rx_u2|Selector0~2_combout\);

-- Location: LCCOMB_X42_Y24_N4
\inst2|uart_rx_u2|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|Selector3~0_combout\ = (\inst2|uart_rx_u2|cnt_bit\(2) & (!\inst2|uart_rx_u2|cnt_bit\(0) & (!\inst2|uart_rx_u2|cnt_bit\(1) & \inst2|uart_rx_u2|Selector0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|cnt_bit\(2),
	datab => \inst2|uart_rx_u2|cnt_bit\(0),
	datac => \inst2|uart_rx_u2|cnt_bit\(1),
	datad => \inst2|uart_rx_u2|Selector0~2_combout\,
	combout => \inst2|uart_rx_u2|Selector3~0_combout\);

-- Location: LCCOMB_X42_Y24_N18
\inst2|uart_rx_u2|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|Selector3~1_combout\ = (\inst2|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & (((\inst2|uart_rx_u2|cnt_bit\(0)) # (\inst2|uart_rx_u2|cnt_bit\(1))) # (!\inst2|uart_rx_u2|cnt_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|cnt_bit\(2),
	datab => \inst2|uart_rx_u2|cnt_bit\(0),
	datac => \inst2|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datad => \inst2|uart_rx_u2|cnt_bit\(1),
	combout => \inst2|uart_rx_u2|Selector3~1_combout\);

-- Location: LCCOMB_X42_Y24_N14
\inst2|uart_rx_u2|Selector3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|Selector3~2_combout\ = (\inst2|uart_rx_u2|Selector3~0_combout\) # ((\inst2|uart_rx_u2|rx_data\(4) & ((\inst2|uart_rx_u2|stage_rx.STOP~q\) # (\inst2|uart_rx_u2|Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|stage_rx.STOP~q\,
	datab => \inst2|uart_rx_u2|Selector3~0_combout\,
	datac => \inst2|uart_rx_u2|rx_data\(4),
	datad => \inst2|uart_rx_u2|Selector3~1_combout\,
	combout => \inst2|uart_rx_u2|Selector3~2_combout\);

-- Location: LCCOMB_X43_Y23_N24
\inst2|uart_rx_u2|rx_done~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|rx_done~0_combout\ = ((!\inst2|uart_rx_u2|cnt_baud\(8) & (!\inst2|uart_rx_u2|Equal2~0_combout\ & \inst2|uart_rx_u2|Equal1~0_combout\))) # (!\inst2|uart_rx_u2|R_receiving~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|R_receiving~q\,
	datab => \inst2|uart_rx_u2|cnt_baud\(8),
	datac => \inst2|uart_rx_u2|Equal2~0_combout\,
	datad => \inst2|uart_rx_u2|Equal1~0_combout\,
	combout => \inst2|uart_rx_u2|rx_done~0_combout\);

-- Location: FF_X42_Y24_N15
\inst2|uart_rx_u2|rx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_rx_u2|Selector3~2_combout\,
	clrn => \rst_n~input_o\,
	sclr => \inst2|uart_rx_u2|ALT_INV_R_receiving~q\,
	ena => \inst2|uart_rx_u2|rx_done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|rx_data\(4));

-- Location: LCCOMB_X43_Y24_N10
\inst2|uart_rx_u2|rxd[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|rxd[4]~feeder_combout\ = \inst2|uart_rx_u2|rx_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|uart_rx_u2|rx_data\(4),
	combout => \inst2|uart_rx_u2|rxd[4]~feeder_combout\);

-- Location: LCCOMB_X43_Y24_N0
\inst2|uart_rx_u2|rxd[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|rxd[7]~0_combout\ = (\inst2|uart_rx_u2|R_receiving~q\ & (!\inst2|uart_rx_u2|Equal2~1_combout\ & (\inst2|uart_rx_u2|stage_rx.STOP~q\ & \rst_n~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|R_receiving~q\,
	datab => \inst2|uart_rx_u2|Equal2~1_combout\,
	datac => \inst2|uart_rx_u2|stage_rx.STOP~q\,
	datad => \rst_n~input_o\,
	combout => \inst2|uart_rx_u2|rxd[7]~0_combout\);

-- Location: FF_X43_Y24_N11
\inst2|uart_rx_u2|rxd[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_rx_u2|rxd[4]~feeder_combout\,
	ena => \inst2|uart_rx_u2|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|rxd\(4));

-- Location: LCCOMB_X42_Y23_N14
\inst2|uart_rx_u2|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|Selector2~0_combout\ = (\inst2|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & (\inst2|uart_rx_u2|cnt_bit\(0) & (!\inst2|uart_rx_u2|cnt_bit\(1) & \rx~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datab => \inst2|uart_rx_u2|cnt_bit\(0),
	datac => \inst2|uart_rx_u2|cnt_bit\(1),
	datad => \rx~input_o\,
	combout => \inst2|uart_rx_u2|Selector2~0_combout\);

-- Location: LCCOMB_X42_Y23_N8
\inst2|uart_rx_u2|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|Selector2~1_combout\ = (!\inst2|uart_rx_u2|cnt_bit\(1) & \inst2|uart_rx_u2|cnt_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|uart_rx_u2|cnt_bit\(1),
	datad => \inst2|uart_rx_u2|cnt_bit\(0),
	combout => \inst2|uart_rx_u2|Selector2~1_combout\);

-- Location: LCCOMB_X42_Y23_N18
\inst2|uart_rx_u2|Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|Selector2~2_combout\ = (\inst2|uart_rx_u2|stage_rx.STOP~q\) # ((\inst2|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & ((!\inst2|uart_rx_u2|Selector2~1_combout\) # (!\inst2|uart_rx_u2|cnt_bit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datab => \inst2|uart_rx_u2|cnt_bit\(2),
	datac => \inst2|uart_rx_u2|Selector2~1_combout\,
	datad => \inst2|uart_rx_u2|stage_rx.STOP~q\,
	combout => \inst2|uart_rx_u2|Selector2~2_combout\);

-- Location: LCCOMB_X42_Y23_N6
\inst2|uart_rx_u2|Selector2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|Selector2~3_combout\ = (\inst2|uart_rx_u2|Selector2~0_combout\ & ((\inst2|uart_rx_u2|cnt_bit\(2)) # ((\inst2|uart_rx_u2|Selector2~2_combout\ & \inst2|uart_rx_u2|rx_data\(5))))) # (!\inst2|uart_rx_u2|Selector2~0_combout\ & 
-- (\inst2|uart_rx_u2|Selector2~2_combout\ & (\inst2|uart_rx_u2|rx_data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|Selector2~0_combout\,
	datab => \inst2|uart_rx_u2|Selector2~2_combout\,
	datac => \inst2|uart_rx_u2|rx_data\(5),
	datad => \inst2|uart_rx_u2|cnt_bit\(2),
	combout => \inst2|uart_rx_u2|Selector2~3_combout\);

-- Location: FF_X42_Y23_N7
\inst2|uart_rx_u2|rx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_rx_u2|Selector2~3_combout\,
	clrn => \rst_n~input_o\,
	sclr => \inst2|uart_rx_u2|ALT_INV_R_receiving~q\,
	ena => \inst2|uart_rx_u2|rx_done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|rx_data\(5));

-- Location: LCCOMB_X43_Y24_N16
\inst2|uart_rx_u2|rxd[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|rxd[5]~feeder_combout\ = \inst2|uart_rx_u2|rx_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|uart_rx_u2|rx_data\(5),
	combout => \inst2|uart_rx_u2|rxd[5]~feeder_combout\);

-- Location: FF_X43_Y24_N17
\inst2|uart_rx_u2|rxd[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_rx_u2|rxd[5]~feeder_combout\,
	ena => \inst2|uart_rx_u2|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|rxd\(5));

-- Location: LCCOMB_X42_Y23_N12
\inst2|uart_rx_u2|Selector0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|Selector0~3_combout\ = (\inst2|uart_rx_u2|rx_data\(7) & ((\inst2|uart_rx_u2|stage_rx.STOP~q\) # ((\inst2|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & !\inst2|uart_rx_u2|Decoder0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datab => \inst2|uart_rx_u2|stage_rx.STOP~q\,
	datac => \inst2|uart_rx_u2|Decoder0~0_combout\,
	datad => \inst2|uart_rx_u2|rx_data\(7),
	combout => \inst2|uart_rx_u2|Selector0~3_combout\);

-- Location: LCCOMB_X42_Y23_N0
\inst2|uart_rx_u2|Selector0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|Selector0~4_combout\ = (\inst2|uart_rx_u2|Selector0~3_combout\) # ((\inst2|uart_rx_u2|Decoder0~0_combout\ & (\rx~input_o\ & \inst2|uart_rx_u2|stage_rx.RECEIVE_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|Decoder0~0_combout\,
	datab => \rx~input_o\,
	datac => \inst2|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datad => \inst2|uart_rx_u2|Selector0~3_combout\,
	combout => \inst2|uart_rx_u2|Selector0~4_combout\);

-- Location: FF_X42_Y23_N1
\inst2|uart_rx_u2|rx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_rx_u2|Selector0~4_combout\,
	clrn => \rst_n~input_o\,
	sclr => \inst2|uart_rx_u2|ALT_INV_R_receiving~q\,
	ena => \inst2|uart_rx_u2|rx_done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|rx_data\(7));

-- Location: FF_X43_Y24_N3
\inst2|uart_rx_u2|rxd[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \inst2|uart_rx_u2|rx_data\(7),
	sload => VCC,
	ena => \inst2|uart_rx_u2|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|rxd\(7));

-- Location: LCCOMB_X42_Y24_N26
\inst2|uart_rx_u2|Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|Selector4~1_combout\ = (\inst2|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & ((\inst2|uart_rx_u2|cnt_bit\(2)) # ((!\inst2|uart_rx_u2|cnt_bit\(1)) # (!\inst2|uart_rx_u2|cnt_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|cnt_bit\(2),
	datab => \inst2|uart_rx_u2|cnt_bit\(0),
	datac => \inst2|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datad => \inst2|uart_rx_u2|cnt_bit\(1),
	combout => \inst2|uart_rx_u2|Selector4~1_combout\);

-- Location: LCCOMB_X42_Y24_N0
\inst2|uart_rx_u2|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|Selector4~0_combout\ = (!\inst2|uart_rx_u2|cnt_bit\(2) & (\inst2|uart_rx_u2|cnt_bit\(0) & (\inst2|uart_rx_u2|cnt_bit\(1) & \inst2|uart_rx_u2|Selector0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|cnt_bit\(2),
	datab => \inst2|uart_rx_u2|cnt_bit\(0),
	datac => \inst2|uart_rx_u2|cnt_bit\(1),
	datad => \inst2|uart_rx_u2|Selector0~2_combout\,
	combout => \inst2|uart_rx_u2|Selector4~0_combout\);

-- Location: LCCOMB_X42_Y24_N24
\inst2|uart_rx_u2|Selector4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|Selector4~2_combout\ = (\inst2|uart_rx_u2|Selector4~0_combout\) # ((\inst2|uart_rx_u2|rx_data\(3) & ((\inst2|uart_rx_u2|Selector4~1_combout\) # (\inst2|uart_rx_u2|stage_rx.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|Selector4~1_combout\,
	datab => \inst2|uart_rx_u2|stage_rx.STOP~q\,
	datac => \inst2|uart_rx_u2|rx_data\(3),
	datad => \inst2|uart_rx_u2|Selector4~0_combout\,
	combout => \inst2|uart_rx_u2|Selector4~2_combout\);

-- Location: FF_X42_Y24_N25
\inst2|uart_rx_u2|rx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_rx_u2|Selector4~2_combout\,
	clrn => \rst_n~input_o\,
	sclr => \inst2|uart_rx_u2|ALT_INV_R_receiving~q\,
	ena => \inst2|uart_rx_u2|rx_done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|rx_data\(3));

-- Location: LCCOMB_X43_Y24_N20
\inst2|uart_rx_u2|rxd[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|rxd[3]~feeder_combout\ = \inst2|uart_rx_u2|rx_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|uart_rx_u2|rx_data\(3),
	combout => \inst2|uart_rx_u2|rxd[3]~feeder_combout\);

-- Location: FF_X43_Y24_N21
\inst2|uart_rx_u2|rxd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_rx_u2|rxd[3]~feeder_combout\,
	ena => \inst2|uart_rx_u2|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|rxd\(3));

-- Location: LCCOMB_X43_Y24_N2
\inst2|receiver_OK_u1|state~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|receiver_OK_u1|state~11_combout\ = (!\inst2|uart_rx_u2|rxd\(4) & (!\inst2|uart_rx_u2|rxd\(5) & (!\inst2|uart_rx_u2|rxd\(7) & \inst2|uart_rx_u2|rxd\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|rxd\(4),
	datab => \inst2|uart_rx_u2|rxd\(5),
	datac => \inst2|uart_rx_u2|rxd\(7),
	datad => \inst2|uart_rx_u2|rxd\(3),
	combout => \inst2|receiver_OK_u1|state~11_combout\);

-- Location: LCCOMB_X42_Y24_N22
\inst2|uart_rx_u2|Selector5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|Selector5~1_combout\ = (\inst2|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & ((\inst2|uart_rx_u2|cnt_bit\(2)) # ((\inst2|uart_rx_u2|cnt_bit\(0)) # (!\inst2|uart_rx_u2|cnt_bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|cnt_bit\(2),
	datab => \inst2|uart_rx_u2|cnt_bit\(0),
	datac => \inst2|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datad => \inst2|uart_rx_u2|cnt_bit\(1),
	combout => \inst2|uart_rx_u2|Selector5~1_combout\);

-- Location: LCCOMB_X42_Y24_N20
\inst2|uart_rx_u2|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|Selector5~0_combout\ = (!\inst2|uart_rx_u2|cnt_bit\(2) & (!\inst2|uart_rx_u2|cnt_bit\(0) & (\inst2|uart_rx_u2|cnt_bit\(1) & \inst2|uart_rx_u2|Selector0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|cnt_bit\(2),
	datab => \inst2|uart_rx_u2|cnt_bit\(0),
	datac => \inst2|uart_rx_u2|cnt_bit\(1),
	datad => \inst2|uart_rx_u2|Selector0~2_combout\,
	combout => \inst2|uart_rx_u2|Selector5~0_combout\);

-- Location: LCCOMB_X42_Y24_N12
\inst2|uart_rx_u2|Selector5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|Selector5~2_combout\ = (\inst2|uart_rx_u2|Selector5~0_combout\) # ((\inst2|uart_rx_u2|rx_data\(2) & ((\inst2|uart_rx_u2|Selector5~1_combout\) # (\inst2|uart_rx_u2|stage_rx.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|Selector5~1_combout\,
	datab => \inst2|uart_rx_u2|stage_rx.STOP~q\,
	datac => \inst2|uart_rx_u2|rx_data\(2),
	datad => \inst2|uart_rx_u2|Selector5~0_combout\,
	combout => \inst2|uart_rx_u2|Selector5~2_combout\);

-- Location: FF_X42_Y24_N13
\inst2|uart_rx_u2|rx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_rx_u2|Selector5~2_combout\,
	clrn => \rst_n~input_o\,
	sclr => \inst2|uart_rx_u2|ALT_INV_R_receiving~q\,
	ena => \inst2|uart_rx_u2|rx_done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|rx_data\(2));

-- Location: LCCOMB_X43_Y24_N6
\inst2|uart_rx_u2|rxd[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|rxd[2]~feeder_combout\ = \inst2|uart_rx_u2|rx_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|uart_rx_u2|rx_data\(2),
	combout => \inst2|uart_rx_u2|rxd[2]~feeder_combout\);

-- Location: FF_X43_Y24_N7
\inst2|uart_rx_u2|rxd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_rx_u2|rxd[2]~feeder_combout\,
	ena => \inst2|uart_rx_u2|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|rxd\(2));

-- Location: LCCOMB_X42_Y24_N10
\inst2|uart_rx_u2|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|Selector1~1_combout\ = (\inst2|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & (((\inst2|uart_rx_u2|cnt_bit\(0)) # (!\inst2|uart_rx_u2|cnt_bit\(1))) # (!\inst2|uart_rx_u2|cnt_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|cnt_bit\(2),
	datab => \inst2|uart_rx_u2|cnt_bit\(0),
	datac => \inst2|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datad => \inst2|uart_rx_u2|cnt_bit\(1),
	combout => \inst2|uart_rx_u2|Selector1~1_combout\);

-- Location: LCCOMB_X42_Y24_N28
\inst2|uart_rx_u2|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|Selector1~0_combout\ = (\inst2|uart_rx_u2|cnt_bit\(2) & (!\inst2|uart_rx_u2|cnt_bit\(0) & (\inst2|uart_rx_u2|cnt_bit\(1) & \inst2|uart_rx_u2|Selector0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|cnt_bit\(2),
	datab => \inst2|uart_rx_u2|cnt_bit\(0),
	datac => \inst2|uart_rx_u2|cnt_bit\(1),
	datad => \inst2|uart_rx_u2|Selector0~2_combout\,
	combout => \inst2|uart_rx_u2|Selector1~0_combout\);

-- Location: LCCOMB_X42_Y24_N8
\inst2|uart_rx_u2|Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|Selector1~2_combout\ = (\inst2|uart_rx_u2|Selector1~0_combout\) # ((\inst2|uart_rx_u2|rx_data\(6) & ((\inst2|uart_rx_u2|Selector1~1_combout\) # (\inst2|uart_rx_u2|stage_rx.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|Selector1~1_combout\,
	datab => \inst2|uart_rx_u2|stage_rx.STOP~q\,
	datac => \inst2|uart_rx_u2|rx_data\(6),
	datad => \inst2|uart_rx_u2|Selector1~0_combout\,
	combout => \inst2|uart_rx_u2|Selector1~2_combout\);

-- Location: FF_X42_Y24_N9
\inst2|uart_rx_u2|rx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_rx_u2|Selector1~2_combout\,
	clrn => \rst_n~input_o\,
	sclr => \inst2|uart_rx_u2|ALT_INV_R_receiving~q\,
	ena => \inst2|uart_rx_u2|rx_done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|rx_data\(6));

-- Location: LCCOMB_X43_Y24_N14
\inst2|uart_rx_u2|rxd[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|rxd[6]~feeder_combout\ = \inst2|uart_rx_u2|rx_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|uart_rx_u2|rx_data\(6),
	combout => \inst2|uart_rx_u2|rxd[6]~feeder_combout\);

-- Location: FF_X43_Y24_N15
\inst2|uart_rx_u2|rxd[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_rx_u2|rxd[6]~feeder_combout\,
	ena => \inst2|uart_rx_u2|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|rxd\(6));

-- Location: LCCOMB_X42_Y24_N6
\inst2|uart_rx_u2|Selector7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|Selector7~1_combout\ = (\inst2|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & ((\inst2|uart_rx_u2|cnt_bit\(2)) # ((\inst2|uart_rx_u2|cnt_bit\(0)) # (\inst2|uart_rx_u2|cnt_bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|cnt_bit\(2),
	datab => \inst2|uart_rx_u2|cnt_bit\(0),
	datac => \inst2|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datad => \inst2|uart_rx_u2|cnt_bit\(1),
	combout => \inst2|uart_rx_u2|Selector7~1_combout\);

-- Location: LCCOMB_X42_Y24_N16
\inst2|uart_rx_u2|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|Selector7~0_combout\ = (!\inst2|uart_rx_u2|cnt_bit\(2) & (!\inst2|uart_rx_u2|cnt_bit\(0) & (!\inst2|uart_rx_u2|cnt_bit\(1) & \inst2|uart_rx_u2|Selector0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|cnt_bit\(2),
	datab => \inst2|uart_rx_u2|cnt_bit\(0),
	datac => \inst2|uart_rx_u2|cnt_bit\(1),
	datad => \inst2|uart_rx_u2|Selector0~2_combout\,
	combout => \inst2|uart_rx_u2|Selector7~0_combout\);

-- Location: LCCOMB_X42_Y24_N30
\inst2|uart_rx_u2|Selector7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|Selector7~2_combout\ = (\inst2|uart_rx_u2|Selector7~0_combout\) # ((\inst2|uart_rx_u2|rx_data\(0) & ((\inst2|uart_rx_u2|Selector7~1_combout\) # (\inst2|uart_rx_u2|stage_rx.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|Selector7~1_combout\,
	datab => \inst2|uart_rx_u2|stage_rx.STOP~q\,
	datac => \inst2|uart_rx_u2|rx_data\(0),
	datad => \inst2|uart_rx_u2|Selector7~0_combout\,
	combout => \inst2|uart_rx_u2|Selector7~2_combout\);

-- Location: FF_X42_Y24_N31
\inst2|uart_rx_u2|rx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_rx_u2|Selector7~2_combout\,
	clrn => \rst_n~input_o\,
	sclr => \inst2|uart_rx_u2|ALT_INV_R_receiving~q\,
	ena => \inst2|uart_rx_u2|rx_done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|rx_data\(0));

-- Location: LCCOMB_X43_Y24_N8
\inst2|uart_rx_u2|rxd[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|rxd[0]~feeder_combout\ = \inst2|uart_rx_u2|rx_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|uart_rx_u2|rx_data\(0),
	combout => \inst2|uart_rx_u2|rxd[0]~feeder_combout\);

-- Location: FF_X43_Y24_N9
\inst2|uart_rx_u2|rxd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_rx_u2|rxd[0]~feeder_combout\,
	ena => \inst2|uart_rx_u2|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|rxd\(0));

-- Location: LCCOMB_X42_Y23_N24
\inst2|uart_rx_u2|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|Selector6~0_combout\ = (\inst2|uart_rx_u2|stage_rx.STOP~q\) # ((\inst2|uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & ((\inst2|uart_rx_u2|cnt_bit\(2)) # (!\inst2|uart_rx_u2|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datab => \inst2|uart_rx_u2|cnt_bit\(2),
	datac => \inst2|uart_rx_u2|Selector2~1_combout\,
	datad => \inst2|uart_rx_u2|stage_rx.STOP~q\,
	combout => \inst2|uart_rx_u2|Selector6~0_combout\);

-- Location: LCCOMB_X42_Y23_N16
\inst2|uart_rx_u2|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|Selector6~1_combout\ = (\inst2|uart_rx_u2|Selector2~0_combout\ & (((\inst2|uart_rx_u2|Selector6~0_combout\ & \inst2|uart_rx_u2|rx_data\(1))) # (!\inst2|uart_rx_u2|cnt_bit\(2)))) # (!\inst2|uart_rx_u2|Selector2~0_combout\ & 
-- (\inst2|uart_rx_u2|Selector6~0_combout\ & (\inst2|uart_rx_u2|rx_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|Selector2~0_combout\,
	datab => \inst2|uart_rx_u2|Selector6~0_combout\,
	datac => \inst2|uart_rx_u2|rx_data\(1),
	datad => \inst2|uart_rx_u2|cnt_bit\(2),
	combout => \inst2|uart_rx_u2|Selector6~1_combout\);

-- Location: FF_X42_Y23_N17
\inst2|uart_rx_u2|rx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_rx_u2|Selector6~1_combout\,
	clrn => \rst_n~input_o\,
	sclr => \inst2|uart_rx_u2|ALT_INV_R_receiving~q\,
	ena => \inst2|uart_rx_u2|rx_done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|rx_data\(1));

-- Location: LCCOMB_X43_Y24_N28
\inst2|uart_rx_u2|rxd[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|rxd[1]~feeder_combout\ = \inst2|uart_rx_u2|rx_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|uart_rx_u2|rx_data\(1),
	combout => \inst2|uart_rx_u2|rxd[1]~feeder_combout\);

-- Location: FF_X43_Y24_N29
\inst2|uart_rx_u2|rxd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_rx_u2|rxd[1]~feeder_combout\,
	ena => \inst2|uart_rx_u2|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|rxd\(1));

-- Location: LCCOMB_X43_Y24_N24
\inst2|receiver_OK_u1|OK~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|receiver_OK_u1|OK~1_combout\ = (!\inst2|uart_rx_u2|rxd\(2) & (!\inst2|uart_rx_u2|rxd\(6) & (!\inst2|uart_rx_u2|rxd\(0) & \inst2|uart_rx_u2|rxd\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|rxd\(2),
	datab => \inst2|uart_rx_u2|rxd\(6),
	datac => \inst2|uart_rx_u2|rxd\(0),
	datad => \inst2|uart_rx_u2|rxd\(1),
	combout => \inst2|receiver_OK_u1|OK~1_combout\);

-- Location: LCCOMB_X36_Y24_N24
\inst2|uart_tx_u1|receive_ok_en~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|receive_ok_en~0_combout\ = (\inst2|uart_tx_u1|stage_tx.STOP~q\ & (!\inst2|uart_tx_u1|Equal4~3_combout\ & !\inst2|uart_tx_u1|Equal4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|stage_tx.STOP~q\,
	datac => \inst2|uart_tx_u1|Equal4~3_combout\,
	datad => \inst2|uart_tx_u1|Equal4~2_combout\,
	combout => \inst2|uart_tx_u1|receive_ok_en~0_combout\);

-- Location: FF_X36_Y24_N25
\inst2|uart_tx_u1|receive_ok_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|receive_ok_en~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|receive_ok_en~q\);

-- Location: LCCOMB_X43_Y24_N12
\inst2|receiver_OK_u1|state~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|receiver_OK_u1|state~14_combout\ = (\inst2|uart_rx_u2|rxd\(0) & (\inst2|uart_rx_u2|rxd\(1) & (\inst2|uart_rx_u2|rxd\(6) & \inst2|receiver_OK_u1|state~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|rxd\(0),
	datab => \inst2|uart_rx_u2|rxd\(1),
	datac => \inst2|uart_rx_u2|rxd\(6),
	datad => \inst2|receiver_OK_u1|state~11_combout\,
	combout => \inst2|receiver_OK_u1|state~14_combout\);

-- Location: LCCOMB_X43_Y24_N4
\inst2|receiver_OK_u1|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|receiver_OK_u1|Selector0~0_combout\ = (\inst2|receiver_OK_u1|state~15_combout\) # ((\inst2|receiver_OK_u1|state~16_combout\) # (\inst2|receiver_OK_u1|state~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|receiver_OK_u1|state~15_combout\,
	datac => \inst2|receiver_OK_u1|state~16_combout\,
	datad => \inst2|receiver_OK_u1|state~13_combout\,
	combout => \inst2|receiver_OK_u1|Selector0~0_combout\);

-- Location: LCCOMB_X42_Y23_N4
\inst2|uart_rx_u2|RECEIVE_END~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_rx_u2|RECEIVE_END~0_combout\ = (\inst2|uart_rx_u2|Equal1~0_combout\ & (!\inst2|uart_rx_u2|cnt_baud\(8) & (!\inst2|uart_rx_u2|Equal2~0_combout\ & \inst2|uart_rx_u2|stage_rx.STOP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|Equal1~0_combout\,
	datab => \inst2|uart_rx_u2|cnt_baud\(8),
	datac => \inst2|uart_rx_u2|Equal2~0_combout\,
	datad => \inst2|uart_rx_u2|stage_rx.STOP~q\,
	combout => \inst2|uart_rx_u2|RECEIVE_END~0_combout\);

-- Location: FF_X42_Y23_N5
\inst2|uart_rx_u2|RECEIVE_END\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_rx_u2|RECEIVE_END~0_combout\,
	clrn => \rst_n~input_o\,
	sclr => \inst2|uart_rx_u2|ALT_INV_R_receiving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_rx_u2|RECEIVE_END~q\);

-- Location: FF_X43_Y24_N5
\inst2|receiver_OK_u1|state.000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|receiver_OK_u1|Selector0~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \inst2|uart_rx_u2|RECEIVE_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|receiver_OK_u1|state.000~q\);

-- Location: LCCOMB_X43_Y24_N30
\inst2|receiver_OK_u1|state~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|receiver_OK_u1|state~16_combout\ = (\inst2|receiver_OK_u1|state~14_combout\ & (!\inst2|receiver_OK_u1|state.000~q\ & \inst2|uart_rx_u2|rxd\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|receiver_OK_u1|state~14_combout\,
	datac => \inst2|receiver_OK_u1|state.000~q\,
	datad => \inst2|uart_rx_u2|rxd\(2),
	combout => \inst2|receiver_OK_u1|state~16_combout\);

-- Location: FF_X43_Y24_N23
\inst2|receiver_OK_u1|state.001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \inst2|receiver_OK_u1|state~16_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \inst2|uart_rx_u2|RECEIVE_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|receiver_OK_u1|state.001~q\);

-- Location: LCCOMB_X43_Y24_N22
\inst2|receiver_OK_u1|state~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|receiver_OK_u1|state~15_combout\ = (\inst2|receiver_OK_u1|state~14_combout\ & (\inst2|receiver_OK_u1|state.001~q\ & !\inst2|uart_rx_u2|rxd\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|receiver_OK_u1|state~14_combout\,
	datac => \inst2|receiver_OK_u1|state.001~q\,
	datad => \inst2|uart_rx_u2|rxd\(2),
	combout => \inst2|receiver_OK_u1|state~15_combout\);

-- Location: FF_X43_Y24_N27
\inst2|receiver_OK_u1|state.010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \inst2|receiver_OK_u1|state~15_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \inst2|uart_rx_u2|RECEIVE_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|receiver_OK_u1|state.010~q\);

-- Location: LCCOMB_X43_Y24_N26
\inst2|receiver_OK_u1|state~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|receiver_OK_u1|state~12_combout\ = (\inst2|uart_rx_u2|rxd\(2) & (\inst2|uart_rx_u2|rxd\(0) & (\inst2|receiver_OK_u1|state.010~q\ & !\inst2|uart_rx_u2|rxd\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_rx_u2|rxd\(2),
	datab => \inst2|uart_rx_u2|rxd\(0),
	datac => \inst2|receiver_OK_u1|state.010~q\,
	datad => \inst2|uart_rx_u2|rxd\(1),
	combout => \inst2|receiver_OK_u1|state~12_combout\);

-- Location: LCCOMB_X43_Y24_N18
\inst2|receiver_OK_u1|state~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|receiver_OK_u1|state~13_combout\ = (!\inst2|uart_rx_u2|rxd\(6) & (\inst2|receiver_OK_u1|state~12_combout\ & \inst2|receiver_OK_u1|state~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_rx_u2|rxd\(6),
	datac => \inst2|receiver_OK_u1|state~12_combout\,
	datad => \inst2|receiver_OK_u1|state~11_combout\,
	combout => \inst2|receiver_OK_u1|state~13_combout\);

-- Location: FF_X43_Y24_N19
\inst2|receiver_OK_u1|state.011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|receiver_OK_u1|state~13_combout\,
	clrn => \rst_n~input_o\,
	ena => \inst2|uart_rx_u2|RECEIVE_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|receiver_OK_u1|state.011~q\);

-- Location: LCCOMB_X44_Y24_N18
\inst2|receiver_OK_u1|OK~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|receiver_OK_u1|OK~2_combout\ = (\inst2|uart_rx_u2|RECEIVE_END~q\ & (((\inst2|receiver_OK_u1|state.011~q\)))) # (!\inst2|uart_rx_u2|RECEIVE_END~q\ & (\inst2|uart_tx_u1|receive_ok_en~q\ & ((\inst2|receiver_OK_u1|OK~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|receive_ok_en~q\,
	datab => \inst2|receiver_OK_u1|state.011~q\,
	datac => \inst2|uart_rx_u2|RECEIVE_END~q\,
	datad => \inst2|receiver_OK_u1|OK~q\,
	combout => \inst2|receiver_OK_u1|OK~2_combout\);

-- Location: LCCOMB_X44_Y24_N12
\inst2|receiver_OK_u1|OK~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|receiver_OK_u1|OK~3_combout\ = (\inst2|receiver_OK_u1|OK~2_combout\ & ((\inst2|receiver_OK_u1|OK~q\) # ((\inst2|receiver_OK_u1|state~11_combout\ & \inst2|receiver_OK_u1|OK~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|receiver_OK_u1|state~11_combout\,
	datab => \inst2|receiver_OK_u1|OK~1_combout\,
	datac => \inst2|receiver_OK_u1|OK~q\,
	datad => \inst2|receiver_OK_u1|OK~2_combout\,
	combout => \inst2|receiver_OK_u1|OK~3_combout\);

-- Location: FF_X44_Y24_N13
\inst2|receiver_OK_u1|OK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|receiver_OK_u1|OK~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|receiver_OK_u1|OK~q\);

-- Location: LCCOMB_X38_Y23_N24
\inst2|uart_tx_u1|always0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|always0~0_combout\ = (!\inst2|uart_tx_u1|Equal3~2_combout\ & (!\inst2|uart_tx_u1|SEND_DATA_en~q\ & ((\inst2|uart_tx_u1|Equal4~4_combout\) # (\inst2|receiver_OK_u1|OK~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Equal3~2_combout\,
	datab => \inst2|uart_tx_u1|SEND_DATA_en~q\,
	datac => \inst2|uart_tx_u1|Equal4~4_combout\,
	datad => \inst2|receiver_OK_u1|OK~q\,
	combout => \inst2|uart_tx_u1|always0~0_combout\);

-- Location: LCCOMB_X39_Y24_N8
\inst2|uart_tx_u1|addr[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|addr[0]~8_combout\ = (\inst2|uart_tx_u1|stage_tx.STOP~q\ & \inst2|uart_tx_u1|always0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|uart_tx_u1|stage_tx.STOP~q\,
	datad => \inst2|uart_tx_u1|always0~0_combout\,
	combout => \inst2|uart_tx_u1|addr[0]~8_combout\);

-- Location: LCCOMB_X39_Y24_N26
\inst2|uart_tx_u1|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Selector0~0_combout\ = (\inst2|uart_tx_u1|addr[0]~8_combout\) # ((\inst2|uart_tx_u1|Equal3~2_combout\ & ((\inst2|uart_tx_u1|stage_tx.START~q\))) # (!\inst2|uart_tx_u1|Equal3~2_combout\ & (!\inst2|uart_tx_u1|stage_tx.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Equal3~2_combout\,
	datab => \inst2|uart_tx_u1|stage_tx.IDLE~q\,
	datac => \inst2|uart_tx_u1|stage_tx.START~q\,
	datad => \inst2|uart_tx_u1|addr[0]~8_combout\,
	combout => \inst2|uart_tx_u1|Selector0~0_combout\);

-- Location: FF_X39_Y24_N27
\inst2|uart_tx_u1|stage_tx.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|Selector0~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|stage_tx.START~q\);

-- Location: LCCOMB_X39_Y24_N0
\inst2|uart_tx_u1|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Selector1~0_combout\ = (\inst2|uart_tx_u1|Equal3~2_combout\ & (((\inst2|uart_tx_u1|stage_tx.SEND_DATA~q\ & !\inst2|uart_tx_u1|always5~0_combout\)))) # (!\inst2|uart_tx_u1|Equal3~2_combout\ & ((\inst2|uart_tx_u1|stage_tx.START~q\) # 
-- ((\inst2|uart_tx_u1|stage_tx.SEND_DATA~q\ & !\inst2|uart_tx_u1|always5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Equal3~2_combout\,
	datab => \inst2|uart_tx_u1|stage_tx.START~q\,
	datac => \inst2|uart_tx_u1|stage_tx.SEND_DATA~q\,
	datad => \inst2|uart_tx_u1|always5~0_combout\,
	combout => \inst2|uart_tx_u1|Selector1~0_combout\);

-- Location: FF_X39_Y24_N1
\inst2|uart_tx_u1|stage_tx.SEND_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|Selector1~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|stage_tx.SEND_DATA~q\);

-- Location: LCCOMB_X39_Y24_N14
\inst2|uart_tx_u1|start_cnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|start_cnt~0_combout\ = (\inst2|uart_tx_u1|stage_tx.SEND_DATA~q\ & ((!\inst2|uart_tx_u1|always5~0_combout\))) # (!\inst2|uart_tx_u1|stage_tx.SEND_DATA~q\ & (\inst2|uart_tx_u1|start_cnt~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|uart_tx_u1|stage_tx.SEND_DATA~q\,
	datac => \inst2|uart_tx_u1|start_cnt~q\,
	datad => \inst2|uart_tx_u1|always5~0_combout\,
	combout => \inst2|uart_tx_u1|start_cnt~0_combout\);

-- Location: FF_X39_Y24_N15
\inst2|uart_tx_u1|start_cnt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|start_cnt~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|start_cnt~q\);

-- Location: LCCOMB_X39_Y24_N2
\inst2|uart_tx_u1|cnt_bit[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|cnt_bit[0]~2_combout\ = \inst2|uart_tx_u1|cnt_bit\(0) $ (((!\inst2|uart_tx_u1|Equal3~2_combout\ & (\inst2|uart_tx_u1|start_cnt~q\ & \inst2|uart_tx_u1|stage_tx.SEND_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Equal3~2_combout\,
	datab => \inst2|uart_tx_u1|start_cnt~q\,
	datac => \inst2|uart_tx_u1|cnt_bit\(0),
	datad => \inst2|uart_tx_u1|stage_tx.SEND_DATA~q\,
	combout => \inst2|uart_tx_u1|cnt_bit[0]~2_combout\);

-- Location: FF_X39_Y24_N3
\inst2|uart_tx_u1|cnt_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|cnt_bit[0]~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|cnt_bit\(0));

-- Location: LCCOMB_X39_Y24_N16
\inst2|uart_tx_u1|cnt_bit[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|cnt_bit[1]~0_combout\ = (!\inst2|uart_tx_u1|Equal3~2_combout\ & (\inst2|uart_tx_u1|cnt_bit\(0) & (\inst2|uart_tx_u1|start_cnt~q\ & \inst2|uart_tx_u1|stage_tx.SEND_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Equal3~2_combout\,
	datab => \inst2|uart_tx_u1|cnt_bit\(0),
	datac => \inst2|uart_tx_u1|start_cnt~q\,
	datad => \inst2|uart_tx_u1|stage_tx.SEND_DATA~q\,
	combout => \inst2|uart_tx_u1|cnt_bit[1]~0_combout\);

-- Location: LCCOMB_X39_Y24_N20
\inst2|uart_tx_u1|cnt_bit[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|cnt_bit[1]~1_combout\ = \inst2|uart_tx_u1|cnt_bit\(1) $ (\inst2|uart_tx_u1|cnt_bit[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|uart_tx_u1|cnt_bit\(1),
	datad => \inst2|uart_tx_u1|cnt_bit[1]~0_combout\,
	combout => \inst2|uart_tx_u1|cnt_bit[1]~1_combout\);

-- Location: FF_X39_Y24_N21
\inst2|uart_tx_u1|cnt_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|cnt_bit[1]~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|cnt_bit\(1));

-- Location: LCCOMB_X39_Y24_N24
\inst2|uart_tx_u1|cnt_bit[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|cnt_bit[2]~3_combout\ = \inst2|uart_tx_u1|cnt_bit\(2) $ (((\inst2|uart_tx_u1|cnt_bit\(1) & \inst2|uart_tx_u1|cnt_bit[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|cnt_bit\(1),
	datac => \inst2|uart_tx_u1|cnt_bit\(2),
	datad => \inst2|uart_tx_u1|cnt_bit[1]~0_combout\,
	combout => \inst2|uart_tx_u1|cnt_bit[2]~3_combout\);

-- Location: FF_X39_Y24_N25
\inst2|uart_tx_u1|cnt_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|cnt_bit[2]~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|cnt_bit\(2));

-- Location: LCCOMB_X39_Y24_N6
\inst2|uart_tx_u1|always5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|always5~0_combout\ = (!\inst2|uart_tx_u1|Equal3~2_combout\ & (\inst2|uart_tx_u1|cnt_bit\(0) & (\inst2|uart_tx_u1|cnt_bit\(1) & \inst2|uart_tx_u1|cnt_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|Equal3~2_combout\,
	datab => \inst2|uart_tx_u1|cnt_bit\(0),
	datac => \inst2|uart_tx_u1|cnt_bit\(1),
	datad => \inst2|uart_tx_u1|cnt_bit\(2),
	combout => \inst2|uart_tx_u1|always5~0_combout\);

-- Location: LCCOMB_X39_Y24_N30
\inst2|uart_tx_u1|Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Selector2~2_combout\ = (\inst2|uart_tx_u1|always5~0_combout\ & ((\inst2|uart_tx_u1|stage_tx.SEND_DATA~q\) # ((\inst2|uart_tx_u1|stage_tx.STOP~q\ & !\inst2|uart_tx_u1|always0~0_combout\)))) # (!\inst2|uart_tx_u1|always5~0_combout\ & 
-- (((\inst2|uart_tx_u1|stage_tx.STOP~q\ & !\inst2|uart_tx_u1|always0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|always5~0_combout\,
	datab => \inst2|uart_tx_u1|stage_tx.SEND_DATA~q\,
	datac => \inst2|uart_tx_u1|stage_tx.STOP~q\,
	datad => \inst2|uart_tx_u1|always0~0_combout\,
	combout => \inst2|uart_tx_u1|Selector2~2_combout\);

-- Location: FF_X39_Y24_N31
\inst2|uart_tx_u1|stage_tx.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|Selector2~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|stage_tx.STOP~q\);

-- Location: LCCOMB_X39_Y24_N10
\inst2|uart_tx_u1|tx~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|tx~0_combout\ = (!\inst2|uart_tx_u1|stage_tx.SEND_DATA~q\ & ((\inst2|uart_tx_u1|stage_tx.STOP~q\) # (!\inst2|uart_tx_u1|tx~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|stage_tx.STOP~q\,
	datac => \inst2|uart_tx_u1|tx~q\,
	datad => \inst2|uart_tx_u1|stage_tx.SEND_DATA~q\,
	combout => \inst2|uart_tx_u1|tx~0_combout\);

-- Location: LCCOMB_X38_Y24_N20
\inst2|uart_tx_u1|tx~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|tx~2_combout\ = (\inst2|uart_tx_u1|cnt_bit\(1) & (\inst2|uart_tx_u1|AT|rom~124_combout\ & !\inst2|uart_tx_u1|cnt_bit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|cnt_bit\(1),
	datab => \inst2|uart_tx_u1|AT|rom~124_combout\,
	datad => \inst2|uart_tx_u1|cnt_bit\(0),
	combout => \inst2|uart_tx_u1|tx~2_combout\);

-- Location: LCCOMB_X39_Y24_N22
\inst2|uart_tx_u1|tx~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|tx~1_combout\ = (!\inst2|uart_tx_u1|cnt_bit\(1) & ((\inst2|uart_tx_u1|cnt_bit\(0) & (\inst2|uart_tx_u1|AT|rom~102_combout\)) # (!\inst2|uart_tx_u1|cnt_bit\(0) & ((\inst2|uart_tx_u1|AT|rom~128_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|cnt_bit\(1),
	datab => \inst2|uart_tx_u1|cnt_bit\(0),
	datac => \inst2|uart_tx_u1|AT|rom~102_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~128_combout\,
	combout => \inst2|uart_tx_u1|tx~1_combout\);

-- Location: LCCOMB_X38_Y25_N24
\inst2|uart_tx_u1|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Mux8~0_combout\ = (\inst2|uart_tx_u1|cnt_bit\(1) & (\inst2|uart_tx_u1|cnt_bit\(0))) # (!\inst2|uart_tx_u1|cnt_bit\(1) & ((\inst2|uart_tx_u1|cnt_bit\(0) & ((\inst2|uart_tx_u1|AT|rom~47_combout\))) # (!\inst2|uart_tx_u1|cnt_bit\(0) & 
-- (\inst2|uart_tx_u1|AT|rom~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|cnt_bit\(1),
	datab => \inst2|uart_tx_u1|cnt_bit\(0),
	datac => \inst2|uart_tx_u1|AT|rom~66_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~47_combout\,
	combout => \inst2|uart_tx_u1|Mux8~0_combout\);

-- Location: LCCOMB_X38_Y24_N24
\inst2|uart_tx_u1|Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|Mux8~1_combout\ = (\inst2|uart_tx_u1|cnt_bit\(1) & ((\inst2|uart_tx_u1|Mux8~0_combout\ & ((\inst2|uart_tx_u1|AT|rom~85_combout\))) # (!\inst2|uart_tx_u1|Mux8~0_combout\ & (\inst2|uart_tx_u1|AT|rom~28_combout\)))) # 
-- (!\inst2|uart_tx_u1|cnt_bit\(1) & (((\inst2|uart_tx_u1|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|cnt_bit\(1),
	datab => \inst2|uart_tx_u1|AT|rom~28_combout\,
	datac => \inst2|uart_tx_u1|Mux8~0_combout\,
	datad => \inst2|uart_tx_u1|AT|rom~85_combout\,
	combout => \inst2|uart_tx_u1|Mux8~1_combout\);

-- Location: LCCOMB_X39_Y24_N28
\inst2|uart_tx_u1|tx~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|tx~3_combout\ = (\inst2|uart_tx_u1|cnt_bit\(2) & ((\inst2|uart_tx_u1|tx~2_combout\) # ((\inst2|uart_tx_u1|tx~1_combout\)))) # (!\inst2|uart_tx_u1|cnt_bit\(2) & (((\inst2|uart_tx_u1|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|tx~2_combout\,
	datab => \inst2|uart_tx_u1|cnt_bit\(2),
	datac => \inst2|uart_tx_u1|tx~1_combout\,
	datad => \inst2|uart_tx_u1|Mux8~1_combout\,
	combout => \inst2|uart_tx_u1|tx~3_combout\);

-- Location: LCCOMB_X39_Y24_N4
\inst2|uart_tx_u1|tx~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|uart_tx_u1|tx~4_combout\ = (\inst2|uart_tx_u1|stage_tx.START~q\) # ((!\inst2|uart_tx_u1|tx~0_combout\ & ((!\inst2|uart_tx_u1|tx~3_combout\) # (!\inst2|uart_tx_u1|stage_tx.SEND_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|uart_tx_u1|tx~0_combout\,
	datab => \inst2|uart_tx_u1|stage_tx.SEND_DATA~q\,
	datac => \inst2|uart_tx_u1|stage_tx.START~q\,
	datad => \inst2|uart_tx_u1|tx~3_combout\,
	combout => \inst2|uart_tx_u1|tx~4_combout\);

-- Location: FF_X39_Y24_N5
\inst2|uart_tx_u1|tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \inst2|uart_tx_u1|tx~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|uart_tx_u1|tx~q\);

-- Location: LCCOMB_X35_Y18_N26
\inst1|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux6~0_combout\ = (\inst1|Equal0~0_combout\ & ((\inst1|bond\(0)) # (\inst1|bond\(1)))) # (!\inst1|Equal0~0_combout\ & ((!\inst1|bond\(1)) # (!\inst1|bond\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal0~0_combout\,
	datac => \inst1|bond\(0),
	datad => \inst1|bond\(1),
	combout => \inst1|Mux6~0_combout\);

-- Location: LCCOMB_X35_Y18_N16
\inst1|krow[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|krow[1]~0_combout\ = (\inst1|Equal0~0_combout\ $ (\inst1|bond\(0))) # (!\inst1|bond\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~0_combout\,
	datac => \inst1|bond\(1),
	datad => \inst1|bond\(0),
	combout => \inst1|krow[1]~0_combout\);

-- Location: FF_X35_Y18_N27
\inst1|krow[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|T[13]~clkctrl_outclk\,
	d => \inst1|Mux6~0_combout\,
	ena => \inst1|krow[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|krow\(2));

-- Location: LCCOMB_X35_Y18_N28
\inst1|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Mux7~0_combout\ = (\inst1|bond\(1)) # (\inst1|Equal0~0_combout\ $ (\inst1|bond\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal0~0_combout\,
	datac => \inst1|bond\(0),
	datad => \inst1|bond\(1),
	combout => \inst1|Mux7~0_combout\);

-- Location: FF_X35_Y18_N29
\inst1|krow[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|T[13]~clkctrl_outclk\,
	d => \inst1|Mux7~0_combout\,
	ena => \inst1|krow[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|krow\(1));

-- Location: LCCOMB_X35_Y18_N30
\inst1|krow[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|krow[0]~1_combout\ = !\inst1|bond~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|bond~0_combout\,
	combout => \inst1|krow[0]~1_combout\);

-- Location: FF_X35_Y18_N31
\inst1|krow[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|T[13]~clkctrl_outclk\,
	d => \inst1|krow[0]~1_combout\,
	ena => \inst1|krow[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|krow\(0));

ww_txd <= \txd~output_o\;

ww_tx <= \tx~output_o\;

ww_row(2) <= \row[2]~output_o\;

ww_row(1) <= \row[1]~output_o\;

ww_row(0) <= \row[0]~output_o\;
END structure;


