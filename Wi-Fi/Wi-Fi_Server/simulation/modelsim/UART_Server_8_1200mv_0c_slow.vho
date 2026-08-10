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

-- DATE "07/20/2026 10:48:22"

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

ENTITY 	UART_Server IS
    PORT (
	iCLK : IN std_logic;
	RST_n : IN std_logic;
	tx_en : IN std_logic;
	rx : IN std_logic;
	tx : BUFFER std_logic;
	LED : BUFFER std_logic_vector(7 DOWNTO 0);
	Server_wifi_txd : BUFFER std_logic;
	RST_WiFi : BUFFER std_logic;
	rse_wifi : BUFFER std_logic;
	LED_select : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END UART_Server;

-- Design Ports Information
-- tx	=>  Location: PIN_194,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[0]	=>  Location: PIN_160,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_159,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_176,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[4]	=>  Location: PIN_177,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[5]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[6]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[7]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Server_wifi_txd	=>  Location: PIN_183,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST_WiFi	=>  Location: PIN_173,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rse_wifi	=>  Location: PIN_164,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_select[0]	=>  Location: PIN_171,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_select[1]	=>  Location: PIN_169,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_select[2]	=>  Location: PIN_161,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_select[3]	=>  Location: PIN_145,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_select[4]	=>  Location: PIN_146,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_select[5]	=>  Location: PIN_185,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_select[6]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_select[7]	=>  Location: PIN_139,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_select[8]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_select[9]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_select[10]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_select[11]	=>  Location: PIN_186,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_select[12]	=>  Location: PIN_118,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_select[13]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_select[14]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_select[15]	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx	=>  Location: PIN_184,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST_n	=>  Location: PIN_166,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iCLK	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_en	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UART_Server IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_iCLK : std_logic;
SIGNAL ww_RST_n : std_logic;
SIGNAL ww_tx_en : std_logic;
SIGNAL ww_rx : std_logic;
SIGNAL ww_tx : std_logic;
SIGNAL ww_LED : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Server_wifi_txd : std_logic;
SIGNAL ww_RST_WiFi : std_logic;
SIGNAL ww_rse_wifi : std_logic;
SIGNAL ww_LED_select : std_logic_vector(15 DOWNTO 0);
SIGNAL \iCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tx~output_o\ : std_logic;
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \LED[4]~output_o\ : std_logic;
SIGNAL \LED[5]~output_o\ : std_logic;
SIGNAL \LED[6]~output_o\ : std_logic;
SIGNAL \LED[7]~output_o\ : std_logic;
SIGNAL \Server_wifi_txd~output_o\ : std_logic;
SIGNAL \RST_WiFi~output_o\ : std_logic;
SIGNAL \rse_wifi~output_o\ : std_logic;
SIGNAL \LED_select[0]~output_o\ : std_logic;
SIGNAL \LED_select[1]~output_o\ : std_logic;
SIGNAL \LED_select[2]~output_o\ : std_logic;
SIGNAL \LED_select[3]~output_o\ : std_logic;
SIGNAL \LED_select[4]~output_o\ : std_logic;
SIGNAL \LED_select[5]~output_o\ : std_logic;
SIGNAL \LED_select[6]~output_o\ : std_logic;
SIGNAL \LED_select[7]~output_o\ : std_logic;
SIGNAL \LED_select[8]~output_o\ : std_logic;
SIGNAL \LED_select[9]~output_o\ : std_logic;
SIGNAL \LED_select[10]~output_o\ : std_logic;
SIGNAL \LED_select[11]~output_o\ : std_logic;
SIGNAL \LED_select[12]~output_o\ : std_logic;
SIGNAL \LED_select[13]~output_o\ : std_logic;
SIGNAL \LED_select[14]~output_o\ : std_logic;
SIGNAL \LED_select[15]~output_o\ : std_logic;
SIGNAL \iCLK~input_o\ : std_logic;
SIGNAL \iCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \uart_tx_u1|Add1~0_combout\ : std_logic;
SIGNAL \RST_n~input_o\ : std_logic;
SIGNAL \uart_tx_u1|Add1~5\ : std_logic;
SIGNAL \uart_tx_u1|Add1~6_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add1~7\ : std_logic;
SIGNAL \uart_tx_u1|Add1~8_combout\ : std_logic;
SIGNAL \uart_tx_u1|cnt_baud~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add1~9\ : std_logic;
SIGNAL \uart_tx_u1|Add1~10_combout\ : std_logic;
SIGNAL \uart_tx_u1|cnt_baud~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add1~11\ : std_logic;
SIGNAL \uart_tx_u1|Add1~12_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add1~13\ : std_logic;
SIGNAL \uart_tx_u1|Add1~14_combout\ : std_logic;
SIGNAL \uart_tx_u1|cnt_baud~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add1~15\ : std_logic;
SIGNAL \uart_tx_u1|Add1~16_combout\ : std_logic;
SIGNAL \uart_tx_u1|cnt_baud~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Equal2~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add1~1\ : std_logic;
SIGNAL \uart_tx_u1|Add1~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|cnt_baud~3_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add1~3\ : std_logic;
SIGNAL \uart_tx_u1|Add1~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|Equal2~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|Equal2~2_combout\ : std_logic;
SIGNAL \tx_en~input_o\ : std_logic;
SIGNAL \uart_tx_u1|stage_tx.IDLE~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|stage_tx.IDLE~q\ : std_logic;
SIGNAL \uart_tx_u1|Selector0~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|cnt_rom[3]~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr[0]~10_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr[0]~8_combout\ : std_logic;
SIGNAL \uart_rx_u1|cnt_baud[0]~9_combout\ : std_logic;
SIGNAL \uart_rx_u1|Equal1~0_combout\ : std_logic;
SIGNAL \uart_rx_u1|stage_rx~8_combout\ : std_logic;
SIGNAL \uart_rx_u1|stage_rx.STOP~q\ : std_logic;
SIGNAL \uart_rx_u1|rx_done~0_combout\ : std_logic;
SIGNAL \uart_rx_u1|rx_done~q\ : std_logic;
SIGNAL \rx~input_o\ : std_logic;
SIGNAL \uart_rx_u1|rx_reg0~feeder_combout\ : std_logic;
SIGNAL \uart_rx_u1|rx_reg0~q\ : std_logic;
SIGNAL \uart_rx_u1|rx_reg1~feeder_combout\ : std_logic;
SIGNAL \uart_rx_u1|rx_reg1~q\ : std_logic;
SIGNAL \uart_rx_u1|rx_reg2~feeder_combout\ : std_logic;
SIGNAL \uart_rx_u1|rx_reg2~q\ : std_logic;
SIGNAL \uart_rx_u1|rx_reg3~feeder_combout\ : std_logic;
SIGNAL \uart_rx_u1|rx_reg3~q\ : std_logic;
SIGNAL \uart_rx_u1|R_receiving~0_combout\ : std_logic;
SIGNAL \uart_rx_u1|R_receiving~q\ : std_logic;
SIGNAL \uart_rx_u1|bps_rx_clk_en~q\ : std_logic;
SIGNAL \uart_rx_u1|Equal1~1_combout\ : std_logic;
SIGNAL \uart_rx_u1|cnt_baud[0]~19_combout\ : std_logic;
SIGNAL \uart_rx_u1|cnt_baud[0]~10\ : std_logic;
SIGNAL \uart_rx_u1|cnt_baud[1]~11_combout\ : std_logic;
SIGNAL \uart_rx_u1|cnt_baud[1]~12\ : std_logic;
SIGNAL \uart_rx_u1|cnt_baud[2]~13_combout\ : std_logic;
SIGNAL \uart_rx_u1|cnt_baud[2]~14\ : std_logic;
SIGNAL \uart_rx_u1|cnt_baud[3]~15_combout\ : std_logic;
SIGNAL \uart_rx_u1|cnt_baud[3]~16\ : std_logic;
SIGNAL \uart_rx_u1|cnt_baud[4]~17_combout\ : std_logic;
SIGNAL \uart_rx_u1|cnt_baud[4]~18\ : std_logic;
SIGNAL \uart_rx_u1|cnt_baud[5]~20_combout\ : std_logic;
SIGNAL \uart_rx_u1|cnt_baud[5]~21\ : std_logic;
SIGNAL \uart_rx_u1|cnt_baud[6]~22_combout\ : std_logic;
SIGNAL \uart_rx_u1|cnt_baud[6]~23\ : std_logic;
SIGNAL \uart_rx_u1|cnt_baud[7]~24_combout\ : std_logic;
SIGNAL \uart_rx_u1|cnt_baud[7]~25\ : std_logic;
SIGNAL \uart_rx_u1|cnt_baud[8]~26_combout\ : std_logic;
SIGNAL \uart_rx_u1|Equal2~0_combout\ : std_logic;
SIGNAL \uart_rx_u1|Equal2~1_combout\ : std_logic;
SIGNAL \uart_rx_u1|cnt_bit[0]~0_combout\ : std_logic;
SIGNAL \uart_rx_u1|cnt_bit[2]~1_combout\ : std_logic;
SIGNAL \uart_rx_u1|cnt_bit[2]~2_combout\ : std_logic;
SIGNAL \uart_rx_u1|Equal0~0_combout\ : std_logic;
SIGNAL \uart_rx_u1|stage_rx~10_combout\ : std_logic;
SIGNAL \uart_rx_u1|stage_rx.START~q\ : std_logic;
SIGNAL \uart_rx_u1|stage_rx~9_combout\ : std_logic;
SIGNAL \uart_rx_u1|stage_rx.RECEIVE_DATA~q\ : std_logic;
SIGNAL \uart_rx_u1|cnt_bit[1]~3_combout\ : std_logic;
SIGNAL \uart_rx_u1|Selector5~1_combout\ : std_logic;
SIGNAL \uart_rx_u1|Selector0~2_combout\ : std_logic;
SIGNAL \uart_rx_u1|Selector5~0_combout\ : std_logic;
SIGNAL \uart_rx_u1|Selector5~2_combout\ : std_logic;
SIGNAL \uart_rx_u1|rx_data[5]~0_combout\ : std_logic;
SIGNAL \uart_rx_u1|rxd[7]~0_combout\ : std_logic;
SIGNAL \uart_rx_u1|Selector7~1_combout\ : std_logic;
SIGNAL \uart_rx_u1|Selector7~0_combout\ : std_logic;
SIGNAL \uart_rx_u1|Selector7~2_combout\ : std_logic;
SIGNAL \uart_rx_u1|Selector2~0_combout\ : std_logic;
SIGNAL \uart_rx_u1|Selector2~1_combout\ : std_logic;
SIGNAL \uart_rx_u1|Selector6~0_combout\ : std_logic;
SIGNAL \uart_rx_u1|Selector6~1_combout\ : std_logic;
SIGNAL \uart_rx_u1|Selector1~1_combout\ : std_logic;
SIGNAL \uart_rx_u1|Selector1~0_combout\ : std_logic;
SIGNAL \uart_rx_u1|Selector1~2_combout\ : std_logic;
SIGNAL \receiver_OK_ser_u1|OK~1_combout\ : std_logic;
SIGNAL \uart_rx_u1|Selector3~0_combout\ : std_logic;
SIGNAL \uart_rx_u1|Selector3~1_combout\ : std_logic;
SIGNAL \uart_rx_u1|Selector3~2_combout\ : std_logic;
SIGNAL \uart_rx_u1|Selector0~3_combout\ : std_logic;
SIGNAL \uart_rx_u1|Selector0~4_combout\ : std_logic;
SIGNAL \uart_rx_u1|Selector2~2_combout\ : std_logic;
SIGNAL \uart_rx_u1|Selector2~3_combout\ : std_logic;
SIGNAL \uart_rx_u1|Selector4~2_combout\ : std_logic;
SIGNAL \uart_rx_u1|Selector4~3_combout\ : std_logic;
SIGNAL \uart_rx_u1|Selector4~4_combout\ : std_logic;
SIGNAL \receiver_OK_ser_u1|Equal2~0_combout\ : std_logic;
SIGNAL \receiver_OK_ser_u1|state~12_combout\ : std_logic;
SIGNAL \mode_LED_u1|Equal7~0_combout\ : std_logic;
SIGNAL \receiver_OK_ser_u1|Equal2~1_combout\ : std_logic;
SIGNAL \receiver_OK_ser_u1|Selector0~0_combout\ : std_logic;
SIGNAL \uart_rx_u1|RECEIVE_END~0_combout\ : std_logic;
SIGNAL \uart_rx_u1|RECEIVE_END~q\ : std_logic;
SIGNAL \receiver_OK_ser_u1|state.000~q\ : std_logic;
SIGNAL \receiver_OK_ser_u1|state~14_combout\ : std_logic;
SIGNAL \receiver_OK_ser_u1|state.001~q\ : std_logic;
SIGNAL \receiver_OK_ser_u1|state~13_combout\ : std_logic;
SIGNAL \receiver_OK_ser_u1|state.010~feeder_combout\ : std_logic;
SIGNAL \receiver_OK_ser_u1|state.010~q\ : std_logic;
SIGNAL \receiver_OK_ser_u1|state~11_combout\ : std_logic;
SIGNAL \receiver_OK_ser_u1|state.011~q\ : std_logic;
SIGNAL \uart_tx_u1|receive_ok_en~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|receive_ok_en~q\ : std_logic;
SIGNAL \receiver_OK_ser_u1|OK~2_combout\ : std_logic;
SIGNAL \receiver_OK_ser_u1|OK~3_combout\ : std_logic;
SIGNAL \receiver_OK_ser_u1|OK~q\ : std_logic;
SIGNAL \uart_tx_u1|addr[0]~9_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add0~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add0~1\ : std_logic;
SIGNAL \uart_tx_u1|Add0~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add0~3\ : std_logic;
SIGNAL \uart_tx_u1|Add0~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add0~5\ : std_logic;
SIGNAL \uart_tx_u1|Add0~6_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add0~7\ : std_logic;
SIGNAL \uart_tx_u1|Add0~8_combout\ : std_logic;
SIGNAL \uart_tx_u1|ROM.00000000~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|ROM.10100000~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|ROM.10100000~q\ : std_logic;
SIGNAL \uart_tx_u1|addr[7]~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr[5]~5_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr[5]~_emulated_q\ : std_logic;
SIGNAL \uart_tx_u1|addr[5]~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add0~9\ : std_logic;
SIGNAL \uart_tx_u1|Add0~10_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add0~11\ : std_logic;
SIGNAL \uart_tx_u1|Add0~12_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr[7]~3_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr[7]~_emulated_q\ : std_logic;
SIGNAL \uart_tx_u1|addr[7]~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~19_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~23_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~20_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~21_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~22_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~24_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~114_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~110_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~111_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~112_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~113_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~115_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~101_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~98_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~99_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~100_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~102_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~103_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~107_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~104_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~105_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~106_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~108_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~109_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~116_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~14_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~13_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~15_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~16_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~12_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~17_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~6_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~10_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~7_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~8_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~9_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~11_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~18_combout\ : std_logic;
SIGNAL \uart_tx_u1|Equal3~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~96_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~95_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~97_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~86_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~84_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~83_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~85_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~87_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~92_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~88_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~89_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~90_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~91_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~93_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~94_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~131_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~58_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~60_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~59_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~61_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~62_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~38_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~42_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~39_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~40_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~41_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~43_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~29_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~25_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~27_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~26_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~28_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~30_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~35_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~31_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~32_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~33_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~34_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~36_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~37_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~44_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~51_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~55_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~53_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~52_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~54_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~56_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~49_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~45_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~46_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~47_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~48_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~50_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~57_combout\ : std_logic;
SIGNAL \uart_tx_u1|Equal3~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~81_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~77_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~79_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~78_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~80_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~82_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~128_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~117_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~132_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~118_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~119_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~120_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~121_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~125_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~122_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~123_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~124_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~126_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~127_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~133_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~74_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~70_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~71_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~72_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~73_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~75_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~68_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~64_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~65_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~66_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~67_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~69_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~76_combout\ : std_logic;
SIGNAL \uart_tx_u1|Equal3~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|Equal3~3_combout\ : std_logic;
SIGNAL \uart_tx_u1|cnt_rom[0]~7_combout\ : std_logic;
SIGNAL \uart_tx_u1|cnt_rom[1]~5_combout\ : std_logic;
SIGNAL \uart_tx_u1|cnt_rom[2]~3_combout\ : std_logic;
SIGNAL \uart_tx_u1|cnt_rom[2]~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|cnt_rom[3]~6_combout\ : std_logic;
SIGNAL \mode_LED_u1|always1~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|always0~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector0~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|stage_tx.START~q\ : std_logic;
SIGNAL \uart_tx_u1|Selector1~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|stage_tx.SEND_DATA~q\ : std_logic;
SIGNAL \uart_tx_u1|start_cnt~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|start_cnt~q\ : std_logic;
SIGNAL \uart_tx_u1|cnt_bit[0]~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|cnt_bit[1]~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|cnt_bit[1]~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|cnt_bit[2]~3_combout\ : std_logic;
SIGNAL \uart_tx_u1|always0~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector2~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|stage_tx.STOP~q\ : std_logic;
SIGNAL \uart_tx_u1|tx~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|tx~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|tx~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~129_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~63_combout\ : std_logic;
SIGNAL \uart_tx_u1|Mux0~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~130_combout\ : std_logic;
SIGNAL \uart_tx_u1|Mux0~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|tx~3_combout\ : std_logic;
SIGNAL \uart_tx_u1|tx~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|tx~q\ : std_logic;
SIGNAL \mode_LED_u1|Equal8~0_combout\ : std_logic;
SIGNAL \mode_LED_u1|always1~2_combout\ : std_logic;
SIGNAL \mode_LED_u1|rx_reg[0]~1_combout\ : std_logic;
SIGNAL \mode_LED_u1|always1~1_combout\ : std_logic;
SIGNAL \mode_LED_u1|state_recv.0100~q\ : std_logic;
SIGNAL \mode_LED_u1|state_recv.0101~q\ : std_logic;
SIGNAL \mode_LED_u1|Selector5~1_combout\ : std_logic;
SIGNAL \mode_LED_u1|Equal7~1_combout\ : std_logic;
SIGNAL \mode_LED_u1|Equal7~2_combout\ : std_logic;
SIGNAL \mode_LED_u1|Selector5~0_combout\ : std_logic;
SIGNAL \mode_LED_u1|Selector5~2_combout\ : std_logic;
SIGNAL \mode_LED_u1|state_recv.0000~q\ : std_logic;
SIGNAL \mode_LED_u1|state_recv~16_combout\ : std_logic;
SIGNAL \mode_LED_u1|state_recv.0001~q\ : std_logic;
SIGNAL \mode_LED_u1|state_recv~15_combout\ : std_logic;
SIGNAL \mode_LED_u1|state_recv.0010~q\ : std_logic;
SIGNAL \mode_LED_u1|state_recv~14_combout\ : std_logic;
SIGNAL \mode_LED_u1|state_recv.0011~q\ : std_logic;
SIGNAL \mode_LED_u1|rx_reg[0]~0_combout\ : std_logic;
SIGNAL \mode_LED_u1|rx_reg[0]~feeder_combout\ : std_logic;
SIGNAL \mode_LED_u1|Selector17~0_combout\ : std_logic;
SIGNAL \mode_LED_u1|rx_reg[3]~feeder_combout\ : std_logic;
SIGNAL \mode_LED_u1|Selector17~1_combout\ : std_logic;
SIGNAL \mode_LED_u1|rx_reg[5]~feeder_combout\ : std_logic;
SIGNAL \mode_LED_u1|LED_select[0]~0_combout\ : std_logic;
SIGNAL \mode_LED_u1|LED_select[0]~1_combout\ : std_logic;
SIGNAL \mode_LED_u1|Selector21~0_combout\ : std_logic;
SIGNAL \mode_LED_u1|LED_select[0]~2_combout\ : std_logic;
SIGNAL \mode_LED_u1|LED_select[0]~3_combout\ : std_logic;
SIGNAL \mode_LED_u1|LED_select[0]~4_combout\ : std_logic;
SIGNAL \mode_LED_u1|LED_select[0]~5_combout\ : std_logic;
SIGNAL \mode_LED_u1|Selector11~1_combout\ : std_logic;
SIGNAL \mode_LED_u1|WideOr0~0_combout\ : std_logic;
SIGNAL \mode_LED_u1|Selector11~0_combout\ : std_logic;
SIGNAL \mode_LED_u1|Selector11~2_combout\ : std_logic;
SIGNAL \mode_LED_u1|Selector11~3_combout\ : std_logic;
SIGNAL \mode_LED_u1|Selector18~0_combout\ : std_logic;
SIGNAL \mode_LED_u1|Selector18~1_combout\ : std_logic;
SIGNAL \mode_LED_u1|Selector21~1_combout\ : std_logic;
SIGNAL \mode_LED_u1|Selector21~2_combout\ : std_logic;
SIGNAL \mode_LED_u1|Equal0~0_combout\ : std_logic;
SIGNAL \mode_LED_u1|Selector20~0_combout\ : std_logic;
SIGNAL \mode_LED_u1|Selector20~1_combout\ : std_logic;
SIGNAL \mode_LED_u1|Selector19~0_combout\ : std_logic;
SIGNAL \mode_LED_u1|Equal0~1_combout\ : std_logic;
SIGNAL \mode_LED_u1|Equal3~0_combout\ : std_logic;
SIGNAL \mode_LED_u1|Equal1~0_combout\ : std_logic;
SIGNAL \mode_LED_u1|Equal2~0_combout\ : std_logic;
SIGNAL \mode_LED_u1|Equal3~1_combout\ : std_logic;
SIGNAL \mode_LED_u1|Equal4~0_combout\ : std_logic;
SIGNAL \mode_LED_u1|Equal5~0_combout\ : std_logic;
SIGNAL \mode_LED_u1|Equal6~0_combout\ : std_logic;
SIGNAL \RST~feeder_combout\ : std_logic;
SIGNAL \RST~q\ : std_logic;
SIGNAL \RST_WiFi~0_combout\ : std_logic;
SIGNAL \RST_WiFi~reg0_q\ : std_logic;
SIGNAL \uart_rx_u1|cnt_bit\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \uart_tx_u1|cnt_baud\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \uart_rx_u1|rxd\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_rx_u1|rx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_tx_u1|addr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_rx_u1|cnt_baud\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \uart_tx_u1|cnt_rom\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_tx_u1|cnt_bit\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \mode_LED_u1|rx_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mode_LED_u1|LED_select\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mode_LED_u1|LED\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_rx_u1|ALT_INV_R_receiving~q\ : std_logic;
SIGNAL \uart_tx_u1|ALT_INV_tx~q\ : std_logic;

BEGIN

ww_iCLK <= iCLK;
ww_RST_n <= RST_n;
ww_tx_en <= tx_en;
ww_rx <= rx;
tx <= ww_tx;
LED <= ww_LED;
Server_wifi_txd <= ww_Server_wifi_txd;
RST_WiFi <= ww_RST_WiFi;
rse_wifi <= ww_rse_wifi;
LED_select <= ww_LED_select;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\iCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \iCLK~input_o\);
\uart_rx_u1|ALT_INV_R_receiving~q\ <= NOT \uart_rx_u1|R_receiving~q\;
\uart_tx_u1|ALT_INV_tx~q\ <= NOT \uart_tx_u1|tx~q\;

-- Location: IOOBUF_X50_Y43_N2
\tx~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_tx_u1|ALT_INV_tx~q\,
	devoe => ww_devoe,
	o => \tx~output_o\);

-- Location: IOOBUF_X67_Y25_N16
\LED[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|LED\(0),
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: IOOBUF_X67_Y25_N23
\LED[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|LED\(1),
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

-- Location: IOOBUF_X67_Y18_N23
\LED[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|LED\(2),
	devoe => ww_devoe,
	o => \LED[2]~output_o\);

-- Location: IOOBUF_X67_Y39_N9
\LED[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|LED\(3),
	devoe => ww_devoe,
	o => \LED[3]~output_o\);

-- Location: IOOBUF_X67_Y40_N23
\LED[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|LED\(4),
	devoe => ww_devoe,
	o => \LED[4]~output_o\);

-- Location: IOOBUF_X67_Y17_N16
\LED[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|LED\(5),
	devoe => ww_devoe,
	o => \LED[5]~output_o\);

-- Location: IOOBUF_X67_Y14_N23
\LED[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|LED\(6),
	devoe => ww_devoe,
	o => \LED[6]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\LED[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[7]~output_o\);

-- Location: IOOBUF_X63_Y43_N30
\Server_wifi_txd~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx~input_o\,
	devoe => ww_devoe,
	o => \Server_wifi_txd~output_o\);

-- Location: IOOBUF_X67_Y35_N2
\RST_WiFi~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RST_WiFi~reg0_q\,
	devoe => ww_devoe,
	o => \RST_WiFi~output_o\);

-- Location: IOOBUF_X67_Y27_N16
\rse_wifi~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RST_n~input_o\,
	devoe => ww_devoe,
	o => \rse_wifi~output_o\);

-- Location: IOOBUF_X67_Y34_N9
\LED_select[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|LED_select\(0),
	devoe => ww_devoe,
	o => \LED_select[0]~output_o\);

-- Location: IOOBUF_X67_Y31_N23
\LED_select[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|LED_select\(1),
	devoe => ww_devoe,
	o => \LED_select[1]~output_o\);

-- Location: IOOBUF_X67_Y26_N23
\LED_select[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|LED_select\(2),
	devoe => ww_devoe,
	o => \LED_select[2]~output_o\);

-- Location: IOOBUF_X67_Y18_N16
\LED_select[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|LED_select\(3),
	devoe => ww_devoe,
	o => \LED_select[3]~output_o\);

-- Location: IOOBUF_X67_Y19_N9
\LED_select[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|LED_select\(4),
	devoe => ww_devoe,
	o => \LED_select[4]~output_o\);

-- Location: IOOBUF_X59_Y43_N9
\LED_select[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|LED_select\(10),
	devoe => ww_devoe,
	o => \LED_select[5]~output_o\);

-- Location: IOOBUF_X61_Y0_N9
\LED_select[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|LED_select\(10),
	devoe => ww_devoe,
	o => \LED_select[6]~output_o\);

-- Location: IOOBUF_X67_Y10_N23
\LED_select[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|LED_select\(10),
	devoe => ww_devoe,
	o => \LED_select[7]~output_o\);

-- Location: IOOBUF_X67_Y5_N16
\LED_select[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|LED_select\(10),
	devoe => ww_devoe,
	o => \LED_select[8]~output_o\);

-- Location: IOOBUF_X61_Y0_N30
\LED_select[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|LED_select\(10),
	devoe => ww_devoe,
	o => \LED_select[9]~output_o\);

-- Location: IOOBUF_X67_Y7_N23
\LED_select[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|LED_select\(10),
	devoe => ww_devoe,
	o => \LED_select[10]~output_o\);

-- Location: IOOBUF_X59_Y43_N16
\LED_select[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|LED_select\(10),
	devoe => ww_devoe,
	o => \LED_select[11]~output_o\);

-- Location: IOOBUF_X63_Y0_N2
\LED_select[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|LED_select\(10),
	devoe => ww_devoe,
	o => \LED_select[12]~output_o\);

-- Location: IOOBUF_X67_Y9_N9
\LED_select[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|LED_select\(10),
	devoe => ww_devoe,
	o => \LED_select[13]~output_o\);

-- Location: IOOBUF_X67_Y5_N9
\LED_select[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|LED_select\(10),
	devoe => ww_devoe,
	o => \LED_select[14]~output_o\);

-- Location: IOOBUF_X67_Y5_N23
\LED_select[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|LED_select\(10),
	devoe => ww_devoe,
	o => \LED_select[15]~output_o\);

-- Location: IOIBUF_X0_Y21_N1
\iCLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iCLK,
	o => \iCLK~input_o\);

-- Location: CLKCTRL_G4
\iCLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \iCLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \iCLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X62_Y28_N6
\uart_tx_u1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add1~0_combout\ = \uart_tx_u1|cnt_baud\(0) $ (VCC)
-- \uart_tx_u1|Add1~1\ = CARRY(\uart_tx_u1|cnt_baud\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|cnt_baud\(0),
	datad => VCC,
	combout => \uart_tx_u1|Add1~0_combout\,
	cout => \uart_tx_u1|Add1~1\);

-- Location: IOIBUF_X67_Y28_N22
\RST_n~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST_n,
	o => \RST_n~input_o\);

-- Location: FF_X62_Y28_N7
\uart_tx_u1|cnt_baud[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|Add1~0_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|cnt_baud\(0));

-- Location: LCCOMB_X62_Y28_N10
\uart_tx_u1|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add1~4_combout\ = (\uart_tx_u1|cnt_baud\(2) & (\uart_tx_u1|Add1~3\ $ (GND))) # (!\uart_tx_u1|cnt_baud\(2) & (!\uart_tx_u1|Add1~3\ & VCC))
-- \uart_tx_u1|Add1~5\ = CARRY((\uart_tx_u1|cnt_baud\(2) & !\uart_tx_u1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|cnt_baud\(2),
	datad => VCC,
	cin => \uart_tx_u1|Add1~3\,
	combout => \uart_tx_u1|Add1~4_combout\,
	cout => \uart_tx_u1|Add1~5\);

-- Location: LCCOMB_X62_Y28_N12
\uart_tx_u1|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add1~6_combout\ = (\uart_tx_u1|cnt_baud\(3) & (!\uart_tx_u1|Add1~5\)) # (!\uart_tx_u1|cnt_baud\(3) & ((\uart_tx_u1|Add1~5\) # (GND)))
-- \uart_tx_u1|Add1~7\ = CARRY((!\uart_tx_u1|Add1~5\) # (!\uart_tx_u1|cnt_baud\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|cnt_baud\(3),
	datad => VCC,
	cin => \uart_tx_u1|Add1~5\,
	combout => \uart_tx_u1|Add1~6_combout\,
	cout => \uart_tx_u1|Add1~7\);

-- Location: FF_X62_Y28_N13
\uart_tx_u1|cnt_baud[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|Add1~6_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|cnt_baud\(3));

-- Location: LCCOMB_X62_Y28_N14
\uart_tx_u1|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add1~8_combout\ = (\uart_tx_u1|cnt_baud\(4) & (\uart_tx_u1|Add1~7\ $ (GND))) # (!\uart_tx_u1|cnt_baud\(4) & (!\uart_tx_u1|Add1~7\ & VCC))
-- \uart_tx_u1|Add1~9\ = CARRY((\uart_tx_u1|cnt_baud\(4) & !\uart_tx_u1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|cnt_baud\(4),
	datad => VCC,
	cin => \uart_tx_u1|Add1~7\,
	combout => \uart_tx_u1|Add1~8_combout\,
	cout => \uart_tx_u1|Add1~9\);

-- Location: LCCOMB_X62_Y28_N0
\uart_tx_u1|cnt_baud~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|cnt_baud~4_combout\ = (\uart_tx_u1|Add1~8_combout\ & ((\uart_tx_u1|Equal2~1_combout\) # ((\uart_tx_u1|Equal2~0_combout\) # (!\uart_tx_u1|cnt_baud\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Equal2~1_combout\,
	datab => \uart_tx_u1|Equal2~0_combout\,
	datac => \uart_tx_u1|Add1~8_combout\,
	datad => \uart_tx_u1|cnt_baud\(0),
	combout => \uart_tx_u1|cnt_baud~4_combout\);

-- Location: FF_X62_Y28_N1
\uart_tx_u1|cnt_baud[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|cnt_baud~4_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|cnt_baud\(4));

-- Location: LCCOMB_X62_Y28_N16
\uart_tx_u1|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add1~10_combout\ = (\uart_tx_u1|cnt_baud\(5) & (!\uart_tx_u1|Add1~9\)) # (!\uart_tx_u1|cnt_baud\(5) & ((\uart_tx_u1|Add1~9\) # (GND)))
-- \uart_tx_u1|Add1~11\ = CARRY((!\uart_tx_u1|Add1~9\) # (!\uart_tx_u1|cnt_baud\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|cnt_baud\(5),
	datad => VCC,
	cin => \uart_tx_u1|Add1~9\,
	combout => \uart_tx_u1|Add1~10_combout\,
	cout => \uart_tx_u1|Add1~11\);

-- Location: LCCOMB_X62_Y28_N28
\uart_tx_u1|cnt_baud~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|cnt_baud~2_combout\ = (\uart_tx_u1|Add1~10_combout\ & (((\uart_tx_u1|Equal2~0_combout\) # (\uart_tx_u1|Equal2~1_combout\)) # (!\uart_tx_u1|cnt_baud\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|cnt_baud\(0),
	datab => \uart_tx_u1|Equal2~0_combout\,
	datac => \uart_tx_u1|Equal2~1_combout\,
	datad => \uart_tx_u1|Add1~10_combout\,
	combout => \uart_tx_u1|cnt_baud~2_combout\);

-- Location: FF_X62_Y28_N29
\uart_tx_u1|cnt_baud[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|cnt_baud~2_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|cnt_baud\(5));

-- Location: LCCOMB_X62_Y28_N18
\uart_tx_u1|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add1~12_combout\ = (\uart_tx_u1|cnt_baud\(6) & (\uart_tx_u1|Add1~11\ $ (GND))) # (!\uart_tx_u1|cnt_baud\(6) & (!\uart_tx_u1|Add1~11\ & VCC))
-- \uart_tx_u1|Add1~13\ = CARRY((\uart_tx_u1|cnt_baud\(6) & !\uart_tx_u1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|cnt_baud\(6),
	datad => VCC,
	cin => \uart_tx_u1|Add1~11\,
	combout => \uart_tx_u1|Add1~12_combout\,
	cout => \uart_tx_u1|Add1~13\);

-- Location: FF_X62_Y28_N19
\uart_tx_u1|cnt_baud[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|Add1~12_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|cnt_baud\(6));

-- Location: LCCOMB_X62_Y28_N20
\uart_tx_u1|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add1~14_combout\ = (\uart_tx_u1|cnt_baud\(7) & (!\uart_tx_u1|Add1~13\)) # (!\uart_tx_u1|cnt_baud\(7) & ((\uart_tx_u1|Add1~13\) # (GND)))
-- \uart_tx_u1|Add1~15\ = CARRY((!\uart_tx_u1|Add1~13\) # (!\uart_tx_u1|cnt_baud\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|cnt_baud\(7),
	datad => VCC,
	cin => \uart_tx_u1|Add1~13\,
	combout => \uart_tx_u1|Add1~14_combout\,
	cout => \uart_tx_u1|Add1~15\);

-- Location: LCCOMB_X62_Y28_N26
\uart_tx_u1|cnt_baud~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|cnt_baud~1_combout\ = (\uart_tx_u1|Add1~14_combout\ & (((\uart_tx_u1|Equal2~0_combout\) # (\uart_tx_u1|Equal2~1_combout\)) # (!\uart_tx_u1|cnt_baud\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|cnt_baud\(0),
	datab => \uart_tx_u1|Equal2~0_combout\,
	datac => \uart_tx_u1|Equal2~1_combout\,
	datad => \uart_tx_u1|Add1~14_combout\,
	combout => \uart_tx_u1|cnt_baud~1_combout\);

-- Location: FF_X62_Y28_N27
\uart_tx_u1|cnt_baud[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|cnt_baud~1_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|cnt_baud\(7));

-- Location: LCCOMB_X62_Y28_N22
\uart_tx_u1|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add1~16_combout\ = \uart_tx_u1|Add1~15\ $ (!\uart_tx_u1|cnt_baud\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart_tx_u1|cnt_baud\(8),
	cin => \uart_tx_u1|Add1~15\,
	combout => \uart_tx_u1|Add1~16_combout\);

-- Location: LCCOMB_X62_Y28_N24
\uart_tx_u1|cnt_baud~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|cnt_baud~0_combout\ = (\uart_tx_u1|Add1~16_combout\ & ((\uart_tx_u1|Equal2~1_combout\) # ((\uart_tx_u1|Equal2~0_combout\) # (!\uart_tx_u1|cnt_baud\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Equal2~1_combout\,
	datab => \uart_tx_u1|Equal2~0_combout\,
	datac => \uart_tx_u1|Add1~16_combout\,
	datad => \uart_tx_u1|cnt_baud\(0),
	combout => \uart_tx_u1|cnt_baud~0_combout\);

-- Location: FF_X62_Y28_N25
\uart_tx_u1|cnt_baud[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|cnt_baud~0_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|cnt_baud\(8));

-- Location: LCCOMB_X62_Y28_N4
\uart_tx_u1|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Equal2~0_combout\ = ((\uart_tx_u1|cnt_baud\(6)) # ((!\uart_tx_u1|cnt_baud\(5)) # (!\uart_tx_u1|cnt_baud\(7)))) # (!\uart_tx_u1|cnt_baud\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|cnt_baud\(8),
	datab => \uart_tx_u1|cnt_baud\(6),
	datac => \uart_tx_u1|cnt_baud\(7),
	datad => \uart_tx_u1|cnt_baud\(5),
	combout => \uart_tx_u1|Equal2~0_combout\);

-- Location: LCCOMB_X62_Y28_N8
\uart_tx_u1|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add1~2_combout\ = (\uart_tx_u1|cnt_baud\(1) & (!\uart_tx_u1|Add1~1\)) # (!\uart_tx_u1|cnt_baud\(1) & ((\uart_tx_u1|Add1~1\) # (GND)))
-- \uart_tx_u1|Add1~3\ = CARRY((!\uart_tx_u1|Add1~1\) # (!\uart_tx_u1|cnt_baud\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|cnt_baud\(1),
	datad => VCC,
	cin => \uart_tx_u1|Add1~1\,
	combout => \uart_tx_u1|Add1~2_combout\,
	cout => \uart_tx_u1|Add1~3\);

-- Location: LCCOMB_X62_Y28_N2
\uart_tx_u1|cnt_baud~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|cnt_baud~3_combout\ = (\uart_tx_u1|Add1~2_combout\ & ((\uart_tx_u1|Equal2~1_combout\) # ((\uart_tx_u1|Equal2~0_combout\) # (!\uart_tx_u1|cnt_baud\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Equal2~1_combout\,
	datab => \uart_tx_u1|Equal2~0_combout\,
	datac => \uart_tx_u1|Add1~2_combout\,
	datad => \uart_tx_u1|cnt_baud\(0),
	combout => \uart_tx_u1|cnt_baud~3_combout\);

-- Location: FF_X62_Y28_N3
\uart_tx_u1|cnt_baud[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|cnt_baud~3_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|cnt_baud\(1));

-- Location: FF_X62_Y28_N11
\uart_tx_u1|cnt_baud[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|Add1~4_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|cnt_baud\(2));

-- Location: LCCOMB_X62_Y28_N30
\uart_tx_u1|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Equal2~1_combout\ = (\uart_tx_u1|cnt_baud\(2)) # ((\uart_tx_u1|cnt_baud\(1)) # ((\uart_tx_u1|cnt_baud\(3)) # (!\uart_tx_u1|cnt_baud\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|cnt_baud\(2),
	datab => \uart_tx_u1|cnt_baud\(1),
	datac => \uart_tx_u1|cnt_baud\(4),
	datad => \uart_tx_u1|cnt_baud\(3),
	combout => \uart_tx_u1|Equal2~1_combout\);

-- Location: LCCOMB_X61_Y28_N22
\uart_tx_u1|Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Equal2~2_combout\ = ((\uart_tx_u1|Equal2~1_combout\) # (\uart_tx_u1|Equal2~0_combout\)) # (!\uart_tx_u1|cnt_baud\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|cnt_baud\(0),
	datac => \uart_tx_u1|Equal2~1_combout\,
	datad => \uart_tx_u1|Equal2~0_combout\,
	combout => \uart_tx_u1|Equal2~2_combout\);

-- Location: IOIBUF_X0_Y21_N8
\tx_en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_en,
	o => \tx_en~input_o\);

-- Location: LCCOMB_X61_Y28_N30
\uart_tx_u1|stage_tx.IDLE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|stage_tx.IDLE~0_combout\ = (\uart_tx_u1|stage_tx.IDLE~q\) # ((!\uart_tx_u1|Equal2~2_combout\ & \tx_en~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Equal2~2_combout\,
	datab => \tx_en~input_o\,
	datac => \uart_tx_u1|stage_tx.IDLE~q\,
	combout => \uart_tx_u1|stage_tx.IDLE~0_combout\);

-- Location: FF_X61_Y28_N31
\uart_tx_u1|stage_tx.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|stage_tx.IDLE~0_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|stage_tx.IDLE~q\);

-- Location: LCCOMB_X57_Y28_N30
\uart_tx_u1|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector0~0_combout\ = (\uart_tx_u1|Equal2~2_combout\ & (\uart_tx_u1|stage_tx.START~q\)) # (!\uart_tx_u1|Equal2~2_combout\ & ((!\uart_tx_u1|stage_tx.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|stage_tx.START~q\,
	datab => \uart_tx_u1|stage_tx.IDLE~q\,
	datad => \uart_tx_u1|Equal2~2_combout\,
	combout => \uart_tx_u1|Selector0~0_combout\);

-- Location: LCCOMB_X57_Y28_N4
\uart_tx_u1|cnt_rom[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|cnt_rom[3]~2_combout\ = (\uart_tx_u1|stage_tx.SEND_DATA~q\ & \uart_tx_u1|always0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|stage_tx.SEND_DATA~q\,
	datad => \uart_tx_u1|always0~0_combout\,
	combout => \uart_tx_u1|cnt_rom[3]~2_combout\);

-- Location: LCCOMB_X52_Y28_N24
\uart_tx_u1|addr[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr[0]~10_combout\ = !\uart_tx_u1|addr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_tx_u1|addr\(0),
	combout => \uart_tx_u1|addr[0]~10_combout\);

-- Location: LCCOMB_X57_Y28_N20
\uart_tx_u1|addr[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr[0]~8_combout\ = (\tx_en~input_o\ & (\uart_tx_u1|stage_tx.STOP~q\ & !\mode_LED_u1|always1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_en~input_o\,
	datac => \uart_tx_u1|stage_tx.STOP~q\,
	datad => \mode_LED_u1|always1~0_combout\,
	combout => \uart_tx_u1|addr[0]~8_combout\);

-- Location: LCCOMB_X65_Y26_N12
\uart_rx_u1|cnt_baud[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|cnt_baud[0]~9_combout\ = \uart_rx_u1|cnt_baud\(0) $ (VCC)
-- \uart_rx_u1|cnt_baud[0]~10\ = CARRY(\uart_rx_u1|cnt_baud\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|cnt_baud\(0),
	datad => VCC,
	combout => \uart_rx_u1|cnt_baud[0]~9_combout\,
	cout => \uart_rx_u1|cnt_baud[0]~10\);

-- Location: LCCOMB_X66_Y29_N20
\uart_rx_u1|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|Equal1~0_combout\ = (\uart_rx_u1|cnt_baud\(4) & (\uart_rx_u1|cnt_baud\(7) & (!\uart_rx_u1|cnt_baud\(2) & !\uart_rx_u1|cnt_baud\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|cnt_baud\(4),
	datab => \uart_rx_u1|cnt_baud\(7),
	datac => \uart_rx_u1|cnt_baud\(2),
	datad => \uart_rx_u1|cnt_baud\(1),
	combout => \uart_rx_u1|Equal1~0_combout\);

-- Location: LCCOMB_X64_Y28_N8
\uart_rx_u1|stage_rx~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|stage_rx~8_combout\ = (\uart_rx_u1|Equal2~1_combout\ & (((\uart_rx_u1|stage_rx.STOP~q\)))) # (!\uart_rx_u1|Equal2~1_combout\ & (\uart_rx_u1|Equal0~0_combout\ & (\uart_rx_u1|stage_rx.RECEIVE_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|Equal0~0_combout\,
	datab => \uart_rx_u1|stage_rx.RECEIVE_DATA~q\,
	datac => \uart_rx_u1|stage_rx.STOP~q\,
	datad => \uart_rx_u1|Equal2~1_combout\,
	combout => \uart_rx_u1|stage_rx~8_combout\);

-- Location: FF_X64_Y28_N9
\uart_rx_u1|stage_rx.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u1|stage_rx~8_combout\,
	clrn => \RST_n~input_o\,
	sclr => \uart_rx_u1|ALT_INV_R_receiving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|stage_rx.STOP~q\);

-- Location: LCCOMB_X66_Y28_N12
\uart_rx_u1|rx_done~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|rx_done~0_combout\ = (\uart_rx_u1|R_receiving~q\ & ((\uart_rx_u1|Equal2~1_combout\ & ((\uart_rx_u1|rx_done~q\))) # (!\uart_rx_u1|Equal2~1_combout\ & (\uart_rx_u1|stage_rx.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|R_receiving~q\,
	datab => \uart_rx_u1|stage_rx.STOP~q\,
	datac => \uart_rx_u1|rx_done~q\,
	datad => \uart_rx_u1|Equal2~1_combout\,
	combout => \uart_rx_u1|rx_done~0_combout\);

-- Location: FF_X66_Y28_N13
\uart_rx_u1|rx_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u1|rx_done~0_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|rx_done~q\);

-- Location: IOIBUF_X61_Y43_N15
\rx~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx,
	o => \rx~input_o\);

-- Location: LCCOMB_X66_Y28_N28
\uart_rx_u1|rx_reg0~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|rx_reg0~feeder_combout\ = \rx~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx~input_o\,
	combout => \uart_rx_u1|rx_reg0~feeder_combout\);

-- Location: FF_X66_Y28_N29
\uart_rx_u1|rx_reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u1|rx_reg0~feeder_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|rx_reg0~q\);

-- Location: LCCOMB_X66_Y28_N26
\uart_rx_u1|rx_reg1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|rx_reg1~feeder_combout\ = \uart_rx_u1|rx_reg0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_u1|rx_reg0~q\,
	combout => \uart_rx_u1|rx_reg1~feeder_combout\);

-- Location: FF_X66_Y28_N27
\uart_rx_u1|rx_reg1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u1|rx_reg1~feeder_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|rx_reg1~q\);

-- Location: LCCOMB_X66_Y28_N18
\uart_rx_u1|rx_reg2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|rx_reg2~feeder_combout\ = \uart_rx_u1|rx_reg1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_u1|rx_reg1~q\,
	combout => \uart_rx_u1|rx_reg2~feeder_combout\);

-- Location: FF_X66_Y28_N19
\uart_rx_u1|rx_reg2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u1|rx_reg2~feeder_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|rx_reg2~q\);

-- Location: LCCOMB_X66_Y28_N0
\uart_rx_u1|rx_reg3~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|rx_reg3~feeder_combout\ = \uart_rx_u1|rx_reg2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_u1|rx_reg2~q\,
	combout => \uart_rx_u1|rx_reg3~feeder_combout\);

-- Location: FF_X66_Y28_N1
\uart_rx_u1|rx_reg3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u1|rx_reg3~feeder_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|rx_reg3~q\);

-- Location: LCCOMB_X66_Y28_N6
\uart_rx_u1|R_receiving~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|R_receiving~0_combout\ = (!\uart_rx_u1|rx_done~q\ & ((\uart_rx_u1|R_receiving~q\) # ((!\uart_rx_u1|rx_reg2~q\ & \uart_rx_u1|rx_reg3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|rx_done~q\,
	datab => \uart_rx_u1|rx_reg2~q\,
	datac => \uart_rx_u1|R_receiving~q\,
	datad => \uart_rx_u1|rx_reg3~q\,
	combout => \uart_rx_u1|R_receiving~0_combout\);

-- Location: FF_X66_Y28_N7
\uart_rx_u1|R_receiving\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u1|R_receiving~0_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|R_receiving~q\);

-- Location: FF_X66_Y28_N17
\uart_rx_u1|bps_rx_clk_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \uart_rx_u1|R_receiving~q\,
	clrn => \RST_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|bps_rx_clk_en~q\);

-- Location: LCCOMB_X66_Y28_N2
\uart_rx_u1|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|Equal1~1_combout\ = ((\uart_rx_u1|cnt_baud\(6)) # ((\uart_rx_u1|cnt_baud\(3)) # (!\uart_rx_u1|cnt_baud\(0)))) # (!\uart_rx_u1|cnt_baud\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|cnt_baud\(5),
	datab => \uart_rx_u1|cnt_baud\(6),
	datac => \uart_rx_u1|cnt_baud\(0),
	datad => \uart_rx_u1|cnt_baud\(3),
	combout => \uart_rx_u1|Equal1~1_combout\);

-- Location: LCCOMB_X66_Y28_N16
\uart_rx_u1|cnt_baud[0]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|cnt_baud[0]~19_combout\ = ((\uart_rx_u1|Equal1~0_combout\ & (\uart_rx_u1|cnt_baud\(8) & !\uart_rx_u1|Equal1~1_combout\))) # (!\uart_rx_u1|bps_rx_clk_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|Equal1~0_combout\,
	datab => \uart_rx_u1|cnt_baud\(8),
	datac => \uart_rx_u1|bps_rx_clk_en~q\,
	datad => \uart_rx_u1|Equal1~1_combout\,
	combout => \uart_rx_u1|cnt_baud[0]~19_combout\);

-- Location: FF_X65_Y26_N13
\uart_rx_u1|cnt_baud[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u1|cnt_baud[0]~9_combout\,
	clrn => \RST_n~input_o\,
	sclr => \uart_rx_u1|cnt_baud[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|cnt_baud\(0));

-- Location: LCCOMB_X65_Y26_N14
\uart_rx_u1|cnt_baud[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|cnt_baud[1]~11_combout\ = (\uart_rx_u1|cnt_baud\(1) & (!\uart_rx_u1|cnt_baud[0]~10\)) # (!\uart_rx_u1|cnt_baud\(1) & ((\uart_rx_u1|cnt_baud[0]~10\) # (GND)))
-- \uart_rx_u1|cnt_baud[1]~12\ = CARRY((!\uart_rx_u1|cnt_baud[0]~10\) # (!\uart_rx_u1|cnt_baud\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_u1|cnt_baud\(1),
	datad => VCC,
	cin => \uart_rx_u1|cnt_baud[0]~10\,
	combout => \uart_rx_u1|cnt_baud[1]~11_combout\,
	cout => \uart_rx_u1|cnt_baud[1]~12\);

-- Location: FF_X65_Y26_N15
\uart_rx_u1|cnt_baud[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u1|cnt_baud[1]~11_combout\,
	clrn => \RST_n~input_o\,
	sclr => \uart_rx_u1|cnt_baud[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|cnt_baud\(1));

-- Location: LCCOMB_X65_Y26_N16
\uart_rx_u1|cnt_baud[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|cnt_baud[2]~13_combout\ = (\uart_rx_u1|cnt_baud\(2) & (\uart_rx_u1|cnt_baud[1]~12\ $ (GND))) # (!\uart_rx_u1|cnt_baud\(2) & (!\uart_rx_u1|cnt_baud[1]~12\ & VCC))
-- \uart_rx_u1|cnt_baud[2]~14\ = CARRY((\uart_rx_u1|cnt_baud\(2) & !\uart_rx_u1|cnt_baud[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_u1|cnt_baud\(2),
	datad => VCC,
	cin => \uart_rx_u1|cnt_baud[1]~12\,
	combout => \uart_rx_u1|cnt_baud[2]~13_combout\,
	cout => \uart_rx_u1|cnt_baud[2]~14\);

-- Location: FF_X65_Y26_N17
\uart_rx_u1|cnt_baud[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u1|cnt_baud[2]~13_combout\,
	clrn => \RST_n~input_o\,
	sclr => \uart_rx_u1|cnt_baud[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|cnt_baud\(2));

-- Location: LCCOMB_X65_Y26_N18
\uart_rx_u1|cnt_baud[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|cnt_baud[3]~15_combout\ = (\uart_rx_u1|cnt_baud\(3) & (!\uart_rx_u1|cnt_baud[2]~14\)) # (!\uart_rx_u1|cnt_baud\(3) & ((\uart_rx_u1|cnt_baud[2]~14\) # (GND)))
-- \uart_rx_u1|cnt_baud[3]~16\ = CARRY((!\uart_rx_u1|cnt_baud[2]~14\) # (!\uart_rx_u1|cnt_baud\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_u1|cnt_baud\(3),
	datad => VCC,
	cin => \uart_rx_u1|cnt_baud[2]~14\,
	combout => \uart_rx_u1|cnt_baud[3]~15_combout\,
	cout => \uart_rx_u1|cnt_baud[3]~16\);

-- Location: FF_X65_Y26_N19
\uart_rx_u1|cnt_baud[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u1|cnt_baud[3]~15_combout\,
	clrn => \RST_n~input_o\,
	sclr => \uart_rx_u1|cnt_baud[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|cnt_baud\(3));

-- Location: LCCOMB_X65_Y26_N20
\uart_rx_u1|cnt_baud[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|cnt_baud[4]~17_combout\ = (\uart_rx_u1|cnt_baud\(4) & (\uart_rx_u1|cnt_baud[3]~16\ $ (GND))) # (!\uart_rx_u1|cnt_baud\(4) & (!\uart_rx_u1|cnt_baud[3]~16\ & VCC))
-- \uart_rx_u1|cnt_baud[4]~18\ = CARRY((\uart_rx_u1|cnt_baud\(4) & !\uart_rx_u1|cnt_baud[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_u1|cnt_baud\(4),
	datad => VCC,
	cin => \uart_rx_u1|cnt_baud[3]~16\,
	combout => \uart_rx_u1|cnt_baud[4]~17_combout\,
	cout => \uart_rx_u1|cnt_baud[4]~18\);

-- Location: FF_X65_Y26_N21
\uart_rx_u1|cnt_baud[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u1|cnt_baud[4]~17_combout\,
	clrn => \RST_n~input_o\,
	sclr => \uart_rx_u1|cnt_baud[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|cnt_baud\(4));

-- Location: LCCOMB_X65_Y26_N22
\uart_rx_u1|cnt_baud[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|cnt_baud[5]~20_combout\ = (\uart_rx_u1|cnt_baud\(5) & (!\uart_rx_u1|cnt_baud[4]~18\)) # (!\uart_rx_u1|cnt_baud\(5) & ((\uart_rx_u1|cnt_baud[4]~18\) # (GND)))
-- \uart_rx_u1|cnt_baud[5]~21\ = CARRY((!\uart_rx_u1|cnt_baud[4]~18\) # (!\uart_rx_u1|cnt_baud\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|cnt_baud\(5),
	datad => VCC,
	cin => \uart_rx_u1|cnt_baud[4]~18\,
	combout => \uart_rx_u1|cnt_baud[5]~20_combout\,
	cout => \uart_rx_u1|cnt_baud[5]~21\);

-- Location: FF_X65_Y26_N23
\uart_rx_u1|cnt_baud[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u1|cnt_baud[5]~20_combout\,
	clrn => \RST_n~input_o\,
	sclr => \uart_rx_u1|cnt_baud[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|cnt_baud\(5));

-- Location: LCCOMB_X65_Y26_N24
\uart_rx_u1|cnt_baud[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|cnt_baud[6]~22_combout\ = (\uart_rx_u1|cnt_baud\(6) & (\uart_rx_u1|cnt_baud[5]~21\ $ (GND))) # (!\uart_rx_u1|cnt_baud\(6) & (!\uart_rx_u1|cnt_baud[5]~21\ & VCC))
-- \uart_rx_u1|cnt_baud[6]~23\ = CARRY((\uart_rx_u1|cnt_baud\(6) & !\uart_rx_u1|cnt_baud[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_u1|cnt_baud\(6),
	datad => VCC,
	cin => \uart_rx_u1|cnt_baud[5]~21\,
	combout => \uart_rx_u1|cnt_baud[6]~22_combout\,
	cout => \uart_rx_u1|cnt_baud[6]~23\);

-- Location: FF_X65_Y26_N25
\uart_rx_u1|cnt_baud[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u1|cnt_baud[6]~22_combout\,
	clrn => \RST_n~input_o\,
	sclr => \uart_rx_u1|cnt_baud[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|cnt_baud\(6));

-- Location: LCCOMB_X65_Y26_N26
\uart_rx_u1|cnt_baud[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|cnt_baud[7]~24_combout\ = (\uart_rx_u1|cnt_baud\(7) & (!\uart_rx_u1|cnt_baud[6]~23\)) # (!\uart_rx_u1|cnt_baud\(7) & ((\uart_rx_u1|cnt_baud[6]~23\) # (GND)))
-- \uart_rx_u1|cnt_baud[7]~25\ = CARRY((!\uart_rx_u1|cnt_baud[6]~23\) # (!\uart_rx_u1|cnt_baud\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|cnt_baud\(7),
	datad => VCC,
	cin => \uart_rx_u1|cnt_baud[6]~23\,
	combout => \uart_rx_u1|cnt_baud[7]~24_combout\,
	cout => \uart_rx_u1|cnt_baud[7]~25\);

-- Location: FF_X65_Y26_N27
\uart_rx_u1|cnt_baud[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u1|cnt_baud[7]~24_combout\,
	clrn => \RST_n~input_o\,
	sclr => \uart_rx_u1|cnt_baud[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|cnt_baud\(7));

-- Location: LCCOMB_X65_Y26_N28
\uart_rx_u1|cnt_baud[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|cnt_baud[8]~26_combout\ = \uart_rx_u1|cnt_baud[7]~25\ $ (!\uart_rx_u1|cnt_baud\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_u1|cnt_baud\(8),
	cin => \uart_rx_u1|cnt_baud[7]~25\,
	combout => \uart_rx_u1|cnt_baud[8]~26_combout\);

-- Location: FF_X65_Y26_N29
\uart_rx_u1|cnt_baud[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u1|cnt_baud[8]~26_combout\,
	clrn => \RST_n~input_o\,
	sclr => \uart_rx_u1|cnt_baud[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|cnt_baud\(8));

-- Location: LCCOMB_X66_Y28_N20
\uart_rx_u1|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|Equal2~0_combout\ = (\uart_rx_u1|cnt_baud\(5)) # (((\uart_rx_u1|cnt_baud\(0)) # (!\uart_rx_u1|cnt_baud\(3))) # (!\uart_rx_u1|cnt_baud\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|cnt_baud\(5),
	datab => \uart_rx_u1|cnt_baud\(6),
	datac => \uart_rx_u1|cnt_baud\(0),
	datad => \uart_rx_u1|cnt_baud\(3),
	combout => \uart_rx_u1|Equal2~0_combout\);

-- Location: LCCOMB_X66_Y28_N24
\uart_rx_u1|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|Equal2~1_combout\ = (\uart_rx_u1|cnt_baud\(8)) # ((\uart_rx_u1|Equal2~0_combout\) # (!\uart_rx_u1|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_u1|cnt_baud\(8),
	datac => \uart_rx_u1|Equal1~0_combout\,
	datad => \uart_rx_u1|Equal2~0_combout\,
	combout => \uart_rx_u1|Equal2~1_combout\);

-- Location: LCCOMB_X64_Y28_N14
\uart_rx_u1|cnt_bit[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|cnt_bit[0]~0_combout\ = \uart_rx_u1|cnt_bit\(0) $ (((\uart_rx_u1|stage_rx.RECEIVE_DATA~q\ & !\uart_rx_u1|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_u1|stage_rx.RECEIVE_DATA~q\,
	datac => \uart_rx_u1|cnt_bit\(0),
	datad => \uart_rx_u1|Equal2~1_combout\,
	combout => \uart_rx_u1|cnt_bit[0]~0_combout\);

-- Location: FF_X64_Y28_N15
\uart_rx_u1|cnt_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u1|cnt_bit[0]~0_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|cnt_bit\(0));

-- Location: LCCOMB_X64_Y28_N0
\uart_rx_u1|cnt_bit[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|cnt_bit[2]~1_combout\ = (\uart_rx_u1|cnt_bit\(1) & (\uart_rx_u1|stage_rx.RECEIVE_DATA~q\ & (\uart_rx_u1|cnt_bit\(0) & !\uart_rx_u1|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|cnt_bit\(1),
	datab => \uart_rx_u1|stage_rx.RECEIVE_DATA~q\,
	datac => \uart_rx_u1|cnt_bit\(0),
	datad => \uart_rx_u1|Equal2~1_combout\,
	combout => \uart_rx_u1|cnt_bit[2]~1_combout\);

-- Location: LCCOMB_X64_Y28_N24
\uart_rx_u1|cnt_bit[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|cnt_bit[2]~2_combout\ = \uart_rx_u1|cnt_bit\(2) $ (\uart_rx_u1|cnt_bit[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_u1|cnt_bit\(2),
	datad => \uart_rx_u1|cnt_bit[2]~1_combout\,
	combout => \uart_rx_u1|cnt_bit[2]~2_combout\);

-- Location: FF_X64_Y28_N25
\uart_rx_u1|cnt_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u1|cnt_bit[2]~2_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|cnt_bit\(2));

-- Location: LCCOMB_X64_Y28_N4
\uart_rx_u1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|Equal0~0_combout\ = (\uart_rx_u1|cnt_bit\(1) & (\uart_rx_u1|cnt_bit\(2) & \uart_rx_u1|cnt_bit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|cnt_bit\(1),
	datab => \uart_rx_u1|cnt_bit\(2),
	datac => \uart_rx_u1|cnt_bit\(0),
	combout => \uart_rx_u1|Equal0~0_combout\);

-- Location: LCCOMB_X64_Y28_N2
\uart_rx_u1|stage_rx~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|stage_rx~10_combout\ = (\uart_rx_u1|R_receiving~q\ & ((\uart_rx_u1|Equal2~1_combout\ & ((\uart_rx_u1|stage_rx.START~q\))) # (!\uart_rx_u1|Equal2~1_combout\ & (!\uart_rx_u1|stage_rx.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|R_receiving~q\,
	datab => \uart_rx_u1|stage_rx.STOP~q\,
	datac => \uart_rx_u1|stage_rx.START~q\,
	datad => \uart_rx_u1|Equal2~1_combout\,
	combout => \uart_rx_u1|stage_rx~10_combout\);

-- Location: FF_X64_Y28_N3
\uart_rx_u1|stage_rx.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u1|stage_rx~10_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|stage_rx.START~q\);

-- Location: LCCOMB_X64_Y28_N28
\uart_rx_u1|stage_rx~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|stage_rx~9_combout\ = (\uart_rx_u1|Equal2~1_combout\ & (((\uart_rx_u1|stage_rx.RECEIVE_DATA~q\)))) # (!\uart_rx_u1|Equal2~1_combout\ & (((!\uart_rx_u1|Equal0~0_combout\ & \uart_rx_u1|stage_rx.RECEIVE_DATA~q\)) # 
-- (!\uart_rx_u1|stage_rx.START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|Equal0~0_combout\,
	datab => \uart_rx_u1|stage_rx.START~q\,
	datac => \uart_rx_u1|stage_rx.RECEIVE_DATA~q\,
	datad => \uart_rx_u1|Equal2~1_combout\,
	combout => \uart_rx_u1|stage_rx~9_combout\);

-- Location: FF_X64_Y28_N29
\uart_rx_u1|stage_rx.RECEIVE_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u1|stage_rx~9_combout\,
	clrn => \RST_n~input_o\,
	sclr => \uart_rx_u1|ALT_INV_R_receiving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|stage_rx.RECEIVE_DATA~q\);

-- Location: LCCOMB_X64_Y28_N26
\uart_rx_u1|cnt_bit[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|cnt_bit[1]~3_combout\ = \uart_rx_u1|cnt_bit\(1) $ (((\uart_rx_u1|stage_rx.RECEIVE_DATA~q\ & (\uart_rx_u1|cnt_bit\(0) & !\uart_rx_u1|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|stage_rx.RECEIVE_DATA~q\,
	datab => \uart_rx_u1|cnt_bit\(0),
	datac => \uart_rx_u1|cnt_bit\(1),
	datad => \uart_rx_u1|Equal2~1_combout\,
	combout => \uart_rx_u1|cnt_bit[1]~3_combout\);

-- Location: FF_X64_Y28_N27
\uart_rx_u1|cnt_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u1|cnt_bit[1]~3_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|cnt_bit\(1));

-- Location: LCCOMB_X63_Y28_N16
\uart_rx_u1|Selector5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|Selector5~1_combout\ = (\uart_rx_u1|stage_rx.RECEIVE_DATA~q\ & (((\uart_rx_u1|cnt_bit\(2)) # (\uart_rx_u1|cnt_bit\(0))) # (!\uart_rx_u1|cnt_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|cnt_bit\(1),
	datab => \uart_rx_u1|cnt_bit\(2),
	datac => \uart_rx_u1|cnt_bit\(0),
	datad => \uart_rx_u1|stage_rx.RECEIVE_DATA~q\,
	combout => \uart_rx_u1|Selector5~1_combout\);

-- Location: LCCOMB_X65_Y28_N20
\uart_rx_u1|Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|Selector0~2_combout\ = (\rx~input_o\ & \uart_rx_u1|stage_rx.RECEIVE_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx~input_o\,
	datad => \uart_rx_u1|stage_rx.RECEIVE_DATA~q\,
	combout => \uart_rx_u1|Selector0~2_combout\);

-- Location: LCCOMB_X64_Y28_N20
\uart_rx_u1|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|Selector5~0_combout\ = (\uart_rx_u1|Selector0~2_combout\ & (!\uart_rx_u1|cnt_bit\(2) & (!\uart_rx_u1|cnt_bit\(0) & \uart_rx_u1|cnt_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|Selector0~2_combout\,
	datab => \uart_rx_u1|cnt_bit\(2),
	datac => \uart_rx_u1|cnt_bit\(0),
	datad => \uart_rx_u1|cnt_bit\(1),
	combout => \uart_rx_u1|Selector5~0_combout\);

-- Location: LCCOMB_X64_Y28_N16
\uart_rx_u1|Selector5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|Selector5~2_combout\ = (\uart_rx_u1|Selector5~0_combout\) # ((\uart_rx_u1|rx_data\(2) & ((\uart_rx_u1|Selector5~1_combout\) # (\uart_rx_u1|stage_rx.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|Selector5~1_combout\,
	datab => \uart_rx_u1|stage_rx.STOP~q\,
	datac => \uart_rx_u1|rx_data\(2),
	datad => \uart_rx_u1|Selector5~0_combout\,
	combout => \uart_rx_u1|Selector5~2_combout\);

-- Location: LCCOMB_X65_Y28_N6
\uart_rx_u1|rx_data[5]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|rx_data[5]~0_combout\ = ((!\uart_rx_u1|cnt_baud\(8) & (\uart_rx_u1|Equal1~0_combout\ & !\uart_rx_u1|Equal2~0_combout\))) # (!\uart_rx_u1|R_receiving~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|cnt_baud\(8),
	datab => \uart_rx_u1|Equal1~0_combout\,
	datac => \uart_rx_u1|Equal2~0_combout\,
	datad => \uart_rx_u1|R_receiving~q\,
	combout => \uart_rx_u1|rx_data[5]~0_combout\);

-- Location: FF_X64_Y28_N17
\uart_rx_u1|rx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u1|Selector5~2_combout\,
	clrn => \RST_n~input_o\,
	sclr => \uart_rx_u1|ALT_INV_R_receiving~q\,
	ena => \uart_rx_u1|rx_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|rx_data\(2));

-- Location: LCCOMB_X66_Y28_N30
\uart_rx_u1|rxd[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|rxd[7]~0_combout\ = (\uart_rx_u1|R_receiving~q\ & (\uart_rx_u1|stage_rx.STOP~q\ & !\uart_rx_u1|Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|R_receiving~q\,
	datac => \uart_rx_u1|stage_rx.STOP~q\,
	datad => \uart_rx_u1|Equal2~1_combout\,
	combout => \uart_rx_u1|rxd[7]~0_combout\);

-- Location: FF_X65_Y27_N27
\uart_rx_u1|rxd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \uart_rx_u1|rx_data\(2),
	clrn => \RST_n~input_o\,
	sload => VCC,
	ena => \uart_rx_u1|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|rxd\(2));

-- Location: LCCOMB_X64_Y28_N12
\uart_rx_u1|Selector7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|Selector7~1_combout\ = (\uart_rx_u1|stage_rx.RECEIVE_DATA~q\ & ((\uart_rx_u1|cnt_bit\(1)) # ((\uart_rx_u1|cnt_bit\(2)) # (\uart_rx_u1|cnt_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|cnt_bit\(1),
	datab => \uart_rx_u1|cnt_bit\(2),
	datac => \uart_rx_u1|cnt_bit\(0),
	datad => \uart_rx_u1|stage_rx.RECEIVE_DATA~q\,
	combout => \uart_rx_u1|Selector7~1_combout\);

-- Location: LCCOMB_X64_Y28_N6
\uart_rx_u1|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|Selector7~0_combout\ = (\uart_rx_u1|Selector0~2_combout\ & (!\uart_rx_u1|cnt_bit\(2) & (!\uart_rx_u1|cnt_bit\(0) & !\uart_rx_u1|cnt_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|Selector0~2_combout\,
	datab => \uart_rx_u1|cnt_bit\(2),
	datac => \uart_rx_u1|cnt_bit\(0),
	datad => \uart_rx_u1|cnt_bit\(1),
	combout => \uart_rx_u1|Selector7~0_combout\);

-- Location: LCCOMB_X64_Y28_N30
\uart_rx_u1|Selector7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|Selector7~2_combout\ = (\uart_rx_u1|Selector7~0_combout\) # ((\uart_rx_u1|rx_data\(0) & ((\uart_rx_u1|Selector7~1_combout\) # (\uart_rx_u1|stage_rx.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|Selector7~1_combout\,
	datab => \uart_rx_u1|stage_rx.STOP~q\,
	datac => \uart_rx_u1|rx_data\(0),
	datad => \uart_rx_u1|Selector7~0_combout\,
	combout => \uart_rx_u1|Selector7~2_combout\);

-- Location: FF_X64_Y28_N31
\uart_rx_u1|rx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u1|Selector7~2_combout\,
	clrn => \RST_n~input_o\,
	sclr => \uart_rx_u1|ALT_INV_R_receiving~q\,
	ena => \uart_rx_u1|rx_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|rx_data\(0));

-- Location: FF_X65_Y27_N13
\uart_rx_u1|rxd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \uart_rx_u1|rx_data\(0),
	clrn => \RST_n~input_o\,
	sload => VCC,
	ena => \uart_rx_u1|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|rxd\(0));

-- Location: LCCOMB_X65_Y28_N2
\uart_rx_u1|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|Selector2~0_combout\ = (\uart_rx_u1|cnt_bit\(0) & (\rx~input_o\ & (!\uart_rx_u1|cnt_bit\(1) & \uart_rx_u1|stage_rx.RECEIVE_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|cnt_bit\(0),
	datab => \rx~input_o\,
	datac => \uart_rx_u1|cnt_bit\(1),
	datad => \uart_rx_u1|stage_rx.RECEIVE_DATA~q\,
	combout => \uart_rx_u1|Selector2~0_combout\);

-- Location: LCCOMB_X65_Y28_N24
\uart_rx_u1|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|Selector2~1_combout\ = (!\uart_rx_u1|cnt_bit\(1) & \uart_rx_u1|cnt_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_u1|cnt_bit\(1),
	datad => \uart_rx_u1|cnt_bit\(0),
	combout => \uart_rx_u1|Selector2~1_combout\);

-- Location: LCCOMB_X65_Y28_N18
\uart_rx_u1|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|Selector6~0_combout\ = (\uart_rx_u1|stage_rx.STOP~q\) # ((\uart_rx_u1|stage_rx.RECEIVE_DATA~q\ & ((\uart_rx_u1|cnt_bit\(2)) # (!\uart_rx_u1|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|stage_rx.STOP~q\,
	datab => \uart_rx_u1|Selector2~1_combout\,
	datac => \uart_rx_u1|cnt_bit\(2),
	datad => \uart_rx_u1|stage_rx.RECEIVE_DATA~q\,
	combout => \uart_rx_u1|Selector6~0_combout\);

-- Location: LCCOMB_X65_Y28_N26
\uart_rx_u1|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|Selector6~1_combout\ = (\uart_rx_u1|cnt_bit\(2) & (((\uart_rx_u1|rx_data\(1) & \uart_rx_u1|Selector6~0_combout\)))) # (!\uart_rx_u1|cnt_bit\(2) & ((\uart_rx_u1|Selector2~0_combout\) # ((\uart_rx_u1|rx_data\(1) & 
-- \uart_rx_u1|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|cnt_bit\(2),
	datab => \uart_rx_u1|Selector2~0_combout\,
	datac => \uart_rx_u1|rx_data\(1),
	datad => \uart_rx_u1|Selector6~0_combout\,
	combout => \uart_rx_u1|Selector6~1_combout\);

-- Location: FF_X65_Y28_N27
\uart_rx_u1|rx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u1|Selector6~1_combout\,
	clrn => \RST_n~input_o\,
	sclr => \uart_rx_u1|ALT_INV_R_receiving~q\,
	ena => \uart_rx_u1|rx_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|rx_data\(1));

-- Location: FF_X65_Y27_N29
\uart_rx_u1|rxd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \uart_rx_u1|rx_data\(1),
	clrn => \RST_n~input_o\,
	sload => VCC,
	ena => \uart_rx_u1|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|rxd\(1));

-- Location: LCCOMB_X63_Y28_N14
\uart_rx_u1|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|Selector1~1_combout\ = (\uart_rx_u1|stage_rx.RECEIVE_DATA~q\ & (((\uart_rx_u1|cnt_bit\(0)) # (!\uart_rx_u1|cnt_bit\(2))) # (!\uart_rx_u1|cnt_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|cnt_bit\(1),
	datab => \uart_rx_u1|cnt_bit\(2),
	datac => \uart_rx_u1|cnt_bit\(0),
	datad => \uart_rx_u1|stage_rx.RECEIVE_DATA~q\,
	combout => \uart_rx_u1|Selector1~1_combout\);

-- Location: LCCOMB_X64_Y28_N22
\uart_rx_u1|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|Selector1~0_combout\ = (\uart_rx_u1|Selector0~2_combout\ & (\uart_rx_u1|cnt_bit\(2) & (!\uart_rx_u1|cnt_bit\(0) & \uart_rx_u1|cnt_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|Selector0~2_combout\,
	datab => \uart_rx_u1|cnt_bit\(2),
	datac => \uart_rx_u1|cnt_bit\(0),
	datad => \uart_rx_u1|cnt_bit\(1),
	combout => \uart_rx_u1|Selector1~0_combout\);

-- Location: LCCOMB_X64_Y28_N10
\uart_rx_u1|Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|Selector1~2_combout\ = (\uart_rx_u1|Selector1~0_combout\) # ((\uart_rx_u1|rx_data\(6) & ((\uart_rx_u1|Selector1~1_combout\) # (\uart_rx_u1|stage_rx.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|Selector1~1_combout\,
	datab => \uart_rx_u1|stage_rx.STOP~q\,
	datac => \uart_rx_u1|rx_data\(6),
	datad => \uart_rx_u1|Selector1~0_combout\,
	combout => \uart_rx_u1|Selector1~2_combout\);

-- Location: FF_X64_Y28_N11
\uart_rx_u1|rx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u1|Selector1~2_combout\,
	clrn => \RST_n~input_o\,
	sclr => \uart_rx_u1|ALT_INV_R_receiving~q\,
	ena => \uart_rx_u1|rx_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|rx_data\(6));

-- Location: FF_X65_Y27_N7
\uart_rx_u1|rxd[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \uart_rx_u1|rx_data\(6),
	clrn => \RST_n~input_o\,
	sload => VCC,
	ena => \uart_rx_u1|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|rxd\(6));

-- Location: LCCOMB_X65_Y27_N28
\receiver_OK_ser_u1|OK~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver_OK_ser_u1|OK~1_combout\ = (!\uart_rx_u1|rxd\(2) & (!\uart_rx_u1|rxd\(0) & (\uart_rx_u1|rxd\(1) & !\uart_rx_u1|rxd\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|rxd\(2),
	datab => \uart_rx_u1|rxd\(0),
	datac => \uart_rx_u1|rxd\(1),
	datad => \uart_rx_u1|rxd\(6),
	combout => \receiver_OK_ser_u1|OK~1_combout\);

-- Location: LCCOMB_X65_Y28_N22
\uart_rx_u1|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|Selector3~0_combout\ = (\uart_rx_u1|cnt_bit\(2) & (\uart_rx_u1|Selector0~2_combout\ & (!\uart_rx_u1|cnt_bit\(1) & !\uart_rx_u1|cnt_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|cnt_bit\(2),
	datab => \uart_rx_u1|Selector0~2_combout\,
	datac => \uart_rx_u1|cnt_bit\(1),
	datad => \uart_rx_u1|cnt_bit\(0),
	combout => \uart_rx_u1|Selector3~0_combout\);

-- Location: LCCOMB_X65_Y28_N16
\uart_rx_u1|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|Selector3~1_combout\ = (\uart_rx_u1|stage_rx.RECEIVE_DATA~q\ & ((\uart_rx_u1|cnt_bit\(1)) # ((\uart_rx_u1|cnt_bit\(0)) # (!\uart_rx_u1|cnt_bit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|cnt_bit\(1),
	datab => \uart_rx_u1|stage_rx.RECEIVE_DATA~q\,
	datac => \uart_rx_u1|cnt_bit\(2),
	datad => \uart_rx_u1|cnt_bit\(0),
	combout => \uart_rx_u1|Selector3~1_combout\);

-- Location: LCCOMB_X65_Y28_N4
\uart_rx_u1|Selector3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|Selector3~2_combout\ = (\uart_rx_u1|Selector3~0_combout\) # ((\uart_rx_u1|rx_data\(4) & ((\uart_rx_u1|Selector3~1_combout\) # (\uart_rx_u1|stage_rx.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|Selector3~0_combout\,
	datab => \uart_rx_u1|Selector3~1_combout\,
	datac => \uart_rx_u1|rx_data\(4),
	datad => \uart_rx_u1|stage_rx.STOP~q\,
	combout => \uart_rx_u1|Selector3~2_combout\);

-- Location: FF_X65_Y28_N5
\uart_rx_u1|rx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u1|Selector3~2_combout\,
	clrn => \RST_n~input_o\,
	sclr => \uart_rx_u1|ALT_INV_R_receiving~q\,
	ena => \uart_rx_u1|rx_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|rx_data\(4));

-- Location: FF_X65_Y27_N11
\uart_rx_u1|rxd[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \uart_rx_u1|rx_data\(4),
	clrn => \RST_n~input_o\,
	sload => VCC,
	ena => \uart_rx_u1|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|rxd\(4));

-- Location: LCCOMB_X65_Y28_N12
\uart_rx_u1|Selector0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|Selector0~3_combout\ = (\uart_rx_u1|rx_data\(7) & ((\uart_rx_u1|stage_rx.STOP~q\) # ((!\uart_rx_u1|Equal0~0_combout\ & \uart_rx_u1|stage_rx.RECEIVE_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|stage_rx.STOP~q\,
	datab => \uart_rx_u1|Equal0~0_combout\,
	datac => \uart_rx_u1|rx_data\(7),
	datad => \uart_rx_u1|stage_rx.RECEIVE_DATA~q\,
	combout => \uart_rx_u1|Selector0~3_combout\);

-- Location: LCCOMB_X65_Y28_N14
\uart_rx_u1|Selector0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|Selector0~4_combout\ = (\uart_rx_u1|Selector0~3_combout\) # ((\uart_rx_u1|Equal0~0_combout\ & (\rx~input_o\ & \uart_rx_u1|stage_rx.RECEIVE_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|Selector0~3_combout\,
	datab => \uart_rx_u1|Equal0~0_combout\,
	datac => \rx~input_o\,
	datad => \uart_rx_u1|stage_rx.RECEIVE_DATA~q\,
	combout => \uart_rx_u1|Selector0~4_combout\);

-- Location: FF_X65_Y28_N15
\uart_rx_u1|rx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u1|Selector0~4_combout\,
	clrn => \RST_n~input_o\,
	sclr => \uart_rx_u1|ALT_INV_R_receiving~q\,
	ena => \uart_rx_u1|rx_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|rx_data\(7));

-- Location: FF_X65_Y27_N25
\uart_rx_u1|rxd[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \uart_rx_u1|rx_data\(7),
	clrn => \RST_n~input_o\,
	sload => VCC,
	ena => \uart_rx_u1|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|rxd\(7));

-- Location: LCCOMB_X65_Y28_N10
\uart_rx_u1|Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|Selector2~2_combout\ = (\uart_rx_u1|stage_rx.STOP~q\) # ((\uart_rx_u1|stage_rx.RECEIVE_DATA~q\ & ((!\uart_rx_u1|cnt_bit\(2)) # (!\uart_rx_u1|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|stage_rx.STOP~q\,
	datab => \uart_rx_u1|Selector2~1_combout\,
	datac => \uart_rx_u1|cnt_bit\(2),
	datad => \uart_rx_u1|stage_rx.RECEIVE_DATA~q\,
	combout => \uart_rx_u1|Selector2~2_combout\);

-- Location: LCCOMB_X65_Y28_N8
\uart_rx_u1|Selector2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|Selector2~3_combout\ = (\uart_rx_u1|cnt_bit\(2) & ((\uart_rx_u1|Selector2~0_combout\) # ((\uart_rx_u1|rx_data\(5) & \uart_rx_u1|Selector2~2_combout\)))) # (!\uart_rx_u1|cnt_bit\(2) & (((\uart_rx_u1|rx_data\(5) & 
-- \uart_rx_u1|Selector2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|cnt_bit\(2),
	datab => \uart_rx_u1|Selector2~0_combout\,
	datac => \uart_rx_u1|rx_data\(5),
	datad => \uart_rx_u1|Selector2~2_combout\,
	combout => \uart_rx_u1|Selector2~3_combout\);

-- Location: FF_X65_Y28_N9
\uart_rx_u1|rx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u1|Selector2~3_combout\,
	clrn => \RST_n~input_o\,
	sclr => \uart_rx_u1|ALT_INV_R_receiving~q\,
	ena => \uart_rx_u1|rx_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|rx_data\(5));

-- Location: FF_X65_Y27_N19
\uart_rx_u1|rxd[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \uart_rx_u1|rx_data\(5),
	clrn => \RST_n~input_o\,
	sload => VCC,
	ena => \uart_rx_u1|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|rxd\(5));

-- Location: LCCOMB_X64_Y28_N18
\uart_rx_u1|Selector4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|Selector4~2_combout\ = (\uart_rx_u1|cnt_bit\(1) & (!\uart_rx_u1|cnt_bit\(2) & \uart_rx_u1|cnt_bit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|cnt_bit\(1),
	datab => \uart_rx_u1|cnt_bit\(2),
	datac => \uart_rx_u1|cnt_bit\(0),
	combout => \uart_rx_u1|Selector4~2_combout\);

-- Location: LCCOMB_X65_Y28_N0
\uart_rx_u1|Selector4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|Selector4~3_combout\ = (\uart_rx_u1|rx_data\(3) & ((\uart_rx_u1|stage_rx.STOP~q\) # ((!\uart_rx_u1|Selector4~2_combout\ & \uart_rx_u1|stage_rx.RECEIVE_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|stage_rx.STOP~q\,
	datab => \uart_rx_u1|Selector4~2_combout\,
	datac => \uart_rx_u1|rx_data\(3),
	datad => \uart_rx_u1|stage_rx.RECEIVE_DATA~q\,
	combout => \uart_rx_u1|Selector4~3_combout\);

-- Location: LCCOMB_X65_Y28_N30
\uart_rx_u1|Selector4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|Selector4~4_combout\ = (\uart_rx_u1|Selector4~3_combout\) # ((\uart_rx_u1|stage_rx.RECEIVE_DATA~q\ & (\rx~input_o\ & \uart_rx_u1|Selector4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|Selector4~3_combout\,
	datab => \uart_rx_u1|stage_rx.RECEIVE_DATA~q\,
	datac => \rx~input_o\,
	datad => \uart_rx_u1|Selector4~2_combout\,
	combout => \uart_rx_u1|Selector4~4_combout\);

-- Location: FF_X65_Y28_N31
\uart_rx_u1|rx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u1|Selector4~4_combout\,
	clrn => \RST_n~input_o\,
	sclr => \uart_rx_u1|ALT_INV_R_receiving~q\,
	ena => \uart_rx_u1|rx_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|rx_data\(3));

-- Location: FF_X65_Y27_N17
\uart_rx_u1|rxd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \uart_rx_u1|rx_data\(3),
	clrn => \RST_n~input_o\,
	sload => VCC,
	ena => \uart_rx_u1|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|rxd\(3));

-- Location: LCCOMB_X65_Y27_N18
\receiver_OK_ser_u1|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver_OK_ser_u1|Equal2~0_combout\ = (!\uart_rx_u1|rxd\(4) & (!\uart_rx_u1|rxd\(7) & (!\uart_rx_u1|rxd\(5) & \uart_rx_u1|rxd\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|rxd\(4),
	datab => \uart_rx_u1|rxd\(7),
	datac => \uart_rx_u1|rxd\(5),
	datad => \uart_rx_u1|rxd\(3),
	combout => \receiver_OK_ser_u1|Equal2~0_combout\);

-- Location: LCCOMB_X65_Y27_N6
\receiver_OK_ser_u1|state~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver_OK_ser_u1|state~12_combout\ = (\uart_rx_u1|rxd\(1) & (\receiver_OK_ser_u1|Equal2~0_combout\ & (\uart_rx_u1|rxd\(6) & \uart_rx_u1|rxd\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|rxd\(1),
	datab => \receiver_OK_ser_u1|Equal2~0_combout\,
	datac => \uart_rx_u1|rxd\(6),
	datad => \uart_rx_u1|rxd\(0),
	combout => \receiver_OK_ser_u1|state~12_combout\);

-- Location: LCCOMB_X65_Y27_N2
\mode_LED_u1|Equal7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Equal7~0_combout\ = (!\uart_rx_u1|rxd\(1) & (\uart_rx_u1|rxd\(2) & !\uart_rx_u1|rxd\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|rxd\(1),
	datac => \uart_rx_u1|rxd\(2),
	datad => \uart_rx_u1|rxd\(6),
	combout => \mode_LED_u1|Equal7~0_combout\);

-- Location: LCCOMB_X63_Y27_N16
\receiver_OK_ser_u1|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver_OK_ser_u1|Equal2~1_combout\ = (\uart_rx_u1|rxd\(0) & (\mode_LED_u1|Equal7~0_combout\ & \receiver_OK_ser_u1|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_u1|rxd\(0),
	datac => \mode_LED_u1|Equal7~0_combout\,
	datad => \receiver_OK_ser_u1|Equal2~0_combout\,
	combout => \receiver_OK_ser_u1|Equal2~1_combout\);

-- Location: LCCOMB_X63_Y27_N12
\receiver_OK_ser_u1|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver_OK_ser_u1|Selector0~0_combout\ = (\receiver_OK_ser_u1|state~13_combout\) # ((\receiver_OK_ser_u1|state~14_combout\) # ((\receiver_OK_ser_u1|state.010~q\ & \receiver_OK_ser_u1|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_OK_ser_u1|state.010~q\,
	datab => \receiver_OK_ser_u1|state~13_combout\,
	datac => \receiver_OK_ser_u1|state~14_combout\,
	datad => \receiver_OK_ser_u1|Equal2~1_combout\,
	combout => \receiver_OK_ser_u1|Selector0~0_combout\);

-- Location: LCCOMB_X65_Y28_N28
\uart_rx_u1|RECEIVE_END~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u1|RECEIVE_END~0_combout\ = (!\uart_rx_u1|cnt_baud\(8) & (\uart_rx_u1|Equal1~0_combout\ & (!\uart_rx_u1|Equal2~0_combout\ & \uart_rx_u1|stage_rx.STOP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|cnt_baud\(8),
	datab => \uart_rx_u1|Equal1~0_combout\,
	datac => \uart_rx_u1|Equal2~0_combout\,
	datad => \uart_rx_u1|stage_rx.STOP~q\,
	combout => \uart_rx_u1|RECEIVE_END~0_combout\);

-- Location: FF_X65_Y28_N29
\uart_rx_u1|RECEIVE_END\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u1|RECEIVE_END~0_combout\,
	clrn => \RST_n~input_o\,
	sclr => \uart_rx_u1|ALT_INV_R_receiving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u1|RECEIVE_END~q\);

-- Location: FF_X63_Y27_N13
\receiver_OK_ser_u1|state.000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \receiver_OK_ser_u1|Selector0~0_combout\,
	clrn => \RST_n~input_o\,
	ena => \uart_rx_u1|RECEIVE_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_OK_ser_u1|state.000~q\);

-- Location: LCCOMB_X63_Y27_N22
\receiver_OK_ser_u1|state~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver_OK_ser_u1|state~14_combout\ = (!\receiver_OK_ser_u1|state.000~q\ & (\receiver_OK_ser_u1|state~12_combout\ & \uart_rx_u1|rxd\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_OK_ser_u1|state.000~q\,
	datac => \receiver_OK_ser_u1|state~12_combout\,
	datad => \uart_rx_u1|rxd\(2),
	combout => \receiver_OK_ser_u1|state~14_combout\);

-- Location: FF_X63_Y27_N3
\receiver_OK_ser_u1|state.001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \receiver_OK_ser_u1|state~14_combout\,
	clrn => \RST_n~input_o\,
	sload => VCC,
	ena => \uart_rx_u1|RECEIVE_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_OK_ser_u1|state.001~q\);

-- Location: LCCOMB_X63_Y27_N2
\receiver_OK_ser_u1|state~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver_OK_ser_u1|state~13_combout\ = (\receiver_OK_ser_u1|state~12_combout\ & (\receiver_OK_ser_u1|state.001~q\ & !\uart_rx_u1|rxd\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \receiver_OK_ser_u1|state~12_combout\,
	datac => \receiver_OK_ser_u1|state.001~q\,
	datad => \uart_rx_u1|rxd\(2),
	combout => \receiver_OK_ser_u1|state~13_combout\);

-- Location: LCCOMB_X63_Y27_N0
\receiver_OK_ser_u1|state.010~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver_OK_ser_u1|state.010~feeder_combout\ = \receiver_OK_ser_u1|state~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_OK_ser_u1|state~13_combout\,
	combout => \receiver_OK_ser_u1|state.010~feeder_combout\);

-- Location: FF_X63_Y27_N1
\receiver_OK_ser_u1|state.010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \receiver_OK_ser_u1|state.010~feeder_combout\,
	clrn => \RST_n~input_o\,
	ena => \uart_rx_u1|RECEIVE_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_OK_ser_u1|state.010~q\);

-- Location: LCCOMB_X63_Y27_N24
\receiver_OK_ser_u1|state~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver_OK_ser_u1|state~11_combout\ = (\receiver_OK_ser_u1|state.010~q\ & (\uart_rx_u1|rxd\(0) & (\mode_LED_u1|Equal7~0_combout\ & \receiver_OK_ser_u1|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_OK_ser_u1|state.010~q\,
	datab => \uart_rx_u1|rxd\(0),
	datac => \mode_LED_u1|Equal7~0_combout\,
	datad => \receiver_OK_ser_u1|Equal2~0_combout\,
	combout => \receiver_OK_ser_u1|state~11_combout\);

-- Location: FF_X63_Y27_N25
\receiver_OK_ser_u1|state.011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \receiver_OK_ser_u1|state~11_combout\,
	clrn => \RST_n~input_o\,
	ena => \uart_rx_u1|RECEIVE_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_OK_ser_u1|state.011~q\);

-- Location: LCCOMB_X57_Y28_N0
\uart_tx_u1|receive_ok_en~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|receive_ok_en~0_combout\ = (\uart_tx_u1|stage_tx.STOP~q\ & \uart_tx_u1|Equal3~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|stage_tx.STOP~q\,
	datad => \uart_tx_u1|Equal3~3_combout\,
	combout => \uart_tx_u1|receive_ok_en~0_combout\);

-- Location: FF_X57_Y28_N1
\uart_tx_u1|receive_ok_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|receive_ok_en~0_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|receive_ok_en~q\);

-- Location: LCCOMB_X63_Y27_N18
\receiver_OK_ser_u1|OK~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver_OK_ser_u1|OK~2_combout\ = (\uart_rx_u1|RECEIVE_END~q\ & (((\receiver_OK_ser_u1|state.011~q\)))) # (!\uart_rx_u1|RECEIVE_END~q\ & (\receiver_OK_ser_u1|OK~q\ & ((\uart_tx_u1|receive_ok_en~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_OK_ser_u1|OK~q\,
	datab => \receiver_OK_ser_u1|state.011~q\,
	datac => \uart_tx_u1|receive_ok_en~q\,
	datad => \uart_rx_u1|RECEIVE_END~q\,
	combout => \receiver_OK_ser_u1|OK~2_combout\);

-- Location: LCCOMB_X63_Y27_N10
\receiver_OK_ser_u1|OK~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver_OK_ser_u1|OK~3_combout\ = (\receiver_OK_ser_u1|OK~2_combout\ & ((\receiver_OK_ser_u1|OK~q\) # ((\receiver_OK_ser_u1|OK~1_combout\ & \receiver_OK_ser_u1|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_OK_ser_u1|OK~1_combout\,
	datab => \receiver_OK_ser_u1|OK~2_combout\,
	datac => \receiver_OK_ser_u1|OK~q\,
	datad => \receiver_OK_ser_u1|Equal2~0_combout\,
	combout => \receiver_OK_ser_u1|OK~3_combout\);

-- Location: FF_X63_Y27_N11
\receiver_OK_ser_u1|OK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \receiver_OK_ser_u1|OK~3_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_OK_ser_u1|OK~q\);

-- Location: LCCOMB_X56_Y28_N26
\uart_tx_u1|addr[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr[0]~9_combout\ = (\uart_tx_u1|addr[0]~8_combout\ & (!\uart_tx_u1|Equal2~2_combout\ & ((\receiver_OK_ser_u1|OK~q\) # (!\uart_tx_u1|Equal3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr[0]~8_combout\,
	datab => \uart_tx_u1|Equal2~2_combout\,
	datac => \receiver_OK_ser_u1|OK~q\,
	datad => \uart_tx_u1|Equal3~3_combout\,
	combout => \uart_tx_u1|addr[0]~9_combout\);

-- Location: FF_X55_Y28_N9
\uart_tx_u1|addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \uart_tx_u1|addr[0]~10_combout\,
	clrn => \RST_n~input_o\,
	sload => VCC,
	ena => \uart_tx_u1|addr[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|addr\(0));

-- Location: LCCOMB_X55_Y28_N12
\uart_tx_u1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add0~0_combout\ = (\uart_tx_u1|addr\(0) & (\uart_tx_u1|addr\(1) $ (VCC))) # (!\uart_tx_u1|addr\(0) & (\uart_tx_u1|addr\(1) & VCC))
-- \uart_tx_u1|Add0~1\ = CARRY((\uart_tx_u1|addr\(0) & \uart_tx_u1|addr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datab => \uart_tx_u1|addr\(1),
	datad => VCC,
	combout => \uart_tx_u1|Add0~0_combout\,
	cout => \uart_tx_u1|Add0~1\);

-- Location: FF_X55_Y28_N13
\uart_tx_u1|addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|Add0~0_combout\,
	clrn => \RST_n~input_o\,
	ena => \uart_tx_u1|addr[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|addr\(1));

-- Location: LCCOMB_X55_Y28_N14
\uart_tx_u1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add0~2_combout\ = (\uart_tx_u1|addr\(2) & (!\uart_tx_u1|Add0~1\)) # (!\uart_tx_u1|addr\(2) & ((\uart_tx_u1|Add0~1\) # (GND)))
-- \uart_tx_u1|Add0~3\ = CARRY((!\uart_tx_u1|Add0~1\) # (!\uart_tx_u1|addr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|addr\(2),
	datad => VCC,
	cin => \uart_tx_u1|Add0~1\,
	combout => \uart_tx_u1|Add0~2_combout\,
	cout => \uart_tx_u1|Add0~3\);

-- Location: FF_X55_Y28_N15
\uart_tx_u1|addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|Add0~2_combout\,
	clrn => \RST_n~input_o\,
	ena => \uart_tx_u1|addr[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|addr\(2));

-- Location: LCCOMB_X55_Y28_N16
\uart_tx_u1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add0~4_combout\ = (\uart_tx_u1|addr\(3) & (\uart_tx_u1|Add0~3\ $ (GND))) # (!\uart_tx_u1|addr\(3) & (!\uart_tx_u1|Add0~3\ & VCC))
-- \uart_tx_u1|Add0~5\ = CARRY((\uart_tx_u1|addr\(3) & !\uart_tx_u1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|addr\(3),
	datad => VCC,
	cin => \uart_tx_u1|Add0~3\,
	combout => \uart_tx_u1|Add0~4_combout\,
	cout => \uart_tx_u1|Add0~5\);

-- Location: FF_X55_Y28_N17
\uart_tx_u1|addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|Add0~4_combout\,
	clrn => \RST_n~input_o\,
	ena => \uart_tx_u1|addr[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|addr\(3));

-- Location: LCCOMB_X55_Y28_N18
\uart_tx_u1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add0~6_combout\ = (\uart_tx_u1|addr\(4) & (!\uart_tx_u1|Add0~5\)) # (!\uart_tx_u1|addr\(4) & ((\uart_tx_u1|Add0~5\) # (GND)))
-- \uart_tx_u1|Add0~7\ = CARRY((!\uart_tx_u1|Add0~5\) # (!\uart_tx_u1|addr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|addr\(4),
	datad => VCC,
	cin => \uart_tx_u1|Add0~5\,
	combout => \uart_tx_u1|Add0~6_combout\,
	cout => \uart_tx_u1|Add0~7\);

-- Location: FF_X55_Y28_N19
\uart_tx_u1|addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|Add0~6_combout\,
	clrn => \RST_n~input_o\,
	ena => \uart_tx_u1|addr[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|addr\(4));

-- Location: LCCOMB_X55_Y28_N20
\uart_tx_u1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add0~8_combout\ = (\uart_tx_u1|addr[5]~4_combout\ & (\uart_tx_u1|Add0~7\ $ (GND))) # (!\uart_tx_u1|addr[5]~4_combout\ & (!\uart_tx_u1|Add0~7\ & VCC))
-- \uart_tx_u1|Add0~9\ = CARRY((\uart_tx_u1|addr[5]~4_combout\ & !\uart_tx_u1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr[5]~4_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add0~7\,
	combout => \uart_tx_u1|Add0~8_combout\,
	cout => \uart_tx_u1|Add0~9\);

-- Location: LCCOMB_X57_Y28_N16
\uart_tx_u1|ROM.00000000~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|ROM.00000000~0_combout\ = (\RST_n~input_o\ & (\uart_tx_u1|stage_tx.STOP~q\ & \mode_LED_u1|always1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_n~input_o\,
	datac => \uart_tx_u1|stage_tx.STOP~q\,
	datad => \mode_LED_u1|always1~0_combout\,
	combout => \uart_tx_u1|ROM.00000000~0_combout\);

-- Location: LCCOMB_X57_Y28_N2
\uart_tx_u1|ROM.10100000~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|ROM.10100000~0_combout\ = (\uart_tx_u1|ROM.10100000~q\) # ((\uart_tx_u1|ROM.00000000~0_combout\ & (\tx_en~input_o\ & !\uart_tx_u1|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|ROM.10100000~q\,
	datab => \uart_tx_u1|ROM.00000000~0_combout\,
	datac => \tx_en~input_o\,
	datad => \uart_tx_u1|Equal2~2_combout\,
	combout => \uart_tx_u1|ROM.10100000~0_combout\);

-- Location: FF_X56_Y28_N3
\uart_tx_u1|ROM.10100000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \uart_tx_u1|ROM.10100000~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|ROM.10100000~q\);

-- Location: LCCOMB_X56_Y28_N10
\uart_tx_u1|addr[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr[7]~1_combout\ = (\RST_n~input_o\ & (\uart_tx_u1|addr[7]~1_combout\)) # (!\RST_n~input_o\ & ((\uart_tx_u1|ROM.10100000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr[7]~1_combout\,
	datac => \RST_n~input_o\,
	datad => \uart_tx_u1|ROM.10100000~q\,
	combout => \uart_tx_u1|addr[7]~1_combout\);

-- Location: LCCOMB_X56_Y28_N18
\uart_tx_u1|addr[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr[5]~5_combout\ = \uart_tx_u1|Add0~8_combout\ $ (\uart_tx_u1|addr[7]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Add0~8_combout\,
	datad => \uart_tx_u1|addr[7]~1_combout\,
	combout => \uart_tx_u1|addr[5]~5_combout\);

-- Location: FF_X56_Y28_N19
\uart_tx_u1|addr[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|addr[5]~5_combout\,
	clrn => \RST_n~input_o\,
	ena => \uart_tx_u1|addr[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|addr[5]~_emulated_q\);

-- Location: LCCOMB_X56_Y28_N28
\uart_tx_u1|addr[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr[5]~4_combout\ = (\RST_n~input_o\ & (\uart_tx_u1|addr[5]~_emulated_q\ $ (((\uart_tx_u1|addr[7]~1_combout\))))) # (!\RST_n~input_o\ & (((\uart_tx_u1|ROM.10100000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr[5]~_emulated_q\,
	datab => \uart_tx_u1|ROM.10100000~q\,
	datac => \RST_n~input_o\,
	datad => \uart_tx_u1|addr[7]~1_combout\,
	combout => \uart_tx_u1|addr[5]~4_combout\);

-- Location: LCCOMB_X55_Y28_N22
\uart_tx_u1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add0~10_combout\ = (\uart_tx_u1|addr\(6) & (!\uart_tx_u1|Add0~9\)) # (!\uart_tx_u1|addr\(6) & ((\uart_tx_u1|Add0~9\) # (GND)))
-- \uart_tx_u1|Add0~11\ = CARRY((!\uart_tx_u1|Add0~9\) # (!\uart_tx_u1|addr\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|addr\(6),
	datad => VCC,
	cin => \uart_tx_u1|Add0~9\,
	combout => \uart_tx_u1|Add0~10_combout\,
	cout => \uart_tx_u1|Add0~11\);

-- Location: FF_X56_Y28_N9
\uart_tx_u1|addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \uart_tx_u1|Add0~10_combout\,
	clrn => \RST_n~input_o\,
	sload => VCC,
	ena => \uart_tx_u1|addr[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|addr\(6));

-- Location: LCCOMB_X55_Y28_N24
\uart_tx_u1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add0~12_combout\ = \uart_tx_u1|addr[7]~2_combout\ $ (!\uart_tx_u1|Add0~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|addr[7]~2_combout\,
	cin => \uart_tx_u1|Add0~11\,
	combout => \uart_tx_u1|Add0~12_combout\);

-- Location: LCCOMB_X56_Y28_N0
\uart_tx_u1|addr[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr[7]~3_combout\ = \uart_tx_u1|Add0~12_combout\ $ (\uart_tx_u1|addr[7]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Add0~12_combout\,
	datad => \uart_tx_u1|addr[7]~1_combout\,
	combout => \uart_tx_u1|addr[7]~3_combout\);

-- Location: FF_X56_Y28_N1
\uart_tx_u1|addr[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|addr[7]~3_combout\,
	clrn => \RST_n~input_o\,
	ena => \uart_tx_u1|addr[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|addr[7]~_emulated_q\);

-- Location: LCCOMB_X56_Y28_N14
\uart_tx_u1|addr[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr[7]~2_combout\ = (\RST_n~input_o\ & (\uart_tx_u1|addr[7]~_emulated_q\ $ ((\uart_tx_u1|addr[7]~1_combout\)))) # (!\RST_n~input_o\ & (((\uart_tx_u1|ROM.10100000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_n~input_o\,
	datab => \uart_tx_u1|addr[7]~_emulated_q\,
	datac => \uart_tx_u1|addr[7]~1_combout\,
	datad => \uart_tx_u1|ROM.10100000~q\,
	combout => \uart_tx_u1|addr[7]~2_combout\);

-- Location: LCCOMB_X56_Y28_N2
\uart_tx_u1|AT|rom~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~19_combout\ = (!\uart_tx_u1|addr\(6) & \uart_tx_u1|addr[7]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|addr\(6),
	datad => \uart_tx_u1|addr[7]~2_combout\,
	combout => \uart_tx_u1|AT|rom~19_combout\);

-- Location: LCCOMB_X60_Y28_N18
\uart_tx_u1|AT|rom~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~23_combout\ = (\uart_tx_u1|addr\(3) & ((\uart_tx_u1|addr\(2) & ((!\uart_tx_u1|addr\(0)))) # (!\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(1))))) # (!\uart_tx_u1|addr\(3) & (!\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(2) $ 
-- (\uart_tx_u1|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(3),
	datac => \uart_tx_u1|addr\(2),
	datad => \uart_tx_u1|addr\(0),
	combout => \uart_tx_u1|AT|rom~23_combout\);

-- Location: LCCOMB_X60_Y28_N16
\uart_tx_u1|AT|rom~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~20_combout\ = (\uart_tx_u1|addr\(0) & (\uart_tx_u1|addr\(1) $ (\uart_tx_u1|addr\(3) $ (!\uart_tx_u1|addr\(2))))) # (!\uart_tx_u1|addr\(0) & (\uart_tx_u1|addr\(3) & ((!\uart_tx_u1|addr\(2)) # (!\uart_tx_u1|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(3),
	datac => \uart_tx_u1|addr\(2),
	datad => \uart_tx_u1|addr\(0),
	combout => \uart_tx_u1|AT|rom~20_combout\);

-- Location: LCCOMB_X60_Y28_N26
\uart_tx_u1|AT|rom~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~21_combout\ = (\uart_tx_u1|addr\(0) & (!\uart_tx_u1|addr\(1))) # (!\uart_tx_u1|addr\(0) & (((\uart_tx_u1|addr\(3)) # (\uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(3),
	datac => \uart_tx_u1|addr\(2),
	datad => \uart_tx_u1|addr\(0),
	combout => \uart_tx_u1|AT|rom~21_combout\);

-- Location: LCCOMB_X60_Y28_N4
\uart_tx_u1|AT|rom~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~22_combout\ = (!\uart_tx_u1|addr\(4) & ((\uart_tx_u1|addr[5]~4_combout\ & (\uart_tx_u1|AT|rom~20_combout\)) # (!\uart_tx_u1|addr[5]~4_combout\ & ((\uart_tx_u1|AT|rom~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|AT|rom~20_combout\,
	datac => \uart_tx_u1|addr[5]~4_combout\,
	datad => \uart_tx_u1|AT|rom~21_combout\,
	combout => \uart_tx_u1|AT|rom~22_combout\);

-- Location: LCCOMB_X60_Y28_N24
\uart_tx_u1|AT|rom~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~24_combout\ = (\uart_tx_u1|AT|rom~22_combout\) # ((\uart_tx_u1|addr\(4) & (\uart_tx_u1|AT|rom~23_combout\ & !\uart_tx_u1|addr[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|AT|rom~23_combout\,
	datac => \uart_tx_u1|addr[5]~4_combout\,
	datad => \uart_tx_u1|AT|rom~22_combout\,
	combout => \uart_tx_u1|AT|rom~24_combout\);

-- Location: LCCOMB_X54_Y28_N16
\uart_tx_u1|AT|rom~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~114_combout\ = (\uart_tx_u1|addr\(3) & (!\uart_tx_u1|addr[5]~4_combout\ & ((\uart_tx_u1|addr\(4)) # (!\uart_tx_u1|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(3),
	datab => \uart_tx_u1|addr\(4),
	datac => \uart_tx_u1|addr[5]~4_combout\,
	datad => \uart_tx_u1|addr\(1),
	combout => \uart_tx_u1|AT|rom~114_combout\);

-- Location: LCCOMB_X54_Y28_N0
\uart_tx_u1|AT|rom~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~110_combout\ = (\uart_tx_u1|addr\(3) & ((\uart_tx_u1|addr[5]~4_combout\) # (\uart_tx_u1|addr\(4) $ (\uart_tx_u1|addr\(1))))) # (!\uart_tx_u1|addr\(3) & (\uart_tx_u1|addr\(4) & (\uart_tx_u1|addr[5]~4_combout\ $ (\uart_tx_u1|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(3),
	datab => \uart_tx_u1|addr\(4),
	datac => \uart_tx_u1|addr[5]~4_combout\,
	datad => \uart_tx_u1|addr\(1),
	combout => \uart_tx_u1|AT|rom~110_combout\);

-- Location: LCCOMB_X54_Y28_N30
\uart_tx_u1|AT|rom~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~111_combout\ = (\uart_tx_u1|addr\(4) & (((\uart_tx_u1|addr[5]~4_combout\ & \uart_tx_u1|addr\(3))) # (!\uart_tx_u1|addr\(1)))) # (!\uart_tx_u1|addr\(4) & ((\uart_tx_u1|addr[5]~4_combout\ & (\uart_tx_u1|addr\(1))) # 
-- (!\uart_tx_u1|addr[5]~4_combout\ & ((\uart_tx_u1|addr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(4),
	datac => \uart_tx_u1|addr[5]~4_combout\,
	datad => \uart_tx_u1|addr\(3),
	combout => \uart_tx_u1|AT|rom~111_combout\);

-- Location: LCCOMB_X54_Y28_N24
\uart_tx_u1|AT|rom~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~112_combout\ = (\uart_tx_u1|addr\(4) & ((\uart_tx_u1|addr\(3) & (\uart_tx_u1|addr\(1))) # (!\uart_tx_u1|addr\(3) & ((!\uart_tx_u1|addr[5]~4_combout\))))) # (!\uart_tx_u1|addr\(4) & ((\uart_tx_u1|addr\(1) & ((!\uart_tx_u1|addr\(3)))) # 
-- (!\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr[5]~4_combout\ & \uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(4),
	datac => \uart_tx_u1|addr[5]~4_combout\,
	datad => \uart_tx_u1|addr\(3),
	combout => \uart_tx_u1|AT|rom~112_combout\);

-- Location: LCCOMB_X54_Y28_N18
\uart_tx_u1|AT|rom~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~113_combout\ = (\uart_tx_u1|addr\(0) & (\uart_tx_u1|addr\(2))) # (!\uart_tx_u1|addr\(0) & ((\uart_tx_u1|addr\(2) & (!\uart_tx_u1|AT|rom~111_combout\)) # (!\uart_tx_u1|addr\(2) & ((\uart_tx_u1|AT|rom~112_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datab => \uart_tx_u1|addr\(2),
	datac => \uart_tx_u1|AT|rom~111_combout\,
	datad => \uart_tx_u1|AT|rom~112_combout\,
	combout => \uart_tx_u1|AT|rom~113_combout\);

-- Location: LCCOMB_X54_Y28_N6
\uart_tx_u1|AT|rom~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~115_combout\ = (\uart_tx_u1|addr\(0) & ((\uart_tx_u1|AT|rom~113_combout\ & (!\uart_tx_u1|AT|rom~114_combout\)) # (!\uart_tx_u1|AT|rom~113_combout\ & ((\uart_tx_u1|AT|rom~110_combout\))))) # (!\uart_tx_u1|addr\(0) & 
-- (((\uart_tx_u1|AT|rom~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datab => \uart_tx_u1|AT|rom~114_combout\,
	datac => \uart_tx_u1|AT|rom~110_combout\,
	datad => \uart_tx_u1|AT|rom~113_combout\,
	combout => \uart_tx_u1|AT|rom~115_combout\);

-- Location: LCCOMB_X55_Y28_N8
\uart_tx_u1|AT|rom~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~101_combout\ = (\uart_tx_u1|addr\(0) & (!\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(3))))) # (!\uart_tx_u1|addr\(0) & ((\uart_tx_u1|addr\(2) & (!\uart_tx_u1|addr\(1))) # (!\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(2),
	datac => \uart_tx_u1|addr\(0),
	datad => \uart_tx_u1|addr\(3),
	combout => \uart_tx_u1|AT|rom~101_combout\);

-- Location: LCCOMB_X55_Y28_N30
\uart_tx_u1|AT|rom~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~98_combout\ = (\uart_tx_u1|addr\(0) & ((\uart_tx_u1|addr\(3) & ((!\uart_tx_u1|addr\(2)))) # (!\uart_tx_u1|addr\(3) & (!\uart_tx_u1|addr\(1))))) # (!\uart_tx_u1|addr\(0) & (!\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(2) & 
-- \uart_tx_u1|addr\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(2),
	datad => \uart_tx_u1|addr\(3),
	combout => \uart_tx_u1|AT|rom~98_combout\);

-- Location: LCCOMB_X55_Y28_N0
\uart_tx_u1|AT|rom~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~99_combout\ = (\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(0))) # (!\uart_tx_u1|addr\(1) & (((\uart_tx_u1|addr\(2)) # (\uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(2),
	datad => \uart_tx_u1|addr\(3),
	combout => \uart_tx_u1|AT|rom~99_combout\);

-- Location: LCCOMB_X55_Y28_N2
\uart_tx_u1|AT|rom~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~100_combout\ = (!\uart_tx_u1|addr\(4) & ((\uart_tx_u1|addr[5]~4_combout\ & (\uart_tx_u1|AT|rom~98_combout\)) # (!\uart_tx_u1|addr[5]~4_combout\ & ((\uart_tx_u1|AT|rom~99_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|AT|rom~98_combout\,
	datab => \uart_tx_u1|AT|rom~99_combout\,
	datac => \uart_tx_u1|addr\(4),
	datad => \uart_tx_u1|addr[5]~4_combout\,
	combout => \uart_tx_u1|AT|rom~100_combout\);

-- Location: LCCOMB_X55_Y28_N26
\uart_tx_u1|AT|rom~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~102_combout\ = (\uart_tx_u1|AT|rom~100_combout\) # ((\uart_tx_u1|AT|rom~101_combout\ & (\uart_tx_u1|addr\(4) & !\uart_tx_u1|addr[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|AT|rom~101_combout\,
	datab => \uart_tx_u1|addr\(4),
	datac => \uart_tx_u1|addr[5]~4_combout\,
	datad => \uart_tx_u1|AT|rom~100_combout\,
	combout => \uart_tx_u1|AT|rom~102_combout\);

-- Location: LCCOMB_X59_Y28_N6
\uart_tx_u1|AT|rom~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~103_combout\ = (\uart_tx_u1|addr\(1) & (((!\uart_tx_u1|addr\(2) & \uart_tx_u1|addr\(3))))) # (!\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(0) & ((!\uart_tx_u1|addr\(3)))) # (!\uart_tx_u1|addr\(0) & (\uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(2),
	datad => \uart_tx_u1|addr\(3),
	combout => \uart_tx_u1|AT|rom~103_combout\);

-- Location: LCCOMB_X59_Y28_N18
\uart_tx_u1|AT|rom~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~107_combout\ = (\uart_tx_u1|addr\(3) & ((\uart_tx_u1|addr\(0)) # ((!\uart_tx_u1|addr\(1) & \uart_tx_u1|addr\(2))))) # (!\uart_tx_u1|addr\(3) & (((\uart_tx_u1|addr\(1) & \uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(2),
	datad => \uart_tx_u1|addr\(3),
	combout => \uart_tx_u1|AT|rom~107_combout\);

-- Location: LCCOMB_X59_Y28_N8
\uart_tx_u1|AT|rom~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~104_combout\ = (\uart_tx_u1|addr\(0) & (\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(2)))) # (!\uart_tx_u1|addr\(0) & ((\uart_tx_u1|addr\(1) & (!\uart_tx_u1|addr\(2) & !\uart_tx_u1|addr\(3))) # (!\uart_tx_u1|addr\(1) & 
-- ((\uart_tx_u1|addr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(2),
	datad => \uart_tx_u1|addr\(3),
	combout => \uart_tx_u1|AT|rom~104_combout\);

-- Location: LCCOMB_X59_Y28_N2
\uart_tx_u1|AT|rom~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~105_combout\ = (\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(0) & ((\uart_tx_u1|addr\(1)) # (!\uart_tx_u1|addr\(3))))) # (!\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(0)) # ((\uart_tx_u1|addr\(1) & \uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(0),
	combout => \uart_tx_u1|AT|rom~105_combout\);

-- Location: LCCOMB_X59_Y28_N16
\uart_tx_u1|AT|rom~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~106_combout\ = (\uart_tx_u1|addr\(4) & ((\uart_tx_u1|AT|rom~104_combout\) # ((\uart_tx_u1|addr[5]~4_combout\)))) # (!\uart_tx_u1|addr\(4) & (((!\uart_tx_u1|addr[5]~4_combout\ & \uart_tx_u1|AT|rom~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|AT|rom~104_combout\,
	datac => \uart_tx_u1|addr[5]~4_combout\,
	datad => \uart_tx_u1|AT|rom~105_combout\,
	combout => \uart_tx_u1|AT|rom~106_combout\);

-- Location: LCCOMB_X59_Y28_N20
\uart_tx_u1|AT|rom~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~108_combout\ = (\uart_tx_u1|addr[5]~4_combout\ & ((\uart_tx_u1|AT|rom~106_combout\ & ((!\uart_tx_u1|AT|rom~107_combout\))) # (!\uart_tx_u1|AT|rom~106_combout\ & (!\uart_tx_u1|AT|rom~103_combout\)))) # (!\uart_tx_u1|addr[5]~4_combout\ & 
-- (((\uart_tx_u1|AT|rom~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|AT|rom~103_combout\,
	datab => \uart_tx_u1|AT|rom~107_combout\,
	datac => \uart_tx_u1|addr[5]~4_combout\,
	datad => \uart_tx_u1|AT|rom~106_combout\,
	combout => \uart_tx_u1|AT|rom~108_combout\);

-- Location: LCCOMB_X55_Y28_N28
\uart_tx_u1|AT|rom~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~109_combout\ = (!\uart_tx_u1|addr\(6) & ((\uart_tx_u1|addr[7]~2_combout\ & (\uart_tx_u1|AT|rom~102_combout\)) # (!\uart_tx_u1|addr[7]~2_combout\ & ((\uart_tx_u1|AT|rom~108_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr[7]~2_combout\,
	datab => \uart_tx_u1|addr\(6),
	datac => \uart_tx_u1|AT|rom~102_combout\,
	datad => \uart_tx_u1|AT|rom~108_combout\,
	combout => \uart_tx_u1|AT|rom~109_combout\);

-- Location: LCCOMB_X55_Y28_N6
\uart_tx_u1|AT|rom~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~116_combout\ = (\uart_tx_u1|AT|rom~109_combout\) # ((!\uart_tx_u1|addr[7]~2_combout\ & (\uart_tx_u1|addr\(6) & \uart_tx_u1|AT|rom~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr[7]~2_combout\,
	datab => \uart_tx_u1|addr\(6),
	datac => \uart_tx_u1|AT|rom~115_combout\,
	datad => \uart_tx_u1|AT|rom~109_combout\,
	combout => \uart_tx_u1|AT|rom~116_combout\);

-- Location: LCCOMB_X56_Y27_N20
\uart_tx_u1|AT|rom~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~14_combout\ = (\uart_tx_u1|addr\(0) & (((\uart_tx_u1|addr\(4)) # (!\uart_tx_u1|addr\(2))) # (!\uart_tx_u1|addr\(3)))) # (!\uart_tx_u1|addr\(0) & (\uart_tx_u1|addr\(3) & (!\uart_tx_u1|addr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datab => \uart_tx_u1|addr\(3),
	datac => \uart_tx_u1|addr\(4),
	datad => \uart_tx_u1|addr\(2),
	combout => \uart_tx_u1|AT|rom~14_combout\);

-- Location: LCCOMB_X56_Y27_N14
\uart_tx_u1|AT|rom~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~13_combout\ = (\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(2) $ (((!\uart_tx_u1|addr\(0) & \uart_tx_u1|addr\(3)))))) # (!\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(0) $ (((\uart_tx_u1|addr\(3)) # (\uart_tx_u1|addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(2),
	combout => \uart_tx_u1|AT|rom~13_combout\);

-- Location: LCCOMB_X56_Y27_N6
\uart_tx_u1|AT|rom~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~15_combout\ = (\uart_tx_u1|addr\(4) & (\uart_tx_u1|AT|rom~14_combout\)) # (!\uart_tx_u1|addr\(4) & ((\uart_tx_u1|AT|rom~13_combout\ & ((!\uart_tx_u1|addr[5]~4_combout\))) # (!\uart_tx_u1|AT|rom~13_combout\ & 
-- (\uart_tx_u1|AT|rom~14_combout\ & \uart_tx_u1|addr[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|AT|rom~14_combout\,
	datac => \uart_tx_u1|AT|rom~13_combout\,
	datad => \uart_tx_u1|addr[5]~4_combout\,
	combout => \uart_tx_u1|AT|rom~15_combout\);

-- Location: LCCOMB_X56_Y27_N8
\uart_tx_u1|AT|rom~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~16_combout\ = (\uart_tx_u1|addr\(2) & (((\uart_tx_u1|addr\(1) & !\uart_tx_u1|addr[5]~4_combout\)) # (!\uart_tx_u1|addr\(3)))) # (!\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr[5]~4_combout\) # (\uart_tx_u1|addr\(1) $ 
-- (\uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr[5]~4_combout\,
	combout => \uart_tx_u1|AT|rom~16_combout\);

-- Location: LCCOMB_X56_Y27_N28
\uart_tx_u1|AT|rom~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~12_combout\ = (\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(3) $ (!\uart_tx_u1|addr[5]~4_combout\)))) # (!\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(2) & ((!\uart_tx_u1|addr[5]~4_combout\))) # (!\uart_tx_u1|addr\(2) & 
-- (!\uart_tx_u1|addr\(3) & \uart_tx_u1|addr[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr[5]~4_combout\,
	combout => \uart_tx_u1|AT|rom~12_combout\);

-- Location: LCCOMB_X56_Y27_N30
\uart_tx_u1|AT|rom~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~17_combout\ = (\uart_tx_u1|AT|rom~15_combout\ & (((\uart_tx_u1|AT|rom~16_combout\)) # (!\uart_tx_u1|addr\(4)))) # (!\uart_tx_u1|AT|rom~15_combout\ & (\uart_tx_u1|addr\(4) & ((\uart_tx_u1|AT|rom~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|AT|rom~15_combout\,
	datab => \uart_tx_u1|addr\(4),
	datac => \uart_tx_u1|AT|rom~16_combout\,
	datad => \uart_tx_u1|AT|rom~12_combout\,
	combout => \uart_tx_u1|AT|rom~17_combout\);

-- Location: LCCOMB_X56_Y27_N24
\uart_tx_u1|AT|rom~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~6_combout\ = (\uart_tx_u1|addr[5]~4_combout\ & ((\uart_tx_u1|addr\(3)) # ((!\uart_tx_u1|addr\(2) & !\uart_tx_u1|addr\(1))))) # (!\uart_tx_u1|addr[5]~4_combout\ & (\uart_tx_u1|addr\(2) $ (((!\uart_tx_u1|addr\(1) & 
-- \uart_tx_u1|addr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr[5]~4_combout\,
	combout => \uart_tx_u1|AT|rom~6_combout\);

-- Location: LCCOMB_X56_Y27_N4
\uart_tx_u1|AT|rom~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~10_combout\ = (\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(1)) # ((!\uart_tx_u1|addr[5]~4_combout\) # (!\uart_tx_u1|addr\(3))))) # (!\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(3) & \uart_tx_u1|addr[5]~4_combout\)) 
-- # (!\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(3)) # (\uart_tx_u1|addr[5]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr[5]~4_combout\,
	combout => \uart_tx_u1|AT|rom~10_combout\);

-- Location: LCCOMB_X56_Y27_N22
\uart_tx_u1|AT|rom~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~7_combout\ = (\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr[5]~4_combout\ & (\uart_tx_u1|addr\(1) $ (!\uart_tx_u1|addr\(3))))) # (!\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(1) & ((!\uart_tx_u1|addr[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr[5]~4_combout\,
	combout => \uart_tx_u1|AT|rom~7_combout\);

-- Location: LCCOMB_X56_Y27_N12
\uart_tx_u1|AT|rom~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~8_combout\ = (\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(3) $ (!\uart_tx_u1|addr[5]~4_combout\)))) # (!\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(3) & (\uart_tx_u1|addr\(1) $ (!\uart_tx_u1|addr[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr[5]~4_combout\,
	combout => \uart_tx_u1|AT|rom~8_combout\);

-- Location: LCCOMB_X56_Y27_N18
\uart_tx_u1|AT|rom~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~9_combout\ = (\uart_tx_u1|addr\(0) & ((\uart_tx_u1|addr\(4)) # ((\uart_tx_u1|AT|rom~7_combout\)))) # (!\uart_tx_u1|addr\(0) & (!\uart_tx_u1|addr\(4) & ((\uart_tx_u1|AT|rom~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datab => \uart_tx_u1|addr\(4),
	datac => \uart_tx_u1|AT|rom~7_combout\,
	datad => \uart_tx_u1|AT|rom~8_combout\,
	combout => \uart_tx_u1|AT|rom~9_combout\);

-- Location: LCCOMB_X56_Y27_N2
\uart_tx_u1|AT|rom~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~11_combout\ = (\uart_tx_u1|addr\(4) & ((\uart_tx_u1|AT|rom~9_combout\ & ((!\uart_tx_u1|AT|rom~10_combout\))) # (!\uart_tx_u1|AT|rom~9_combout\ & (\uart_tx_u1|AT|rom~6_combout\)))) # (!\uart_tx_u1|addr\(4) & 
-- (((\uart_tx_u1|AT|rom~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|AT|rom~6_combout\,
	datac => \uart_tx_u1|AT|rom~10_combout\,
	datad => \uart_tx_u1|AT|rom~9_combout\,
	combout => \uart_tx_u1|AT|rom~11_combout\);

-- Location: LCCOMB_X56_Y27_N0
\uart_tx_u1|AT|rom~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~18_combout\ = (!\uart_tx_u1|addr[7]~2_combout\ & ((\uart_tx_u1|addr\(6) & ((\uart_tx_u1|AT|rom~11_combout\))) # (!\uart_tx_u1|addr\(6) & (\uart_tx_u1|AT|rom~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr[7]~2_combout\,
	datab => \uart_tx_u1|addr\(6),
	datac => \uart_tx_u1|AT|rom~17_combout\,
	datad => \uart_tx_u1|AT|rom~11_combout\,
	combout => \uart_tx_u1|AT|rom~18_combout\);

-- Location: LCCOMB_X56_Y28_N22
\uart_tx_u1|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Equal3~0_combout\ = (!\uart_tx_u1|AT|rom~116_combout\ & (!\uart_tx_u1|AT|rom~18_combout\ & ((!\uart_tx_u1|AT|rom~24_combout\) # (!\uart_tx_u1|AT|rom~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|AT|rom~19_combout\,
	datab => \uart_tx_u1|AT|rom~24_combout\,
	datac => \uart_tx_u1|AT|rom~116_combout\,
	datad => \uart_tx_u1|AT|rom~18_combout\,
	combout => \uart_tx_u1|Equal3~0_combout\);

-- Location: LCCOMB_X56_Y27_N16
\uart_tx_u1|AT|rom~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~96_combout\ = (\uart_tx_u1|addr\(1)) # (\uart_tx_u1|addr\(2) $ (((\uart_tx_u1|addr\(0)) # (\uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datab => \uart_tx_u1|addr\(2),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(1),
	combout => \uart_tx_u1|AT|rom~96_combout\);

-- Location: LCCOMB_X56_Y27_N10
\uart_tx_u1|AT|rom~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~95_combout\ = (\uart_tx_u1|addr\(2) & (!\uart_tx_u1|addr\(0) & (\uart_tx_u1|addr\(3) & !\uart_tx_u1|addr\(1)))) # (!\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(0) $ (!\uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datab => \uart_tx_u1|addr\(2),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(1),
	combout => \uart_tx_u1|AT|rom~95_combout\);

-- Location: LCCOMB_X56_Y27_N26
\uart_tx_u1|AT|rom~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~97_combout\ = (\uart_tx_u1|addr\(4) & (!\uart_tx_u1|AT|rom~96_combout\ & ((!\uart_tx_u1|addr[5]~4_combout\)))) # (!\uart_tx_u1|addr\(4) & (((\uart_tx_u1|AT|rom~95_combout\) # (!\uart_tx_u1|addr[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|AT|rom~96_combout\,
	datac => \uart_tx_u1|AT|rom~95_combout\,
	datad => \uart_tx_u1|addr[5]~4_combout\,
	combout => \uart_tx_u1|AT|rom~97_combout\);

-- Location: LCCOMB_X54_Y27_N0
\uart_tx_u1|AT|rom~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~86_combout\ = (\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(1) & (!\uart_tx_u1|addr\(3))) # (!\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(3) & !\uart_tx_u1|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(2),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(0),
	combout => \uart_tx_u1|AT|rom~86_combout\);

-- Location: LCCOMB_X55_Y27_N6
\uart_tx_u1|AT|rom~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~84_combout\ = (\uart_tx_u1|addr\(3)) # ((\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(1)) # (\uart_tx_u1|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(2),
	datac => \uart_tx_u1|addr\(0),
	datad => \uart_tx_u1|addr\(3),
	combout => \uart_tx_u1|AT|rom~84_combout\);

-- Location: LCCOMB_X55_Y28_N4
\uart_tx_u1|AT|rom~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~83_combout\ = (\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(2) $ (((!\uart_tx_u1|addr\(0) & \uart_tx_u1|addr\(3)))))) # (!\uart_tx_u1|addr\(1) & (((!\uart_tx_u1|addr\(2) & \uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|addr\(2),
	datad => \uart_tx_u1|addr\(3),
	combout => \uart_tx_u1|AT|rom~83_combout\);

-- Location: LCCOMB_X55_Y27_N20
\uart_tx_u1|AT|rom~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~85_combout\ = (\uart_tx_u1|addr\(4) & (((\uart_tx_u1|AT|rom~83_combout\) # (\uart_tx_u1|addr[5]~4_combout\)))) # (!\uart_tx_u1|addr\(4) & (\uart_tx_u1|AT|rom~84_combout\ & ((\uart_tx_u1|addr[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|AT|rom~84_combout\,
	datab => \uart_tx_u1|addr\(4),
	datac => \uart_tx_u1|AT|rom~83_combout\,
	datad => \uart_tx_u1|addr[5]~4_combout\,
	combout => \uart_tx_u1|AT|rom~85_combout\);

-- Location: LCCOMB_X55_Y27_N14
\uart_tx_u1|AT|rom~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~87_combout\ = (\uart_tx_u1|AT|rom~85_combout\) # ((\uart_tx_u1|AT|rom~86_combout\ & (!\uart_tx_u1|addr\(4) & !\uart_tx_u1|addr[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|AT|rom~86_combout\,
	datab => \uart_tx_u1|addr\(4),
	datac => \uart_tx_u1|addr[5]~4_combout\,
	datad => \uart_tx_u1|AT|rom~85_combout\,
	combout => \uart_tx_u1|AT|rom~87_combout\);

-- Location: LCCOMB_X54_Y27_N16
\uart_tx_u1|AT|rom~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~92_combout\ = (\uart_tx_u1|addr\(3) & (\uart_tx_u1|addr\(4) & ((!\uart_tx_u1|addr\(0)) # (!\uart_tx_u1|addr\(1))))) # (!\uart_tx_u1|addr\(3) & (!\uart_tx_u1|addr\(4) & ((\uart_tx_u1|addr\(1)) # (\uart_tx_u1|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(4),
	combout => \uart_tx_u1|AT|rom~92_combout\);

-- Location: LCCOMB_X54_Y27_N6
\uart_tx_u1|AT|rom~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~88_combout\ = (\uart_tx_u1|addr\(3) & (((!\uart_tx_u1|addr\(4)) # (!\uart_tx_u1|addr\(0))) # (!\uart_tx_u1|addr\(1)))) # (!\uart_tx_u1|addr\(3) & ((\uart_tx_u1|addr\(4)) # ((\uart_tx_u1|addr\(1) & \uart_tx_u1|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(4),
	combout => \uart_tx_u1|AT|rom~88_combout\);

-- Location: LCCOMB_X55_Y27_N4
\uart_tx_u1|AT|rom~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~89_combout\ = (\uart_tx_u1|addr\(4) & (\uart_tx_u1|addr\(0) & (\uart_tx_u1|addr\(1) $ (\uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(4),
	datac => \uart_tx_u1|addr\(0),
	datad => \uart_tx_u1|addr\(3),
	combout => \uart_tx_u1|AT|rom~89_combout\);

-- Location: LCCOMB_X55_Y27_N30
\uart_tx_u1|AT|rom~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~90_combout\ = (\uart_tx_u1|addr\(4) & (((!\uart_tx_u1|addr\(1) & !\uart_tx_u1|addr\(0))))) # (!\uart_tx_u1|addr\(4) & (\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(3)) # (!\uart_tx_u1|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(3),
	datab => \uart_tx_u1|addr\(4),
	datac => \uart_tx_u1|addr\(1),
	datad => \uart_tx_u1|addr\(0),
	combout => \uart_tx_u1|AT|rom~90_combout\);

-- Location: LCCOMB_X55_Y27_N12
\uart_tx_u1|AT|rom~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~91_combout\ = (\uart_tx_u1|addr\(2) & ((\uart_tx_u1|AT|rom~89_combout\) # ((\uart_tx_u1|addr[5]~4_combout\)))) # (!\uart_tx_u1|addr\(2) & (((\uart_tx_u1|AT|rom~90_combout\ & !\uart_tx_u1|addr[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|AT|rom~89_combout\,
	datac => \uart_tx_u1|AT|rom~90_combout\,
	datad => \uart_tx_u1|addr[5]~4_combout\,
	combout => \uart_tx_u1|AT|rom~91_combout\);

-- Location: LCCOMB_X55_Y27_N18
\uart_tx_u1|AT|rom~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~93_combout\ = (\uart_tx_u1|addr[5]~4_combout\ & ((\uart_tx_u1|AT|rom~91_combout\ & (!\uart_tx_u1|AT|rom~92_combout\)) # (!\uart_tx_u1|AT|rom~91_combout\ & ((\uart_tx_u1|AT|rom~88_combout\))))) # (!\uart_tx_u1|addr[5]~4_combout\ & 
-- (((\uart_tx_u1|AT|rom~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|AT|rom~92_combout\,
	datab => \uart_tx_u1|AT|rom~88_combout\,
	datac => \uart_tx_u1|addr[5]~4_combout\,
	datad => \uart_tx_u1|AT|rom~91_combout\,
	combout => \uart_tx_u1|AT|rom~93_combout\);

-- Location: LCCOMB_X55_Y27_N0
\uart_tx_u1|AT|rom~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~94_combout\ = (!\uart_tx_u1|addr[7]~2_combout\ & ((\uart_tx_u1|addr\(6) & (\uart_tx_u1|AT|rom~87_combout\)) # (!\uart_tx_u1|addr\(6) & ((\uart_tx_u1|AT|rom~93_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(6),
	datab => \uart_tx_u1|addr[7]~2_combout\,
	datac => \uart_tx_u1|AT|rom~87_combout\,
	datad => \uart_tx_u1|AT|rom~93_combout\,
	combout => \uart_tx_u1|AT|rom~94_combout\);

-- Location: LCCOMB_X55_Y27_N10
\uart_tx_u1|AT|rom~131\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~131_combout\ = (\uart_tx_u1|AT|rom~94_combout\) # ((!\uart_tx_u1|addr\(6) & (\uart_tx_u1|AT|rom~97_combout\ & \uart_tx_u1|addr[7]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(6),
	datab => \uart_tx_u1|AT|rom~97_combout\,
	datac => \uart_tx_u1|addr[7]~2_combout\,
	datad => \uart_tx_u1|AT|rom~94_combout\,
	combout => \uart_tx_u1|AT|rom~131_combout\);

-- Location: LCCOMB_X60_Y28_N14
\uart_tx_u1|AT|rom~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~58_combout\ = (\uart_tx_u1|addr\(3) & (((\uart_tx_u1|addr\(4)) # (\uart_tx_u1|addr\(1))))) # (!\uart_tx_u1|addr\(3) & (\uart_tx_u1|addr\(0) $ ((\uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datab => \uart_tx_u1|addr\(4),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(1),
	combout => \uart_tx_u1|AT|rom~58_combout\);

-- Location: LCCOMB_X60_Y28_N30
\uart_tx_u1|AT|rom~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~60_combout\ = (\uart_tx_u1|addr\(4) & (!\uart_tx_u1|addr\(0) & (!\uart_tx_u1|addr\(3) & !\uart_tx_u1|addr\(1)))) # (!\uart_tx_u1|addr\(4) & (((\uart_tx_u1|addr\(3)) # (\uart_tx_u1|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datab => \uart_tx_u1|addr\(4),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(1),
	combout => \uart_tx_u1|AT|rom~60_combout\);

-- Location: LCCOMB_X60_Y28_N20
\uart_tx_u1|AT|rom~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~59_combout\ = (\uart_tx_u1|addr\(4) & (\uart_tx_u1|addr\(0))) # (!\uart_tx_u1|addr\(4) & ((\uart_tx_u1|addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|addr\(4),
	datad => \uart_tx_u1|addr\(1),
	combout => \uart_tx_u1|AT|rom~59_combout\);

-- Location: LCCOMB_X60_Y28_N8
\uart_tx_u1|AT|rom~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~61_combout\ = (\uart_tx_u1|AT|rom~60_combout\ & ((!\uart_tx_u1|AT|rom~59_combout\) # (!\uart_tx_u1|addr[5]~4_combout\))) # (!\uart_tx_u1|AT|rom~60_combout\ & (\uart_tx_u1|addr[5]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|AT|rom~60_combout\,
	datac => \uart_tx_u1|addr[5]~4_combout\,
	datad => \uart_tx_u1|AT|rom~59_combout\,
	combout => \uart_tx_u1|AT|rom~61_combout\);

-- Location: LCCOMB_X60_Y28_N10
\uart_tx_u1|AT|rom~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~62_combout\ = (\uart_tx_u1|AT|rom~61_combout\ & (((!\uart_tx_u1|AT|rom~58_combout\ & !\uart_tx_u1|AT|rom~59_combout\)))) # (!\uart_tx_u1|AT|rom~61_combout\ & ((\uart_tx_u1|addr\(2) & ((!\uart_tx_u1|AT|rom~59_combout\) # 
-- (!\uart_tx_u1|AT|rom~58_combout\))) # (!\uart_tx_u1|addr\(2) & ((\uart_tx_u1|AT|rom~59_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|AT|rom~58_combout\,
	datac => \uart_tx_u1|AT|rom~61_combout\,
	datad => \uart_tx_u1|AT|rom~59_combout\,
	combout => \uart_tx_u1|AT|rom~62_combout\);

-- Location: LCCOMB_X54_Y28_N4
\uart_tx_u1|AT|rom~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~38_combout\ = (\uart_tx_u1|addr\(3) & (!\uart_tx_u1|addr[5]~4_combout\ & ((\uart_tx_u1|addr\(1)) # (!\uart_tx_u1|addr\(2))))) # (!\uart_tx_u1|addr\(3) & (\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(1)) # 
-- (!\uart_tx_u1|addr[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(3),
	datab => \uart_tx_u1|addr\(2),
	datac => \uart_tx_u1|addr[5]~4_combout\,
	datad => \uart_tx_u1|addr\(1),
	combout => \uart_tx_u1|AT|rom~38_combout\);

-- Location: LCCOMB_X54_Y28_N8
\uart_tx_u1|AT|rom~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~42_combout\ = (\uart_tx_u1|addr\(3) & (\uart_tx_u1|addr\(2) & (!\uart_tx_u1|addr[5]~4_combout\ & \uart_tx_u1|addr\(1)))) # (!\uart_tx_u1|addr\(3) & ((\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr[5]~4_combout\ $ (!\uart_tx_u1|addr\(1)))) # 
-- (!\uart_tx_u1|addr\(2) & (!\uart_tx_u1|addr[5]~4_combout\ & \uart_tx_u1|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(3),
	datab => \uart_tx_u1|addr\(2),
	datac => \uart_tx_u1|addr[5]~4_combout\,
	datad => \uart_tx_u1|addr\(1),
	combout => \uart_tx_u1|AT|rom~42_combout\);

-- Location: LCCOMB_X54_Y28_N22
\uart_tx_u1|AT|rom~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~39_combout\ = (\uart_tx_u1|addr\(3) & (!\uart_tx_u1|addr\(1) & ((!\uart_tx_u1|addr[5]~4_combout\) # (!\uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(3),
	datab => \uart_tx_u1|addr\(2),
	datac => \uart_tx_u1|addr[5]~4_combout\,
	datad => \uart_tx_u1|addr\(1),
	combout => \uart_tx_u1|AT|rom~39_combout\);

-- Location: LCCOMB_X54_Y28_N12
\uart_tx_u1|AT|rom~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~40_combout\ = (\uart_tx_u1|addr\(1) & (((!\uart_tx_u1|addr\(3) & !\uart_tx_u1|addr\(2))) # (!\uart_tx_u1|addr[5]~4_combout\))) # (!\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(3) $ ((\uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(3),
	datab => \uart_tx_u1|addr\(2),
	datac => \uart_tx_u1|addr[5]~4_combout\,
	datad => \uart_tx_u1|addr\(1),
	combout => \uart_tx_u1|AT|rom~40_combout\);

-- Location: LCCOMB_X54_Y28_N10
\uart_tx_u1|AT|rom~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~41_combout\ = (\uart_tx_u1|addr\(0) & ((\uart_tx_u1|addr\(4)) # ((\uart_tx_u1|AT|rom~39_combout\)))) # (!\uart_tx_u1|addr\(0) & (!\uart_tx_u1|addr\(4) & ((!\uart_tx_u1|AT|rom~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datab => \uart_tx_u1|addr\(4),
	datac => \uart_tx_u1|AT|rom~39_combout\,
	datad => \uart_tx_u1|AT|rom~40_combout\,
	combout => \uart_tx_u1|AT|rom~41_combout\);

-- Location: LCCOMB_X54_Y28_N26
\uart_tx_u1|AT|rom~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~43_combout\ = (\uart_tx_u1|addr\(4) & ((\uart_tx_u1|AT|rom~41_combout\ & ((\uart_tx_u1|AT|rom~42_combout\))) # (!\uart_tx_u1|AT|rom~41_combout\ & (!\uart_tx_u1|AT|rom~38_combout\)))) # (!\uart_tx_u1|addr\(4) & 
-- (((\uart_tx_u1|AT|rom~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|AT|rom~38_combout\,
	datac => \uart_tx_u1|AT|rom~42_combout\,
	datad => \uart_tx_u1|AT|rom~41_combout\,
	combout => \uart_tx_u1|AT|rom~43_combout\);

-- Location: LCCOMB_X60_Y28_N6
\uart_tx_u1|AT|rom~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~29_combout\ = (\uart_tx_u1|addr\(4)) # ((\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(0))) # (!\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datab => \uart_tx_u1|addr\(3),
	datac => \uart_tx_u1|addr\(2),
	datad => \uart_tx_u1|addr\(4),
	combout => \uart_tx_u1|AT|rom~29_combout\);

-- Location: LCCOMB_X60_Y28_N2
\uart_tx_u1|AT|rom~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~25_combout\ = (!\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(3) & !\uart_tx_u1|addr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(4),
	combout => \uart_tx_u1|AT|rom~25_combout\);

-- Location: LCCOMB_X60_Y28_N22
\uart_tx_u1|AT|rom~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~27_combout\ = (\uart_tx_u1|addr\(0) & ((\uart_tx_u1|addr\(2) $ (!\uart_tx_u1|addr\(3))) # (!\uart_tx_u1|addr\(4)))) # (!\uart_tx_u1|addr\(0) & ((\uart_tx_u1|addr\(2)) # ((\uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(4),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(0),
	combout => \uart_tx_u1|AT|rom~27_combout\);

-- Location: LCCOMB_X60_Y28_N0
\uart_tx_u1|AT|rom~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~26_combout\ = (\uart_tx_u1|addr\(4) & ((\uart_tx_u1|addr\(3) $ (\uart_tx_u1|addr\(0))))) # (!\uart_tx_u1|addr\(4) & (\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(3) & \uart_tx_u1|addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(4),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(0),
	combout => \uart_tx_u1|AT|rom~26_combout\);

-- Location: LCCOMB_X60_Y28_N28
\uart_tx_u1|AT|rom~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~28_combout\ = (\uart_tx_u1|addr\(1) & (((\uart_tx_u1|addr[5]~4_combout\) # (!\uart_tx_u1|AT|rom~26_combout\)))) # (!\uart_tx_u1|addr\(1) & (!\uart_tx_u1|AT|rom~27_combout\ & (!\uart_tx_u1|addr[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|AT|rom~27_combout\,
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr[5]~4_combout\,
	datad => \uart_tx_u1|AT|rom~26_combout\,
	combout => \uart_tx_u1|AT|rom~28_combout\);

-- Location: LCCOMB_X60_Y28_N12
\uart_tx_u1|AT|rom~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~30_combout\ = (\uart_tx_u1|addr[5]~4_combout\ & ((\uart_tx_u1|AT|rom~28_combout\ & (!\uart_tx_u1|AT|rom~29_combout\)) # (!\uart_tx_u1|AT|rom~28_combout\ & ((\uart_tx_u1|AT|rom~25_combout\))))) # (!\uart_tx_u1|addr[5]~4_combout\ & 
-- (((\uart_tx_u1|AT|rom~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|AT|rom~29_combout\,
	datab => \uart_tx_u1|AT|rom~25_combout\,
	datac => \uart_tx_u1|addr[5]~4_combout\,
	datad => \uart_tx_u1|AT|rom~28_combout\,
	combout => \uart_tx_u1|AT|rom~30_combout\);

-- Location: LCCOMB_X54_Y28_N14
\uart_tx_u1|AT|rom~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~35_combout\ = (\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(3) & (\uart_tx_u1|addr\(1) & \uart_tx_u1|addr\(4)))) # (!\uart_tx_u1|addr\(2) & (!\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(3) $ (\uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(3),
	datab => \uart_tx_u1|addr\(2),
	datac => \uart_tx_u1|addr\(1),
	datad => \uart_tx_u1|addr\(4),
	combout => \uart_tx_u1|AT|rom~35_combout\);

-- Location: LCCOMB_X59_Y28_N4
\uart_tx_u1|AT|rom~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~31_combout\ = (\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(3))) # (!\uart_tx_u1|addr\(1) & (!\uart_tx_u1|addr\(3) & \uart_tx_u1|addr\(4))))) # (!\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(1) & 
-- ((\uart_tx_u1|addr\(4)) # (!\uart_tx_u1|addr\(3)))) # (!\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(4),
	combout => \uart_tx_u1|AT|rom~31_combout\);

-- Location: LCCOMB_X54_Y28_N20
\uart_tx_u1|AT|rom~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~32_combout\ = (\uart_tx_u1|addr\(4) & ((\uart_tx_u1|addr\(3) & (\uart_tx_u1|addr\(2))) # (!\uart_tx_u1|addr\(3) & (!\uart_tx_u1|addr\(2) & !\uart_tx_u1|addr\(1))))) # (!\uart_tx_u1|addr\(4) & (\uart_tx_u1|addr\(3) $ 
-- (((\uart_tx_u1|addr\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(3),
	datab => \uart_tx_u1|addr\(2),
	datac => \uart_tx_u1|addr\(1),
	datad => \uart_tx_u1|addr\(4),
	combout => \uart_tx_u1|AT|rom~32_combout\);

-- Location: LCCOMB_X54_Y28_N2
\uart_tx_u1|AT|rom~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~33_combout\ = (\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(3) $ (((!\uart_tx_u1|addr\(4)) # (!\uart_tx_u1|addr\(1)))))) # (!\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(4)) # ((!\uart_tx_u1|addr\(3) & \uart_tx_u1|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(3),
	datab => \uart_tx_u1|addr\(2),
	datac => \uart_tx_u1|addr\(1),
	datad => \uart_tx_u1|addr\(4),
	combout => \uart_tx_u1|AT|rom~33_combout\);

-- Location: LCCOMB_X54_Y28_N28
\uart_tx_u1|AT|rom~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~34_combout\ = (\uart_tx_u1|addr\(0) & ((\uart_tx_u1|AT|rom~32_combout\) # ((\uart_tx_u1|addr[5]~4_combout\)))) # (!\uart_tx_u1|addr\(0) & (((!\uart_tx_u1|addr[5]~4_combout\ & \uart_tx_u1|AT|rom~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datab => \uart_tx_u1|AT|rom~32_combout\,
	datac => \uart_tx_u1|addr[5]~4_combout\,
	datad => \uart_tx_u1|AT|rom~33_combout\,
	combout => \uart_tx_u1|AT|rom~34_combout\);

-- Location: LCCOMB_X55_Y28_N10
\uart_tx_u1|AT|rom~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~36_combout\ = (\uart_tx_u1|addr[5]~4_combout\ & ((\uart_tx_u1|AT|rom~34_combout\ & (\uart_tx_u1|AT|rom~35_combout\)) # (!\uart_tx_u1|AT|rom~34_combout\ & ((!\uart_tx_u1|AT|rom~31_combout\))))) # (!\uart_tx_u1|addr[5]~4_combout\ & 
-- (((\uart_tx_u1|AT|rom~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|AT|rom~35_combout\,
	datab => \uart_tx_u1|addr[5]~4_combout\,
	datac => \uart_tx_u1|AT|rom~31_combout\,
	datad => \uart_tx_u1|AT|rom~34_combout\,
	combout => \uart_tx_u1|AT|rom~36_combout\);

-- Location: LCCOMB_X56_Y28_N20
\uart_tx_u1|AT|rom~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~37_combout\ = (!\uart_tx_u1|addr\(6) & ((\uart_tx_u1|addr[7]~2_combout\ & (\uart_tx_u1|AT|rom~30_combout\)) # (!\uart_tx_u1|addr[7]~2_combout\ & ((\uart_tx_u1|AT|rom~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr[7]~2_combout\,
	datab => \uart_tx_u1|addr\(6),
	datac => \uart_tx_u1|AT|rom~30_combout\,
	datad => \uart_tx_u1|AT|rom~36_combout\,
	combout => \uart_tx_u1|AT|rom~37_combout\);

-- Location: LCCOMB_X56_Y28_N8
\uart_tx_u1|AT|rom~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~44_combout\ = (\uart_tx_u1|AT|rom~37_combout\) # ((\uart_tx_u1|AT|rom~43_combout\ & (!\uart_tx_u1|addr[7]~2_combout\ & \uart_tx_u1|addr\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|AT|rom~43_combout\,
	datab => \uart_tx_u1|addr[7]~2_combout\,
	datac => \uart_tx_u1|addr\(6),
	datad => \uart_tx_u1|AT|rom~37_combout\,
	combout => \uart_tx_u1|AT|rom~44_combout\);

-- Location: LCCOMB_X53_Y28_N26
\uart_tx_u1|AT|rom~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~51_combout\ = (\uart_tx_u1|addr\(0) & ((\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(3)) # (\uart_tx_u1|addr\(2)))) # (!\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(3) & \uart_tx_u1|addr\(2))))) # (!\uart_tx_u1|addr\(0) & 
-- ((\uart_tx_u1|addr\(3)) # (\uart_tx_u1|addr\(1) $ (\uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(2),
	combout => \uart_tx_u1|AT|rom~51_combout\);

-- Location: LCCOMB_X53_Y28_N18
\uart_tx_u1|AT|rom~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~55_combout\ = (\uart_tx_u1|addr\(0) & (\uart_tx_u1|addr\(3) $ (((\uart_tx_u1|addr\(1)) # (\uart_tx_u1|addr\(2)))))) # (!\uart_tx_u1|addr\(0) & ((\uart_tx_u1|addr\(1)) # ((\uart_tx_u1|addr\(3) & \uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(2),
	combout => \uart_tx_u1|AT|rom~55_combout\);

-- Location: LCCOMB_X53_Y28_N22
\uart_tx_u1|AT|rom~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~53_combout\ = (\uart_tx_u1|addr\(3) & (\uart_tx_u1|addr\(0))) # (!\uart_tx_u1|addr\(3) & ((\uart_tx_u1|addr\(2) & ((!\uart_tx_u1|addr\(1)))) # (!\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(2),
	combout => \uart_tx_u1|AT|rom~53_combout\);

-- Location: LCCOMB_X53_Y28_N0
\uart_tx_u1|AT|rom~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~52_combout\ = (\uart_tx_u1|addr\(2) & (!\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(0) $ (\uart_tx_u1|addr\(3))))) # (!\uart_tx_u1|addr\(2) & (!\uart_tx_u1|addr\(0) & ((\uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(2),
	combout => \uart_tx_u1|AT|rom~52_combout\);

-- Location: LCCOMB_X53_Y28_N24
\uart_tx_u1|AT|rom~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~54_combout\ = (\uart_tx_u1|addr\(4) & (((\uart_tx_u1|addr[5]~4_combout\) # (!\uart_tx_u1|AT|rom~52_combout\)))) # (!\uart_tx_u1|addr\(4) & (!\uart_tx_u1|AT|rom~53_combout\ & (!\uart_tx_u1|addr[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|AT|rom~53_combout\,
	datab => \uart_tx_u1|addr\(4),
	datac => \uart_tx_u1|addr[5]~4_combout\,
	datad => \uart_tx_u1|AT|rom~52_combout\,
	combout => \uart_tx_u1|AT|rom~54_combout\);

-- Location: LCCOMB_X53_Y28_N8
\uart_tx_u1|AT|rom~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~56_combout\ = (\uart_tx_u1|addr[5]~4_combout\ & ((\uart_tx_u1|AT|rom~54_combout\ & ((!\uart_tx_u1|AT|rom~55_combout\))) # (!\uart_tx_u1|AT|rom~54_combout\ & (!\uart_tx_u1|AT|rom~51_combout\)))) # (!\uart_tx_u1|addr[5]~4_combout\ & 
-- (((\uart_tx_u1|AT|rom~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|AT|rom~51_combout\,
	datab => \uart_tx_u1|AT|rom~55_combout\,
	datac => \uart_tx_u1|addr[5]~4_combout\,
	datad => \uart_tx_u1|AT|rom~54_combout\,
	combout => \uart_tx_u1|AT|rom~56_combout\);

-- Location: LCCOMB_X54_Y27_N12
\uart_tx_u1|AT|rom~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~49_combout\ = (\uart_tx_u1|addr\(4) & ((\uart_tx_u1|addr\(2) $ (\uart_tx_u1|addr\(1))) # (!\uart_tx_u1|addr\(0)))) # (!\uart_tx_u1|addr\(4) & ((\uart_tx_u1|addr\(2)) # (\uart_tx_u1|addr\(1) $ (\uart_tx_u1|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|addr\(2),
	datac => \uart_tx_u1|addr\(1),
	datad => \uart_tx_u1|addr\(0),
	combout => \uart_tx_u1|AT|rom~49_combout\);

-- Location: LCCOMB_X54_Y27_N20
\uart_tx_u1|AT|rom~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~45_combout\ = (\uart_tx_u1|addr\(4) & ((\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(0)) # (!\uart_tx_u1|addr\(2)))) # (!\uart_tx_u1|addr\(1) & ((!\uart_tx_u1|addr\(0)))))) # (!\uart_tx_u1|addr\(4) & (!\uart_tx_u1|addr\(0) & 
-- ((\uart_tx_u1|addr\(2)) # (\uart_tx_u1|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|addr\(2),
	datac => \uart_tx_u1|addr\(1),
	datad => \uart_tx_u1|addr\(0),
	combout => \uart_tx_u1|AT|rom~45_combout\);

-- Location: LCCOMB_X54_Y27_N26
\uart_tx_u1|AT|rom~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~46_combout\ = (\uart_tx_u1|addr\(0) & ((\uart_tx_u1|addr\(1) & ((!\uart_tx_u1|addr\(4)))) # (!\uart_tx_u1|addr\(1) & (!\uart_tx_u1|addr\(2))))) # (!\uart_tx_u1|addr\(0) & (((\uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|addr\(2),
	datad => \uart_tx_u1|addr\(4),
	combout => \uart_tx_u1|AT|rom~46_combout\);

-- Location: LCCOMB_X54_Y27_N24
\uart_tx_u1|AT|rom~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~47_combout\ = (\uart_tx_u1|addr\(2) & (((!\uart_tx_u1|addr\(1) & \uart_tx_u1|addr\(0))))) # (!\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(4)) # (!\uart_tx_u1|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|addr\(2),
	datac => \uart_tx_u1|addr\(1),
	datad => \uart_tx_u1|addr\(0),
	combout => \uart_tx_u1|AT|rom~47_combout\);

-- Location: LCCOMB_X54_Y27_N18
\uart_tx_u1|AT|rom~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~48_combout\ = (\uart_tx_u1|addr\(3) & (((\uart_tx_u1|addr[5]~4_combout\)) # (!\uart_tx_u1|AT|rom~46_combout\))) # (!\uart_tx_u1|addr\(3) & (((!\uart_tx_u1|addr[5]~4_combout\ & !\uart_tx_u1|AT|rom~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|AT|rom~46_combout\,
	datab => \uart_tx_u1|addr\(3),
	datac => \uart_tx_u1|addr[5]~4_combout\,
	datad => \uart_tx_u1|AT|rom~47_combout\,
	combout => \uart_tx_u1|AT|rom~48_combout\);

-- Location: LCCOMB_X54_Y27_N30
\uart_tx_u1|AT|rom~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~50_combout\ = (\uart_tx_u1|addr[5]~4_combout\ & ((\uart_tx_u1|AT|rom~48_combout\ & (!\uart_tx_u1|AT|rom~49_combout\)) # (!\uart_tx_u1|AT|rom~48_combout\ & ((!\uart_tx_u1|AT|rom~45_combout\))))) # (!\uart_tx_u1|addr[5]~4_combout\ & 
-- (((\uart_tx_u1|AT|rom~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|AT|rom~49_combout\,
	datab => \uart_tx_u1|AT|rom~45_combout\,
	datac => \uart_tx_u1|addr[5]~4_combout\,
	datad => \uart_tx_u1|AT|rom~48_combout\,
	combout => \uart_tx_u1|AT|rom~50_combout\);

-- Location: LCCOMB_X53_Y28_N2
\uart_tx_u1|AT|rom~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~57_combout\ = (!\uart_tx_u1|addr[7]~2_combout\ & ((\uart_tx_u1|addr\(6) & ((\uart_tx_u1|AT|rom~50_combout\))) # (!\uart_tx_u1|addr\(6) & (\uart_tx_u1|AT|rom~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr[7]~2_combout\,
	datab => \uart_tx_u1|addr\(6),
	datac => \uart_tx_u1|AT|rom~56_combout\,
	datad => \uart_tx_u1|AT|rom~50_combout\,
	combout => \uart_tx_u1|AT|rom~57_combout\);

-- Location: LCCOMB_X56_Y28_N4
\uart_tx_u1|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Equal3~1_combout\ = (\uart_tx_u1|AT|rom~44_combout\ & (!\uart_tx_u1|AT|rom~57_combout\ & ((!\uart_tx_u1|AT|rom~19_combout\) # (!\uart_tx_u1|AT|rom~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|AT|rom~62_combout\,
	datab => \uart_tx_u1|AT|rom~19_combout\,
	datac => \uart_tx_u1|AT|rom~44_combout\,
	datad => \uart_tx_u1|AT|rom~57_combout\,
	combout => \uart_tx_u1|Equal3~1_combout\);

-- Location: LCCOMB_X59_Y28_N22
\uart_tx_u1|AT|rom~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~81_combout\ = (\uart_tx_u1|addr\(4)) # (\uart_tx_u1|addr\(2) $ (\uart_tx_u1|addr\(3) $ (\uart_tx_u1|addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(4),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(0),
	combout => \uart_tx_u1|AT|rom~81_combout\);

-- Location: LCCOMB_X59_Y28_N26
\uart_tx_u1|AT|rom~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~77_combout\ = (!\uart_tx_u1|addr\(4) & ((\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(3) $ (!\uart_tx_u1|addr\(0)))) # (!\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(3) & !\uart_tx_u1|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(4),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(0),
	combout => \uart_tx_u1|AT|rom~77_combout\);

-- Location: LCCOMB_X59_Y28_N30
\uart_tx_u1|AT|rom~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~79_combout\ = (\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(4) & (\uart_tx_u1|addr\(3) $ (\uart_tx_u1|addr\(0))))) # (!\uart_tx_u1|addr\(2) & (((!\uart_tx_u1|addr\(3) & \uart_tx_u1|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(4),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(0),
	combout => \uart_tx_u1|AT|rom~79_combout\);

-- Location: LCCOMB_X59_Y28_N12
\uart_tx_u1|AT|rom~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~78_combout\ = (\uart_tx_u1|addr\(4) & ((\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(3)) # (\uart_tx_u1|addr\(0)))) # (!\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(3) $ (!\uart_tx_u1|addr\(0)))))) # (!\uart_tx_u1|addr\(4) & 
-- (!\uart_tx_u1|addr\(0) & ((\uart_tx_u1|addr\(2)) # (\uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(4),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(0),
	combout => \uart_tx_u1|AT|rom~78_combout\);

-- Location: LCCOMB_X59_Y28_N24
\uart_tx_u1|AT|rom~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~80_combout\ = (\uart_tx_u1|addr\(1) & (((\uart_tx_u1|addr[5]~4_combout\) # (\uart_tx_u1|AT|rom~78_combout\)))) # (!\uart_tx_u1|addr\(1) & (\uart_tx_u1|AT|rom~79_combout\ & (!\uart_tx_u1|addr[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|AT|rom~79_combout\,
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr[5]~4_combout\,
	datad => \uart_tx_u1|AT|rom~78_combout\,
	combout => \uart_tx_u1|AT|rom~80_combout\);

-- Location: LCCOMB_X59_Y28_N28
\uart_tx_u1|AT|rom~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~82_combout\ = (\uart_tx_u1|addr[5]~4_combout\ & ((\uart_tx_u1|AT|rom~80_combout\ & (!\uart_tx_u1|AT|rom~81_combout\)) # (!\uart_tx_u1|AT|rom~80_combout\ & ((\uart_tx_u1|AT|rom~77_combout\))))) # (!\uart_tx_u1|addr[5]~4_combout\ & 
-- (((\uart_tx_u1|AT|rom~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|AT|rom~81_combout\,
	datab => \uart_tx_u1|AT|rom~77_combout\,
	datac => \uart_tx_u1|addr[5]~4_combout\,
	datad => \uart_tx_u1|AT|rom~80_combout\,
	combout => \uart_tx_u1|AT|rom~82_combout\);

-- Location: LCCOMB_X52_Y28_N26
\uart_tx_u1|AT|rom~128\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~128_combout\ = (\uart_tx_u1|addr\(2) & (((\uart_tx_u1|addr\(3))))) # (!\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(0) $ (!\uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(2),
	combout => \uart_tx_u1|AT|rom~128_combout\);

-- Location: LCCOMB_X52_Y28_N0
\uart_tx_u1|AT|rom~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~117_combout\ = (\uart_tx_u1|addr\(3) & (((!\uart_tx_u1|addr\(2))))) # (!\uart_tx_u1|addr\(3) & ((\uart_tx_u1|addr\(0) & (\uart_tx_u1|addr\(1))) # (!\uart_tx_u1|addr\(0) & ((\uart_tx_u1|addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(2),
	combout => \uart_tx_u1|AT|rom~117_combout\);

-- Location: LCCOMB_X52_Y28_N8
\uart_tx_u1|AT|rom~132\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~132_combout\ = (!\uart_tx_u1|addr\(6) & ((\uart_tx_u1|addr\(4) & ((\uart_tx_u1|AT|rom~117_combout\))) # (!\uart_tx_u1|addr\(4) & (!\uart_tx_u1|AT|rom~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|addr\(6),
	datac => \uart_tx_u1|AT|rom~128_combout\,
	datad => \uart_tx_u1|AT|rom~117_combout\,
	combout => \uart_tx_u1|AT|rom~132_combout\);

-- Location: LCCOMB_X52_Y28_N18
\uart_tx_u1|AT|rom~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~118_combout\ = (\uart_tx_u1|addr\(2) & (!\uart_tx_u1|addr\(6) & (\uart_tx_u1|addr\(1) $ (\uart_tx_u1|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(6),
	datac => \uart_tx_u1|addr\(1),
	datad => \uart_tx_u1|addr\(0),
	combout => \uart_tx_u1|AT|rom~118_combout\);

-- Location: LCCOMB_X52_Y28_N12
\uart_tx_u1|AT|rom~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~119_combout\ = (\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(6) $ (((!\uart_tx_u1|addr\(1) & !\uart_tx_u1|addr\(0)))))) # (!\uart_tx_u1|addr\(2) & (!\uart_tx_u1|addr\(6) & (\uart_tx_u1|addr\(1) & \uart_tx_u1|addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(6),
	datac => \uart_tx_u1|addr\(1),
	datad => \uart_tx_u1|addr\(0),
	combout => \uart_tx_u1|AT|rom~119_combout\);

-- Location: LCCOMB_X52_Y28_N14
\uart_tx_u1|AT|rom~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~120_combout\ = (\uart_tx_u1|addr\(4) & (\uart_tx_u1|AT|rom~118_combout\ & (\uart_tx_u1|addr\(3)))) # (!\uart_tx_u1|addr\(4) & (((!\uart_tx_u1|addr\(3) & !\uart_tx_u1|AT|rom~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|AT|rom~118_combout\,
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|AT|rom~119_combout\,
	combout => \uart_tx_u1|AT|rom~120_combout\);

-- Location: LCCOMB_X52_Y28_N16
\uart_tx_u1|AT|rom~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~121_combout\ = (\uart_tx_u1|addr\(1) & (((!\uart_tx_u1|addr\(0) & !\uart_tx_u1|addr\(6))) # (!\uart_tx_u1|addr\(2)))) # (!\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(0)) # ((\uart_tx_u1|addr\(6)) # (\uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|addr\(6),
	datad => \uart_tx_u1|addr\(2),
	combout => \uart_tx_u1|AT|rom~121_combout\);

-- Location: LCCOMB_X52_Y28_N4
\uart_tx_u1|AT|rom~125\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~125_combout\ = (\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(0) & (!\uart_tx_u1|addr\(6))) # (!\uart_tx_u1|addr\(0) & ((\uart_tx_u1|addr\(2)))))) # (!\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(0) $ 
-- (!\uart_tx_u1|addr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|addr\(6),
	datad => \uart_tx_u1|addr\(2),
	combout => \uart_tx_u1|AT|rom~125_combout\);

-- Location: LCCOMB_X52_Y28_N30
\uart_tx_u1|AT|rom~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~122_combout\ = (\uart_tx_u1|addr\(6) & (!\uart_tx_u1|addr\(1) & ((!\uart_tx_u1|addr\(2)) # (!\uart_tx_u1|addr\(0))))) # (!\uart_tx_u1|addr\(6) & (\uart_tx_u1|addr\(1) $ (((\uart_tx_u1|addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|addr\(6),
	datad => \uart_tx_u1|addr\(2),
	combout => \uart_tx_u1|AT|rom~122_combout\);

-- Location: LCCOMB_X52_Y28_N28
\uart_tx_u1|AT|rom~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~123_combout\ = (\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(6) & ((\uart_tx_u1|addr\(2)))) # (!\uart_tx_u1|addr\(6) & (!\uart_tx_u1|addr\(0) & !\uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(6),
	datac => \uart_tx_u1|addr\(0),
	datad => \uart_tx_u1|addr\(2),
	combout => \uart_tx_u1|AT|rom~123_combout\);

-- Location: LCCOMB_X52_Y28_N2
\uart_tx_u1|AT|rom~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~124_combout\ = (\uart_tx_u1|addr\(4) & (\uart_tx_u1|addr\(3))) # (!\uart_tx_u1|addr\(4) & ((\uart_tx_u1|addr\(3) & (!\uart_tx_u1|AT|rom~122_combout\)) # (!\uart_tx_u1|addr\(3) & ((!\uart_tx_u1|AT|rom~123_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|addr\(3),
	datac => \uart_tx_u1|AT|rom~122_combout\,
	datad => \uart_tx_u1|AT|rom~123_combout\,
	combout => \uart_tx_u1|AT|rom~124_combout\);

-- Location: LCCOMB_X52_Y28_N6
\uart_tx_u1|AT|rom~126\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~126_combout\ = (\uart_tx_u1|addr\(4) & ((\uart_tx_u1|AT|rom~124_combout\ & ((\uart_tx_u1|AT|rom~125_combout\))) # (!\uart_tx_u1|AT|rom~124_combout\ & (\uart_tx_u1|AT|rom~121_combout\)))) # (!\uart_tx_u1|addr\(4) & 
-- (((\uart_tx_u1|AT|rom~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|AT|rom~121_combout\,
	datac => \uart_tx_u1|AT|rom~125_combout\,
	datad => \uart_tx_u1|AT|rom~124_combout\,
	combout => \uart_tx_u1|AT|rom~126_combout\);

-- Location: LCCOMB_X52_Y28_N20
\uart_tx_u1|AT|rom~127\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~127_combout\ = (\uart_tx_u1|addr[5]~4_combout\ & ((\uart_tx_u1|addr[7]~2_combout\) # ((\uart_tx_u1|AT|rom~120_combout\)))) # (!\uart_tx_u1|addr[5]~4_combout\ & (!\uart_tx_u1|addr[7]~2_combout\ & ((\uart_tx_u1|AT|rom~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr[5]~4_combout\,
	datab => \uart_tx_u1|addr[7]~2_combout\,
	datac => \uart_tx_u1|AT|rom~120_combout\,
	datad => \uart_tx_u1|AT|rom~126_combout\,
	combout => \uart_tx_u1|AT|rom~127_combout\);

-- Location: LCCOMB_X52_Y28_N22
\uart_tx_u1|AT|rom~133\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~133_combout\ = (\uart_tx_u1|addr[7]~2_combout\ & (\uart_tx_u1|AT|rom~132_combout\ & (\uart_tx_u1|addr\(4) $ (\uart_tx_u1|AT|rom~127_combout\)))) # (!\uart_tx_u1|addr[7]~2_combout\ & (((\uart_tx_u1|AT|rom~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|AT|rom~132_combout\,
	datac => \uart_tx_u1|addr[7]~2_combout\,
	datad => \uart_tx_u1|AT|rom~127_combout\,
	combout => \uart_tx_u1|AT|rom~133_combout\);

-- Location: LCCOMB_X55_Y27_N28
\uart_tx_u1|AT|rom~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~74_combout\ = (\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(0) & ((\uart_tx_u1|addr[5]~4_combout\))) # (!\uart_tx_u1|addr\(0) & (!\uart_tx_u1|addr\(2) & !\uart_tx_u1|addr[5]~4_combout\)))) # (!\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(0) 
-- $ (((\uart_tx_u1|addr\(2) & \uart_tx_u1|addr[5]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|addr\(1),
	datad => \uart_tx_u1|addr[5]~4_combout\,
	combout => \uart_tx_u1|AT|rom~74_combout\);

-- Location: LCCOMB_X55_Y27_N8
\uart_tx_u1|AT|rom~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~70_combout\ = (\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(0) $ (((\uart_tx_u1|addr\(2)) # (!\uart_tx_u1|addr[5]~4_combout\))))) # (!\uart_tx_u1|addr\(1) & (((\uart_tx_u1|addr\(0)) # (\uart_tx_u1|addr[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|addr\(1),
	datad => \uart_tx_u1|addr[5]~4_combout\,
	combout => \uart_tx_u1|AT|rom~70_combout\);

-- Location: LCCOMB_X55_Y27_N22
\uart_tx_u1|AT|rom~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~71_combout\ = (\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(0) & ((\uart_tx_u1|addr[5]~4_combout\))) # (!\uart_tx_u1|addr\(0) & (!\uart_tx_u1|addr\(2) & !\uart_tx_u1|addr[5]~4_combout\)))) # (!\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(2) 
-- & ((!\uart_tx_u1|addr[5]~4_combout\))) # (!\uart_tx_u1|addr\(2) & (!\uart_tx_u1|addr\(0) & \uart_tx_u1|addr[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(2),
	datac => \uart_tx_u1|addr\(0),
	datad => \uart_tx_u1|addr[5]~4_combout\,
	combout => \uart_tx_u1|AT|rom~71_combout\);

-- Location: LCCOMB_X55_Y27_N16
\uart_tx_u1|AT|rom~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~72_combout\ = (\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(0) & (!\uart_tx_u1|addr\(2) & \uart_tx_u1|addr[5]~4_combout\)) # (!\uart_tx_u1|addr\(0) & ((!\uart_tx_u1|addr[5]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(2),
	datac => \uart_tx_u1|addr\(0),
	datad => \uart_tx_u1|addr[5]~4_combout\,
	combout => \uart_tx_u1|AT|rom~72_combout\);

-- Location: LCCOMB_X55_Y27_N2
\uart_tx_u1|AT|rom~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~73_combout\ = (\uart_tx_u1|addr\(3) & ((\uart_tx_u1|addr\(4)) # ((\uart_tx_u1|AT|rom~71_combout\)))) # (!\uart_tx_u1|addr\(3) & (!\uart_tx_u1|addr\(4) & ((\uart_tx_u1|AT|rom~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(3),
	datab => \uart_tx_u1|addr\(4),
	datac => \uart_tx_u1|AT|rom~71_combout\,
	datad => \uart_tx_u1|AT|rom~72_combout\,
	combout => \uart_tx_u1|AT|rom~73_combout\);

-- Location: LCCOMB_X55_Y27_N26
\uart_tx_u1|AT|rom~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~75_combout\ = (\uart_tx_u1|addr\(4) & ((\uart_tx_u1|AT|rom~73_combout\ & (\uart_tx_u1|AT|rom~74_combout\)) # (!\uart_tx_u1|AT|rom~73_combout\ & ((!\uart_tx_u1|AT|rom~70_combout\))))) # (!\uart_tx_u1|addr\(4) & 
-- (((\uart_tx_u1|AT|rom~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|AT|rom~74_combout\,
	datac => \uart_tx_u1|AT|rom~70_combout\,
	datad => \uart_tx_u1|AT|rom~73_combout\,
	combout => \uart_tx_u1|AT|rom~75_combout\);

-- Location: LCCOMB_X54_Y27_N8
\uart_tx_u1|AT|rom~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~68_combout\ = (\uart_tx_u1|addr\(4) & (\uart_tx_u1|addr\(0) $ (((\uart_tx_u1|addr\(2) & \uart_tx_u1|addr[5]~4_combout\))))) # (!\uart_tx_u1|addr\(4) & (!\uart_tx_u1|addr\(0) & ((\uart_tx_u1|addr\(2)) # 
-- (\uart_tx_u1|addr[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|addr\(2),
	datad => \uart_tx_u1|addr[5]~4_combout\,
	combout => \uart_tx_u1|AT|rom~68_combout\);

-- Location: LCCOMB_X54_Y27_N4
\uart_tx_u1|AT|rom~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~64_combout\ = (\uart_tx_u1|addr\(0) & (!\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(4) $ (!\uart_tx_u1|addr[5]~4_combout\)))) # (!\uart_tx_u1|addr\(0) & (\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(4)) # 
-- (!\uart_tx_u1|addr[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|addr\(2),
	datad => \uart_tx_u1|addr[5]~4_combout\,
	combout => \uart_tx_u1|AT|rom~64_combout\);

-- Location: LCCOMB_X54_Y27_N22
\uart_tx_u1|AT|rom~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~65_combout\ = (\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(0) $ (((!\uart_tx_u1|addr\(4) & \uart_tx_u1|addr[5]~4_combout\))))) # (!\uart_tx_u1|addr\(2) & (((\uart_tx_u1|addr\(0) & \uart_tx_u1|addr[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|addr\(2),
	datad => \uart_tx_u1|addr[5]~4_combout\,
	combout => \uart_tx_u1|AT|rom~65_combout\);

-- Location: LCCOMB_X54_Y27_N28
\uart_tx_u1|AT|rom~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~66_combout\ = (\uart_tx_u1|addr\(4) & (!\uart_tx_u1|addr\(0) & (!\uart_tx_u1|addr\(2) & \uart_tx_u1|addr[5]~4_combout\))) # (!\uart_tx_u1|addr\(4) & (\uart_tx_u1|addr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|addr\(2),
	datad => \uart_tx_u1|addr[5]~4_combout\,
	combout => \uart_tx_u1|AT|rom~66_combout\);

-- Location: LCCOMB_X54_Y27_N2
\uart_tx_u1|AT|rom~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~67_combout\ = (\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(3))) # (!\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(3) & (!\uart_tx_u1|AT|rom~65_combout\)) # (!\uart_tx_u1|addr\(3) & ((\uart_tx_u1|AT|rom~66_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(3),
	datac => \uart_tx_u1|AT|rom~65_combout\,
	datad => \uart_tx_u1|AT|rom~66_combout\,
	combout => \uart_tx_u1|AT|rom~67_combout\);

-- Location: LCCOMB_X54_Y27_N14
\uart_tx_u1|AT|rom~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~69_combout\ = (\uart_tx_u1|addr\(1) & ((\uart_tx_u1|AT|rom~67_combout\ & (\uart_tx_u1|AT|rom~68_combout\)) # (!\uart_tx_u1|AT|rom~67_combout\ & ((\uart_tx_u1|AT|rom~64_combout\))))) # (!\uart_tx_u1|addr\(1) & 
-- (((\uart_tx_u1|AT|rom~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|AT|rom~68_combout\,
	datac => \uart_tx_u1|AT|rom~64_combout\,
	datad => \uart_tx_u1|AT|rom~67_combout\,
	combout => \uart_tx_u1|AT|rom~69_combout\);

-- Location: LCCOMB_X55_Y27_N24
\uart_tx_u1|AT|rom~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~76_combout\ = (!\uart_tx_u1|addr[7]~2_combout\ & ((\uart_tx_u1|addr\(6) & ((\uart_tx_u1|AT|rom~69_combout\))) # (!\uart_tx_u1|addr\(6) & (\uart_tx_u1|AT|rom~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(6),
	datab => \uart_tx_u1|addr[7]~2_combout\,
	datac => \uart_tx_u1|AT|rom~75_combout\,
	datad => \uart_tx_u1|AT|rom~69_combout\,
	combout => \uart_tx_u1|AT|rom~76_combout\);

-- Location: LCCOMB_X56_Y28_N6
\uart_tx_u1|Equal3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Equal3~2_combout\ = (!\uart_tx_u1|AT|rom~133_combout\ & ((\uart_tx_u1|AT|rom~76_combout\) # ((\uart_tx_u1|AT|rom~19_combout\ & \uart_tx_u1|AT|rom~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|AT|rom~19_combout\,
	datab => \uart_tx_u1|AT|rom~82_combout\,
	datac => \uart_tx_u1|AT|rom~133_combout\,
	datad => \uart_tx_u1|AT|rom~76_combout\,
	combout => \uart_tx_u1|Equal3~2_combout\);

-- Location: LCCOMB_X56_Y28_N12
\uart_tx_u1|Equal3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Equal3~3_combout\ = (\uart_tx_u1|Equal3~0_combout\ & (!\uart_tx_u1|AT|rom~131_combout\ & (\uart_tx_u1|Equal3~1_combout\ & \uart_tx_u1|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Equal3~0_combout\,
	datab => \uart_tx_u1|AT|rom~131_combout\,
	datac => \uart_tx_u1|Equal3~1_combout\,
	datad => \uart_tx_u1|Equal3~2_combout\,
	combout => \uart_tx_u1|Equal3~3_combout\);

-- Location: LCCOMB_X56_Y28_N16
\uart_tx_u1|cnt_rom[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|cnt_rom[0]~7_combout\ = \uart_tx_u1|cnt_rom\(0) $ (((\uart_tx_u1|stage_tx.SEND_DATA~q\ & (\uart_tx_u1|always0~0_combout\ & \uart_tx_u1|Equal3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|stage_tx.SEND_DATA~q\,
	datab => \uart_tx_u1|always0~0_combout\,
	datac => \uart_tx_u1|cnt_rom\(0),
	datad => \uart_tx_u1|Equal3~3_combout\,
	combout => \uart_tx_u1|cnt_rom[0]~7_combout\);

-- Location: FF_X56_Y28_N17
\uart_tx_u1|cnt_rom[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|cnt_rom[0]~7_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|cnt_rom\(0));

-- Location: LCCOMB_X56_Y28_N30
\uart_tx_u1|cnt_rom[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|cnt_rom[1]~5_combout\ = \uart_tx_u1|cnt_rom\(1) $ (((\uart_tx_u1|cnt_rom\(0) & (\uart_tx_u1|cnt_rom[3]~2_combout\ & \uart_tx_u1|Equal3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|cnt_rom\(0),
	datab => \uart_tx_u1|cnt_rom[3]~2_combout\,
	datac => \uart_tx_u1|cnt_rom\(1),
	datad => \uart_tx_u1|Equal3~3_combout\,
	combout => \uart_tx_u1|cnt_rom[1]~5_combout\);

-- Location: FF_X56_Y28_N31
\uart_tx_u1|cnt_rom[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|cnt_rom[1]~5_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|cnt_rom\(1));

-- Location: LCCOMB_X57_Y28_N18
\uart_tx_u1|cnt_rom[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|cnt_rom[2]~3_combout\ = (\uart_tx_u1|cnt_rom[3]~2_combout\ & (\uart_tx_u1|cnt_rom\(1) & (\uart_tx_u1|cnt_rom\(0) & \uart_tx_u1|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|cnt_rom[3]~2_combout\,
	datab => \uart_tx_u1|cnt_rom\(1),
	datac => \uart_tx_u1|cnt_rom\(0),
	datad => \uart_tx_u1|Equal3~3_combout\,
	combout => \uart_tx_u1|cnt_rom[2]~3_combout\);

-- Location: LCCOMB_X57_Y28_N22
\uart_tx_u1|cnt_rom[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|cnt_rom[2]~4_combout\ = \uart_tx_u1|cnt_rom\(2) $ (\uart_tx_u1|cnt_rom[2]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|cnt_rom\(2),
	datad => \uart_tx_u1|cnt_rom[2]~3_combout\,
	combout => \uart_tx_u1|cnt_rom[2]~4_combout\);

-- Location: FF_X57_Y28_N23
\uart_tx_u1|cnt_rom[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|cnt_rom[2]~4_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|cnt_rom\(2));

-- Location: LCCOMB_X57_Y28_N12
\uart_tx_u1|cnt_rom[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|cnt_rom[3]~6_combout\ = \uart_tx_u1|cnt_rom\(3) $ (((\uart_tx_u1|cnt_rom\(2) & \uart_tx_u1|cnt_rom[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|cnt_rom\(2),
	datac => \uart_tx_u1|cnt_rom\(3),
	datad => \uart_tx_u1|cnt_rom[2]~3_combout\,
	combout => \uart_tx_u1|cnt_rom[3]~6_combout\);

-- Location: FF_X57_Y28_N13
\uart_tx_u1|cnt_rom[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|cnt_rom[3]~6_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|cnt_rom\(3));

-- Location: LCCOMB_X57_Y28_N10
\mode_LED_u1|always1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|always1~0_combout\ = (\uart_tx_u1|cnt_rom\(2) & (\uart_tx_u1|cnt_rom\(1) & (\uart_tx_u1|cnt_rom\(0) & !\uart_tx_u1|cnt_rom\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|cnt_rom\(2),
	datab => \uart_tx_u1|cnt_rom\(1),
	datac => \uart_tx_u1|cnt_rom\(0),
	datad => \uart_tx_u1|cnt_rom\(3),
	combout => \mode_LED_u1|always1~0_combout\);

-- Location: LCCOMB_X56_Y28_N24
\uart_tx_u1|always0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|always0~1_combout\ = (\mode_LED_u1|always1~0_combout\) # ((\uart_tx_u1|Equal2~2_combout\) # ((!\receiver_OK_ser_u1|OK~q\ & \uart_tx_u1|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|always1~0_combout\,
	datab => \uart_tx_u1|Equal2~2_combout\,
	datac => \receiver_OK_ser_u1|OK~q\,
	datad => \uart_tx_u1|Equal3~3_combout\,
	combout => \uart_tx_u1|always0~1_combout\);

-- Location: LCCOMB_X57_Y28_N26
\uart_tx_u1|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector0~1_combout\ = (\uart_tx_u1|Selector0~0_combout\) # ((\uart_tx_u1|stage_tx.STOP~q\ & !\uart_tx_u1|always0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|stage_tx.STOP~q\,
	datac => \uart_tx_u1|Selector0~0_combout\,
	datad => \uart_tx_u1|always0~1_combout\,
	combout => \uart_tx_u1|Selector0~1_combout\);

-- Location: FF_X57_Y28_N27
\uart_tx_u1|stage_tx.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector0~1_combout\,
	clrn => \RST_n~input_o\,
	ena => \tx_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|stage_tx.START~q\);

-- Location: LCCOMB_X57_Y28_N24
\uart_tx_u1|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector1~0_combout\ = (\uart_tx_u1|stage_tx.START~q\ & (((!\uart_tx_u1|always0~0_combout\ & \uart_tx_u1|stage_tx.SEND_DATA~q\)) # (!\uart_tx_u1|Equal2~2_combout\))) # (!\uart_tx_u1|stage_tx.START~q\ & (!\uart_tx_u1|always0~0_combout\ & 
-- (\uart_tx_u1|stage_tx.SEND_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|stage_tx.START~q\,
	datab => \uart_tx_u1|always0~0_combout\,
	datac => \uart_tx_u1|stage_tx.SEND_DATA~q\,
	datad => \uart_tx_u1|Equal2~2_combout\,
	combout => \uart_tx_u1|Selector1~0_combout\);

-- Location: FF_X57_Y28_N25
\uart_tx_u1|stage_tx.SEND_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector1~0_combout\,
	clrn => \RST_n~input_o\,
	ena => \tx_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|stage_tx.SEND_DATA~q\);

-- Location: LCCOMB_X61_Y28_N18
\uart_tx_u1|start_cnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|start_cnt~0_combout\ = (\uart_tx_u1|stage_tx.SEND_DATA~q\ & ((\tx_en~input_o\ & ((!\uart_tx_u1|always0~0_combout\))) # (!\tx_en~input_o\ & (\uart_tx_u1|start_cnt~q\)))) # (!\uart_tx_u1|stage_tx.SEND_DATA~q\ & (((\uart_tx_u1|start_cnt~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|stage_tx.SEND_DATA~q\,
	datab => \tx_en~input_o\,
	datac => \uart_tx_u1|start_cnt~q\,
	datad => \uart_tx_u1|always0~0_combout\,
	combout => \uart_tx_u1|start_cnt~0_combout\);

-- Location: FF_X61_Y28_N19
\uart_tx_u1|start_cnt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|start_cnt~0_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|start_cnt~q\);

-- Location: LCCOMB_X61_Y28_N2
\uart_tx_u1|cnt_bit[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|cnt_bit[0]~2_combout\ = \uart_tx_u1|cnt_bit\(0) $ (((!\uart_tx_u1|Equal2~2_combout\ & (\uart_tx_u1|start_cnt~q\ & \uart_tx_u1|stage_tx.SEND_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Equal2~2_combout\,
	datab => \uart_tx_u1|start_cnt~q\,
	datac => \uart_tx_u1|cnt_bit\(0),
	datad => \uart_tx_u1|stage_tx.SEND_DATA~q\,
	combout => \uart_tx_u1|cnt_bit[0]~2_combout\);

-- Location: FF_X61_Y28_N3
\uart_tx_u1|cnt_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|cnt_bit[0]~2_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|cnt_bit\(0));

-- Location: LCCOMB_X61_Y28_N16
\uart_tx_u1|cnt_bit[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|cnt_bit[1]~0_combout\ = (!\uart_tx_u1|Equal2~2_combout\ & (\uart_tx_u1|start_cnt~q\ & (\uart_tx_u1|cnt_bit\(0) & \uart_tx_u1|stage_tx.SEND_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Equal2~2_combout\,
	datab => \uart_tx_u1|start_cnt~q\,
	datac => \uart_tx_u1|cnt_bit\(0),
	datad => \uart_tx_u1|stage_tx.SEND_DATA~q\,
	combout => \uart_tx_u1|cnt_bit[1]~0_combout\);

-- Location: LCCOMB_X61_Y28_N24
\uart_tx_u1|cnt_bit[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|cnt_bit[1]~1_combout\ = \uart_tx_u1|cnt_bit\(1) $ (\uart_tx_u1|cnt_bit[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|cnt_bit\(1),
	datad => \uart_tx_u1|cnt_bit[1]~0_combout\,
	combout => \uart_tx_u1|cnt_bit[1]~1_combout\);

-- Location: FF_X61_Y28_N25
\uart_tx_u1|cnt_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|cnt_bit[1]~1_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|cnt_bit\(1));

-- Location: LCCOMB_X61_Y28_N28
\uart_tx_u1|cnt_bit[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|cnt_bit[2]~3_combout\ = \uart_tx_u1|cnt_bit\(2) $ (((\uart_tx_u1|cnt_bit\(1) & \uart_tx_u1|cnt_bit[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|cnt_bit\(1),
	datac => \uart_tx_u1|cnt_bit\(2),
	datad => \uart_tx_u1|cnt_bit[1]~0_combout\,
	combout => \uart_tx_u1|cnt_bit[2]~3_combout\);

-- Location: FF_X61_Y28_N29
\uart_tx_u1|cnt_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|cnt_bit[2]~3_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|cnt_bit\(2));

-- Location: LCCOMB_X61_Y28_N12
\uart_tx_u1|always0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|always0~0_combout\ = (!\uart_tx_u1|Equal2~2_combout\ & (\uart_tx_u1|cnt_bit\(2) & (\uart_tx_u1|cnt_bit\(0) & \uart_tx_u1|cnt_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Equal2~2_combout\,
	datab => \uart_tx_u1|cnt_bit\(2),
	datac => \uart_tx_u1|cnt_bit\(0),
	datad => \uart_tx_u1|cnt_bit\(1),
	combout => \uart_tx_u1|always0~0_combout\);

-- Location: LCCOMB_X57_Y28_N8
\uart_tx_u1|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector2~0_combout\ = (\uart_tx_u1|always0~0_combout\ & ((\uart_tx_u1|stage_tx.SEND_DATA~q\) # ((\uart_tx_u1|stage_tx.STOP~q\ & \uart_tx_u1|always0~1_combout\)))) # (!\uart_tx_u1|always0~0_combout\ & (((\uart_tx_u1|stage_tx.STOP~q\ & 
-- \uart_tx_u1|always0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|always0~0_combout\,
	datab => \uart_tx_u1|stage_tx.SEND_DATA~q\,
	datac => \uart_tx_u1|stage_tx.STOP~q\,
	datad => \uart_tx_u1|always0~1_combout\,
	combout => \uart_tx_u1|Selector2~0_combout\);

-- Location: FF_X57_Y28_N9
\uart_tx_u1|stage_tx.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector2~0_combout\,
	clrn => \RST_n~input_o\,
	ena => \tx_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|stage_tx.STOP~q\);

-- Location: LCCOMB_X53_Y28_N10
\uart_tx_u1|tx~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|tx~0_combout\ = (!\uart_tx_u1|stage_tx.SEND_DATA~q\ & (!\uart_tx_u1|stage_tx.START~q\ & ((\uart_tx_u1|stage_tx.STOP~q\) # (!\uart_tx_u1|tx~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|stage_tx.STOP~q\,
	datab => \uart_tx_u1|stage_tx.SEND_DATA~q\,
	datac => \uart_tx_u1|stage_tx.START~q\,
	datad => \uart_tx_u1|tx~q\,
	combout => \uart_tx_u1|tx~0_combout\);

-- Location: LCCOMB_X53_Y28_N20
\uart_tx_u1|tx~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|tx~1_combout\ = (!\uart_tx_u1|cnt_bit\(1) & ((\uart_tx_u1|cnt_bit\(0) & (\uart_tx_u1|AT|rom~131_combout\)) # (!\uart_tx_u1|cnt_bit\(0) & ((\uart_tx_u1|AT|rom~116_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|cnt_bit\(0),
	datab => \uart_tx_u1|cnt_bit\(1),
	datac => \uart_tx_u1|AT|rom~131_combout\,
	datad => \uart_tx_u1|AT|rom~116_combout\,
	combout => \uart_tx_u1|tx~1_combout\);

-- Location: LCCOMB_X53_Y28_N14
\uart_tx_u1|tx~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|tx~2_combout\ = (\uart_tx_u1|tx~1_combout\) # ((!\uart_tx_u1|cnt_bit\(0) & (\uart_tx_u1|AT|rom~133_combout\ & \uart_tx_u1|cnt_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|cnt_bit\(0),
	datab => \uart_tx_u1|AT|rom~133_combout\,
	datac => \uart_tx_u1|cnt_bit\(1),
	datad => \uart_tx_u1|tx~1_combout\,
	combout => \uart_tx_u1|tx~2_combout\);

-- Location: LCCOMB_X53_Y28_N4
\uart_tx_u1|AT|rom~129\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~129_combout\ = (\uart_tx_u1|AT|rom~18_combout\) # ((\uart_tx_u1|addr[7]~2_combout\ & (!\uart_tx_u1|addr\(6) & \uart_tx_u1|AT|rom~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr[7]~2_combout\,
	datab => \uart_tx_u1|addr\(6),
	datac => \uart_tx_u1|AT|rom~24_combout\,
	datad => \uart_tx_u1|AT|rom~18_combout\,
	combout => \uart_tx_u1|AT|rom~129_combout\);

-- Location: LCCOMB_X53_Y28_N28
\uart_tx_u1|AT|rom~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~63_combout\ = (\uart_tx_u1|AT|rom~57_combout\) # ((\uart_tx_u1|addr[7]~2_combout\ & (!\uart_tx_u1|addr\(6) & \uart_tx_u1|AT|rom~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr[7]~2_combout\,
	datab => \uart_tx_u1|addr\(6),
	datac => \uart_tx_u1|AT|rom~62_combout\,
	datad => \uart_tx_u1|AT|rom~57_combout\,
	combout => \uart_tx_u1|AT|rom~63_combout\);

-- Location: LCCOMB_X53_Y28_N30
\uart_tx_u1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Mux0~0_combout\ = (\uart_tx_u1|cnt_bit\(0) & ((\uart_tx_u1|cnt_bit\(1)) # ((\uart_tx_u1|AT|rom~44_combout\)))) # (!\uart_tx_u1|cnt_bit\(0) & (!\uart_tx_u1|cnt_bit\(1) & ((\uart_tx_u1|AT|rom~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|cnt_bit\(0),
	datab => \uart_tx_u1|cnt_bit\(1),
	datac => \uart_tx_u1|AT|rom~44_combout\,
	datad => \uart_tx_u1|AT|rom~63_combout\,
	combout => \uart_tx_u1|Mux0~0_combout\);

-- Location: LCCOMB_X54_Y27_N10
\uart_tx_u1|AT|rom~130\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~130_combout\ = (\uart_tx_u1|AT|rom~76_combout\) # ((\uart_tx_u1|addr[7]~2_combout\ & (!\uart_tx_u1|addr\(6) & \uart_tx_u1|AT|rom~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr[7]~2_combout\,
	datab => \uart_tx_u1|addr\(6),
	datac => \uart_tx_u1|AT|rom~82_combout\,
	datad => \uart_tx_u1|AT|rom~76_combout\,
	combout => \uart_tx_u1|AT|rom~130_combout\);

-- Location: LCCOMB_X53_Y28_N16
\uart_tx_u1|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Mux0~1_combout\ = (\uart_tx_u1|cnt_bit\(1) & ((\uart_tx_u1|Mux0~0_combout\ & ((\uart_tx_u1|AT|rom~130_combout\))) # (!\uart_tx_u1|Mux0~0_combout\ & (\uart_tx_u1|AT|rom~129_combout\)))) # (!\uart_tx_u1|cnt_bit\(1) & 
-- (((\uart_tx_u1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|cnt_bit\(1),
	datab => \uart_tx_u1|AT|rom~129_combout\,
	datac => \uart_tx_u1|Mux0~0_combout\,
	datad => \uart_tx_u1|AT|rom~130_combout\,
	combout => \uart_tx_u1|Mux0~1_combout\);

-- Location: LCCOMB_X53_Y28_N6
\uart_tx_u1|tx~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|tx~3_combout\ = (\uart_tx_u1|stage_tx.START~q\) # ((\uart_tx_u1|cnt_bit\(2) & (\uart_tx_u1|tx~2_combout\)) # (!\uart_tx_u1|cnt_bit\(2) & ((\uart_tx_u1|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|stage_tx.START~q\,
	datab => \uart_tx_u1|cnt_bit\(2),
	datac => \uart_tx_u1|tx~2_combout\,
	datad => \uart_tx_u1|Mux0~1_combout\,
	combout => \uart_tx_u1|tx~3_combout\);

-- Location: LCCOMB_X53_Y28_N12
\uart_tx_u1|tx~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|tx~4_combout\ = (\uart_tx_u1|tx~0_combout\ & (((\uart_tx_u1|stage_tx.START~q\ & !\uart_tx_u1|tx~3_combout\)))) # (!\uart_tx_u1|tx~0_combout\ & (((\uart_tx_u1|stage_tx.START~q\) # (!\uart_tx_u1|tx~3_combout\)) # 
-- (!\uart_tx_u1|stage_tx.SEND_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|tx~0_combout\,
	datab => \uart_tx_u1|stage_tx.SEND_DATA~q\,
	datac => \uart_tx_u1|stage_tx.START~q\,
	datad => \uart_tx_u1|tx~3_combout\,
	combout => \uart_tx_u1|tx~4_combout\);

-- Location: FF_X53_Y28_N13
\uart_tx_u1|tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|tx~4_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|tx~q\);

-- Location: LCCOMB_X65_Y27_N24
\mode_LED_u1|Equal8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Equal8~0_combout\ = (\uart_rx_u1|rxd\(5) & (\receiver_OK_ser_u1|OK~1_combout\ & (!\uart_rx_u1|rxd\(7) & \uart_rx_u1|rxd\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|rxd\(5),
	datab => \receiver_OK_ser_u1|OK~1_combout\,
	datac => \uart_rx_u1|rxd\(7),
	datad => \uart_rx_u1|rxd\(4),
	combout => \mode_LED_u1|Equal8~0_combout\);

-- Location: LCCOMB_X65_Y27_N10
\mode_LED_u1|always1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|always1~2_combout\ = (\uart_rx_u1|rxd\(5) & (((\uart_rx_u1|rxd\(6)) # (!\uart_rx_u1|rxd\(4))))) # (!\uart_rx_u1|rxd\(5) & ((\uart_rx_u1|rxd\(3)) # ((\uart_rx_u1|rxd\(4)) # (!\uart_rx_u1|rxd\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|rxd\(5),
	datab => \uart_rx_u1|rxd\(3),
	datac => \uart_rx_u1|rxd\(4),
	datad => \uart_rx_u1|rxd\(6),
	combout => \mode_LED_u1|always1~2_combout\);

-- Location: LCCOMB_X65_Y27_N4
\mode_LED_u1|rx_reg[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|rx_reg[0]~1_combout\ = (!\mode_LED_u1|always1~2_combout\ & (\mode_LED_u1|state_recv.0011~q\ & !\uart_rx_u1|rxd\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|always1~2_combout\,
	datac => \mode_LED_u1|state_recv.0011~q\,
	datad => \uart_rx_u1|rxd\(7),
	combout => \mode_LED_u1|rx_reg[0]~1_combout\);

-- Location: LCCOMB_X65_Y27_N12
\mode_LED_u1|always1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|always1~1_combout\ = (\uart_rx_u1|RECEIVE_END~q\ & \mode_LED_u1|always1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|RECEIVE_END~q\,
	datad => \mode_LED_u1|always1~0_combout\,
	combout => \mode_LED_u1|always1~1_combout\);

-- Location: FF_X65_Y27_N5
\mode_LED_u1|state_recv.0100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mode_LED_u1|rx_reg[0]~1_combout\,
	clrn => \RST_n~input_o\,
	ena => \mode_LED_u1|always1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|state_recv.0100~q\);

-- Location: FF_X65_Y27_N31
\mode_LED_u1|state_recv.0101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \mode_LED_u1|state_recv.0100~q\,
	clrn => \RST_n~input_o\,
	sload => VCC,
	ena => \mode_LED_u1|always1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|state_recv.0101~q\);

-- Location: LCCOMB_X65_Y27_N30
\mode_LED_u1|Selector5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Selector5~1_combout\ = (\mode_LED_u1|state_recv.0101~q\) # ((\mode_LED_u1|state_recv.0011~q\ & ((\mode_LED_u1|always1~2_combout\) # (\uart_rx_u1|rxd\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|always1~2_combout\,
	datab => \mode_LED_u1|state_recv.0011~q\,
	datac => \mode_LED_u1|state_recv.0101~q\,
	datad => \uart_rx_u1|rxd\(7),
	combout => \mode_LED_u1|Selector5~1_combout\);

-- Location: LCCOMB_X65_Y27_N16
\mode_LED_u1|Equal7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Equal7~1_combout\ = (\uart_rx_u1|rxd\(5) & (!\uart_rx_u1|rxd\(7) & (\uart_rx_u1|rxd\(3) & !\uart_rx_u1|rxd\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|rxd\(5),
	datab => \uart_rx_u1|rxd\(7),
	datac => \uart_rx_u1|rxd\(3),
	datad => \uart_rx_u1|rxd\(4),
	combout => \mode_LED_u1|Equal7~1_combout\);

-- Location: LCCOMB_X65_Y27_N26
\mode_LED_u1|Equal7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Equal7~2_combout\ = (\mode_LED_u1|Equal7~1_combout\ & (\mode_LED_u1|Equal7~0_combout\ & !\uart_rx_u1|rxd\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|Equal7~1_combout\,
	datab => \mode_LED_u1|Equal7~0_combout\,
	datad => \uart_rx_u1|rxd\(0),
	combout => \mode_LED_u1|Equal7~2_combout\);

-- Location: LCCOMB_X65_Y27_N0
\mode_LED_u1|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Selector5~0_combout\ = (\mode_LED_u1|Equal8~0_combout\ & ((\uart_rx_u1|rxd\(3) & (\mode_LED_u1|state_recv.0001~q\)) # (!\uart_rx_u1|rxd\(3) & ((\mode_LED_u1|state_recv.0010~q\))))) # (!\mode_LED_u1|Equal8~0_combout\ & 
-- ((\mode_LED_u1|state_recv.0001~q\) # ((\mode_LED_u1|state_recv.0010~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|Equal8~0_combout\,
	datab => \mode_LED_u1|state_recv.0001~q\,
	datac => \mode_LED_u1|state_recv.0010~q\,
	datad => \uart_rx_u1|rxd\(3),
	combout => \mode_LED_u1|Selector5~0_combout\);

-- Location: LCCOMB_X65_Y27_N8
\mode_LED_u1|Selector5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Selector5~2_combout\ = (!\mode_LED_u1|Selector5~1_combout\ & (!\mode_LED_u1|Selector5~0_combout\ & ((\mode_LED_u1|Equal7~2_combout\) # (\mode_LED_u1|state_recv.0000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|Selector5~1_combout\,
	datab => \mode_LED_u1|Equal7~2_combout\,
	datac => \mode_LED_u1|state_recv.0000~q\,
	datad => \mode_LED_u1|Selector5~0_combout\,
	combout => \mode_LED_u1|Selector5~2_combout\);

-- Location: FF_X65_Y27_N9
\mode_LED_u1|state_recv.0000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mode_LED_u1|Selector5~2_combout\,
	clrn => \RST_n~input_o\,
	ena => \mode_LED_u1|always1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|state_recv.0000~q\);

-- Location: LCCOMB_X65_Y27_N20
\mode_LED_u1|state_recv~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|state_recv~16_combout\ = (!\uart_rx_u1|rxd\(0) & (!\mode_LED_u1|state_recv.0000~q\ & (\mode_LED_u1|Equal7~1_combout\ & \mode_LED_u1|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u1|rxd\(0),
	datab => \mode_LED_u1|state_recv.0000~q\,
	datac => \mode_LED_u1|Equal7~1_combout\,
	datad => \mode_LED_u1|Equal7~0_combout\,
	combout => \mode_LED_u1|state_recv~16_combout\);

-- Location: FF_X65_Y27_N21
\mode_LED_u1|state_recv.0001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mode_LED_u1|state_recv~16_combout\,
	clrn => \RST_n~input_o\,
	ena => \mode_LED_u1|always1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|state_recv.0001~q\);

-- Location: LCCOMB_X65_Y27_N22
\mode_LED_u1|state_recv~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|state_recv~15_combout\ = (\mode_LED_u1|state_recv.0001~q\ & (\mode_LED_u1|Equal8~0_combout\ & !\uart_rx_u1|rxd\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode_LED_u1|state_recv.0001~q\,
	datac => \mode_LED_u1|Equal8~0_combout\,
	datad => \uart_rx_u1|rxd\(3),
	combout => \mode_LED_u1|state_recv~15_combout\);

-- Location: FF_X65_Y27_N23
\mode_LED_u1|state_recv.0010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mode_LED_u1|state_recv~15_combout\,
	clrn => \RST_n~input_o\,
	ena => \mode_LED_u1|always1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|state_recv.0010~q\);

-- Location: LCCOMB_X65_Y27_N14
\mode_LED_u1|state_recv~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|state_recv~14_combout\ = (\mode_LED_u1|Equal8~0_combout\ & (\mode_LED_u1|state_recv.0010~q\ & \uart_rx_u1|rxd\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|Equal8~0_combout\,
	datac => \mode_LED_u1|state_recv.0010~q\,
	datad => \uart_rx_u1|rxd\(3),
	combout => \mode_LED_u1|state_recv~14_combout\);

-- Location: FF_X65_Y27_N15
\mode_LED_u1|state_recv.0011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mode_LED_u1|state_recv~14_combout\,
	clrn => \RST_n~input_o\,
	ena => \mode_LED_u1|always1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|state_recv.0011~q\);

-- Location: LCCOMB_X66_Y27_N2
\mode_LED_u1|rx_reg[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|rx_reg[0]~0_combout\ = (\mode_LED_u1|state_recv.0011~q\ & (!\uart_rx_u1|rxd\(7) & (!\mode_LED_u1|always1~2_combout\ & \mode_LED_u1|always1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|state_recv.0011~q\,
	datab => \uart_rx_u1|rxd\(7),
	datac => \mode_LED_u1|always1~2_combout\,
	datad => \mode_LED_u1|always1~1_combout\,
	combout => \mode_LED_u1|rx_reg[0]~0_combout\);

-- Location: FF_X66_Y27_N13
\mode_LED_u1|rx_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \uart_rx_u1|rxd\(2),
	clrn => \RST_n~input_o\,
	sload => VCC,
	ena => \mode_LED_u1|rx_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|rx_reg\(2));

-- Location: FF_X66_Y27_N7
\mode_LED_u1|rx_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \uart_rx_u1|rxd\(6),
	clrn => \RST_n~input_o\,
	sload => VCC,
	ena => \mode_LED_u1|rx_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|rx_reg\(6));

-- Location: LCCOMB_X66_Y27_N0
\mode_LED_u1|rx_reg[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|rx_reg[0]~feeder_combout\ = \uart_rx_u1|rxd\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_u1|rxd\(0),
	combout => \mode_LED_u1|rx_reg[0]~feeder_combout\);

-- Location: FF_X66_Y27_N1
\mode_LED_u1|rx_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mode_LED_u1|rx_reg[0]~feeder_combout\,
	clrn => \RST_n~input_o\,
	ena => \mode_LED_u1|rx_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|rx_reg\(0));

-- Location: FF_X66_Y27_N11
\mode_LED_u1|rx_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \uart_rx_u1|rxd\(1),
	clrn => \RST_n~input_o\,
	sload => VCC,
	ena => \mode_LED_u1|rx_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|rx_reg\(1));

-- Location: LCCOMB_X66_Y27_N26
\mode_LED_u1|Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Selector17~0_combout\ = (\mode_LED_u1|rx_reg\(6) & (\mode_LED_u1|rx_reg\(0) & \mode_LED_u1|rx_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|rx_reg\(6),
	datab => \mode_LED_u1|rx_reg\(0),
	datac => \mode_LED_u1|rx_reg\(1),
	combout => \mode_LED_u1|Selector17~0_combout\);

-- Location: LCCOMB_X66_Y27_N8
\mode_LED_u1|rx_reg[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|rx_reg[3]~feeder_combout\ = \uart_rx_u1|rxd\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_u1|rxd\(3),
	combout => \mode_LED_u1|rx_reg[3]~feeder_combout\);

-- Location: FF_X66_Y27_N9
\mode_LED_u1|rx_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mode_LED_u1|rx_reg[3]~feeder_combout\,
	clrn => \RST_n~input_o\,
	ena => \mode_LED_u1|rx_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|rx_reg\(3));

-- Location: LCCOMB_X66_Y26_N12
\mode_LED_u1|Selector17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Selector17~1_combout\ = (\mode_LED_u1|state_recv.0101~q\) # ((\mode_LED_u1|rx_reg\(2) & (\mode_LED_u1|Selector17~0_combout\ & !\mode_LED_u1|rx_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|rx_reg\(2),
	datab => \mode_LED_u1|state_recv.0101~q\,
	datac => \mode_LED_u1|Selector17~0_combout\,
	datad => \mode_LED_u1|rx_reg\(3),
	combout => \mode_LED_u1|Selector17~1_combout\);

-- Location: FF_X66_Y27_N31
\mode_LED_u1|rx_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \uart_rx_u1|rxd\(4),
	clrn => \RST_n~input_o\,
	sload => VCC,
	ena => \mode_LED_u1|rx_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|rx_reg\(4));

-- Location: LCCOMB_X66_Y27_N16
\mode_LED_u1|rx_reg[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|rx_reg[5]~feeder_combout\ = \uart_rx_u1|rxd\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_u1|rxd\(5),
	combout => \mode_LED_u1|rx_reg[5]~feeder_combout\);

-- Location: FF_X66_Y27_N17
\mode_LED_u1|rx_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mode_LED_u1|rx_reg[5]~feeder_combout\,
	clrn => \RST_n~input_o\,
	ena => \mode_LED_u1|rx_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|rx_reg\(5));

-- Location: LCCOMB_X66_Y27_N10
\mode_LED_u1|LED_select[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|LED_select[0]~0_combout\ = (!\mode_LED_u1|rx_reg\(5) & ((\mode_LED_u1|rx_reg\(2)) # ((\mode_LED_u1|rx_reg\(0)) # (\mode_LED_u1|rx_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|rx_reg\(2),
	datab => \mode_LED_u1|rx_reg\(0),
	datac => \mode_LED_u1|rx_reg\(1),
	datad => \mode_LED_u1|rx_reg\(5),
	combout => \mode_LED_u1|LED_select[0]~0_combout\);

-- Location: LCCOMB_X66_Y27_N30
\mode_LED_u1|LED_select[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|LED_select[0]~1_combout\ = (\mode_LED_u1|rx_reg\(6) & (!\mode_LED_u1|rx_reg\(3) & (!\mode_LED_u1|rx_reg\(4) & \mode_LED_u1|LED_select[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|rx_reg\(6),
	datab => \mode_LED_u1|rx_reg\(3),
	datac => \mode_LED_u1|rx_reg\(4),
	datad => \mode_LED_u1|LED_select[0]~0_combout\,
	combout => \mode_LED_u1|LED_select[0]~1_combout\);

-- Location: LCCOMB_X66_Y27_N12
\mode_LED_u1|Selector21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Selector21~0_combout\ = (\mode_LED_u1|rx_reg\(1)) # (\mode_LED_u1|rx_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode_LED_u1|rx_reg\(1),
	datac => \mode_LED_u1|rx_reg\(2),
	combout => \mode_LED_u1|Selector21~0_combout\);

-- Location: LCCOMB_X66_Y27_N6
\mode_LED_u1|LED_select[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|LED_select[0]~2_combout\ = (!\mode_LED_u1|rx_reg\(6) & \mode_LED_u1|rx_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mode_LED_u1|rx_reg\(6),
	datad => \mode_LED_u1|rx_reg\(5),
	combout => \mode_LED_u1|LED_select[0]~2_combout\);

-- Location: LCCOMB_X66_Y26_N8
\mode_LED_u1|LED_select[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|LED_select[0]~3_combout\ = (\mode_LED_u1|rx_reg\(4) & (\mode_LED_u1|LED_select[0]~2_combout\ & ((!\mode_LED_u1|rx_reg\(3)) # (!\mode_LED_u1|Selector21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|rx_reg\(4),
	datab => \mode_LED_u1|Selector21~0_combout\,
	datac => \mode_LED_u1|LED_select[0]~2_combout\,
	datad => \mode_LED_u1|rx_reg\(3),
	combout => \mode_LED_u1|LED_select[0]~3_combout\);

-- Location: LCCOMB_X66_Y26_N6
\mode_LED_u1|LED_select[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|LED_select[0]~4_combout\ = (\mode_LED_u1|state_recv.0100~q\ & (\receiver_OK_ser_u1|Equal2~1_combout\ & ((\mode_LED_u1|LED_select[0]~1_combout\) # (\mode_LED_u1|LED_select[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|state_recv.0100~q\,
	datab => \mode_LED_u1|LED_select[0]~1_combout\,
	datac => \mode_LED_u1|LED_select[0]~3_combout\,
	datad => \receiver_OK_ser_u1|Equal2~1_combout\,
	combout => \mode_LED_u1|LED_select[0]~4_combout\);

-- Location: LCCOMB_X66_Y26_N0
\mode_LED_u1|LED_select[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|LED_select[0]~5_combout\ = (\mode_LED_u1|always1~1_combout\ & ((\mode_LED_u1|LED_select[0]~4_combout\) # ((!\mode_LED_u1|state_recv.0100~q\ & \mode_LED_u1|state_recv.0101~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|LED_select[0]~4_combout\,
	datab => \mode_LED_u1|state_recv.0100~q\,
	datac => \mode_LED_u1|state_recv.0101~q\,
	datad => \mode_LED_u1|always1~1_combout\,
	combout => \mode_LED_u1|LED_select[0]~5_combout\);

-- Location: FF_X66_Y26_N13
\mode_LED_u1|LED_select[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mode_LED_u1|Selector17~1_combout\,
	clrn => \RST_n~input_o\,
	ena => \mode_LED_u1|LED_select[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|LED_select\(4));

-- Location: LCCOMB_X66_Y26_N22
\mode_LED_u1|Selector11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Selector11~1_combout\ = (\mode_LED_u1|LED_select[0]~2_combout\ & (\mode_LED_u1|Selector21~0_combout\ & ((\mode_LED_u1|rx_reg\(3))))) # (!\mode_LED_u1|LED_select[0]~2_combout\ & ((\mode_LED_u1|rx_reg\(4)) # ((\mode_LED_u1|Selector21~0_combout\ 
-- & \mode_LED_u1|rx_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|LED_select[0]~2_combout\,
	datab => \mode_LED_u1|Selector21~0_combout\,
	datac => \mode_LED_u1|rx_reg\(4),
	datad => \mode_LED_u1|rx_reg\(3),
	combout => \mode_LED_u1|Selector11~1_combout\);

-- Location: LCCOMB_X66_Y27_N14
\mode_LED_u1|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|WideOr0~0_combout\ = (\mode_LED_u1|rx_reg\(6) & ((\mode_LED_u1|rx_reg\(2)) # ((\mode_LED_u1|rx_reg\(0)) # (\mode_LED_u1|rx_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|rx_reg\(2),
	datab => \mode_LED_u1|rx_reg\(0),
	datac => \mode_LED_u1|rx_reg\(1),
	datad => \mode_LED_u1|rx_reg\(6),
	combout => \mode_LED_u1|WideOr0~0_combout\);

-- Location: LCCOMB_X66_Y27_N24
\mode_LED_u1|Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Selector11~0_combout\ = (!\mode_LED_u1|rx_reg\(4) & ((\mode_LED_u1|rx_reg\(5)) # ((\mode_LED_u1|rx_reg\(3)) # (!\mode_LED_u1|WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|rx_reg\(4),
	datab => \mode_LED_u1|rx_reg\(5),
	datac => \mode_LED_u1|WideOr0~0_combout\,
	datad => \mode_LED_u1|rx_reg\(3),
	combout => \mode_LED_u1|Selector11~0_combout\);

-- Location: LCCOMB_X66_Y26_N28
\mode_LED_u1|Selector11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Selector11~2_combout\ = (\mode_LED_u1|Selector11~1_combout\) # (((\mode_LED_u1|Selector11~0_combout\) # (!\mode_LED_u1|state_recv.0100~q\)) # (!\receiver_OK_ser_u1|Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|Selector11~1_combout\,
	datab => \receiver_OK_ser_u1|Equal2~1_combout\,
	datac => \mode_LED_u1|Selector11~0_combout\,
	datad => \mode_LED_u1|state_recv.0100~q\,
	combout => \mode_LED_u1|Selector11~2_combout\);

-- Location: LCCOMB_X66_Y26_N18
\mode_LED_u1|Selector11~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Selector11~3_combout\ = (\mode_LED_u1|state_recv.0100~q\ & (((\mode_LED_u1|LED_select\(10) & \mode_LED_u1|Selector11~2_combout\)))) # (!\mode_LED_u1|state_recv.0100~q\ & ((\mode_LED_u1|state_recv.0101~q\) # ((\mode_LED_u1|LED_select\(10) & 
-- \mode_LED_u1|Selector11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|state_recv.0100~q\,
	datab => \mode_LED_u1|state_recv.0101~q\,
	datac => \mode_LED_u1|LED_select\(10),
	datad => \mode_LED_u1|Selector11~2_combout\,
	combout => \mode_LED_u1|Selector11~3_combout\);

-- Location: FF_X66_Y26_N19
\mode_LED_u1|LED_select[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mode_LED_u1|Selector11~3_combout\,
	clrn => \RST_n~input_o\,
	ena => \mode_LED_u1|always1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|LED_select\(10));

-- Location: LCCOMB_X66_Y27_N28
\mode_LED_u1|Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Selector18~0_combout\ = (\mode_LED_u1|rx_reg\(6) & (((!\mode_LED_u1|rx_reg\(1)) # (!\mode_LED_u1|rx_reg\(0))) # (!\mode_LED_u1|rx_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|rx_reg\(2),
	datab => \mode_LED_u1|rx_reg\(0),
	datac => \mode_LED_u1|rx_reg\(1),
	datad => \mode_LED_u1|rx_reg\(6),
	combout => \mode_LED_u1|Selector18~0_combout\);

-- Location: LCCOMB_X66_Y26_N30
\mode_LED_u1|Selector18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Selector18~1_combout\ = (\mode_LED_u1|Selector18~0_combout\) # ((\mode_LED_u1|state_recv.0101~q\) # (\mode_LED_u1|rx_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|Selector18~0_combout\,
	datac => \mode_LED_u1|state_recv.0101~q\,
	datad => \mode_LED_u1|rx_reg\(3),
	combout => \mode_LED_u1|Selector18~1_combout\);

-- Location: FF_X66_Y26_N31
\mode_LED_u1|LED_select[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mode_LED_u1|Selector18~1_combout\,
	clrn => \RST_n~input_o\,
	ena => \mode_LED_u1|LED_select[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|LED_select\(3));

-- Location: LCCOMB_X66_Y27_N22
\mode_LED_u1|Selector21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Selector21~1_combout\ = (\mode_LED_u1|rx_reg\(6) & !\mode_LED_u1|rx_reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|rx_reg\(6),
	datad => \mode_LED_u1|rx_reg\(3),
	combout => \mode_LED_u1|Selector21~1_combout\);

-- Location: LCCOMB_X66_Y26_N16
\mode_LED_u1|Selector21~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Selector21~2_combout\ = (\mode_LED_u1|state_recv.0101~q\) # ((\mode_LED_u1|rx_reg\(0) & (!\mode_LED_u1|Selector21~1_combout\)) # (!\mode_LED_u1|rx_reg\(0) & (\mode_LED_u1|Selector21~1_combout\ & \mode_LED_u1|Selector21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|rx_reg\(0),
	datab => \mode_LED_u1|state_recv.0101~q\,
	datac => \mode_LED_u1|Selector21~1_combout\,
	datad => \mode_LED_u1|Selector21~0_combout\,
	combout => \mode_LED_u1|Selector21~2_combout\);

-- Location: FF_X66_Y26_N17
\mode_LED_u1|LED_select[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mode_LED_u1|Selector21~2_combout\,
	clrn => \RST_n~input_o\,
	ena => \mode_LED_u1|LED_select[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|LED_select\(0));

-- Location: LCCOMB_X66_Y25_N26
\mode_LED_u1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Equal0~0_combout\ = (!\mode_LED_u1|LED_select\(4) & (!\mode_LED_u1|LED_select\(10) & (!\mode_LED_u1|LED_select\(3) & \mode_LED_u1|LED_select\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|LED_select\(4),
	datab => \mode_LED_u1|LED_select\(10),
	datac => \mode_LED_u1|LED_select\(3),
	datad => \mode_LED_u1|LED_select\(0),
	combout => \mode_LED_u1|Equal0~0_combout\);

-- Location: LCCOMB_X66_Y27_N20
\mode_LED_u1|Selector20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Selector20~0_combout\ = (\mode_LED_u1|rx_reg\(0) & ((\mode_LED_u1|rx_reg\(1) $ (\mode_LED_u1|rx_reg\(6))))) # (!\mode_LED_u1|rx_reg\(0) & ((\mode_LED_u1|rx_reg\(1)) # ((!\mode_LED_u1|rx_reg\(2) & \mode_LED_u1|rx_reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|rx_reg\(2),
	datab => \mode_LED_u1|rx_reg\(0),
	datac => \mode_LED_u1|rx_reg\(1),
	datad => \mode_LED_u1|rx_reg\(6),
	combout => \mode_LED_u1|Selector20~0_combout\);

-- Location: LCCOMB_X66_Y26_N26
\mode_LED_u1|Selector20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Selector20~1_combout\ = (\mode_LED_u1|state_recv.0101~q\) # ((\mode_LED_u1|Selector20~0_combout\ & !\mode_LED_u1|rx_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode_LED_u1|Selector20~0_combout\,
	datac => \mode_LED_u1|state_recv.0101~q\,
	datad => \mode_LED_u1|rx_reg\(3),
	combout => \mode_LED_u1|Selector20~1_combout\);

-- Location: FF_X66_Y26_N27
\mode_LED_u1|LED_select[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mode_LED_u1|Selector20~1_combout\,
	clrn => \RST_n~input_o\,
	ena => \mode_LED_u1|LED_select[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|LED_select\(1));

-- Location: LCCOMB_X66_Y26_N24
\mode_LED_u1|Selector19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Selector19~0_combout\ = (\mode_LED_u1|state_recv.0101~q\) # ((!\mode_LED_u1|rx_reg\(3) & (\mode_LED_u1|rx_reg\(2) $ (\mode_LED_u1|Selector17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|rx_reg\(2),
	datab => \mode_LED_u1|state_recv.0101~q\,
	datac => \mode_LED_u1|Selector17~0_combout\,
	datad => \mode_LED_u1|rx_reg\(3),
	combout => \mode_LED_u1|Selector19~0_combout\);

-- Location: FF_X66_Y26_N25
\mode_LED_u1|LED_select[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mode_LED_u1|Selector19~0_combout\,
	clrn => \RST_n~input_o\,
	ena => \mode_LED_u1|LED_select[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|LED_select\(2));

-- Location: LCCOMB_X66_Y25_N16
\mode_LED_u1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Equal0~1_combout\ = (\mode_LED_u1|Equal0~0_combout\ & (!\mode_LED_u1|LED_select\(1) & !\mode_LED_u1|LED_select\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|Equal0~0_combout\,
	datac => \mode_LED_u1|LED_select\(1),
	datad => \mode_LED_u1|LED_select\(2),
	combout => \mode_LED_u1|Equal0~1_combout\);

-- Location: FF_X66_Y25_N17
\mode_LED_u1|LED[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mode_LED_u1|Equal0~1_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|LED\(0));

-- Location: LCCOMB_X66_Y25_N0
\mode_LED_u1|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Equal3~0_combout\ = (!\mode_LED_u1|LED_select\(4) & (!\mode_LED_u1|LED_select\(10) & (!\mode_LED_u1|LED_select\(3) & !\mode_LED_u1|LED_select\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|LED_select\(4),
	datab => \mode_LED_u1|LED_select\(10),
	datac => \mode_LED_u1|LED_select\(3),
	datad => \mode_LED_u1|LED_select\(0),
	combout => \mode_LED_u1|Equal3~0_combout\);

-- Location: LCCOMB_X66_Y25_N6
\mode_LED_u1|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Equal1~0_combout\ = (\mode_LED_u1|Equal3~0_combout\ & (\mode_LED_u1|LED_select\(1) & !\mode_LED_u1|LED_select\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode_LED_u1|Equal3~0_combout\,
	datac => \mode_LED_u1|LED_select\(1),
	datad => \mode_LED_u1|LED_select\(2),
	combout => \mode_LED_u1|Equal1~0_combout\);

-- Location: FF_X66_Y25_N7
\mode_LED_u1|LED[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mode_LED_u1|Equal1~0_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|LED\(1));

-- Location: LCCOMB_X66_Y25_N8
\mode_LED_u1|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Equal2~0_combout\ = (\mode_LED_u1|Equal0~0_combout\ & (\mode_LED_u1|LED_select\(1) & !\mode_LED_u1|LED_select\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|Equal0~0_combout\,
	datac => \mode_LED_u1|LED_select\(1),
	datad => \mode_LED_u1|LED_select\(2),
	combout => \mode_LED_u1|Equal2~0_combout\);

-- Location: FF_X66_Y25_N9
\mode_LED_u1|LED[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mode_LED_u1|Equal2~0_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|LED\(2));

-- Location: LCCOMB_X66_Y25_N10
\mode_LED_u1|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Equal3~1_combout\ = (\mode_LED_u1|Equal3~0_combout\ & (!\mode_LED_u1|LED_select\(1) & \mode_LED_u1|LED_select\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode_LED_u1|Equal3~0_combout\,
	datac => \mode_LED_u1|LED_select\(1),
	datad => \mode_LED_u1|LED_select\(2),
	combout => \mode_LED_u1|Equal3~1_combout\);

-- Location: FF_X66_Y25_N11
\mode_LED_u1|LED[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mode_LED_u1|Equal3~1_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|LED\(3));

-- Location: LCCOMB_X66_Y25_N12
\mode_LED_u1|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Equal4~0_combout\ = (\mode_LED_u1|Equal0~0_combout\ & (!\mode_LED_u1|LED_select\(1) & \mode_LED_u1|LED_select\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|Equal0~0_combout\,
	datac => \mode_LED_u1|LED_select\(1),
	datad => \mode_LED_u1|LED_select\(2),
	combout => \mode_LED_u1|Equal4~0_combout\);

-- Location: FF_X66_Y25_N13
\mode_LED_u1|LED[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mode_LED_u1|Equal4~0_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|LED\(4));

-- Location: LCCOMB_X66_Y25_N2
\mode_LED_u1|Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Equal5~0_combout\ = (\mode_LED_u1|Equal3~0_combout\ & (\mode_LED_u1|LED_select\(1) & \mode_LED_u1|LED_select\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode_LED_u1|Equal3~0_combout\,
	datac => \mode_LED_u1|LED_select\(1),
	datad => \mode_LED_u1|LED_select\(2),
	combout => \mode_LED_u1|Equal5~0_combout\);

-- Location: FF_X66_Y25_N3
\mode_LED_u1|LED[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mode_LED_u1|Equal5~0_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|LED\(5));

-- Location: LCCOMB_X66_Y25_N24
\mode_LED_u1|Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Equal6~0_combout\ = (\mode_LED_u1|Equal0~0_combout\ & (\mode_LED_u1|LED_select\(1) & \mode_LED_u1|LED_select\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|Equal0~0_combout\,
	datac => \mode_LED_u1|LED_select\(1),
	datad => \mode_LED_u1|LED_select\(2),
	combout => \mode_LED_u1|Equal6~0_combout\);

-- Location: FF_X66_Y25_N25
\mode_LED_u1|LED[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mode_LED_u1|Equal6~0_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|LED\(6));

-- Location: LCCOMB_X63_Y28_N2
\RST~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RST~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \RST~feeder_combout\);

-- Location: FF_X63_Y28_N3
RST : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \RST~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RST~q\);

-- Location: LCCOMB_X63_Y28_N4
\RST_WiFi~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RST_WiFi~0_combout\ = (\RST_n~input_o\) # (\RST~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST_n~input_o\,
	datad => \RST~q\,
	combout => \RST_WiFi~0_combout\);

-- Location: FF_X63_Y28_N5
\RST_WiFi~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \RST_WiFi~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RST_WiFi~reg0_q\);

ww_tx <= \tx~output_o\;

ww_LED(0) <= \LED[0]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(3) <= \LED[3]~output_o\;

ww_LED(4) <= \LED[4]~output_o\;

ww_LED(5) <= \LED[5]~output_o\;

ww_LED(6) <= \LED[6]~output_o\;

ww_LED(7) <= \LED[7]~output_o\;

ww_Server_wifi_txd <= \Server_wifi_txd~output_o\;

ww_RST_WiFi <= \RST_WiFi~output_o\;

ww_rse_wifi <= \rse_wifi~output_o\;

ww_LED_select(0) <= \LED_select[0]~output_o\;

ww_LED_select(1) <= \LED_select[1]~output_o\;

ww_LED_select(2) <= \LED_select[2]~output_o\;

ww_LED_select(3) <= \LED_select[3]~output_o\;

ww_LED_select(4) <= \LED_select[4]~output_o\;

ww_LED_select(5) <= \LED_select[5]~output_o\;

ww_LED_select(6) <= \LED_select[6]~output_o\;

ww_LED_select(7) <= \LED_select[7]~output_o\;

ww_LED_select(8) <= \LED_select[8]~output_o\;

ww_LED_select(9) <= \LED_select[9]~output_o\;

ww_LED_select(10) <= \LED_select[10]~output_o\;

ww_LED_select(11) <= \LED_select[11]~output_o\;

ww_LED_select(12) <= \LED_select[12]~output_o\;

ww_LED_select(13) <= \LED_select[13]~output_o\;

ww_LED_select(14) <= \LED_select[14]~output_o\;

ww_LED_select(15) <= \LED_select[15]~output_o\;
END structure;


