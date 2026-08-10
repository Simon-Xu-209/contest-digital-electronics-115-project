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

-- DATE "07/23/2026 10:06:27"

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

ENTITY 	UART_Client IS
    PORT (
	iCLK : IN std_logic;
	RST_n : IN std_logic;
	select_w : IN std_logic;
	tx_en : IN std_logic;
	SW : IN std_logic_vector(4 DOWNTO 0);
	rx : IN std_logic;
	tx : OUT std_logic;
	Client_wifi_txd : OUT std_logic;
	RST_WiFi : OUT std_logic
	);
END UART_Client;

-- Design Ports Information
-- tx	=>  Location: PIN_226,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Client_wifi_txd	=>  Location: PIN_160,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST_WiFi	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx	=>  Location: PIN_151,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST_n	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iCLK	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_en	=>  Location: PIN_152,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- select_w	=>  Location: PIN_223,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_224,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_37,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UART_Client IS
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
SIGNAL ww_select_w : std_logic;
SIGNAL ww_tx_en : std_logic;
SIGNAL ww_SW : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_rx : std_logic;
SIGNAL ww_tx : std_logic;
SIGNAL ww_Client_wifi_txd : std_logic;
SIGNAL ww_RST_WiFi : std_logic;
SIGNAL \iCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RST_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tx~output_o\ : std_logic;
SIGNAL \Client_wifi_txd~output_o\ : std_logic;
SIGNAL \RST_WiFi~output_o\ : std_logic;
SIGNAL \iCLK~input_o\ : std_logic;
SIGNAL \iCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \uart_tx_u1|Add17~0_combout\ : std_logic;
SIGNAL \RST_n~input_o\ : std_logic;
SIGNAL \RST_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \uart_tx_u1|Add17~1\ : std_logic;
SIGNAL \uart_tx_u1|Add17~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|cnt_baud~3_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add17~3\ : std_logic;
SIGNAL \uart_tx_u1|Add17~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add17~5\ : std_logic;
SIGNAL \uart_tx_u1|Add17~6_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add17~7\ : std_logic;
SIGNAL \uart_tx_u1|Add17~8_combout\ : std_logic;
SIGNAL \uart_tx_u1|cnt_baud~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|Equal3~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add17~9\ : std_logic;
SIGNAL \uart_tx_u1|Add17~10_combout\ : std_logic;
SIGNAL \uart_tx_u1|cnt_baud~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add17~11\ : std_logic;
SIGNAL \uart_tx_u1|Add17~12_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add17~13\ : std_logic;
SIGNAL \uart_tx_u1|Add17~14_combout\ : std_logic;
SIGNAL \uart_tx_u1|cnt_baud~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add17~15\ : std_logic;
SIGNAL \uart_tx_u1|Add17~16_combout\ : std_logic;
SIGNAL \uart_tx_u1|cnt_baud~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Equal3~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Equal3~2_combout\ : std_logic;
SIGNAL \tx_en~input_o\ : std_logic;
SIGNAL \uart_tx_u1|start_cnt~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|start_cnt~q\ : std_logic;
SIGNAL \uart_tx_u1|cnt_bit[0]~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|cnt_bit[1]~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|cnt_bit[1]~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|cnt_bit[2]~3_combout\ : std_logic;
SIGNAL \uart_tx_u1|always0~0_combout\ : std_logic;
SIGNAL \uart_rx_u2|cnt_baud[0]~9_combout\ : std_logic;
SIGNAL \uart_rx_u2|cnt_baud[7]~24\ : std_logic;
SIGNAL \uart_rx_u2|cnt_baud[8]~25_combout\ : std_logic;
SIGNAL \rx~input_o\ : std_logic;
SIGNAL \uart_rx_u2|rx_reg0~q\ : std_logic;
SIGNAL \uart_rx_u2|rx_reg1~feeder_combout\ : std_logic;
SIGNAL \uart_rx_u2|rx_reg1~q\ : std_logic;
SIGNAL \uart_rx_u2|rx_reg2~feeder_combout\ : std_logic;
SIGNAL \uart_rx_u2|rx_reg2~q\ : std_logic;
SIGNAL \uart_rx_u2|rx_reg3~feeder_combout\ : std_logic;
SIGNAL \uart_rx_u2|rx_reg3~q\ : std_logic;
SIGNAL \uart_rx_u2|stage_rx~11_combout\ : std_logic;
SIGNAL \uart_rx_u2|stage_rx.START~q\ : std_logic;
SIGNAL \uart_rx_u2|stage_rx~10_combout\ : std_logic;
SIGNAL \uart_rx_u2|stage_rx.RECEIVE_DATA~q\ : std_logic;
SIGNAL \uart_rx_u2|cnt_bit[0]~0_combout\ : std_logic;
SIGNAL \uart_rx_u2|cnt_bit[1]~1_combout\ : std_logic;
SIGNAL \uart_rx_u2|Decoder0~0_combout\ : std_logic;
SIGNAL \uart_rx_u2|stage_rx~9_combout\ : std_logic;
SIGNAL \uart_rx_u2|stage_rx.STOP~q\ : std_logic;
SIGNAL \uart_rx_u2|rx_done~0_combout\ : std_logic;
SIGNAL \uart_rx_u2|rx_done~q\ : std_logic;
SIGNAL \uart_rx_u2|R_receiving~0_combout\ : std_logic;
SIGNAL \uart_rx_u2|R_receiving~q\ : std_logic;
SIGNAL \uart_rx_u2|bps_rx_clk_en~q\ : std_logic;
SIGNAL \uart_rx_u2|Equal1~1_combout\ : std_logic;
SIGNAL \uart_rx_u2|cnt_baud[5]~27_combout\ : std_logic;
SIGNAL \uart_rx_u2|cnt_baud[0]~10\ : std_logic;
SIGNAL \uart_rx_u2|cnt_baud[1]~11_combout\ : std_logic;
SIGNAL \uart_rx_u2|cnt_baud[1]~12\ : std_logic;
SIGNAL \uart_rx_u2|cnt_baud[2]~13_combout\ : std_logic;
SIGNAL \uart_rx_u2|cnt_baud[2]~14\ : std_logic;
SIGNAL \uart_rx_u2|cnt_baud[3]~15_combout\ : std_logic;
SIGNAL \uart_rx_u2|cnt_baud[3]~16\ : std_logic;
SIGNAL \uart_rx_u2|cnt_baud[4]~17_combout\ : std_logic;
SIGNAL \uart_rx_u2|cnt_baud[4]~18\ : std_logic;
SIGNAL \uart_rx_u2|cnt_baud[5]~19_combout\ : std_logic;
SIGNAL \uart_rx_u2|cnt_baud[5]~20\ : std_logic;
SIGNAL \uart_rx_u2|cnt_baud[6]~21_combout\ : std_logic;
SIGNAL \uart_rx_u2|cnt_baud[6]~22\ : std_logic;
SIGNAL \uart_rx_u2|cnt_baud[7]~23_combout\ : std_logic;
SIGNAL \uart_rx_u2|Equal1~0_combout\ : std_logic;
SIGNAL \uart_rx_u2|Equal2~0_combout\ : std_logic;
SIGNAL \uart_rx_u2|Equal2~1_combout\ : std_logic;
SIGNAL \uart_rx_u2|cnt_bit[2]~2_combout\ : std_logic;
SIGNAL \uart_rx_u2|cnt_bit[2]~3_combout\ : std_logic;
SIGNAL \uart_rx_u2|Selector1~1_combout\ : std_logic;
SIGNAL \uart_rx_u2|Selector0~2_combout\ : std_logic;
SIGNAL \uart_rx_u2|Selector1~0_combout\ : std_logic;
SIGNAL \uart_rx_u2|Selector1~2_combout\ : std_logic;
SIGNAL \uart_rx_u2|rx_data[1]~0_combout\ : std_logic;
SIGNAL \uart_rx_u2|rxd[6]~feeder_combout\ : std_logic;
SIGNAL \uart_rx_u2|rxd[7]~0_combout\ : std_logic;
SIGNAL \uart_rx_u2|Selector7~1_combout\ : std_logic;
SIGNAL \uart_rx_u2|Selector7~0_combout\ : std_logic;
SIGNAL \uart_rx_u2|Selector7~2_combout\ : std_logic;
SIGNAL \uart_rx_u2|rxd[0]~feeder_combout\ : std_logic;
SIGNAL \uart_rx_u2|Selector5~1_combout\ : std_logic;
SIGNAL \uart_rx_u2|Selector5~0_combout\ : std_logic;
SIGNAL \uart_rx_u2|Selector5~2_combout\ : std_logic;
SIGNAL \uart_rx_u2|rxd[2]~feeder_combout\ : std_logic;
SIGNAL \uart_rx_u2|Selector2~0_combout\ : std_logic;
SIGNAL \uart_rx_u2|Selector2~1_combout\ : std_logic;
SIGNAL \uart_rx_u2|Selector6~0_combout\ : std_logic;
SIGNAL \uart_rx_u2|Selector6~1_combout\ : std_logic;
SIGNAL \receiver_OK_u1|OK~1_combout\ : std_logic;
SIGNAL \uart_rx_u2|RECEIVE_END~0_combout\ : std_logic;
SIGNAL \uart_rx_u2|RECEIVE_END~q\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \select_w~input_o\ : std_logic;
SIGNAL \uart_tx_u1|Send_addr_w[2]~feeder_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \uart_tx_u1|enable~feeder_combout\ : std_logic;
SIGNAL \uart_tx_u1|enable~q\ : std_logic;
SIGNAL \uart_tx_u1|cnt_rom[0]~6_combout\ : std_logic;
SIGNAL \uart_tx_u1|always0~5_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector2~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|cnt_rom[1]~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|cnt_rom[1]~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add19~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|cnt_rom[2]~3_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add19~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|cnt_rom[3]~5_combout\ : std_logic;
SIGNAL \uart_tx_u1|always0~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add16~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Send_addr[0]~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add16~1\ : std_logic;
SIGNAL \uart_tx_u1|Add16~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|always1~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Send_addr[1]~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add13~1\ : std_logic;
SIGNAL \uart_tx_u1|Add13~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add5~1\ : std_logic;
SIGNAL \uart_tx_u1|Add5~2_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \Select_mode_u1|LED_select[2]~feeder_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \Select_mode_u1|LED_select[3]~feeder_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add9~1\ : std_logic;
SIGNAL \uart_tx_u1|Add9~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add1~1\ : std_logic;
SIGNAL \uart_tx_u1|Add1~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|Mux6~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Mux6~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add3~1\ : std_logic;
SIGNAL \uart_tx_u1|Add3~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add7~1\ : std_logic;
SIGNAL \uart_tx_u1|Add7~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|Mux6~5_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add11~1\ : std_logic;
SIGNAL \uart_tx_u1|Add11~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add15~1\ : std_logic;
SIGNAL \uart_tx_u1|Add15~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|Mux6~6_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \uart_tx_u1|Add12~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add4~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add0~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add8~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Mux6~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|Mux6~3_combout\ : std_logic;
SIGNAL \uart_tx_u1|Mux6~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|Mux6~7_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr[1]~3_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~6_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~9_combout\ : std_logic;
SIGNAL \uart_tx_u1|always0~3_combout\ : std_logic;
SIGNAL \uart_tx_u1|always0~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr[0]~8_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~86_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~87_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~100_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~101_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~91_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~89_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~88_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~90_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~92_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~97_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~93_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~94_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~95_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~96_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~98_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~99_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~102_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~108_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~104_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~105_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~106_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~107_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~109_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~114_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~110_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~111_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~112_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~113_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~115_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~116_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~117_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~103_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~127_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~128_combout\ : std_logic;
SIGNAL \uart_tx_u1|Equal4~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|Send_addr[0]~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add11~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add3~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add1~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add9~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Mux7~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|Mux7~3_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add13~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add15~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add5~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add7~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Mux7~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Mux7~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|Mux7~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|Mux7~5_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr[0]~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~7_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~118_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~119_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~125_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~126_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~120_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~121_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~83_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~122_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~123_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~7_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~6_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~3_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~8_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~9_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~124_combout\ : std_logic;
SIGNAL \uart_tx_u1|Equal4~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|Send_addr_w[0]~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add16~3\ : std_logic;
SIGNAL \uart_tx_u1|Add16~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|Send_addr[2]~3_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add15~3\ : std_logic;
SIGNAL \uart_tx_u1|Add15~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add7~3\ : std_logic;
SIGNAL \uart_tx_u1|Add7~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|Mux5~7_combout\ : std_logic;
SIGNAL \uart_tx_u1|Mux5~8_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add9~3\ : std_logic;
SIGNAL \uart_tx_u1|Add9~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add1~3\ : std_logic;
SIGNAL \uart_tx_u1|Add1~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add0~1\ : std_logic;
SIGNAL \uart_tx_u1|Add0~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|Mux5~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add8~1\ : std_logic;
SIGNAL \uart_tx_u1|Add8~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|Mux5~5_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add11~3\ : std_logic;
SIGNAL \uart_tx_u1|Add11~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add10~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add2~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add3~3\ : std_logic;
SIGNAL \uart_tx_u1|Add3~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|Mux5~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|Mux5~3_combout\ : std_logic;
SIGNAL \uart_tx_u1|Mux5~6_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add12~1\ : std_logic;
SIGNAL \uart_tx_u1|Add12~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add13~3\ : std_logic;
SIGNAL \uart_tx_u1|Add13~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add5~3\ : std_logic;
SIGNAL \uart_tx_u1|Add5~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add4~1\ : std_logic;
SIGNAL \uart_tx_u1|Add4~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|Mux5~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Mux5~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|Mux5~9_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr[2]~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~10_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add16~5\ : std_logic;
SIGNAL \uart_tx_u1|Add16~6_combout\ : std_logic;
SIGNAL \uart_tx_u1|Send_addr[3]~6_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr[4]~31_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add13~5\ : std_logic;
SIGNAL \uart_tx_u1|Add13~6_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add15~5\ : std_logic;
SIGNAL \uart_tx_u1|Add15~6_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add12~3\ : std_logic;
SIGNAL \uart_tx_u1|Add12~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add14~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~46_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~47_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr[4]~24_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add11~5\ : std_logic;
SIGNAL \uart_tx_u1|Add11~6_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add8~3\ : std_logic;
SIGNAL \uart_tx_u1|Add8~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add9~5\ : std_logic;
SIGNAL \uart_tx_u1|Add9~6_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~43_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add10~1\ : std_logic;
SIGNAL \uart_tx_u1|Add10~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~44_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~45_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add5~5\ : std_logic;
SIGNAL \uart_tx_u1|Add5~6_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr[4]~28_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add7~5\ : std_logic;
SIGNAL \uart_tx_u1|Add7~6_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr[4]~27_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add4~3\ : std_logic;
SIGNAL \uart_tx_u1|Add4~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add2~1\ : std_logic;
SIGNAL \uart_tx_u1|Add2~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add3~5\ : std_logic;
SIGNAL \uart_tx_u1|Add3~6_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add1~5\ : std_logic;
SIGNAL \uart_tx_u1|Add1~6_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add0~3\ : std_logic;
SIGNAL \uart_tx_u1|Add0~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~39_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~40_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~41_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~42_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~48_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr[4]~36_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr[4]~37_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~49_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr[3]~21_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add16~7\ : std_logic;
SIGNAL \uart_tx_u1|Add16~8_combout\ : std_logic;
SIGNAL \uart_tx_u1|Send_addr[4]~5_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add9~7\ : std_logic;
SIGNAL \uart_tx_u1|Add9~8_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add11~7\ : std_logic;
SIGNAL \uart_tx_u1|Add11~8_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add10~3\ : std_logic;
SIGNAL \uart_tx_u1|Add10~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add8~5\ : std_logic;
SIGNAL \uart_tx_u1|Add8~6_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~22_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~23_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add14~1\ : std_logic;
SIGNAL \uart_tx_u1|Add14~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add12~5\ : std_logic;
SIGNAL \uart_tx_u1|Add12~6_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add13~7\ : std_logic;
SIGNAL \uart_tx_u1|Add13~8_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~33_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add15~7\ : std_logic;
SIGNAL \uart_tx_u1|Add15~8_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~34_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add5~7\ : std_logic;
SIGNAL \uart_tx_u1|Add5~8_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add4~5\ : std_logic;
SIGNAL \uart_tx_u1|Add4~6_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~29_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add7~7\ : std_logic;
SIGNAL \uart_tx_u1|Add7~8_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add3~7\ : std_logic;
SIGNAL \uart_tx_u1|Add3~8_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add2~3\ : std_logic;
SIGNAL \uart_tx_u1|Add2~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add1~7\ : std_logic;
SIGNAL \uart_tx_u1|Add1~8_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add0~5\ : std_logic;
SIGNAL \uart_tx_u1|Add0~6_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~25_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~26_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~30_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~32_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~35_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~38_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add16~9\ : std_logic;
SIGNAL \uart_tx_u1|Add16~10_combout\ : std_logic;
SIGNAL \uart_tx_u1|Send_addr[5]~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr[5]~5_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add5~9\ : std_logic;
SIGNAL \uart_tx_u1|Add5~10_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add9~9\ : std_logic;
SIGNAL \uart_tx_u1|Add9~10_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add1~9\ : std_logic;
SIGNAL \uart_tx_u1|Add1~10_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~11_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add13~9\ : std_logic;
SIGNAL \uart_tx_u1|Add13~10_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~12_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add10~5\ : std_logic;
SIGNAL \uart_tx_u1|Add10~6_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add2~5\ : std_logic;
SIGNAL \uart_tx_u1|Add2~6_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~13_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add14~3\ : std_logic;
SIGNAL \uart_tx_u1|Add14~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~14_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add12~7\ : std_logic;
SIGNAL \uart_tx_u1|Add12~8_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add4~7\ : std_logic;
SIGNAL \uart_tx_u1|Add4~8_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add8~7\ : std_logic;
SIGNAL \uart_tx_u1|Add8~8_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add0~7\ : std_logic;
SIGNAL \uart_tx_u1|Add0~8_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~15_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~16_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~17_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add7~9\ : std_logic;
SIGNAL \uart_tx_u1|Add7~10_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add15~9\ : std_logic;
SIGNAL \uart_tx_u1|Add15~10_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add3~9\ : std_logic;
SIGNAL \uart_tx_u1|Add3~10_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add11~9\ : std_logic;
SIGNAL \uart_tx_u1|Add11~10_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~18_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~19_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~20_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add16~11\ : std_logic;
SIGNAL \uart_tx_u1|Add16~12_combout\ : std_logic;
SIGNAL \uart_tx_u1|Send_addr[6]~7_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr[6]~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add15~11\ : std_logic;
SIGNAL \uart_tx_u1|Add15~12_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add13~11\ : std_logic;
SIGNAL \uart_tx_u1|Add13~12_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add11~11\ : std_logic;
SIGNAL \uart_tx_u1|Add11~12_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add9~11\ : std_logic;
SIGNAL \uart_tx_u1|Add9~12_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~57_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~58_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add5~11\ : std_logic;
SIGNAL \uart_tx_u1|Add5~12_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add7~11\ : std_logic;
SIGNAL \uart_tx_u1|Add7~12_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add3~11\ : std_logic;
SIGNAL \uart_tx_u1|Add3~12_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add1~11\ : std_logic;
SIGNAL \uart_tx_u1|Add1~12_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~50_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~51_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add4~9\ : std_logic;
SIGNAL \uart_tx_u1|Add4~10_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add6~5_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add2~7\ : std_logic;
SIGNAL \uart_tx_u1|Add2~8_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add0~9\ : std_logic;
SIGNAL \uart_tx_u1|Add0~10_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~54_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~55_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add10~7\ : std_logic;
SIGNAL \uart_tx_u1|Add10~8_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add14~5\ : std_logic;
SIGNAL \uart_tx_u1|Add14~6_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add12~9\ : std_logic;
SIGNAL \uart_tx_u1|Add12~10_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add8~9\ : std_logic;
SIGNAL \uart_tx_u1|Add8~10_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~52_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~53_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~56_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~59_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add16~13\ : std_logic;
SIGNAL \uart_tx_u1|Add16~14_combout\ : std_logic;
SIGNAL \uart_tx_u1|Send_addr[7]~8_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr[7]~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add15~13\ : std_logic;
SIGNAL \uart_tx_u1|Add15~14_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add14~7\ : std_logic;
SIGNAL \uart_tx_u1|Add14~8_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add6~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add7~13\ : std_logic;
SIGNAL \uart_tx_u1|Add7~14_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~67_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~68_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add11~13\ : std_logic;
SIGNAL \uart_tx_u1|Add11~14_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add3~13\ : std_logic;
SIGNAL \uart_tx_u1|Add3~14_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add10~9\ : std_logic;
SIGNAL \uart_tx_u1|Add10~10_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add2~9\ : std_logic;
SIGNAL \uart_tx_u1|Add2~10_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~60_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~61_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add13~13\ : std_logic;
SIGNAL \uart_tx_u1|Add13~14_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add12~11\ : std_logic;
SIGNAL \uart_tx_u1|Add12~12_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add5~13\ : std_logic;
SIGNAL \uart_tx_u1|Add5~14_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add4~11\ : std_logic;
SIGNAL \uart_tx_u1|Add4~12_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~62_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~63_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add1~13\ : std_logic;
SIGNAL \uart_tx_u1|Add1~14_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add9~13\ : std_logic;
SIGNAL \uart_tx_u1|Add9~14_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add8~11\ : std_logic;
SIGNAL \uart_tx_u1|Add8~12_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add0~11\ : std_logic;
SIGNAL \uart_tx_u1|Add0~12_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~64_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~65_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~66_combout\ : std_logic;
SIGNAL \uart_tx_u1|addr~69_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~10_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~14_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~11_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~12_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~13_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~15_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~16_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~20_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~18_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~17_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~19_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~21_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~22_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~26_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~23_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~24_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~25_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~27_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~28_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~64_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~62_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~61_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~63_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~65_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~58_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~54_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~55_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~56_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~57_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~59_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~48_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~52_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~49_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~50_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~51_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~53_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~60_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~66_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~81_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~80_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~82_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~84_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~77_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~74_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~75_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~76_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~73_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~78_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~71_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~67_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~68_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~69_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~70_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~72_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~79_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~85_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~39_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~36_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~37_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~38_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~35_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~40_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~33_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~29_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~30_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~31_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~32_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~34_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~41_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~45_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~43_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~42_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~44_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~46_combout\ : std_logic;
SIGNAL \uart_tx_u1|AT|rom~47_combout\ : std_logic;
SIGNAL \uart_tx_u1|Equal4~3_combout\ : std_logic;
SIGNAL \uart_tx_u1|receive_ok_en~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|receive_ok_en~feeder_combout\ : std_logic;
SIGNAL \uart_tx_u1|receive_ok_en~q\ : std_logic;
SIGNAL \uart_rx_u2|Selector3~1_combout\ : std_logic;
SIGNAL \uart_rx_u2|Selector3~0_combout\ : std_logic;
SIGNAL \uart_rx_u2|Selector3~2_combout\ : std_logic;
SIGNAL \uart_rx_u2|rxd[4]~feeder_combout\ : std_logic;
SIGNAL \uart_rx_u2|Selector2~2_combout\ : std_logic;
SIGNAL \uart_rx_u2|Selector2~3_combout\ : std_logic;
SIGNAL \uart_rx_u2|rxd[5]~feeder_combout\ : std_logic;
SIGNAL \uart_rx_u2|Selector0~3_combout\ : std_logic;
SIGNAL \uart_rx_u2|Selector0~4_combout\ : std_logic;
SIGNAL \uart_rx_u2|Selector4~2_combout\ : std_logic;
SIGNAL \uart_rx_u2|Selector4~3_combout\ : std_logic;
SIGNAL \uart_rx_u2|Selector4~4_combout\ : std_logic;
SIGNAL \uart_rx_u2|rxd[3]~feeder_combout\ : std_logic;
SIGNAL \receiver_OK_u1|state~11_combout\ : std_logic;
SIGNAL \receiver_OK_u1|state~14_combout\ : std_logic;
SIGNAL \receiver_OK_u1|Selector0~0_combout\ : std_logic;
SIGNAL \receiver_OK_u1|state.000~q\ : std_logic;
SIGNAL \receiver_OK_u1|state~16_combout\ : std_logic;
SIGNAL \receiver_OK_u1|state.001~q\ : std_logic;
SIGNAL \receiver_OK_u1|state~15_combout\ : std_logic;
SIGNAL \receiver_OK_u1|state.010~q\ : std_logic;
SIGNAL \receiver_OK_u1|state~12_combout\ : std_logic;
SIGNAL \receiver_OK_u1|state~13_combout\ : std_logic;
SIGNAL \receiver_OK_u1|state.011~q\ : std_logic;
SIGNAL \receiver_OK_u1|OK~2_combout\ : std_logic;
SIGNAL \receiver_OK_u1|OK~3_combout\ : std_logic;
SIGNAL \receiver_OK_u1|OK~q\ : std_logic;
SIGNAL \uart_tx_u1|SEND_END_cmd~feeder_combout\ : std_logic;
SIGNAL \uart_tx_u1|SEND_END_cmd~q\ : std_logic;
SIGNAL \uart_tx_u1|btn~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|btn~q\ : std_logic;
SIGNAL \uart_tx_u1|SEND_DATA_en~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|SEND_DATA_en~q\ : std_logic;
SIGNAL \uart_tx_u1|always0~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector2~3_combout\ : std_logic;
SIGNAL \uart_tx_u1|stage_tx.STOP~q\ : std_logic;
SIGNAL \uart_tx_u1|stage_tx.IDLE~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|stage_tx.IDLE~q\ : std_logic;
SIGNAL \uart_tx_u1|Selector0~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector0~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|stage_tx.START~q\ : std_logic;
SIGNAL \uart_tx_u1|Selector1~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|stage_tx.SEND_DATA~q\ : std_logic;
SIGNAL \uart_tx_u1|tx~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|tx~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|tx~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|Mux8~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Mux8~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|tx~3_combout\ : std_logic;
SIGNAL \uart_tx_u1|tx~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|tx~q\ : std_logic;
SIGNAL \uart_rx_u2|rxd\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_rx_u2|rx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_rx_u2|cnt_bit\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \uart_rx_u2|cnt_baud\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Select_mode_u1|LED_select\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \uart_tx_u1|cnt_rom\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_tx_u1|addr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_tx_u1|cnt_bit\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \uart_tx_u1|cnt_baud\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \uart_tx_u1|Send_addr_w\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_select_w~input_o\ : std_logic;
SIGNAL \uart_rx_u2|ALT_INV_R_receiving~q\ : std_logic;
SIGNAL \uart_tx_u1|ALT_INV_always0~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|ALT_INV_tx~q\ : std_logic;

BEGIN

ww_iCLK <= iCLK;
ww_RST_n <= RST_n;
ww_select_w <= select_w;
ww_tx_en <= tx_en;
ww_SW <= SW;
ww_rx <= rx;
tx <= ww_tx;
Client_wifi_txd <= ww_Client_wifi_txd;
RST_WiFi <= ww_RST_WiFi;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\iCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \iCLK~input_o\);

\RST_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST_n~input_o\);
\ALT_INV_select_w~input_o\ <= NOT \select_w~input_o\;
\uart_rx_u2|ALT_INV_R_receiving~q\ <= NOT \uart_rx_u2|R_receiving~q\;
\uart_tx_u1|ALT_INV_always0~4_combout\ <= NOT \uart_tx_u1|always0~4_combout\;
\uart_tx_u1|ALT_INV_tx~q\ <= NOT \uart_tx_u1|tx~q\;

-- Location: IOOBUF_X14_Y43_N16
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
\Client_wifi_txd~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx~input_o\,
	devoe => ww_devoe,
	o => \Client_wifi_txd~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\RST_WiFi~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RST_n~input_o\,
	devoe => ww_devoe,
	o => \RST_WiFi~output_o\);

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

-- Location: LCCOMB_X17_Y25_N12
\uart_tx_u1|Add17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add17~0_combout\ = \uart_tx_u1|cnt_baud\(0) $ (VCC)
-- \uart_tx_u1|Add17~1\ = CARRY(\uart_tx_u1|cnt_baud\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|cnt_baud\(0),
	datad => VCC,
	combout => \uart_tx_u1|Add17~0_combout\,
	cout => \uart_tx_u1|Add17~1\);

-- Location: IOIBUF_X0_Y21_N8
\RST_n~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST_n,
	o => \RST_n~input_o\);

-- Location: CLKCTRL_G2
\RST_n~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST_n~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST_n~inputclkctrl_outclk\);

-- Location: FF_X17_Y25_N13
\uart_tx_u1|cnt_baud[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|Add17~0_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|cnt_baud\(0));

-- Location: LCCOMB_X17_Y25_N14
\uart_tx_u1|Add17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add17~2_combout\ = (\uart_tx_u1|cnt_baud\(1) & (!\uart_tx_u1|Add17~1\)) # (!\uart_tx_u1|cnt_baud\(1) & ((\uart_tx_u1|Add17~1\) # (GND)))
-- \uart_tx_u1|Add17~3\ = CARRY((!\uart_tx_u1|Add17~1\) # (!\uart_tx_u1|cnt_baud\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|cnt_baud\(1),
	datad => VCC,
	cin => \uart_tx_u1|Add17~1\,
	combout => \uart_tx_u1|Add17~2_combout\,
	cout => \uart_tx_u1|Add17~3\);

-- Location: LCCOMB_X17_Y25_N0
\uart_tx_u1|cnt_baud~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|cnt_baud~3_combout\ = (\uart_tx_u1|Add17~2_combout\ & ((\uart_tx_u1|Equal3~1_combout\) # ((\uart_tx_u1|Equal3~0_combout\) # (!\uart_tx_u1|cnt_baud\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Equal3~1_combout\,
	datab => \uart_tx_u1|Equal3~0_combout\,
	datac => \uart_tx_u1|Add17~2_combout\,
	datad => \uart_tx_u1|cnt_baud\(0),
	combout => \uart_tx_u1|cnt_baud~3_combout\);

-- Location: FF_X17_Y25_N1
\uart_tx_u1|cnt_baud[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|cnt_baud~3_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|cnt_baud\(1));

-- Location: LCCOMB_X17_Y25_N16
\uart_tx_u1|Add17~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add17~4_combout\ = (\uart_tx_u1|cnt_baud\(2) & (\uart_tx_u1|Add17~3\ $ (GND))) # (!\uart_tx_u1|cnt_baud\(2) & (!\uart_tx_u1|Add17~3\ & VCC))
-- \uart_tx_u1|Add17~5\ = CARRY((\uart_tx_u1|cnt_baud\(2) & !\uart_tx_u1|Add17~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|cnt_baud\(2),
	datad => VCC,
	cin => \uart_tx_u1|Add17~3\,
	combout => \uart_tx_u1|Add17~4_combout\,
	cout => \uart_tx_u1|Add17~5\);

-- Location: FF_X17_Y25_N17
\uart_tx_u1|cnt_baud[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|Add17~4_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|cnt_baud\(2));

-- Location: LCCOMB_X17_Y25_N18
\uart_tx_u1|Add17~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add17~6_combout\ = (\uart_tx_u1|cnt_baud\(3) & (!\uart_tx_u1|Add17~5\)) # (!\uart_tx_u1|cnt_baud\(3) & ((\uart_tx_u1|Add17~5\) # (GND)))
-- \uart_tx_u1|Add17~7\ = CARRY((!\uart_tx_u1|Add17~5\) # (!\uart_tx_u1|cnt_baud\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|cnt_baud\(3),
	datad => VCC,
	cin => \uart_tx_u1|Add17~5\,
	combout => \uart_tx_u1|Add17~6_combout\,
	cout => \uart_tx_u1|Add17~7\);

-- Location: FF_X17_Y25_N19
\uart_tx_u1|cnt_baud[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|Add17~6_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|cnt_baud\(3));

-- Location: LCCOMB_X17_Y25_N20
\uart_tx_u1|Add17~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add17~8_combout\ = (\uart_tx_u1|cnt_baud\(4) & (\uart_tx_u1|Add17~7\ $ (GND))) # (!\uart_tx_u1|cnt_baud\(4) & (!\uart_tx_u1|Add17~7\ & VCC))
-- \uart_tx_u1|Add17~9\ = CARRY((\uart_tx_u1|cnt_baud\(4) & !\uart_tx_u1|Add17~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|cnt_baud\(4),
	datad => VCC,
	cin => \uart_tx_u1|Add17~7\,
	combout => \uart_tx_u1|Add17~8_combout\,
	cout => \uart_tx_u1|Add17~9\);

-- Location: LCCOMB_X17_Y25_N30
\uart_tx_u1|cnt_baud~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|cnt_baud~4_combout\ = (\uart_tx_u1|Add17~8_combout\ & (((\uart_tx_u1|Equal3~0_combout\) # (\uart_tx_u1|Equal3~1_combout\)) # (!\uart_tx_u1|cnt_baud\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|cnt_baud\(0),
	datab => \uart_tx_u1|Equal3~0_combout\,
	datac => \uart_tx_u1|Add17~8_combout\,
	datad => \uart_tx_u1|Equal3~1_combout\,
	combout => \uart_tx_u1|cnt_baud~4_combout\);

-- Location: FF_X17_Y25_N31
\uart_tx_u1|cnt_baud[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|cnt_baud~4_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|cnt_baud\(4));

-- Location: LCCOMB_X17_Y25_N6
\uart_tx_u1|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Equal3~1_combout\ = (\uart_tx_u1|cnt_baud\(3)) # ((\uart_tx_u1|cnt_baud\(2)) # ((\uart_tx_u1|cnt_baud\(1)) # (!\uart_tx_u1|cnt_baud\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|cnt_baud\(3),
	datab => \uart_tx_u1|cnt_baud\(2),
	datac => \uart_tx_u1|cnt_baud\(4),
	datad => \uart_tx_u1|cnt_baud\(1),
	combout => \uart_tx_u1|Equal3~1_combout\);

-- Location: LCCOMB_X17_Y25_N22
\uart_tx_u1|Add17~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add17~10_combout\ = (\uart_tx_u1|cnt_baud\(5) & (!\uart_tx_u1|Add17~9\)) # (!\uart_tx_u1|cnt_baud\(5) & ((\uart_tx_u1|Add17~9\) # (GND)))
-- \uart_tx_u1|Add17~11\ = CARRY((!\uart_tx_u1|Add17~9\) # (!\uart_tx_u1|cnt_baud\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|cnt_baud\(5),
	datad => VCC,
	cin => \uart_tx_u1|Add17~9\,
	combout => \uart_tx_u1|Add17~10_combout\,
	cout => \uart_tx_u1|Add17~11\);

-- Location: LCCOMB_X17_Y25_N8
\uart_tx_u1|cnt_baud~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|cnt_baud~2_combout\ = (\uart_tx_u1|Add17~10_combout\ & ((\uart_tx_u1|Equal3~1_combout\) # ((\uart_tx_u1|Equal3~0_combout\) # (!\uart_tx_u1|cnt_baud\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Equal3~1_combout\,
	datab => \uart_tx_u1|Equal3~0_combout\,
	datac => \uart_tx_u1|Add17~10_combout\,
	datad => \uart_tx_u1|cnt_baud\(0),
	combout => \uart_tx_u1|cnt_baud~2_combout\);

-- Location: FF_X17_Y25_N9
\uart_tx_u1|cnt_baud[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|cnt_baud~2_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|cnt_baud\(5));

-- Location: LCCOMB_X17_Y25_N24
\uart_tx_u1|Add17~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add17~12_combout\ = (\uart_tx_u1|cnt_baud\(6) & (\uart_tx_u1|Add17~11\ $ (GND))) # (!\uart_tx_u1|cnt_baud\(6) & (!\uart_tx_u1|Add17~11\ & VCC))
-- \uart_tx_u1|Add17~13\ = CARRY((\uart_tx_u1|cnt_baud\(6) & !\uart_tx_u1|Add17~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|cnt_baud\(6),
	datad => VCC,
	cin => \uart_tx_u1|Add17~11\,
	combout => \uart_tx_u1|Add17~12_combout\,
	cout => \uart_tx_u1|Add17~13\);

-- Location: FF_X17_Y25_N25
\uart_tx_u1|cnt_baud[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|Add17~12_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|cnt_baud\(6));

-- Location: LCCOMB_X17_Y25_N26
\uart_tx_u1|Add17~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add17~14_combout\ = (\uart_tx_u1|cnt_baud\(7) & (!\uart_tx_u1|Add17~13\)) # (!\uart_tx_u1|cnt_baud\(7) & ((\uart_tx_u1|Add17~13\) # (GND)))
-- \uart_tx_u1|Add17~15\ = CARRY((!\uart_tx_u1|Add17~13\) # (!\uart_tx_u1|cnt_baud\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|cnt_baud\(7),
	datad => VCC,
	cin => \uart_tx_u1|Add17~13\,
	combout => \uart_tx_u1|Add17~14_combout\,
	cout => \uart_tx_u1|Add17~15\);

-- Location: LCCOMB_X17_Y25_N10
\uart_tx_u1|cnt_baud~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|cnt_baud~1_combout\ = (\uart_tx_u1|Add17~14_combout\ & ((\uart_tx_u1|Equal3~1_combout\) # ((\uart_tx_u1|Equal3~0_combout\) # (!\uart_tx_u1|cnt_baud\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Equal3~1_combout\,
	datab => \uart_tx_u1|Equal3~0_combout\,
	datac => \uart_tx_u1|Add17~14_combout\,
	datad => \uart_tx_u1|cnt_baud\(0),
	combout => \uart_tx_u1|cnt_baud~1_combout\);

-- Location: FF_X17_Y25_N11
\uart_tx_u1|cnt_baud[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|cnt_baud~1_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|cnt_baud\(7));

-- Location: LCCOMB_X17_Y25_N28
\uart_tx_u1|Add17~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add17~16_combout\ = \uart_tx_u1|cnt_baud\(8) $ (!\uart_tx_u1|Add17~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|cnt_baud\(8),
	cin => \uart_tx_u1|Add17~15\,
	combout => \uart_tx_u1|Add17~16_combout\);

-- Location: LCCOMB_X17_Y25_N4
\uart_tx_u1|cnt_baud~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|cnt_baud~0_combout\ = (\uart_tx_u1|Add17~16_combout\ & (((\uart_tx_u1|Equal3~0_combout\) # (\uart_tx_u1|Equal3~1_combout\)) # (!\uart_tx_u1|cnt_baud\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|cnt_baud\(0),
	datab => \uart_tx_u1|Equal3~0_combout\,
	datac => \uart_tx_u1|Add17~16_combout\,
	datad => \uart_tx_u1|Equal3~1_combout\,
	combout => \uart_tx_u1|cnt_baud~0_combout\);

-- Location: FF_X17_Y25_N5
\uart_tx_u1|cnt_baud[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|cnt_baud~0_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|cnt_baud\(8));

-- Location: LCCOMB_X17_Y25_N2
\uart_tx_u1|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Equal3~0_combout\ = (((\uart_tx_u1|cnt_baud\(6)) # (!\uart_tx_u1|cnt_baud\(8))) # (!\uart_tx_u1|cnt_baud\(5))) # (!\uart_tx_u1|cnt_baud\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|cnt_baud\(7),
	datab => \uart_tx_u1|cnt_baud\(5),
	datac => \uart_tx_u1|cnt_baud\(8),
	datad => \uart_tx_u1|cnt_baud\(6),
	combout => \uart_tx_u1|Equal3~0_combout\);

-- Location: LCCOMB_X18_Y25_N22
\uart_tx_u1|Equal3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Equal3~2_combout\ = (\uart_tx_u1|Equal3~0_combout\) # ((\uart_tx_u1|Equal3~1_combout\) # (!\uart_tx_u1|cnt_baud\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Equal3~0_combout\,
	datac => \uart_tx_u1|Equal3~1_combout\,
	datad => \uart_tx_u1|cnt_baud\(0),
	combout => \uart_tx_u1|Equal3~2_combout\);

-- Location: IOIBUF_X67_Y22_N1
\tx_en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_en,
	o => \tx_en~input_o\);

-- Location: LCCOMB_X18_Y25_N24
\uart_tx_u1|start_cnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|start_cnt~0_combout\ = (\uart_tx_u1|stage_tx.SEND_DATA~q\ & ((\tx_en~input_o\ & (!\uart_tx_u1|always0~0_combout\)) # (!\tx_en~input_o\ & ((\uart_tx_u1|start_cnt~q\))))) # (!\uart_tx_u1|stage_tx.SEND_DATA~q\ & (((\uart_tx_u1|start_cnt~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|stage_tx.SEND_DATA~q\,
	datab => \uart_tx_u1|always0~0_combout\,
	datac => \uart_tx_u1|start_cnt~q\,
	datad => \tx_en~input_o\,
	combout => \uart_tx_u1|start_cnt~0_combout\);

-- Location: FF_X18_Y25_N25
\uart_tx_u1|start_cnt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|start_cnt~0_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|start_cnt~q\);

-- Location: LCCOMB_X18_Y25_N16
\uart_tx_u1|cnt_bit[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|cnt_bit[0]~2_combout\ = \uart_tx_u1|cnt_bit\(0) $ (((\uart_tx_u1|stage_tx.SEND_DATA~q\ & (\uart_tx_u1|start_cnt~q\ & !\uart_tx_u1|Equal3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|stage_tx.SEND_DATA~q\,
	datab => \uart_tx_u1|start_cnt~q\,
	datac => \uart_tx_u1|cnt_bit\(0),
	datad => \uart_tx_u1|Equal3~2_combout\,
	combout => \uart_tx_u1|cnt_bit[0]~2_combout\);

-- Location: FF_X18_Y25_N17
\uart_tx_u1|cnt_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|cnt_bit[0]~2_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|cnt_bit\(0));

-- Location: LCCOMB_X18_Y25_N14
\uart_tx_u1|cnt_bit[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|cnt_bit[1]~0_combout\ = (\uart_tx_u1|stage_tx.SEND_DATA~q\ & (\uart_tx_u1|cnt_bit\(0) & (!\uart_tx_u1|Equal3~2_combout\ & \uart_tx_u1|start_cnt~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|stage_tx.SEND_DATA~q\,
	datab => \uart_tx_u1|cnt_bit\(0),
	datac => \uart_tx_u1|Equal3~2_combout\,
	datad => \uart_tx_u1|start_cnt~q\,
	combout => \uart_tx_u1|cnt_bit[1]~0_combout\);

-- Location: LCCOMB_X18_Y25_N18
\uart_tx_u1|cnt_bit[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|cnt_bit[1]~1_combout\ = \uart_tx_u1|cnt_bit[1]~0_combout\ $ (\uart_tx_u1|cnt_bit\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|cnt_bit[1]~0_combout\,
	datac => \uart_tx_u1|cnt_bit\(1),
	combout => \uart_tx_u1|cnt_bit[1]~1_combout\);

-- Location: FF_X18_Y25_N19
\uart_tx_u1|cnt_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|cnt_bit[1]~1_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|cnt_bit\(1));

-- Location: LCCOMB_X18_Y25_N2
\uart_tx_u1|cnt_bit[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|cnt_bit[2]~3_combout\ = \uart_tx_u1|cnt_bit\(2) $ (((\uart_tx_u1|cnt_bit[1]~0_combout\ & \uart_tx_u1|cnt_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|cnt_bit[1]~0_combout\,
	datac => \uart_tx_u1|cnt_bit\(2),
	datad => \uart_tx_u1|cnt_bit\(1),
	combout => \uart_tx_u1|cnt_bit[2]~3_combout\);

-- Location: FF_X18_Y25_N3
\uart_tx_u1|cnt_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|cnt_bit[2]~3_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|cnt_bit\(2));

-- Location: LCCOMB_X18_Y25_N4
\uart_tx_u1|always0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|always0~0_combout\ = (\uart_tx_u1|cnt_bit\(2) & (\uart_tx_u1|cnt_bit\(1) & (!\uart_tx_u1|Equal3~2_combout\ & \uart_tx_u1|cnt_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|cnt_bit\(2),
	datab => \uart_tx_u1|cnt_bit\(1),
	datac => \uart_tx_u1|Equal3~2_combout\,
	datad => \uart_tx_u1|cnt_bit\(0),
	combout => \uart_tx_u1|always0~0_combout\);

-- Location: LCCOMB_X25_Y23_N14
\uart_rx_u2|cnt_baud[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|cnt_baud[0]~9_combout\ = \uart_rx_u2|cnt_baud\(0) $ (VCC)
-- \uart_rx_u2|cnt_baud[0]~10\ = CARRY(\uart_rx_u2|cnt_baud\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_u2|cnt_baud\(0),
	datad => VCC,
	combout => \uart_rx_u2|cnt_baud[0]~9_combout\,
	cout => \uart_rx_u2|cnt_baud[0]~10\);

-- Location: LCCOMB_X25_Y23_N28
\uart_rx_u2|cnt_baud[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|cnt_baud[7]~23_combout\ = (\uart_rx_u2|cnt_baud\(7) & (!\uart_rx_u2|cnt_baud[6]~22\)) # (!\uart_rx_u2|cnt_baud\(7) & ((\uart_rx_u2|cnt_baud[6]~22\) # (GND)))
-- \uart_rx_u2|cnt_baud[7]~24\ = CARRY((!\uart_rx_u2|cnt_baud[6]~22\) # (!\uart_rx_u2|cnt_baud\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_u2|cnt_baud\(7),
	datad => VCC,
	cin => \uart_rx_u2|cnt_baud[6]~22\,
	combout => \uart_rx_u2|cnt_baud[7]~23_combout\,
	cout => \uart_rx_u2|cnt_baud[7]~24\);

-- Location: LCCOMB_X25_Y23_N30
\uart_rx_u2|cnt_baud[8]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|cnt_baud[8]~25_combout\ = \uart_rx_u2|cnt_baud\(8) $ (!\uart_rx_u2|cnt_baud[7]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|cnt_baud\(8),
	cin => \uart_rx_u2|cnt_baud[7]~24\,
	combout => \uart_rx_u2|cnt_baud[8]~25_combout\);

-- Location: FF_X25_Y23_N31
\uart_rx_u2|cnt_baud[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u2|cnt_baud[8]~25_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sclr => \uart_rx_u2|cnt_baud[5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|cnt_baud\(8));

-- Location: IOIBUF_X67_Y22_N8
\rx~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx,
	o => \rx~input_o\);

-- Location: FF_X26_Y23_N23
\uart_rx_u2|rx_reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \rx~input_o\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|rx_reg0~q\);

-- Location: LCCOMB_X25_Y23_N12
\uart_rx_u2|rx_reg1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|rx_reg1~feeder_combout\ = \uart_rx_u2|rx_reg0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_u2|rx_reg0~q\,
	combout => \uart_rx_u2|rx_reg1~feeder_combout\);

-- Location: FF_X25_Y23_N13
\uart_rx_u2|rx_reg1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u2|rx_reg1~feeder_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|rx_reg1~q\);

-- Location: LCCOMB_X25_Y23_N10
\uart_rx_u2|rx_reg2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|rx_reg2~feeder_combout\ = \uart_rx_u2|rx_reg1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_u2|rx_reg1~q\,
	combout => \uart_rx_u2|rx_reg2~feeder_combout\);

-- Location: FF_X25_Y23_N11
\uart_rx_u2|rx_reg2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u2|rx_reg2~feeder_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|rx_reg2~q\);

-- Location: LCCOMB_X25_Y23_N8
\uart_rx_u2|rx_reg3~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|rx_reg3~feeder_combout\ = \uart_rx_u2|rx_reg2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_u2|rx_reg2~q\,
	combout => \uart_rx_u2|rx_reg3~feeder_combout\);

-- Location: FF_X25_Y23_N9
\uart_rx_u2|rx_reg3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u2|rx_reg3~feeder_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|rx_reg3~q\);

-- Location: LCCOMB_X27_Y24_N4
\uart_rx_u2|stage_rx~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|stage_rx~11_combout\ = (\uart_rx_u2|R_receiving~q\ & ((\uart_rx_u2|Equal2~1_combout\ & (\uart_rx_u2|stage_rx.START~q\)) # (!\uart_rx_u2|Equal2~1_combout\ & ((!\uart_rx_u2|stage_rx.STOP~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|Equal2~1_combout\,
	datab => \uart_rx_u2|R_receiving~q\,
	datac => \uart_rx_u2|stage_rx.START~q\,
	datad => \uart_rx_u2|stage_rx.STOP~q\,
	combout => \uart_rx_u2|stage_rx~11_combout\);

-- Location: FF_X27_Y24_N5
\uart_rx_u2|stage_rx.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u2|stage_rx~11_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|stage_rx.START~q\);

-- Location: LCCOMB_X27_Y24_N6
\uart_rx_u2|stage_rx~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|stage_rx~10_combout\ = (\uart_rx_u2|Equal2~1_combout\ & (((\uart_rx_u2|stage_rx.RECEIVE_DATA~q\)))) # (!\uart_rx_u2|Equal2~1_combout\ & (((\uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & !\uart_rx_u2|Decoder0~0_combout\)) # 
-- (!\uart_rx_u2|stage_rx.START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|Equal2~1_combout\,
	datab => \uart_rx_u2|stage_rx.START~q\,
	datac => \uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datad => \uart_rx_u2|Decoder0~0_combout\,
	combout => \uart_rx_u2|stage_rx~10_combout\);

-- Location: FF_X27_Y24_N7
\uart_rx_u2|stage_rx.RECEIVE_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u2|stage_rx~10_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sclr => \uart_rx_u2|ALT_INV_R_receiving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|stage_rx.RECEIVE_DATA~q\);

-- Location: LCCOMB_X27_Y24_N8
\uart_rx_u2|cnt_bit[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|cnt_bit[0]~0_combout\ = \uart_rx_u2|cnt_bit\(0) $ (((!\uart_rx_u2|Equal2~1_combout\ & \uart_rx_u2|stage_rx.RECEIVE_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|Equal2~1_combout\,
	datac => \uart_rx_u2|cnt_bit\(0),
	datad => \uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	combout => \uart_rx_u2|cnt_bit[0]~0_combout\);

-- Location: FF_X27_Y24_N9
\uart_rx_u2|cnt_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u2|cnt_bit[0]~0_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|cnt_bit\(0));

-- Location: LCCOMB_X27_Y24_N14
\uart_rx_u2|cnt_bit[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|cnt_bit[1]~1_combout\ = \uart_rx_u2|cnt_bit\(1) $ (((!\uart_rx_u2|Equal2~1_combout\ & (\uart_rx_u2|cnt_bit\(0) & \uart_rx_u2|stage_rx.RECEIVE_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|Equal2~1_combout\,
	datab => \uart_rx_u2|cnt_bit\(0),
	datac => \uart_rx_u2|cnt_bit\(1),
	datad => \uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	combout => \uart_rx_u2|cnt_bit[1]~1_combout\);

-- Location: FF_X27_Y24_N15
\uart_rx_u2|cnt_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u2|cnt_bit[1]~1_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|cnt_bit\(1));

-- Location: LCCOMB_X27_Y24_N20
\uart_rx_u2|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|Decoder0~0_combout\ = (\uart_rx_u2|cnt_bit\(0) & (\uart_rx_u2|cnt_bit\(1) & \uart_rx_u2|cnt_bit\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_u2|cnt_bit\(0),
	datac => \uart_rx_u2|cnt_bit\(1),
	datad => \uart_rx_u2|cnt_bit\(2),
	combout => \uart_rx_u2|Decoder0~0_combout\);

-- Location: LCCOMB_X27_Y24_N16
\uart_rx_u2|stage_rx~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|stage_rx~9_combout\ = (\uart_rx_u2|Equal2~1_combout\ & (((\uart_rx_u2|stage_rx.STOP~q\)))) # (!\uart_rx_u2|Equal2~1_combout\ & (\uart_rx_u2|Decoder0~0_combout\ & ((\uart_rx_u2|stage_rx.RECEIVE_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|Equal2~1_combout\,
	datab => \uart_rx_u2|Decoder0~0_combout\,
	datac => \uart_rx_u2|stage_rx.STOP~q\,
	datad => \uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	combout => \uart_rx_u2|stage_rx~9_combout\);

-- Location: FF_X27_Y24_N17
\uart_rx_u2|stage_rx.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u2|stage_rx~9_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sclr => \uart_rx_u2|ALT_INV_R_receiving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|stage_rx.STOP~q\);

-- Location: LCCOMB_X26_Y23_N4
\uart_rx_u2|rx_done~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|rx_done~0_combout\ = (\uart_rx_u2|R_receiving~q\ & ((\uart_rx_u2|Equal2~1_combout\ & (\uart_rx_u2|rx_done~q\)) # (!\uart_rx_u2|Equal2~1_combout\ & ((\uart_rx_u2|stage_rx.STOP~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|R_receiving~q\,
	datab => \uart_rx_u2|Equal2~1_combout\,
	datac => \uart_rx_u2|rx_done~q\,
	datad => \uart_rx_u2|stage_rx.STOP~q\,
	combout => \uart_rx_u2|rx_done~0_combout\);

-- Location: FF_X26_Y23_N5
\uart_rx_u2|rx_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u2|rx_done~0_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|rx_done~q\);

-- Location: LCCOMB_X25_Y23_N0
\uart_rx_u2|R_receiving~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|R_receiving~0_combout\ = (!\uart_rx_u2|rx_done~q\ & ((\uart_rx_u2|R_receiving~q\) # ((!\uart_rx_u2|rx_reg2~q\ & \uart_rx_u2|rx_reg3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|rx_reg2~q\,
	datab => \uart_rx_u2|rx_reg3~q\,
	datac => \uart_rx_u2|R_receiving~q\,
	datad => \uart_rx_u2|rx_done~q\,
	combout => \uart_rx_u2|R_receiving~0_combout\);

-- Location: FF_X25_Y23_N1
\uart_rx_u2|R_receiving\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u2|R_receiving~0_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|R_receiving~q\);

-- Location: FF_X26_Y23_N7
\uart_rx_u2|bps_rx_clk_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \uart_rx_u2|R_receiving~q\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|bps_rx_clk_en~q\);

-- Location: LCCOMB_X26_Y23_N12
\uart_rx_u2|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|Equal1~1_combout\ = (((\uart_rx_u2|cnt_baud\(6)) # (\uart_rx_u2|cnt_baud\(3))) # (!\uart_rx_u2|cnt_baud\(5))) # (!\uart_rx_u2|cnt_baud\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|cnt_baud\(0),
	datab => \uart_rx_u2|cnt_baud\(5),
	datac => \uart_rx_u2|cnt_baud\(6),
	datad => \uart_rx_u2|cnt_baud\(3),
	combout => \uart_rx_u2|Equal1~1_combout\);

-- Location: LCCOMB_X26_Y23_N6
\uart_rx_u2|cnt_baud[5]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|cnt_baud[5]~27_combout\ = ((\uart_rx_u2|Equal1~0_combout\ & (\uart_rx_u2|cnt_baud\(8) & !\uart_rx_u2|Equal1~1_combout\))) # (!\uart_rx_u2|bps_rx_clk_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|Equal1~0_combout\,
	datab => \uart_rx_u2|cnt_baud\(8),
	datac => \uart_rx_u2|bps_rx_clk_en~q\,
	datad => \uart_rx_u2|Equal1~1_combout\,
	combout => \uart_rx_u2|cnt_baud[5]~27_combout\);

-- Location: FF_X25_Y23_N15
\uart_rx_u2|cnt_baud[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u2|cnt_baud[0]~9_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sclr => \uart_rx_u2|cnt_baud[5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|cnt_baud\(0));

-- Location: LCCOMB_X25_Y23_N16
\uart_rx_u2|cnt_baud[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|cnt_baud[1]~11_combout\ = (\uart_rx_u2|cnt_baud\(1) & (!\uart_rx_u2|cnt_baud[0]~10\)) # (!\uart_rx_u2|cnt_baud\(1) & ((\uart_rx_u2|cnt_baud[0]~10\) # (GND)))
-- \uart_rx_u2|cnt_baud[1]~12\ = CARRY((!\uart_rx_u2|cnt_baud[0]~10\) # (!\uart_rx_u2|cnt_baud\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_u2|cnt_baud\(1),
	datad => VCC,
	cin => \uart_rx_u2|cnt_baud[0]~10\,
	combout => \uart_rx_u2|cnt_baud[1]~11_combout\,
	cout => \uart_rx_u2|cnt_baud[1]~12\);

-- Location: FF_X25_Y23_N17
\uart_rx_u2|cnt_baud[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u2|cnt_baud[1]~11_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sclr => \uart_rx_u2|cnt_baud[5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|cnt_baud\(1));

-- Location: LCCOMB_X25_Y23_N18
\uart_rx_u2|cnt_baud[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|cnt_baud[2]~13_combout\ = (\uart_rx_u2|cnt_baud\(2) & (\uart_rx_u2|cnt_baud[1]~12\ $ (GND))) # (!\uart_rx_u2|cnt_baud\(2) & (!\uart_rx_u2|cnt_baud[1]~12\ & VCC))
-- \uart_rx_u2|cnt_baud[2]~14\ = CARRY((\uart_rx_u2|cnt_baud\(2) & !\uart_rx_u2|cnt_baud[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_u2|cnt_baud\(2),
	datad => VCC,
	cin => \uart_rx_u2|cnt_baud[1]~12\,
	combout => \uart_rx_u2|cnt_baud[2]~13_combout\,
	cout => \uart_rx_u2|cnt_baud[2]~14\);

-- Location: FF_X25_Y23_N19
\uart_rx_u2|cnt_baud[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u2|cnt_baud[2]~13_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sclr => \uart_rx_u2|cnt_baud[5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|cnt_baud\(2));

-- Location: LCCOMB_X25_Y23_N20
\uart_rx_u2|cnt_baud[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|cnt_baud[3]~15_combout\ = (\uart_rx_u2|cnt_baud\(3) & (!\uart_rx_u2|cnt_baud[2]~14\)) # (!\uart_rx_u2|cnt_baud\(3) & ((\uart_rx_u2|cnt_baud[2]~14\) # (GND)))
-- \uart_rx_u2|cnt_baud[3]~16\ = CARRY((!\uart_rx_u2|cnt_baud[2]~14\) # (!\uart_rx_u2|cnt_baud\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_u2|cnt_baud\(3),
	datad => VCC,
	cin => \uart_rx_u2|cnt_baud[2]~14\,
	combout => \uart_rx_u2|cnt_baud[3]~15_combout\,
	cout => \uart_rx_u2|cnt_baud[3]~16\);

-- Location: FF_X25_Y23_N21
\uart_rx_u2|cnt_baud[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u2|cnt_baud[3]~15_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sclr => \uart_rx_u2|cnt_baud[5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|cnt_baud\(3));

-- Location: LCCOMB_X25_Y23_N22
\uart_rx_u2|cnt_baud[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|cnt_baud[4]~17_combout\ = (\uart_rx_u2|cnt_baud\(4) & (\uart_rx_u2|cnt_baud[3]~16\ $ (GND))) # (!\uart_rx_u2|cnt_baud\(4) & (!\uart_rx_u2|cnt_baud[3]~16\ & VCC))
-- \uart_rx_u2|cnt_baud[4]~18\ = CARRY((\uart_rx_u2|cnt_baud\(4) & !\uart_rx_u2|cnt_baud[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|cnt_baud\(4),
	datad => VCC,
	cin => \uart_rx_u2|cnt_baud[3]~16\,
	combout => \uart_rx_u2|cnt_baud[4]~17_combout\,
	cout => \uart_rx_u2|cnt_baud[4]~18\);

-- Location: FF_X25_Y23_N23
\uart_rx_u2|cnt_baud[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u2|cnt_baud[4]~17_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sclr => \uart_rx_u2|cnt_baud[5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|cnt_baud\(4));

-- Location: LCCOMB_X25_Y23_N24
\uart_rx_u2|cnt_baud[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|cnt_baud[5]~19_combout\ = (\uart_rx_u2|cnt_baud\(5) & (!\uart_rx_u2|cnt_baud[4]~18\)) # (!\uart_rx_u2|cnt_baud\(5) & ((\uart_rx_u2|cnt_baud[4]~18\) # (GND)))
-- \uart_rx_u2|cnt_baud[5]~20\ = CARRY((!\uart_rx_u2|cnt_baud[4]~18\) # (!\uart_rx_u2|cnt_baud\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_u2|cnt_baud\(5),
	datad => VCC,
	cin => \uart_rx_u2|cnt_baud[4]~18\,
	combout => \uart_rx_u2|cnt_baud[5]~19_combout\,
	cout => \uart_rx_u2|cnt_baud[5]~20\);

-- Location: FF_X25_Y23_N25
\uart_rx_u2|cnt_baud[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u2|cnt_baud[5]~19_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sclr => \uart_rx_u2|cnt_baud[5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|cnt_baud\(5));

-- Location: LCCOMB_X25_Y23_N26
\uart_rx_u2|cnt_baud[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|cnt_baud[6]~21_combout\ = (\uart_rx_u2|cnt_baud\(6) & (\uart_rx_u2|cnt_baud[5]~20\ $ (GND))) # (!\uart_rx_u2|cnt_baud\(6) & (!\uart_rx_u2|cnt_baud[5]~20\ & VCC))
-- \uart_rx_u2|cnt_baud[6]~22\ = CARRY((\uart_rx_u2|cnt_baud\(6) & !\uart_rx_u2|cnt_baud[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|cnt_baud\(6),
	datad => VCC,
	cin => \uart_rx_u2|cnt_baud[5]~20\,
	combout => \uart_rx_u2|cnt_baud[6]~21_combout\,
	cout => \uart_rx_u2|cnt_baud[6]~22\);

-- Location: FF_X25_Y23_N27
\uart_rx_u2|cnt_baud[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u2|cnt_baud[6]~21_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sclr => \uart_rx_u2|cnt_baud[5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|cnt_baud\(6));

-- Location: FF_X25_Y23_N29
\uart_rx_u2|cnt_baud[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u2|cnt_baud[7]~23_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sclr => \uart_rx_u2|cnt_baud[5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|cnt_baud\(7));

-- Location: LCCOMB_X25_Y23_N2
\uart_rx_u2|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|Equal1~0_combout\ = (\uart_rx_u2|cnt_baud\(7) & (!\uart_rx_u2|cnt_baud\(1) & (\uart_rx_u2|cnt_baud\(4) & !\uart_rx_u2|cnt_baud\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|cnt_baud\(7),
	datab => \uart_rx_u2|cnt_baud\(1),
	datac => \uart_rx_u2|cnt_baud\(4),
	datad => \uart_rx_u2|cnt_baud\(2),
	combout => \uart_rx_u2|Equal1~0_combout\);

-- Location: LCCOMB_X26_Y23_N24
\uart_rx_u2|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|Equal2~0_combout\ = (\uart_rx_u2|cnt_baud\(0)) # ((\uart_rx_u2|cnt_baud\(5)) # ((!\uart_rx_u2|cnt_baud\(3)) # (!\uart_rx_u2|cnt_baud\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|cnt_baud\(0),
	datab => \uart_rx_u2|cnt_baud\(5),
	datac => \uart_rx_u2|cnt_baud\(6),
	datad => \uart_rx_u2|cnt_baud\(3),
	combout => \uart_rx_u2|Equal2~0_combout\);

-- Location: LCCOMB_X26_Y23_N2
\uart_rx_u2|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|Equal2~1_combout\ = ((\uart_rx_u2|cnt_baud\(8)) # (\uart_rx_u2|Equal2~0_combout\)) # (!\uart_rx_u2|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|Equal1~0_combout\,
	datab => \uart_rx_u2|cnt_baud\(8),
	datad => \uart_rx_u2|Equal2~0_combout\,
	combout => \uart_rx_u2|Equal2~1_combout\);

-- Location: LCCOMB_X27_Y24_N26
\uart_rx_u2|cnt_bit[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|cnt_bit[2]~2_combout\ = (!\uart_rx_u2|Equal2~1_combout\ & (\uart_rx_u2|cnt_bit\(1) & (\uart_rx_u2|cnt_bit\(0) & \uart_rx_u2|stage_rx.RECEIVE_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|Equal2~1_combout\,
	datab => \uart_rx_u2|cnt_bit\(1),
	datac => \uart_rx_u2|cnt_bit\(0),
	datad => \uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	combout => \uart_rx_u2|cnt_bit[2]~2_combout\);

-- Location: LCCOMB_X27_Y24_N12
\uart_rx_u2|cnt_bit[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|cnt_bit[2]~3_combout\ = \uart_rx_u2|cnt_bit[2]~2_combout\ $ (\uart_rx_u2|cnt_bit\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|cnt_bit[2]~2_combout\,
	datac => \uart_rx_u2|cnt_bit\(2),
	combout => \uart_rx_u2|cnt_bit[2]~3_combout\);

-- Location: FF_X27_Y24_N13
\uart_rx_u2|cnt_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u2|cnt_bit[2]~3_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|cnt_bit\(2));

-- Location: LCCOMB_X27_Y24_N2
\uart_rx_u2|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|Selector1~1_combout\ = (\uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & (((\uart_rx_u2|cnt_bit\(0)) # (!\uart_rx_u2|cnt_bit\(1))) # (!\uart_rx_u2|cnt_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|cnt_bit\(2),
	datab => \uart_rx_u2|cnt_bit\(0),
	datac => \uart_rx_u2|cnt_bit\(1),
	datad => \uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	combout => \uart_rx_u2|Selector1~1_combout\);

-- Location: LCCOMB_X26_Y24_N6
\uart_rx_u2|Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|Selector0~2_combout\ = (\uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & \rx~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datad => \rx~input_o\,
	combout => \uart_rx_u2|Selector0~2_combout\);

-- Location: LCCOMB_X26_Y24_N18
\uart_rx_u2|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|Selector1~0_combout\ = (\uart_rx_u2|Selector0~2_combout\ & (\uart_rx_u2|cnt_bit\(1) & (!\uart_rx_u2|cnt_bit\(0) & \uart_rx_u2|cnt_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|Selector0~2_combout\,
	datab => \uart_rx_u2|cnt_bit\(1),
	datac => \uart_rx_u2|cnt_bit\(0),
	datad => \uart_rx_u2|cnt_bit\(2),
	combout => \uart_rx_u2|Selector1~0_combout\);

-- Location: LCCOMB_X26_Y24_N26
\uart_rx_u2|Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|Selector1~2_combout\ = (\uart_rx_u2|Selector1~0_combout\) # ((\uart_rx_u2|rx_data\(6) & ((\uart_rx_u2|Selector1~1_combout\) # (\uart_rx_u2|stage_rx.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|Selector1~1_combout\,
	datab => \uart_rx_u2|Selector1~0_combout\,
	datac => \uart_rx_u2|rx_data\(6),
	datad => \uart_rx_u2|stage_rx.STOP~q\,
	combout => \uart_rx_u2|Selector1~2_combout\);

-- Location: LCCOMB_X26_Y23_N14
\uart_rx_u2|rx_data[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|rx_data[1]~0_combout\ = ((\uart_rx_u2|Equal1~0_combout\ & (!\uart_rx_u2|cnt_baud\(8) & !\uart_rx_u2|Equal2~0_combout\))) # (!\uart_rx_u2|R_receiving~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|Equal1~0_combout\,
	datab => \uart_rx_u2|cnt_baud\(8),
	datac => \uart_rx_u2|R_receiving~q\,
	datad => \uart_rx_u2|Equal2~0_combout\,
	combout => \uart_rx_u2|rx_data[1]~0_combout\);

-- Location: FF_X26_Y24_N27
\uart_rx_u2|rx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u2|Selector1~2_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sclr => \uart_rx_u2|ALT_INV_R_receiving~q\,
	ena => \uart_rx_u2|rx_data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|rx_data\(6));

-- Location: LCCOMB_X25_Y24_N30
\uart_rx_u2|rxd[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|rxd[6]~feeder_combout\ = \uart_rx_u2|rx_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_u2|rx_data\(6),
	combout => \uart_rx_u2|rxd[6]~feeder_combout\);

-- Location: LCCOMB_X26_Y23_N0
\uart_rx_u2|rxd[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|rxd[7]~0_combout\ = (\uart_rx_u2|R_receiving~q\ & (!\uart_rx_u2|Equal2~1_combout\ & (\RST_n~input_o\ & \uart_rx_u2|stage_rx.STOP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|R_receiving~q\,
	datab => \uart_rx_u2|Equal2~1_combout\,
	datac => \RST_n~input_o\,
	datad => \uart_rx_u2|stage_rx.STOP~q\,
	combout => \uart_rx_u2|rxd[7]~0_combout\);

-- Location: FF_X25_Y24_N31
\uart_rx_u2|rxd[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u2|rxd[6]~feeder_combout\,
	ena => \uart_rx_u2|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|rxd\(6));

-- Location: LCCOMB_X27_Y24_N28
\uart_rx_u2|Selector7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|Selector7~1_combout\ = (\uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & ((\uart_rx_u2|cnt_bit\(2)) # ((\uart_rx_u2|cnt_bit\(0)) # (\uart_rx_u2|cnt_bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|cnt_bit\(2),
	datab => \uart_rx_u2|cnt_bit\(0),
	datac => \uart_rx_u2|cnt_bit\(1),
	datad => \uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	combout => \uart_rx_u2|Selector7~1_combout\);

-- Location: LCCOMB_X26_Y24_N20
\uart_rx_u2|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|Selector7~0_combout\ = (\uart_rx_u2|Selector0~2_combout\ & (!\uart_rx_u2|cnt_bit\(1) & (!\uart_rx_u2|cnt_bit\(0) & !\uart_rx_u2|cnt_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|Selector0~2_combout\,
	datab => \uart_rx_u2|cnt_bit\(1),
	datac => \uart_rx_u2|cnt_bit\(0),
	datad => \uart_rx_u2|cnt_bit\(2),
	combout => \uart_rx_u2|Selector7~0_combout\);

-- Location: LCCOMB_X26_Y24_N28
\uart_rx_u2|Selector7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|Selector7~2_combout\ = (\uart_rx_u2|Selector7~0_combout\) # ((\uart_rx_u2|rx_data\(0) & ((\uart_rx_u2|Selector7~1_combout\) # (\uart_rx_u2|stage_rx.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|Selector7~1_combout\,
	datab => \uart_rx_u2|stage_rx.STOP~q\,
	datac => \uart_rx_u2|rx_data\(0),
	datad => \uart_rx_u2|Selector7~0_combout\,
	combout => \uart_rx_u2|Selector7~2_combout\);

-- Location: FF_X26_Y24_N29
\uart_rx_u2|rx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u2|Selector7~2_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sclr => \uart_rx_u2|ALT_INV_R_receiving~q\,
	ena => \uart_rx_u2|rx_data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|rx_data\(0));

-- Location: LCCOMB_X25_Y24_N28
\uart_rx_u2|rxd[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|rxd[0]~feeder_combout\ = \uart_rx_u2|rx_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_u2|rx_data\(0),
	combout => \uart_rx_u2|rxd[0]~feeder_combout\);

-- Location: FF_X25_Y24_N29
\uart_rx_u2|rxd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u2|rxd[0]~feeder_combout\,
	ena => \uart_rx_u2|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|rxd\(0));

-- Location: LCCOMB_X27_Y24_N30
\uart_rx_u2|Selector5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|Selector5~1_combout\ = (\uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & ((\uart_rx_u2|cnt_bit\(2)) # ((\uart_rx_u2|cnt_bit\(0)) # (!\uart_rx_u2|cnt_bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|cnt_bit\(2),
	datab => \uart_rx_u2|cnt_bit\(0),
	datac => \uart_rx_u2|cnt_bit\(1),
	datad => \uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	combout => \uart_rx_u2|Selector5~1_combout\);

-- Location: LCCOMB_X26_Y24_N14
\uart_rx_u2|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|Selector5~0_combout\ = (\uart_rx_u2|Selector0~2_combout\ & (\uart_rx_u2|cnt_bit\(1) & (!\uart_rx_u2|cnt_bit\(0) & !\uart_rx_u2|cnt_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|Selector0~2_combout\,
	datab => \uart_rx_u2|cnt_bit\(1),
	datac => \uart_rx_u2|cnt_bit\(0),
	datad => \uart_rx_u2|cnt_bit\(2),
	combout => \uart_rx_u2|Selector5~0_combout\);

-- Location: LCCOMB_X26_Y24_N2
\uart_rx_u2|Selector5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|Selector5~2_combout\ = (\uart_rx_u2|Selector5~0_combout\) # ((\uart_rx_u2|rx_data\(2) & ((\uart_rx_u2|Selector5~1_combout\) # (\uart_rx_u2|stage_rx.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|Selector5~1_combout\,
	datab => \uart_rx_u2|Selector5~0_combout\,
	datac => \uart_rx_u2|rx_data\(2),
	datad => \uart_rx_u2|stage_rx.STOP~q\,
	combout => \uart_rx_u2|Selector5~2_combout\);

-- Location: FF_X26_Y24_N3
\uart_rx_u2|rx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u2|Selector5~2_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sclr => \uart_rx_u2|ALT_INV_R_receiving~q\,
	ena => \uart_rx_u2|rx_data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|rx_data\(2));

-- Location: LCCOMB_X25_Y24_N14
\uart_rx_u2|rxd[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|rxd[2]~feeder_combout\ = \uart_rx_u2|rx_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_u2|rx_data\(2),
	combout => \uart_rx_u2|rxd[2]~feeder_combout\);

-- Location: FF_X25_Y24_N15
\uart_rx_u2|rxd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u2|rxd[2]~feeder_combout\,
	ena => \uart_rx_u2|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|rxd\(2));

-- Location: LCCOMB_X26_Y24_N10
\uart_rx_u2|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|Selector2~0_combout\ = (\uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & (\uart_rx_u2|cnt_bit\(0) & (!\uart_rx_u2|cnt_bit\(1) & \rx~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datab => \uart_rx_u2|cnt_bit\(0),
	datac => \uart_rx_u2|cnt_bit\(1),
	datad => \rx~input_o\,
	combout => \uart_rx_u2|Selector2~0_combout\);

-- Location: LCCOMB_X27_Y24_N22
\uart_rx_u2|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|Selector2~1_combout\ = (\uart_rx_u2|cnt_bit\(0) & !\uart_rx_u2|cnt_bit\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_u2|cnt_bit\(0),
	datac => \uart_rx_u2|cnt_bit\(1),
	combout => \uart_rx_u2|Selector2~1_combout\);

-- Location: LCCOMB_X27_Y24_N24
\uart_rx_u2|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|Selector6~0_combout\ = (\uart_rx_u2|stage_rx.STOP~q\) # ((\uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & ((\uart_rx_u2|cnt_bit\(2)) # (!\uart_rx_u2|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|cnt_bit\(2),
	datab => \uart_rx_u2|stage_rx.STOP~q\,
	datac => \uart_rx_u2|Selector2~1_combout\,
	datad => \uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	combout => \uart_rx_u2|Selector6~0_combout\);

-- Location: LCCOMB_X26_Y24_N0
\uart_rx_u2|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|Selector6~1_combout\ = (\uart_rx_u2|Selector2~0_combout\ & (((\uart_rx_u2|Selector6~0_combout\ & \uart_rx_u2|rx_data\(1))) # (!\uart_rx_u2|cnt_bit\(2)))) # (!\uart_rx_u2|Selector2~0_combout\ & (\uart_rx_u2|Selector6~0_combout\ & 
-- (\uart_rx_u2|rx_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|Selector2~0_combout\,
	datab => \uart_rx_u2|Selector6~0_combout\,
	datac => \uart_rx_u2|rx_data\(1),
	datad => \uart_rx_u2|cnt_bit\(2),
	combout => \uart_rx_u2|Selector6~1_combout\);

-- Location: FF_X26_Y24_N1
\uart_rx_u2|rx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u2|Selector6~1_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sclr => \uart_rx_u2|ALT_INV_R_receiving~q\,
	ena => \uart_rx_u2|rx_data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|rx_data\(1));

-- Location: FF_X25_Y24_N17
\uart_rx_u2|rxd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \uart_rx_u2|rx_data\(1),
	sload => VCC,
	ena => \uart_rx_u2|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|rxd\(1));

-- Location: LCCOMB_X25_Y24_N20
\receiver_OK_u1|OK~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver_OK_u1|OK~1_combout\ = (!\uart_rx_u2|rxd\(6) & (!\uart_rx_u2|rxd\(0) & (!\uart_rx_u2|rxd\(2) & \uart_rx_u2|rxd\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|rxd\(6),
	datab => \uart_rx_u2|rxd\(0),
	datac => \uart_rx_u2|rxd\(2),
	datad => \uart_rx_u2|rxd\(1),
	combout => \receiver_OK_u1|OK~1_combout\);

-- Location: LCCOMB_X27_Y23_N0
\uart_rx_u2|RECEIVE_END~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|RECEIVE_END~0_combout\ = (!\uart_rx_u2|cnt_baud\(8) & (\uart_rx_u2|Equal1~0_combout\ & (\uart_rx_u2|stage_rx.STOP~q\ & !\uart_rx_u2|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|cnt_baud\(8),
	datab => \uart_rx_u2|Equal1~0_combout\,
	datac => \uart_rx_u2|stage_rx.STOP~q\,
	datad => \uart_rx_u2|Equal2~0_combout\,
	combout => \uart_rx_u2|RECEIVE_END~0_combout\);

-- Location: FF_X27_Y23_N1
\uart_rx_u2|RECEIVE_END\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u2|RECEIVE_END~0_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sclr => \uart_rx_u2|ALT_INV_R_receiving~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|RECEIVE_END~q\);

-- Location: IOIBUF_X0_Y19_N1
\SW[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X22_Y43_N29
\select_w~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_select_w,
	o => \select_w~input_o\);

-- Location: FF_X19_Y23_N15
\Select_mode_u1|LED_select[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_select_w~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Select_mode_u1|LED_select\(4));

-- Location: LCCOMB_X20_Y27_N30
\uart_tx_u1|Send_addr_w[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Send_addr_w[2]~feeder_combout\ = \uart_tx_u1|Send_addr[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|Send_addr[2]~3_combout\,
	combout => \uart_tx_u1|Send_addr_w[2]~feeder_combout\);

-- Location: IOIBUF_X0_Y19_N8
\SW[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X19_Y23_N31
\Select_mode_u1|LED_select[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_select_w~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Select_mode_u1|LED_select\(0));

-- Location: LCCOMB_X20_Y27_N10
\uart_tx_u1|enable~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|enable~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \uart_tx_u1|enable~feeder_combout\);

-- Location: FF_X20_Y27_N11
\uart_tx_u1|enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|enable~feeder_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \uart_tx_u1|Send_addr_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|enable~q\);

-- Location: LCCOMB_X21_Y23_N8
\uart_tx_u1|cnt_rom[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|cnt_rom[0]~6_combout\ = (\uart_tx_u1|cnt_rom\(0) & (((\uart_tx_u1|cnt_rom[1]~2_combout\) # (!\uart_tx_u1|stage_tx.SEND_DATA~q\)) # (!\uart_tx_u1|always0~0_combout\))) # (!\uart_tx_u1|cnt_rom\(0) & (((!\uart_tx_u1|cnt_rom[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|always0~0_combout\,
	datab => \uart_tx_u1|stage_tx.SEND_DATA~q\,
	datac => \uart_tx_u1|cnt_rom\(0),
	datad => \uart_tx_u1|cnt_rom[1]~2_combout\,
	combout => \uart_tx_u1|cnt_rom[0]~6_combout\);

-- Location: FF_X21_Y23_N9
\uart_tx_u1|cnt_rom[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|cnt_rom[0]~6_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|cnt_rom\(0));

-- Location: LCCOMB_X18_Y23_N12
\uart_tx_u1|always0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|always0~5_combout\ = (\uart_tx_u1|cnt_rom\(2) & (!\uart_tx_u1|cnt_rom\(3) & \uart_tx_u1|cnt_rom\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|cnt_rom\(2),
	datac => \uart_tx_u1|cnt_rom\(3),
	datad => \uart_tx_u1|cnt_rom\(0),
	combout => \uart_tx_u1|always0~5_combout\);

-- Location: LCCOMB_X18_Y23_N4
\uart_tx_u1|Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector2~2_combout\ = (\uart_tx_u1|always0~0_combout\ & \uart_tx_u1|stage_tx.SEND_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|always0~0_combout\,
	datad => \uart_tx_u1|stage_tx.SEND_DATA~q\,
	combout => \uart_tx_u1|Selector2~2_combout\);

-- Location: LCCOMB_X21_Y23_N0
\uart_tx_u1|cnt_rom[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|cnt_rom[1]~4_combout\ = (\uart_tx_u1|cnt_rom[1]~2_combout\ & (((\uart_tx_u1|cnt_rom\(1))))) # (!\uart_tx_u1|cnt_rom[1]~2_combout\ & (\uart_tx_u1|Selector2~2_combout\ & (\uart_tx_u1|cnt_rom\(0) $ (\uart_tx_u1|cnt_rom\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|cnt_rom\(0),
	datab => \uart_tx_u1|Selector2~2_combout\,
	datac => \uart_tx_u1|cnt_rom\(1),
	datad => \uart_tx_u1|cnt_rom[1]~2_combout\,
	combout => \uart_tx_u1|cnt_rom[1]~4_combout\);

-- Location: FF_X21_Y23_N1
\uart_tx_u1|cnt_rom[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|cnt_rom[1]~4_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|cnt_rom\(1));

-- Location: LCCOMB_X21_Y23_N10
\uart_tx_u1|cnt_rom[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|cnt_rom[1]~2_combout\ = (\uart_tx_u1|Selector2~2_combout\ & (((\uart_tx_u1|Equal4~4_combout\)))) # (!\uart_tx_u1|Selector2~2_combout\ & (((!\uart_tx_u1|cnt_rom\(1))) # (!\uart_tx_u1|always0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|always0~5_combout\,
	datab => \uart_tx_u1|Selector2~2_combout\,
	datac => \uart_tx_u1|Equal4~4_combout\,
	datad => \uart_tx_u1|cnt_rom\(1),
	combout => \uart_tx_u1|cnt_rom[1]~2_combout\);

-- Location: LCCOMB_X21_Y23_N12
\uart_tx_u1|Add19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add19~0_combout\ = \uart_tx_u1|cnt_rom\(2) $ (((\uart_tx_u1|cnt_rom\(0) & \uart_tx_u1|cnt_rom\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|cnt_rom\(2),
	datac => \uart_tx_u1|cnt_rom\(0),
	datad => \uart_tx_u1|cnt_rom\(1),
	combout => \uart_tx_u1|Add19~0_combout\);

-- Location: LCCOMB_X21_Y23_N30
\uart_tx_u1|cnt_rom[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|cnt_rom[2]~3_combout\ = (\uart_tx_u1|cnt_rom[1]~2_combout\ & (((\uart_tx_u1|cnt_rom\(2))))) # (!\uart_tx_u1|cnt_rom[1]~2_combout\ & (((\uart_tx_u1|Add19~0_combout\)) # (!\uart_tx_u1|Selector2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|cnt_rom[1]~2_combout\,
	datab => \uart_tx_u1|Selector2~2_combout\,
	datac => \uart_tx_u1|cnt_rom\(2),
	datad => \uart_tx_u1|Add19~0_combout\,
	combout => \uart_tx_u1|cnt_rom[2]~3_combout\);

-- Location: FF_X21_Y23_N31
\uart_tx_u1|cnt_rom[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|cnt_rom[2]~3_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|cnt_rom\(2));

-- Location: LCCOMB_X18_Y23_N6
\uart_tx_u1|Add19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add19~1_combout\ = \uart_tx_u1|cnt_rom\(3) $ (((\uart_tx_u1|cnt_rom\(2) & (\uart_tx_u1|cnt_rom\(1) & \uart_tx_u1|cnt_rom\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|cnt_rom\(3),
	datab => \uart_tx_u1|cnt_rom\(2),
	datac => \uart_tx_u1|cnt_rom\(1),
	datad => \uart_tx_u1|cnt_rom\(0),
	combout => \uart_tx_u1|Add19~1_combout\);

-- Location: LCCOMB_X21_Y23_N26
\uart_tx_u1|cnt_rom[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|cnt_rom[3]~5_combout\ = (\uart_tx_u1|cnt_rom[1]~2_combout\ & (((\uart_tx_u1|cnt_rom\(3))))) # (!\uart_tx_u1|cnt_rom[1]~2_combout\ & (\uart_tx_u1|Add19~1_combout\ & (\uart_tx_u1|Selector2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Add19~1_combout\,
	datab => \uart_tx_u1|Selector2~2_combout\,
	datac => \uart_tx_u1|cnt_rom\(3),
	datad => \uart_tx_u1|cnt_rom[1]~2_combout\,
	combout => \uart_tx_u1|cnt_rom[3]~5_combout\);

-- Location: FF_X21_Y23_N27
\uart_tx_u1|cnt_rom[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|cnt_rom[3]~5_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|cnt_rom\(3));

-- Location: LCCOMB_X21_Y23_N4
\uart_tx_u1|always0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|always0~2_combout\ = (!\uart_tx_u1|cnt_rom\(3) & (\uart_tx_u1|cnt_rom\(0) & (\uart_tx_u1|cnt_rom\(2) & !\uart_tx_u1|cnt_rom\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|cnt_rom\(3),
	datab => \uart_tx_u1|cnt_rom\(0),
	datac => \uart_tx_u1|cnt_rom\(2),
	datad => \uart_tx_u1|cnt_rom\(1),
	combout => \uart_tx_u1|always0~2_combout\);

-- Location: FF_X21_Y27_N31
\uart_tx_u1|Send_addr_w[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|Send_addr[0]~1_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \uart_tx_u1|Send_addr_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|Send_addr_w\(0));

-- Location: LCCOMB_X18_Y26_N4
\uart_tx_u1|Add16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add16~0_combout\ = \uart_tx_u1|addr\(0) $ (VCC)
-- \uart_tx_u1|Add16~1\ = CARRY(\uart_tx_u1|addr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|addr\(0),
	datad => VCC,
	combout => \uart_tx_u1|Add16~0_combout\,
	cout => \uart_tx_u1|Add16~1\);

-- Location: LCCOMB_X21_Y27_N12
\uart_tx_u1|Send_addr[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Send_addr[0]~0_combout\ = (\uart_tx_u1|enable~q\ & (((\uart_tx_u1|Send_addr_w\(0))))) # (!\uart_tx_u1|enable~q\ & ((\uart_tx_u1|always0~2_combout\ & ((\uart_tx_u1|Add16~0_combout\))) # (!\uart_tx_u1|always0~2_combout\ & 
-- (\uart_tx_u1|Send_addr_w\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|enable~q\,
	datab => \uart_tx_u1|always0~2_combout\,
	datac => \uart_tx_u1|Send_addr_w\(0),
	datad => \uart_tx_u1|Add16~0_combout\,
	combout => \uart_tx_u1|Send_addr[0]~0_combout\);

-- Location: LCCOMB_X18_Y26_N6
\uart_tx_u1|Add16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add16~2_combout\ = (\uart_tx_u1|addr\(1) & (!\uart_tx_u1|Add16~1\)) # (!\uart_tx_u1|addr\(1) & ((\uart_tx_u1|Add16~1\) # (GND)))
-- \uart_tx_u1|Add16~3\ = CARRY((!\uart_tx_u1|Add16~1\) # (!\uart_tx_u1|addr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|addr\(1),
	datad => VCC,
	cin => \uart_tx_u1|Add16~1\,
	combout => \uart_tx_u1|Add16~2_combout\,
	cout => \uart_tx_u1|Add16~3\);

-- Location: FF_X21_Y27_N25
\uart_tx_u1|Send_addr_w[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|Send_addr[1]~2_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \uart_tx_u1|Send_addr_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|Send_addr_w\(1));

-- Location: LCCOMB_X21_Y27_N6
\uart_tx_u1|always1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|always1~0_combout\ = (!\uart_tx_u1|enable~q\ & (\uart_tx_u1|always0~2_combout\ & (!\uart_tx_u1|Equal4~3_combout\ & !\uart_tx_u1|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|enable~q\,
	datab => \uart_tx_u1|always0~2_combout\,
	datac => \uart_tx_u1|Equal4~3_combout\,
	datad => \uart_tx_u1|Equal4~2_combout\,
	combout => \uart_tx_u1|always1~0_combout\);

-- Location: LCCOMB_X21_Y27_N24
\uart_tx_u1|Send_addr[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Send_addr[1]~2_combout\ = (\uart_tx_u1|always1~0_combout\ & (\uart_tx_u1|Add16~2_combout\)) # (!\uart_tx_u1|always1~0_combout\ & ((\uart_tx_u1|Send_addr_w\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Add16~2_combout\,
	datac => \uart_tx_u1|Send_addr_w\(1),
	datad => \uart_tx_u1|always1~0_combout\,
	combout => \uart_tx_u1|Send_addr[1]~2_combout\);

-- Location: LCCOMB_X23_Y25_N8
\uart_tx_u1|Add13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add13~0_combout\ = \uart_tx_u1|Send_addr[0]~1_combout\ $ (VCC)
-- \uart_tx_u1|Add13~1\ = CARRY(\uart_tx_u1|Send_addr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[0]~1_combout\,
	datad => VCC,
	combout => \uart_tx_u1|Add13~0_combout\,
	cout => \uart_tx_u1|Add13~1\);

-- Location: LCCOMB_X23_Y25_N10
\uart_tx_u1|Add13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add13~2_combout\ = (\uart_tx_u1|Send_addr[1]~2_combout\ & (!\uart_tx_u1|Add13~1\)) # (!\uart_tx_u1|Send_addr[1]~2_combout\ & ((\uart_tx_u1|Add13~1\) # (GND)))
-- \uart_tx_u1|Add13~3\ = CARRY((!\uart_tx_u1|Add13~1\) # (!\uart_tx_u1|Send_addr[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add13~1\,
	combout => \uart_tx_u1|Add13~2_combout\,
	cout => \uart_tx_u1|Add13~3\);

-- Location: LCCOMB_X20_Y27_N12
\uart_tx_u1|Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add5~0_combout\ = \uart_tx_u1|Send_addr[0]~1_combout\ $ (VCC)
-- \uart_tx_u1|Add5~1\ = CARRY(\uart_tx_u1|Send_addr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[0]~1_combout\,
	datad => VCC,
	combout => \uart_tx_u1|Add5~0_combout\,
	cout => \uart_tx_u1|Add5~1\);

-- Location: LCCOMB_X20_Y27_N14
\uart_tx_u1|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add5~2_combout\ = (\uart_tx_u1|Send_addr[1]~2_combout\ & (!\uart_tx_u1|Add5~1\)) # (!\uart_tx_u1|Send_addr[1]~2_combout\ & ((\uart_tx_u1|Add5~1\) # (GND)))
-- \uart_tx_u1|Add5~3\ = CARRY((!\uart_tx_u1|Add5~1\) # (!\uart_tx_u1|Send_addr[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add5~1\,
	combout => \uart_tx_u1|Add5~2_combout\,
	cout => \uart_tx_u1|Add5~3\);

-- Location: IOIBUF_X22_Y0_N15
\SW[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X22_Y24_N30
\Select_mode_u1|LED_select[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Select_mode_u1|LED_select[2]~feeder_combout\ = \SW[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[2]~input_o\,
	combout => \Select_mode_u1|LED_select[2]~feeder_combout\);

-- Location: FF_X22_Y24_N31
\Select_mode_u1|LED_select[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Select_mode_u1|LED_select[2]~feeder_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \ALT_INV_select_w~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Select_mode_u1|LED_select\(2));

-- Location: IOIBUF_X0_Y17_N15
\SW[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X22_Y24_N4
\Select_mode_u1|LED_select[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Select_mode_u1|LED_select[3]~feeder_combout\ = \SW[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[3]~input_o\,
	combout => \Select_mode_u1|LED_select[3]~feeder_combout\);

-- Location: FF_X22_Y24_N5
\Select_mode_u1|LED_select[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Select_mode_u1|LED_select[3]~feeder_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \ALT_INV_select_w~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Select_mode_u1|LED_select\(3));

-- Location: LCCOMB_X22_Y25_N12
\uart_tx_u1|Add9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add9~0_combout\ = \uart_tx_u1|Send_addr[0]~1_combout\ $ (VCC)
-- \uart_tx_u1|Add9~1\ = CARRY(\uart_tx_u1|Send_addr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[0]~1_combout\,
	datad => VCC,
	combout => \uart_tx_u1|Add9~0_combout\,
	cout => \uart_tx_u1|Add9~1\);

-- Location: LCCOMB_X22_Y25_N14
\uart_tx_u1|Add9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add9~2_combout\ = (\uart_tx_u1|Send_addr[1]~2_combout\ & (!\uart_tx_u1|Add9~1\)) # (!\uart_tx_u1|Send_addr[1]~2_combout\ & ((\uart_tx_u1|Add9~1\) # (GND)))
-- \uart_tx_u1|Add9~3\ = CARRY((!\uart_tx_u1|Add9~1\) # (!\uart_tx_u1|Send_addr[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add9~1\,
	combout => \uart_tx_u1|Add9~2_combout\,
	cout => \uart_tx_u1|Add9~3\);

-- Location: LCCOMB_X21_Y26_N14
\uart_tx_u1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add1~0_combout\ = \uart_tx_u1|Send_addr[0]~1_combout\ $ (VCC)
-- \uart_tx_u1|Add1~1\ = CARRY(\uart_tx_u1|Send_addr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[0]~1_combout\,
	datad => VCC,
	combout => \uart_tx_u1|Add1~0_combout\,
	cout => \uart_tx_u1|Add1~1\);

-- Location: LCCOMB_X21_Y26_N16
\uart_tx_u1|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add1~2_combout\ = (\uart_tx_u1|Send_addr[1]~2_combout\ & (!\uart_tx_u1|Add1~1\)) # (!\uart_tx_u1|Send_addr[1]~2_combout\ & ((\uart_tx_u1|Add1~1\) # (GND)))
-- \uart_tx_u1|Add1~3\ = CARRY((!\uart_tx_u1|Add1~1\) # (!\uart_tx_u1|Send_addr[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add1~1\,
	combout => \uart_tx_u1|Add1~2_combout\,
	cout => \uart_tx_u1|Add1~3\);

-- Location: LCCOMB_X18_Y26_N20
\uart_tx_u1|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Mux6~0_combout\ = (\Select_mode_u1|LED_select\(2) & (\Select_mode_u1|LED_select\(3))) # (!\Select_mode_u1|LED_select\(2) & ((\Select_mode_u1|LED_select\(3) & (\uart_tx_u1|Add9~2_combout\)) # (!\Select_mode_u1|LED_select\(3) & 
-- ((\uart_tx_u1|Add1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(2),
	datab => \Select_mode_u1|LED_select\(3),
	datac => \uart_tx_u1|Add9~2_combout\,
	datad => \uart_tx_u1|Add1~2_combout\,
	combout => \uart_tx_u1|Mux6~0_combout\);

-- Location: LCCOMB_X19_Y26_N8
\uart_tx_u1|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Mux6~1_combout\ = (\Select_mode_u1|LED_select\(2) & ((\uart_tx_u1|Mux6~0_combout\ & (\uart_tx_u1|Add13~2_combout\)) # (!\uart_tx_u1|Mux6~0_combout\ & ((\uart_tx_u1|Add5~2_combout\))))) # (!\Select_mode_u1|LED_select\(2) & 
-- (((\uart_tx_u1|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Add13~2_combout\,
	datab => \uart_tx_u1|Add5~2_combout\,
	datac => \Select_mode_u1|LED_select\(2),
	datad => \uart_tx_u1|Mux6~0_combout\,
	combout => \uart_tx_u1|Mux6~1_combout\);

-- Location: LCCOMB_X19_Y26_N10
\uart_tx_u1|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add3~0_combout\ = \uart_tx_u1|Send_addr[0]~1_combout\ $ (VCC)
-- \uart_tx_u1|Add3~1\ = CARRY(\uart_tx_u1|Send_addr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[0]~1_combout\,
	datad => VCC,
	combout => \uart_tx_u1|Add3~0_combout\,
	cout => \uart_tx_u1|Add3~1\);

-- Location: LCCOMB_X19_Y26_N12
\uart_tx_u1|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add3~2_combout\ = (\uart_tx_u1|Send_addr[1]~2_combout\ & (\uart_tx_u1|Add3~1\ & VCC)) # (!\uart_tx_u1|Send_addr[1]~2_combout\ & (!\uart_tx_u1|Add3~1\))
-- \uart_tx_u1|Add3~3\ = CARRY((!\uart_tx_u1|Send_addr[1]~2_combout\ & !\uart_tx_u1|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add3~1\,
	combout => \uart_tx_u1|Add3~2_combout\,
	cout => \uart_tx_u1|Add3~3\);

-- Location: LCCOMB_X21_Y24_N14
\uart_tx_u1|Add7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add7~0_combout\ = \uart_tx_u1|Send_addr[0]~1_combout\ $ (VCC)
-- \uart_tx_u1|Add7~1\ = CARRY(\uart_tx_u1|Send_addr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[0]~1_combout\,
	datad => VCC,
	combout => \uart_tx_u1|Add7~0_combout\,
	cout => \uart_tx_u1|Add7~1\);

-- Location: LCCOMB_X21_Y24_N16
\uart_tx_u1|Add7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add7~2_combout\ = (\uart_tx_u1|Send_addr[1]~2_combout\ & (\uart_tx_u1|Add7~1\ & VCC)) # (!\uart_tx_u1|Send_addr[1]~2_combout\ & (!\uart_tx_u1|Add7~1\))
-- \uart_tx_u1|Add7~3\ = CARRY((!\uart_tx_u1|Send_addr[1]~2_combout\ & !\uart_tx_u1|Add7~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add7~1\,
	combout => \uart_tx_u1|Add7~2_combout\,
	cout => \uart_tx_u1|Add7~3\);

-- Location: LCCOMB_X19_Y26_N30
\uart_tx_u1|Mux6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Mux6~5_combout\ = (\Select_mode_u1|LED_select\(3) & (((\Select_mode_u1|LED_select\(2))))) # (!\Select_mode_u1|LED_select\(3) & ((\Select_mode_u1|LED_select\(2) & ((\uart_tx_u1|Add7~2_combout\))) # (!\Select_mode_u1|LED_select\(2) & 
-- (\uart_tx_u1|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Add3~2_combout\,
	datab => \Select_mode_u1|LED_select\(3),
	datac => \Select_mode_u1|LED_select\(2),
	datad => \uart_tx_u1|Add7~2_combout\,
	combout => \uart_tx_u1|Mux6~5_combout\);

-- Location: LCCOMB_X20_Y23_N12
\uart_tx_u1|Add11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add11~0_combout\ = \uart_tx_u1|Send_addr[0]~1_combout\ $ (VCC)
-- \uart_tx_u1|Add11~1\ = CARRY(\uart_tx_u1|Send_addr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[0]~1_combout\,
	datad => VCC,
	combout => \uart_tx_u1|Add11~0_combout\,
	cout => \uart_tx_u1|Add11~1\);

-- Location: LCCOMB_X20_Y23_N14
\uart_tx_u1|Add11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add11~2_combout\ = (\uart_tx_u1|Send_addr[1]~2_combout\ & (\uart_tx_u1|Add11~1\ & VCC)) # (!\uart_tx_u1|Send_addr[1]~2_combout\ & (!\uart_tx_u1|Add11~1\))
-- \uart_tx_u1|Add11~3\ = CARRY((!\uart_tx_u1|Send_addr[1]~2_combout\ & !\uart_tx_u1|Add11~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add11~1\,
	combout => \uart_tx_u1|Add11~2_combout\,
	cout => \uart_tx_u1|Add11~3\);

-- Location: LCCOMB_X22_Y24_N6
\uart_tx_u1|Add15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add15~0_combout\ = \uart_tx_u1|Send_addr[0]~1_combout\ $ (VCC)
-- \uart_tx_u1|Add15~1\ = CARRY(\uart_tx_u1|Send_addr[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[0]~1_combout\,
	datad => VCC,
	combout => \uart_tx_u1|Add15~0_combout\,
	cout => \uart_tx_u1|Add15~1\);

-- Location: LCCOMB_X22_Y24_N8
\uart_tx_u1|Add15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add15~2_combout\ = (\uart_tx_u1|Send_addr[1]~2_combout\ & (\uart_tx_u1|Add15~1\ & VCC)) # (!\uart_tx_u1|Send_addr[1]~2_combout\ & (!\uart_tx_u1|Add15~1\))
-- \uart_tx_u1|Add15~3\ = CARRY((!\uart_tx_u1|Send_addr[1]~2_combout\ & !\uart_tx_u1|Add15~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add15~1\,
	combout => \uart_tx_u1|Add15~2_combout\,
	cout => \uart_tx_u1|Add15~3\);

-- Location: LCCOMB_X19_Y26_N4
\uart_tx_u1|Mux6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Mux6~6_combout\ = (\uart_tx_u1|Mux6~5_combout\ & (((\uart_tx_u1|Add15~2_combout\)) # (!\Select_mode_u1|LED_select\(3)))) # (!\uart_tx_u1|Mux6~5_combout\ & (\Select_mode_u1|LED_select\(3) & (\uart_tx_u1|Add11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Mux6~5_combout\,
	datab => \Select_mode_u1|LED_select\(3),
	datac => \uart_tx_u1|Add11~2_combout\,
	datad => \uart_tx_u1|Add15~2_combout\,
	combout => \uart_tx_u1|Mux6~6_combout\);

-- Location: IOIBUF_X20_Y43_N1
\SW[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X20_Y27_N5
\Select_mode_u1|LED_select[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_select_w~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Select_mode_u1|LED_select\(1));

-- Location: LCCOMB_X19_Y25_N4
\uart_tx_u1|Add12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add12~0_combout\ = \uart_tx_u1|Send_addr[1]~2_combout\ $ (VCC)
-- \uart_tx_u1|Add12~1\ = CARRY(\uart_tx_u1|Send_addr[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	combout => \uart_tx_u1|Add12~0_combout\,
	cout => \uart_tx_u1|Add12~1\);

-- Location: LCCOMB_X20_Y25_N0
\uart_tx_u1|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add4~0_combout\ = \uart_tx_u1|Send_addr[1]~2_combout\ $ (VCC)
-- \uart_tx_u1|Add4~1\ = CARRY(\uart_tx_u1|Send_addr[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	combout => \uart_tx_u1|Add4~0_combout\,
	cout => \uart_tx_u1|Add4~1\);

-- Location: LCCOMB_X19_Y23_N8
\uart_tx_u1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add0~0_combout\ = \uart_tx_u1|Send_addr[1]~2_combout\ $ (VCC)
-- \uart_tx_u1|Add0~1\ = CARRY(\uart_tx_u1|Send_addr[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	combout => \uart_tx_u1|Add0~0_combout\,
	cout => \uart_tx_u1|Add0~1\);

-- Location: LCCOMB_X19_Y27_N0
\uart_tx_u1|Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add8~0_combout\ = \uart_tx_u1|Send_addr[1]~2_combout\ $ (VCC)
-- \uart_tx_u1|Add8~1\ = CARRY(\uart_tx_u1|Send_addr[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[1]~2_combout\,
	datad => VCC,
	combout => \uart_tx_u1|Add8~0_combout\,
	cout => \uart_tx_u1|Add8~1\);

-- Location: LCCOMB_X18_Y25_N6
\uart_tx_u1|Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Mux6~2_combout\ = (\Select_mode_u1|LED_select\(3) & ((\Select_mode_u1|LED_select\(2)) # ((\uart_tx_u1|Add8~0_combout\)))) # (!\Select_mode_u1|LED_select\(3) & (!\Select_mode_u1|LED_select\(2) & (\uart_tx_u1|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(3),
	datab => \Select_mode_u1|LED_select\(2),
	datac => \uart_tx_u1|Add0~0_combout\,
	datad => \uart_tx_u1|Add8~0_combout\,
	combout => \uart_tx_u1|Mux6~2_combout\);

-- Location: LCCOMB_X18_Y25_N12
\uart_tx_u1|Mux6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Mux6~3_combout\ = (\Select_mode_u1|LED_select\(2) & ((\uart_tx_u1|Mux6~2_combout\ & (\uart_tx_u1|Add12~0_combout\)) # (!\uart_tx_u1|Mux6~2_combout\ & ((\uart_tx_u1|Add4~0_combout\))))) # (!\Select_mode_u1|LED_select\(2) & 
-- (((\uart_tx_u1|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Add12~0_combout\,
	datab => \Select_mode_u1|LED_select\(2),
	datac => \uart_tx_u1|Add4~0_combout\,
	datad => \uart_tx_u1|Mux6~2_combout\,
	combout => \uart_tx_u1|Mux6~3_combout\);

-- Location: LCCOMB_X18_Y25_N10
\uart_tx_u1|Mux6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Mux6~4_combout\ = (\Select_mode_u1|LED_select\(0) & (\Select_mode_u1|LED_select\(1))) # (!\Select_mode_u1|LED_select\(0) & ((\Select_mode_u1|LED_select\(1) & (\uart_tx_u1|Send_addr[1]~2_combout\)) # (!\Select_mode_u1|LED_select\(1) & 
-- ((\uart_tx_u1|Mux6~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(0),
	datab => \Select_mode_u1|LED_select\(1),
	datac => \uart_tx_u1|Send_addr[1]~2_combout\,
	datad => \uart_tx_u1|Mux6~3_combout\,
	combout => \uart_tx_u1|Mux6~4_combout\);

-- Location: LCCOMB_X19_Y26_N2
\uart_tx_u1|Mux6~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Mux6~7_combout\ = (\Select_mode_u1|LED_select\(0) & ((\uart_tx_u1|Mux6~4_combout\ & ((\uart_tx_u1|Mux6~6_combout\))) # (!\uart_tx_u1|Mux6~4_combout\ & (\uart_tx_u1|Mux6~1_combout\)))) # (!\Select_mode_u1|LED_select\(0) & 
-- (((\uart_tx_u1|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(0),
	datab => \uart_tx_u1|Mux6~1_combout\,
	datac => \uart_tx_u1|Mux6~6_combout\,
	datad => \uart_tx_u1|Mux6~4_combout\,
	combout => \uart_tx_u1|Mux6~7_combout\);

-- Location: LCCOMB_X19_Y26_N0
\uart_tx_u1|addr[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr[1]~3_combout\ = (\Select_mode_u1|LED_select\(4) & (\uart_tx_u1|addr\(1))) # (!\Select_mode_u1|LED_select\(4) & ((\uart_tx_u1|Mux6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Select_mode_u1|LED_select\(4),
	datac => \uart_tx_u1|addr\(1),
	datad => \uart_tx_u1|Mux6~7_combout\,
	combout => \uart_tx_u1|addr[1]~3_combout\);

-- Location: LCCOMB_X21_Y27_N22
\uart_tx_u1|addr~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~6_combout\ = (!\uart_tx_u1|Equal4~2_combout\ & (\uart_tx_u1|always0~2_combout\ & (!\uart_tx_u1|Equal4~3_combout\ & \uart_tx_u1|enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Equal4~2_combout\,
	datab => \uart_tx_u1|always0~2_combout\,
	datac => \uart_tx_u1|Equal4~3_combout\,
	datad => \uart_tx_u1|enable~q\,
	combout => \uart_tx_u1|addr~6_combout\);

-- Location: LCCOMB_X21_Y27_N20
\uart_tx_u1|addr~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~9_combout\ = (\uart_tx_u1|addr~6_combout\ & ((\uart_tx_u1|Send_addr_w\(1)))) # (!\uart_tx_u1|addr~6_combout\ & (\uart_tx_u1|Add16~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Add16~2_combout\,
	datac => \uart_tx_u1|addr~6_combout\,
	datad => \uart_tx_u1|Send_addr_w\(1),
	combout => \uart_tx_u1|addr~9_combout\);

-- Location: LCCOMB_X21_Y23_N2
\uart_tx_u1|always0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|always0~3_combout\ = (\uart_tx_u1|cnt_rom\(2) & (\uart_tx_u1|cnt_rom\(1) & (!\uart_tx_u1|cnt_rom\(3) & !\uart_tx_u1|cnt_rom\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|cnt_rom\(2),
	datab => \uart_tx_u1|cnt_rom\(1),
	datac => \uart_tx_u1|cnt_rom\(3),
	datad => \uart_tx_u1|cnt_rom\(0),
	combout => \uart_tx_u1|always0~3_combout\);

-- Location: LCCOMB_X21_Y24_N8
\uart_tx_u1|always0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|always0~4_combout\ = (!\uart_tx_u1|Equal4~3_combout\ & (\uart_tx_u1|always0~3_combout\ & !\uart_tx_u1|Equal4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Equal4~3_combout\,
	datab => \uart_tx_u1|always0~3_combout\,
	datad => \uart_tx_u1|Equal4~2_combout\,
	combout => \uart_tx_u1|always0~4_combout\);

-- Location: LCCOMB_X19_Y24_N14
\uart_tx_u1|addr[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr[0]~8_combout\ = (\tx_en~input_o\ & (\uart_tx_u1|stage_tx.STOP~q\ & \uart_tx_u1|always0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_en~input_o\,
	datac => \uart_tx_u1|stage_tx.STOP~q\,
	datad => \uart_tx_u1|always0~1_combout\,
	combout => \uart_tx_u1|addr[0]~8_combout\);

-- Location: FF_X19_Y26_N1
\uart_tx_u1|addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|addr[1]~3_combout\,
	asdata => \uart_tx_u1|addr~9_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => \uart_tx_u1|ALT_INV_always0~4_combout\,
	ena => \uart_tx_u1|addr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|addr\(1));

-- Location: LCCOMB_X23_Y27_N20
\uart_tx_u1|AT|rom~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~86_combout\ = (\uart_tx_u1|addr\(4) & (!\uart_tx_u1|addr\(3) & (\uart_tx_u1|addr\(0) $ (!\uart_tx_u1|addr\(1))))) # (!\uart_tx_u1|addr\(4) & ((\uart_tx_u1|addr\(0) & (!\uart_tx_u1|addr\(1) & !\uart_tx_u1|addr\(3))) # 
-- (!\uart_tx_u1|addr\(0) & (\uart_tx_u1|addr\(1) & \uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|addr\(1),
	datad => \uart_tx_u1|addr\(3),
	combout => \uart_tx_u1|AT|rom~86_combout\);

-- Location: LCCOMB_X23_Y27_N10
\uart_tx_u1|AT|rom~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~87_combout\ = (!\uart_tx_u1|addr\(5) & (!\uart_tx_u1|addr\(6) & \uart_tx_u1|AT|rom~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|addr\(5),
	datac => \uart_tx_u1|addr\(6),
	datad => \uart_tx_u1|AT|rom~86_combout\,
	combout => \uart_tx_u1|AT|rom~87_combout\);

-- Location: LCCOMB_X23_Y27_N30
\uart_tx_u1|AT|rom~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~100_combout\ = (\uart_tx_u1|addr\(6)) # ((\uart_tx_u1|addr\(0) & (\uart_tx_u1|addr\(1) $ (!\uart_tx_u1|addr\(3)))) # (!\uart_tx_u1|addr\(0) & ((\uart_tx_u1|addr\(1)) # (\uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(6),
	combout => \uart_tx_u1|AT|rom~100_combout\);

-- Location: LCCOMB_X23_Y27_N4
\uart_tx_u1|AT|rom~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~101_combout\ = (\uart_tx_u1|addr\(4)) # ((\uart_tx_u1|AT|rom~100_combout\) # (\uart_tx_u1|addr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datac => \uart_tx_u1|AT|rom~100_combout\,
	datad => \uart_tx_u1|addr\(5),
	combout => \uart_tx_u1|AT|rom~101_combout\);

-- Location: LCCOMB_X23_Y27_N26
\uart_tx_u1|AT|rom~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~91_combout\ = (\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(0)) # (\uart_tx_u1|addr\(3) $ (\uart_tx_u1|addr\(6))))) # (!\uart_tx_u1|addr\(1) & (((\uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(6),
	combout => \uart_tx_u1|AT|rom~91_combout\);

-- Location: LCCOMB_X23_Y27_N22
\uart_tx_u1|AT|rom~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~89_combout\ = (\uart_tx_u1|addr\(0) & (\uart_tx_u1|addr\(6) $ ((!\uart_tx_u1|addr\(3))))) # (!\uart_tx_u1|addr\(0) & (\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(6) $ (!\uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datab => \uart_tx_u1|addr\(6),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(1),
	combout => \uart_tx_u1|AT|rom~89_combout\);

-- Location: LCCOMB_X23_Y27_N16
\uart_tx_u1|AT|rom~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~88_combout\ = (\uart_tx_u1|addr\(6) & (((\uart_tx_u1|addr\(1)) # (\uart_tx_u1|addr\(3))))) # (!\uart_tx_u1|addr\(6) & (\uart_tx_u1|addr\(0) & (\uart_tx_u1|addr\(1) $ (\uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(6),
	datad => \uart_tx_u1|addr\(3),
	combout => \uart_tx_u1|AT|rom~88_combout\);

-- Location: LCCOMB_X23_Y27_N28
\uart_tx_u1|AT|rom~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~90_combout\ = (\uart_tx_u1|addr\(4) & (!\uart_tx_u1|addr\(5) & ((\uart_tx_u1|AT|rom~88_combout\)))) # (!\uart_tx_u1|addr\(4) & (\uart_tx_u1|addr\(5) & (!\uart_tx_u1|AT|rom~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|addr\(5),
	datac => \uart_tx_u1|AT|rom~89_combout\,
	datad => \uart_tx_u1|AT|rom~88_combout\,
	combout => \uart_tx_u1|AT|rom~90_combout\);

-- Location: LCCOMB_X23_Y27_N8
\uart_tx_u1|AT|rom~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~92_combout\ = (\uart_tx_u1|AT|rom~90_combout\) # ((\uart_tx_u1|addr\(4) & (\uart_tx_u1|addr\(5) & !\uart_tx_u1|AT|rom~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|addr\(5),
	datac => \uart_tx_u1|AT|rom~91_combout\,
	datad => \uart_tx_u1|AT|rom~90_combout\,
	combout => \uart_tx_u1|AT|rom~92_combout\);

-- Location: LCCOMB_X23_Y27_N24
\uart_tx_u1|AT|rom~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~97_combout\ = (\uart_tx_u1|addr\(4) & ((\uart_tx_u1|addr\(3) & (\uart_tx_u1|addr\(0))) # (!\uart_tx_u1|addr\(3) & ((!\uart_tx_u1|addr\(6)))))) # (!\uart_tx_u1|addr\(4) & ((\uart_tx_u1|addr\(3) & ((!\uart_tx_u1|addr\(6)))) # 
-- (!\uart_tx_u1|addr\(3) & ((\uart_tx_u1|addr\(0)) # (\uart_tx_u1|addr\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(6),
	combout => \uart_tx_u1|AT|rom~97_combout\);

-- Location: LCCOMB_X22_Y23_N10
\uart_tx_u1|AT|rom~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~93_combout\ = (\uart_tx_u1|addr\(6) & ((\uart_tx_u1|addr\(3) & (!\uart_tx_u1|addr\(0) & \uart_tx_u1|addr\(4))) # (!\uart_tx_u1|addr\(3) & ((!\uart_tx_u1|addr\(4)))))) # (!\uart_tx_u1|addr\(6) & ((\uart_tx_u1|addr\(3) $ 
-- (\uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(6),
	datab => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(4),
	combout => \uart_tx_u1|AT|rom~93_combout\);

-- Location: LCCOMB_X23_Y27_N14
\uart_tx_u1|AT|rom~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~94_combout\ = (\uart_tx_u1|addr\(4) & (((\uart_tx_u1|addr\(0) & !\uart_tx_u1|addr\(3))) # (!\uart_tx_u1|addr\(6)))) # (!\uart_tx_u1|addr\(4) & ((\uart_tx_u1|addr\(6) & ((\uart_tx_u1|addr\(3)))) # (!\uart_tx_u1|addr\(6) & 
-- (\uart_tx_u1|addr\(0) & !\uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|addr\(6),
	datad => \uart_tx_u1|addr\(3),
	combout => \uart_tx_u1|AT|rom~94_combout\);

-- Location: LCCOMB_X23_Y27_N0
\uart_tx_u1|AT|rom~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~95_combout\ = (\uart_tx_u1|addr\(0) & (\uart_tx_u1|addr\(4) & (\uart_tx_u1|addr\(6)))) # (!\uart_tx_u1|addr\(0) & ((\uart_tx_u1|addr\(6) & ((\uart_tx_u1|addr\(3)))) # (!\uart_tx_u1|addr\(6) & (\uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|addr\(6),
	datad => \uart_tx_u1|addr\(3),
	combout => \uart_tx_u1|AT|rom~95_combout\);

-- Location: LCCOMB_X23_Y27_N2
\uart_tx_u1|AT|rom~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~96_combout\ = (\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(5)) # ((!\uart_tx_u1|AT|rom~94_combout\)))) # (!\uart_tx_u1|addr\(1) & (!\uart_tx_u1|addr\(5) & ((\uart_tx_u1|AT|rom~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(5),
	datac => \uart_tx_u1|AT|rom~94_combout\,
	datad => \uart_tx_u1|AT|rom~95_combout\,
	combout => \uart_tx_u1|AT|rom~96_combout\);

-- Location: LCCOMB_X23_Y27_N6
\uart_tx_u1|AT|rom~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~98_combout\ = (\uart_tx_u1|addr\(5) & ((\uart_tx_u1|AT|rom~96_combout\ & (\uart_tx_u1|AT|rom~97_combout\)) # (!\uart_tx_u1|AT|rom~96_combout\ & ((\uart_tx_u1|AT|rom~93_combout\))))) # (!\uart_tx_u1|addr\(5) & 
-- (((\uart_tx_u1|AT|rom~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(5),
	datab => \uart_tx_u1|AT|rom~97_combout\,
	datac => \uart_tx_u1|AT|rom~93_combout\,
	datad => \uart_tx_u1|AT|rom~96_combout\,
	combout => \uart_tx_u1|AT|rom~98_combout\);

-- Location: LCCOMB_X23_Y27_N12
\uart_tx_u1|AT|rom~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~99_combout\ = (\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(7)) # ((\uart_tx_u1|AT|rom~92_combout\)))) # (!\uart_tx_u1|addr\(2) & (!\uart_tx_u1|addr\(7) & ((\uart_tx_u1|AT|rom~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(7),
	datac => \uart_tx_u1|AT|rom~92_combout\,
	datad => \uart_tx_u1|AT|rom~98_combout\,
	combout => \uart_tx_u1|AT|rom~99_combout\);

-- Location: LCCOMB_X23_Y27_N18
\uart_tx_u1|AT|rom~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~102_combout\ = (\uart_tx_u1|addr\(7) & ((\uart_tx_u1|AT|rom~99_combout\ & ((!\uart_tx_u1|AT|rom~101_combout\))) # (!\uart_tx_u1|AT|rom~99_combout\ & (\uart_tx_u1|AT|rom~87_combout\)))) # (!\uart_tx_u1|addr\(7) & 
-- (((\uart_tx_u1|AT|rom~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|AT|rom~87_combout\,
	datab => \uart_tx_u1|addr\(7),
	datac => \uart_tx_u1|AT|rom~101_combout\,
	datad => \uart_tx_u1|AT|rom~99_combout\,
	combout => \uart_tx_u1|AT|rom~102_combout\);

-- Location: LCCOMB_X20_Y24_N14
\uart_tx_u1|AT|rom~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~108_combout\ = (\uart_tx_u1|addr\(2) & (((\uart_tx_u1|addr\(1)) # (\uart_tx_u1|addr\(3))))) # (!\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(6) & ((!\uart_tx_u1|addr\(3)) # (!\uart_tx_u1|addr\(1)))) # (!\uart_tx_u1|addr\(6) & 
-- ((\uart_tx_u1|addr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(6),
	datac => \uart_tx_u1|addr\(1),
	datad => \uart_tx_u1|addr\(3),
	combout => \uart_tx_u1|AT|rom~108_combout\);

-- Location: LCCOMB_X20_Y24_N26
\uart_tx_u1|AT|rom~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~104_combout\ = (\uart_tx_u1|addr\(6) & ((\uart_tx_u1|addr\(1)) # ((!\uart_tx_u1|addr\(2) & !\uart_tx_u1|addr\(3))))) # (!\uart_tx_u1|addr\(6) & ((\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(2)) # (!\uart_tx_u1|addr\(3)))) # 
-- (!\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(6),
	datac => \uart_tx_u1|addr\(1),
	datad => \uart_tx_u1|addr\(3),
	combout => \uart_tx_u1|AT|rom~104_combout\);

-- Location: LCCOMB_X20_Y24_N8
\uart_tx_u1|AT|rom~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~105_combout\ = (\uart_tx_u1|addr\(6) & ((\uart_tx_u1|addr\(3)) # ((!\uart_tx_u1|addr\(1)) # (!\uart_tx_u1|addr\(2))))) # (!\uart_tx_u1|addr\(6) & (((\uart_tx_u1|addr\(2) & \uart_tx_u1|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(3),
	datab => \uart_tx_u1|addr\(6),
	datac => \uart_tx_u1|addr\(2),
	datad => \uart_tx_u1|addr\(1),
	combout => \uart_tx_u1|AT|rom~105_combout\);

-- Location: LCCOMB_X20_Y24_N18
\uart_tx_u1|AT|rom~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~106_combout\ = (!\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(3) & (\uart_tx_u1|addr\(6) $ (\uart_tx_u1|addr\(2)))) # (!\uart_tx_u1|addr\(3) & (\uart_tx_u1|addr\(6) & \uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(3),
	datab => \uart_tx_u1|addr\(6),
	datac => \uart_tx_u1|addr\(2),
	datad => \uart_tx_u1|addr\(1),
	combout => \uart_tx_u1|AT|rom~106_combout\);

-- Location: LCCOMB_X20_Y24_N20
\uart_tx_u1|AT|rom~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~107_combout\ = (\uart_tx_u1|addr\(5) & (\uart_tx_u1|addr\(4))) # (!\uart_tx_u1|addr\(5) & ((\uart_tx_u1|addr\(4) & (\uart_tx_u1|AT|rom~105_combout\)) # (!\uart_tx_u1|addr\(4) & ((!\uart_tx_u1|AT|rom~106_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(5),
	datab => \uart_tx_u1|addr\(4),
	datac => \uart_tx_u1|AT|rom~105_combout\,
	datad => \uart_tx_u1|AT|rom~106_combout\,
	combout => \uart_tx_u1|AT|rom~107_combout\);

-- Location: LCCOMB_X20_Y24_N12
\uart_tx_u1|AT|rom~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~109_combout\ = (\uart_tx_u1|addr\(5) & ((\uart_tx_u1|AT|rom~107_combout\ & (!\uart_tx_u1|AT|rom~108_combout\)) # (!\uart_tx_u1|AT|rom~107_combout\ & ((\uart_tx_u1|AT|rom~104_combout\))))) # (!\uart_tx_u1|addr\(5) & 
-- (((\uart_tx_u1|AT|rom~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(5),
	datab => \uart_tx_u1|AT|rom~108_combout\,
	datac => \uart_tx_u1|AT|rom~104_combout\,
	datad => \uart_tx_u1|AT|rom~107_combout\,
	combout => \uart_tx_u1|AT|rom~109_combout\);

-- Location: LCCOMB_X20_Y24_N30
\uart_tx_u1|AT|rom~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~114_combout\ = (\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(1) $ (\uart_tx_u1|addr\(3))))) # (!\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(6) & (\uart_tx_u1|addr\(1))) # (!\uart_tx_u1|addr\(6) & (!\uart_tx_u1|addr\(1) & 
-- \uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(6),
	datac => \uart_tx_u1|addr\(1),
	datad => \uart_tx_u1|addr\(3),
	combout => \uart_tx_u1|AT|rom~114_combout\);

-- Location: LCCOMB_X20_Y24_N22
\uart_tx_u1|AT|rom~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~110_combout\ = (\uart_tx_u1|addr\(3) & ((\uart_tx_u1|addr\(6) $ (!\uart_tx_u1|addr\(1))))) # (!\uart_tx_u1|addr\(3) & (!\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(6) $ (\uart_tx_u1|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(3),
	datac => \uart_tx_u1|addr\(6),
	datad => \uart_tx_u1|addr\(1),
	combout => \uart_tx_u1|AT|rom~110_combout\);

-- Location: LCCOMB_X20_Y24_N4
\uart_tx_u1|AT|rom~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~111_combout\ = (\uart_tx_u1|addr\(3) & (!\uart_tx_u1|addr\(6) & (\uart_tx_u1|addr\(2) $ (!\uart_tx_u1|addr\(1))))) # (!\uart_tx_u1|addr\(3) & (\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(2)) # (!\uart_tx_u1|addr\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(3),
	datab => \uart_tx_u1|addr\(6),
	datac => \uart_tx_u1|addr\(2),
	datad => \uart_tx_u1|addr\(1),
	combout => \uart_tx_u1|AT|rom~111_combout\);

-- Location: LCCOMB_X20_Y24_N6
\uart_tx_u1|AT|rom~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~112_combout\ = (\uart_tx_u1|addr\(1) & (!\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(3) $ (\uart_tx_u1|addr\(6))))) # (!\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(6) & (\uart_tx_u1|addr\(3) $ (!\uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(3),
	datab => \uart_tx_u1|addr\(6),
	datac => \uart_tx_u1|addr\(2),
	datad => \uart_tx_u1|addr\(1),
	combout => \uart_tx_u1|AT|rom~112_combout\);

-- Location: LCCOMB_X20_Y24_N0
\uart_tx_u1|AT|rom~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~113_combout\ = (\uart_tx_u1|addr\(5) & ((\uart_tx_u1|addr\(4)) # ((\uart_tx_u1|AT|rom~111_combout\)))) # (!\uart_tx_u1|addr\(5) & (!\uart_tx_u1|addr\(4) & ((\uart_tx_u1|AT|rom~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(5),
	datab => \uart_tx_u1|addr\(4),
	datac => \uart_tx_u1|AT|rom~111_combout\,
	datad => \uart_tx_u1|AT|rom~112_combout\,
	combout => \uart_tx_u1|AT|rom~113_combout\);

-- Location: LCCOMB_X20_Y24_N16
\uart_tx_u1|AT|rom~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~115_combout\ = (\uart_tx_u1|addr\(4) & ((\uart_tx_u1|AT|rom~113_combout\ & (!\uart_tx_u1|AT|rom~114_combout\)) # (!\uart_tx_u1|AT|rom~113_combout\ & ((\uart_tx_u1|AT|rom~110_combout\))))) # (!\uart_tx_u1|addr\(4) & 
-- (((\uart_tx_u1|AT|rom~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|AT|rom~114_combout\,
	datab => \uart_tx_u1|addr\(4),
	datac => \uart_tx_u1|AT|rom~110_combout\,
	datad => \uart_tx_u1|AT|rom~113_combout\,
	combout => \uart_tx_u1|AT|rom~115_combout\);

-- Location: LCCOMB_X21_Y27_N28
\uart_tx_u1|AT|rom~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~116_combout\ = (\uart_tx_u1|addr\(7) & (\uart_tx_u1|addr\(0))) # (!\uart_tx_u1|addr\(7) & ((\uart_tx_u1|addr\(0) & (\uart_tx_u1|AT|rom~109_combout\)) # (!\uart_tx_u1|addr\(0) & ((\uart_tx_u1|AT|rom~115_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(7),
	datab => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|AT|rom~109_combout\,
	datad => \uart_tx_u1|AT|rom~115_combout\,
	combout => \uart_tx_u1|AT|rom~116_combout\);

-- Location: LCCOMB_X20_Y27_N0
\uart_tx_u1|AT|rom~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~117_combout\ = (\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(3)) # (\uart_tx_u1|addr\(4) $ (!\uart_tx_u1|addr\(2))))) # (!\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(4)) # (\uart_tx_u1|addr\(3) $ (\uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(4),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(2),
	combout => \uart_tx_u1|AT|rom~117_combout\);

-- Location: LCCOMB_X21_Y27_N26
\uart_tx_u1|AT|rom~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~103_combout\ = (\uart_tx_u1|addr\(1) & (!\uart_tx_u1|addr\(4) & (\uart_tx_u1|addr\(3) & !\uart_tx_u1|addr\(2)))) # (!\uart_tx_u1|addr\(1) & (!\uart_tx_u1|addr\(3) & (\uart_tx_u1|addr\(4) $ (\uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(4),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(2),
	combout => \uart_tx_u1|AT|rom~103_combout\);

-- Location: LCCOMB_X21_Y27_N16
\uart_tx_u1|AT|rom~127\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~127_combout\ = (!\uart_tx_u1|addr\(6) & (!\uart_tx_u1|addr\(5) & ((\uart_tx_u1|AT|rom~103_combout\) # (\uart_tx_u1|AT|rom~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(6),
	datab => \uart_tx_u1|addr\(5),
	datac => \uart_tx_u1|AT|rom~103_combout\,
	datad => \uart_tx_u1|AT|rom~116_combout\,
	combout => \uart_tx_u1|AT|rom~127_combout\);

-- Location: LCCOMB_X21_Y27_N10
\uart_tx_u1|AT|rom~128\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~128_combout\ = (\uart_tx_u1|addr\(7) & (\uart_tx_u1|AT|rom~127_combout\ & ((!\uart_tx_u1|AT|rom~117_combout\) # (!\uart_tx_u1|AT|rom~116_combout\)))) # (!\uart_tx_u1|addr\(7) & (\uart_tx_u1|AT|rom~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(7),
	datab => \uart_tx_u1|AT|rom~116_combout\,
	datac => \uart_tx_u1|AT|rom~117_combout\,
	datad => \uart_tx_u1|AT|rom~127_combout\,
	combout => \uart_tx_u1|AT|rom~128_combout\);

-- Location: LCCOMB_X21_Y27_N2
\uart_tx_u1|Equal4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Equal4~2_combout\ = (\uart_tx_u1|AT|rom~124_combout\) # ((\uart_tx_u1|AT|rom~102_combout\) # (\uart_tx_u1|AT|rom~128_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|AT|rom~124_combout\,
	datac => \uart_tx_u1|AT|rom~102_combout\,
	datad => \uart_tx_u1|AT|rom~128_combout\,
	combout => \uart_tx_u1|Equal4~2_combout\);

-- Location: LCCOMB_X21_Y27_N30
\uart_tx_u1|Send_addr[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Send_addr[0]~1_combout\ = (\uart_tx_u1|Equal4~3_combout\ & (((\uart_tx_u1|Send_addr_w\(0))))) # (!\uart_tx_u1|Equal4~3_combout\ & ((\uart_tx_u1|Equal4~2_combout\ & ((\uart_tx_u1|Send_addr_w\(0)))) # (!\uart_tx_u1|Equal4~2_combout\ & 
-- (\uart_tx_u1|Send_addr[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[0]~0_combout\,
	datab => \uart_tx_u1|Equal4~3_combout\,
	datac => \uart_tx_u1|Send_addr_w\(0),
	datad => \uart_tx_u1|Equal4~2_combout\,
	combout => \uart_tx_u1|Send_addr[0]~1_combout\);

-- Location: LCCOMB_X23_Y26_N28
\uart_tx_u1|Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Mux7~2_combout\ = (\Select_mode_u1|LED_select\(3) & (((\Select_mode_u1|LED_select\(1)) # (\uart_tx_u1|Add9~0_combout\)))) # (!\Select_mode_u1|LED_select\(3) & (\uart_tx_u1|Add1~0_combout\ & (!\Select_mode_u1|LED_select\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(3),
	datab => \uart_tx_u1|Add1~0_combout\,
	datac => \Select_mode_u1|LED_select\(1),
	datad => \uart_tx_u1|Add9~0_combout\,
	combout => \uart_tx_u1|Mux7~2_combout\);

-- Location: LCCOMB_X23_Y26_N26
\uart_tx_u1|Mux7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Mux7~3_combout\ = (\Select_mode_u1|LED_select\(1) & ((\uart_tx_u1|Mux7~2_combout\ & (\uart_tx_u1|Add11~0_combout\)) # (!\uart_tx_u1|Mux7~2_combout\ & ((\uart_tx_u1|Add3~0_combout\))))) # (!\Select_mode_u1|LED_select\(1) & 
-- (((\uart_tx_u1|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(1),
	datab => \uart_tx_u1|Add11~0_combout\,
	datac => \uart_tx_u1|Add3~0_combout\,
	datad => \uart_tx_u1|Mux7~2_combout\,
	combout => \uart_tx_u1|Mux7~3_combout\);

-- Location: LCCOMB_X23_Y26_N12
\uart_tx_u1|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Mux7~0_combout\ = (\Select_mode_u1|LED_select\(3) & (((\Select_mode_u1|LED_select\(1))))) # (!\Select_mode_u1|LED_select\(3) & ((\Select_mode_u1|LED_select\(1) & ((\uart_tx_u1|Add7~0_combout\))) # (!\Select_mode_u1|LED_select\(1) & 
-- (\uart_tx_u1|Add5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(3),
	datab => \uart_tx_u1|Add5~0_combout\,
	datac => \Select_mode_u1|LED_select\(1),
	datad => \uart_tx_u1|Add7~0_combout\,
	combout => \uart_tx_u1|Mux7~0_combout\);

-- Location: LCCOMB_X23_Y26_N22
\uart_tx_u1|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Mux7~1_combout\ = (\Select_mode_u1|LED_select\(3) & ((\uart_tx_u1|Mux7~0_combout\ & ((\uart_tx_u1|Add15~0_combout\))) # (!\uart_tx_u1|Mux7~0_combout\ & (\uart_tx_u1|Add13~0_combout\)))) # (!\Select_mode_u1|LED_select\(3) & 
-- (((\uart_tx_u1|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(3),
	datab => \uart_tx_u1|Add13~0_combout\,
	datac => \uart_tx_u1|Add15~0_combout\,
	datad => \uart_tx_u1|Mux7~0_combout\,
	combout => \uart_tx_u1|Mux7~1_combout\);

-- Location: LCCOMB_X23_Y26_N20
\uart_tx_u1|Mux7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Mux7~4_combout\ = (\Select_mode_u1|LED_select\(0) & ((\Select_mode_u1|LED_select\(2) & ((\uart_tx_u1|Mux7~1_combout\))) # (!\Select_mode_u1|LED_select\(2) & (\uart_tx_u1|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(0),
	datab => \Select_mode_u1|LED_select\(2),
	datac => \uart_tx_u1|Mux7~3_combout\,
	datad => \uart_tx_u1|Mux7~1_combout\,
	combout => \uart_tx_u1|Mux7~4_combout\);

-- Location: LCCOMB_X23_Y26_N10
\uart_tx_u1|Mux7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Mux7~5_combout\ = (\uart_tx_u1|Mux7~4_combout\) # ((!\Select_mode_u1|LED_select\(0) & \uart_tx_u1|Send_addr[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(0),
	datab => \uart_tx_u1|Send_addr[0]~1_combout\,
	datad => \uart_tx_u1|Mux7~4_combout\,
	combout => \uart_tx_u1|Mux7~5_combout\);

-- Location: LCCOMB_X23_Y26_N16
\uart_tx_u1|addr[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr[0]~2_combout\ = (\Select_mode_u1|LED_select\(4) & (\uart_tx_u1|addr\(0))) # (!\Select_mode_u1|LED_select\(4) & ((\uart_tx_u1|Mux7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(4),
	datac => \uart_tx_u1|addr\(0),
	datad => \uart_tx_u1|Mux7~5_combout\,
	combout => \uart_tx_u1|addr[0]~2_combout\);

-- Location: LCCOMB_X23_Y26_N24
\uart_tx_u1|addr~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~7_combout\ = (\uart_tx_u1|addr~6_combout\ & ((\uart_tx_u1|Send_addr_w\(0)))) # (!\uart_tx_u1|addr~6_combout\ & (\uart_tx_u1|Add16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Add16~0_combout\,
	datab => \uart_tx_u1|Send_addr_w\(0),
	datad => \uart_tx_u1|addr~6_combout\,
	combout => \uart_tx_u1|addr~7_combout\);

-- Location: FF_X23_Y26_N17
\uart_tx_u1|addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|addr[0]~2_combout\,
	asdata => \uart_tx_u1|addr~7_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => \uart_tx_u1|ALT_INV_always0~4_combout\,
	ena => \uart_tx_u1|addr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|addr\(0));

-- Location: LCCOMB_X22_Y23_N20
\uart_tx_u1|AT|rom~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~118_combout\ = (\uart_tx_u1|addr\(3) & ((\uart_tx_u1|addr\(1)) # ((\uart_tx_u1|addr\(2) & \uart_tx_u1|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|addr\(1),
	datad => \uart_tx_u1|addr\(3),
	combout => \uart_tx_u1|AT|rom~118_combout\);

-- Location: LCCOMB_X22_Y23_N14
\uart_tx_u1|AT|rom~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~119_combout\ = (\uart_tx_u1|addr\(4) & (!\uart_tx_u1|addr\(2) & (!\uart_tx_u1|addr\(3)))) # (!\uart_tx_u1|addr\(4) & (((\uart_tx_u1|AT|rom~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(3),
	datac => \uart_tx_u1|addr\(4),
	datad => \uart_tx_u1|AT|rom~118_combout\,
	combout => \uart_tx_u1|AT|rom~119_combout\);

-- Location: LCCOMB_X22_Y23_N0
\uart_tx_u1|AT|rom~125\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~125_combout\ = (\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(3) $ (\uart_tx_u1|addr\(4))))) # (!\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(0) & ((!\uart_tx_u1|addr\(4)))) # (!\uart_tx_u1|addr\(0) & (!\uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(4),
	combout => \uart_tx_u1|AT|rom~125_combout\);

-- Location: LCCOMB_X22_Y23_N6
\uart_tx_u1|AT|rom~126\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~126_combout\ = (\uart_tx_u1|addr\(3) & (!\uart_tx_u1|addr\(4) & ((\uart_tx_u1|addr\(1)) # (\uart_tx_u1|AT|rom~125_combout\)))) # (!\uart_tx_u1|addr\(3) & ((\uart_tx_u1|addr\(1) $ (\uart_tx_u1|AT|rom~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(3),
	datab => \uart_tx_u1|addr\(4),
	datac => \uart_tx_u1|addr\(1),
	datad => \uart_tx_u1|AT|rom~125_combout\,
	combout => \uart_tx_u1|AT|rom~126_combout\);

-- Location: LCCOMB_X22_Y23_N4
\uart_tx_u1|AT|rom~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~120_combout\ = (\uart_tx_u1|addr\(5) & (\uart_tx_u1|AT|rom~119_combout\)) # (!\uart_tx_u1|addr\(5) & ((\uart_tx_u1|AT|rom~126_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(5),
	datac => \uart_tx_u1|AT|rom~119_combout\,
	datad => \uart_tx_u1|AT|rom~126_combout\,
	combout => \uart_tx_u1|AT|rom~120_combout\);

-- Location: LCCOMB_X22_Y23_N26
\uart_tx_u1|AT|rom~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~121_combout\ = (\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(0) & (!\uart_tx_u1|addr\(1) & !\uart_tx_u1|addr\(3)))) # (!\uart_tx_u1|addr\(2) & (!\uart_tx_u1|addr\(0) & (\uart_tx_u1|addr\(1) $ (\uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|addr\(1),
	datad => \uart_tx_u1|addr\(3),
	combout => \uart_tx_u1|AT|rom~121_combout\);

-- Location: LCCOMB_X22_Y23_N24
\uart_tx_u1|AT|rom~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~83_combout\ = (\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(3) $ (!\uart_tx_u1|addr\(0))))) # (!\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(3) & (\uart_tx_u1|addr\(2) $ (\uart_tx_u1|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(3),
	datac => \uart_tx_u1|addr\(1),
	datad => \uart_tx_u1|addr\(0),
	combout => \uart_tx_u1|AT|rom~83_combout\);

-- Location: LCCOMB_X22_Y23_N28
\uart_tx_u1|AT|rom~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~122_combout\ = (\uart_tx_u1|addr\(5) & (!\uart_tx_u1|addr\(4) & (\uart_tx_u1|AT|rom~121_combout\))) # (!\uart_tx_u1|addr\(5) & (\uart_tx_u1|addr\(4) & ((\uart_tx_u1|AT|rom~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(5),
	datab => \uart_tx_u1|addr\(4),
	datac => \uart_tx_u1|AT|rom~121_combout\,
	datad => \uart_tx_u1|AT|rom~83_combout\,
	combout => \uart_tx_u1|AT|rom~122_combout\);

-- Location: LCCOMB_X22_Y23_N22
\uart_tx_u1|AT|rom~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~123_combout\ = (\uart_tx_u1|addr\(7) & (!\uart_tx_u1|addr\(6) & \uart_tx_u1|AT|rom~122_combout\)) # (!\uart_tx_u1|addr\(7) & (\uart_tx_u1|addr\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(7),
	datac => \uart_tx_u1|addr\(6),
	datad => \uart_tx_u1|AT|rom~122_combout\,
	combout => \uart_tx_u1|AT|rom~123_combout\);

-- Location: LCCOMB_X22_Y23_N18
\uart_tx_u1|AT|rom~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~7_combout\ = (\uart_tx_u1|addr\(5) & ((\uart_tx_u1|addr\(2)) # (\uart_tx_u1|addr\(0) $ (\uart_tx_u1|addr\(1))))) # (!\uart_tx_u1|addr\(5) & ((\uart_tx_u1|addr\(0) & ((\uart_tx_u1|addr\(1)))) # (!\uart_tx_u1|addr\(0) & 
-- (\uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|addr\(5),
	datad => \uart_tx_u1|addr\(1),
	combout => \uart_tx_u1|AT|rom~7_combout\);

-- Location: LCCOMB_X21_Y23_N6
\uart_tx_u1|AT|rom~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~6_combout\ = (!\uart_tx_u1|addr\(5) & (\uart_tx_u1|addr\(2) $ (!\uart_tx_u1|addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(5),
	datac => \uart_tx_u1|addr\(2),
	datad => \uart_tx_u1|addr\(1),
	combout => \uart_tx_u1|AT|rom~6_combout\);

-- Location: LCCOMB_X22_Y23_N30
\uart_tx_u1|AT|rom~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~3_combout\ = (\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(1)) # ((\uart_tx_u1|addr\(0)) # (!\uart_tx_u1|addr\(5))))) # (!\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(5) $ (\uart_tx_u1|addr\(0))) # (!\uart_tx_u1|addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(5),
	datad => \uart_tx_u1|addr\(0),
	combout => \uart_tx_u1|AT|rom~3_combout\);

-- Location: LCCOMB_X22_Y23_N16
\uart_tx_u1|AT|rom~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~4_combout\ = (!\uart_tx_u1|addr\(5) & ((\uart_tx_u1|addr\(2) & ((!\uart_tx_u1|addr\(0)) # (!\uart_tx_u1|addr\(1)))) # (!\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(1)) # (\uart_tx_u1|addr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(5),
	datad => \uart_tx_u1|addr\(0),
	combout => \uart_tx_u1|AT|rom~4_combout\);

-- Location: LCCOMB_X22_Y23_N12
\uart_tx_u1|AT|rom~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~8_combout\ = (\uart_tx_u1|addr\(3) & (\uart_tx_u1|addr\(4))) # (!\uart_tx_u1|addr\(3) & ((\uart_tx_u1|addr\(4) & ((\uart_tx_u1|AT|rom~4_combout\))) # (!\uart_tx_u1|addr\(4) & (\uart_tx_u1|AT|rom~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(3),
	datab => \uart_tx_u1|addr\(4),
	datac => \uart_tx_u1|AT|rom~3_combout\,
	datad => \uart_tx_u1|AT|rom~4_combout\,
	combout => \uart_tx_u1|AT|rom~8_combout\);

-- Location: LCCOMB_X22_Y23_N2
\uart_tx_u1|AT|rom~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~9_combout\ = (\uart_tx_u1|addr\(3) & ((\uart_tx_u1|AT|rom~8_combout\ & (\uart_tx_u1|AT|rom~7_combout\)) # (!\uart_tx_u1|AT|rom~8_combout\ & ((\uart_tx_u1|AT|rom~6_combout\))))) # (!\uart_tx_u1|addr\(3) & 
-- (((\uart_tx_u1|AT|rom~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(3),
	datab => \uart_tx_u1|AT|rom~7_combout\,
	datac => \uart_tx_u1|AT|rom~6_combout\,
	datad => \uart_tx_u1|AT|rom~8_combout\,
	combout => \uart_tx_u1|AT|rom~9_combout\);

-- Location: LCCOMB_X22_Y23_N8
\uart_tx_u1|AT|rom~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~124_combout\ = (\uart_tx_u1|addr\(7) & (((\uart_tx_u1|AT|rom~123_combout\)))) # (!\uart_tx_u1|addr\(7) & ((\uart_tx_u1|AT|rom~123_combout\ & (\uart_tx_u1|AT|rom~120_combout\)) # (!\uart_tx_u1|AT|rom~123_combout\ & 
-- ((\uart_tx_u1|AT|rom~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(7),
	datab => \uart_tx_u1|AT|rom~120_combout\,
	datac => \uart_tx_u1|AT|rom~123_combout\,
	datad => \uart_tx_u1|AT|rom~9_combout\,
	combout => \uart_tx_u1|AT|rom~124_combout\);

-- Location: LCCOMB_X20_Y24_N10
\uart_tx_u1|Equal4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Equal4~4_combout\ = (\uart_tx_u1|AT|rom~124_combout\) # ((\uart_tx_u1|AT|rom~102_combout\) # ((\uart_tx_u1|AT|rom~128_combout\) # (\uart_tx_u1|Equal4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|AT|rom~124_combout\,
	datab => \uart_tx_u1|AT|rom~102_combout\,
	datac => \uart_tx_u1|AT|rom~128_combout\,
	datad => \uart_tx_u1|Equal4~3_combout\,
	combout => \uart_tx_u1|Equal4~4_combout\);

-- Location: LCCOMB_X20_Y24_N24
\uart_tx_u1|Send_addr_w[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Send_addr_w[0]~0_combout\ = (!\uart_tx_u1|Equal4~4_combout\ & (\uart_tx_u1|always0~2_combout\ & \uart_tx_u1|addr[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Equal4~4_combout\,
	datab => \uart_tx_u1|always0~2_combout\,
	datad => \uart_tx_u1|addr[0]~8_combout\,
	combout => \uart_tx_u1|Send_addr_w[0]~0_combout\);

-- Location: FF_X20_Y27_N31
\uart_tx_u1|Send_addr_w[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|Send_addr_w[2]~feeder_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \uart_tx_u1|Send_addr_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|Send_addr_w\(2));

-- Location: LCCOMB_X18_Y26_N8
\uart_tx_u1|Add16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add16~4_combout\ = (\uart_tx_u1|addr\(2) & (\uart_tx_u1|Add16~3\ $ (GND))) # (!\uart_tx_u1|addr\(2) & (!\uart_tx_u1|Add16~3\ & VCC))
-- \uart_tx_u1|Add16~5\ = CARRY((\uart_tx_u1|addr\(2) & !\uart_tx_u1|Add16~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datad => VCC,
	cin => \uart_tx_u1|Add16~3\,
	combout => \uart_tx_u1|Add16~4_combout\,
	cout => \uart_tx_u1|Add16~5\);

-- Location: LCCOMB_X20_Y27_N4
\uart_tx_u1|Send_addr[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Send_addr[2]~3_combout\ = (\uart_tx_u1|always1~0_combout\ & ((\uart_tx_u1|Add16~4_combout\))) # (!\uart_tx_u1|always1~0_combout\ & (\uart_tx_u1|Send_addr_w\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr_w\(2),
	datab => \uart_tx_u1|Add16~4_combout\,
	datad => \uart_tx_u1|always1~0_combout\,
	combout => \uart_tx_u1|Send_addr[2]~3_combout\);

-- Location: LCCOMB_X22_Y24_N10
\uart_tx_u1|Add15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add15~4_combout\ = (\uart_tx_u1|Send_addr[2]~3_combout\ & (\uart_tx_u1|Add15~3\ $ (GND))) # (!\uart_tx_u1|Send_addr[2]~3_combout\ & (!\uart_tx_u1|Add15~3\ & VCC))
-- \uart_tx_u1|Add15~5\ = CARRY((\uart_tx_u1|Send_addr[2]~3_combout\ & !\uart_tx_u1|Add15~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add15~3\,
	combout => \uart_tx_u1|Add15~4_combout\,
	cout => \uart_tx_u1|Add15~5\);

-- Location: LCCOMB_X21_Y24_N18
\uart_tx_u1|Add7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add7~4_combout\ = (\uart_tx_u1|Send_addr[2]~3_combout\ & (\uart_tx_u1|Add7~3\ $ (GND))) # (!\uart_tx_u1|Send_addr[2]~3_combout\ & (!\uart_tx_u1|Add7~3\ & VCC))
-- \uart_tx_u1|Add7~5\ = CARRY((\uart_tx_u1|Send_addr[2]~3_combout\ & !\uart_tx_u1|Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add7~3\,
	combout => \uart_tx_u1|Add7~4_combout\,
	cout => \uart_tx_u1|Add7~5\);

-- Location: LCCOMB_X21_Y24_N10
\uart_tx_u1|Mux5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Mux5~7_combout\ = (\Select_mode_u1|LED_select\(0) & ((\Select_mode_u1|LED_select\(3) & (\uart_tx_u1|Add15~4_combout\)) # (!\Select_mode_u1|LED_select\(3) & ((\uart_tx_u1|Add7~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(3),
	datab => \Select_mode_u1|LED_select\(0),
	datac => \uart_tx_u1|Add15~4_combout\,
	datad => \uart_tx_u1|Add7~4_combout\,
	combout => \uart_tx_u1|Mux5~7_combout\);

-- Location: LCCOMB_X21_Y24_N4
\uart_tx_u1|Mux5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Mux5~8_combout\ = (\uart_tx_u1|Mux5~7_combout\) # ((\uart_tx_u1|Send_addr[2]~3_combout\ & !\Select_mode_u1|LED_select\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[2]~3_combout\,
	datab => \Select_mode_u1|LED_select\(0),
	datad => \uart_tx_u1|Mux5~7_combout\,
	combout => \uart_tx_u1|Mux5~8_combout\);

-- Location: LCCOMB_X22_Y25_N16
\uart_tx_u1|Add9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add9~4_combout\ = (\uart_tx_u1|Send_addr[2]~3_combout\ & (\uart_tx_u1|Add9~3\ $ (GND))) # (!\uart_tx_u1|Send_addr[2]~3_combout\ & (!\uart_tx_u1|Add9~3\ & VCC))
-- \uart_tx_u1|Add9~5\ = CARRY((\uart_tx_u1|Send_addr[2]~3_combout\ & !\uart_tx_u1|Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add9~3\,
	combout => \uart_tx_u1|Add9~4_combout\,
	cout => \uart_tx_u1|Add9~5\);

-- Location: LCCOMB_X21_Y26_N18
\uart_tx_u1|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add1~4_combout\ = (\uart_tx_u1|Send_addr[2]~3_combout\ & (\uart_tx_u1|Add1~3\ $ (GND))) # (!\uart_tx_u1|Send_addr[2]~3_combout\ & (!\uart_tx_u1|Add1~3\ & VCC))
-- \uart_tx_u1|Add1~5\ = CARRY((\uart_tx_u1|Send_addr[2]~3_combout\ & !\uart_tx_u1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add1~3\,
	combout => \uart_tx_u1|Add1~4_combout\,
	cout => \uart_tx_u1|Add1~5\);

-- Location: LCCOMB_X19_Y23_N10
\uart_tx_u1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add0~2_combout\ = (\uart_tx_u1|Send_addr[2]~3_combout\ & (\uart_tx_u1|Add0~1\ & VCC)) # (!\uart_tx_u1|Send_addr[2]~3_combout\ & (!\uart_tx_u1|Add0~1\))
-- \uart_tx_u1|Add0~3\ = CARRY((!\uart_tx_u1|Send_addr[2]~3_combout\ & !\uart_tx_u1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add0~1\,
	combout => \uart_tx_u1|Add0~2_combout\,
	cout => \uart_tx_u1|Add0~3\);

-- Location: LCCOMB_X21_Y26_N8
\uart_tx_u1|Mux5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Mux5~4_combout\ = (\Select_mode_u1|LED_select\(0) & ((\uart_tx_u1|Add1~4_combout\) # ((\Select_mode_u1|LED_select\(3))))) # (!\Select_mode_u1|LED_select\(0) & (((!\Select_mode_u1|LED_select\(3) & \uart_tx_u1|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Add1~4_combout\,
	datab => \Select_mode_u1|LED_select\(0),
	datac => \Select_mode_u1|LED_select\(3),
	datad => \uart_tx_u1|Add0~2_combout\,
	combout => \uart_tx_u1|Mux5~4_combout\);

-- Location: LCCOMB_X19_Y27_N2
\uart_tx_u1|Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add8~2_combout\ = (\uart_tx_u1|Send_addr[2]~3_combout\ & (\uart_tx_u1|Add8~1\ & VCC)) # (!\uart_tx_u1|Send_addr[2]~3_combout\ & (!\uart_tx_u1|Add8~1\))
-- \uart_tx_u1|Add8~3\ = CARRY((!\uart_tx_u1|Send_addr[2]~3_combout\ & !\uart_tx_u1|Add8~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add8~1\,
	combout => \uart_tx_u1|Add8~2_combout\,
	cout => \uart_tx_u1|Add8~3\);

-- Location: LCCOMB_X21_Y26_N30
\uart_tx_u1|Mux5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Mux5~5_combout\ = (\Select_mode_u1|LED_select\(3) & ((\uart_tx_u1|Mux5~4_combout\ & (\uart_tx_u1|Add9~4_combout\)) # (!\uart_tx_u1|Mux5~4_combout\ & ((\uart_tx_u1|Add8~2_combout\))))) # (!\Select_mode_u1|LED_select\(3) & 
-- (((\uart_tx_u1|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Add9~4_combout\,
	datab => \Select_mode_u1|LED_select\(3),
	datac => \uart_tx_u1|Mux5~4_combout\,
	datad => \uart_tx_u1|Add8~2_combout\,
	combout => \uart_tx_u1|Mux5~5_combout\);

-- Location: LCCOMB_X20_Y23_N16
\uart_tx_u1|Add11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add11~4_combout\ = (\uart_tx_u1|Send_addr[2]~3_combout\ & ((GND) # (!\uart_tx_u1|Add11~3\))) # (!\uart_tx_u1|Send_addr[2]~3_combout\ & (\uart_tx_u1|Add11~3\ $ (GND)))
-- \uart_tx_u1|Add11~5\ = CARRY((\uart_tx_u1|Send_addr[2]~3_combout\) # (!\uart_tx_u1|Add11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add11~3\,
	combout => \uart_tx_u1|Add11~4_combout\,
	cout => \uart_tx_u1|Add11~5\);

-- Location: LCCOMB_X20_Y23_N0
\uart_tx_u1|Add10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add10~0_combout\ = \uart_tx_u1|Send_addr[2]~3_combout\ $ (VCC)
-- \uart_tx_u1|Add10~1\ = CARRY(\uart_tx_u1|Send_addr[2]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	combout => \uart_tx_u1|Add10~0_combout\,
	cout => \uart_tx_u1|Add10~1\);

-- Location: LCCOMB_X21_Y23_N14
\uart_tx_u1|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add2~0_combout\ = \uart_tx_u1|Send_addr[2]~3_combout\ $ (VCC)
-- \uart_tx_u1|Add2~1\ = CARRY(\uart_tx_u1|Send_addr[2]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	combout => \uart_tx_u1|Add2~0_combout\,
	cout => \uart_tx_u1|Add2~1\);

-- Location: LCCOMB_X19_Y26_N14
\uart_tx_u1|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add3~4_combout\ = (\uart_tx_u1|Send_addr[2]~3_combout\ & ((GND) # (!\uart_tx_u1|Add3~3\))) # (!\uart_tx_u1|Send_addr[2]~3_combout\ & (\uart_tx_u1|Add3~3\ $ (GND)))
-- \uart_tx_u1|Add3~5\ = CARRY((\uart_tx_u1|Send_addr[2]~3_combout\) # (!\uart_tx_u1|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add3~3\,
	combout => \uart_tx_u1|Add3~4_combout\,
	cout => \uart_tx_u1|Add3~5\);

-- Location: LCCOMB_X21_Y26_N12
\uart_tx_u1|Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Mux5~2_combout\ = (\Select_mode_u1|LED_select\(0) & ((\Select_mode_u1|LED_select\(3)) # ((\uart_tx_u1|Add3~4_combout\)))) # (!\Select_mode_u1|LED_select\(0) & (!\Select_mode_u1|LED_select\(3) & (\uart_tx_u1|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(0),
	datab => \Select_mode_u1|LED_select\(3),
	datac => \uart_tx_u1|Add2~0_combout\,
	datad => \uart_tx_u1|Add3~4_combout\,
	combout => \uart_tx_u1|Mux5~2_combout\);

-- Location: LCCOMB_X21_Y26_N6
\uart_tx_u1|Mux5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Mux5~3_combout\ = (\Select_mode_u1|LED_select\(3) & ((\uart_tx_u1|Mux5~2_combout\ & (\uart_tx_u1|Add11~4_combout\)) # (!\uart_tx_u1|Mux5~2_combout\ & ((\uart_tx_u1|Add10~0_combout\))))) # (!\Select_mode_u1|LED_select\(3) & 
-- (((\uart_tx_u1|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Add11~4_combout\,
	datab => \Select_mode_u1|LED_select\(3),
	datac => \uart_tx_u1|Add10~0_combout\,
	datad => \uart_tx_u1|Mux5~2_combout\,
	combout => \uart_tx_u1|Mux5~3_combout\);

-- Location: LCCOMB_X21_Y26_N4
\uart_tx_u1|Mux5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Mux5~6_combout\ = (\Select_mode_u1|LED_select\(1) & ((\Select_mode_u1|LED_select\(2)) # ((\uart_tx_u1|Mux5~3_combout\)))) # (!\Select_mode_u1|LED_select\(1) & (!\Select_mode_u1|LED_select\(2) & (\uart_tx_u1|Mux5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(1),
	datab => \Select_mode_u1|LED_select\(2),
	datac => \uart_tx_u1|Mux5~5_combout\,
	datad => \uart_tx_u1|Mux5~3_combout\,
	combout => \uart_tx_u1|Mux5~6_combout\);

-- Location: LCCOMB_X19_Y25_N6
\uart_tx_u1|Add12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add12~2_combout\ = (\uart_tx_u1|Send_addr[2]~3_combout\ & (!\uart_tx_u1|Add12~1\)) # (!\uart_tx_u1|Send_addr[2]~3_combout\ & ((\uart_tx_u1|Add12~1\) # (GND)))
-- \uart_tx_u1|Add12~3\ = CARRY((!\uart_tx_u1|Add12~1\) # (!\uart_tx_u1|Send_addr[2]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add12~1\,
	combout => \uart_tx_u1|Add12~2_combout\,
	cout => \uart_tx_u1|Add12~3\);

-- Location: LCCOMB_X23_Y25_N12
\uart_tx_u1|Add13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add13~4_combout\ = (\uart_tx_u1|Send_addr[2]~3_combout\ & ((GND) # (!\uart_tx_u1|Add13~3\))) # (!\uart_tx_u1|Send_addr[2]~3_combout\ & (\uart_tx_u1|Add13~3\ $ (GND)))
-- \uart_tx_u1|Add13~5\ = CARRY((\uart_tx_u1|Send_addr[2]~3_combout\) # (!\uart_tx_u1|Add13~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add13~3\,
	combout => \uart_tx_u1|Add13~4_combout\,
	cout => \uart_tx_u1|Add13~5\);

-- Location: LCCOMB_X20_Y27_N16
\uart_tx_u1|Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add5~4_combout\ = (\uart_tx_u1|Send_addr[2]~3_combout\ & ((GND) # (!\uart_tx_u1|Add5~3\))) # (!\uart_tx_u1|Send_addr[2]~3_combout\ & (\uart_tx_u1|Add5~3\ $ (GND)))
-- \uart_tx_u1|Add5~5\ = CARRY((\uart_tx_u1|Send_addr[2]~3_combout\) # (!\uart_tx_u1|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add5~3\,
	combout => \uart_tx_u1|Add5~4_combout\,
	cout => \uart_tx_u1|Add5~5\);

-- Location: LCCOMB_X20_Y25_N2
\uart_tx_u1|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add4~2_combout\ = (\uart_tx_u1|Send_addr[2]~3_combout\ & (!\uart_tx_u1|Add4~1\)) # (!\uart_tx_u1|Send_addr[2]~3_combout\ & ((\uart_tx_u1|Add4~1\) # (GND)))
-- \uart_tx_u1|Add4~3\ = CARRY((!\uart_tx_u1|Add4~1\) # (!\uart_tx_u1|Send_addr[2]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[2]~3_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add4~1\,
	combout => \uart_tx_u1|Add4~2_combout\,
	cout => \uart_tx_u1|Add4~3\);

-- Location: LCCOMB_X20_Y27_N8
\uart_tx_u1|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Mux5~0_combout\ = (\Select_mode_u1|LED_select\(0) & ((\uart_tx_u1|Add5~4_combout\) # ((\Select_mode_u1|LED_select\(3))))) # (!\Select_mode_u1|LED_select\(0) & (((!\Select_mode_u1|LED_select\(3) & \uart_tx_u1|Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(0),
	datab => \uart_tx_u1|Add5~4_combout\,
	datac => \Select_mode_u1|LED_select\(3),
	datad => \uart_tx_u1|Add4~2_combout\,
	combout => \uart_tx_u1|Mux5~0_combout\);

-- Location: LCCOMB_X21_Y26_N2
\uart_tx_u1|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Mux5~1_combout\ = (\Select_mode_u1|LED_select\(3) & ((\uart_tx_u1|Mux5~0_combout\ & ((\uart_tx_u1|Add13~4_combout\))) # (!\uart_tx_u1|Mux5~0_combout\ & (\uart_tx_u1|Add12~2_combout\)))) # (!\Select_mode_u1|LED_select\(3) & 
-- (((\uart_tx_u1|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Add12~2_combout\,
	datab => \Select_mode_u1|LED_select\(3),
	datac => \uart_tx_u1|Add13~4_combout\,
	datad => \uart_tx_u1|Mux5~0_combout\,
	combout => \uart_tx_u1|Mux5~1_combout\);

-- Location: LCCOMB_X21_Y26_N10
\uart_tx_u1|Mux5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Mux5~9_combout\ = (\Select_mode_u1|LED_select\(2) & ((\uart_tx_u1|Mux5~6_combout\ & (\uart_tx_u1|Mux5~8_combout\)) # (!\uart_tx_u1|Mux5~6_combout\ & ((\uart_tx_u1|Mux5~1_combout\))))) # (!\Select_mode_u1|LED_select\(2) & 
-- (((\uart_tx_u1|Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Mux5~8_combout\,
	datab => \Select_mode_u1|LED_select\(2),
	datac => \uart_tx_u1|Mux5~6_combout\,
	datad => \uart_tx_u1|Mux5~1_combout\,
	combout => \uart_tx_u1|Mux5~9_combout\);

-- Location: LCCOMB_X21_Y26_N0
\uart_tx_u1|addr[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr[2]~4_combout\ = (\Select_mode_u1|LED_select\(4) & (\uart_tx_u1|addr\(2))) # (!\Select_mode_u1|LED_select\(4) & ((\uart_tx_u1|Mux5~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Select_mode_u1|LED_select\(4),
	datac => \uart_tx_u1|addr\(2),
	datad => \uart_tx_u1|Mux5~9_combout\,
	combout => \uart_tx_u1|addr[2]~4_combout\);

-- Location: LCCOMB_X20_Y27_N2
\uart_tx_u1|addr~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~10_combout\ = (\uart_tx_u1|addr~6_combout\ & (\uart_tx_u1|Send_addr_w\(2))) # (!\uart_tx_u1|addr~6_combout\ & ((\uart_tx_u1|Add16~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr_w\(2),
	datac => \uart_tx_u1|Add16~4_combout\,
	datad => \uart_tx_u1|addr~6_combout\,
	combout => \uart_tx_u1|addr~10_combout\);

-- Location: FF_X21_Y26_N1
\uart_tx_u1|addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|addr[2]~4_combout\,
	asdata => \uart_tx_u1|addr~10_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => \uart_tx_u1|ALT_INV_always0~4_combout\,
	ena => \uart_tx_u1|addr[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|addr\(2));

-- Location: LCCOMB_X18_Y26_N10
\uart_tx_u1|Add16~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add16~6_combout\ = (\uart_tx_u1|addr\(3) & (!\uart_tx_u1|Add16~5\)) # (!\uart_tx_u1|addr\(3) & ((\uart_tx_u1|Add16~5\) # (GND)))
-- \uart_tx_u1|Add16~7\ = CARRY((!\uart_tx_u1|Add16~5\) # (!\uart_tx_u1|addr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(3),
	datad => VCC,
	cin => \uart_tx_u1|Add16~5\,
	combout => \uart_tx_u1|Add16~6_combout\,
	cout => \uart_tx_u1|Add16~7\);

-- Location: FF_X21_Y27_N9
\uart_tx_u1|Send_addr_w[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|Send_addr[3]~6_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \uart_tx_u1|Send_addr_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|Send_addr_w\(3));

-- Location: LCCOMB_X21_Y27_N8
\uart_tx_u1|Send_addr[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Send_addr[3]~6_combout\ = (\uart_tx_u1|always1~0_combout\ & (\uart_tx_u1|Add16~6_combout\)) # (!\uart_tx_u1|always1~0_combout\ & ((\uart_tx_u1|Send_addr_w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Add16~6_combout\,
	datac => \uart_tx_u1|Send_addr_w\(3),
	datad => \uart_tx_u1|always1~0_combout\,
	combout => \uart_tx_u1|Send_addr[3]~6_combout\);

-- Location: LCCOMB_X19_Y24_N24
\uart_tx_u1|addr[4]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr[4]~31_combout\ = (\uart_tx_u1|always0~3_combout\ & (!\uart_tx_u1|Equal4~4_combout\ & ((\Select_mode_u1|LED_select\(2)) # (!\Select_mode_u1|LED_select\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(3),
	datab => \uart_tx_u1|always0~3_combout\,
	datac => \Select_mode_u1|LED_select\(2),
	datad => \uart_tx_u1|Equal4~4_combout\,
	combout => \uart_tx_u1|addr[4]~31_combout\);

-- Location: LCCOMB_X23_Y25_N14
\uart_tx_u1|Add13~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add13~6_combout\ = (\uart_tx_u1|Send_addr[3]~6_combout\ & (!\uart_tx_u1|Add13~5\)) # (!\uart_tx_u1|Send_addr[3]~6_combout\ & ((\uart_tx_u1|Add13~5\) # (GND)))
-- \uart_tx_u1|Add13~7\ = CARRY((!\uart_tx_u1|Add13~5\) # (!\uart_tx_u1|Send_addr[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add13~5\,
	combout => \uart_tx_u1|Add13~6_combout\,
	cout => \uart_tx_u1|Add13~7\);

-- Location: LCCOMB_X22_Y24_N12
\uart_tx_u1|Add15~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add15~6_combout\ = (\uart_tx_u1|Send_addr[3]~6_combout\ & (\uart_tx_u1|Add15~5\ & VCC)) # (!\uart_tx_u1|Send_addr[3]~6_combout\ & (!\uart_tx_u1|Add15~5\))
-- \uart_tx_u1|Add15~7\ = CARRY((!\uart_tx_u1|Send_addr[3]~6_combout\ & !\uart_tx_u1|Add15~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add15~5\,
	combout => \uart_tx_u1|Add15~6_combout\,
	cout => \uart_tx_u1|Add15~7\);

-- Location: LCCOMB_X19_Y25_N8
\uart_tx_u1|Add12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add12~4_combout\ = (\uart_tx_u1|Send_addr[3]~6_combout\ & (\uart_tx_u1|Add12~3\ $ (GND))) # (!\uart_tx_u1|Send_addr[3]~6_combout\ & (!\uart_tx_u1|Add12~3\ & VCC))
-- \uart_tx_u1|Add12~5\ = CARRY((\uart_tx_u1|Send_addr[3]~6_combout\ & !\uart_tx_u1|Add12~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add12~3\,
	combout => \uart_tx_u1|Add12~4_combout\,
	cout => \uart_tx_u1|Add12~5\);

-- Location: LCCOMB_X19_Y25_N20
\uart_tx_u1|Add14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add14~0_combout\ = \uart_tx_u1|Send_addr[3]~6_combout\ $ (VCC)
-- \uart_tx_u1|Add14~1\ = CARRY(\uart_tx_u1|Send_addr[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	combout => \uart_tx_u1|Add14~0_combout\,
	cout => \uart_tx_u1|Add14~1\);

-- Location: LCCOMB_X19_Y25_N0
\uart_tx_u1|addr~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~46_combout\ = (\Select_mode_u1|LED_select\(1) & ((\Select_mode_u1|LED_select\(0)) # ((\uart_tx_u1|Add14~0_combout\)))) # (!\Select_mode_u1|LED_select\(1) & (!\Select_mode_u1|LED_select\(0) & (\uart_tx_u1|Add12~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(1),
	datab => \Select_mode_u1|LED_select\(0),
	datac => \uart_tx_u1|Add12~4_combout\,
	datad => \uart_tx_u1|Add14~0_combout\,
	combout => \uart_tx_u1|addr~46_combout\);

-- Location: LCCOMB_X19_Y25_N18
\uart_tx_u1|addr~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~47_combout\ = (\Select_mode_u1|LED_select\(0) & ((\uart_tx_u1|addr~46_combout\ & ((\uart_tx_u1|Add15~6_combout\))) # (!\uart_tx_u1|addr~46_combout\ & (\uart_tx_u1|Add13~6_combout\)))) # (!\Select_mode_u1|LED_select\(0) & 
-- (((\uart_tx_u1|addr~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Add13~6_combout\,
	datab => \Select_mode_u1|LED_select\(0),
	datac => \uart_tx_u1|Add15~6_combout\,
	datad => \uart_tx_u1|addr~46_combout\,
	combout => \uart_tx_u1|addr~47_combout\);

-- Location: LCCOMB_X20_Y27_N28
\uart_tx_u1|addr[4]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr[4]~24_combout\ = (!\uart_tx_u1|Equal4~3_combout\ & (\Select_mode_u1|LED_select\(3) & (\uart_tx_u1|always0~3_combout\ & !\uart_tx_u1|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Equal4~3_combout\,
	datab => \Select_mode_u1|LED_select\(3),
	datac => \uart_tx_u1|always0~3_combout\,
	datad => \uart_tx_u1|Equal4~2_combout\,
	combout => \uart_tx_u1|addr[4]~24_combout\);

-- Location: LCCOMB_X20_Y23_N18
\uart_tx_u1|Add11~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add11~6_combout\ = (\uart_tx_u1|Send_addr[3]~6_combout\ & (\uart_tx_u1|Add11~5\ & VCC)) # (!\uart_tx_u1|Send_addr[3]~6_combout\ & (!\uart_tx_u1|Add11~5\))
-- \uart_tx_u1|Add11~7\ = CARRY((!\uart_tx_u1|Send_addr[3]~6_combout\ & !\uart_tx_u1|Add11~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add11~5\,
	combout => \uart_tx_u1|Add11~6_combout\,
	cout => \uart_tx_u1|Add11~7\);

-- Location: LCCOMB_X19_Y27_N4
\uart_tx_u1|Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add8~4_combout\ = (\uart_tx_u1|Send_addr[3]~6_combout\ & (\uart_tx_u1|Add8~3\ $ (GND))) # (!\uart_tx_u1|Send_addr[3]~6_combout\ & (!\uart_tx_u1|Add8~3\ & VCC))
-- \uart_tx_u1|Add8~5\ = CARRY((\uart_tx_u1|Send_addr[3]~6_combout\ & !\uart_tx_u1|Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add8~3\,
	combout => \uart_tx_u1|Add8~4_combout\,
	cout => \uart_tx_u1|Add8~5\);

-- Location: LCCOMB_X22_Y25_N18
\uart_tx_u1|Add9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add9~6_combout\ = (\uart_tx_u1|Send_addr[3]~6_combout\ & (\uart_tx_u1|Add9~5\ & VCC)) # (!\uart_tx_u1|Send_addr[3]~6_combout\ & (!\uart_tx_u1|Add9~5\))
-- \uart_tx_u1|Add9~7\ = CARRY((!\uart_tx_u1|Send_addr[3]~6_combout\ & !\uart_tx_u1|Add9~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add9~5\,
	combout => \uart_tx_u1|Add9~6_combout\,
	cout => \uart_tx_u1|Add9~7\);

-- Location: LCCOMB_X19_Y23_N30
\uart_tx_u1|addr~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~43_combout\ = (\Select_mode_u1|LED_select\(1) & (((\Select_mode_u1|LED_select\(0))))) # (!\Select_mode_u1|LED_select\(1) & ((\Select_mode_u1|LED_select\(0) & ((\uart_tx_u1|Add9~6_combout\))) # (!\Select_mode_u1|LED_select\(0) & 
-- (\uart_tx_u1|Add8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(1),
	datab => \uart_tx_u1|Add8~4_combout\,
	datac => \Select_mode_u1|LED_select\(0),
	datad => \uart_tx_u1|Add9~6_combout\,
	combout => \uart_tx_u1|addr~43_combout\);

-- Location: LCCOMB_X20_Y23_N2
\uart_tx_u1|Add10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add10~2_combout\ = (\uart_tx_u1|Send_addr[3]~6_combout\ & (\uart_tx_u1|Add10~1\ & VCC)) # (!\uart_tx_u1|Send_addr[3]~6_combout\ & (!\uart_tx_u1|Add10~1\))
-- \uart_tx_u1|Add10~3\ = CARRY((!\uart_tx_u1|Send_addr[3]~6_combout\ & !\uart_tx_u1|Add10~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add10~1\,
	combout => \uart_tx_u1|Add10~2_combout\,
	cout => \uart_tx_u1|Add10~3\);

-- Location: LCCOMB_X19_Y23_N22
\uart_tx_u1|addr~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~44_combout\ = (\Select_mode_u1|LED_select\(1) & ((\uart_tx_u1|addr~43_combout\ & (\uart_tx_u1|Add11~6_combout\)) # (!\uart_tx_u1|addr~43_combout\ & ((\uart_tx_u1|Add10~2_combout\))))) # (!\Select_mode_u1|LED_select\(1) & 
-- (((\uart_tx_u1|addr~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(1),
	datab => \uart_tx_u1|Add11~6_combout\,
	datac => \uart_tx_u1|addr~43_combout\,
	datad => \uart_tx_u1|Add10~2_combout\,
	combout => \uart_tx_u1|addr~44_combout\);

-- Location: LCCOMB_X19_Y23_N4
\uart_tx_u1|addr~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~45_combout\ = (\uart_tx_u1|addr[4]~31_combout\ & (\uart_tx_u1|addr[4]~24_combout\)) # (!\uart_tx_u1|addr[4]~31_combout\ & ((\uart_tx_u1|addr[4]~24_combout\ & (\uart_tx_u1|addr~44_combout\)) # (!\uart_tx_u1|addr[4]~24_combout\ & 
-- ((\uart_tx_u1|Add16~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr[4]~31_combout\,
	datab => \uart_tx_u1|addr[4]~24_combout\,
	datac => \uart_tx_u1|addr~44_combout\,
	datad => \uart_tx_u1|Add16~6_combout\,
	combout => \uart_tx_u1|addr~45_combout\);

-- Location: LCCOMB_X20_Y27_N18
\uart_tx_u1|Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add5~6_combout\ = (\uart_tx_u1|Send_addr[3]~6_combout\ & (\uart_tx_u1|Add5~5\ & VCC)) # (!\uart_tx_u1|Send_addr[3]~6_combout\ & (!\uart_tx_u1|Add5~5\))
-- \uart_tx_u1|Add5~7\ = CARRY((!\uart_tx_u1|Send_addr[3]~6_combout\ & !\uart_tx_u1|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add5~5\,
	combout => \uart_tx_u1|Add5~6_combout\,
	cout => \uart_tx_u1|Add5~7\);

-- Location: LCCOMB_X19_Y24_N26
\uart_tx_u1|addr[4]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr[4]~28_combout\ = (\Select_mode_u1|LED_select\(2) & ((\Select_mode_u1|LED_select\(0)) # (\Select_mode_u1|LED_select\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Select_mode_u1|LED_select\(0),
	datac => \Select_mode_u1|LED_select\(2),
	datad => \Select_mode_u1|LED_select\(1),
	combout => \uart_tx_u1|addr[4]~28_combout\);

-- Location: LCCOMB_X21_Y24_N20
\uart_tx_u1|Add7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add7~6_combout\ = (\uart_tx_u1|Send_addr[3]~6_combout\ & (!\uart_tx_u1|Add7~5\)) # (!\uart_tx_u1|Send_addr[3]~6_combout\ & ((\uart_tx_u1|Add7~5\) # (GND)))
-- \uart_tx_u1|Add7~7\ = CARRY((!\uart_tx_u1|Add7~5\) # (!\uart_tx_u1|Send_addr[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add7~5\,
	combout => \uart_tx_u1|Add7~6_combout\,
	cout => \uart_tx_u1|Add7~7\);

-- Location: LCCOMB_X19_Y24_N0
\uart_tx_u1|addr[4]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr[4]~27_combout\ = (\Select_mode_u1|LED_select\(1)) # (!\Select_mode_u1|LED_select\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Select_mode_u1|LED_select\(2),
	datad => \Select_mode_u1|LED_select\(1),
	combout => \uart_tx_u1|addr[4]~27_combout\);

-- Location: LCCOMB_X20_Y25_N4
\uart_tx_u1|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add4~4_combout\ = (\uart_tx_u1|Send_addr[3]~6_combout\ & ((GND) # (!\uart_tx_u1|Add4~3\))) # (!\uart_tx_u1|Send_addr[3]~6_combout\ & (\uart_tx_u1|Add4~3\ $ (GND)))
-- \uart_tx_u1|Add4~5\ = CARRY((\uart_tx_u1|Send_addr[3]~6_combout\) # (!\uart_tx_u1|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add4~3\,
	combout => \uart_tx_u1|Add4~4_combout\,
	cout => \uart_tx_u1|Add4~5\);

-- Location: LCCOMB_X21_Y23_N16
\uart_tx_u1|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add2~2_combout\ = (\uart_tx_u1|Send_addr[3]~6_combout\ & (!\uart_tx_u1|Add2~1\)) # (!\uart_tx_u1|Send_addr[3]~6_combout\ & ((\uart_tx_u1|Add2~1\) # (GND)))
-- \uart_tx_u1|Add2~3\ = CARRY((!\uart_tx_u1|Add2~1\) # (!\uart_tx_u1|Send_addr[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add2~1\,
	combout => \uart_tx_u1|Add2~2_combout\,
	cout => \uart_tx_u1|Add2~3\);

-- Location: LCCOMB_X19_Y26_N16
\uart_tx_u1|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add3~6_combout\ = (\uart_tx_u1|Send_addr[3]~6_combout\ & (!\uart_tx_u1|Add3~5\)) # (!\uart_tx_u1|Send_addr[3]~6_combout\ & ((\uart_tx_u1|Add3~5\) # (GND)))
-- \uart_tx_u1|Add3~7\ = CARRY((!\uart_tx_u1|Add3~5\) # (!\uart_tx_u1|Send_addr[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add3~5\,
	combout => \uart_tx_u1|Add3~6_combout\,
	cout => \uart_tx_u1|Add3~7\);

-- Location: LCCOMB_X21_Y26_N20
\uart_tx_u1|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add1~6_combout\ = (\uart_tx_u1|Send_addr[3]~6_combout\ & (!\uart_tx_u1|Add1~5\)) # (!\uart_tx_u1|Send_addr[3]~6_combout\ & ((\uart_tx_u1|Add1~5\) # (GND)))
-- \uart_tx_u1|Add1~7\ = CARRY((!\uart_tx_u1|Add1~5\) # (!\uart_tx_u1|Send_addr[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add1~5\,
	combout => \uart_tx_u1|Add1~6_combout\,
	cout => \uart_tx_u1|Add1~7\);

-- Location: LCCOMB_X19_Y23_N12
\uart_tx_u1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add0~4_combout\ = (\uart_tx_u1|Send_addr[3]~6_combout\ & ((GND) # (!\uart_tx_u1|Add0~3\))) # (!\uart_tx_u1|Send_addr[3]~6_combout\ & (\uart_tx_u1|Add0~3\ $ (GND)))
-- \uart_tx_u1|Add0~5\ = CARRY((\uart_tx_u1|Send_addr[3]~6_combout\) # (!\uart_tx_u1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[3]~6_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add0~3\,
	combout => \uart_tx_u1|Add0~4_combout\,
	cout => \uart_tx_u1|Add0~5\);

-- Location: LCCOMB_X19_Y23_N24
\uart_tx_u1|addr~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~39_combout\ = (\Select_mode_u1|LED_select\(0) & ((\Select_mode_u1|LED_select\(1)) # ((\uart_tx_u1|Add1~6_combout\)))) # (!\Select_mode_u1|LED_select\(0) & (!\Select_mode_u1|LED_select\(1) & ((\uart_tx_u1|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(0),
	datab => \Select_mode_u1|LED_select\(1),
	datac => \uart_tx_u1|Add1~6_combout\,
	datad => \uart_tx_u1|Add0~4_combout\,
	combout => \uart_tx_u1|addr~39_combout\);

-- Location: LCCOMB_X19_Y23_N2
\uart_tx_u1|addr~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~40_combout\ = (\Select_mode_u1|LED_select\(1) & ((\uart_tx_u1|addr~39_combout\ & ((\uart_tx_u1|Add3~6_combout\))) # (!\uart_tx_u1|addr~39_combout\ & (\uart_tx_u1|Add2~2_combout\)))) # (!\Select_mode_u1|LED_select\(1) & 
-- (((\uart_tx_u1|addr~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(1),
	datab => \uart_tx_u1|Add2~2_combout\,
	datac => \uart_tx_u1|Add3~6_combout\,
	datad => \uart_tx_u1|addr~39_combout\,
	combout => \uart_tx_u1|addr~40_combout\);

-- Location: LCCOMB_X19_Y23_N6
\uart_tx_u1|addr~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~41_combout\ = (\uart_tx_u1|addr[4]~28_combout\ & (\uart_tx_u1|addr[4]~27_combout\)) # (!\uart_tx_u1|addr[4]~28_combout\ & ((\uart_tx_u1|addr[4]~27_combout\ & ((\uart_tx_u1|addr~40_combout\))) # (!\uart_tx_u1|addr[4]~27_combout\ & 
-- (\uart_tx_u1|Add4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr[4]~28_combout\,
	datab => \uart_tx_u1|addr[4]~27_combout\,
	datac => \uart_tx_u1|Add4~4_combout\,
	datad => \uart_tx_u1|addr~40_combout\,
	combout => \uart_tx_u1|addr~41_combout\);

-- Location: LCCOMB_X19_Y23_N28
\uart_tx_u1|addr~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~42_combout\ = (\uart_tx_u1|addr[4]~28_combout\ & ((\uart_tx_u1|addr~41_combout\ & ((\uart_tx_u1|Add7~6_combout\))) # (!\uart_tx_u1|addr~41_combout\ & (\uart_tx_u1|Add5~6_combout\)))) # (!\uart_tx_u1|addr[4]~28_combout\ & 
-- (((\uart_tx_u1|addr~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Add5~6_combout\,
	datab => \uart_tx_u1|addr[4]~28_combout\,
	datac => \uart_tx_u1|Add7~6_combout\,
	datad => \uart_tx_u1|addr~41_combout\,
	combout => \uart_tx_u1|addr~42_combout\);

-- Location: LCCOMB_X19_Y23_N26
\uart_tx_u1|addr~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~48_combout\ = (\uart_tx_u1|addr[4]~31_combout\ & ((\uart_tx_u1|addr~45_combout\ & (\uart_tx_u1|addr~47_combout\)) # (!\uart_tx_u1|addr~45_combout\ & ((\uart_tx_u1|addr~42_combout\))))) # (!\uart_tx_u1|addr[4]~31_combout\ & 
-- (((\uart_tx_u1|addr~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr[4]~31_combout\,
	datab => \uart_tx_u1|addr~47_combout\,
	datac => \uart_tx_u1|addr~45_combout\,
	datad => \uart_tx_u1|addr~42_combout\,
	combout => \uart_tx_u1|addr~48_combout\);

-- Location: LCCOMB_X19_Y24_N22
\uart_tx_u1|addr[4]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr[4]~36_combout\ = (!\Select_mode_u1|LED_select\(0) & (\Select_mode_u1|LED_select\(1) & (\Select_mode_u1|LED_select\(2) & !\Select_mode_u1|LED_select\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(0),
	datab => \Select_mode_u1|LED_select\(1),
	datac => \Select_mode_u1|LED_select\(2),
	datad => \Select_mode_u1|LED_select\(3),
	combout => \uart_tx_u1|addr[4]~36_combout\);

-- Location: LCCOMB_X19_Y24_N20
\uart_tx_u1|addr[4]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr[4]~37_combout\ = (!\uart_tx_u1|Equal4~4_combout\ & ((\uart_tx_u1|always0~3_combout\ & ((\uart_tx_u1|addr[4]~36_combout\))) # (!\uart_tx_u1|always0~3_combout\ & (\uart_tx_u1|always0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|always0~2_combout\,
	datab => \uart_tx_u1|always0~3_combout\,
	datac => \uart_tx_u1|addr[4]~36_combout\,
	datad => \uart_tx_u1|Equal4~4_combout\,
	combout => \uart_tx_u1|addr[4]~37_combout\);

-- Location: LCCOMB_X19_Y23_N0
\uart_tx_u1|addr~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~49_combout\ = (\uart_tx_u1|addr[4]~37_combout\ & (\uart_tx_u1|Send_addr[3]~6_combout\)) # (!\uart_tx_u1|addr[4]~37_combout\ & ((\uart_tx_u1|addr~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[3]~6_combout\,
	datac => \uart_tx_u1|addr~48_combout\,
	datad => \uart_tx_u1|addr[4]~37_combout\,
	combout => \uart_tx_u1|addr~49_combout\);

-- Location: LCCOMB_X20_Y24_N2
\uart_tx_u1|addr[3]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr[3]~21_combout\ = (\uart_tx_u1|addr[0]~8_combout\ & (((\uart_tx_u1|Equal4~4_combout\) # (!\Select_mode_u1|LED_select\(4))) # (!\uart_tx_u1|always0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr[0]~8_combout\,
	datab => \uart_tx_u1|always0~3_combout\,
	datac => \Select_mode_u1|LED_select\(4),
	datad => \uart_tx_u1|Equal4~4_combout\,
	combout => \uart_tx_u1|addr[3]~21_combout\);

-- Location: FF_X19_Y23_N1
\uart_tx_u1|addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|addr~49_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \uart_tx_u1|addr[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|addr\(3));

-- Location: LCCOMB_X18_Y26_N12
\uart_tx_u1|Add16~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add16~8_combout\ = (\uart_tx_u1|addr\(4) & (\uart_tx_u1|Add16~7\ $ (GND))) # (!\uart_tx_u1|addr\(4) & (!\uart_tx_u1|Add16~7\ & VCC))
-- \uart_tx_u1|Add16~9\ = CARRY((\uart_tx_u1|addr\(4) & !\uart_tx_u1|Add16~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|addr\(4),
	datad => VCC,
	cin => \uart_tx_u1|Add16~7\,
	combout => \uart_tx_u1|Add16~8_combout\,
	cout => \uart_tx_u1|Add16~9\);

-- Location: FF_X21_Y27_N19
\uart_tx_u1|Send_addr_w[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|Send_addr[4]~5_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \uart_tx_u1|Send_addr_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|Send_addr_w\(4));

-- Location: LCCOMB_X21_Y27_N18
\uart_tx_u1|Send_addr[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Send_addr[4]~5_combout\ = (\uart_tx_u1|always1~0_combout\ & (\uart_tx_u1|Add16~8_combout\)) # (!\uart_tx_u1|always1~0_combout\ & ((\uart_tx_u1|Send_addr_w\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Add16~8_combout\,
	datac => \uart_tx_u1|Send_addr_w\(4),
	datad => \uart_tx_u1|always1~0_combout\,
	combout => \uart_tx_u1|Send_addr[4]~5_combout\);

-- Location: LCCOMB_X22_Y25_N20
\uart_tx_u1|Add9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add9~8_combout\ = (\uart_tx_u1|Send_addr[4]~5_combout\ & (\uart_tx_u1|Add9~7\ $ (GND))) # (!\uart_tx_u1|Send_addr[4]~5_combout\ & (!\uart_tx_u1|Add9~7\ & VCC))
-- \uart_tx_u1|Add9~9\ = CARRY((\uart_tx_u1|Send_addr[4]~5_combout\ & !\uart_tx_u1|Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add9~7\,
	combout => \uart_tx_u1|Add9~8_combout\,
	cout => \uart_tx_u1|Add9~9\);

-- Location: LCCOMB_X20_Y23_N20
\uart_tx_u1|Add11~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add11~8_combout\ = (\uart_tx_u1|Send_addr[4]~5_combout\ & (\uart_tx_u1|Add11~7\ $ (GND))) # (!\uart_tx_u1|Send_addr[4]~5_combout\ & (!\uart_tx_u1|Add11~7\ & VCC))
-- \uart_tx_u1|Add11~9\ = CARRY((\uart_tx_u1|Send_addr[4]~5_combout\ & !\uart_tx_u1|Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add11~7\,
	combout => \uart_tx_u1|Add11~8_combout\,
	cout => \uart_tx_u1|Add11~9\);

-- Location: LCCOMB_X20_Y23_N4
\uart_tx_u1|Add10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add10~4_combout\ = (\uart_tx_u1|Send_addr[4]~5_combout\ & (\uart_tx_u1|Add10~3\ $ (GND))) # (!\uart_tx_u1|Send_addr[4]~5_combout\ & (!\uart_tx_u1|Add10~3\ & VCC))
-- \uart_tx_u1|Add10~5\ = CARRY((\uart_tx_u1|Send_addr[4]~5_combout\ & !\uart_tx_u1|Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add10~3\,
	combout => \uart_tx_u1|Add10~4_combout\,
	cout => \uart_tx_u1|Add10~5\);

-- Location: LCCOMB_X19_Y27_N6
\uart_tx_u1|Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add8~6_combout\ = (\uart_tx_u1|Send_addr[4]~5_combout\ & (!\uart_tx_u1|Add8~5\)) # (!\uart_tx_u1|Send_addr[4]~5_combout\ & ((\uart_tx_u1|Add8~5\) # (GND)))
-- \uart_tx_u1|Add8~7\ = CARRY((!\uart_tx_u1|Add8~5\) # (!\uart_tx_u1|Send_addr[4]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add8~5\,
	combout => \uart_tx_u1|Add8~6_combout\,
	cout => \uart_tx_u1|Add8~7\);

-- Location: LCCOMB_X19_Y27_N16
\uart_tx_u1|addr~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~22_combout\ = (\Select_mode_u1|LED_select\(1) & ((\Select_mode_u1|LED_select\(0)) # ((\uart_tx_u1|Add10~4_combout\)))) # (!\Select_mode_u1|LED_select\(1) & (!\Select_mode_u1|LED_select\(0) & ((\uart_tx_u1|Add8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(1),
	datab => \Select_mode_u1|LED_select\(0),
	datac => \uart_tx_u1|Add10~4_combout\,
	datad => \uart_tx_u1|Add8~6_combout\,
	combout => \uart_tx_u1|addr~22_combout\);

-- Location: LCCOMB_X19_Y27_N26
\uart_tx_u1|addr~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~23_combout\ = (\Select_mode_u1|LED_select\(0) & ((\uart_tx_u1|addr~22_combout\ & ((\uart_tx_u1|Add11~8_combout\))) # (!\uart_tx_u1|addr~22_combout\ & (\uart_tx_u1|Add9~8_combout\)))) # (!\Select_mode_u1|LED_select\(0) & 
-- (((\uart_tx_u1|addr~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Add9~8_combout\,
	datab => \Select_mode_u1|LED_select\(0),
	datac => \uart_tx_u1|Add11~8_combout\,
	datad => \uart_tx_u1|addr~22_combout\,
	combout => \uart_tx_u1|addr~23_combout\);

-- Location: LCCOMB_X19_Y25_N22
\uart_tx_u1|Add14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add14~2_combout\ = (\uart_tx_u1|Send_addr[4]~5_combout\ & (\uart_tx_u1|Add14~1\ & VCC)) # (!\uart_tx_u1|Send_addr[4]~5_combout\ & (!\uart_tx_u1|Add14~1\))
-- \uart_tx_u1|Add14~3\ = CARRY((!\uart_tx_u1|Send_addr[4]~5_combout\ & !\uart_tx_u1|Add14~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add14~1\,
	combout => \uart_tx_u1|Add14~2_combout\,
	cout => \uart_tx_u1|Add14~3\);

-- Location: LCCOMB_X19_Y25_N10
\uart_tx_u1|Add12~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add12~6_combout\ = (\uart_tx_u1|Send_addr[4]~5_combout\ & (\uart_tx_u1|Add12~5\ & VCC)) # (!\uart_tx_u1|Send_addr[4]~5_combout\ & (!\uart_tx_u1|Add12~5\))
-- \uart_tx_u1|Add12~7\ = CARRY((!\uart_tx_u1|Send_addr[4]~5_combout\ & !\uart_tx_u1|Add12~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add12~5\,
	combout => \uart_tx_u1|Add12~6_combout\,
	cout => \uart_tx_u1|Add12~7\);

-- Location: LCCOMB_X23_Y25_N16
\uart_tx_u1|Add13~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add13~8_combout\ = (\uart_tx_u1|Send_addr[4]~5_combout\ & ((GND) # (!\uart_tx_u1|Add13~7\))) # (!\uart_tx_u1|Send_addr[4]~5_combout\ & (\uart_tx_u1|Add13~7\ $ (GND)))
-- \uart_tx_u1|Add13~9\ = CARRY((\uart_tx_u1|Send_addr[4]~5_combout\) # (!\uart_tx_u1|Add13~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add13~7\,
	combout => \uart_tx_u1|Add13~8_combout\,
	cout => \uart_tx_u1|Add13~9\);

-- Location: LCCOMB_X19_Y27_N14
\uart_tx_u1|addr~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~33_combout\ = (\Select_mode_u1|LED_select\(0) & (((\Select_mode_u1|LED_select\(1)) # (\uart_tx_u1|Add13~8_combout\)))) # (!\Select_mode_u1|LED_select\(0) & (\uart_tx_u1|Add12~6_combout\ & (!\Select_mode_u1|LED_select\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Add12~6_combout\,
	datab => \Select_mode_u1|LED_select\(0),
	datac => \Select_mode_u1|LED_select\(1),
	datad => \uart_tx_u1|Add13~8_combout\,
	combout => \uart_tx_u1|addr~33_combout\);

-- Location: LCCOMB_X22_Y24_N14
\uart_tx_u1|Add15~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add15~8_combout\ = (\uart_tx_u1|Send_addr[4]~5_combout\ & ((GND) # (!\uart_tx_u1|Add15~7\))) # (!\uart_tx_u1|Send_addr[4]~5_combout\ & (\uart_tx_u1|Add15~7\ $ (GND)))
-- \uart_tx_u1|Add15~9\ = CARRY((\uart_tx_u1|Send_addr[4]~5_combout\) # (!\uart_tx_u1|Add15~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add15~7\,
	combout => \uart_tx_u1|Add15~8_combout\,
	cout => \uart_tx_u1|Add15~9\);

-- Location: LCCOMB_X19_Y27_N28
\uart_tx_u1|addr~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~34_combout\ = (\Select_mode_u1|LED_select\(1) & ((\uart_tx_u1|addr~33_combout\ & ((\uart_tx_u1|Add15~8_combout\))) # (!\uart_tx_u1|addr~33_combout\ & (\uart_tx_u1|Add14~2_combout\)))) # (!\Select_mode_u1|LED_select\(1) & 
-- (((\uart_tx_u1|addr~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(1),
	datab => \uart_tx_u1|Add14~2_combout\,
	datac => \uart_tx_u1|addr~33_combout\,
	datad => \uart_tx_u1|Add15~8_combout\,
	combout => \uart_tx_u1|addr~34_combout\);

-- Location: LCCOMB_X20_Y27_N20
\uart_tx_u1|Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add5~8_combout\ = (\uart_tx_u1|Send_addr[4]~5_combout\ & ((GND) # (!\uart_tx_u1|Add5~7\))) # (!\uart_tx_u1|Send_addr[4]~5_combout\ & (\uart_tx_u1|Add5~7\ $ (GND)))
-- \uart_tx_u1|Add5~9\ = CARRY((\uart_tx_u1|Send_addr[4]~5_combout\) # (!\uart_tx_u1|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add5~7\,
	combout => \uart_tx_u1|Add5~8_combout\,
	cout => \uart_tx_u1|Add5~9\);

-- Location: LCCOMB_X20_Y25_N6
\uart_tx_u1|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add4~6_combout\ = (\uart_tx_u1|Send_addr[4]~5_combout\ & (\uart_tx_u1|Add4~5\ & VCC)) # (!\uart_tx_u1|Send_addr[4]~5_combout\ & (!\uart_tx_u1|Add4~5\))
-- \uart_tx_u1|Add4~7\ = CARRY((!\uart_tx_u1|Send_addr[4]~5_combout\ & !\uart_tx_u1|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add4~5\,
	combout => \uart_tx_u1|Add4~6_combout\,
	cout => \uart_tx_u1|Add4~7\);

-- Location: LCCOMB_X19_Y27_N24
\uart_tx_u1|addr~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~29_combout\ = (\uart_tx_u1|addr[4]~27_combout\ & (\uart_tx_u1|addr[4]~28_combout\)) # (!\uart_tx_u1|addr[4]~27_combout\ & ((\uart_tx_u1|addr[4]~28_combout\ & (\uart_tx_u1|Add5~8_combout\)) # (!\uart_tx_u1|addr[4]~28_combout\ & 
-- ((\uart_tx_u1|Add4~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr[4]~27_combout\,
	datab => \uart_tx_u1|addr[4]~28_combout\,
	datac => \uart_tx_u1|Add5~8_combout\,
	datad => \uart_tx_u1|Add4~6_combout\,
	combout => \uart_tx_u1|addr~29_combout\);

-- Location: LCCOMB_X21_Y24_N22
\uart_tx_u1|Add7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add7~8_combout\ = (\uart_tx_u1|Send_addr[4]~5_combout\ & (\uart_tx_u1|Add7~7\ $ (GND))) # (!\uart_tx_u1|Send_addr[4]~5_combout\ & (!\uart_tx_u1|Add7~7\ & VCC))
-- \uart_tx_u1|Add7~9\ = CARRY((\uart_tx_u1|Send_addr[4]~5_combout\ & !\uart_tx_u1|Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add7~7\,
	combout => \uart_tx_u1|Add7~8_combout\,
	cout => \uart_tx_u1|Add7~9\);

-- Location: LCCOMB_X19_Y26_N18
\uart_tx_u1|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add3~8_combout\ = (\uart_tx_u1|Send_addr[4]~5_combout\ & ((GND) # (!\uart_tx_u1|Add3~7\))) # (!\uart_tx_u1|Send_addr[4]~5_combout\ & (\uart_tx_u1|Add3~7\ $ (GND)))
-- \uart_tx_u1|Add3~9\ = CARRY((\uart_tx_u1|Send_addr[4]~5_combout\) # (!\uart_tx_u1|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add3~7\,
	combout => \uart_tx_u1|Add3~8_combout\,
	cout => \uart_tx_u1|Add3~9\);

-- Location: LCCOMB_X21_Y23_N18
\uart_tx_u1|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add2~4_combout\ = (\uart_tx_u1|Send_addr[4]~5_combout\ & ((GND) # (!\uart_tx_u1|Add2~3\))) # (!\uart_tx_u1|Send_addr[4]~5_combout\ & (\uart_tx_u1|Add2~3\ $ (GND)))
-- \uart_tx_u1|Add2~5\ = CARRY((\uart_tx_u1|Send_addr[4]~5_combout\) # (!\uart_tx_u1|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add2~3\,
	combout => \uart_tx_u1|Add2~4_combout\,
	cout => \uart_tx_u1|Add2~5\);

-- Location: LCCOMB_X21_Y26_N22
\uart_tx_u1|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add1~8_combout\ = (\uart_tx_u1|Send_addr[4]~5_combout\ & ((GND) # (!\uart_tx_u1|Add1~7\))) # (!\uart_tx_u1|Send_addr[4]~5_combout\ & (\uart_tx_u1|Add1~7\ $ (GND)))
-- \uart_tx_u1|Add1~9\ = CARRY((\uart_tx_u1|Send_addr[4]~5_combout\) # (!\uart_tx_u1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add1~7\,
	combout => \uart_tx_u1|Add1~8_combout\,
	cout => \uart_tx_u1|Add1~9\);

-- Location: LCCOMB_X19_Y23_N14
\uart_tx_u1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add0~6_combout\ = (\uart_tx_u1|Send_addr[4]~5_combout\ & (!\uart_tx_u1|Add0~5\)) # (!\uart_tx_u1|Send_addr[4]~5_combout\ & ((\uart_tx_u1|Add0~5\) # (GND)))
-- \uart_tx_u1|Add0~7\ = CARRY((!\uart_tx_u1|Add0~5\) # (!\uart_tx_u1|Send_addr[4]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[4]~5_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add0~5\,
	combout => \uart_tx_u1|Add0~6_combout\,
	cout => \uart_tx_u1|Add0~7\);

-- Location: LCCOMB_X19_Y26_N28
\uart_tx_u1|addr~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~25_combout\ = (\Select_mode_u1|LED_select\(0) & ((\Select_mode_u1|LED_select\(1)) # ((\uart_tx_u1|Add1~8_combout\)))) # (!\Select_mode_u1|LED_select\(0) & (!\Select_mode_u1|LED_select\(1) & ((\uart_tx_u1|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(0),
	datab => \Select_mode_u1|LED_select\(1),
	datac => \uart_tx_u1|Add1~8_combout\,
	datad => \uart_tx_u1|Add0~6_combout\,
	combout => \uart_tx_u1|addr~25_combout\);

-- Location: LCCOMB_X19_Y26_N6
\uart_tx_u1|addr~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~26_combout\ = (\Select_mode_u1|LED_select\(1) & ((\uart_tx_u1|addr~25_combout\ & (\uart_tx_u1|Add3~8_combout\)) # (!\uart_tx_u1|addr~25_combout\ & ((\uart_tx_u1|Add2~4_combout\))))) # (!\Select_mode_u1|LED_select\(1) & 
-- (((\uart_tx_u1|addr~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(1),
	datab => \uart_tx_u1|Add3~8_combout\,
	datac => \uart_tx_u1|Add2~4_combout\,
	datad => \uart_tx_u1|addr~25_combout\,
	combout => \uart_tx_u1|addr~26_combout\);

-- Location: LCCOMB_X19_Y27_N18
\uart_tx_u1|addr~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~30_combout\ = (\uart_tx_u1|addr[4]~27_combout\ & ((\uart_tx_u1|addr~29_combout\ & (\uart_tx_u1|Add7~8_combout\)) # (!\uart_tx_u1|addr~29_combout\ & ((\uart_tx_u1|addr~26_combout\))))) # (!\uart_tx_u1|addr[4]~27_combout\ & 
-- (\uart_tx_u1|addr~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr[4]~27_combout\,
	datab => \uart_tx_u1|addr~29_combout\,
	datac => \uart_tx_u1|Add7~8_combout\,
	datad => \uart_tx_u1|addr~26_combout\,
	combout => \uart_tx_u1|addr~30_combout\);

-- Location: LCCOMB_X19_Y27_N20
\uart_tx_u1|addr~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~32_combout\ = (\uart_tx_u1|addr[4]~24_combout\ & (((\uart_tx_u1|addr[4]~31_combout\)))) # (!\uart_tx_u1|addr[4]~24_combout\ & ((\uart_tx_u1|addr[4]~31_combout\ & ((\uart_tx_u1|addr~30_combout\))) # (!\uart_tx_u1|addr[4]~31_combout\ & 
-- (\uart_tx_u1|Add16~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr[4]~24_combout\,
	datab => \uart_tx_u1|Add16~8_combout\,
	datac => \uart_tx_u1|addr[4]~31_combout\,
	datad => \uart_tx_u1|addr~30_combout\,
	combout => \uart_tx_u1|addr~32_combout\);

-- Location: LCCOMB_X19_Y27_N22
\uart_tx_u1|addr~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~35_combout\ = (\uart_tx_u1|addr[4]~24_combout\ & ((\uart_tx_u1|addr~32_combout\ & ((\uart_tx_u1|addr~34_combout\))) # (!\uart_tx_u1|addr~32_combout\ & (\uart_tx_u1|addr~23_combout\)))) # (!\uart_tx_u1|addr[4]~24_combout\ & 
-- (((\uart_tx_u1|addr~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr~23_combout\,
	datab => \uart_tx_u1|addr~34_combout\,
	datac => \uart_tx_u1|addr[4]~24_combout\,
	datad => \uart_tx_u1|addr~32_combout\,
	combout => \uart_tx_u1|addr~35_combout\);

-- Location: LCCOMB_X19_Y27_N30
\uart_tx_u1|addr~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~38_combout\ = (\uart_tx_u1|addr[4]~37_combout\ & (\uart_tx_u1|Send_addr[4]~5_combout\)) # (!\uart_tx_u1|addr[4]~37_combout\ & ((\uart_tx_u1|addr~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[4]~5_combout\,
	datac => \uart_tx_u1|addr~35_combout\,
	datad => \uart_tx_u1|addr[4]~37_combout\,
	combout => \uart_tx_u1|addr~38_combout\);

-- Location: FF_X19_Y27_N31
\uart_tx_u1|addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|addr~38_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \uart_tx_u1|addr[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|addr\(4));

-- Location: LCCOMB_X18_Y26_N14
\uart_tx_u1|Add16~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add16~10_combout\ = (\uart_tx_u1|addr\(5) & (!\uart_tx_u1|Add16~9\)) # (!\uart_tx_u1|addr\(5) & ((\uart_tx_u1|Add16~9\) # (GND)))
-- \uart_tx_u1|Add16~11\ = CARRY((!\uart_tx_u1|Add16~9\) # (!\uart_tx_u1|addr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(5),
	datad => VCC,
	cin => \uart_tx_u1|Add16~9\,
	combout => \uart_tx_u1|Add16~10_combout\,
	cout => \uart_tx_u1|Add16~11\);

-- Location: LCCOMB_X21_Y25_N0
\uart_tx_u1|Send_addr[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Send_addr[5]~4_combout\ = (\uart_tx_u1|always1~0_combout\ & (\uart_tx_u1|Add16~10_combout\)) # (!\uart_tx_u1|always1~0_combout\ & ((\uart_tx_u1|Send_addr_w\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Add16~10_combout\,
	datac => \uart_tx_u1|Send_addr_w\(5),
	datad => \uart_tx_u1|always1~0_combout\,
	combout => \uart_tx_u1|Send_addr[5]~4_combout\);

-- Location: FF_X21_Y25_N1
\uart_tx_u1|Send_addr_w[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|Send_addr[5]~4_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \uart_tx_u1|Send_addr_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|Send_addr_w\(5));

-- Location: LCCOMB_X21_Y25_N24
\uart_tx_u1|addr[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr[5]~5_combout\ = (\uart_tx_u1|addr~6_combout\ & ((\uart_tx_u1|Send_addr_w\(5)))) # (!\uart_tx_u1|addr~6_combout\ & (\uart_tx_u1|Add16~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Add16~10_combout\,
	datab => \uart_tx_u1|Send_addr_w\(5),
	datad => \uart_tx_u1|addr~6_combout\,
	combout => \uart_tx_u1|addr[5]~5_combout\);

-- Location: LCCOMB_X20_Y27_N22
\uart_tx_u1|Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add5~10_combout\ = (\uart_tx_u1|Send_addr[5]~4_combout\ & (!\uart_tx_u1|Add5~9\)) # (!\uart_tx_u1|Send_addr[5]~4_combout\ & ((\uart_tx_u1|Add5~9\) # (GND)))
-- \uart_tx_u1|Add5~11\ = CARRY((!\uart_tx_u1|Add5~9\) # (!\uart_tx_u1|Send_addr[5]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add5~9\,
	combout => \uart_tx_u1|Add5~10_combout\,
	cout => \uart_tx_u1|Add5~11\);

-- Location: LCCOMB_X22_Y25_N22
\uart_tx_u1|Add9~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add9~10_combout\ = (\uart_tx_u1|Send_addr[5]~4_combout\ & (\uart_tx_u1|Add9~9\ & VCC)) # (!\uart_tx_u1|Send_addr[5]~4_combout\ & (!\uart_tx_u1|Add9~9\))
-- \uart_tx_u1|Add9~11\ = CARRY((!\uart_tx_u1|Send_addr[5]~4_combout\ & !\uart_tx_u1|Add9~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add9~9\,
	combout => \uart_tx_u1|Add9~10_combout\,
	cout => \uart_tx_u1|Add9~11\);

-- Location: LCCOMB_X21_Y26_N24
\uart_tx_u1|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add1~10_combout\ = (\uart_tx_u1|Send_addr[5]~4_combout\ & (!\uart_tx_u1|Add1~9\)) # (!\uart_tx_u1|Send_addr[5]~4_combout\ & ((\uart_tx_u1|Add1~9\) # (GND)))
-- \uart_tx_u1|Add1~11\ = CARRY((!\uart_tx_u1|Add1~9\) # (!\uart_tx_u1|Send_addr[5]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add1~9\,
	combout => \uart_tx_u1|Add1~10_combout\,
	cout => \uart_tx_u1|Add1~11\);

-- Location: LCCOMB_X22_Y25_N4
\uart_tx_u1|addr~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~11_combout\ = (\Select_mode_u1|LED_select\(3) & ((\uart_tx_u1|Add9~10_combout\) # ((\Select_mode_u1|LED_select\(2))))) # (!\Select_mode_u1|LED_select\(3) & (((\uart_tx_u1|Add1~10_combout\ & !\Select_mode_u1|LED_select\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Add9~10_combout\,
	datab => \Select_mode_u1|LED_select\(3),
	datac => \uart_tx_u1|Add1~10_combout\,
	datad => \Select_mode_u1|LED_select\(2),
	combout => \uart_tx_u1|addr~11_combout\);

-- Location: LCCOMB_X23_Y25_N18
\uart_tx_u1|Add13~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add13~10_combout\ = (\uart_tx_u1|Send_addr[5]~4_combout\ & (\uart_tx_u1|Add13~9\ & VCC)) # (!\uart_tx_u1|Send_addr[5]~4_combout\ & (!\uart_tx_u1|Add13~9\))
-- \uart_tx_u1|Add13~11\ = CARRY((!\uart_tx_u1|Send_addr[5]~4_combout\ & !\uart_tx_u1|Add13~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add13~9\,
	combout => \uart_tx_u1|Add13~10_combout\,
	cout => \uart_tx_u1|Add13~11\);

-- Location: LCCOMB_X22_Y25_N6
\uart_tx_u1|addr~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~12_combout\ = (\Select_mode_u1|LED_select\(2) & ((\uart_tx_u1|addr~11_combout\ & ((\uart_tx_u1|Add13~10_combout\))) # (!\uart_tx_u1|addr~11_combout\ & (\uart_tx_u1|Add5~10_combout\)))) # (!\Select_mode_u1|LED_select\(2) & 
-- (((\uart_tx_u1|addr~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Add5~10_combout\,
	datab => \Select_mode_u1|LED_select\(2),
	datac => \uart_tx_u1|addr~11_combout\,
	datad => \uart_tx_u1|Add13~10_combout\,
	combout => \uart_tx_u1|addr~12_combout\);

-- Location: LCCOMB_X20_Y23_N6
\uart_tx_u1|Add10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add10~6_combout\ = (\uart_tx_u1|Send_addr[5]~4_combout\ & (\uart_tx_u1|Add10~5\ & VCC)) # (!\uart_tx_u1|Send_addr[5]~4_combout\ & (!\uart_tx_u1|Add10~5\))
-- \uart_tx_u1|Add10~7\ = CARRY((!\uart_tx_u1|Send_addr[5]~4_combout\ & !\uart_tx_u1|Add10~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add10~5\,
	combout => \uart_tx_u1|Add10~6_combout\,
	cout => \uart_tx_u1|Add10~7\);

-- Location: LCCOMB_X21_Y23_N20
\uart_tx_u1|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add2~6_combout\ = (\uart_tx_u1|Send_addr[5]~4_combout\ & (!\uart_tx_u1|Add2~5\)) # (!\uart_tx_u1|Send_addr[5]~4_combout\ & ((\uart_tx_u1|Add2~5\) # (GND)))
-- \uart_tx_u1|Add2~7\ = CARRY((!\uart_tx_u1|Add2~5\) # (!\uart_tx_u1|Send_addr[5]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add2~5\,
	combout => \uart_tx_u1|Add2~6_combout\,
	cout => \uart_tx_u1|Add2~7\);

-- Location: LCCOMB_X21_Y23_N28
\uart_tx_u1|addr~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~13_combout\ = (\Select_mode_u1|LED_select\(3) & ((\Select_mode_u1|LED_select\(2)) # ((\uart_tx_u1|Add10~6_combout\)))) # (!\Select_mode_u1|LED_select\(3) & (!\Select_mode_u1|LED_select\(2) & ((\uart_tx_u1|Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(3),
	datab => \Select_mode_u1|LED_select\(2),
	datac => \uart_tx_u1|Add10~6_combout\,
	datad => \uart_tx_u1|Add2~6_combout\,
	combout => \uart_tx_u1|addr~13_combout\);

-- Location: LCCOMB_X19_Y25_N24
\uart_tx_u1|Add14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add14~4_combout\ = (\uart_tx_u1|Send_addr[5]~4_combout\ & ((GND) # (!\uart_tx_u1|Add14~3\))) # (!\uart_tx_u1|Send_addr[5]~4_combout\ & (\uart_tx_u1|Add14~3\ $ (GND)))
-- \uart_tx_u1|Add14~5\ = CARRY((\uart_tx_u1|Send_addr[5]~4_combout\) # (!\uart_tx_u1|Add14~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add14~3\,
	combout => \uart_tx_u1|Add14~4_combout\,
	cout => \uart_tx_u1|Add14~5\);

-- Location: LCCOMB_X22_Y25_N8
\uart_tx_u1|addr~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~14_combout\ = (\Select_mode_u1|LED_select\(2) & ((\uart_tx_u1|addr~13_combout\ & ((\uart_tx_u1|Add14~4_combout\))) # (!\uart_tx_u1|addr~13_combout\ & (!\uart_tx_u1|Send_addr[5]~4_combout\)))) # (!\Select_mode_u1|LED_select\(2) & 
-- (((\uart_tx_u1|addr~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[5]~4_combout\,
	datab => \Select_mode_u1|LED_select\(2),
	datac => \uart_tx_u1|addr~13_combout\,
	datad => \uart_tx_u1|Add14~4_combout\,
	combout => \uart_tx_u1|addr~14_combout\);

-- Location: LCCOMB_X19_Y25_N12
\uart_tx_u1|Add12~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add12~8_combout\ = (\uart_tx_u1|Send_addr[5]~4_combout\ & ((GND) # (!\uart_tx_u1|Add12~7\))) # (!\uart_tx_u1|Send_addr[5]~4_combout\ & (\uart_tx_u1|Add12~7\ $ (GND)))
-- \uart_tx_u1|Add12~9\ = CARRY((\uart_tx_u1|Send_addr[5]~4_combout\) # (!\uart_tx_u1|Add12~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add12~7\,
	combout => \uart_tx_u1|Add12~8_combout\,
	cout => \uart_tx_u1|Add12~9\);

-- Location: LCCOMB_X20_Y25_N8
\uart_tx_u1|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add4~8_combout\ = (\uart_tx_u1|Send_addr[5]~4_combout\ & (\uart_tx_u1|Add4~7\ $ (GND))) # (!\uart_tx_u1|Send_addr[5]~4_combout\ & (!\uart_tx_u1|Add4~7\ & VCC))
-- \uart_tx_u1|Add4~9\ = CARRY((\uart_tx_u1|Send_addr[5]~4_combout\ & !\uart_tx_u1|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add4~7\,
	combout => \uart_tx_u1|Add4~8_combout\,
	cout => \uart_tx_u1|Add4~9\);

-- Location: LCCOMB_X19_Y27_N8
\uart_tx_u1|Add8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add8~8_combout\ = (\uart_tx_u1|Send_addr[5]~4_combout\ & ((GND) # (!\uart_tx_u1|Add8~7\))) # (!\uart_tx_u1|Send_addr[5]~4_combout\ & (\uart_tx_u1|Add8~7\ $ (GND)))
-- \uart_tx_u1|Add8~9\ = CARRY((\uart_tx_u1|Send_addr[5]~4_combout\) # (!\uart_tx_u1|Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add8~7\,
	combout => \uart_tx_u1|Add8~8_combout\,
	cout => \uart_tx_u1|Add8~9\);

-- Location: LCCOMB_X19_Y23_N16
\uart_tx_u1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add0~8_combout\ = (\uart_tx_u1|Send_addr[5]~4_combout\ & (\uart_tx_u1|Add0~7\ $ (GND))) # (!\uart_tx_u1|Send_addr[5]~4_combout\ & (!\uart_tx_u1|Add0~7\ & VCC))
-- \uart_tx_u1|Add0~9\ = CARRY((\uart_tx_u1|Send_addr[5]~4_combout\ & !\uart_tx_u1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add0~7\,
	combout => \uart_tx_u1|Add0~8_combout\,
	cout => \uart_tx_u1|Add0~9\);

-- Location: LCCOMB_X22_Y25_N2
\uart_tx_u1|addr~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~15_combout\ = (\Select_mode_u1|LED_select\(2) & (\Select_mode_u1|LED_select\(3))) # (!\Select_mode_u1|LED_select\(2) & ((\Select_mode_u1|LED_select\(3) & (\uart_tx_u1|Add8~8_combout\)) # (!\Select_mode_u1|LED_select\(3) & 
-- ((\uart_tx_u1|Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(2),
	datab => \Select_mode_u1|LED_select\(3),
	datac => \uart_tx_u1|Add8~8_combout\,
	datad => \uart_tx_u1|Add0~8_combout\,
	combout => \uart_tx_u1|addr~15_combout\);

-- Location: LCCOMB_X22_Y25_N28
\uart_tx_u1|addr~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~16_combout\ = (\Select_mode_u1|LED_select\(2) & ((\uart_tx_u1|addr~15_combout\ & (\uart_tx_u1|Add12~8_combout\)) # (!\uart_tx_u1|addr~15_combout\ & ((\uart_tx_u1|Add4~8_combout\))))) # (!\Select_mode_u1|LED_select\(2) & 
-- (((\uart_tx_u1|addr~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Add12~8_combout\,
	datab => \Select_mode_u1|LED_select\(2),
	datac => \uart_tx_u1|Add4~8_combout\,
	datad => \uart_tx_u1|addr~15_combout\,
	combout => \uart_tx_u1|addr~16_combout\);

-- Location: LCCOMB_X22_Y25_N30
\uart_tx_u1|addr~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~17_combout\ = (\Select_mode_u1|LED_select\(1) & ((\Select_mode_u1|LED_select\(0)) # ((\uart_tx_u1|addr~14_combout\)))) # (!\Select_mode_u1|LED_select\(1) & (!\Select_mode_u1|LED_select\(0) & ((\uart_tx_u1|addr~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(1),
	datab => \Select_mode_u1|LED_select\(0),
	datac => \uart_tx_u1|addr~14_combout\,
	datad => \uart_tx_u1|addr~16_combout\,
	combout => \uart_tx_u1|addr~17_combout\);

-- Location: LCCOMB_X21_Y24_N24
\uart_tx_u1|Add7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add7~10_combout\ = (\uart_tx_u1|Send_addr[5]~4_combout\ & (\uart_tx_u1|Add7~9\ & VCC)) # (!\uart_tx_u1|Send_addr[5]~4_combout\ & (!\uart_tx_u1|Add7~9\))
-- \uart_tx_u1|Add7~11\ = CARRY((!\uart_tx_u1|Send_addr[5]~4_combout\ & !\uart_tx_u1|Add7~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add7~9\,
	combout => \uart_tx_u1|Add7~10_combout\,
	cout => \uart_tx_u1|Add7~11\);

-- Location: LCCOMB_X22_Y24_N16
\uart_tx_u1|Add15~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add15~10_combout\ = (\uart_tx_u1|Send_addr[5]~4_combout\ & (\uart_tx_u1|Add15~9\ & VCC)) # (!\uart_tx_u1|Send_addr[5]~4_combout\ & (!\uart_tx_u1|Add15~9\))
-- \uart_tx_u1|Add15~11\ = CARRY((!\uart_tx_u1|Send_addr[5]~4_combout\ & !\uart_tx_u1|Add15~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add15~9\,
	combout => \uart_tx_u1|Add15~10_combout\,
	cout => \uart_tx_u1|Add15~11\);

-- Location: LCCOMB_X19_Y26_N20
\uart_tx_u1|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add3~10_combout\ = (\uart_tx_u1|Send_addr[5]~4_combout\ & (!\uart_tx_u1|Add3~9\)) # (!\uart_tx_u1|Send_addr[5]~4_combout\ & ((\uart_tx_u1|Add3~9\) # (GND)))
-- \uart_tx_u1|Add3~11\ = CARRY((!\uart_tx_u1|Add3~9\) # (!\uart_tx_u1|Send_addr[5]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add3~9\,
	combout => \uart_tx_u1|Add3~10_combout\,
	cout => \uart_tx_u1|Add3~11\);

-- Location: LCCOMB_X20_Y23_N22
\uart_tx_u1|Add11~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add11~10_combout\ = (\uart_tx_u1|Send_addr[5]~4_combout\ & (\uart_tx_u1|Add11~9\ & VCC)) # (!\uart_tx_u1|Send_addr[5]~4_combout\ & (!\uart_tx_u1|Add11~9\))
-- \uart_tx_u1|Add11~11\ = CARRY((!\uart_tx_u1|Send_addr[5]~4_combout\ & !\uart_tx_u1|Add11~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[5]~4_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add11~9\,
	combout => \uart_tx_u1|Add11~10_combout\,
	cout => \uart_tx_u1|Add11~11\);

-- Location: LCCOMB_X20_Y25_N16
\uart_tx_u1|addr~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~18_combout\ = (\Select_mode_u1|LED_select\(3) & ((\Select_mode_u1|LED_select\(2)) # ((\uart_tx_u1|Add11~10_combout\)))) # (!\Select_mode_u1|LED_select\(3) & (!\Select_mode_u1|LED_select\(2) & (\uart_tx_u1|Add3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(3),
	datab => \Select_mode_u1|LED_select\(2),
	datac => \uart_tx_u1|Add3~10_combout\,
	datad => \uart_tx_u1|Add11~10_combout\,
	combout => \uart_tx_u1|addr~18_combout\);

-- Location: LCCOMB_X22_Y25_N0
\uart_tx_u1|addr~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~19_combout\ = (\Select_mode_u1|LED_select\(2) & ((\uart_tx_u1|addr~18_combout\ & ((\uart_tx_u1|Add15~10_combout\))) # (!\uart_tx_u1|addr~18_combout\ & (\uart_tx_u1|Add7~10_combout\)))) # (!\Select_mode_u1|LED_select\(2) & 
-- (((\uart_tx_u1|addr~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(2),
	datab => \uart_tx_u1|Add7~10_combout\,
	datac => \uart_tx_u1|Add15~10_combout\,
	datad => \uart_tx_u1|addr~18_combout\,
	combout => \uart_tx_u1|addr~19_combout\);

-- Location: LCCOMB_X22_Y25_N10
\uart_tx_u1|addr~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~20_combout\ = (\Select_mode_u1|LED_select\(0) & ((\uart_tx_u1|addr~17_combout\ & ((\uart_tx_u1|addr~19_combout\))) # (!\uart_tx_u1|addr~17_combout\ & (\uart_tx_u1|addr~12_combout\)))) # (!\Select_mode_u1|LED_select\(0) & 
-- (((\uart_tx_u1|addr~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr~12_combout\,
	datab => \Select_mode_u1|LED_select\(0),
	datac => \uart_tx_u1|addr~17_combout\,
	datad => \uart_tx_u1|addr~19_combout\,
	combout => \uart_tx_u1|addr~20_combout\);

-- Location: FF_X21_Y25_N25
\uart_tx_u1|addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|addr[5]~5_combout\,
	asdata => \uart_tx_u1|addr~20_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => \uart_tx_u1|always0~4_combout\,
	ena => \uart_tx_u1|addr[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|addr\(5));

-- Location: LCCOMB_X18_Y26_N16
\uart_tx_u1|Add16~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add16~12_combout\ = (\uart_tx_u1|addr\(6) & (\uart_tx_u1|Add16~11\ $ (GND))) # (!\uart_tx_u1|addr\(6) & (!\uart_tx_u1|Add16~11\ & VCC))
-- \uart_tx_u1|Add16~13\ = CARRY((\uart_tx_u1|addr\(6) & !\uart_tx_u1|Add16~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(6),
	datad => VCC,
	cin => \uart_tx_u1|Add16~11\,
	combout => \uart_tx_u1|Add16~12_combout\,
	cout => \uart_tx_u1|Add16~13\);

-- Location: LCCOMB_X20_Y27_N6
\uart_tx_u1|Send_addr[6]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Send_addr[6]~7_combout\ = (\uart_tx_u1|always1~0_combout\ & (\uart_tx_u1|Add16~12_combout\)) # (!\uart_tx_u1|always1~0_combout\ & ((\uart_tx_u1|Send_addr_w\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Add16~12_combout\,
	datac => \uart_tx_u1|Send_addr_w\(6),
	datad => \uart_tx_u1|always1~0_combout\,
	combout => \uart_tx_u1|Send_addr[6]~7_combout\);

-- Location: FF_X20_Y27_N7
\uart_tx_u1|Send_addr_w[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|Send_addr[6]~7_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \uart_tx_u1|Send_addr_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|Send_addr_w\(6));

-- Location: LCCOMB_X21_Y25_N30
\uart_tx_u1|addr[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr[6]~1_combout\ = (\uart_tx_u1|addr~6_combout\ & (\uart_tx_u1|Send_addr_w\(6))) # (!\uart_tx_u1|addr~6_combout\ & ((\uart_tx_u1|Add16~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr_w\(6),
	datab => \uart_tx_u1|Add16~12_combout\,
	datad => \uart_tx_u1|addr~6_combout\,
	combout => \uart_tx_u1|addr[6]~1_combout\);

-- Location: LCCOMB_X22_Y24_N18
\uart_tx_u1|Add15~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add15~12_combout\ = (\uart_tx_u1|Send_addr[6]~7_combout\ & (\uart_tx_u1|Add15~11\ $ (GND))) # (!\uart_tx_u1|Send_addr[6]~7_combout\ & (!\uart_tx_u1|Add15~11\ & VCC))
-- \uart_tx_u1|Add15~13\ = CARRY((\uart_tx_u1|Send_addr[6]~7_combout\ & !\uart_tx_u1|Add15~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add15~11\,
	combout => \uart_tx_u1|Add15~12_combout\,
	cout => \uart_tx_u1|Add15~13\);

-- Location: LCCOMB_X23_Y25_N20
\uart_tx_u1|Add13~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add13~12_combout\ = (\uart_tx_u1|Send_addr[6]~7_combout\ & (\uart_tx_u1|Add13~11\ $ (GND))) # (!\uart_tx_u1|Send_addr[6]~7_combout\ & (!\uart_tx_u1|Add13~11\ & VCC))
-- \uart_tx_u1|Add13~13\ = CARRY((\uart_tx_u1|Send_addr[6]~7_combout\ & !\uart_tx_u1|Add13~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add13~11\,
	combout => \uart_tx_u1|Add13~12_combout\,
	cout => \uart_tx_u1|Add13~13\);

-- Location: LCCOMB_X20_Y23_N24
\uart_tx_u1|Add11~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add11~12_combout\ = (\uart_tx_u1|Send_addr[6]~7_combout\ & (\uart_tx_u1|Add11~11\ $ (GND))) # (!\uart_tx_u1|Send_addr[6]~7_combout\ & (!\uart_tx_u1|Add11~11\ & VCC))
-- \uart_tx_u1|Add11~13\ = CARRY((\uart_tx_u1|Send_addr[6]~7_combout\ & !\uart_tx_u1|Add11~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add11~11\,
	combout => \uart_tx_u1|Add11~12_combout\,
	cout => \uart_tx_u1|Add11~13\);

-- Location: LCCOMB_X22_Y25_N24
\uart_tx_u1|Add9~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add9~12_combout\ = (\uart_tx_u1|Send_addr[6]~7_combout\ & (\uart_tx_u1|Add9~11\ $ (GND))) # (!\uart_tx_u1|Send_addr[6]~7_combout\ & (!\uart_tx_u1|Add9~11\ & VCC))
-- \uart_tx_u1|Add9~13\ = CARRY((\uart_tx_u1|Send_addr[6]~7_combout\ & !\uart_tx_u1|Add9~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add9~11\,
	combout => \uart_tx_u1|Add9~12_combout\,
	cout => \uart_tx_u1|Add9~13\);

-- Location: LCCOMB_X21_Y25_N6
\uart_tx_u1|addr~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~57_combout\ = (\Select_mode_u1|LED_select\(1) & ((\Select_mode_u1|LED_select\(2)) # ((\uart_tx_u1|Add11~12_combout\)))) # (!\Select_mode_u1|LED_select\(1) & (!\Select_mode_u1|LED_select\(2) & ((\uart_tx_u1|Add9~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(1),
	datab => \Select_mode_u1|LED_select\(2),
	datac => \uart_tx_u1|Add11~12_combout\,
	datad => \uart_tx_u1|Add9~12_combout\,
	combout => \uart_tx_u1|addr~57_combout\);

-- Location: LCCOMB_X21_Y25_N12
\uart_tx_u1|addr~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~58_combout\ = (\Select_mode_u1|LED_select\(2) & ((\uart_tx_u1|addr~57_combout\ & (\uart_tx_u1|Add15~12_combout\)) # (!\uart_tx_u1|addr~57_combout\ & ((\uart_tx_u1|Add13~12_combout\))))) # (!\Select_mode_u1|LED_select\(2) & 
-- (((\uart_tx_u1|addr~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Add15~12_combout\,
	datab => \Select_mode_u1|LED_select\(2),
	datac => \uart_tx_u1|Add13~12_combout\,
	datad => \uart_tx_u1|addr~57_combout\,
	combout => \uart_tx_u1|addr~58_combout\);

-- Location: LCCOMB_X20_Y27_N24
\uart_tx_u1|Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add5~12_combout\ = (\uart_tx_u1|Send_addr[6]~7_combout\ & (\uart_tx_u1|Add5~11\ $ (GND))) # (!\uart_tx_u1|Send_addr[6]~7_combout\ & (!\uart_tx_u1|Add5~11\ & VCC))
-- \uart_tx_u1|Add5~13\ = CARRY((\uart_tx_u1|Send_addr[6]~7_combout\ & !\uart_tx_u1|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add5~11\,
	combout => \uart_tx_u1|Add5~12_combout\,
	cout => \uart_tx_u1|Add5~13\);

-- Location: LCCOMB_X21_Y24_N26
\uart_tx_u1|Add7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add7~12_combout\ = (\uart_tx_u1|Send_addr[6]~7_combout\ & (\uart_tx_u1|Add7~11\ $ (GND))) # (!\uart_tx_u1|Send_addr[6]~7_combout\ & (!\uart_tx_u1|Add7~11\ & VCC))
-- \uart_tx_u1|Add7~13\ = CARRY((\uart_tx_u1|Send_addr[6]~7_combout\ & !\uart_tx_u1|Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add7~11\,
	combout => \uart_tx_u1|Add7~12_combout\,
	cout => \uart_tx_u1|Add7~13\);

-- Location: LCCOMB_X19_Y26_N22
\uart_tx_u1|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add3~12_combout\ = (\uart_tx_u1|Send_addr[6]~7_combout\ & (\uart_tx_u1|Add3~11\ $ (GND))) # (!\uart_tx_u1|Send_addr[6]~7_combout\ & (!\uart_tx_u1|Add3~11\ & VCC))
-- \uart_tx_u1|Add3~13\ = CARRY((\uart_tx_u1|Send_addr[6]~7_combout\ & !\uart_tx_u1|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add3~11\,
	combout => \uart_tx_u1|Add3~12_combout\,
	cout => \uart_tx_u1|Add3~13\);

-- Location: LCCOMB_X21_Y26_N26
\uart_tx_u1|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add1~12_combout\ = (\uart_tx_u1|Send_addr[6]~7_combout\ & (\uart_tx_u1|Add1~11\ $ (GND))) # (!\uart_tx_u1|Send_addr[6]~7_combout\ & (!\uart_tx_u1|Add1~11\ & VCC))
-- \uart_tx_u1|Add1~13\ = CARRY((\uart_tx_u1|Send_addr[6]~7_combout\ & !\uart_tx_u1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add1~11\,
	combout => \uart_tx_u1|Add1~12_combout\,
	cout => \uart_tx_u1|Add1~13\);

-- Location: LCCOMB_X21_Y25_N18
\uart_tx_u1|addr~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~50_combout\ = (\Select_mode_u1|LED_select\(1) & ((\Select_mode_u1|LED_select\(2)) # ((\uart_tx_u1|Add3~12_combout\)))) # (!\Select_mode_u1|LED_select\(1) & (!\Select_mode_u1|LED_select\(2) & ((\uart_tx_u1|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(1),
	datab => \Select_mode_u1|LED_select\(2),
	datac => \uart_tx_u1|Add3~12_combout\,
	datad => \uart_tx_u1|Add1~12_combout\,
	combout => \uart_tx_u1|addr~50_combout\);

-- Location: LCCOMB_X21_Y25_N8
\uart_tx_u1|addr~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~51_combout\ = (\Select_mode_u1|LED_select\(2) & ((\uart_tx_u1|addr~50_combout\ & ((\uart_tx_u1|Add7~12_combout\))) # (!\uart_tx_u1|addr~50_combout\ & (\uart_tx_u1|Add5~12_combout\)))) # (!\Select_mode_u1|LED_select\(2) & 
-- (((\uart_tx_u1|addr~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Add5~12_combout\,
	datab => \Select_mode_u1|LED_select\(2),
	datac => \uart_tx_u1|Add7~12_combout\,
	datad => \uart_tx_u1|addr~50_combout\,
	combout => \uart_tx_u1|addr~51_combout\);

-- Location: LCCOMB_X20_Y25_N10
\uart_tx_u1|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add4~10_combout\ = (\uart_tx_u1|Send_addr[6]~7_combout\ & (!\uart_tx_u1|Add4~9\)) # (!\uart_tx_u1|Send_addr[6]~7_combout\ & ((\uart_tx_u1|Add4~9\) # (GND)))
-- \uart_tx_u1|Add4~11\ = CARRY((!\uart_tx_u1|Add4~9\) # (!\uart_tx_u1|Send_addr[6]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add4~9\,
	combout => \uart_tx_u1|Add4~10_combout\,
	cout => \uart_tx_u1|Add4~11\);

-- Location: LCCOMB_X21_Y25_N22
\uart_tx_u1|Add6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add6~5_combout\ = \uart_tx_u1|Send_addr[6]~7_combout\ $ (((\uart_tx_u1|always1~0_combout\ & (\uart_tx_u1|Add16~10_combout\)) # (!\uart_tx_u1|always1~0_combout\ & ((\uart_tx_u1|Send_addr_w\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Add16~10_combout\,
	datab => \uart_tx_u1|Send_addr_w\(5),
	datac => \uart_tx_u1|Send_addr[6]~7_combout\,
	datad => \uart_tx_u1|always1~0_combout\,
	combout => \uart_tx_u1|Add6~5_combout\);

-- Location: LCCOMB_X21_Y23_N22
\uart_tx_u1|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add2~8_combout\ = (\uart_tx_u1|Send_addr[6]~7_combout\ & (\uart_tx_u1|Add2~7\ $ (GND))) # (!\uart_tx_u1|Send_addr[6]~7_combout\ & (!\uart_tx_u1|Add2~7\ & VCC))
-- \uart_tx_u1|Add2~9\ = CARRY((\uart_tx_u1|Send_addr[6]~7_combout\ & !\uart_tx_u1|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add2~7\,
	combout => \uart_tx_u1|Add2~8_combout\,
	cout => \uart_tx_u1|Add2~9\);

-- Location: LCCOMB_X19_Y23_N18
\uart_tx_u1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add0~10_combout\ = (\uart_tx_u1|Send_addr[6]~7_combout\ & (!\uart_tx_u1|Add0~9\)) # (!\uart_tx_u1|Send_addr[6]~7_combout\ & ((\uart_tx_u1|Add0~9\) # (GND)))
-- \uart_tx_u1|Add0~11\ = CARRY((!\uart_tx_u1|Add0~9\) # (!\uart_tx_u1|Send_addr[6]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add0~9\,
	combout => \uart_tx_u1|Add0~10_combout\,
	cout => \uart_tx_u1|Add0~11\);

-- Location: LCCOMB_X21_Y25_N16
\uart_tx_u1|addr~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~54_combout\ = (\Select_mode_u1|LED_select\(1) & ((\Select_mode_u1|LED_select\(2)) # ((\uart_tx_u1|Add2~8_combout\)))) # (!\Select_mode_u1|LED_select\(1) & (!\Select_mode_u1|LED_select\(2) & ((\uart_tx_u1|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(1),
	datab => \Select_mode_u1|LED_select\(2),
	datac => \uart_tx_u1|Add2~8_combout\,
	datad => \uart_tx_u1|Add0~10_combout\,
	combout => \uart_tx_u1|addr~54_combout\);

-- Location: LCCOMB_X21_Y25_N26
\uart_tx_u1|addr~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~55_combout\ = (\Select_mode_u1|LED_select\(2) & ((\uart_tx_u1|addr~54_combout\ & ((\uart_tx_u1|Add6~5_combout\))) # (!\uart_tx_u1|addr~54_combout\ & (\uart_tx_u1|Add4~10_combout\)))) # (!\Select_mode_u1|LED_select\(2) & 
-- (((\uart_tx_u1|addr~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Add4~10_combout\,
	datab => \Select_mode_u1|LED_select\(2),
	datac => \uart_tx_u1|Add6~5_combout\,
	datad => \uart_tx_u1|addr~54_combout\,
	combout => \uart_tx_u1|addr~55_combout\);

-- Location: LCCOMB_X20_Y23_N8
\uart_tx_u1|Add10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add10~8_combout\ = (\uart_tx_u1|Send_addr[6]~7_combout\ & (\uart_tx_u1|Add10~7\ $ (GND))) # (!\uart_tx_u1|Send_addr[6]~7_combout\ & (!\uart_tx_u1|Add10~7\ & VCC))
-- \uart_tx_u1|Add10~9\ = CARRY((\uart_tx_u1|Send_addr[6]~7_combout\ & !\uart_tx_u1|Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add10~7\,
	combout => \uart_tx_u1|Add10~8_combout\,
	cout => \uart_tx_u1|Add10~9\);

-- Location: LCCOMB_X19_Y25_N26
\uart_tx_u1|Add14~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add14~6_combout\ = (\uart_tx_u1|Send_addr[6]~7_combout\ & (!\uart_tx_u1|Add14~5\)) # (!\uart_tx_u1|Send_addr[6]~7_combout\ & ((\uart_tx_u1|Add14~5\) # (GND)))
-- \uart_tx_u1|Add14~7\ = CARRY((!\uart_tx_u1|Add14~5\) # (!\uart_tx_u1|Send_addr[6]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add14~5\,
	combout => \uart_tx_u1|Add14~6_combout\,
	cout => \uart_tx_u1|Add14~7\);

-- Location: LCCOMB_X19_Y25_N14
\uart_tx_u1|Add12~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add12~10_combout\ = (\uart_tx_u1|Send_addr[6]~7_combout\ & (!\uart_tx_u1|Add12~9\)) # (!\uart_tx_u1|Send_addr[6]~7_combout\ & ((\uart_tx_u1|Add12~9\) # (GND)))
-- \uart_tx_u1|Add12~11\ = CARRY((!\uart_tx_u1|Add12~9\) # (!\uart_tx_u1|Send_addr[6]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add12~9\,
	combout => \uart_tx_u1|Add12~10_combout\,
	cout => \uart_tx_u1|Add12~11\);

-- Location: LCCOMB_X19_Y27_N10
\uart_tx_u1|Add8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add8~10_combout\ = (\uart_tx_u1|Send_addr[6]~7_combout\ & (!\uart_tx_u1|Add8~9\)) # (!\uart_tx_u1|Send_addr[6]~7_combout\ & ((\uart_tx_u1|Add8~9\) # (GND)))
-- \uart_tx_u1|Add8~11\ = CARRY((!\uart_tx_u1|Add8~9\) # (!\uart_tx_u1|Send_addr[6]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[6]~7_combout\,
	datad => VCC,
	cin => \uart_tx_u1|Add8~9\,
	combout => \uart_tx_u1|Add8~10_combout\,
	cout => \uart_tx_u1|Add8~11\);

-- Location: LCCOMB_X20_Y25_N22
\uart_tx_u1|addr~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~52_combout\ = (\Select_mode_u1|LED_select\(1) & (((\Select_mode_u1|LED_select\(2))))) # (!\Select_mode_u1|LED_select\(1) & ((\Select_mode_u1|LED_select\(2) & (\uart_tx_u1|Add12~10_combout\)) # (!\Select_mode_u1|LED_select\(2) & 
-- ((\uart_tx_u1|Add8~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Add12~10_combout\,
	datab => \Select_mode_u1|LED_select\(1),
	datac => \Select_mode_u1|LED_select\(2),
	datad => \uart_tx_u1|Add8~10_combout\,
	combout => \uart_tx_u1|addr~52_combout\);

-- Location: LCCOMB_X21_Y25_N2
\uart_tx_u1|addr~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~53_combout\ = (\Select_mode_u1|LED_select\(1) & ((\uart_tx_u1|addr~52_combout\ & ((\uart_tx_u1|Add14~6_combout\))) # (!\uart_tx_u1|addr~52_combout\ & (\uart_tx_u1|Add10~8_combout\)))) # (!\Select_mode_u1|LED_select\(1) & 
-- (((\uart_tx_u1|addr~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(1),
	datab => \uart_tx_u1|Add10~8_combout\,
	datac => \uart_tx_u1|Add14~6_combout\,
	datad => \uart_tx_u1|addr~52_combout\,
	combout => \uart_tx_u1|addr~53_combout\);

-- Location: LCCOMB_X21_Y25_N28
\uart_tx_u1|addr~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~56_combout\ = (\Select_mode_u1|LED_select\(3) & ((\Select_mode_u1|LED_select\(0)) # ((\uart_tx_u1|addr~53_combout\)))) # (!\Select_mode_u1|LED_select\(3) & (!\Select_mode_u1|LED_select\(0) & (\uart_tx_u1|addr~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(3),
	datab => \Select_mode_u1|LED_select\(0),
	datac => \uart_tx_u1|addr~55_combout\,
	datad => \uart_tx_u1|addr~53_combout\,
	combout => \uart_tx_u1|addr~56_combout\);

-- Location: LCCOMB_X21_Y25_N14
\uart_tx_u1|addr~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~59_combout\ = (\Select_mode_u1|LED_select\(0) & ((\uart_tx_u1|addr~56_combout\ & (\uart_tx_u1|addr~58_combout\)) # (!\uart_tx_u1|addr~56_combout\ & ((\uart_tx_u1|addr~51_combout\))))) # (!\Select_mode_u1|LED_select\(0) & 
-- (((\uart_tx_u1|addr~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr~58_combout\,
	datab => \Select_mode_u1|LED_select\(0),
	datac => \uart_tx_u1|addr~51_combout\,
	datad => \uart_tx_u1|addr~56_combout\,
	combout => \uart_tx_u1|addr~59_combout\);

-- Location: FF_X21_Y25_N31
\uart_tx_u1|addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|addr[6]~1_combout\,
	asdata => \uart_tx_u1|addr~59_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => \uart_tx_u1|always0~4_combout\,
	ena => \uart_tx_u1|addr[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|addr\(6));

-- Location: LCCOMB_X18_Y26_N18
\uart_tx_u1|Add16~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add16~14_combout\ = \uart_tx_u1|Add16~13\ $ (\uart_tx_u1|addr\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart_tx_u1|addr\(7),
	cin => \uart_tx_u1|Add16~13\,
	combout => \uart_tx_u1|Add16~14_combout\);

-- Location: LCCOMB_X21_Y27_N14
\uart_tx_u1|Send_addr[7]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Send_addr[7]~8_combout\ = (\uart_tx_u1|always1~0_combout\ & (\uart_tx_u1|Add16~14_combout\)) # (!\uart_tx_u1|always1~0_combout\ & ((\uart_tx_u1|Send_addr_w\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Add16~14_combout\,
	datac => \uart_tx_u1|Send_addr_w\(7),
	datad => \uart_tx_u1|always1~0_combout\,
	combout => \uart_tx_u1|Send_addr[7]~8_combout\);

-- Location: FF_X21_Y27_N15
\uart_tx_u1|Send_addr_w[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|Send_addr[7]~8_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \uart_tx_u1|Send_addr_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|Send_addr_w\(7));

-- Location: LCCOMB_X20_Y25_N30
\uart_tx_u1|addr[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr[7]~0_combout\ = (\uart_tx_u1|addr~6_combout\ & ((\uart_tx_u1|Send_addr_w\(7)))) # (!\uart_tx_u1|addr~6_combout\ & (\uart_tx_u1|Add16~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Add16~14_combout\,
	datab => \uart_tx_u1|Send_addr_w\(7),
	datad => \uart_tx_u1|addr~6_combout\,
	combout => \uart_tx_u1|addr[7]~0_combout\);

-- Location: LCCOMB_X22_Y24_N20
\uart_tx_u1|Add15~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add15~14_combout\ = \uart_tx_u1|Add15~13\ $ (\uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \uart_tx_u1|Add15~13\,
	combout => \uart_tx_u1|Add15~14_combout\);

-- Location: LCCOMB_X19_Y25_N28
\uart_tx_u1|Add14~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add14~8_combout\ = \uart_tx_u1|Add14~7\ $ (!\uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \uart_tx_u1|Add14~7\,
	combout => \uart_tx_u1|Add14~8_combout\);

-- Location: LCCOMB_X21_Y24_N30
\uart_tx_u1|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add6~4_combout\ = \uart_tx_u1|Send_addr[7]~8_combout\ $ (((\uart_tx_u1|Send_addr[6]~7_combout\ & \uart_tx_u1|Send_addr[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Send_addr[7]~8_combout\,
	datac => \uart_tx_u1|Send_addr[6]~7_combout\,
	datad => \uart_tx_u1|Send_addr[5]~4_combout\,
	combout => \uart_tx_u1|Add6~4_combout\);

-- Location: LCCOMB_X21_Y24_N28
\uart_tx_u1|Add7~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add7~14_combout\ = \uart_tx_u1|Add7~13\ $ (\uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \uart_tx_u1|Add7~13\,
	combout => \uart_tx_u1|Add7~14_combout\);

-- Location: LCCOMB_X21_Y24_N0
\uart_tx_u1|addr~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~67_combout\ = (\Select_mode_u1|LED_select\(3) & (\Select_mode_u1|LED_select\(0))) # (!\Select_mode_u1|LED_select\(3) & ((\Select_mode_u1|LED_select\(0) & ((\uart_tx_u1|Add7~14_combout\))) # (!\Select_mode_u1|LED_select\(0) & 
-- (\uart_tx_u1|Add6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(3),
	datab => \Select_mode_u1|LED_select\(0),
	datac => \uart_tx_u1|Add6~4_combout\,
	datad => \uart_tx_u1|Add7~14_combout\,
	combout => \uart_tx_u1|addr~67_combout\);

-- Location: LCCOMB_X21_Y25_N20
\uart_tx_u1|addr~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~68_combout\ = (\Select_mode_u1|LED_select\(3) & ((\uart_tx_u1|addr~67_combout\ & (\uart_tx_u1|Add15~14_combout\)) # (!\uart_tx_u1|addr~67_combout\ & ((\uart_tx_u1|Add14~8_combout\))))) # (!\Select_mode_u1|LED_select\(3) & 
-- (((\uart_tx_u1|addr~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Add15~14_combout\,
	datab => \uart_tx_u1|Add14~8_combout\,
	datac => \Select_mode_u1|LED_select\(3),
	datad => \uart_tx_u1|addr~67_combout\,
	combout => \uart_tx_u1|addr~68_combout\);

-- Location: LCCOMB_X20_Y23_N26
\uart_tx_u1|Add11~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add11~14_combout\ = \uart_tx_u1|Send_addr[7]~8_combout\ $ (\uart_tx_u1|Add11~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \uart_tx_u1|Add11~13\,
	combout => \uart_tx_u1|Add11~14_combout\);

-- Location: LCCOMB_X19_Y26_N24
\uart_tx_u1|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add3~14_combout\ = \uart_tx_u1|Add3~13\ $ (\uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \uart_tx_u1|Add3~13\,
	combout => \uart_tx_u1|Add3~14_combout\);

-- Location: LCCOMB_X20_Y23_N10
\uart_tx_u1|Add10~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add10~10_combout\ = \uart_tx_u1|Send_addr[7]~8_combout\ $ (\uart_tx_u1|Add10~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \uart_tx_u1|Add10~9\,
	combout => \uart_tx_u1|Add10~10_combout\);

-- Location: LCCOMB_X21_Y23_N24
\uart_tx_u1|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add2~10_combout\ = \uart_tx_u1|Add2~9\ $ (\uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \uart_tx_u1|Add2~9\,
	combout => \uart_tx_u1|Add2~10_combout\);

-- Location: LCCOMB_X20_Y23_N28
\uart_tx_u1|addr~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~60_combout\ = (\Select_mode_u1|LED_select\(0) & (((\Select_mode_u1|LED_select\(3))))) # (!\Select_mode_u1|LED_select\(0) & ((\Select_mode_u1|LED_select\(3) & (\uart_tx_u1|Add10~10_combout\)) # (!\Select_mode_u1|LED_select\(3) & 
-- ((\uart_tx_u1|Add2~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Add10~10_combout\,
	datab => \Select_mode_u1|LED_select\(0),
	datac => \Select_mode_u1|LED_select\(3),
	datad => \uart_tx_u1|Add2~10_combout\,
	combout => \uart_tx_u1|addr~60_combout\);

-- Location: LCCOMB_X20_Y23_N30
\uart_tx_u1|addr~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~61_combout\ = (\Select_mode_u1|LED_select\(0) & ((\uart_tx_u1|addr~60_combout\ & (\uart_tx_u1|Add11~14_combout\)) # (!\uart_tx_u1|addr~60_combout\ & ((\uart_tx_u1|Add3~14_combout\))))) # (!\Select_mode_u1|LED_select\(0) & 
-- (((\uart_tx_u1|addr~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Add11~14_combout\,
	datab => \uart_tx_u1|Add3~14_combout\,
	datac => \Select_mode_u1|LED_select\(0),
	datad => \uart_tx_u1|addr~60_combout\,
	combout => \uart_tx_u1|addr~61_combout\);

-- Location: LCCOMB_X23_Y25_N22
\uart_tx_u1|Add13~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add13~14_combout\ = \uart_tx_u1|Add13~13\ $ (\uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \uart_tx_u1|Add13~13\,
	combout => \uart_tx_u1|Add13~14_combout\);

-- Location: LCCOMB_X19_Y25_N16
\uart_tx_u1|Add12~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add12~12_combout\ = \uart_tx_u1|Add12~11\ $ (!\uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \uart_tx_u1|Add12~11\,
	combout => \uart_tx_u1|Add12~12_combout\);

-- Location: LCCOMB_X20_Y27_N26
\uart_tx_u1|Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add5~14_combout\ = \uart_tx_u1|Add5~13\ $ (\uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \uart_tx_u1|Add5~13\,
	combout => \uart_tx_u1|Add5~14_combout\);

-- Location: LCCOMB_X20_Y25_N12
\uart_tx_u1|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add4~12_combout\ = \uart_tx_u1|Add4~11\ $ (!\uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \uart_tx_u1|Add4~11\,
	combout => \uart_tx_u1|Add4~12_combout\);

-- Location: LCCOMB_X20_Y25_N28
\uart_tx_u1|addr~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~62_combout\ = (\Select_mode_u1|LED_select\(3) & (\Select_mode_u1|LED_select\(0))) # (!\Select_mode_u1|LED_select\(3) & ((\Select_mode_u1|LED_select\(0) & (\uart_tx_u1|Add5~14_combout\)) # (!\Select_mode_u1|LED_select\(0) & 
-- ((\uart_tx_u1|Add4~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(3),
	datab => \Select_mode_u1|LED_select\(0),
	datac => \uart_tx_u1|Add5~14_combout\,
	datad => \uart_tx_u1|Add4~12_combout\,
	combout => \uart_tx_u1|addr~62_combout\);

-- Location: LCCOMB_X20_Y25_N14
\uart_tx_u1|addr~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~63_combout\ = (\Select_mode_u1|LED_select\(3) & ((\uart_tx_u1|addr~62_combout\ & (\uart_tx_u1|Add13~14_combout\)) # (!\uart_tx_u1|addr~62_combout\ & ((\uart_tx_u1|Add12~12_combout\))))) # (!\Select_mode_u1|LED_select\(3) & 
-- (((\uart_tx_u1|addr~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(3),
	datab => \uart_tx_u1|Add13~14_combout\,
	datac => \uart_tx_u1|Add12~12_combout\,
	datad => \uart_tx_u1|addr~62_combout\,
	combout => \uart_tx_u1|addr~63_combout\);

-- Location: LCCOMB_X21_Y26_N28
\uart_tx_u1|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add1~14_combout\ = \uart_tx_u1|Add1~13\ $ (\uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \uart_tx_u1|Add1~13\,
	combout => \uart_tx_u1|Add1~14_combout\);

-- Location: LCCOMB_X22_Y25_N26
\uart_tx_u1|Add9~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add9~14_combout\ = \uart_tx_u1|Add9~13\ $ (\uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \uart_tx_u1|Add9~13\,
	combout => \uart_tx_u1|Add9~14_combout\);

-- Location: LCCOMB_X19_Y27_N12
\uart_tx_u1|Add8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add8~12_combout\ = \uart_tx_u1|Add8~11\ $ (!\uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \uart_tx_u1|Add8~11\,
	combout => \uart_tx_u1|Add8~12_combout\);

-- Location: LCCOMB_X19_Y23_N20
\uart_tx_u1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add0~12_combout\ = \uart_tx_u1|Add0~11\ $ (!\uart_tx_u1|Send_addr[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart_tx_u1|Send_addr[7]~8_combout\,
	cin => \uart_tx_u1|Add0~11\,
	combout => \uart_tx_u1|Add0~12_combout\);

-- Location: LCCOMB_X20_Y25_N20
\uart_tx_u1|addr~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~64_combout\ = (\Select_mode_u1|LED_select\(3) & ((\Select_mode_u1|LED_select\(0)) # ((\uart_tx_u1|Add8~12_combout\)))) # (!\Select_mode_u1|LED_select\(3) & (!\Select_mode_u1|LED_select\(0) & ((\uart_tx_u1|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(3),
	datab => \Select_mode_u1|LED_select\(0),
	datac => \uart_tx_u1|Add8~12_combout\,
	datad => \uart_tx_u1|Add0~12_combout\,
	combout => \uart_tx_u1|addr~64_combout\);

-- Location: LCCOMB_X20_Y25_N18
\uart_tx_u1|addr~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~65_combout\ = (\Select_mode_u1|LED_select\(0) & ((\uart_tx_u1|addr~64_combout\ & ((\uart_tx_u1|Add9~14_combout\))) # (!\uart_tx_u1|addr~64_combout\ & (\uart_tx_u1|Add1~14_combout\)))) # (!\Select_mode_u1|LED_select\(0) & 
-- (((\uart_tx_u1|addr~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(0),
	datab => \uart_tx_u1|Add1~14_combout\,
	datac => \uart_tx_u1|Add9~14_combout\,
	datad => \uart_tx_u1|addr~64_combout\,
	combout => \uart_tx_u1|addr~65_combout\);

-- Location: LCCOMB_X20_Y25_N24
\uart_tx_u1|addr~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~66_combout\ = (\Select_mode_u1|LED_select\(1) & (\Select_mode_u1|LED_select\(2))) # (!\Select_mode_u1|LED_select\(1) & ((\Select_mode_u1|LED_select\(2) & (\uart_tx_u1|addr~63_combout\)) # (!\Select_mode_u1|LED_select\(2) & 
-- ((\uart_tx_u1|addr~65_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Select_mode_u1|LED_select\(1),
	datab => \Select_mode_u1|LED_select\(2),
	datac => \uart_tx_u1|addr~63_combout\,
	datad => \uart_tx_u1|addr~65_combout\,
	combout => \uart_tx_u1|addr~66_combout\);

-- Location: LCCOMB_X20_Y25_N26
\uart_tx_u1|addr~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|addr~69_combout\ = (\Select_mode_u1|LED_select\(1) & ((\uart_tx_u1|addr~66_combout\ & (\uart_tx_u1|addr~68_combout\)) # (!\uart_tx_u1|addr~66_combout\ & ((\uart_tx_u1|addr~61_combout\))))) # (!\Select_mode_u1|LED_select\(1) & 
-- (((\uart_tx_u1|addr~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr~68_combout\,
	datab => \Select_mode_u1|LED_select\(1),
	datac => \uart_tx_u1|addr~61_combout\,
	datad => \uart_tx_u1|addr~66_combout\,
	combout => \uart_tx_u1|addr~69_combout\);

-- Location: FF_X20_Y25_N31
\uart_tx_u1|addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|addr[7]~0_combout\,
	asdata => \uart_tx_u1|addr~69_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => \uart_tx_u1|always0~4_combout\,
	ena => \uart_tx_u1|addr[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|addr\(7));

-- Location: LCCOMB_X22_Y26_N16
\uart_tx_u1|AT|rom~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~10_combout\ = (\uart_tx_u1|addr\(0) & (\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(5)) # (!\uart_tx_u1|addr\(1))))) # (!\uart_tx_u1|addr\(0) & (\uart_tx_u1|addr\(5) $ (((\uart_tx_u1|addr\(2)) # (\uart_tx_u1|addr\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|addr\(1),
	datad => \uart_tx_u1|addr\(5),
	combout => \uart_tx_u1|AT|rom~10_combout\);

-- Location: LCCOMB_X22_Y26_N20
\uart_tx_u1|AT|rom~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~14_combout\ = (\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(0) $ (((!\uart_tx_u1|addr\(5)) # (!\uart_tx_u1|addr\(1)))))) # (!\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(0) & (!\uart_tx_u1|addr\(1) & \uart_tx_u1|addr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|addr\(1),
	datad => \uart_tx_u1|addr\(5),
	combout => \uart_tx_u1|AT|rom~14_combout\);

-- Location: LCCOMB_X22_Y26_N22
\uart_tx_u1|AT|rom~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~11_combout\ = (\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(0) & (!\uart_tx_u1|addr\(1) & !\uart_tx_u1|addr\(5)))) # (!\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(5) & (\uart_tx_u1|addr\(0) $ (!\uart_tx_u1|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|addr\(1),
	datad => \uart_tx_u1|addr\(5),
	combout => \uart_tx_u1|AT|rom~11_combout\);

-- Location: LCCOMB_X22_Y26_N24
\uart_tx_u1|AT|rom~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~12_combout\ = (\uart_tx_u1|addr\(5) & ((\uart_tx_u1|addr\(0) & ((\uart_tx_u1|addr\(1)))) # (!\uart_tx_u1|addr\(0) & (\uart_tx_u1|addr\(2))))) # (!\uart_tx_u1|addr\(5) & (\uart_tx_u1|addr\(0) $ (((\uart_tx_u1|addr\(2) & 
-- \uart_tx_u1|addr\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|addr\(1),
	datad => \uart_tx_u1|addr\(5),
	combout => \uart_tx_u1|AT|rom~12_combout\);

-- Location: LCCOMB_X22_Y26_N6
\uart_tx_u1|AT|rom~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~13_combout\ = (\uart_tx_u1|addr\(4) & (\uart_tx_u1|addr\(3))) # (!\uart_tx_u1|addr\(4) & ((\uart_tx_u1|addr\(3) & (\uart_tx_u1|AT|rom~11_combout\)) # (!\uart_tx_u1|addr\(3) & ((!\uart_tx_u1|AT|rom~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|addr\(3),
	datac => \uart_tx_u1|AT|rom~11_combout\,
	datad => \uart_tx_u1|AT|rom~12_combout\,
	combout => \uart_tx_u1|AT|rom~13_combout\);

-- Location: LCCOMB_X22_Y26_N14
\uart_tx_u1|AT|rom~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~15_combout\ = (\uart_tx_u1|addr\(4) & ((\uart_tx_u1|AT|rom~13_combout\ & ((\uart_tx_u1|AT|rom~14_combout\))) # (!\uart_tx_u1|AT|rom~13_combout\ & (!\uart_tx_u1|AT|rom~10_combout\)))) # (!\uart_tx_u1|addr\(4) & 
-- (((\uart_tx_u1|AT|rom~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|AT|rom~10_combout\,
	datac => \uart_tx_u1|AT|rom~14_combout\,
	datad => \uart_tx_u1|AT|rom~13_combout\,
	combout => \uart_tx_u1|AT|rom~15_combout\);

-- Location: LCCOMB_X22_Y26_N8
\uart_tx_u1|AT|rom~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~16_combout\ = (\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(0) & ((\uart_tx_u1|addr\(4)) # (!\uart_tx_u1|addr\(1))))) # (!\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(0))) # (!\uart_tx_u1|addr\(1) & 
-- ((\uart_tx_u1|addr\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|addr\(1),
	datad => \uart_tx_u1|addr\(4),
	combout => \uart_tx_u1|AT|rom~16_combout\);

-- Location: LCCOMB_X23_Y26_N0
\uart_tx_u1|AT|rom~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~20_combout\ = (\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(0) $ (\uart_tx_u1|addr\(2) $ (\uart_tx_u1|addr\(4))))) # (!\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(0) & (!\uart_tx_u1|addr\(2) & !\uart_tx_u1|addr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(2),
	datad => \uart_tx_u1|addr\(4),
	combout => \uart_tx_u1|AT|rom~20_combout\);

-- Location: LCCOMB_X22_Y26_N30
\uart_tx_u1|AT|rom~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~18_combout\ = (\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(2)) # ((\uart_tx_u1|addr\(4))))) # (!\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(2) $ (((\uart_tx_u1|addr\(0) & !\uart_tx_u1|addr\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|addr\(1),
	datad => \uart_tx_u1|addr\(4),
	combout => \uart_tx_u1|AT|rom~18_combout\);

-- Location: LCCOMB_X23_Y26_N6
\uart_tx_u1|AT|rom~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~17_combout\ = (\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(0) $ ((\uart_tx_u1|addr\(1))))) # (!\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(0) & ((\uart_tx_u1|addr\(1)) # (!\uart_tx_u1|addr\(4)))) # (!\uart_tx_u1|addr\(0) & 
-- ((\uart_tx_u1|addr\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datab => \uart_tx_u1|addr\(2),
	datac => \uart_tx_u1|addr\(1),
	datad => \uart_tx_u1|addr\(4),
	combout => \uart_tx_u1|AT|rom~17_combout\);

-- Location: LCCOMB_X22_Y26_N12
\uart_tx_u1|AT|rom~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~19_combout\ = (\uart_tx_u1|addr\(5) & (\uart_tx_u1|addr\(3))) # (!\uart_tx_u1|addr\(5) & ((\uart_tx_u1|addr\(3) & ((!\uart_tx_u1|AT|rom~17_combout\))) # (!\uart_tx_u1|addr\(3) & (\uart_tx_u1|AT|rom~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(5),
	datab => \uart_tx_u1|addr\(3),
	datac => \uart_tx_u1|AT|rom~18_combout\,
	datad => \uart_tx_u1|AT|rom~17_combout\,
	combout => \uart_tx_u1|AT|rom~19_combout\);

-- Location: LCCOMB_X22_Y26_N10
\uart_tx_u1|AT|rom~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~21_combout\ = (\uart_tx_u1|addr\(5) & ((\uart_tx_u1|AT|rom~19_combout\ & ((\uart_tx_u1|AT|rom~20_combout\))) # (!\uart_tx_u1|AT|rom~19_combout\ & (\uart_tx_u1|AT|rom~16_combout\)))) # (!\uart_tx_u1|addr\(5) & 
-- (((\uart_tx_u1|AT|rom~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(5),
	datab => \uart_tx_u1|AT|rom~16_combout\,
	datac => \uart_tx_u1|AT|rom~20_combout\,
	datad => \uart_tx_u1|AT|rom~19_combout\,
	combout => \uart_tx_u1|AT|rom~21_combout\);

-- Location: LCCOMB_X22_Y26_N4
\uart_tx_u1|AT|rom~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~22_combout\ = (!\uart_tx_u1|addr\(7) & ((\uart_tx_u1|addr\(6) & (\uart_tx_u1|AT|rom~15_combout\)) # (!\uart_tx_u1|addr\(6) & ((\uart_tx_u1|AT|rom~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(7),
	datab => \uart_tx_u1|addr\(6),
	datac => \uart_tx_u1|AT|rom~15_combout\,
	datad => \uart_tx_u1|AT|rom~21_combout\,
	combout => \uart_tx_u1|AT|rom~22_combout\);

-- Location: LCCOMB_X23_Y26_N8
\uart_tx_u1|AT|rom~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~26_combout\ = (\uart_tx_u1|addr\(0) & (\uart_tx_u1|addr\(2) $ (((!\uart_tx_u1|addr\(1) & !\uart_tx_u1|addr\(3)))))) # (!\uart_tx_u1|addr\(0) & ((\uart_tx_u1|addr\(1) & (!\uart_tx_u1|addr\(2) & \uart_tx_u1|addr\(3))) # 
-- (!\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(2) & !\uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(2),
	datad => \uart_tx_u1|addr\(3),
	combout => \uart_tx_u1|AT|rom~26_combout\);

-- Location: LCCOMB_X22_Y26_N26
\uart_tx_u1|AT|rom~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~23_combout\ = (\uart_tx_u1|addr\(0) & (\uart_tx_u1|addr\(2) $ (((\uart_tx_u1|addr\(1) & \uart_tx_u1|addr\(3)))))) # (!\uart_tx_u1|addr\(0) & ((\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(1) $ (!\uart_tx_u1|addr\(3)))) # 
-- (!\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(1)) # (\uart_tx_u1|addr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|addr\(1),
	datad => \uart_tx_u1|addr\(3),
	combout => \uart_tx_u1|AT|rom~23_combout\);

-- Location: LCCOMB_X23_Y26_N18
\uart_tx_u1|AT|rom~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~24_combout\ = (\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(3)) # ((\uart_tx_u1|addr\(0) & \uart_tx_u1|addr\(2))))) # (!\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(2) $ (((\uart_tx_u1|addr\(0) & !\uart_tx_u1|addr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(2),
	datad => \uart_tx_u1|addr\(3),
	combout => \uart_tx_u1|AT|rom~24_combout\);

-- Location: LCCOMB_X22_Y26_N28
\uart_tx_u1|AT|rom~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~25_combout\ = (!\uart_tx_u1|addr\(4) & ((\uart_tx_u1|addr\(5) & ((!\uart_tx_u1|AT|rom~24_combout\))) # (!\uart_tx_u1|addr\(5) & (\uart_tx_u1|AT|rom~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|addr\(5),
	datac => \uart_tx_u1|AT|rom~23_combout\,
	datad => \uart_tx_u1|AT|rom~24_combout\,
	combout => \uart_tx_u1|AT|rom~25_combout\);

-- Location: LCCOMB_X22_Y26_N18
\uart_tx_u1|AT|rom~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~27_combout\ = (\uart_tx_u1|AT|rom~25_combout\) # ((\uart_tx_u1|addr\(4) & (!\uart_tx_u1|addr\(5) & \uart_tx_u1|AT|rom~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|addr\(5),
	datac => \uart_tx_u1|AT|rom~26_combout\,
	datad => \uart_tx_u1|AT|rom~25_combout\,
	combout => \uart_tx_u1|AT|rom~27_combout\);

-- Location: LCCOMB_X22_Y26_N0
\uart_tx_u1|AT|rom~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~28_combout\ = (\uart_tx_u1|AT|rom~22_combout\) # ((\uart_tx_u1|addr\(7) & (!\uart_tx_u1|addr\(6) & \uart_tx_u1|AT|rom~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(7),
	datab => \uart_tx_u1|addr\(6),
	datac => \uart_tx_u1|AT|rom~22_combout\,
	datad => \uart_tx_u1|AT|rom~27_combout\,
	combout => \uart_tx_u1|AT|rom~28_combout\);

-- Location: LCCOMB_X18_Y27_N30
\uart_tx_u1|AT|rom~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~64_combout\ = (\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(3)) # ((\uart_tx_u1|addr\(2) & \uart_tx_u1|addr\(0))))) # (!\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(2)) # ((\uart_tx_u1|addr\(0) & !\uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(0),
	datad => \uart_tx_u1|addr\(3),
	combout => \uart_tx_u1|AT|rom~64_combout\);

-- Location: LCCOMB_X18_Y26_N22
\uart_tx_u1|AT|rom~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~62_combout\ = \uart_tx_u1|addr\(0) $ (((\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(1) & \uart_tx_u1|addr\(3))) # (!\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(1) $ (\uart_tx_u1|addr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(0),
	datad => \uart_tx_u1|addr\(3),
	combout => \uart_tx_u1|AT|rom~62_combout\);

-- Location: LCCOMB_X18_Y26_N28
\uart_tx_u1|AT|rom~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~61_combout\ = (\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(3) $ (((\uart_tx_u1|addr\(2)) # (\uart_tx_u1|addr\(0)))))) # (!\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(2) $ (((\uart_tx_u1|addr\(0) & !\uart_tx_u1|addr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(0),
	datad => \uart_tx_u1|addr\(3),
	combout => \uart_tx_u1|AT|rom~61_combout\);

-- Location: LCCOMB_X18_Y26_N0
\uart_tx_u1|AT|rom~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~63_combout\ = (!\uart_tx_u1|addr\(5) & ((\uart_tx_u1|addr\(4) & ((\uart_tx_u1|AT|rom~61_combout\))) # (!\uart_tx_u1|addr\(4) & (\uart_tx_u1|AT|rom~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(5),
	datab => \uart_tx_u1|addr\(4),
	datac => \uart_tx_u1|AT|rom~62_combout\,
	datad => \uart_tx_u1|AT|rom~61_combout\,
	combout => \uart_tx_u1|AT|rom~63_combout\);

-- Location: LCCOMB_X18_Y27_N8
\uart_tx_u1|AT|rom~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~65_combout\ = (\uart_tx_u1|AT|rom~63_combout\) # ((!\uart_tx_u1|addr\(4) & (\uart_tx_u1|addr\(5) & !\uart_tx_u1|AT|rom~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|addr\(5),
	datac => \uart_tx_u1|AT|rom~64_combout\,
	datad => \uart_tx_u1|AT|rom~63_combout\,
	combout => \uart_tx_u1|AT|rom~65_combout\);

-- Location: LCCOMB_X18_Y27_N12
\uart_tx_u1|AT|rom~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~58_combout\ = (\uart_tx_u1|addr\(3) & (!\uart_tx_u1|addr\(0) & ((\uart_tx_u1|addr\(1)) # (!\uart_tx_u1|addr\(2))))) # (!\uart_tx_u1|addr\(3) & (\uart_tx_u1|addr\(1) $ (((\uart_tx_u1|addr\(2) & \uart_tx_u1|addr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(0),
	combout => \uart_tx_u1|AT|rom~58_combout\);

-- Location: LCCOMB_X18_Y27_N0
\uart_tx_u1|AT|rom~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~54_combout\ = (\uart_tx_u1|addr\(2) & (!\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(3) $ (\uart_tx_u1|addr\(0))))) # (!\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(3) & !\uart_tx_u1|addr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(0),
	combout => \uart_tx_u1|AT|rom~54_combout\);

-- Location: LCCOMB_X18_Y27_N22
\uart_tx_u1|AT|rom~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~55_combout\ = (\uart_tx_u1|addr\(2) & (!\uart_tx_u1|addr\(3) & (\uart_tx_u1|addr\(1) $ (\uart_tx_u1|addr\(0))))) # (!\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(0) & ((!\uart_tx_u1|addr\(3)) # (!\uart_tx_u1|addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(0),
	combout => \uart_tx_u1|AT|rom~55_combout\);

-- Location: LCCOMB_X18_Y27_N20
\uart_tx_u1|AT|rom~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~56_combout\ = (\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(3) & ((\uart_tx_u1|addr\(0)))) # (!\uart_tx_u1|addr\(3) & (!\uart_tx_u1|addr\(1))))) # (!\uart_tx_u1|addr\(2) & (((\uart_tx_u1|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(2),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(0),
	combout => \uart_tx_u1|AT|rom~56_combout\);

-- Location: LCCOMB_X18_Y27_N2
\uart_tx_u1|AT|rom~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~57_combout\ = (\uart_tx_u1|addr\(4) & (\uart_tx_u1|addr\(5))) # (!\uart_tx_u1|addr\(4) & ((\uart_tx_u1|addr\(5) & (\uart_tx_u1|AT|rom~55_combout\)) # (!\uart_tx_u1|addr\(5) & ((!\uart_tx_u1|AT|rom~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|addr\(5),
	datac => \uart_tx_u1|AT|rom~55_combout\,
	datad => \uart_tx_u1|AT|rom~56_combout\,
	combout => \uart_tx_u1|AT|rom~57_combout\);

-- Location: LCCOMB_X18_Y27_N26
\uart_tx_u1|AT|rom~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~59_combout\ = (\uart_tx_u1|addr\(4) & ((\uart_tx_u1|AT|rom~57_combout\ & (!\uart_tx_u1|AT|rom~58_combout\)) # (!\uart_tx_u1|AT|rom~57_combout\ & ((!\uart_tx_u1|AT|rom~54_combout\))))) # (!\uart_tx_u1|addr\(4) & 
-- (((\uart_tx_u1|AT|rom~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|AT|rom~58_combout\,
	datab => \uart_tx_u1|AT|rom~54_combout\,
	datac => \uart_tx_u1|addr\(4),
	datad => \uart_tx_u1|AT|rom~57_combout\,
	combout => \uart_tx_u1|AT|rom~59_combout\);

-- Location: LCCOMB_X18_Y27_N24
\uart_tx_u1|AT|rom~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~48_combout\ = (!\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(4) & (!\uart_tx_u1|addr\(1))) # (!\uart_tx_u1|addr\(4) & (\uart_tx_u1|addr\(1) & \uart_tx_u1|addr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(2),
	datad => \uart_tx_u1|addr\(5),
	combout => \uart_tx_u1|AT|rom~48_combout\);

-- Location: LCCOMB_X18_Y27_N4
\uart_tx_u1|AT|rom~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~52_combout\ = (\uart_tx_u1|addr\(5) & (\uart_tx_u1|addr\(4) $ (((\uart_tx_u1|addr\(1)) # (!\uart_tx_u1|addr\(2)))))) # (!\uart_tx_u1|addr\(5) & ((\uart_tx_u1|addr\(1)) # ((!\uart_tx_u1|addr\(4) & \uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(2),
	datad => \uart_tx_u1|addr\(5),
	combout => \uart_tx_u1|AT|rom~52_combout\);

-- Location: LCCOMB_X18_Y27_N14
\uart_tx_u1|AT|rom~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~49_combout\ = (\uart_tx_u1|addr\(4) & ((\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(2)) # (\uart_tx_u1|addr\(5)))) # (!\uart_tx_u1|addr\(1) & ((!\uart_tx_u1|addr\(5)) # (!\uart_tx_u1|addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(2),
	datad => \uart_tx_u1|addr\(5),
	combout => \uart_tx_u1|AT|rom~49_combout\);

-- Location: LCCOMB_X18_Y27_N28
\uart_tx_u1|AT|rom~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~50_combout\ = (\uart_tx_u1|addr\(4) & ((\uart_tx_u1|addr\(1) & ((!\uart_tx_u1|addr\(5)) # (!\uart_tx_u1|addr\(2)))) # (!\uart_tx_u1|addr\(1) & (!\uart_tx_u1|addr\(2) & !\uart_tx_u1|addr\(5))))) # (!\uart_tx_u1|addr\(4) & 
-- (((\uart_tx_u1|addr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(2),
	datad => \uart_tx_u1|addr\(5),
	combout => \uart_tx_u1|AT|rom~50_combout\);

-- Location: LCCOMB_X18_Y27_N6
\uart_tx_u1|AT|rom~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~51_combout\ = (\uart_tx_u1|addr\(0) & (\uart_tx_u1|addr\(3))) # (!\uart_tx_u1|addr\(0) & ((\uart_tx_u1|addr\(3) & (!\uart_tx_u1|AT|rom~49_combout\)) # (!\uart_tx_u1|addr\(3) & ((!\uart_tx_u1|AT|rom~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datab => \uart_tx_u1|addr\(3),
	datac => \uart_tx_u1|AT|rom~49_combout\,
	datad => \uart_tx_u1|AT|rom~50_combout\,
	combout => \uart_tx_u1|AT|rom~51_combout\);

-- Location: LCCOMB_X18_Y27_N10
\uart_tx_u1|AT|rom~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~53_combout\ = (\uart_tx_u1|addr\(0) & ((\uart_tx_u1|AT|rom~51_combout\ & ((!\uart_tx_u1|AT|rom~52_combout\))) # (!\uart_tx_u1|AT|rom~51_combout\ & (\uart_tx_u1|AT|rom~48_combout\)))) # (!\uart_tx_u1|addr\(0) & 
-- (((\uart_tx_u1|AT|rom~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datab => \uart_tx_u1|AT|rom~48_combout\,
	datac => \uart_tx_u1|AT|rom~52_combout\,
	datad => \uart_tx_u1|AT|rom~51_combout\,
	combout => \uart_tx_u1|AT|rom~53_combout\);

-- Location: LCCOMB_X18_Y27_N16
\uart_tx_u1|AT|rom~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~60_combout\ = (!\uart_tx_u1|addr\(7) & ((\uart_tx_u1|addr\(6) & ((\uart_tx_u1|AT|rom~53_combout\))) # (!\uart_tx_u1|addr\(6) & (\uart_tx_u1|AT|rom~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(6),
	datab => \uart_tx_u1|addr\(7),
	datac => \uart_tx_u1|AT|rom~59_combout\,
	datad => \uart_tx_u1|AT|rom~53_combout\,
	combout => \uart_tx_u1|AT|rom~60_combout\);

-- Location: LCCOMB_X18_Y27_N18
\uart_tx_u1|AT|rom~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~66_combout\ = (\uart_tx_u1|AT|rom~60_combout\) # ((!\uart_tx_u1|addr\(6) & (\uart_tx_u1|addr\(7) & \uart_tx_u1|AT|rom~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(6),
	datab => \uart_tx_u1|addr\(7),
	datac => \uart_tx_u1|AT|rom~65_combout\,
	datad => \uart_tx_u1|AT|rom~60_combout\,
	combout => \uart_tx_u1|AT|rom~66_combout\);

-- Location: LCCOMB_X19_Y26_N26
\uart_tx_u1|AT|rom~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~81_combout\ = (\uart_tx_u1|addr\(0) & ((\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(3)))) # (!\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(2))))) # (!\uart_tx_u1|addr\(0) & (\uart_tx_u1|addr\(3) $ (((\uart_tx_u1|addr\(1) & 
-- !\uart_tx_u1|addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(2),
	datad => \uart_tx_u1|addr\(3),
	combout => \uart_tx_u1|AT|rom~81_combout\);

-- Location: LCCOMB_X18_Y26_N2
\uart_tx_u1|AT|rom~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~80_combout\ = (\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(0) & !\uart_tx_u1|addr\(3))) # (!\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(0) $ (!\uart_tx_u1|addr\(3)))))) # (!\uart_tx_u1|addr\(2) & 
-- ((\uart_tx_u1|addr\(1) & (!\uart_tx_u1|addr\(0) & \uart_tx_u1|addr\(3))) # (!\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(0) & !\uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(0),
	datad => \uart_tx_u1|addr\(3),
	combout => \uart_tx_u1|AT|rom~80_combout\);

-- Location: LCCOMB_X20_Y26_N6
\uart_tx_u1|AT|rom~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~82_combout\ = (!\uart_tx_u1|addr\(4) & ((\uart_tx_u1|addr\(5) & (!\uart_tx_u1|AT|rom~81_combout\)) # (!\uart_tx_u1|addr\(5) & ((!\uart_tx_u1|AT|rom~80_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|addr\(5),
	datac => \uart_tx_u1|AT|rom~81_combout\,
	datad => \uart_tx_u1|AT|rom~80_combout\,
	combout => \uart_tx_u1|AT|rom~82_combout\);

-- Location: LCCOMB_X20_Y26_N8
\uart_tx_u1|AT|rom~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~84_combout\ = (\uart_tx_u1|AT|rom~82_combout\) # ((\uart_tx_u1|addr\(4) & (!\uart_tx_u1|addr\(5) & !\uart_tx_u1|AT|rom~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|addr\(5),
	datac => \uart_tx_u1|AT|rom~83_combout\,
	datad => \uart_tx_u1|AT|rom~82_combout\,
	combout => \uart_tx_u1|AT|rom~84_combout\);

-- Location: LCCOMB_X20_Y26_N24
\uart_tx_u1|AT|rom~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~77_combout\ = (\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(0) & ((\uart_tx_u1|addr\(5)) # (!\uart_tx_u1|addr\(1))))) # (!\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(1) $ (\uart_tx_u1|addr\(0) $ (\uart_tx_u1|addr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(2),
	datac => \uart_tx_u1|addr\(0),
	datad => \uart_tx_u1|addr\(5),
	combout => \uart_tx_u1|AT|rom~77_combout\);

-- Location: LCCOMB_X20_Y26_N30
\uart_tx_u1|AT|rom~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~74_combout\ = (\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(0) & ((\uart_tx_u1|addr\(5)))) # (!\uart_tx_u1|addr\(0) & (!\uart_tx_u1|addr\(2) & !\uart_tx_u1|addr\(5))))) # (!\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(2) & 
-- ((!\uart_tx_u1|addr\(5)))) # (!\uart_tx_u1|addr\(2) & (!\uart_tx_u1|addr\(0) & \uart_tx_u1|addr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(2),
	datac => \uart_tx_u1|addr\(0),
	datad => \uart_tx_u1|addr\(5),
	combout => \uart_tx_u1|AT|rom~74_combout\);

-- Location: LCCOMB_X20_Y26_N20
\uart_tx_u1|AT|rom~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~75_combout\ = (\uart_tx_u1|addr\(5) & (!\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(1) $ (!\uart_tx_u1|addr\(0))))) # (!\uart_tx_u1|addr\(5) & (\uart_tx_u1|addr\(1) & ((!\uart_tx_u1|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(2),
	datac => \uart_tx_u1|addr\(0),
	datad => \uart_tx_u1|addr\(5),
	combout => \uart_tx_u1|AT|rom~75_combout\);

-- Location: LCCOMB_X20_Y26_N22
\uart_tx_u1|AT|rom~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~76_combout\ = (\uart_tx_u1|addr\(4) & (\uart_tx_u1|addr\(3))) # (!\uart_tx_u1|addr\(4) & ((\uart_tx_u1|addr\(3) & (\uart_tx_u1|AT|rom~74_combout\)) # (!\uart_tx_u1|addr\(3) & ((\uart_tx_u1|AT|rom~75_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|addr\(3),
	datac => \uart_tx_u1|AT|rom~74_combout\,
	datad => \uart_tx_u1|AT|rom~75_combout\,
	combout => \uart_tx_u1|AT|rom~76_combout\);

-- Location: LCCOMB_X20_Y26_N0
\uart_tx_u1|AT|rom~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~73_combout\ = (\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(0) $ (((\uart_tx_u1|addr\(2)) # (!\uart_tx_u1|addr\(5)))))) # (!\uart_tx_u1|addr\(1) & (((\uart_tx_u1|addr\(0)) # (\uart_tx_u1|addr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(2),
	datac => \uart_tx_u1|addr\(0),
	datad => \uart_tx_u1|addr\(5),
	combout => \uart_tx_u1|AT|rom~73_combout\);

-- Location: LCCOMB_X20_Y26_N14
\uart_tx_u1|AT|rom~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~78_combout\ = (\uart_tx_u1|addr\(4) & ((\uart_tx_u1|AT|rom~76_combout\ & (\uart_tx_u1|AT|rom~77_combout\)) # (!\uart_tx_u1|AT|rom~76_combout\ & ((!\uart_tx_u1|AT|rom~73_combout\))))) # (!\uart_tx_u1|addr\(4) & 
-- (((\uart_tx_u1|AT|rom~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|AT|rom~77_combout\,
	datac => \uart_tx_u1|AT|rom~76_combout\,
	datad => \uart_tx_u1|AT|rom~73_combout\,
	combout => \uart_tx_u1|AT|rom~78_combout\);

-- Location: LCCOMB_X20_Y26_N12
\uart_tx_u1|AT|rom~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~71_combout\ = (\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(4))))) # (!\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(3) $ (((\uart_tx_u1|addr\(2) & !\uart_tx_u1|addr\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(2),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(4),
	combout => \uart_tx_u1|AT|rom~71_combout\);

-- Location: LCCOMB_X20_Y26_N4
\uart_tx_u1|AT|rom~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~67_combout\ = (\uart_tx_u1|addr\(1) & (\uart_tx_u1|addr\(3) & (\uart_tx_u1|addr\(2) $ (!\uart_tx_u1|addr\(4))))) # (!\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(2) & (!\uart_tx_u1|addr\(3) & !\uart_tx_u1|addr\(4))) # 
-- (!\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(2),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(4),
	combout => \uart_tx_u1|AT|rom~67_combout\);

-- Location: LCCOMB_X20_Y26_N26
\uart_tx_u1|AT|rom~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~68_combout\ = (\uart_tx_u1|addr\(1) & (((!\uart_tx_u1|addr\(4))) # (!\uart_tx_u1|addr\(2)))) # (!\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(3)) # ((\uart_tx_u1|addr\(2) & \uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(2),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(4),
	combout => \uart_tx_u1|AT|rom~68_combout\);

-- Location: LCCOMB_X20_Y26_N16
\uart_tx_u1|AT|rom~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~69_combout\ = (\uart_tx_u1|addr\(3) & (\uart_tx_u1|addr\(2) $ (((\uart_tx_u1|addr\(1)) # (!\uart_tx_u1|addr\(4)))))) # (!\uart_tx_u1|addr\(3) & (!\uart_tx_u1|addr\(4) & (\uart_tx_u1|addr\(1) $ (\uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(2),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(4),
	combout => \uart_tx_u1|AT|rom~69_combout\);

-- Location: LCCOMB_X20_Y26_N2
\uart_tx_u1|AT|rom~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~70_combout\ = (\uart_tx_u1|addr\(0) & ((\uart_tx_u1|addr\(5)) # ((!\uart_tx_u1|AT|rom~68_combout\)))) # (!\uart_tx_u1|addr\(0) & (!\uart_tx_u1|addr\(5) & ((\uart_tx_u1|AT|rom~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datab => \uart_tx_u1|addr\(5),
	datac => \uart_tx_u1|AT|rom~68_combout\,
	datad => \uart_tx_u1|AT|rom~69_combout\,
	combout => \uart_tx_u1|AT|rom~70_combout\);

-- Location: LCCOMB_X20_Y26_N10
\uart_tx_u1|AT|rom~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~72_combout\ = (\uart_tx_u1|addr\(5) & ((\uart_tx_u1|AT|rom~70_combout\ & (\uart_tx_u1|AT|rom~71_combout\)) # (!\uart_tx_u1|AT|rom~70_combout\ & ((!\uart_tx_u1|AT|rom~67_combout\))))) # (!\uart_tx_u1|addr\(5) & 
-- (((\uart_tx_u1|AT|rom~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|AT|rom~71_combout\,
	datab => \uart_tx_u1|addr\(5),
	datac => \uart_tx_u1|AT|rom~67_combout\,
	datad => \uart_tx_u1|AT|rom~70_combout\,
	combout => \uart_tx_u1|AT|rom~72_combout\);

-- Location: LCCOMB_X20_Y26_N28
\uart_tx_u1|AT|rom~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~79_combout\ = (!\uart_tx_u1|addr\(7) & ((\uart_tx_u1|addr\(6) & ((\uart_tx_u1|AT|rom~72_combout\))) # (!\uart_tx_u1|addr\(6) & (\uart_tx_u1|AT|rom~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(6),
	datab => \uart_tx_u1|addr\(7),
	datac => \uart_tx_u1|AT|rom~78_combout\,
	datad => \uart_tx_u1|AT|rom~72_combout\,
	combout => \uart_tx_u1|AT|rom~79_combout\);

-- Location: LCCOMB_X20_Y26_N18
\uart_tx_u1|AT|rom~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~85_combout\ = (\uart_tx_u1|AT|rom~79_combout\) # ((!\uart_tx_u1|addr\(6) & (\uart_tx_u1|addr\(7) & \uart_tx_u1|AT|rom~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(6),
	datab => \uart_tx_u1|addr\(7),
	datac => \uart_tx_u1|AT|rom~84_combout\,
	datad => \uart_tx_u1|AT|rom~79_combout\,
	combout => \uart_tx_u1|AT|rom~85_combout\);

-- Location: LCCOMB_X22_Y27_N12
\uart_tx_u1|AT|rom~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~39_combout\ = (\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(5) $ (!\uart_tx_u1|addr\(2))) # (!\uart_tx_u1|addr\(4)))) # (!\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(5))) # (!\uart_tx_u1|addr\(2) & 
-- ((\uart_tx_u1|addr\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(5),
	datac => \uart_tx_u1|addr\(2),
	datad => \uart_tx_u1|addr\(4),
	combout => \uart_tx_u1|AT|rom~39_combout\);

-- Location: LCCOMB_X22_Y27_N14
\uart_tx_u1|AT|rom~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~36_combout\ = (\uart_tx_u1|addr\(5) & (\uart_tx_u1|addr\(1) $ (((\uart_tx_u1|addr\(2)) # (\uart_tx_u1|addr\(4)))))) # (!\uart_tx_u1|addr\(5) & (((\uart_tx_u1|addr\(1) & \uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(5),
	datac => \uart_tx_u1|addr\(1),
	datad => \uart_tx_u1|addr\(4),
	combout => \uart_tx_u1|AT|rom~36_combout\);

-- Location: LCCOMB_X22_Y27_N28
\uart_tx_u1|AT|rom~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~37_combout\ = (\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(5) $ (!\uart_tx_u1|addr\(1))) # (!\uart_tx_u1|addr\(4)))) # (!\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(5) & ((!\uart_tx_u1|addr\(1)))) # (!\uart_tx_u1|addr\(5) & 
-- ((\uart_tx_u1|addr\(4)) # (\uart_tx_u1|addr\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(4),
	datac => \uart_tx_u1|addr\(5),
	datad => \uart_tx_u1|addr\(1),
	combout => \uart_tx_u1|AT|rom~37_combout\);

-- Location: LCCOMB_X22_Y27_N30
\uart_tx_u1|AT|rom~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~38_combout\ = (\uart_tx_u1|addr\(3) & ((\uart_tx_u1|addr\(0)) # ((\uart_tx_u1|AT|rom~36_combout\)))) # (!\uart_tx_u1|addr\(3) & (!\uart_tx_u1|addr\(0) & ((\uart_tx_u1|AT|rom~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(3),
	datab => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|AT|rom~36_combout\,
	datad => \uart_tx_u1|AT|rom~37_combout\,
	combout => \uart_tx_u1|AT|rom~38_combout\);

-- Location: LCCOMB_X22_Y27_N20
\uart_tx_u1|AT|rom~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~35_combout\ = (\uart_tx_u1|addr\(1) & (!\uart_tx_u1|addr\(5) & ((!\uart_tx_u1|addr\(4))))) # (!\uart_tx_u1|addr\(1) & (((!\uart_tx_u1|addr\(2) & \uart_tx_u1|addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(5),
	datac => \uart_tx_u1|addr\(2),
	datad => \uart_tx_u1|addr\(4),
	combout => \uart_tx_u1|AT|rom~35_combout\);

-- Location: LCCOMB_X22_Y27_N22
\uart_tx_u1|AT|rom~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~40_combout\ = (\uart_tx_u1|addr\(0) & ((\uart_tx_u1|AT|rom~38_combout\ & (!\uart_tx_u1|AT|rom~39_combout\)) # (!\uart_tx_u1|AT|rom~38_combout\ & ((\uart_tx_u1|AT|rom~35_combout\))))) # (!\uart_tx_u1|addr\(0) & 
-- (((\uart_tx_u1|AT|rom~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|AT|rom~39_combout\,
	datab => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|AT|rom~38_combout\,
	datad => \uart_tx_u1|AT|rom~35_combout\,
	combout => \uart_tx_u1|AT|rom~40_combout\);

-- Location: LCCOMB_X22_Y27_N24
\uart_tx_u1|AT|rom~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~33_combout\ = (\uart_tx_u1|addr\(5) & (\uart_tx_u1|addr\(4) & (\uart_tx_u1|addr\(2) & !\uart_tx_u1|addr\(3)))) # (!\uart_tx_u1|addr\(5) & (\uart_tx_u1|addr\(3) & (\uart_tx_u1|addr\(4) $ (\uart_tx_u1|addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|addr\(5),
	datac => \uart_tx_u1|addr\(2),
	datad => \uart_tx_u1|addr\(3),
	combout => \uart_tx_u1|AT|rom~33_combout\);

-- Location: LCCOMB_X22_Y27_N4
\uart_tx_u1|AT|rom~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~29_combout\ = (\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(5) $ (((!\uart_tx_u1|addr\(4) & !\uart_tx_u1|addr\(3)))))) # (!\uart_tx_u1|addr\(2) & (!\uart_tx_u1|addr\(4) & ((\uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(4),
	datac => \uart_tx_u1|addr\(5),
	datad => \uart_tx_u1|addr\(3),
	combout => \uart_tx_u1|AT|rom~29_combout\);

-- Location: LCCOMB_X22_Y27_N26
\uart_tx_u1|AT|rom~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~30_combout\ = (\uart_tx_u1|addr\(5) & ((\uart_tx_u1|addr\(3) & ((\uart_tx_u1|addr\(4)))) # (!\uart_tx_u1|addr\(3) & (!\uart_tx_u1|addr\(2))))) # (!\uart_tx_u1|addr\(5) & (\uart_tx_u1|addr\(4) & ((\uart_tx_u1|addr\(2)) # 
-- (!\uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(4),
	datac => \uart_tx_u1|addr\(5),
	datad => \uart_tx_u1|addr\(3),
	combout => \uart_tx_u1|AT|rom~30_combout\);

-- Location: LCCOMB_X22_Y27_N0
\uart_tx_u1|AT|rom~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~31_combout\ = (\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(4) & (!\uart_tx_u1|addr\(5))) # (!\uart_tx_u1|addr\(4) & ((\uart_tx_u1|addr\(5)) # (\uart_tx_u1|addr\(3)))))) # (!\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(5) $ 
-- (\uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(4),
	datac => \uart_tx_u1|addr\(5),
	datad => \uart_tx_u1|addr\(3),
	combout => \uart_tx_u1|AT|rom~31_combout\);

-- Location: LCCOMB_X22_Y27_N10
\uart_tx_u1|AT|rom~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~32_combout\ = (\uart_tx_u1|addr\(1) & ((\uart_tx_u1|addr\(0)) # ((\uart_tx_u1|AT|rom~30_combout\)))) # (!\uart_tx_u1|addr\(1) & (!\uart_tx_u1|addr\(0) & ((\uart_tx_u1|AT|rom~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|AT|rom~30_combout\,
	datad => \uart_tx_u1|AT|rom~31_combout\,
	combout => \uart_tx_u1|AT|rom~32_combout\);

-- Location: LCCOMB_X22_Y27_N2
\uart_tx_u1|AT|rom~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~34_combout\ = (\uart_tx_u1|addr\(0) & ((\uart_tx_u1|AT|rom~32_combout\ & (\uart_tx_u1|AT|rom~33_combout\)) # (!\uart_tx_u1|AT|rom~32_combout\ & ((\uart_tx_u1|AT|rom~29_combout\))))) # (!\uart_tx_u1|addr\(0) & 
-- (((\uart_tx_u1|AT|rom~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datab => \uart_tx_u1|AT|rom~33_combout\,
	datac => \uart_tx_u1|AT|rom~29_combout\,
	datad => \uart_tx_u1|AT|rom~32_combout\,
	combout => \uart_tx_u1|AT|rom~34_combout\);

-- Location: LCCOMB_X22_Y27_N8
\uart_tx_u1|AT|rom~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~41_combout\ = (!\uart_tx_u1|addr\(7) & ((\uart_tx_u1|addr\(6) & ((\uart_tx_u1|AT|rom~34_combout\))) # (!\uart_tx_u1|addr\(6) & (\uart_tx_u1|AT|rom~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(6),
	datab => \uart_tx_u1|addr\(7),
	datac => \uart_tx_u1|AT|rom~40_combout\,
	datad => \uart_tx_u1|AT|rom~34_combout\,
	combout => \uart_tx_u1|AT|rom~41_combout\);

-- Location: LCCOMB_X21_Y27_N0
\uart_tx_u1|AT|rom~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~45_combout\ = (\uart_tx_u1|addr\(2) & (!\uart_tx_u1|addr\(3) & ((\uart_tx_u1|addr\(0)) # (!\uart_tx_u1|addr\(1))))) # (!\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(3) & ((!\uart_tx_u1|addr\(0)))) # (!\uart_tx_u1|addr\(3) & 
-- (!\uart_tx_u1|addr\(1) & \uart_tx_u1|addr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(1),
	datab => \uart_tx_u1|addr\(2),
	datac => \uart_tx_u1|addr\(3),
	datad => \uart_tx_u1|addr\(0),
	combout => \uart_tx_u1|AT|rom~45_combout\);

-- Location: LCCOMB_X22_Y26_N2
\uart_tx_u1|AT|rom~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~43_combout\ = (\uart_tx_u1|addr\(0) & ((\uart_tx_u1|addr\(2) & ((!\uart_tx_u1|addr\(3)))) # (!\uart_tx_u1|addr\(2) & (\uart_tx_u1|addr\(1) & \uart_tx_u1|addr\(3))))) # (!\uart_tx_u1|addr\(0) & (\uart_tx_u1|addr\(2) $ 
-- (\uart_tx_u1|addr\(1) $ (\uart_tx_u1|addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(2),
	datab => \uart_tx_u1|addr\(0),
	datac => \uart_tx_u1|addr\(1),
	datad => \uart_tx_u1|addr\(3),
	combout => \uart_tx_u1|AT|rom~43_combout\);

-- Location: LCCOMB_X23_Y26_N30
\uart_tx_u1|AT|rom~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~42_combout\ = (\uart_tx_u1|addr\(0) & ((\uart_tx_u1|addr\(2) & (!\uart_tx_u1|addr\(1) & !\uart_tx_u1|addr\(3))) # (!\uart_tx_u1|addr\(2) & ((\uart_tx_u1|addr\(3)))))) # (!\uart_tx_u1|addr\(0) & (\uart_tx_u1|addr\(3) $ 
-- (((\uart_tx_u1|addr\(1) & !\uart_tx_u1|addr\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(0),
	datab => \uart_tx_u1|addr\(1),
	datac => \uart_tx_u1|addr\(2),
	datad => \uart_tx_u1|addr\(3),
	combout => \uart_tx_u1|AT|rom~42_combout\);

-- Location: LCCOMB_X22_Y27_N18
\uart_tx_u1|AT|rom~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~44_combout\ = (!\uart_tx_u1|addr\(5) & ((\uart_tx_u1|addr\(4) & ((\uart_tx_u1|AT|rom~42_combout\))) # (!\uart_tx_u1|addr\(4) & (!\uart_tx_u1|AT|rom~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|addr\(5),
	datac => \uart_tx_u1|AT|rom~43_combout\,
	datad => \uart_tx_u1|AT|rom~42_combout\,
	combout => \uart_tx_u1|AT|rom~44_combout\);

-- Location: LCCOMB_X22_Y27_N16
\uart_tx_u1|AT|rom~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~46_combout\ = (\uart_tx_u1|AT|rom~44_combout\) # ((!\uart_tx_u1|addr\(4) & (\uart_tx_u1|addr\(5) & \uart_tx_u1|AT|rom~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(4),
	datab => \uart_tx_u1|addr\(5),
	datac => \uart_tx_u1|AT|rom~45_combout\,
	datad => \uart_tx_u1|AT|rom~44_combout\,
	combout => \uart_tx_u1|AT|rom~46_combout\);

-- Location: LCCOMB_X22_Y27_N6
\uart_tx_u1|AT|rom~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|AT|rom~47_combout\ = (\uart_tx_u1|AT|rom~41_combout\) # ((!\uart_tx_u1|addr\(6) & (\uart_tx_u1|addr\(7) & \uart_tx_u1|AT|rom~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|addr\(6),
	datab => \uart_tx_u1|addr\(7),
	datac => \uart_tx_u1|AT|rom~41_combout\,
	datad => \uart_tx_u1|AT|rom~46_combout\,
	combout => \uart_tx_u1|AT|rom~47_combout\);

-- Location: LCCOMB_X21_Y27_N4
\uart_tx_u1|Equal4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Equal4~3_combout\ = (\uart_tx_u1|AT|rom~28_combout\) # ((\uart_tx_u1|AT|rom~66_combout\) # ((!\uart_tx_u1|AT|rom~47_combout\) # (!\uart_tx_u1|AT|rom~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|AT|rom~28_combout\,
	datab => \uart_tx_u1|AT|rom~66_combout\,
	datac => \uart_tx_u1|AT|rom~85_combout\,
	datad => \uart_tx_u1|AT|rom~47_combout\,
	combout => \uart_tx_u1|Equal4~3_combout\);

-- Location: LCCOMB_X18_Y24_N20
\uart_tx_u1|receive_ok_en~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|receive_ok_en~0_combout\ = (!\uart_tx_u1|Equal4~3_combout\ & (\uart_tx_u1|stage_tx.STOP~q\ & !\uart_tx_u1|Equal4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Equal4~3_combout\,
	datab => \uart_tx_u1|stage_tx.STOP~q\,
	datac => \uart_tx_u1|Equal4~2_combout\,
	combout => \uart_tx_u1|receive_ok_en~0_combout\);

-- Location: LCCOMB_X22_Y24_N28
\uart_tx_u1|receive_ok_en~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|receive_ok_en~feeder_combout\ = \uart_tx_u1|receive_ok_en~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_tx_u1|receive_ok_en~0_combout\,
	combout => \uart_tx_u1|receive_ok_en~feeder_combout\);

-- Location: FF_X22_Y24_N29
\uart_tx_u1|receive_ok_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|receive_ok_en~feeder_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|receive_ok_en~q\);

-- Location: LCCOMB_X27_Y24_N18
\uart_rx_u2|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|Selector3~1_combout\ = (\uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & (((\uart_rx_u2|cnt_bit\(0)) # (\uart_rx_u2|cnt_bit\(1))) # (!\uart_rx_u2|cnt_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|cnt_bit\(2),
	datab => \uart_rx_u2|cnt_bit\(0),
	datac => \uart_rx_u2|cnt_bit\(1),
	datad => \uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	combout => \uart_rx_u2|Selector3~1_combout\);

-- Location: LCCOMB_X26_Y24_N12
\uart_rx_u2|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|Selector3~0_combout\ = (\uart_rx_u2|Selector0~2_combout\ & (!\uart_rx_u2|cnt_bit\(1) & (!\uart_rx_u2|cnt_bit\(0) & \uart_rx_u2|cnt_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|Selector0~2_combout\,
	datab => \uart_rx_u2|cnt_bit\(1),
	datac => \uart_rx_u2|cnt_bit\(0),
	datad => \uart_rx_u2|cnt_bit\(2),
	combout => \uart_rx_u2|Selector3~0_combout\);

-- Location: LCCOMB_X26_Y24_N22
\uart_rx_u2|Selector3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|Selector3~2_combout\ = (\uart_rx_u2|Selector3~0_combout\) # ((\uart_rx_u2|rx_data\(4) & ((\uart_rx_u2|Selector3~1_combout\) # (\uart_rx_u2|stage_rx.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|Selector3~1_combout\,
	datab => \uart_rx_u2|stage_rx.STOP~q\,
	datac => \uart_rx_u2|rx_data\(4),
	datad => \uart_rx_u2|Selector3~0_combout\,
	combout => \uart_rx_u2|Selector3~2_combout\);

-- Location: FF_X26_Y24_N23
\uart_rx_u2|rx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u2|Selector3~2_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sclr => \uart_rx_u2|ALT_INV_R_receiving~q\,
	ena => \uart_rx_u2|rx_data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|rx_data\(4));

-- Location: LCCOMB_X25_Y24_N10
\uart_rx_u2|rxd[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|rxd[4]~feeder_combout\ = \uart_rx_u2|rx_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_u2|rx_data\(4),
	combout => \uart_rx_u2|rxd[4]~feeder_combout\);

-- Location: FF_X25_Y24_N11
\uart_rx_u2|rxd[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u2|rxd[4]~feeder_combout\,
	ena => \uart_rx_u2|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|rxd\(4));

-- Location: LCCOMB_X27_Y24_N0
\uart_rx_u2|Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|Selector2~2_combout\ = (\uart_rx_u2|stage_rx.STOP~q\) # ((\uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & ((!\uart_rx_u2|Selector2~1_combout\) # (!\uart_rx_u2|cnt_bit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|cnt_bit\(2),
	datab => \uart_rx_u2|stage_rx.STOP~q\,
	datac => \uart_rx_u2|Selector2~1_combout\,
	datad => \uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	combout => \uart_rx_u2|Selector2~2_combout\);

-- Location: LCCOMB_X26_Y24_N16
\uart_rx_u2|Selector2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|Selector2~3_combout\ = (\uart_rx_u2|Selector2~0_combout\ & ((\uart_rx_u2|cnt_bit\(2)) # ((\uart_rx_u2|Selector2~2_combout\ & \uart_rx_u2|rx_data\(5))))) # (!\uart_rx_u2|Selector2~0_combout\ & (\uart_rx_u2|Selector2~2_combout\ & 
-- (\uart_rx_u2|rx_data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|Selector2~0_combout\,
	datab => \uart_rx_u2|Selector2~2_combout\,
	datac => \uart_rx_u2|rx_data\(5),
	datad => \uart_rx_u2|cnt_bit\(2),
	combout => \uart_rx_u2|Selector2~3_combout\);

-- Location: FF_X26_Y24_N17
\uart_rx_u2|rx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u2|Selector2~3_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sclr => \uart_rx_u2|ALT_INV_R_receiving~q\,
	ena => \uart_rx_u2|rx_data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|rx_data\(5));

-- Location: LCCOMB_X25_Y24_N24
\uart_rx_u2|rxd[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|rxd[5]~feeder_combout\ = \uart_rx_u2|rx_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_u2|rx_data\(5),
	combout => \uart_rx_u2|rxd[5]~feeder_combout\);

-- Location: FF_X25_Y24_N25
\uart_rx_u2|rxd[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u2|rxd[5]~feeder_combout\,
	ena => \uart_rx_u2|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|rxd\(5));

-- Location: LCCOMB_X26_Y24_N8
\uart_rx_u2|Selector0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|Selector0~3_combout\ = (\uart_rx_u2|rx_data\(7) & ((\uart_rx_u2|stage_rx.STOP~q\) # ((!\uart_rx_u2|Decoder0~0_combout\ & \uart_rx_u2|stage_rx.RECEIVE_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|Decoder0~0_combout\,
	datab => \uart_rx_u2|stage_rx.STOP~q\,
	datac => \uart_rx_u2|rx_data\(7),
	datad => \uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	combout => \uart_rx_u2|Selector0~3_combout\);

-- Location: LCCOMB_X26_Y24_N30
\uart_rx_u2|Selector0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|Selector0~4_combout\ = (\uart_rx_u2|Selector0~3_combout\) # ((\uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & (\uart_rx_u2|Decoder0~0_combout\ & \rx~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datab => \uart_rx_u2|Selector0~3_combout\,
	datac => \uart_rx_u2|Decoder0~0_combout\,
	datad => \rx~input_o\,
	combout => \uart_rx_u2|Selector0~4_combout\);

-- Location: FF_X26_Y24_N31
\uart_rx_u2|rx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u2|Selector0~4_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sclr => \uart_rx_u2|ALT_INV_R_receiving~q\,
	ena => \uart_rx_u2|rx_data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|rx_data\(7));

-- Location: FF_X25_Y24_N7
\uart_rx_u2|rxd[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \uart_rx_u2|rx_data\(7),
	sload => VCC,
	ena => \uart_rx_u2|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|rxd\(7));

-- Location: LCCOMB_X27_Y24_N10
\uart_rx_u2|Selector4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|Selector4~2_combout\ = (\uart_rx_u2|cnt_bit\(0) & (\uart_rx_u2|cnt_bit\(1) & !\uart_rx_u2|cnt_bit\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_u2|cnt_bit\(0),
	datac => \uart_rx_u2|cnt_bit\(1),
	datad => \uart_rx_u2|cnt_bit\(2),
	combout => \uart_rx_u2|Selector4~2_combout\);

-- Location: LCCOMB_X26_Y24_N24
\uart_rx_u2|Selector4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|Selector4~3_combout\ = (\uart_rx_u2|rx_data\(3) & ((\uart_rx_u2|stage_rx.STOP~q\) # ((\uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & !\uart_rx_u2|Selector4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datab => \uart_rx_u2|rx_data\(3),
	datac => \uart_rx_u2|Selector4~2_combout\,
	datad => \uart_rx_u2|stage_rx.STOP~q\,
	combout => \uart_rx_u2|Selector4~3_combout\);

-- Location: LCCOMB_X26_Y24_N4
\uart_rx_u2|Selector4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|Selector4~4_combout\ = (\uart_rx_u2|Selector4~3_combout\) # ((\uart_rx_u2|stage_rx.RECEIVE_DATA~q\ & (\uart_rx_u2|Selector4~2_combout\ & \rx~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|stage_rx.RECEIVE_DATA~q\,
	datab => \uart_rx_u2|Selector4~3_combout\,
	datac => \uart_rx_u2|Selector4~2_combout\,
	datad => \rx~input_o\,
	combout => \uart_rx_u2|Selector4~4_combout\);

-- Location: FF_X26_Y24_N5
\uart_rx_u2|rx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u2|Selector4~4_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sclr => \uart_rx_u2|ALT_INV_R_receiving~q\,
	ena => \uart_rx_u2|rx_data[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|rx_data\(3));

-- Location: LCCOMB_X25_Y24_N0
\uart_rx_u2|rxd[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_rx_u2|rxd[3]~feeder_combout\ = \uart_rx_u2|rx_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_u2|rx_data\(3),
	combout => \uart_rx_u2|rxd[3]~feeder_combout\);

-- Location: FF_X25_Y24_N1
\uart_rx_u2|rxd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_rx_u2|rxd[3]~feeder_combout\,
	ena => \uart_rx_u2|rxd[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_u2|rxd\(3));

-- Location: LCCOMB_X25_Y24_N6
\receiver_OK_u1|state~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver_OK_u1|state~11_combout\ = (!\uart_rx_u2|rxd\(4) & (!\uart_rx_u2|rxd\(5) & (!\uart_rx_u2|rxd\(7) & \uart_rx_u2|rxd\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|rxd\(4),
	datab => \uart_rx_u2|rxd\(5),
	datac => \uart_rx_u2|rxd\(7),
	datad => \uart_rx_u2|rxd\(3),
	combout => \receiver_OK_u1|state~11_combout\);

-- Location: LCCOMB_X25_Y24_N26
\receiver_OK_u1|state~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver_OK_u1|state~14_combout\ = (\receiver_OK_u1|state~11_combout\ & (\uart_rx_u2|rxd\(0) & (\uart_rx_u2|rxd\(6) & \uart_rx_u2|rxd\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_OK_u1|state~11_combout\,
	datab => \uart_rx_u2|rxd\(0),
	datac => \uart_rx_u2|rxd\(6),
	datad => \uart_rx_u2|rxd\(1),
	combout => \receiver_OK_u1|state~14_combout\);

-- Location: LCCOMB_X25_Y24_N22
\receiver_OK_u1|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver_OK_u1|Selector0~0_combout\ = (\receiver_OK_u1|state~16_combout\) # ((\receiver_OK_u1|state~15_combout\) # (\receiver_OK_u1|state~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \receiver_OK_u1|state~16_combout\,
	datac => \receiver_OK_u1|state~15_combout\,
	datad => \receiver_OK_u1|state~13_combout\,
	combout => \receiver_OK_u1|Selector0~0_combout\);

-- Location: FF_X25_Y24_N23
\receiver_OK_u1|state.000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \receiver_OK_u1|Selector0~0_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \uart_rx_u2|RECEIVE_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_OK_u1|state.000~q\);

-- Location: LCCOMB_X25_Y24_N4
\receiver_OK_u1|state~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver_OK_u1|state~16_combout\ = (\receiver_OK_u1|state~14_combout\ & (\uart_rx_u2|rxd\(2) & !\receiver_OK_u1|state.000~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_OK_u1|state~14_combout\,
	datab => \uart_rx_u2|rxd\(2),
	datac => \receiver_OK_u1|state.000~q\,
	combout => \receiver_OK_u1|state~16_combout\);

-- Location: FF_X25_Y24_N9
\receiver_OK_u1|state.001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \receiver_OK_u1|state~16_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \uart_rx_u2|RECEIVE_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_OK_u1|state.001~q\);

-- Location: LCCOMB_X25_Y24_N8
\receiver_OK_u1|state~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver_OK_u1|state~15_combout\ = (\receiver_OK_u1|state~14_combout\ & (!\uart_rx_u2|rxd\(2) & \receiver_OK_u1|state.001~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_OK_u1|state~14_combout\,
	datab => \uart_rx_u2|rxd\(2),
	datac => \receiver_OK_u1|state.001~q\,
	combout => \receiver_OK_u1|state~15_combout\);

-- Location: FF_X25_Y24_N3
\receiver_OK_u1|state.010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \receiver_OK_u1|state~15_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \uart_rx_u2|RECEIVE_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_OK_u1|state.010~q\);

-- Location: LCCOMB_X25_Y24_N2
\receiver_OK_u1|state~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver_OK_u1|state~12_combout\ = (\uart_rx_u2|rxd\(2) & (\uart_rx_u2|rxd\(0) & (\receiver_OK_u1|state.010~q\ & !\uart_rx_u2|rxd\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|rxd\(2),
	datab => \uart_rx_u2|rxd\(0),
	datac => \receiver_OK_u1|state.010~q\,
	datad => \uart_rx_u2|rxd\(1),
	combout => \receiver_OK_u1|state~12_combout\);

-- Location: LCCOMB_X25_Y24_N12
\receiver_OK_u1|state~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver_OK_u1|state~13_combout\ = (\receiver_OK_u1|state~12_combout\ & (!\uart_rx_u2|rxd\(6) & \receiver_OK_u1|state~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \receiver_OK_u1|state~12_combout\,
	datac => \uart_rx_u2|rxd\(6),
	datad => \receiver_OK_u1|state~11_combout\,
	combout => \receiver_OK_u1|state~13_combout\);

-- Location: FF_X23_Y24_N3
\receiver_OK_u1|state.011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \receiver_OK_u1|state~13_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \uart_rx_u2|RECEIVE_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_OK_u1|state.011~q\);

-- Location: LCCOMB_X23_Y24_N2
\receiver_OK_u1|OK~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver_OK_u1|OK~2_combout\ = (\uart_rx_u2|RECEIVE_END~q\ & (((\receiver_OK_u1|state.011~q\)))) # (!\uart_rx_u2|RECEIVE_END~q\ & (\uart_tx_u1|receive_ok_en~q\ & ((\receiver_OK_u1|OK~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_u2|RECEIVE_END~q\,
	datab => \uart_tx_u1|receive_ok_en~q\,
	datac => \receiver_OK_u1|state.011~q\,
	datad => \receiver_OK_u1|OK~q\,
	combout => \receiver_OK_u1|OK~2_combout\);

-- Location: LCCOMB_X23_Y24_N20
\receiver_OK_u1|OK~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \receiver_OK_u1|OK~3_combout\ = (\receiver_OK_u1|OK~2_combout\ & ((\receiver_OK_u1|OK~q\) # ((\receiver_OK_u1|OK~1_combout\ & \receiver_OK_u1|state~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_OK_u1|OK~1_combout\,
	datab => \receiver_OK_u1|OK~2_combout\,
	datac => \receiver_OK_u1|OK~q\,
	datad => \receiver_OK_u1|state~11_combout\,
	combout => \receiver_OK_u1|OK~3_combout\);

-- Location: FF_X23_Y24_N21
\receiver_OK_u1|OK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \receiver_OK_u1|OK~3_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_OK_u1|OK~q\);

-- Location: LCCOMB_X18_Y23_N26
\uart_tx_u1|SEND_END_cmd~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|SEND_END_cmd~feeder_combout\ = \uart_tx_u1|always0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_tx_u1|always0~5_combout\,
	combout => \uart_tx_u1|SEND_END_cmd~feeder_combout\);

-- Location: FF_X18_Y23_N27
\uart_tx_u1|SEND_END_cmd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|SEND_END_cmd~feeder_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|SEND_END_cmd~q\);

-- Location: LCCOMB_X18_Y23_N0
\uart_tx_u1|btn~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|btn~0_combout\ = ((\uart_tx_u1|btn~q\ & ((!\uart_tx_u1|cnt_rom\(1)) # (!\uart_tx_u1|always0~5_combout\)))) # (!\select_w~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|always0~5_combout\,
	datab => \uart_tx_u1|cnt_rom\(1),
	datac => \uart_tx_u1|btn~q\,
	datad => \select_w~input_o\,
	combout => \uart_tx_u1|btn~0_combout\);

-- Location: FF_X18_Y23_N1
\uart_tx_u1|btn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|btn~0_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|btn~q\);

-- Location: LCCOMB_X18_Y23_N10
\uart_tx_u1|SEND_DATA_en~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|SEND_DATA_en~0_combout\ = (!\uart_tx_u1|btn~q\ & ((\uart_tx_u1|SEND_END_cmd~q\) # (\uart_tx_u1|SEND_DATA_en~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|SEND_END_cmd~q\,
	datac => \uart_tx_u1|SEND_DATA_en~q\,
	datad => \uart_tx_u1|btn~q\,
	combout => \uart_tx_u1|SEND_DATA_en~0_combout\);

-- Location: FF_X18_Y23_N11
\uart_tx_u1|SEND_DATA_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|SEND_DATA_en~0_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|SEND_DATA_en~q\);

-- Location: LCCOMB_X19_Y24_N12
\uart_tx_u1|always0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|always0~1_combout\ = (!\uart_tx_u1|SEND_DATA_en~q\ & (!\uart_tx_u1|Equal3~2_combout\ & ((\receiver_OK_u1|OK~q\) # (\uart_tx_u1|Equal4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_OK_u1|OK~q\,
	datab => \uart_tx_u1|SEND_DATA_en~q\,
	datac => \uart_tx_u1|Equal3~2_combout\,
	datad => \uart_tx_u1|Equal4~4_combout\,
	combout => \uart_tx_u1|always0~1_combout\);

-- Location: LCCOMB_X20_Y24_N28
\uart_tx_u1|Selector2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector2~3_combout\ = (\uart_tx_u1|always0~1_combout\ & (\uart_tx_u1|always0~0_combout\ & ((\uart_tx_u1|stage_tx.SEND_DATA~q\)))) # (!\uart_tx_u1|always0~1_combout\ & ((\uart_tx_u1|stage_tx.STOP~q\) # ((\uart_tx_u1|always0~0_combout\ & 
-- \uart_tx_u1|stage_tx.SEND_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|always0~1_combout\,
	datab => \uart_tx_u1|always0~0_combout\,
	datac => \uart_tx_u1|stage_tx.STOP~q\,
	datad => \uart_tx_u1|stage_tx.SEND_DATA~q\,
	combout => \uart_tx_u1|Selector2~3_combout\);

-- Location: FF_X20_Y24_N29
\uart_tx_u1|stage_tx.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector2~3_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \tx_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|stage_tx.STOP~q\);

-- Location: LCCOMB_X18_Y25_N8
\uart_tx_u1|stage_tx.IDLE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|stage_tx.IDLE~0_combout\ = (\uart_tx_u1|stage_tx.IDLE~q\) # ((!\uart_tx_u1|Equal3~2_combout\ & \tx_en~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Equal3~2_combout\,
	datac => \uart_tx_u1|stage_tx.IDLE~q\,
	datad => \tx_en~input_o\,
	combout => \uart_tx_u1|stage_tx.IDLE~0_combout\);

-- Location: FF_X18_Y25_N9
\uart_tx_u1|stage_tx.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|stage_tx.IDLE~0_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|stage_tx.IDLE~q\);

-- Location: LCCOMB_X18_Y25_N26
\uart_tx_u1|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector0~0_combout\ = (\uart_tx_u1|Equal3~2_combout\ & ((\uart_tx_u1|stage_tx.START~q\))) # (!\uart_tx_u1|Equal3~2_combout\ & (!\uart_tx_u1|stage_tx.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Equal3~2_combout\,
	datac => \uart_tx_u1|stage_tx.IDLE~q\,
	datad => \uart_tx_u1|stage_tx.START~q\,
	combout => \uart_tx_u1|Selector0~0_combout\);

-- Location: LCCOMB_X18_Y25_N28
\uart_tx_u1|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector0~1_combout\ = (\uart_tx_u1|Selector0~0_combout\) # ((\uart_tx_u1|stage_tx.STOP~q\ & \uart_tx_u1|always0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|stage_tx.STOP~q\,
	datac => \uart_tx_u1|Selector0~0_combout\,
	datad => \uart_tx_u1|always0~1_combout\,
	combout => \uart_tx_u1|Selector0~1_combout\);

-- Location: FF_X18_Y25_N29
\uart_tx_u1|stage_tx.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector0~1_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \tx_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|stage_tx.START~q\);

-- Location: LCCOMB_X18_Y25_N30
\uart_tx_u1|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector1~0_combout\ = (\uart_tx_u1|Equal3~2_combout\ & (!\uart_tx_u1|always0~0_combout\ & (\uart_tx_u1|stage_tx.SEND_DATA~q\))) # (!\uart_tx_u1|Equal3~2_combout\ & ((\uart_tx_u1|stage_tx.START~q\) # ((!\uart_tx_u1|always0~0_combout\ & 
-- \uart_tx_u1|stage_tx.SEND_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Equal3~2_combout\,
	datab => \uart_tx_u1|always0~0_combout\,
	datac => \uart_tx_u1|stage_tx.SEND_DATA~q\,
	datad => \uart_tx_u1|stage_tx.START~q\,
	combout => \uart_tx_u1|Selector1~0_combout\);

-- Location: FF_X18_Y25_N31
\uart_tx_u1|stage_tx.SEND_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector1~0_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	ena => \tx_en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|stage_tx.SEND_DATA~q\);

-- Location: LCCOMB_X18_Y25_N20
\uart_tx_u1|tx~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|tx~0_combout\ = (!\uart_tx_u1|stage_tx.SEND_DATA~q\ & ((\uart_tx_u1|stage_tx.STOP~q\) # (!\uart_tx_u1|tx~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|stage_tx.SEND_DATA~q\,
	datab => \uart_tx_u1|tx~q\,
	datad => \uart_tx_u1|stage_tx.STOP~q\,
	combout => \uart_tx_u1|tx~0_combout\);

-- Location: LCCOMB_X17_Y27_N12
\uart_tx_u1|tx~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|tx~1_combout\ = (!\uart_tx_u1|cnt_bit\(1) & ((\uart_tx_u1|cnt_bit\(0) & ((\uart_tx_u1|AT|rom~102_combout\))) # (!\uart_tx_u1|cnt_bit\(0) & (\uart_tx_u1|AT|rom~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|AT|rom~128_combout\,
	datab => \uart_tx_u1|cnt_bit\(1),
	datac => \uart_tx_u1|AT|rom~102_combout\,
	datad => \uart_tx_u1|cnt_bit\(0),
	combout => \uart_tx_u1|tx~1_combout\);

-- Location: LCCOMB_X17_Y27_N22
\uart_tx_u1|tx~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|tx~2_combout\ = (!\uart_tx_u1|cnt_bit\(0) & (\uart_tx_u1|cnt_bit\(1) & \uart_tx_u1|AT|rom~124_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|cnt_bit\(0),
	datac => \uart_tx_u1|cnt_bit\(1),
	datad => \uart_tx_u1|AT|rom~124_combout\,
	combout => \uart_tx_u1|tx~2_combout\);

-- Location: LCCOMB_X17_Y27_N0
\uart_tx_u1|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Mux8~0_combout\ = (\uart_tx_u1|cnt_bit\(0) & (((\uart_tx_u1|cnt_bit\(1)) # (\uart_tx_u1|AT|rom~47_combout\)))) # (!\uart_tx_u1|cnt_bit\(0) & (\uart_tx_u1|AT|rom~66_combout\ & (!\uart_tx_u1|cnt_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|AT|rom~66_combout\,
	datab => \uart_tx_u1|cnt_bit\(0),
	datac => \uart_tx_u1|cnt_bit\(1),
	datad => \uart_tx_u1|AT|rom~47_combout\,
	combout => \uart_tx_u1|Mux8~0_combout\);

-- Location: LCCOMB_X17_Y27_N2
\uart_tx_u1|Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Mux8~1_combout\ = (\uart_tx_u1|cnt_bit\(1) & ((\uart_tx_u1|Mux8~0_combout\ & (\uart_tx_u1|AT|rom~85_combout\)) # (!\uart_tx_u1|Mux8~0_combout\ & ((\uart_tx_u1|AT|rom~28_combout\))))) # (!\uart_tx_u1|cnt_bit\(1) & 
-- (((\uart_tx_u1|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|AT|rom~85_combout\,
	datab => \uart_tx_u1|cnt_bit\(1),
	datac => \uart_tx_u1|AT|rom~28_combout\,
	datad => \uart_tx_u1|Mux8~0_combout\,
	combout => \uart_tx_u1|Mux8~1_combout\);

-- Location: LCCOMB_X17_Y27_N28
\uart_tx_u1|tx~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|tx~3_combout\ = (\uart_tx_u1|cnt_bit\(2) & ((\uart_tx_u1|tx~1_combout\) # ((\uart_tx_u1|tx~2_combout\)))) # (!\uart_tx_u1|cnt_bit\(2) & (((\uart_tx_u1|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|tx~1_combout\,
	datab => \uart_tx_u1|cnt_bit\(2),
	datac => \uart_tx_u1|tx~2_combout\,
	datad => \uart_tx_u1|Mux8~1_combout\,
	combout => \uart_tx_u1|tx~3_combout\);

-- Location: LCCOMB_X18_Y25_N0
\uart_tx_u1|tx~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|tx~4_combout\ = (\uart_tx_u1|stage_tx.START~q\) # ((!\uart_tx_u1|tx~0_combout\ & ((!\uart_tx_u1|tx~3_combout\) # (!\uart_tx_u1|stage_tx.SEND_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|stage_tx.SEND_DATA~q\,
	datab => \uart_tx_u1|tx~0_combout\,
	datac => \uart_tx_u1|tx~3_combout\,
	datad => \uart_tx_u1|stage_tx.START~q\,
	combout => \uart_tx_u1|tx~4_combout\);

-- Location: FF_X18_Y25_N1
\uart_tx_u1|tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \uart_tx_u1|tx~4_combout\,
	clrn => \RST_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|tx~q\);

ww_tx <= \tx~output_o\;

ww_Client_wifi_txd <= \Client_wifi_txd~output_o\;

ww_RST_WiFi <= \RST_WiFi~output_o\;
END structure;


