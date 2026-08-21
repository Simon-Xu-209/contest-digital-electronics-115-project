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

-- DATE "08/21/2026 09:38:48"

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
	clk : IN std_logic;
	rst_n : IN std_logic;
	column : IN std_logic_vector(2 DOWNTO 0);
	row : OUT std_logic_vector(2 DOWNTO 0);
	rx : IN std_logic;
	tx : OUT std_logic;
	Client_WiFi_txd : OUT std_logic;
	RST_WiFi : OUT std_logic
	);
END UART_Client;

-- Design Ports Information
-- row[0]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[1]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[2]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx	=>  Location: PIN_164,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Client_WiFi_txd	=>  Location: PIN_166,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST_WiFi	=>  Location: PIN_160,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx	=>  Location: PIN_161,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_149,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_145,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[1]	=>  Location: PIN_63,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[0]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[2]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_column : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_row : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_rx : std_logic;
SIGNAL ww_tx : std_logic;
SIGNAL ww_Client_WiFi_txd : std_logic;
SIGNAL ww_RST_WiFi : std_logic;
SIGNAL \u_button_3x3|clk_cnt[18]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \row[0]~output_o\ : std_logic;
SIGNAL \row[1]~output_o\ : std_logic;
SIGNAL \row[2]~output_o\ : std_logic;
SIGNAL \tx~output_o\ : std_logic;
SIGNAL \Client_WiFi_txd~output_o\ : std_logic;
SIGNAL \RST_WiFi~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[0]~54_combout\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[1]~18_combout\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[1]~19\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[2]~20_combout\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[2]~21\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[3]~22_combout\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[3]~23\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[4]~24_combout\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[4]~25\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[5]~26_combout\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[5]~27\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[6]~28_combout\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[6]~29\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[7]~30_combout\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[7]~31\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[8]~32_combout\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[8]~33\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[9]~34_combout\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[9]~35\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[10]~36_combout\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[10]~37\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[11]~38_combout\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[11]~39\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[12]~40_combout\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[12]~41\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[13]~42_combout\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[13]~43\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[14]~44_combout\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[14]~45\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[15]~46_combout\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[15]~47\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[16]~48_combout\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[16]~49\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[17]~50_combout\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[17]~51\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[18]~52_combout\ : std_logic;
SIGNAL \u_button_3x3|clk_cnt[18]~clkctrl_outclk\ : std_logic;
SIGNAL \u_button_3x3|bond[1]~feeder_combout\ : std_logic;
SIGNAL \column[1]~input_o\ : std_logic;
SIGNAL \column[2]~input_o\ : std_logic;
SIGNAL \column[0]~input_o\ : std_logic;
SIGNAL \u_button_3x3|Equal0~0_combout\ : std_logic;
SIGNAL \u_button_3x3|Mux6~0_combout\ : std_logic;
SIGNAL \u_button_3x3|bond[0]~0_combout\ : std_logic;
SIGNAL \u_button_3x3|key~0_combout\ : std_logic;
SIGNAL \u_button_3x3|row[0]~1_combout\ : std_logic;
SIGNAL \u_button_3x3|row[0]~0_combout\ : std_logic;
SIGNAL \u_button_3x3|row[2]~2_combout\ : std_logic;
SIGNAL \u_tx|baud_cnt[0]~16_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add2~91_combout\ : std_logic;
SIGNAL \rx~input_o\ : std_logic;
SIGNAL \u_rx|rx_sync1~0_combout\ : std_logic;
SIGNAL \u_rx|rx_sync1~q\ : std_logic;
SIGNAL \u_rx|rx_sync2~q\ : std_logic;
SIGNAL \u_rx|clk_cnt[0]~17_combout\ : std_logic;
SIGNAL \u_rx|Equal0~2_combout\ : std_logic;
SIGNAL \u_rx|clk_cnt[8]~38\ : std_logic;
SIGNAL \u_rx|clk_cnt[9]~39_combout\ : std_logic;
SIGNAL \u_rx|clk_cnt[9]~40\ : std_logic;
SIGNAL \u_rx|clk_cnt[10]~41_combout\ : std_logic;
SIGNAL \u_rx|clk_cnt[10]~42\ : std_logic;
SIGNAL \u_rx|clk_cnt[11]~43_combout\ : std_logic;
SIGNAL \u_rx|clk_cnt[11]~44\ : std_logic;
SIGNAL \u_rx|clk_cnt[12]~45_combout\ : std_logic;
SIGNAL \u_rx|clk_cnt[12]~46\ : std_logic;
SIGNAL \u_rx|clk_cnt[13]~47_combout\ : std_logic;
SIGNAL \u_rx|clk_cnt[13]~48\ : std_logic;
SIGNAL \u_rx|clk_cnt[14]~49_combout\ : std_logic;
SIGNAL \u_rx|clk_cnt[14]~50\ : std_logic;
SIGNAL \u_rx|clk_cnt[15]~51_combout\ : std_logic;
SIGNAL \u_rx|Equal0~1_combout\ : std_logic;
SIGNAL \u_rx|Equal0~0_combout\ : std_logic;
SIGNAL \u_rx|Equal0~3_combout\ : std_logic;
SIGNAL \u_rx|Equal2~0_combout\ : std_logic;
SIGNAL \u_rx|clk_cnt[13]~16_combout\ : std_logic;
SIGNAL \u_rx|Selector20~0_combout\ : std_logic;
SIGNAL \u_rx|Equal2~1_combout\ : std_logic;
SIGNAL \u_rx|Selector22~2_combout\ : std_logic;
SIGNAL \u_rx|state.S_STOP~q\ : std_logic;
SIGNAL \u_rx|Selector17~0_combout\ : std_logic;
SIGNAL \u_rx|Selector17~1_combout\ : std_logic;
SIGNAL \u_rx|Selector16~0_combout\ : std_logic;
SIGNAL \u_rx|Selector16~1_combout\ : std_logic;
SIGNAL \u_rx|Selector16~2_combout\ : std_logic;
SIGNAL \u_rx|Selector22~1_combout\ : std_logic;
SIGNAL \u_rx|Equal0~4_combout\ : std_logic;
SIGNAL \u_rx|Equal0~5_combout\ : std_logic;
SIGNAL \u_rx|Selector19~0_combout\ : std_logic;
SIGNAL \u_rx|Selector19~1_combout\ : std_logic;
SIGNAL \u_rx|Selector20~1_combout\ : std_logic;
SIGNAL \u_rx|Selector20~2_combout\ : std_logic;
SIGNAL \u_rx|state.S_START~q\ : std_logic;
SIGNAL \u_rx|Selector19~2_combout\ : std_logic;
SIGNAL \u_rx|clk_cnt[13]~19_combout\ : std_logic;
SIGNAL \u_rx|clk_cnt[0]~18\ : std_logic;
SIGNAL \u_rx|clk_cnt[1]~23_combout\ : std_logic;
SIGNAL \u_rx|clk_cnt[1]~24\ : std_logic;
SIGNAL \u_rx|clk_cnt[2]~25_combout\ : std_logic;
SIGNAL \u_rx|clk_cnt[2]~26\ : std_logic;
SIGNAL \u_rx|clk_cnt[3]~27_combout\ : std_logic;
SIGNAL \u_rx|clk_cnt[3]~28\ : std_logic;
SIGNAL \u_rx|clk_cnt[4]~29_combout\ : std_logic;
SIGNAL \u_rx|clk_cnt[4]~30\ : std_logic;
SIGNAL \u_rx|clk_cnt[5]~31_combout\ : std_logic;
SIGNAL \u_rx|clk_cnt[5]~32\ : std_logic;
SIGNAL \u_rx|clk_cnt[6]~33_combout\ : std_logic;
SIGNAL \u_rx|clk_cnt[6]~34\ : std_logic;
SIGNAL \u_rx|clk_cnt[7]~35_combout\ : std_logic;
SIGNAL \u_rx|clk_cnt[7]~36\ : std_logic;
SIGNAL \u_rx|clk_cnt[8]~37_combout\ : std_logic;
SIGNAL \u_rx|clk_cnt[13]~20_combout\ : std_logic;
SIGNAL \u_rx|clk_cnt[13]~21_combout\ : std_logic;
SIGNAL \u_rx|clk_cnt[13]~22_combout\ : std_logic;
SIGNAL \u_rx|Selector19~4_combout\ : std_logic;
SIGNAL \u_rx|state.S_IDLE~q\ : std_logic;
SIGNAL \u_rx|Selector19~3_combout\ : std_logic;
SIGNAL \u_rx|Selector21~0_combout\ : std_logic;
SIGNAL \u_rx|Selector21~1_combout\ : std_logic;
SIGNAL \u_rx|state.S_DATA~q\ : std_logic;
SIGNAL \u_rx|Selector18~0_combout\ : std_logic;
SIGNAL \u_rx|Selector18~1_combout\ : std_logic;
SIGNAL \u_rx|Decoder0~0_combout\ : std_logic;
SIGNAL \u_rx|rx_shift_reg[3]~0_combout\ : std_logic;
SIGNAL \u_rx|rx_data[3]~feeder_combout\ : std_logic;
SIGNAL \u_rx|Decoder0~3_combout\ : std_logic;
SIGNAL \u_rx|rx_shift_reg[4]~3_combout\ : std_logic;
SIGNAL \u_rx|rx_data[4]~feeder_combout\ : std_logic;
SIGNAL \u_rx|Decoder0~1_combout\ : std_logic;
SIGNAL \u_rx|rx_shift_reg[7]~1_combout\ : std_logic;
SIGNAL \u_rx|Decoder0~2_combout\ : std_logic;
SIGNAL \u_rx|rx_shift_reg[5]~2_combout\ : std_logic;
SIGNAL \u_rx|rx_data[5]~feeder_combout\ : std_logic;
SIGNAL \u_receiver_ok|Equal0~0_combout\ : std_logic;
SIGNAL \u_rx|Decoder0~4_combout\ : std_logic;
SIGNAL \u_rx|rx_shift_reg[1]~4_combout\ : std_logic;
SIGNAL \u_rx|rx_data[1]~feeder_combout\ : std_logic;
SIGNAL \u_rx|Decoder0~5_combout\ : std_logic;
SIGNAL \u_rx|rx_shift_reg[2]~5_combout\ : std_logic;
SIGNAL \u_rx|rx_data[2]~feeder_combout\ : std_logic;
SIGNAL \u_rx|Decoder0~7_combout\ : std_logic;
SIGNAL \u_rx|rx_shift_reg[6]~7_combout\ : std_logic;
SIGNAL \u_rx|rx_data[6]~feeder_combout\ : std_logic;
SIGNAL \u_rx|Decoder0~6_combout\ : std_logic;
SIGNAL \u_rx|rx_shift_reg[0]~6_combout\ : std_logic;
SIGNAL \u_rx|rx_data[0]~feeder_combout\ : std_logic;
SIGNAL \u_receiver_ok|OK~1_combout\ : std_logic;
SIGNAL \always2~0_combout\ : std_logic;
SIGNAL \rst_cnt[0]~60_combout\ : std_logic;
SIGNAL \rst_cnt[1]~20_combout\ : std_logic;
SIGNAL \rst_cnt[1]~21\ : std_logic;
SIGNAL \rst_cnt[2]~22_combout\ : std_logic;
SIGNAL \rst_cnt[2]~23\ : std_logic;
SIGNAL \rst_cnt[3]~24_combout\ : std_logic;
SIGNAL \rst_cnt[3]~25\ : std_logic;
SIGNAL \rst_cnt[4]~26_combout\ : std_logic;
SIGNAL \rst_cnt[4]~27\ : std_logic;
SIGNAL \rst_cnt[5]~28_combout\ : std_logic;
SIGNAL \rst_cnt[5]~29\ : std_logic;
SIGNAL \rst_cnt[6]~30_combout\ : std_logic;
SIGNAL \rst_cnt[6]~31\ : std_logic;
SIGNAL \rst_cnt[7]~32_combout\ : std_logic;
SIGNAL \rst_cnt[7]~33\ : std_logic;
SIGNAL \rst_cnt[8]~34_combout\ : std_logic;
SIGNAL \rst_cnt[8]~35\ : std_logic;
SIGNAL \rst_cnt[9]~36_combout\ : std_logic;
SIGNAL \rst_cnt[9]~37\ : std_logic;
SIGNAL \rst_cnt[10]~38_combout\ : std_logic;
SIGNAL \rst_cnt[10]~39\ : std_logic;
SIGNAL \rst_cnt[11]~40_combout\ : std_logic;
SIGNAL \rst_cnt[11]~41\ : std_logic;
SIGNAL \rst_cnt[12]~42_combout\ : std_logic;
SIGNAL \rst_cnt[12]~43\ : std_logic;
SIGNAL \rst_cnt[13]~44_combout\ : std_logic;
SIGNAL \rst_cnt[13]~45\ : std_logic;
SIGNAL \rst_cnt[14]~46_combout\ : std_logic;
SIGNAL \rst_cnt[14]~47\ : std_logic;
SIGNAL \rst_cnt[15]~48_combout\ : std_logic;
SIGNAL \rst_cnt[15]~49\ : std_logic;
SIGNAL \rst_cnt[16]~50_combout\ : std_logic;
SIGNAL \rst_cnt[16]~51\ : std_logic;
SIGNAL \rst_cnt[17]~52_combout\ : std_logic;
SIGNAL \rst_cnt[17]~53\ : std_logic;
SIGNAL \rst_cnt[18]~54_combout\ : std_logic;
SIGNAL \rst_cnt[18]~55\ : std_logic;
SIGNAL \rst_cnt[19]~56_combout\ : std_logic;
SIGNAL \rst_cnt[19]~57\ : std_logic;
SIGNAL \rst_cnt[20]~58_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \wifi_rst_done~0_combout\ : std_logic;
SIGNAL \wifi_rst_done~q\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \u_button_3x3|pressed~0_combout\ : std_logic;
SIGNAL \u_button_3x3|pressed~q\ : std_logic;
SIGNAL \pressed_d1~q\ : std_logic;
SIGNAL \pressed_d2~q\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \Selector29~1_combout\ : std_logic;
SIGNAL \Selector29~4_combout\ : std_logic;
SIGNAL \state.S_AT_RST~q\ : std_logic;
SIGNAL \delay_cnt[27]~93_combout\ : std_logic;
SIGNAL \Selector29~3_combout\ : std_logic;
SIGNAL \Selector29~5_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \state.S_CIPSEND~q\ : std_logic;
SIGNAL \delay_cnt[27]~92_combout\ : std_logic;
SIGNAL \Selector423~0_combout\ : std_logic;
SIGNAL \Selector423~1_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \state.S_CIPSTART~q\ : std_logic;
SIGNAL \delay_cnt[27]~84_combout\ : std_logic;
SIGNAL \delay_cnt[27]~85_combout\ : std_logic;
SIGNAL \Selector524~2_combout\ : std_logic;
SIGNAL \Selector524~3_combout\ : std_logic;
SIGNAL \Selector524~4_combout\ : std_logic;
SIGNAL \Selector30~1_combout\ : std_logic;
SIGNAL \state.S_CWMODE~q\ : std_logic;
SIGNAL \Selector447~2_combout\ : std_logic;
SIGNAL \Selector500~0_combout\ : std_logic;
SIGNAL \Selector500~1_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \state.S_CWJAP~q\ : std_logic;
SIGNAL \Selector491~0_combout\ : std_logic;
SIGNAL \Selector445~0_combout\ : std_logic;
SIGNAL \Selector445~1_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \state.S_SEND_DATA~q\ : std_logic;
SIGNAL \delay_cnt[27]~86_combout\ : std_logic;
SIGNAL \Selector551~0_combout\ : std_logic;
SIGNAL \receive_ok_en~q\ : std_logic;
SIGNAL \u_rx|rx_done~q\ : std_logic;
SIGNAL \u_receiver_ok|state~18_combout\ : std_logic;
SIGNAL \u_receiver_ok|Equal0~1_combout\ : std_logic;
SIGNAL \u_receiver_ok|state~19_combout\ : std_logic;
SIGNAL \u_receiver_ok|state~20_combout\ : std_logic;
SIGNAL \u_receiver_ok|state.000~q\ : std_logic;
SIGNAL \u_receiver_ok|state~16_combout\ : std_logic;
SIGNAL \u_receiver_ok|state~17_combout\ : std_logic;
SIGNAL \u_receiver_ok|state.001~q\ : std_logic;
SIGNAL \u_receiver_ok|state~14_combout\ : std_logic;
SIGNAL \u_receiver_ok|state~15_combout\ : std_logic;
SIGNAL \u_receiver_ok|state.010~q\ : std_logic;
SIGNAL \u_receiver_ok|state~11_combout\ : std_logic;
SIGNAL \u_receiver_ok|state~12_combout\ : std_logic;
SIGNAL \u_receiver_ok|state~13_combout\ : std_logic;
SIGNAL \u_receiver_ok|state.011~q\ : std_logic;
SIGNAL \u_receiver_ok|OK~2_combout\ : std_logic;
SIGNAL \u_receiver_ok|OK~3_combout\ : std_logic;
SIGNAL \u_receiver_ok|OK~q\ : std_logic;
SIGNAL \delay_cnt[0]~31_combout\ : std_logic;
SIGNAL \delay_cnt[27]~83_combout\ : std_logic;
SIGNAL \delay_cnt[27]~94_combout\ : std_logic;
SIGNAL \delay_cnt[27]~87_combout\ : std_logic;
SIGNAL \delay_cnt[0]~32\ : std_logic;
SIGNAL \delay_cnt[1]~33_combout\ : std_logic;
SIGNAL \delay_cnt[1]~34\ : std_logic;
SIGNAL \delay_cnt[2]~35_combout\ : std_logic;
SIGNAL \delay_cnt[2]~36\ : std_logic;
SIGNAL \delay_cnt[3]~37_combout\ : std_logic;
SIGNAL \delay_cnt[3]~38\ : std_logic;
SIGNAL \delay_cnt[4]~39_combout\ : std_logic;
SIGNAL \delay_cnt[4]~40\ : std_logic;
SIGNAL \delay_cnt[5]~41_combout\ : std_logic;
SIGNAL \delay_cnt[5]~42\ : std_logic;
SIGNAL \delay_cnt[6]~43_combout\ : std_logic;
SIGNAL \delay_cnt[6]~44\ : std_logic;
SIGNAL \delay_cnt[7]~45_combout\ : std_logic;
SIGNAL \delay_cnt[7]~46\ : std_logic;
SIGNAL \delay_cnt[8]~47_combout\ : std_logic;
SIGNAL \delay_cnt[8]~48\ : std_logic;
SIGNAL \delay_cnt[9]~49_combout\ : std_logic;
SIGNAL \delay_cnt[9]~50\ : std_logic;
SIGNAL \delay_cnt[10]~51_combout\ : std_logic;
SIGNAL \delay_cnt[10]~52\ : std_logic;
SIGNAL \delay_cnt[11]~53_combout\ : std_logic;
SIGNAL \delay_cnt[11]~54\ : std_logic;
SIGNAL \delay_cnt[12]~55_combout\ : std_logic;
SIGNAL \delay_cnt[12]~56\ : std_logic;
SIGNAL \delay_cnt[13]~57_combout\ : std_logic;
SIGNAL \delay_cnt[13]~58\ : std_logic;
SIGNAL \delay_cnt[14]~59_combout\ : std_logic;
SIGNAL \delay_cnt[14]~60\ : std_logic;
SIGNAL \delay_cnt[15]~61_combout\ : std_logic;
SIGNAL \delay_cnt[15]~62\ : std_logic;
SIGNAL \delay_cnt[16]~63_combout\ : std_logic;
SIGNAL \delay_cnt[16]~64\ : std_logic;
SIGNAL \delay_cnt[17]~65_combout\ : std_logic;
SIGNAL \delay_cnt[17]~66\ : std_logic;
SIGNAL \delay_cnt[18]~67_combout\ : std_logic;
SIGNAL \delay_cnt[18]~68\ : std_logic;
SIGNAL \delay_cnt[19]~69_combout\ : std_logic;
SIGNAL \delay_cnt[19]~70\ : std_logic;
SIGNAL \delay_cnt[20]~71_combout\ : std_logic;
SIGNAL \delay_cnt[20]~72\ : std_logic;
SIGNAL \delay_cnt[21]~73_combout\ : std_logic;
SIGNAL \delay_cnt[21]~74\ : std_logic;
SIGNAL \delay_cnt[22]~75_combout\ : std_logic;
SIGNAL \delay_cnt[22]~76\ : std_logic;
SIGNAL \delay_cnt[23]~77_combout\ : std_logic;
SIGNAL \delay_cnt[23]~78\ : std_logic;
SIGNAL \delay_cnt[24]~79_combout\ : std_logic;
SIGNAL \always2~4_combout\ : std_logic;
SIGNAL \delay_cnt[24]~80\ : std_logic;
SIGNAL \delay_cnt[25]~81_combout\ : std_logic;
SIGNAL \delay_cnt[25]~82\ : std_logic;
SIGNAL \delay_cnt[26]~88_combout\ : std_logic;
SIGNAL \delay_cnt[26]~89\ : std_logic;
SIGNAL \delay_cnt[27]~90_combout\ : std_logic;
SIGNAL \always2~2_combout\ : std_logic;
SIGNAL \always2~1_combout\ : std_logic;
SIGNAL \always2~3_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \always2~5_combout\ : std_logic;
SIGNAL \Selector36~1_combout\ : std_logic;
SIGNAL \Selector36~2_combout\ : std_logic;
SIGNAL \state.S_WAIT_DONE~q\ : std_logic;
SIGNAL \Selector444~0_combout\ : std_logic;
SIGNAL \Selector444~1_combout\ : std_logic;
SIGNAL \state.S_READY~0_combout\ : std_logic;
SIGNAL \state.S_READY~1_combout\ : std_logic;
SIGNAL \state.S_READY~q\ : std_logic;
SIGNAL \delay_cnt[27]~30_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add2~90_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~89_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add2~88_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add2~87_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add2~86_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Add2~85_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Add2~72_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Add2~70_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Add2~71_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \Add2~69_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add2~68_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Add2~67_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \Add2~66_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~49_combout\ : std_logic;
SIGNAL \Add2~76_combout\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~51_combout\ : std_logic;
SIGNAL \Add2~75_combout\ : std_logic;
SIGNAL \Add2~52\ : std_logic;
SIGNAL \Add2~53_combout\ : std_logic;
SIGNAL \Add2~74_combout\ : std_logic;
SIGNAL \Add2~54\ : std_logic;
SIGNAL \Add2~55_combout\ : std_logic;
SIGNAL \Add2~65_combout\ : std_logic;
SIGNAL \Add2~56\ : std_logic;
SIGNAL \Add2~58\ : std_logic;
SIGNAL \Add2~59_combout\ : std_logic;
SIGNAL \Add2~96_combout\ : std_logic;
SIGNAL \Add2~60\ : std_logic;
SIGNAL \Add2~61_combout\ : std_logic;
SIGNAL \Add2~95_combout\ : std_logic;
SIGNAL \Add2~62\ : std_logic;
SIGNAL \Add2~63_combout\ : std_logic;
SIGNAL \Add2~92_combout\ : std_logic;
SIGNAL \Add2~64\ : std_logic;
SIGNAL \Add2~77_combout\ : std_logic;
SIGNAL \Add2~99_combout\ : std_logic;
SIGNAL \Add2~78\ : std_logic;
SIGNAL \Add2~79_combout\ : std_logic;
SIGNAL \Add2~98_combout\ : std_logic;
SIGNAL \Add2~80\ : std_logic;
SIGNAL \Add2~81_combout\ : std_logic;
SIGNAL \Add2~97_combout\ : std_logic;
SIGNAL \Add2~82\ : std_logic;
SIGNAL \Add2~83_combout\ : std_logic;
SIGNAL \Add2~94_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \LessThan2~7_combout\ : std_logic;
SIGNAL \Add2~57_combout\ : std_logic;
SIGNAL \Add2~93_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add2~73_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \Selector29~2_combout\ : std_logic;
SIGNAL \Selector521~6_combout\ : std_logic;
SIGNAL \Selector558~0_combout\ : std_logic;
SIGNAL \Selector558~1_combout\ : std_logic;
SIGNAL \next_state_after_wait.S_COOL_DOWN~q\ : std_logic;
SIGNAL \state.S_COOL_DOWN~0_combout\ : std_logic;
SIGNAL \state.S_COOL_DOWN~1_combout\ : std_logic;
SIGNAL \state.S_COOL_DOWN~q\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Selector28~1_combout\ : std_logic;
SIGNAL \Selector28~2_combout\ : std_logic;
SIGNAL \next_state_after_wait.S_IDLE~feeder_combout\ : std_logic;
SIGNAL \next_state_after_wait.S_IDLE~q\ : std_logic;
SIGNAL \Selector28~3_combout\ : std_logic;
SIGNAL \Selector28~4_combout\ : std_logic;
SIGNAL \state.S_IDLE~q\ : std_logic;
SIGNAL \Selector552~0_combout\ : std_logic;
SIGNAL \tx_start~0_combout\ : std_logic;
SIGNAL \tx_start~q\ : std_logic;
SIGNAL \u_tx|Selector521~1_combout\ : std_logic;
SIGNAL \u_tx|Add2~0_combout\ : std_logic;
SIGNAL \u_tx|Selector520~0_combout\ : std_logic;
SIGNAL \Selector448~0_combout\ : std_logic;
SIGNAL \Selector448~1_combout\ : std_logic;
SIGNAL \current_cmd~0_combout\ : std_logic;
SIGNAL \Selector520~0_combout\ : std_logic;
SIGNAL \Selector520~1_combout\ : std_logic;
SIGNAL \u_button_3x3|key~1_combout\ : std_logic;
SIGNAL \u_button_3x3|key~2_combout\ : std_logic;
SIGNAL \u_button_3x3|key[3]~3_combout\ : std_logic;
SIGNAL \u_button_3x3|key~4_combout\ : std_logic;
SIGNAL \u_button_3x3|key~7_combout\ : std_logic;
SIGNAL \u_button_3x3|key[4]~8_combout\ : std_logic;
SIGNAL \u_button_3x3|key~5_combout\ : std_logic;
SIGNAL \u_button_3x3|key~6_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \Selector527~0_combout\ : std_logic;
SIGNAL \current_cmd[21]~1_combout\ : std_logic;
SIGNAL \u_tx|Selector491~0_combout\ : std_logic;
SIGNAL \u_tx|Selector483~0_combout\ : std_logic;
SIGNAL \u_tx|Selector475~0_combout\ : std_logic;
SIGNAL \Selector504~1_combout\ : std_logic;
SIGNAL \Selector504~0_combout\ : std_logic;
SIGNAL \Selector504~2_combout\ : std_logic;
SIGNAL \u_tx|Selector467~0_combout\ : std_logic;
SIGNAL \u_tx|Selector459~0_combout\ : std_logic;
SIGNAL \u_tx|Selector451~0_combout\ : std_logic;
SIGNAL \u_tx|Selector443~0_combout\ : std_logic;
SIGNAL \u_tx|Selector435~0_combout\ : std_logic;
SIGNAL \Selector491~1_combout\ : std_logic;
SIGNAL \Selector491~2_combout\ : std_logic;
SIGNAL \u_tx|Selector427~0_combout\ : std_logic;
SIGNAL \Selector492~1_combout\ : std_logic;
SIGNAL \Selector492~0_combout\ : std_logic;
SIGNAL \Selector492~2_combout\ : std_logic;
SIGNAL \u_tx|Selector419~0_combout\ : std_logic;
SIGNAL \u_tx|Selector411~0_combout\ : std_logic;
SIGNAL \u_tx|Selector403~0_combout\ : std_logic;
SIGNAL \u_tx|Selector395~0_combout\ : std_logic;
SIGNAL \u_tx|Selector387~0_combout\ : std_logic;
SIGNAL \u_tx|Selector379~0_combout\ : std_logic;
SIGNAL \u_tx|Selector371~0_combout\ : std_logic;
SIGNAL \u_tx|Selector363~0_combout\ : std_logic;
SIGNAL \u_tx|Selector355~0_combout\ : std_logic;
SIGNAL \u_tx|Selector347~0_combout\ : std_logic;
SIGNAL \u_tx|Selector339~0_combout\ : std_logic;
SIGNAL \u_tx|Selector331~0_combout\ : std_logic;
SIGNAL \u_tx|Selector323~0_combout\ : std_logic;
SIGNAL \u_tx|Selector315~0_combout\ : std_logic;
SIGNAL \u_tx|Selector307~0_combout\ : std_logic;
SIGNAL \u_tx|Selector299~0_combout\ : std_logic;
SIGNAL \u_tx|Selector291~0_combout\ : std_logic;
SIGNAL \u_tx|Selector283~0_combout\ : std_logic;
SIGNAL \u_tx|Selector275~0_combout\ : std_logic;
SIGNAL \u_tx|Selector267~0_combout\ : std_logic;
SIGNAL \u_tx|Selector259~0_combout\ : std_logic;
SIGNAL \u_tx|Selector251~0_combout\ : std_logic;
SIGNAL \u_tx|Selector243~0_combout\ : std_logic;
SIGNAL \u_tx|Selector235~0_combout\ : std_logic;
SIGNAL \u_tx|Selector227~0_combout\ : std_logic;
SIGNAL \u_tx|Selector219~0_combout\ : std_logic;
SIGNAL \u_tx|Selector211~0_combout\ : std_logic;
SIGNAL \u_tx|Selector203~0_combout\ : std_logic;
SIGNAL \u_tx|Selector195~0_combout\ : std_logic;
SIGNAL \u_tx|Selector187~0_combout\ : std_logic;
SIGNAL \u_tx|Selector179~0_combout\ : std_logic;
SIGNAL \u_tx|Selector171~0_combout\ : std_logic;
SIGNAL \u_tx|Selector163~0_combout\ : std_logic;
SIGNAL \u_tx|Selector155~0_combout\ : std_logic;
SIGNAL \u_tx|Selector147~0_combout\ : std_logic;
SIGNAL \u_tx|Selector139~0_combout\ : std_logic;
SIGNAL \u_tx|Selector131~0_combout\ : std_logic;
SIGNAL \u_tx|Selector123~0_combout\ : std_logic;
SIGNAL \u_tx|Selector115~0_combout\ : std_logic;
SIGNAL \u_tx|Selector107~0_combout\ : std_logic;
SIGNAL \u_tx|Selector99~0_combout\ : std_logic;
SIGNAL \u_tx|Selector91~0_combout\ : std_logic;
SIGNAL \u_tx|Selector83~0_combout\ : std_logic;
SIGNAL \u_tx|Selector75~0_combout\ : std_logic;
SIGNAL \u_tx|Selector67~0_combout\ : std_logic;
SIGNAL \u_tx|Selector59~0_combout\ : std_logic;
SIGNAL \u_tx|Selector51~0_combout\ : std_logic;
SIGNAL \u_tx|Selector43~0_combout\ : std_logic;
SIGNAL \u_tx|Selector35~0_combout\ : std_logic;
SIGNAL \u_tx|Selector27~0_combout\ : std_logic;
SIGNAL \u_tx|Selector19~0_combout\ : std_logic;
SIGNAL \u_tx|Selector11~0_combout\ : std_logic;
SIGNAL \u_tx|Selector3~0_combout\ : std_logic;
SIGNAL \Selector447~4_combout\ : std_logic;
SIGNAL \Selector447~3_combout\ : std_logic;
SIGNAL \Selector525~1_combout\ : std_logic;
SIGNAL \Selector525~0_combout\ : std_logic;
SIGNAL \Selector525~2_combout\ : std_logic;
SIGNAL \u_tx|Selector490~0_combout\ : std_logic;
SIGNAL \u_tx|Selector482~0_combout\ : std_logic;
SIGNAL \u_tx|Selector474~0_combout\ : std_logic;
SIGNAL \u_tx|Selector466~0_combout\ : std_logic;
SIGNAL \u_tx|Selector458~0_combout\ : std_logic;
SIGNAL \u_tx|Selector450~0_combout\ : std_logic;
SIGNAL \u_tx|Selector442~0_combout\ : std_logic;
SIGNAL \u_tx|Selector434~0_combout\ : std_logic;
SIGNAL \u_tx|Selector426~0_combout\ : std_logic;
SIGNAL \u_tx|Selector418~0_combout\ : std_logic;
SIGNAL \u_tx|Selector410~0_combout\ : std_logic;
SIGNAL \u_tx|Selector402~0_combout\ : std_logic;
SIGNAL \u_tx|Selector394~0_combout\ : std_logic;
SIGNAL \u_tx|Selector386~0_combout\ : std_logic;
SIGNAL \u_tx|Selector378~0_combout\ : std_logic;
SIGNAL \u_tx|Selector370~0_combout\ : std_logic;
SIGNAL \u_tx|Selector362~0_combout\ : std_logic;
SIGNAL \u_tx|Selector354~0_combout\ : std_logic;
SIGNAL \u_tx|Selector346~0_combout\ : std_logic;
SIGNAL \u_tx|Selector338~0_combout\ : std_logic;
SIGNAL \u_tx|Selector330~0_combout\ : std_logic;
SIGNAL \u_tx|Selector322~0_combout\ : std_logic;
SIGNAL \u_tx|Selector314~0_combout\ : std_logic;
SIGNAL \u_tx|Selector306~0_combout\ : std_logic;
SIGNAL \u_tx|Selector298~0_combout\ : std_logic;
SIGNAL \u_tx|Selector290~0_combout\ : std_logic;
SIGNAL \u_tx|Selector282~0_combout\ : std_logic;
SIGNAL \u_tx|Selector274~0_combout\ : std_logic;
SIGNAL \u_tx|Selector266~0_combout\ : std_logic;
SIGNAL \u_tx|Selector258~0_combout\ : std_logic;
SIGNAL \u_tx|Selector250~0_combout\ : std_logic;
SIGNAL \u_tx|Selector242~0_combout\ : std_logic;
SIGNAL \u_tx|Selector234~0_combout\ : std_logic;
SIGNAL \u_tx|Selector226~0_combout\ : std_logic;
SIGNAL \u_tx|Selector218~0_combout\ : std_logic;
SIGNAL \u_tx|Selector210~0_combout\ : std_logic;
SIGNAL \u_tx|Selector202~0_combout\ : std_logic;
SIGNAL \u_tx|Selector194~0_combout\ : std_logic;
SIGNAL \u_tx|Selector186~0_combout\ : std_logic;
SIGNAL \u_tx|Selector178~0_combout\ : std_logic;
SIGNAL \u_tx|Selector170~0_combout\ : std_logic;
SIGNAL \u_tx|Selector162~0_combout\ : std_logic;
SIGNAL \u_tx|Selector154~0_combout\ : std_logic;
SIGNAL \u_tx|Selector146~0_combout\ : std_logic;
SIGNAL \u_tx|Selector138~0_combout\ : std_logic;
SIGNAL \u_tx|Selector130~0_combout\ : std_logic;
SIGNAL \u_tx|Selector122~0_combout\ : std_logic;
SIGNAL \u_tx|Selector114~0_combout\ : std_logic;
SIGNAL \u_tx|Selector106~0_combout\ : std_logic;
SIGNAL \u_tx|Selector98~0_combout\ : std_logic;
SIGNAL \u_tx|Selector90~0_combout\ : std_logic;
SIGNAL \u_tx|Selector82~0_combout\ : std_logic;
SIGNAL \u_tx|Selector74~0_combout\ : std_logic;
SIGNAL \u_tx|Selector66~0_combout\ : std_logic;
SIGNAL \u_tx|Selector58~0_combout\ : std_logic;
SIGNAL \u_tx|Selector50~0_combout\ : std_logic;
SIGNAL \u_tx|Selector42~0_combout\ : std_logic;
SIGNAL \u_tx|Selector34~0_combout\ : std_logic;
SIGNAL \u_tx|Selector26~0_combout\ : std_logic;
SIGNAL \u_tx|Selector18~0_combout\ : std_logic;
SIGNAL \u_tx|Selector10~0_combout\ : std_logic;
SIGNAL \u_tx|Selector2~0_combout\ : std_logic;
SIGNAL \u_tx|always1~0_combout\ : std_logic;
SIGNAL \Selector530~0_combout\ : std_logic;
SIGNAL \Selector530~1_combout\ : std_logic;
SIGNAL \Selector530~2_combout\ : std_logic;
SIGNAL \Selector530~3_combout\ : std_logic;
SIGNAL \u_tx|Selector511~0_combout\ : std_logic;
SIGNAL \u_tx|Selector525~1_combout\ : std_logic;
SIGNAL \u_tx|Selector511~1_combout\ : std_logic;
SIGNAL \u_tx|Selector511~2_combout\ : std_logic;
SIGNAL \u_tx|Selector501~0_combout\ : std_logic;
SIGNAL \u_tx|Selector493~0_combout\ : std_logic;
SIGNAL \Selector522~6_combout\ : std_logic;
SIGNAL \Selector522~4_combout\ : std_logic;
SIGNAL \Selector522~5_combout\ : std_logic;
SIGNAL \u_tx|Selector485~0_combout\ : std_logic;
SIGNAL \u_tx|Selector477~0_combout\ : std_logic;
SIGNAL \Selector506~0_combout\ : std_logic;
SIGNAL \Selector506~1_combout\ : std_logic;
SIGNAL \Selector506~2_combout\ : std_logic;
SIGNAL \u_tx|Selector469~0_combout\ : std_logic;
SIGNAL \Selector517~0_combout\ : std_logic;
SIGNAL \Selector517~1_combout\ : std_logic;
SIGNAL \Selector449~7_combout\ : std_logic;
SIGNAL \Selector517~2_combout\ : std_logic;
SIGNAL \u_tx|Selector461~0_combout\ : std_logic;
SIGNAL \Selector490~6_combout\ : std_logic;
SIGNAL \Selector490~7_combout\ : std_logic;
SIGNAL \Selector490~9_combout\ : std_logic;
SIGNAL \Selector490~8_combout\ : std_logic;
SIGNAL \u_tx|Selector453~0_combout\ : std_logic;
SIGNAL \u_tx|Selector445~0_combout\ : std_logic;
SIGNAL \u_tx|Selector437~0_combout\ : std_logic;
SIGNAL \u_tx|Selector429~0_combout\ : std_logic;
SIGNAL \u_tx|Selector421~0_combout\ : std_logic;
SIGNAL \u_tx|Selector413~0_combout\ : std_logic;
SIGNAL \u_tx|Selector405~0_combout\ : std_logic;
SIGNAL \u_tx|Selector397~0_combout\ : std_logic;
SIGNAL \u_tx|Selector389~0_combout\ : std_logic;
SIGNAL \u_tx|Selector381~0_combout\ : std_logic;
SIGNAL \u_tx|Selector373~0_combout\ : std_logic;
SIGNAL \u_tx|Selector365~0_combout\ : std_logic;
SIGNAL \u_tx|Selector357~0_combout\ : std_logic;
SIGNAL \u_tx|Selector349~0_combout\ : std_logic;
SIGNAL \u_tx|Selector341~0_combout\ : std_logic;
SIGNAL \u_tx|Selector333~0_combout\ : std_logic;
SIGNAL \u_tx|Selector325~0_combout\ : std_logic;
SIGNAL \u_tx|Selector317~0_combout\ : std_logic;
SIGNAL \u_tx|Selector309~0_combout\ : std_logic;
SIGNAL \u_tx|Selector301~0_combout\ : std_logic;
SIGNAL \u_tx|Selector293~0_combout\ : std_logic;
SIGNAL \u_tx|Selector285~0_combout\ : std_logic;
SIGNAL \u_tx|Selector277~0_combout\ : std_logic;
SIGNAL \u_tx|Selector269~0_combout\ : std_logic;
SIGNAL \u_tx|Selector261~0_combout\ : std_logic;
SIGNAL \u_tx|Selector253~0_combout\ : std_logic;
SIGNAL \u_tx|Selector245~0_combout\ : std_logic;
SIGNAL \u_tx|Selector237~0_combout\ : std_logic;
SIGNAL \u_tx|Selector229~0_combout\ : std_logic;
SIGNAL \u_tx|Selector221~0_combout\ : std_logic;
SIGNAL \u_tx|Selector213~0_combout\ : std_logic;
SIGNAL \u_tx|Selector205~0_combout\ : std_logic;
SIGNAL \u_tx|Selector197~0_combout\ : std_logic;
SIGNAL \u_tx|Selector189~0_combout\ : std_logic;
SIGNAL \u_tx|Selector181~0_combout\ : std_logic;
SIGNAL \u_tx|Selector173~0_combout\ : std_logic;
SIGNAL \u_tx|Selector165~0_combout\ : std_logic;
SIGNAL \u_tx|Selector157~0_combout\ : std_logic;
SIGNAL \u_tx|Selector149~0_combout\ : std_logic;
SIGNAL \u_tx|Selector141~0_combout\ : std_logic;
SIGNAL \u_tx|Selector133~0_combout\ : std_logic;
SIGNAL \u_tx|Selector125~0_combout\ : std_logic;
SIGNAL \u_tx|Selector117~0_combout\ : std_logic;
SIGNAL \u_tx|Selector109~0_combout\ : std_logic;
SIGNAL \u_tx|Selector101~0_combout\ : std_logic;
SIGNAL \u_tx|Selector93~0_combout\ : std_logic;
SIGNAL \u_tx|Selector85~0_combout\ : std_logic;
SIGNAL \u_tx|Selector77~0_combout\ : std_logic;
SIGNAL \u_tx|Selector69~0_combout\ : std_logic;
SIGNAL \u_tx|Selector61~0_combout\ : std_logic;
SIGNAL \u_tx|Selector53~0_combout\ : std_logic;
SIGNAL \u_tx|Selector45~0_combout\ : std_logic;
SIGNAL \u_tx|Selector37~0_combout\ : std_logic;
SIGNAL \u_tx|Selector29~0_combout\ : std_logic;
SIGNAL \u_tx|Selector21~0_combout\ : std_logic;
SIGNAL \u_tx|Selector13~0_combout\ : std_logic;
SIGNAL \u_tx|Selector5~0_combout\ : std_logic;
SIGNAL \Selector523~0_combout\ : std_logic;
SIGNAL \Selector523~1_combout\ : std_logic;
SIGNAL \u_button_3x3|key~10_combout\ : std_logic;
SIGNAL \u_button_3x3|key~9_combout\ : std_logic;
SIGNAL \u_button_3x3|key~11_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr2~1_combout\ : std_logic;
SIGNAL \u_tx|Selector502~0_combout\ : std_logic;
SIGNAL \u_tx|Selector494~0_combout\ : std_logic;
SIGNAL \u_tx|Selector486~0_combout\ : std_logic;
SIGNAL \u_tx|Selector478~0_combout\ : std_logic;
SIGNAL \u_tx|Selector470~0_combout\ : std_logic;
SIGNAL \u_tx|Selector462~0_combout\ : std_logic;
SIGNAL \u_tx|Selector454~0_combout\ : std_logic;
SIGNAL \u_tx|Selector446~0_combout\ : std_logic;
SIGNAL \u_tx|Selector438~0_combout\ : std_logic;
SIGNAL \u_tx|Selector430~0_combout\ : std_logic;
SIGNAL \u_tx|Selector422~0_combout\ : std_logic;
SIGNAL \u_tx|Selector414~0_combout\ : std_logic;
SIGNAL \u_tx|Selector406~0_combout\ : std_logic;
SIGNAL \u_tx|Selector398~0_combout\ : std_logic;
SIGNAL \u_tx|Selector390~0_combout\ : std_logic;
SIGNAL \u_tx|Selector382~0_combout\ : std_logic;
SIGNAL \u_tx|Selector374~0_combout\ : std_logic;
SIGNAL \u_tx|Selector366~0_combout\ : std_logic;
SIGNAL \u_tx|Selector358~0_combout\ : std_logic;
SIGNAL \u_tx|Selector350~0_combout\ : std_logic;
SIGNAL \u_tx|Selector342~0_combout\ : std_logic;
SIGNAL \u_tx|Selector334~0_combout\ : std_logic;
SIGNAL \u_tx|Selector326~0_combout\ : std_logic;
SIGNAL \u_tx|Selector318~0_combout\ : std_logic;
SIGNAL \u_tx|Selector310~0_combout\ : std_logic;
SIGNAL \u_tx|Selector302~0_combout\ : std_logic;
SIGNAL \u_tx|Selector294~0_combout\ : std_logic;
SIGNAL \u_tx|Selector286~0_combout\ : std_logic;
SIGNAL \u_tx|Selector278~0_combout\ : std_logic;
SIGNAL \u_tx|Selector270~0_combout\ : std_logic;
SIGNAL \u_tx|Selector262~0_combout\ : std_logic;
SIGNAL \u_tx|Selector254~0_combout\ : std_logic;
SIGNAL \u_tx|Selector246~0_combout\ : std_logic;
SIGNAL \u_tx|Selector238~0_combout\ : std_logic;
SIGNAL \u_tx|Selector230~0_combout\ : std_logic;
SIGNAL \u_tx|Selector222~0_combout\ : std_logic;
SIGNAL \u_tx|Selector214~0_combout\ : std_logic;
SIGNAL \u_tx|Selector206~0_combout\ : std_logic;
SIGNAL \u_tx|Selector198~0_combout\ : std_logic;
SIGNAL \u_tx|Selector190~0_combout\ : std_logic;
SIGNAL \u_tx|Selector182~0_combout\ : std_logic;
SIGNAL \u_tx|Selector174~0_combout\ : std_logic;
SIGNAL \u_tx|Selector166~0_combout\ : std_logic;
SIGNAL \u_tx|Selector158~0_combout\ : std_logic;
SIGNAL \u_tx|Selector150~0_combout\ : std_logic;
SIGNAL \u_tx|Selector142~0_combout\ : std_logic;
SIGNAL \u_tx|Selector134~0_combout\ : std_logic;
SIGNAL \u_tx|Selector126~0_combout\ : std_logic;
SIGNAL \u_tx|Selector118~0_combout\ : std_logic;
SIGNAL \u_tx|Selector110~0_combout\ : std_logic;
SIGNAL \u_tx|Selector102~0_combout\ : std_logic;
SIGNAL \u_tx|Selector94~0_combout\ : std_logic;
SIGNAL \u_tx|Selector86~0_combout\ : std_logic;
SIGNAL \u_tx|Selector78~0_combout\ : std_logic;
SIGNAL \u_tx|Selector70~0_combout\ : std_logic;
SIGNAL \u_tx|Selector62~0_combout\ : std_logic;
SIGNAL \u_tx|Selector54~0_combout\ : std_logic;
SIGNAL \u_tx|Selector46~0_combout\ : std_logic;
SIGNAL \u_tx|Selector38~0_combout\ : std_logic;
SIGNAL \u_tx|Selector30~0_combout\ : std_logic;
SIGNAL \u_tx|Selector22~0_combout\ : std_logic;
SIGNAL \u_tx|Selector14~0_combout\ : std_logic;
SIGNAL \u_tx|Selector6~0_combout\ : std_logic;
SIGNAL \Selector449~9_combout\ : std_logic;
SIGNAL \Selector449~6_combout\ : std_logic;
SIGNAL \Selector449~8_combout\ : std_logic;
SIGNAL \u_tx|Selector503~0_combout\ : std_logic;
SIGNAL \Selector489~0_combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \Selector532~0_combout\ : std_logic;
SIGNAL \Selector532~1_combout\ : std_logic;
SIGNAL \u_tx|Selector495~0_combout\ : std_logic;
SIGNAL \u_tx|Selector487~0_combout\ : std_logic;
SIGNAL \u_tx|Selector479~0_combout\ : std_logic;
SIGNAL \Selector508~1_combout\ : std_logic;
SIGNAL \Selector508~0_combout\ : std_logic;
SIGNAL \Selector508~2_combout\ : std_logic;
SIGNAL \u_tx|Selector471~0_combout\ : std_logic;
SIGNAL \u_tx|Selector463~0_combout\ : std_logic;
SIGNAL \u_tx|Selector455~0_combout\ : std_logic;
SIGNAL \u_tx|Selector447~0_combout\ : std_logic;
SIGNAL \u_tx|Selector439~0_combout\ : std_logic;
SIGNAL \u_tx|Selector431~0_combout\ : std_logic;
SIGNAL \u_tx|Selector423~0_combout\ : std_logic;
SIGNAL \u_tx|Selector415~0_combout\ : std_logic;
SIGNAL \u_tx|Selector407~0_combout\ : std_logic;
SIGNAL \u_tx|Selector399~0_combout\ : std_logic;
SIGNAL \u_tx|Selector391~0_combout\ : std_logic;
SIGNAL \u_tx|Selector383~0_combout\ : std_logic;
SIGNAL \u_tx|Selector375~0_combout\ : std_logic;
SIGNAL \u_tx|Selector367~0_combout\ : std_logic;
SIGNAL \u_tx|Selector359~0_combout\ : std_logic;
SIGNAL \u_tx|Selector351~0_combout\ : std_logic;
SIGNAL \u_tx|Selector343~0_combout\ : std_logic;
SIGNAL \u_tx|Selector335~0_combout\ : std_logic;
SIGNAL \u_tx|Selector327~0_combout\ : std_logic;
SIGNAL \u_tx|Selector319~0_combout\ : std_logic;
SIGNAL \u_tx|Selector311~0_combout\ : std_logic;
SIGNAL \u_tx|Selector303~0_combout\ : std_logic;
SIGNAL \u_tx|Selector295~0_combout\ : std_logic;
SIGNAL \u_tx|Selector287~0_combout\ : std_logic;
SIGNAL \u_tx|Selector279~0_combout\ : std_logic;
SIGNAL \u_tx|Selector271~0_combout\ : std_logic;
SIGNAL \u_tx|Selector263~0_combout\ : std_logic;
SIGNAL \u_tx|Selector255~0_combout\ : std_logic;
SIGNAL \u_tx|Selector247~0_combout\ : std_logic;
SIGNAL \u_tx|Selector239~0_combout\ : std_logic;
SIGNAL \u_tx|Selector231~0_combout\ : std_logic;
SIGNAL \u_tx|Selector223~0_combout\ : std_logic;
SIGNAL \u_tx|Selector215~0_combout\ : std_logic;
SIGNAL \u_tx|Selector207~0_combout\ : std_logic;
SIGNAL \u_tx|Selector199~0_combout\ : std_logic;
SIGNAL \u_tx|Selector191~0_combout\ : std_logic;
SIGNAL \u_tx|Selector183~0_combout\ : std_logic;
SIGNAL \u_tx|Selector175~0_combout\ : std_logic;
SIGNAL \u_tx|Selector167~0_combout\ : std_logic;
SIGNAL \u_tx|Selector159~0_combout\ : std_logic;
SIGNAL \u_tx|Selector151~0_combout\ : std_logic;
SIGNAL \u_tx|Selector143~0_combout\ : std_logic;
SIGNAL \u_tx|Selector135~0_combout\ : std_logic;
SIGNAL \u_tx|Selector127~0_combout\ : std_logic;
SIGNAL \u_tx|Selector119~0_combout\ : std_logic;
SIGNAL \u_tx|Selector111~0_combout\ : std_logic;
SIGNAL \u_tx|Selector103~0_combout\ : std_logic;
SIGNAL \u_tx|Selector95~0_combout\ : std_logic;
SIGNAL \u_tx|Selector87~0_combout\ : std_logic;
SIGNAL \u_tx|Selector79~0_combout\ : std_logic;
SIGNAL \u_tx|Selector71~0_combout\ : std_logic;
SIGNAL \u_tx|Selector63~0_combout\ : std_logic;
SIGNAL \u_tx|Selector55~0_combout\ : std_logic;
SIGNAL \u_tx|Selector47~0_combout\ : std_logic;
SIGNAL \u_tx|Selector39~0_combout\ : std_logic;
SIGNAL \u_tx|Selector31~0_combout\ : std_logic;
SIGNAL \u_tx|Selector23~0_combout\ : std_logic;
SIGNAL \u_tx|Selector15~0_combout\ : std_logic;
SIGNAL \u_tx|Selector7~0_combout\ : std_logic;
SIGNAL \Selector489~1_combout\ : std_logic;
SIGNAL \Selector513~0_combout\ : std_logic;
SIGNAL \Selector513~1_combout\ : std_logic;
SIGNAL \Selector513~2_combout\ : std_logic;
SIGNAL \Selector521~4_combout\ : std_logic;
SIGNAL \Selector521~5_combout\ : std_logic;
SIGNAL \Selector529~5_combout\ : std_logic;
SIGNAL \Selector529~12_combout\ : std_logic;
SIGNAL \Selector529~6_combout\ : std_logic;
SIGNAL \Selector529~4_combout\ : std_logic;
SIGNAL \Selector529~11_combout\ : std_logic;
SIGNAL \Selector529~7_combout\ : std_logic;
SIGNAL \Selector529~8_combout\ : std_logic;
SIGNAL \Selector529~9_combout\ : std_logic;
SIGNAL \Selector529~10_combout\ : std_logic;
SIGNAL \u_tx|Selector492~0_combout\ : std_logic;
SIGNAL \u_tx|Selector484~0_combout\ : std_logic;
SIGNAL \u_tx|Selector476~0_combout\ : std_logic;
SIGNAL \u_tx|Selector468~0_combout\ : std_logic;
SIGNAL \u_tx|Selector460~0_combout\ : std_logic;
SIGNAL \u_tx|Selector452~0_combout\ : std_logic;
SIGNAL \u_tx|Selector444~0_combout\ : std_logic;
SIGNAL \u_tx|Selector436~0_combout\ : std_logic;
SIGNAL \u_tx|Selector428~0_combout\ : std_logic;
SIGNAL \u_tx|Selector420~0_combout\ : std_logic;
SIGNAL \u_tx|Selector412~0_combout\ : std_logic;
SIGNAL \u_tx|Selector404~0_combout\ : std_logic;
SIGNAL \u_tx|Selector396~0_combout\ : std_logic;
SIGNAL \u_tx|Selector388~0_combout\ : std_logic;
SIGNAL \u_tx|Selector380~0_combout\ : std_logic;
SIGNAL \u_tx|Selector372~0_combout\ : std_logic;
SIGNAL \u_tx|Selector364~0_combout\ : std_logic;
SIGNAL \u_tx|Selector356~0_combout\ : std_logic;
SIGNAL \u_tx|Selector348~0_combout\ : std_logic;
SIGNAL \u_tx|Selector340~0_combout\ : std_logic;
SIGNAL \u_tx|Selector332~0_combout\ : std_logic;
SIGNAL \u_tx|Selector324~0_combout\ : std_logic;
SIGNAL \u_tx|Selector316~0_combout\ : std_logic;
SIGNAL \u_tx|Selector308~0_combout\ : std_logic;
SIGNAL \u_tx|Selector300~0_combout\ : std_logic;
SIGNAL \u_tx|Selector292~0_combout\ : std_logic;
SIGNAL \u_tx|Selector284~0_combout\ : std_logic;
SIGNAL \u_tx|Selector276~0_combout\ : std_logic;
SIGNAL \u_tx|Selector268~0_combout\ : std_logic;
SIGNAL \u_tx|Selector260~0_combout\ : std_logic;
SIGNAL \u_tx|Selector252~0_combout\ : std_logic;
SIGNAL \u_tx|Selector244~0_combout\ : std_logic;
SIGNAL \u_tx|Selector236~0_combout\ : std_logic;
SIGNAL \u_tx|Selector228~0_combout\ : std_logic;
SIGNAL \u_tx|Selector220~0_combout\ : std_logic;
SIGNAL \u_tx|Selector212~0_combout\ : std_logic;
SIGNAL \u_tx|Selector204~0_combout\ : std_logic;
SIGNAL \u_tx|Selector196~0_combout\ : std_logic;
SIGNAL \u_tx|Selector188~0_combout\ : std_logic;
SIGNAL \u_tx|Selector180~0_combout\ : std_logic;
SIGNAL \u_tx|Selector172~0_combout\ : std_logic;
SIGNAL \u_tx|Selector164~0_combout\ : std_logic;
SIGNAL \u_tx|Selector156~0_combout\ : std_logic;
SIGNAL \u_tx|Selector148~0_combout\ : std_logic;
SIGNAL \u_tx|Selector140~0_combout\ : std_logic;
SIGNAL \u_tx|Selector132~0_combout\ : std_logic;
SIGNAL \u_tx|Selector124~0_combout\ : std_logic;
SIGNAL \u_tx|Selector116~0_combout\ : std_logic;
SIGNAL \u_tx|Selector108~0_combout\ : std_logic;
SIGNAL \u_tx|Selector100~0_combout\ : std_logic;
SIGNAL \u_tx|Selector92~0_combout\ : std_logic;
SIGNAL \u_tx|Selector84~0_combout\ : std_logic;
SIGNAL \u_tx|Selector76~0_combout\ : std_logic;
SIGNAL \u_tx|Selector68~0_combout\ : std_logic;
SIGNAL \u_tx|Selector60~0_combout\ : std_logic;
SIGNAL \u_tx|Selector52~0_combout\ : std_logic;
SIGNAL \u_tx|Selector44~0_combout\ : std_logic;
SIGNAL \u_tx|Selector36~0_combout\ : std_logic;
SIGNAL \u_tx|Selector28~0_combout\ : std_logic;
SIGNAL \u_tx|Selector20~0_combout\ : std_logic;
SIGNAL \u_tx|Selector12~0_combout\ : std_logic;
SIGNAL \u_tx|Selector4~0_combout\ : std_logic;
SIGNAL \u_tx|always1~1_combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \Selector533~0_combout\ : std_logic;
SIGNAL \Selector533~1_combout\ : std_logic;
SIGNAL \u_tx|Selector496~0_combout\ : std_logic;
SIGNAL \u_tx|Selector488~0_combout\ : std_logic;
SIGNAL \u_tx|Selector480~0_combout\ : std_logic;
SIGNAL \u_tx|Selector472~0_combout\ : std_logic;
SIGNAL \u_tx|Selector464~0_combout\ : std_logic;
SIGNAL \Selector493~0_combout\ : std_logic;
SIGNAL \Selector493~1_combout\ : std_logic;
SIGNAL \Selector493~2_combout\ : std_logic;
SIGNAL \u_tx|Selector456~0_combout\ : std_logic;
SIGNAL \u_tx|Selector448~0_combout\ : std_logic;
SIGNAL \u_tx|Selector440~0_combout\ : std_logic;
SIGNAL \u_tx|Selector432~0_combout\ : std_logic;
SIGNAL \u_tx|Selector424~0_combout\ : std_logic;
SIGNAL \u_tx|Selector416~0_combout\ : std_logic;
SIGNAL \u_tx|Selector408~0_combout\ : std_logic;
SIGNAL \u_tx|Selector400~0_combout\ : std_logic;
SIGNAL \u_tx|Selector392~0_combout\ : std_logic;
SIGNAL \u_tx|Selector384~0_combout\ : std_logic;
SIGNAL \u_tx|Selector376~0_combout\ : std_logic;
SIGNAL \u_tx|Selector368~0_combout\ : std_logic;
SIGNAL \u_tx|Selector360~0_combout\ : std_logic;
SIGNAL \u_tx|Selector352~0_combout\ : std_logic;
SIGNAL \u_tx|Selector344~0_combout\ : std_logic;
SIGNAL \u_tx|Selector336~0_combout\ : std_logic;
SIGNAL \u_tx|Selector328~0_combout\ : std_logic;
SIGNAL \u_tx|Selector320~0_combout\ : std_logic;
SIGNAL \u_tx|Selector312~0_combout\ : std_logic;
SIGNAL \u_tx|Selector304~0_combout\ : std_logic;
SIGNAL \u_tx|Selector296~0_combout\ : std_logic;
SIGNAL \u_tx|Selector288~0_combout\ : std_logic;
SIGNAL \u_tx|Selector280~0_combout\ : std_logic;
SIGNAL \u_tx|Selector272~0_combout\ : std_logic;
SIGNAL \u_tx|Selector264~0_combout\ : std_logic;
SIGNAL \u_tx|Selector256~0_combout\ : std_logic;
SIGNAL \u_tx|Selector248~0_combout\ : std_logic;
SIGNAL \u_tx|Selector240~0_combout\ : std_logic;
SIGNAL \u_tx|Selector232~0_combout\ : std_logic;
SIGNAL \u_tx|Selector224~0_combout\ : std_logic;
SIGNAL \u_tx|Selector216~0_combout\ : std_logic;
SIGNAL \u_tx|Selector208~0_combout\ : std_logic;
SIGNAL \u_tx|Selector200~0_combout\ : std_logic;
SIGNAL \u_tx|Selector192~0_combout\ : std_logic;
SIGNAL \u_tx|Selector184~0_combout\ : std_logic;
SIGNAL \u_tx|Selector176~0_combout\ : std_logic;
SIGNAL \u_tx|Selector168~0_combout\ : std_logic;
SIGNAL \u_tx|Selector160~0_combout\ : std_logic;
SIGNAL \u_tx|Selector152~0_combout\ : std_logic;
SIGNAL \u_tx|Selector144~0_combout\ : std_logic;
SIGNAL \u_tx|Selector136~0_combout\ : std_logic;
SIGNAL \u_tx|Selector128~0_combout\ : std_logic;
SIGNAL \u_tx|Selector120~0_combout\ : std_logic;
SIGNAL \u_tx|Selector112~0_combout\ : std_logic;
SIGNAL \u_tx|Selector104~0_combout\ : std_logic;
SIGNAL \u_tx|Selector96~0_combout\ : std_logic;
SIGNAL \u_tx|Selector88~0_combout\ : std_logic;
SIGNAL \u_tx|Selector80~0_combout\ : std_logic;
SIGNAL \u_tx|Selector72~0_combout\ : std_logic;
SIGNAL \u_tx|Selector64~0_combout\ : std_logic;
SIGNAL \u_tx|Selector56~0_combout\ : std_logic;
SIGNAL \u_tx|Selector48~0_combout\ : std_logic;
SIGNAL \u_tx|Selector40~0_combout\ : std_logic;
SIGNAL \u_tx|Selector32~0_combout\ : std_logic;
SIGNAL \u_tx|Selector24~0_combout\ : std_logic;
SIGNAL \u_tx|Selector16~0_combout\ : std_logic;
SIGNAL \u_tx|Selector8~0_combout\ : std_logic;
SIGNAL \u_tx|always1~2_combout\ : std_logic;
SIGNAL \u_tx|Selector523~3_combout\ : std_logic;
SIGNAL \u_tx|shift_reg[103]~0_combout\ : std_logic;
SIGNAL \u_tx|Add2~1\ : std_logic;
SIGNAL \u_tx|Add2~2_combout\ : std_logic;
SIGNAL \u_tx|Selector519~0_combout\ : std_logic;
SIGNAL \u_tx|Add2~3\ : std_logic;
SIGNAL \u_tx|Add2~4_combout\ : std_logic;
SIGNAL \u_tx|Selector518~0_combout\ : std_logic;
SIGNAL \u_tx|Add2~5\ : std_logic;
SIGNAL \u_tx|Add2~6_combout\ : std_logic;
SIGNAL \u_tx|Selector517~0_combout\ : std_logic;
SIGNAL \u_tx|Add2~7\ : std_logic;
SIGNAL \u_tx|Add2~8_combout\ : std_logic;
SIGNAL \u_tx|Selector516~0_combout\ : std_logic;
SIGNAL \u_tx|Add2~9\ : std_logic;
SIGNAL \u_tx|Add2~10_combout\ : std_logic;
SIGNAL \u_tx|Selector515~0_combout\ : std_logic;
SIGNAL \u_tx|Add2~11\ : std_logic;
SIGNAL \u_tx|Add2~12_combout\ : std_logic;
SIGNAL \u_tx|Selector514~0_combout\ : std_logic;
SIGNAL \u_tx|Selector523~4_combout\ : std_logic;
SIGNAL \u_tx|Selector524~0_combout\ : std_logic;
SIGNAL \u_tx|Selector523~5_combout\ : std_logic;
SIGNAL \u_tx|Selector523~7_combout\ : std_logic;
SIGNAL \u_tx|Add2~13\ : std_logic;
SIGNAL \u_tx|Add2~14_combout\ : std_logic;
SIGNAL \u_tx|Add2~15\ : std_logic;
SIGNAL \u_tx|Add2~16_combout\ : std_logic;
SIGNAL \u_tx|Equal3~0_combout\ : std_logic;
SIGNAL \u_tx|Equal3~1_combout\ : std_logic;
SIGNAL \u_tx|always1~3_combout\ : std_logic;
SIGNAL \u_tx|Selector523~6_combout\ : std_logic;
SIGNAL \u_tx|state.S_START~q\ : std_logic;
SIGNAL \u_tx|Selector521~0_combout\ : std_logic;
SIGNAL \u_tx|Selector521~2_combout\ : std_logic;
SIGNAL \u_tx|Selector521~3_combout\ : std_logic;
SIGNAL \u_tx|Selector521~4_combout\ : std_logic;
SIGNAL \u_tx|tx_busy~q\ : std_logic;
SIGNAL \u_tx|baud_cnt[3]~20_combout\ : std_logic;
SIGNAL \u_tx|baud_cnt[0]~17\ : std_logic;
SIGNAL \u_tx|baud_cnt[1]~18_combout\ : std_logic;
SIGNAL \u_tx|baud_cnt[1]~19\ : std_logic;
SIGNAL \u_tx|baud_cnt[2]~21_combout\ : std_logic;
SIGNAL \u_tx|baud_cnt[2]~22\ : std_logic;
SIGNAL \u_tx|baud_cnt[3]~23_combout\ : std_logic;
SIGNAL \u_tx|baud_cnt[3]~24\ : std_logic;
SIGNAL \u_tx|baud_cnt[4]~25_combout\ : std_logic;
SIGNAL \u_tx|baud_cnt[4]~26\ : std_logic;
SIGNAL \u_tx|baud_cnt[5]~27_combout\ : std_logic;
SIGNAL \u_tx|baud_cnt[5]~28\ : std_logic;
SIGNAL \u_tx|baud_cnt[6]~29_combout\ : std_logic;
SIGNAL \u_tx|baud_cnt[6]~30\ : std_logic;
SIGNAL \u_tx|baud_cnt[7]~31_combout\ : std_logic;
SIGNAL \u_tx|baud_cnt[7]~32\ : std_logic;
SIGNAL \u_tx|baud_cnt[8]~33_combout\ : std_logic;
SIGNAL \u_tx|baud_cnt[8]~34\ : std_logic;
SIGNAL \u_tx|baud_cnt[9]~35_combout\ : std_logic;
SIGNAL \u_tx|baud_cnt[9]~36\ : std_logic;
SIGNAL \u_tx|baud_cnt[10]~37_combout\ : std_logic;
SIGNAL \u_tx|baud_cnt[10]~38\ : std_logic;
SIGNAL \u_tx|baud_cnt[11]~39_combout\ : std_logic;
SIGNAL \u_tx|baud_cnt[11]~40\ : std_logic;
SIGNAL \u_tx|baud_cnt[12]~41_combout\ : std_logic;
SIGNAL \u_tx|baud_cnt[12]~42\ : std_logic;
SIGNAL \u_tx|baud_cnt[13]~43_combout\ : std_logic;
SIGNAL \u_tx|baud_cnt[13]~44\ : std_logic;
SIGNAL \u_tx|baud_cnt[14]~45_combout\ : std_logic;
SIGNAL \u_tx|baud_cnt[14]~46\ : std_logic;
SIGNAL \u_tx|baud_cnt[15]~47_combout\ : std_logic;
SIGNAL \u_tx|Equal0~3_combout\ : std_logic;
SIGNAL \u_tx|Equal0~2_combout\ : std_logic;
SIGNAL \u_tx|Equal0~0_combout\ : std_logic;
SIGNAL \u_tx|Equal0~1_combout\ : std_logic;
SIGNAL \u_tx|Equal0~4_combout\ : std_logic;
SIGNAL \u_tx|Selector524~1_combout\ : std_logic;
SIGNAL \u_tx|state.S_DATA~q\ : std_logic;
SIGNAL \u_tx|bit_idx[1]~0_combout\ : std_logic;
SIGNAL \u_tx|bit_idx[0]~1_combout\ : std_logic;
SIGNAL \u_tx|bit_idx[1]~2_combout\ : std_logic;
SIGNAL \u_tx|Add1~0_combout\ : std_logic;
SIGNAL \u_tx|bit_idx[2]~3_combout\ : std_logic;
SIGNAL \u_tx|Equal2~0_combout\ : std_logic;
SIGNAL \u_tx|Selector525~0_combout\ : std_logic;
SIGNAL \u_tx|state.S_STOP~q\ : std_logic;
SIGNAL \u_tx|Selector523~2_combout\ : std_logic;
SIGNAL \u_tx|Selector522~3_combout\ : std_logic;
SIGNAL \u_tx|Selector522~2_combout\ : std_logic;
SIGNAL \u_tx|state.S_IDLE~q\ : std_logic;
SIGNAL \u_tx|Selector513~0_combout\ : std_logic;
SIGNAL \u_tx|Selector0~3_combout\ : std_logic;
SIGNAL \u_tx|shift_byte[5]~feeder_combout\ : std_logic;
SIGNAL \u_tx|Selector0~0_combout\ : std_logic;
SIGNAL \u_tx|Selector0~1_combout\ : std_logic;
SIGNAL \u_tx|shift_byte[1]~feeder_combout\ : std_logic;
SIGNAL \u_tx|Mux0~0_combout\ : std_logic;
SIGNAL \u_tx|Mux0~1_combout\ : std_logic;
SIGNAL \u_tx|Selector0~2_combout\ : std_logic;
SIGNAL \u_tx|Selector0~4_combout\ : std_logic;
SIGNAL \u_tx|tx~q\ : std_logic;
SIGNAL \RST_WiFi~0_combout\ : std_logic;
SIGNAL \RST_WiFi~reg0_q\ : std_logic;
SIGNAL rst_cnt : std_logic_vector(20 DOWNTO 0);
SIGNAL delay_cnt : std_logic_vector(27 DOWNTO 0);
SIGNAL current_cmd : std_logic_vector(511 DOWNTO 0);
SIGNAL cooldown_cnt : std_logic_vector(27 DOWNTO 0);
SIGNAL \u_tx|baud_cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_button_3x3|row\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_tx|shift_byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_tx|shift_reg\ : std_logic_vector(511 DOWNTO 0);
SIGNAL \u_tx|byte_cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_tx|bit_idx\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_button_3x3|key\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_button_3x3|clk_cnt\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \u_button_3x3|bond\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_rx|rx_shift_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_rx|rx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_rx|clk_cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_rx|bit_idx\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_state.S_SEND_DATA~q\ : std_logic;
SIGNAL \ALT_INV_Selector30~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector552~0_combout\ : std_logic;
SIGNAL \ALT_INV_delay_cnt[27]~30_combout\ : std_logic;
SIGNAL \ALT_INV_state.S_COOL_DOWN~q\ : std_logic;
SIGNAL \u_tx|ALT_INV_tx~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst_n <= rst_n;
ww_column <= column;
row <= ww_row;
ww_rx <= rx;
tx <= ww_tx;
Client_WiFi_txd <= ww_Client_WiFi_txd;
RST_WiFi <= ww_RST_WiFi;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u_button_3x3|clk_cnt[18]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u_button_3x3|clk_cnt\(18));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_state.S_SEND_DATA~q\ <= NOT \state.S_SEND_DATA~q\;
\ALT_INV_Selector30~0_combout\ <= NOT \Selector30~0_combout\;
\ALT_INV_Selector552~0_combout\ <= NOT \Selector552~0_combout\;
\ALT_INV_delay_cnt[27]~30_combout\ <= NOT \delay_cnt[27]~30_combout\;
\ALT_INV_state.S_COOL_DOWN~q\ <= NOT \state.S_COOL_DOWN~q\;
\u_tx|ALT_INV_tx~q\ <= NOT \u_tx|tx~q\;

-- Location: IOOBUF_X0_Y5_N9
\row[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_button_3x3|row\(0),
	devoe => ww_devoe,
	o => \row[0]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\row[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_button_3x3|row\(1),
	devoe => ww_devoe,
	o => \row[1]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\row[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_button_3x3|row\(2),
	devoe => ww_devoe,
	o => \row[2]~output_o\);

-- Location: IOOBUF_X67_Y27_N16
\tx~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_tx|ALT_INV_tx~q\,
	devoe => ww_devoe,
	o => \tx~output_o\);

-- Location: IOOBUF_X67_Y28_N23
\Client_WiFi_txd~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx~input_o\,
	devoe => ww_devoe,
	o => \Client_WiFi_txd~output_o\);

-- Location: IOOBUF_X67_Y25_N16
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

-- Location: IOIBUF_X67_Y22_N22
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G8
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X36_Y42_N12
\u_button_3x3|clk_cnt[0]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|clk_cnt[0]~54_combout\ = !\u_button_3x3|clk_cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_button_3x3|clk_cnt\(0),
	combout => \u_button_3x3|clk_cnt[0]~54_combout\);

-- Location: FF_X36_Y42_N13
\u_button_3x3|clk_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_button_3x3|clk_cnt[0]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_button_3x3|clk_cnt\(0));

-- Location: LCCOMB_X36_Y42_N14
\u_button_3x3|clk_cnt[1]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|clk_cnt[1]~18_combout\ = (\u_button_3x3|clk_cnt\(0) & (\u_button_3x3|clk_cnt\(1) $ (VCC))) # (!\u_button_3x3|clk_cnt\(0) & (\u_button_3x3|clk_cnt\(1) & VCC))
-- \u_button_3x3|clk_cnt[1]~19\ = CARRY((\u_button_3x3|clk_cnt\(0) & \u_button_3x3|clk_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_button_3x3|clk_cnt\(0),
	datab => \u_button_3x3|clk_cnt\(1),
	datad => VCC,
	combout => \u_button_3x3|clk_cnt[1]~18_combout\,
	cout => \u_button_3x3|clk_cnt[1]~19\);

-- Location: FF_X36_Y42_N15
\u_button_3x3|clk_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_button_3x3|clk_cnt[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_button_3x3|clk_cnt\(1));

-- Location: LCCOMB_X36_Y42_N16
\u_button_3x3|clk_cnt[2]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|clk_cnt[2]~20_combout\ = (\u_button_3x3|clk_cnt\(2) & (!\u_button_3x3|clk_cnt[1]~19\)) # (!\u_button_3x3|clk_cnt\(2) & ((\u_button_3x3|clk_cnt[1]~19\) # (GND)))
-- \u_button_3x3|clk_cnt[2]~21\ = CARRY((!\u_button_3x3|clk_cnt[1]~19\) # (!\u_button_3x3|clk_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_button_3x3|clk_cnt\(2),
	datad => VCC,
	cin => \u_button_3x3|clk_cnt[1]~19\,
	combout => \u_button_3x3|clk_cnt[2]~20_combout\,
	cout => \u_button_3x3|clk_cnt[2]~21\);

-- Location: FF_X36_Y42_N17
\u_button_3x3|clk_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_button_3x3|clk_cnt[2]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_button_3x3|clk_cnt\(2));

-- Location: LCCOMB_X36_Y42_N18
\u_button_3x3|clk_cnt[3]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|clk_cnt[3]~22_combout\ = (\u_button_3x3|clk_cnt\(3) & (\u_button_3x3|clk_cnt[2]~21\ $ (GND))) # (!\u_button_3x3|clk_cnt\(3) & (!\u_button_3x3|clk_cnt[2]~21\ & VCC))
-- \u_button_3x3|clk_cnt[3]~23\ = CARRY((\u_button_3x3|clk_cnt\(3) & !\u_button_3x3|clk_cnt[2]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_button_3x3|clk_cnt\(3),
	datad => VCC,
	cin => \u_button_3x3|clk_cnt[2]~21\,
	combout => \u_button_3x3|clk_cnt[3]~22_combout\,
	cout => \u_button_3x3|clk_cnt[3]~23\);

-- Location: FF_X36_Y42_N19
\u_button_3x3|clk_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_button_3x3|clk_cnt[3]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_button_3x3|clk_cnt\(3));

-- Location: LCCOMB_X36_Y42_N20
\u_button_3x3|clk_cnt[4]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|clk_cnt[4]~24_combout\ = (\u_button_3x3|clk_cnt\(4) & (!\u_button_3x3|clk_cnt[3]~23\)) # (!\u_button_3x3|clk_cnt\(4) & ((\u_button_3x3|clk_cnt[3]~23\) # (GND)))
-- \u_button_3x3|clk_cnt[4]~25\ = CARRY((!\u_button_3x3|clk_cnt[3]~23\) # (!\u_button_3x3|clk_cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_button_3x3|clk_cnt\(4),
	datad => VCC,
	cin => \u_button_3x3|clk_cnt[3]~23\,
	combout => \u_button_3x3|clk_cnt[4]~24_combout\,
	cout => \u_button_3x3|clk_cnt[4]~25\);

-- Location: FF_X36_Y42_N21
\u_button_3x3|clk_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_button_3x3|clk_cnt[4]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_button_3x3|clk_cnt\(4));

-- Location: LCCOMB_X36_Y42_N22
\u_button_3x3|clk_cnt[5]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|clk_cnt[5]~26_combout\ = (\u_button_3x3|clk_cnt\(5) & (\u_button_3x3|clk_cnt[4]~25\ $ (GND))) # (!\u_button_3x3|clk_cnt\(5) & (!\u_button_3x3|clk_cnt[4]~25\ & VCC))
-- \u_button_3x3|clk_cnt[5]~27\ = CARRY((\u_button_3x3|clk_cnt\(5) & !\u_button_3x3|clk_cnt[4]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_button_3x3|clk_cnt\(5),
	datad => VCC,
	cin => \u_button_3x3|clk_cnt[4]~25\,
	combout => \u_button_3x3|clk_cnt[5]~26_combout\,
	cout => \u_button_3x3|clk_cnt[5]~27\);

-- Location: FF_X36_Y42_N23
\u_button_3x3|clk_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_button_3x3|clk_cnt[5]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_button_3x3|clk_cnt\(5));

-- Location: LCCOMB_X36_Y42_N24
\u_button_3x3|clk_cnt[6]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|clk_cnt[6]~28_combout\ = (\u_button_3x3|clk_cnt\(6) & (!\u_button_3x3|clk_cnt[5]~27\)) # (!\u_button_3x3|clk_cnt\(6) & ((\u_button_3x3|clk_cnt[5]~27\) # (GND)))
-- \u_button_3x3|clk_cnt[6]~29\ = CARRY((!\u_button_3x3|clk_cnt[5]~27\) # (!\u_button_3x3|clk_cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_button_3x3|clk_cnt\(6),
	datad => VCC,
	cin => \u_button_3x3|clk_cnt[5]~27\,
	combout => \u_button_3x3|clk_cnt[6]~28_combout\,
	cout => \u_button_3x3|clk_cnt[6]~29\);

-- Location: FF_X36_Y42_N25
\u_button_3x3|clk_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_button_3x3|clk_cnt[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_button_3x3|clk_cnt\(6));

-- Location: LCCOMB_X36_Y42_N26
\u_button_3x3|clk_cnt[7]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|clk_cnt[7]~30_combout\ = (\u_button_3x3|clk_cnt\(7) & (\u_button_3x3|clk_cnt[6]~29\ $ (GND))) # (!\u_button_3x3|clk_cnt\(7) & (!\u_button_3x3|clk_cnt[6]~29\ & VCC))
-- \u_button_3x3|clk_cnt[7]~31\ = CARRY((\u_button_3x3|clk_cnt\(7) & !\u_button_3x3|clk_cnt[6]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_button_3x3|clk_cnt\(7),
	datad => VCC,
	cin => \u_button_3x3|clk_cnt[6]~29\,
	combout => \u_button_3x3|clk_cnt[7]~30_combout\,
	cout => \u_button_3x3|clk_cnt[7]~31\);

-- Location: FF_X36_Y42_N27
\u_button_3x3|clk_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_button_3x3|clk_cnt[7]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_button_3x3|clk_cnt\(7));

-- Location: LCCOMB_X36_Y42_N28
\u_button_3x3|clk_cnt[8]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|clk_cnt[8]~32_combout\ = (\u_button_3x3|clk_cnt\(8) & (!\u_button_3x3|clk_cnt[7]~31\)) # (!\u_button_3x3|clk_cnt\(8) & ((\u_button_3x3|clk_cnt[7]~31\) # (GND)))
-- \u_button_3x3|clk_cnt[8]~33\ = CARRY((!\u_button_3x3|clk_cnt[7]~31\) # (!\u_button_3x3|clk_cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_button_3x3|clk_cnt\(8),
	datad => VCC,
	cin => \u_button_3x3|clk_cnt[7]~31\,
	combout => \u_button_3x3|clk_cnt[8]~32_combout\,
	cout => \u_button_3x3|clk_cnt[8]~33\);

-- Location: FF_X36_Y42_N29
\u_button_3x3|clk_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_button_3x3|clk_cnt[8]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_button_3x3|clk_cnt\(8));

-- Location: LCCOMB_X36_Y42_N30
\u_button_3x3|clk_cnt[9]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|clk_cnt[9]~34_combout\ = (\u_button_3x3|clk_cnt\(9) & (\u_button_3x3|clk_cnt[8]~33\ $ (GND))) # (!\u_button_3x3|clk_cnt\(9) & (!\u_button_3x3|clk_cnt[8]~33\ & VCC))
-- \u_button_3x3|clk_cnt[9]~35\ = CARRY((\u_button_3x3|clk_cnt\(9) & !\u_button_3x3|clk_cnt[8]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_button_3x3|clk_cnt\(9),
	datad => VCC,
	cin => \u_button_3x3|clk_cnt[8]~33\,
	combout => \u_button_3x3|clk_cnt[9]~34_combout\,
	cout => \u_button_3x3|clk_cnt[9]~35\);

-- Location: FF_X36_Y42_N31
\u_button_3x3|clk_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_button_3x3|clk_cnt[9]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_button_3x3|clk_cnt\(9));

-- Location: LCCOMB_X36_Y41_N0
\u_button_3x3|clk_cnt[10]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|clk_cnt[10]~36_combout\ = (\u_button_3x3|clk_cnt\(10) & (!\u_button_3x3|clk_cnt[9]~35\)) # (!\u_button_3x3|clk_cnt\(10) & ((\u_button_3x3|clk_cnt[9]~35\) # (GND)))
-- \u_button_3x3|clk_cnt[10]~37\ = CARRY((!\u_button_3x3|clk_cnt[9]~35\) # (!\u_button_3x3|clk_cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_button_3x3|clk_cnt\(10),
	datad => VCC,
	cin => \u_button_3x3|clk_cnt[9]~35\,
	combout => \u_button_3x3|clk_cnt[10]~36_combout\,
	cout => \u_button_3x3|clk_cnt[10]~37\);

-- Location: FF_X36_Y41_N1
\u_button_3x3|clk_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_button_3x3|clk_cnt[10]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_button_3x3|clk_cnt\(10));

-- Location: LCCOMB_X36_Y41_N2
\u_button_3x3|clk_cnt[11]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|clk_cnt[11]~38_combout\ = (\u_button_3x3|clk_cnt\(11) & (\u_button_3x3|clk_cnt[10]~37\ $ (GND))) # (!\u_button_3x3|clk_cnt\(11) & (!\u_button_3x3|clk_cnt[10]~37\ & VCC))
-- \u_button_3x3|clk_cnt[11]~39\ = CARRY((\u_button_3x3|clk_cnt\(11) & !\u_button_3x3|clk_cnt[10]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_button_3x3|clk_cnt\(11),
	datad => VCC,
	cin => \u_button_3x3|clk_cnt[10]~37\,
	combout => \u_button_3x3|clk_cnt[11]~38_combout\,
	cout => \u_button_3x3|clk_cnt[11]~39\);

-- Location: FF_X36_Y41_N3
\u_button_3x3|clk_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_button_3x3|clk_cnt[11]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_button_3x3|clk_cnt\(11));

-- Location: LCCOMB_X36_Y41_N4
\u_button_3x3|clk_cnt[12]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|clk_cnt[12]~40_combout\ = (\u_button_3x3|clk_cnt\(12) & (!\u_button_3x3|clk_cnt[11]~39\)) # (!\u_button_3x3|clk_cnt\(12) & ((\u_button_3x3|clk_cnt[11]~39\) # (GND)))
-- \u_button_3x3|clk_cnt[12]~41\ = CARRY((!\u_button_3x3|clk_cnt[11]~39\) # (!\u_button_3x3|clk_cnt\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_button_3x3|clk_cnt\(12),
	datad => VCC,
	cin => \u_button_3x3|clk_cnt[11]~39\,
	combout => \u_button_3x3|clk_cnt[12]~40_combout\,
	cout => \u_button_3x3|clk_cnt[12]~41\);

-- Location: FF_X36_Y41_N5
\u_button_3x3|clk_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_button_3x3|clk_cnt[12]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_button_3x3|clk_cnt\(12));

-- Location: LCCOMB_X36_Y41_N6
\u_button_3x3|clk_cnt[13]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|clk_cnt[13]~42_combout\ = (\u_button_3x3|clk_cnt\(13) & (\u_button_3x3|clk_cnt[12]~41\ $ (GND))) # (!\u_button_3x3|clk_cnt\(13) & (!\u_button_3x3|clk_cnt[12]~41\ & VCC))
-- \u_button_3x3|clk_cnt[13]~43\ = CARRY((\u_button_3x3|clk_cnt\(13) & !\u_button_3x3|clk_cnt[12]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_button_3x3|clk_cnt\(13),
	datad => VCC,
	cin => \u_button_3x3|clk_cnt[12]~41\,
	combout => \u_button_3x3|clk_cnt[13]~42_combout\,
	cout => \u_button_3x3|clk_cnt[13]~43\);

-- Location: FF_X36_Y41_N7
\u_button_3x3|clk_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_button_3x3|clk_cnt[13]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_button_3x3|clk_cnt\(13));

-- Location: LCCOMB_X36_Y41_N8
\u_button_3x3|clk_cnt[14]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|clk_cnt[14]~44_combout\ = (\u_button_3x3|clk_cnt\(14) & (!\u_button_3x3|clk_cnt[13]~43\)) # (!\u_button_3x3|clk_cnt\(14) & ((\u_button_3x3|clk_cnt[13]~43\) # (GND)))
-- \u_button_3x3|clk_cnt[14]~45\ = CARRY((!\u_button_3x3|clk_cnt[13]~43\) # (!\u_button_3x3|clk_cnt\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_button_3x3|clk_cnt\(14),
	datad => VCC,
	cin => \u_button_3x3|clk_cnt[13]~43\,
	combout => \u_button_3x3|clk_cnt[14]~44_combout\,
	cout => \u_button_3x3|clk_cnt[14]~45\);

-- Location: FF_X36_Y41_N9
\u_button_3x3|clk_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_button_3x3|clk_cnt[14]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_button_3x3|clk_cnt\(14));

-- Location: LCCOMB_X36_Y41_N10
\u_button_3x3|clk_cnt[15]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|clk_cnt[15]~46_combout\ = (\u_button_3x3|clk_cnt\(15) & (\u_button_3x3|clk_cnt[14]~45\ $ (GND))) # (!\u_button_3x3|clk_cnt\(15) & (!\u_button_3x3|clk_cnt[14]~45\ & VCC))
-- \u_button_3x3|clk_cnt[15]~47\ = CARRY((\u_button_3x3|clk_cnt\(15) & !\u_button_3x3|clk_cnt[14]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_button_3x3|clk_cnt\(15),
	datad => VCC,
	cin => \u_button_3x3|clk_cnt[14]~45\,
	combout => \u_button_3x3|clk_cnt[15]~46_combout\,
	cout => \u_button_3x3|clk_cnt[15]~47\);

-- Location: FF_X36_Y41_N11
\u_button_3x3|clk_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_button_3x3|clk_cnt[15]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_button_3x3|clk_cnt\(15));

-- Location: LCCOMB_X36_Y41_N12
\u_button_3x3|clk_cnt[16]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|clk_cnt[16]~48_combout\ = (\u_button_3x3|clk_cnt\(16) & (!\u_button_3x3|clk_cnt[15]~47\)) # (!\u_button_3x3|clk_cnt\(16) & ((\u_button_3x3|clk_cnt[15]~47\) # (GND)))
-- \u_button_3x3|clk_cnt[16]~49\ = CARRY((!\u_button_3x3|clk_cnt[15]~47\) # (!\u_button_3x3|clk_cnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_button_3x3|clk_cnt\(16),
	datad => VCC,
	cin => \u_button_3x3|clk_cnt[15]~47\,
	combout => \u_button_3x3|clk_cnt[16]~48_combout\,
	cout => \u_button_3x3|clk_cnt[16]~49\);

-- Location: FF_X36_Y41_N13
\u_button_3x3|clk_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_button_3x3|clk_cnt[16]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_button_3x3|clk_cnt\(16));

-- Location: LCCOMB_X36_Y41_N14
\u_button_3x3|clk_cnt[17]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|clk_cnt[17]~50_combout\ = (\u_button_3x3|clk_cnt\(17) & (\u_button_3x3|clk_cnt[16]~49\ $ (GND))) # (!\u_button_3x3|clk_cnt\(17) & (!\u_button_3x3|clk_cnt[16]~49\ & VCC))
-- \u_button_3x3|clk_cnt[17]~51\ = CARRY((\u_button_3x3|clk_cnt\(17) & !\u_button_3x3|clk_cnt[16]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_button_3x3|clk_cnt\(17),
	datad => VCC,
	cin => \u_button_3x3|clk_cnt[16]~49\,
	combout => \u_button_3x3|clk_cnt[17]~50_combout\,
	cout => \u_button_3x3|clk_cnt[17]~51\);

-- Location: FF_X36_Y41_N15
\u_button_3x3|clk_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_button_3x3|clk_cnt[17]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_button_3x3|clk_cnt\(17));

-- Location: LCCOMB_X36_Y41_N16
\u_button_3x3|clk_cnt[18]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|clk_cnt[18]~52_combout\ = \u_button_3x3|clk_cnt\(18) $ (\u_button_3x3|clk_cnt[17]~51\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_button_3x3|clk_cnt\(18),
	cin => \u_button_3x3|clk_cnt[17]~51\,
	combout => \u_button_3x3|clk_cnt[18]~52_combout\);

-- Location: FF_X36_Y41_N17
\u_button_3x3|clk_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_button_3x3|clk_cnt[18]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_button_3x3|clk_cnt\(18));

-- Location: CLKCTRL_G12
\u_button_3x3|clk_cnt[18]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u_button_3x3|clk_cnt[18]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u_button_3x3|clk_cnt[18]~clkctrl_outclk\);

-- Location: LCCOMB_X53_Y30_N20
\u_button_3x3|bond[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|bond[1]~feeder_combout\ = \u_button_3x3|key~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_button_3x3|key~0_combout\,
	combout => \u_button_3x3|bond[1]~feeder_combout\);

-- Location: IOIBUF_X3_Y0_N15
\column[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_column(1),
	o => \column[1]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\column[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_column(2),
	o => \column[2]~input_o\);

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

-- Location: LCCOMB_X53_Y33_N8
\u_button_3x3|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|Equal0~0_combout\ = (\column[1]~input_o\ & (\column[2]~input_o\ & \column[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \column[1]~input_o\,
	datac => \column[2]~input_o\,
	datad => \column[0]~input_o\,
	combout => \u_button_3x3|Equal0~0_combout\);

-- Location: FF_X53_Y30_N21
\u_button_3x3|bond[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_button_3x3|clk_cnt[18]~clkctrl_outclk\,
	d => \u_button_3x3|bond[1]~feeder_combout\,
	ena => \u_button_3x3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_button_3x3|bond\(1));

-- Location: LCCOMB_X53_Y30_N18
\u_button_3x3|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|Mux6~0_combout\ = (\u_button_3x3|bond\(0)) # (\u_button_3x3|bond\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_button_3x3|bond\(0),
	datad => \u_button_3x3|bond\(1),
	combout => \u_button_3x3|Mux6~0_combout\);

-- Location: LCCOMB_X53_Y30_N22
\u_button_3x3|bond[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|bond[0]~0_combout\ = !\u_button_3x3|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_button_3x3|Mux6~0_combout\,
	combout => \u_button_3x3|bond[0]~0_combout\);

-- Location: FF_X53_Y30_N23
\u_button_3x3|bond[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_button_3x3|clk_cnt[18]~clkctrl_outclk\,
	d => \u_button_3x3|bond[0]~0_combout\,
	ena => \u_button_3x3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_button_3x3|bond\(0));

-- Location: LCCOMB_X53_Y30_N2
\u_button_3x3|key~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|key~0_combout\ = (\u_button_3x3|bond\(0) & !\u_button_3x3|bond\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_button_3x3|bond\(0),
	datad => \u_button_3x3|bond\(1),
	combout => \u_button_3x3|key~0_combout\);

-- Location: LCCOMB_X53_Y30_N16
\u_button_3x3|row[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|row[0]~1_combout\ = !\u_button_3x3|key~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_button_3x3|key~0_combout\,
	combout => \u_button_3x3|row[0]~1_combout\);

-- Location: LCCOMB_X53_Y30_N24
\u_button_3x3|row[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|row[0]~0_combout\ = (!\u_button_3x3|bond\(1)) # (!\u_button_3x3|bond\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_button_3x3|bond\(0),
	datad => \u_button_3x3|bond\(1),
	combout => \u_button_3x3|row[0]~0_combout\);

-- Location: FF_X53_Y30_N17
\u_button_3x3|row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_button_3x3|clk_cnt[18]~clkctrl_outclk\,
	d => \u_button_3x3|row[0]~1_combout\,
	ena => \u_button_3x3|row[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_button_3x3|row\(0));

-- Location: FF_X53_Y30_N19
\u_button_3x3|row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_button_3x3|clk_cnt[18]~clkctrl_outclk\,
	d => \u_button_3x3|Mux6~0_combout\,
	ena => \u_button_3x3|row[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_button_3x3|row\(1));

-- Location: LCCOMB_X53_Y30_N28
\u_button_3x3|row[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|row[2]~2_combout\ = !\u_button_3x3|bond\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_button_3x3|bond\(1),
	combout => \u_button_3x3|row[2]~2_combout\);

-- Location: FF_X53_Y30_N29
\u_button_3x3|row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_button_3x3|clk_cnt[18]~clkctrl_outclk\,
	d => \u_button_3x3|row[2]~2_combout\,
	ena => \u_button_3x3|row[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_button_3x3|row\(2));

-- Location: LCCOMB_X57_Y29_N0
\u_tx|baud_cnt[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|baud_cnt[0]~16_combout\ = \u_tx|baud_cnt\(0) $ (VCC)
-- \u_tx|baud_cnt[0]~17\ = CARRY(\u_tx|baud_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|baud_cnt\(0),
	datad => VCC,
	combout => \u_tx|baud_cnt[0]~16_combout\,
	cout => \u_tx|baud_cnt[0]~17\);

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

-- Location: LCCOMB_X57_Y31_N4
\Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = cooldown_cnt(0) $ (VCC)
-- \Add2~17\ = CARRY(cooldown_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cooldown_cnt(0),
	datad => VCC,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X56_Y31_N16
\Add2~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~91_combout\ = (!\LessThan2~5_combout\ & (!\LessThan2~3_combout\ & (!\LessThan2~7_combout\ & \Add2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~5_combout\,
	datab => \LessThan2~3_combout\,
	datac => \LessThan2~7_combout\,
	datad => \Add2~16_combout\,
	combout => \Add2~91_combout\);

-- Location: IOIBUF_X67_Y26_N22
\rx~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx,
	o => \rx~input_o\);

-- Location: LCCOMB_X63_Y28_N26
\u_rx|rx_sync1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|rx_sync1~0_combout\ = !\rx~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx~input_o\,
	combout => \u_rx|rx_sync1~0_combout\);

-- Location: FF_X63_Y28_N27
\u_rx|rx_sync1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|rx_sync1~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|rx_sync1~q\);

-- Location: FF_X52_Y28_N11
\u_rx|rx_sync2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_rx|rx_sync1~q\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|rx_sync2~q\);

-- Location: LCCOMB_X53_Y28_N0
\u_rx|clk_cnt[0]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|clk_cnt[0]~17_combout\ = \u_rx|clk_cnt\(0) $ (VCC)
-- \u_rx|clk_cnt[0]~18\ = CARRY(\u_rx|clk_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_rx|clk_cnt\(0),
	datad => VCC,
	combout => \u_rx|clk_cnt[0]~17_combout\,
	cout => \u_rx|clk_cnt[0]~18\);

-- Location: LCCOMB_X52_Y28_N22
\u_rx|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|Equal0~2_combout\ = (!\u_rx|clk_cnt\(1) & (\u_rx|clk_cnt\(7) & (\u_rx|clk_cnt\(4) & !\u_rx|clk_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|clk_cnt\(1),
	datab => \u_rx|clk_cnt\(7),
	datac => \u_rx|clk_cnt\(4),
	datad => \u_rx|clk_cnt\(2),
	combout => \u_rx|Equal0~2_combout\);

-- Location: LCCOMB_X53_Y28_N16
\u_rx|clk_cnt[8]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|clk_cnt[8]~37_combout\ = (\u_rx|clk_cnt\(8) & (\u_rx|clk_cnt[7]~36\ $ (GND))) # (!\u_rx|clk_cnt\(8) & (!\u_rx|clk_cnt[7]~36\ & VCC))
-- \u_rx|clk_cnt[8]~38\ = CARRY((\u_rx|clk_cnt\(8) & !\u_rx|clk_cnt[7]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_rx|clk_cnt\(8),
	datad => VCC,
	cin => \u_rx|clk_cnt[7]~36\,
	combout => \u_rx|clk_cnt[8]~37_combout\,
	cout => \u_rx|clk_cnt[8]~38\);

-- Location: LCCOMB_X53_Y28_N18
\u_rx|clk_cnt[9]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|clk_cnt[9]~39_combout\ = (\u_rx|clk_cnt\(9) & (!\u_rx|clk_cnt[8]~38\)) # (!\u_rx|clk_cnt\(9) & ((\u_rx|clk_cnt[8]~38\) # (GND)))
-- \u_rx|clk_cnt[9]~40\ = CARRY((!\u_rx|clk_cnt[8]~38\) # (!\u_rx|clk_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_rx|clk_cnt\(9),
	datad => VCC,
	cin => \u_rx|clk_cnt[8]~38\,
	combout => \u_rx|clk_cnt[9]~39_combout\,
	cout => \u_rx|clk_cnt[9]~40\);

-- Location: FF_X53_Y28_N19
\u_rx|clk_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|clk_cnt[9]~39_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_rx|clk_cnt[13]~19_combout\,
	ena => \u_rx|clk_cnt[13]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|clk_cnt\(9));

-- Location: LCCOMB_X53_Y28_N20
\u_rx|clk_cnt[10]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|clk_cnt[10]~41_combout\ = (\u_rx|clk_cnt\(10) & (\u_rx|clk_cnt[9]~40\ $ (GND))) # (!\u_rx|clk_cnt\(10) & (!\u_rx|clk_cnt[9]~40\ & VCC))
-- \u_rx|clk_cnt[10]~42\ = CARRY((\u_rx|clk_cnt\(10) & !\u_rx|clk_cnt[9]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_rx|clk_cnt\(10),
	datad => VCC,
	cin => \u_rx|clk_cnt[9]~40\,
	combout => \u_rx|clk_cnt[10]~41_combout\,
	cout => \u_rx|clk_cnt[10]~42\);

-- Location: FF_X53_Y28_N21
\u_rx|clk_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|clk_cnt[10]~41_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_rx|clk_cnt[13]~19_combout\,
	ena => \u_rx|clk_cnt[13]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|clk_cnt\(10));

-- Location: LCCOMB_X53_Y28_N22
\u_rx|clk_cnt[11]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|clk_cnt[11]~43_combout\ = (\u_rx|clk_cnt\(11) & (!\u_rx|clk_cnt[10]~42\)) # (!\u_rx|clk_cnt\(11) & ((\u_rx|clk_cnt[10]~42\) # (GND)))
-- \u_rx|clk_cnt[11]~44\ = CARRY((!\u_rx|clk_cnt[10]~42\) # (!\u_rx|clk_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|clk_cnt\(11),
	datad => VCC,
	cin => \u_rx|clk_cnt[10]~42\,
	combout => \u_rx|clk_cnt[11]~43_combout\,
	cout => \u_rx|clk_cnt[11]~44\);

-- Location: FF_X53_Y28_N23
\u_rx|clk_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|clk_cnt[11]~43_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_rx|clk_cnt[13]~19_combout\,
	ena => \u_rx|clk_cnt[13]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|clk_cnt\(11));

-- Location: LCCOMB_X53_Y28_N24
\u_rx|clk_cnt[12]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|clk_cnt[12]~45_combout\ = (\u_rx|clk_cnt\(12) & (\u_rx|clk_cnt[11]~44\ $ (GND))) # (!\u_rx|clk_cnt\(12) & (!\u_rx|clk_cnt[11]~44\ & VCC))
-- \u_rx|clk_cnt[12]~46\ = CARRY((\u_rx|clk_cnt\(12) & !\u_rx|clk_cnt[11]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_rx|clk_cnt\(12),
	datad => VCC,
	cin => \u_rx|clk_cnt[11]~44\,
	combout => \u_rx|clk_cnt[12]~45_combout\,
	cout => \u_rx|clk_cnt[12]~46\);

-- Location: FF_X53_Y28_N25
\u_rx|clk_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|clk_cnt[12]~45_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_rx|clk_cnt[13]~19_combout\,
	ena => \u_rx|clk_cnt[13]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|clk_cnt\(12));

-- Location: LCCOMB_X53_Y28_N26
\u_rx|clk_cnt[13]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|clk_cnt[13]~47_combout\ = (\u_rx|clk_cnt\(13) & (!\u_rx|clk_cnt[12]~46\)) # (!\u_rx|clk_cnt\(13) & ((\u_rx|clk_cnt[12]~46\) # (GND)))
-- \u_rx|clk_cnt[13]~48\ = CARRY((!\u_rx|clk_cnt[12]~46\) # (!\u_rx|clk_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|clk_cnt\(13),
	datad => VCC,
	cin => \u_rx|clk_cnt[12]~46\,
	combout => \u_rx|clk_cnt[13]~47_combout\,
	cout => \u_rx|clk_cnt[13]~48\);

-- Location: FF_X53_Y28_N27
\u_rx|clk_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|clk_cnt[13]~47_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_rx|clk_cnt[13]~19_combout\,
	ena => \u_rx|clk_cnt[13]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|clk_cnt\(13));

-- Location: LCCOMB_X53_Y28_N28
\u_rx|clk_cnt[14]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|clk_cnt[14]~49_combout\ = (\u_rx|clk_cnt\(14) & (\u_rx|clk_cnt[13]~48\ $ (GND))) # (!\u_rx|clk_cnt\(14) & (!\u_rx|clk_cnt[13]~48\ & VCC))
-- \u_rx|clk_cnt[14]~50\ = CARRY((\u_rx|clk_cnt\(14) & !\u_rx|clk_cnt[13]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_rx|clk_cnt\(14),
	datad => VCC,
	cin => \u_rx|clk_cnt[13]~48\,
	combout => \u_rx|clk_cnt[14]~49_combout\,
	cout => \u_rx|clk_cnt[14]~50\);

-- Location: FF_X53_Y28_N29
\u_rx|clk_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|clk_cnt[14]~49_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_rx|clk_cnt[13]~19_combout\,
	ena => \u_rx|clk_cnt[13]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|clk_cnt\(14));

-- Location: LCCOMB_X53_Y28_N30
\u_rx|clk_cnt[15]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|clk_cnt[15]~51_combout\ = \u_rx|clk_cnt\(15) $ (\u_rx|clk_cnt[14]~50\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|clk_cnt\(15),
	cin => \u_rx|clk_cnt[14]~50\,
	combout => \u_rx|clk_cnt[15]~51_combout\);

-- Location: FF_X53_Y28_N31
\u_rx|clk_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|clk_cnt[15]~51_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_rx|clk_cnt[13]~19_combout\,
	ena => \u_rx|clk_cnt[13]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|clk_cnt\(15));

-- Location: LCCOMB_X52_Y28_N30
\u_rx|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|Equal0~1_combout\ = (!\u_rx|clk_cnt\(14) & (!\u_rx|clk_cnt\(15) & !\u_rx|clk_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_rx|clk_cnt\(14),
	datac => \u_rx|clk_cnt\(15),
	datad => \u_rx|clk_cnt\(13),
	combout => \u_rx|Equal0~1_combout\);

-- Location: LCCOMB_X52_Y28_N12
\u_rx|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|Equal0~0_combout\ = (!\u_rx|clk_cnt\(10) & (!\u_rx|clk_cnt\(9) & (!\u_rx|clk_cnt\(12) & !\u_rx|clk_cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|clk_cnt\(10),
	datab => \u_rx|clk_cnt\(9),
	datac => \u_rx|clk_cnt\(12),
	datad => \u_rx|clk_cnt\(11),
	combout => \u_rx|Equal0~0_combout\);

-- Location: LCCOMB_X52_Y28_N14
\u_rx|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|Equal0~3_combout\ = (\u_rx|Equal0~2_combout\ & (\u_rx|Equal0~1_combout\ & \u_rx|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|Equal0~2_combout\,
	datac => \u_rx|Equal0~1_combout\,
	datad => \u_rx|Equal0~0_combout\,
	combout => \u_rx|Equal0~3_combout\);

-- Location: LCCOMB_X52_Y28_N2
\u_rx|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|Equal2~0_combout\ = (!\u_rx|clk_cnt\(3) & (\u_rx|clk_cnt\(0) & (!\u_rx|clk_cnt\(6) & \u_rx|clk_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|clk_cnt\(3),
	datab => \u_rx|clk_cnt\(0),
	datac => \u_rx|clk_cnt\(6),
	datad => \u_rx|clk_cnt\(5),
	combout => \u_rx|Equal2~0_combout\);

-- Location: LCCOMB_X52_Y28_N0
\u_rx|clk_cnt[13]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|clk_cnt[13]~16_combout\ = (\u_rx|clk_cnt\(8) & (\u_rx|state.S_DATA~q\ & (\u_rx|Equal0~3_combout\ & \u_rx|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|clk_cnt\(8),
	datab => \u_rx|state.S_DATA~q\,
	datac => \u_rx|Equal0~3_combout\,
	datad => \u_rx|Equal2~0_combout\,
	combout => \u_rx|clk_cnt[13]~16_combout\);

-- Location: LCCOMB_X51_Y28_N10
\u_rx|Selector20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|Selector20~0_combout\ = (\u_rx|rx_sync2~q\ & !\u_rx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|rx_sync2~q\,
	datac => \u_rx|state.S_IDLE~q\,
	combout => \u_rx|Selector20~0_combout\);

-- Location: LCCOMB_X52_Y28_N10
\u_rx|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|Equal2~1_combout\ = (\u_rx|clk_cnt\(8) & (\u_rx|Equal0~3_combout\ & \u_rx|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|clk_cnt\(8),
	datab => \u_rx|Equal0~3_combout\,
	datad => \u_rx|Equal2~0_combout\,
	combout => \u_rx|Equal2~1_combout\);

-- Location: LCCOMB_X52_Y28_N16
\u_rx|Selector22~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|Selector22~2_combout\ = (\u_rx|Equal2~1_combout\ & (\u_rx|Selector22~1_combout\ & (\u_rx|state.S_DATA~q\))) # (!\u_rx|Equal2~1_combout\ & (((\u_rx|state.S_STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|Selector22~1_combout\,
	datab => \u_rx|state.S_DATA~q\,
	datac => \u_rx|state.S_STOP~q\,
	datad => \u_rx|Equal2~1_combout\,
	combout => \u_rx|Selector22~2_combout\);

-- Location: FF_X52_Y28_N17
\u_rx|state.S_STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|Selector22~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|state.S_STOP~q\);

-- Location: LCCOMB_X51_Y28_N12
\u_rx|Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|Selector17~0_combout\ = (\u_rx|state.S_START~q\) # ((\u_rx|state.S_STOP~q\) # ((\u_rx|state.S_DATA~q\ & !\u_rx|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|state.S_DATA~q\,
	datab => \u_rx|state.S_START~q\,
	datac => \u_rx|Equal2~1_combout\,
	datad => \u_rx|state.S_STOP~q\,
	combout => \u_rx|Selector17~0_combout\);

-- Location: LCCOMB_X51_Y28_N30
\u_rx|Selector17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|Selector17~1_combout\ = (\u_rx|bit_idx\(1) & ((\u_rx|Selector17~0_combout\) # ((!\u_rx|bit_idx\(0) & \u_rx|clk_cnt[13]~16_combout\)))) # (!\u_rx|bit_idx\(1) & (\u_rx|bit_idx\(0) & (\u_rx|clk_cnt[13]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|bit_idx\(0),
	datab => \u_rx|clk_cnt[13]~16_combout\,
	datac => \u_rx|bit_idx\(1),
	datad => \u_rx|Selector17~0_combout\,
	combout => \u_rx|Selector17~1_combout\);

-- Location: FF_X51_Y28_N31
\u_rx|bit_idx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|Selector17~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|bit_idx\(1));

-- Location: LCCOMB_X51_Y28_N22
\u_rx|Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|Selector16~0_combout\ = (\u_rx|state.S_STOP~q\) # ((\u_rx|state.S_DATA~q\ & ((!\u_rx|bit_idx\(1)) # (!\u_rx|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|state.S_DATA~q\,
	datab => \u_rx|state.S_STOP~q\,
	datac => \u_rx|Equal2~1_combout\,
	datad => \u_rx|bit_idx\(1),
	combout => \u_rx|Selector16~0_combout\);

-- Location: LCCOMB_X51_Y28_N16
\u_rx|Selector16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|Selector16~1_combout\ = (\u_rx|clk_cnt[13]~16_combout\ & (\u_rx|bit_idx\(1) & (\u_rx|bit_idx\(2) $ (\u_rx|bit_idx\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|bit_idx\(2),
	datab => \u_rx|bit_idx\(0),
	datac => \u_rx|clk_cnt[13]~16_combout\,
	datad => \u_rx|bit_idx\(1),
	combout => \u_rx|Selector16~1_combout\);

-- Location: LCCOMB_X51_Y28_N20
\u_rx|Selector16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|Selector16~2_combout\ = (\u_rx|Selector16~1_combout\) # ((\u_rx|bit_idx\(2) & ((\u_rx|Selector16~0_combout\) # (\u_rx|state.S_START~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|Selector16~0_combout\,
	datab => \u_rx|state.S_START~q\,
	datac => \u_rx|bit_idx\(2),
	datad => \u_rx|Selector16~1_combout\,
	combout => \u_rx|Selector16~2_combout\);

-- Location: FF_X51_Y28_N21
\u_rx|bit_idx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|Selector16~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|bit_idx\(2));

-- Location: LCCOMB_X51_Y28_N0
\u_rx|Selector22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|Selector22~1_combout\ = (\u_rx|bit_idx\(0) & (\u_rx|bit_idx\(2) & \u_rx|bit_idx\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_rx|bit_idx\(0),
	datac => \u_rx|bit_idx\(2),
	datad => \u_rx|bit_idx\(1),
	combout => \u_rx|Selector22~1_combout\);

-- Location: LCCOMB_X52_Y28_N28
\u_rx|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|Equal0~4_combout\ = (\u_rx|clk_cnt\(3) & (\u_rx|clk_cnt\(6) & (!\u_rx|clk_cnt\(0) & !\u_rx|clk_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|clk_cnt\(3),
	datab => \u_rx|clk_cnt\(6),
	datac => \u_rx|clk_cnt\(0),
	datad => \u_rx|clk_cnt\(5),
	combout => \u_rx|Equal0~4_combout\);

-- Location: LCCOMB_X52_Y28_N4
\u_rx|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|Equal0~5_combout\ = (!\u_rx|clk_cnt\(8) & (\u_rx|Equal0~3_combout\ & \u_rx|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_rx|clk_cnt\(8),
	datac => \u_rx|Equal0~3_combout\,
	datad => \u_rx|Equal0~4_combout\,
	combout => \u_rx|Equal0~5_combout\);

-- Location: LCCOMB_X52_Y28_N24
\u_rx|Selector19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|Selector19~0_combout\ = (\u_rx|state.S_STOP~q\ & (\u_rx|Equal0~2_combout\ & \u_rx|clk_cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_rx|state.S_STOP~q\,
	datac => \u_rx|Equal0~2_combout\,
	datad => \u_rx|clk_cnt\(8),
	combout => \u_rx|Selector19~0_combout\);

-- Location: LCCOMB_X52_Y28_N20
\u_rx|Selector19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|Selector19~1_combout\ = (\u_rx|Equal0~0_combout\ & (\u_rx|Equal2~0_combout\ & (\u_rx|Equal0~1_combout\ & \u_rx|Selector19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|Equal0~0_combout\,
	datab => \u_rx|Equal2~0_combout\,
	datac => \u_rx|Equal0~1_combout\,
	datad => \u_rx|Selector19~0_combout\,
	combout => \u_rx|Selector19~1_combout\);

-- Location: LCCOMB_X52_Y28_N6
\u_rx|Selector20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|Selector20~1_combout\ = (\u_rx|state.S_START~q\ & (!\u_rx|Selector19~1_combout\ & ((\u_rx|state.S_STOP~q\) # (!\u_rx|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|state.S_STOP~q\,
	datab => \u_rx|state.S_START~q\,
	datac => \u_rx|Equal0~5_combout\,
	datad => \u_rx|Selector19~1_combout\,
	combout => \u_rx|Selector20~1_combout\);

-- Location: LCCOMB_X51_Y28_N28
\u_rx|Selector20~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|Selector20~2_combout\ = (\u_rx|Selector20~0_combout\ & (((!\u_rx|clk_cnt[13]~16_combout\)) # (!\u_rx|Selector22~1_combout\))) # (!\u_rx|Selector20~0_combout\ & (\u_rx|Selector20~1_combout\ & ((!\u_rx|clk_cnt[13]~16_combout\) # 
-- (!\u_rx|Selector22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|Selector20~0_combout\,
	datab => \u_rx|Selector22~1_combout\,
	datac => \u_rx|clk_cnt[13]~16_combout\,
	datad => \u_rx|Selector20~1_combout\,
	combout => \u_rx|Selector20~2_combout\);

-- Location: FF_X51_Y28_N29
\u_rx|state.S_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|Selector20~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|state.S_START~q\);

-- Location: LCCOMB_X52_Y28_N18
\u_rx|Selector19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|Selector19~2_combout\ = (!\u_rx|clk_cnt\(8) & (\u_rx|state.S_START~q\ & (\u_rx|Equal0~3_combout\ & \u_rx|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|clk_cnt\(8),
	datab => \u_rx|state.S_START~q\,
	datac => \u_rx|Equal0~3_combout\,
	datad => \u_rx|Equal0~4_combout\,
	combout => \u_rx|Selector19~2_combout\);

-- Location: LCCOMB_X52_Y28_N8
\u_rx|clk_cnt[13]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|clk_cnt[13]~19_combout\ = (\u_rx|clk_cnt[13]~16_combout\) # ((\u_rx|Selector19~2_combout\) # (!\u_rx|state.S_IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_rx|clk_cnt[13]~16_combout\,
	datac => \u_rx|state.S_IDLE~q\,
	datad => \u_rx|Selector19~2_combout\,
	combout => \u_rx|clk_cnt[13]~19_combout\);

-- Location: FF_X53_Y28_N1
\u_rx|clk_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|clk_cnt[0]~17_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_rx|clk_cnt[13]~19_combout\,
	ena => \u_rx|clk_cnt[13]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|clk_cnt\(0));

-- Location: LCCOMB_X53_Y28_N2
\u_rx|clk_cnt[1]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|clk_cnt[1]~23_combout\ = (\u_rx|clk_cnt\(1) & (!\u_rx|clk_cnt[0]~18\)) # (!\u_rx|clk_cnt\(1) & ((\u_rx|clk_cnt[0]~18\) # (GND)))
-- \u_rx|clk_cnt[1]~24\ = CARRY((!\u_rx|clk_cnt[0]~18\) # (!\u_rx|clk_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_rx|clk_cnt\(1),
	datad => VCC,
	cin => \u_rx|clk_cnt[0]~18\,
	combout => \u_rx|clk_cnt[1]~23_combout\,
	cout => \u_rx|clk_cnt[1]~24\);

-- Location: FF_X53_Y28_N3
\u_rx|clk_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|clk_cnt[1]~23_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_rx|clk_cnt[13]~19_combout\,
	ena => \u_rx|clk_cnt[13]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|clk_cnt\(1));

-- Location: LCCOMB_X53_Y28_N4
\u_rx|clk_cnt[2]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|clk_cnt[2]~25_combout\ = (\u_rx|clk_cnt\(2) & (\u_rx|clk_cnt[1]~24\ $ (GND))) # (!\u_rx|clk_cnt\(2) & (!\u_rx|clk_cnt[1]~24\ & VCC))
-- \u_rx|clk_cnt[2]~26\ = CARRY((\u_rx|clk_cnt\(2) & !\u_rx|clk_cnt[1]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_rx|clk_cnt\(2),
	datad => VCC,
	cin => \u_rx|clk_cnt[1]~24\,
	combout => \u_rx|clk_cnt[2]~25_combout\,
	cout => \u_rx|clk_cnt[2]~26\);

-- Location: FF_X53_Y28_N5
\u_rx|clk_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|clk_cnt[2]~25_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_rx|clk_cnt[13]~19_combout\,
	ena => \u_rx|clk_cnt[13]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|clk_cnt\(2));

-- Location: LCCOMB_X53_Y28_N6
\u_rx|clk_cnt[3]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|clk_cnt[3]~27_combout\ = (\u_rx|clk_cnt\(3) & (!\u_rx|clk_cnt[2]~26\)) # (!\u_rx|clk_cnt\(3) & ((\u_rx|clk_cnt[2]~26\) # (GND)))
-- \u_rx|clk_cnt[3]~28\ = CARRY((!\u_rx|clk_cnt[2]~26\) # (!\u_rx|clk_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|clk_cnt\(3),
	datad => VCC,
	cin => \u_rx|clk_cnt[2]~26\,
	combout => \u_rx|clk_cnt[3]~27_combout\,
	cout => \u_rx|clk_cnt[3]~28\);

-- Location: FF_X53_Y28_N7
\u_rx|clk_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|clk_cnt[3]~27_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_rx|clk_cnt[13]~19_combout\,
	ena => \u_rx|clk_cnt[13]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|clk_cnt\(3));

-- Location: LCCOMB_X53_Y28_N8
\u_rx|clk_cnt[4]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|clk_cnt[4]~29_combout\ = (\u_rx|clk_cnt\(4) & (\u_rx|clk_cnt[3]~28\ $ (GND))) # (!\u_rx|clk_cnt\(4) & (!\u_rx|clk_cnt[3]~28\ & VCC))
-- \u_rx|clk_cnt[4]~30\ = CARRY((\u_rx|clk_cnt\(4) & !\u_rx|clk_cnt[3]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_rx|clk_cnt\(4),
	datad => VCC,
	cin => \u_rx|clk_cnt[3]~28\,
	combout => \u_rx|clk_cnt[4]~29_combout\,
	cout => \u_rx|clk_cnt[4]~30\);

-- Location: FF_X53_Y28_N9
\u_rx|clk_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|clk_cnt[4]~29_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_rx|clk_cnt[13]~19_combout\,
	ena => \u_rx|clk_cnt[13]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|clk_cnt\(4));

-- Location: LCCOMB_X53_Y28_N10
\u_rx|clk_cnt[5]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|clk_cnt[5]~31_combout\ = (\u_rx|clk_cnt\(5) & (!\u_rx|clk_cnt[4]~30\)) # (!\u_rx|clk_cnt\(5) & ((\u_rx|clk_cnt[4]~30\) # (GND)))
-- \u_rx|clk_cnt[5]~32\ = CARRY((!\u_rx|clk_cnt[4]~30\) # (!\u_rx|clk_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|clk_cnt\(5),
	datad => VCC,
	cin => \u_rx|clk_cnt[4]~30\,
	combout => \u_rx|clk_cnt[5]~31_combout\,
	cout => \u_rx|clk_cnt[5]~32\);

-- Location: FF_X53_Y28_N11
\u_rx|clk_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|clk_cnt[5]~31_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_rx|clk_cnt[13]~19_combout\,
	ena => \u_rx|clk_cnt[13]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|clk_cnt\(5));

-- Location: LCCOMB_X53_Y28_N12
\u_rx|clk_cnt[6]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|clk_cnt[6]~33_combout\ = (\u_rx|clk_cnt\(6) & (\u_rx|clk_cnt[5]~32\ $ (GND))) # (!\u_rx|clk_cnt\(6) & (!\u_rx|clk_cnt[5]~32\ & VCC))
-- \u_rx|clk_cnt[6]~34\ = CARRY((\u_rx|clk_cnt\(6) & !\u_rx|clk_cnt[5]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|clk_cnt\(6),
	datad => VCC,
	cin => \u_rx|clk_cnt[5]~32\,
	combout => \u_rx|clk_cnt[6]~33_combout\,
	cout => \u_rx|clk_cnt[6]~34\);

-- Location: FF_X53_Y28_N13
\u_rx|clk_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|clk_cnt[6]~33_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_rx|clk_cnt[13]~19_combout\,
	ena => \u_rx|clk_cnt[13]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|clk_cnt\(6));

-- Location: LCCOMB_X53_Y28_N14
\u_rx|clk_cnt[7]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|clk_cnt[7]~35_combout\ = (\u_rx|clk_cnt\(7) & (!\u_rx|clk_cnt[6]~34\)) # (!\u_rx|clk_cnt\(7) & ((\u_rx|clk_cnt[6]~34\) # (GND)))
-- \u_rx|clk_cnt[7]~36\ = CARRY((!\u_rx|clk_cnt[6]~34\) # (!\u_rx|clk_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_rx|clk_cnt\(7),
	datad => VCC,
	cin => \u_rx|clk_cnt[6]~34\,
	combout => \u_rx|clk_cnt[7]~35_combout\,
	cout => \u_rx|clk_cnt[7]~36\);

-- Location: FF_X53_Y28_N15
\u_rx|clk_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|clk_cnt[7]~35_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_rx|clk_cnt[13]~19_combout\,
	ena => \u_rx|clk_cnt[13]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|clk_cnt\(7));

-- Location: FF_X53_Y28_N17
\u_rx|clk_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|clk_cnt[8]~37_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_rx|clk_cnt[13]~19_combout\,
	ena => \u_rx|clk_cnt[13]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|clk_cnt\(8));

-- Location: LCCOMB_X51_Y28_N8
\u_rx|clk_cnt[13]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|clk_cnt[13]~20_combout\ = ((\u_rx|rx_sync2~q\) # (!\u_rx|Equal0~4_combout\)) # (!\u_rx|state.S_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_rx|state.S_START~q\,
	datac => \u_rx|rx_sync2~q\,
	datad => \u_rx|Equal0~4_combout\,
	combout => \u_rx|clk_cnt[13]~20_combout\);

-- Location: LCCOMB_X52_Y28_N26
\u_rx|clk_cnt[13]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|clk_cnt[13]~21_combout\ = (!\u_rx|Equal2~0_combout\) # (!\u_rx|state.S_STOP~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_rx|state.S_STOP~q\,
	datad => \u_rx|Equal2~0_combout\,
	combout => \u_rx|clk_cnt[13]~21_combout\);

-- Location: LCCOMB_X51_Y28_N18
\u_rx|clk_cnt[13]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|clk_cnt[13]~22_combout\ = ((\u_rx|clk_cnt\(8) & ((\u_rx|clk_cnt[13]~21_combout\))) # (!\u_rx|clk_cnt\(8) & (\u_rx|clk_cnt[13]~20_combout\))) # (!\u_rx|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|clk_cnt\(8),
	datab => \u_rx|Equal0~3_combout\,
	datac => \u_rx|clk_cnt[13]~20_combout\,
	datad => \u_rx|clk_cnt[13]~21_combout\,
	combout => \u_rx|clk_cnt[13]~22_combout\);

-- Location: LCCOMB_X51_Y28_N26
\u_rx|Selector19~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|Selector19~4_combout\ = (\u_rx|clk_cnt[13]~22_combout\ & ((\u_rx|state.S_IDLE~q\) # (!\u_rx|Selector21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_rx|Selector21~0_combout\,
	datac => \u_rx|state.S_IDLE~q\,
	datad => \u_rx|clk_cnt[13]~22_combout\,
	combout => \u_rx|Selector19~4_combout\);

-- Location: FF_X51_Y28_N27
\u_rx|state.S_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|Selector19~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|state.S_IDLE~q\);

-- Location: LCCOMB_X51_Y28_N14
\u_rx|Selector19~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|Selector19~3_combout\ = (\u_rx|state.S_DATA~q\ & (\u_rx|Selector22~1_combout\)) # (!\u_rx|state.S_DATA~q\ & ((\u_rx|rx_sync2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|state.S_DATA~q\,
	datab => \u_rx|Selector22~1_combout\,
	datac => \u_rx|rx_sync2~q\,
	combout => \u_rx|Selector19~3_combout\);

-- Location: LCCOMB_X51_Y28_N24
\u_rx|Selector21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|Selector21~0_combout\ = (!\u_rx|Selector19~2_combout\ & (((\u_rx|state.S_IDLE~q\ & !\u_rx|clk_cnt[13]~16_combout\)) # (!\u_rx|Selector19~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|state.S_IDLE~q\,
	datab => \u_rx|clk_cnt[13]~16_combout\,
	datac => \u_rx|Selector19~3_combout\,
	datad => \u_rx|Selector19~2_combout\,
	combout => \u_rx|Selector21~0_combout\);

-- Location: LCCOMB_X51_Y28_N6
\u_rx|Selector21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|Selector21~1_combout\ = (\u_rx|rx_sync2~q\ & ((\u_rx|Selector19~2_combout\) # ((\u_rx|Selector21~0_combout\ & \u_rx|state.S_DATA~q\)))) # (!\u_rx|rx_sync2~q\ & (\u_rx|Selector21~0_combout\ & (\u_rx|state.S_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|rx_sync2~q\,
	datab => \u_rx|Selector21~0_combout\,
	datac => \u_rx|state.S_DATA~q\,
	datad => \u_rx|Selector19~2_combout\,
	combout => \u_rx|Selector21~1_combout\);

-- Location: FF_X51_Y28_N7
\u_rx|state.S_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|Selector21~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|state.S_DATA~q\);

-- Location: LCCOMB_X51_Y28_N2
\u_rx|Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|Selector18~0_combout\ = (\u_rx|bit_idx\(0) & ((\u_rx|state.S_START~q\) # (\u_rx|state.S_STOP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_rx|state.S_START~q\,
	datac => \u_rx|bit_idx\(0),
	datad => \u_rx|state.S_STOP~q\,
	combout => \u_rx|Selector18~0_combout\);

-- Location: LCCOMB_X51_Y28_N4
\u_rx|Selector18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|Selector18~1_combout\ = (\u_rx|Selector18~0_combout\) # ((\u_rx|state.S_DATA~q\ & (\u_rx|Equal2~1_combout\ $ (\u_rx|bit_idx\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|state.S_DATA~q\,
	datab => \u_rx|Equal2~1_combout\,
	datac => \u_rx|bit_idx\(0),
	datad => \u_rx|Selector18~0_combout\,
	combout => \u_rx|Selector18~1_combout\);

-- Location: FF_X51_Y28_N5
\u_rx|bit_idx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|Selector18~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|bit_idx\(0));

-- Location: LCCOMB_X53_Y27_N24
\u_rx|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|Decoder0~0_combout\ = (\u_rx|bit_idx\(0) & (!\u_rx|bit_idx\(2) & (\u_rx|bit_idx\(1) & \u_rx|clk_cnt[13]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|bit_idx\(0),
	datab => \u_rx|bit_idx\(2),
	datac => \u_rx|bit_idx\(1),
	datad => \u_rx|clk_cnt[13]~16_combout\,
	combout => \u_rx|Decoder0~0_combout\);

-- Location: LCCOMB_X53_Y27_N4
\u_rx|rx_shift_reg[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|rx_shift_reg[3]~0_combout\ = (\u_rx|Decoder0~0_combout\ & (!\u_rx|rx_sync2~q\)) # (!\u_rx|Decoder0~0_combout\ & ((\u_rx|rx_shift_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_rx|rx_sync2~q\,
	datac => \u_rx|rx_shift_reg\(3),
	datad => \u_rx|Decoder0~0_combout\,
	combout => \u_rx|rx_shift_reg[3]~0_combout\);

-- Location: FF_X53_Y27_N5
\u_rx|rx_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|rx_shift_reg[3]~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|rx_shift_reg\(3));

-- Location: LCCOMB_X52_Y27_N12
\u_rx|rx_data[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|rx_data[3]~feeder_combout\ = \u_rx|rx_shift_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_rx|rx_shift_reg\(3),
	combout => \u_rx|rx_data[3]~feeder_combout\);

-- Location: FF_X52_Y27_N13
\u_rx|rx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|rx_data[3]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_rx|Selector19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|rx_data\(3));

-- Location: LCCOMB_X53_Y27_N10
\u_rx|Decoder0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|Decoder0~3_combout\ = (!\u_rx|bit_idx\(0) & (\u_rx|bit_idx\(2) & (!\u_rx|bit_idx\(1) & \u_rx|clk_cnt[13]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|bit_idx\(0),
	datab => \u_rx|bit_idx\(2),
	datac => \u_rx|bit_idx\(1),
	datad => \u_rx|clk_cnt[13]~16_combout\,
	combout => \u_rx|Decoder0~3_combout\);

-- Location: LCCOMB_X53_Y27_N22
\u_rx|rx_shift_reg[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|rx_shift_reg[4]~3_combout\ = (\u_rx|Decoder0~3_combout\ & (!\u_rx|rx_sync2~q\)) # (!\u_rx|Decoder0~3_combout\ & ((\u_rx|rx_shift_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_rx|rx_sync2~q\,
	datac => \u_rx|rx_shift_reg\(4),
	datad => \u_rx|Decoder0~3_combout\,
	combout => \u_rx|rx_shift_reg[4]~3_combout\);

-- Location: FF_X53_Y27_N23
\u_rx|rx_shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|rx_shift_reg[4]~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|rx_shift_reg\(4));

-- Location: LCCOMB_X52_Y27_N2
\u_rx|rx_data[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|rx_data[4]~feeder_combout\ = \u_rx|rx_shift_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_rx|rx_shift_reg\(4),
	combout => \u_rx|rx_data[4]~feeder_combout\);

-- Location: FF_X52_Y27_N3
\u_rx|rx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|rx_data[4]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_rx|Selector19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|rx_data\(4));

-- Location: LCCOMB_X53_Y27_N2
\u_rx|Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|Decoder0~1_combout\ = (\u_rx|bit_idx\(0) & (\u_rx|bit_idx\(2) & (\u_rx|bit_idx\(1) & \u_rx|clk_cnt[13]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|bit_idx\(0),
	datab => \u_rx|bit_idx\(2),
	datac => \u_rx|bit_idx\(1),
	datad => \u_rx|clk_cnt[13]~16_combout\,
	combout => \u_rx|Decoder0~1_combout\);

-- Location: LCCOMB_X53_Y27_N30
\u_rx|rx_shift_reg[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|rx_shift_reg[7]~1_combout\ = (\u_rx|Decoder0~1_combout\ & (!\u_rx|rx_sync2~q\)) # (!\u_rx|Decoder0~1_combout\ & ((\u_rx|rx_shift_reg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_rx|rx_sync2~q\,
	datac => \u_rx|rx_shift_reg\(7),
	datad => \u_rx|Decoder0~1_combout\,
	combout => \u_rx|rx_shift_reg[7]~1_combout\);

-- Location: FF_X53_Y27_N31
\u_rx|rx_shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|rx_shift_reg[7]~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|rx_shift_reg\(7));

-- Location: FF_X52_Y27_N11
\u_rx|rx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_rx|rx_shift_reg\(7),
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_rx|Selector19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|rx_data\(7));

-- Location: LCCOMB_X53_Y27_N28
\u_rx|Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|Decoder0~2_combout\ = (\u_rx|bit_idx\(0) & (\u_rx|bit_idx\(2) & (!\u_rx|bit_idx\(1) & \u_rx|clk_cnt[13]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|bit_idx\(0),
	datab => \u_rx|bit_idx\(2),
	datac => \u_rx|bit_idx\(1),
	datad => \u_rx|clk_cnt[13]~16_combout\,
	combout => \u_rx|Decoder0~2_combout\);

-- Location: LCCOMB_X53_Y27_N8
\u_rx|rx_shift_reg[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|rx_shift_reg[5]~2_combout\ = (\u_rx|Decoder0~2_combout\ & (!\u_rx|rx_sync2~q\)) # (!\u_rx|Decoder0~2_combout\ & ((\u_rx|rx_shift_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_rx|rx_sync2~q\,
	datac => \u_rx|rx_shift_reg\(5),
	datad => \u_rx|Decoder0~2_combout\,
	combout => \u_rx|rx_shift_reg[5]~2_combout\);

-- Location: FF_X53_Y27_N9
\u_rx|rx_shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|rx_shift_reg[5]~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|rx_shift_reg\(5));

-- Location: LCCOMB_X52_Y27_N0
\u_rx|rx_data[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|rx_data[5]~feeder_combout\ = \u_rx|rx_shift_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_rx|rx_shift_reg\(5),
	combout => \u_rx|rx_data[5]~feeder_combout\);

-- Location: FF_X52_Y27_N1
\u_rx|rx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|rx_data[5]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_rx|Selector19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|rx_data\(5));

-- Location: LCCOMB_X52_Y27_N10
\u_receiver_ok|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_receiver_ok|Equal0~0_combout\ = (\u_rx|rx_data\(3) & (!\u_rx|rx_data\(4) & (!\u_rx|rx_data\(7) & !\u_rx|rx_data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|rx_data\(3),
	datab => \u_rx|rx_data\(4),
	datac => \u_rx|rx_data\(7),
	datad => \u_rx|rx_data\(5),
	combout => \u_receiver_ok|Equal0~0_combout\);

-- Location: LCCOMB_X53_Y27_N20
\u_rx|Decoder0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|Decoder0~4_combout\ = (\u_rx|bit_idx\(0) & (!\u_rx|bit_idx\(2) & (!\u_rx|bit_idx\(1) & \u_rx|clk_cnt[13]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|bit_idx\(0),
	datab => \u_rx|bit_idx\(2),
	datac => \u_rx|bit_idx\(1),
	datad => \u_rx|clk_cnt[13]~16_combout\,
	combout => \u_rx|Decoder0~4_combout\);

-- Location: LCCOMB_X53_Y27_N0
\u_rx|rx_shift_reg[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|rx_shift_reg[1]~4_combout\ = (\u_rx|Decoder0~4_combout\ & (!\u_rx|rx_sync2~q\)) # (!\u_rx|Decoder0~4_combout\ & ((\u_rx|rx_shift_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_rx|rx_sync2~q\,
	datac => \u_rx|rx_shift_reg\(1),
	datad => \u_rx|Decoder0~4_combout\,
	combout => \u_rx|rx_shift_reg[1]~4_combout\);

-- Location: FF_X53_Y27_N1
\u_rx|rx_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|rx_shift_reg[1]~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|rx_shift_reg\(1));

-- Location: LCCOMB_X52_Y27_N20
\u_rx|rx_data[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|rx_data[1]~feeder_combout\ = \u_rx|rx_shift_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_rx|rx_shift_reg\(1),
	combout => \u_rx|rx_data[1]~feeder_combout\);

-- Location: FF_X52_Y27_N21
\u_rx|rx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|rx_data[1]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_rx|Selector19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|rx_data\(1));

-- Location: LCCOMB_X53_Y27_N6
\u_rx|Decoder0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|Decoder0~5_combout\ = (!\u_rx|bit_idx\(0) & (!\u_rx|bit_idx\(2) & (\u_rx|bit_idx\(1) & \u_rx|clk_cnt[13]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|bit_idx\(0),
	datab => \u_rx|bit_idx\(2),
	datac => \u_rx|bit_idx\(1),
	datad => \u_rx|clk_cnt[13]~16_combout\,
	combout => \u_rx|Decoder0~5_combout\);

-- Location: LCCOMB_X53_Y27_N26
\u_rx|rx_shift_reg[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|rx_shift_reg[2]~5_combout\ = (\u_rx|Decoder0~5_combout\ & (!\u_rx|rx_sync2~q\)) # (!\u_rx|Decoder0~5_combout\ & ((\u_rx|rx_shift_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_rx|rx_sync2~q\,
	datac => \u_rx|rx_shift_reg\(2),
	datad => \u_rx|Decoder0~5_combout\,
	combout => \u_rx|rx_shift_reg[2]~5_combout\);

-- Location: FF_X53_Y27_N27
\u_rx|rx_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|rx_shift_reg[2]~5_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|rx_shift_reg\(2));

-- Location: LCCOMB_X52_Y27_N22
\u_rx|rx_data[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|rx_data[2]~feeder_combout\ = \u_rx|rx_shift_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_rx|rx_shift_reg\(2),
	combout => \u_rx|rx_data[2]~feeder_combout\);

-- Location: FF_X52_Y27_N23
\u_rx|rx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|rx_data[2]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_rx|Selector19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|rx_data\(2));

-- Location: LCCOMB_X53_Y27_N18
\u_rx|Decoder0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|Decoder0~7_combout\ = (!\u_rx|bit_idx\(0) & (\u_rx|bit_idx\(2) & (\u_rx|bit_idx\(1) & \u_rx|clk_cnt[13]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|bit_idx\(0),
	datab => \u_rx|bit_idx\(2),
	datac => \u_rx|bit_idx\(1),
	datad => \u_rx|clk_cnt[13]~16_combout\,
	combout => \u_rx|Decoder0~7_combout\);

-- Location: LCCOMB_X53_Y27_N14
\u_rx|rx_shift_reg[6]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|rx_shift_reg[6]~7_combout\ = (\u_rx|Decoder0~7_combout\ & (!\u_rx|rx_sync2~q\)) # (!\u_rx|Decoder0~7_combout\ & ((\u_rx|rx_shift_reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_rx|rx_sync2~q\,
	datac => \u_rx|rx_shift_reg\(6),
	datad => \u_rx|Decoder0~7_combout\,
	combout => \u_rx|rx_shift_reg[6]~7_combout\);

-- Location: FF_X53_Y27_N15
\u_rx|rx_shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|rx_shift_reg[6]~7_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|rx_shift_reg\(6));

-- Location: LCCOMB_X52_Y27_N18
\u_rx|rx_data[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|rx_data[6]~feeder_combout\ = \u_rx|rx_shift_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_rx|rx_shift_reg\(6),
	combout => \u_rx|rx_data[6]~feeder_combout\);

-- Location: FF_X52_Y27_N19
\u_rx|rx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|rx_data[6]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_rx|Selector19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|rx_data\(6));

-- Location: LCCOMB_X53_Y27_N12
\u_rx|Decoder0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|Decoder0~6_combout\ = (!\u_rx|bit_idx\(0) & (!\u_rx|bit_idx\(2) & (!\u_rx|bit_idx\(1) & \u_rx|clk_cnt[13]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|bit_idx\(0),
	datab => \u_rx|bit_idx\(2),
	datac => \u_rx|bit_idx\(1),
	datad => \u_rx|clk_cnt[13]~16_combout\,
	combout => \u_rx|Decoder0~6_combout\);

-- Location: LCCOMB_X53_Y27_N16
\u_rx|rx_shift_reg[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|rx_shift_reg[0]~6_combout\ = (\u_rx|Decoder0~6_combout\ & (!\u_rx|rx_sync2~q\)) # (!\u_rx|Decoder0~6_combout\ & ((\u_rx|rx_shift_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_rx|rx_sync2~q\,
	datac => \u_rx|rx_shift_reg\(0),
	datad => \u_rx|Decoder0~6_combout\,
	combout => \u_rx|rx_shift_reg[0]~6_combout\);

-- Location: FF_X53_Y27_N17
\u_rx|rx_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|rx_shift_reg[0]~6_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|rx_shift_reg\(0));

-- Location: LCCOMB_X52_Y27_N4
\u_rx|rx_data[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rx|rx_data[0]~feeder_combout\ = \u_rx|rx_shift_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_rx|rx_shift_reg\(0),
	combout => \u_rx|rx_data[0]~feeder_combout\);

-- Location: FF_X52_Y27_N5
\u_rx|rx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|rx_data[0]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_rx|Selector19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|rx_data\(0));

-- Location: LCCOMB_X52_Y30_N4
\u_receiver_ok|OK~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_receiver_ok|OK~1_combout\ = (\u_rx|rx_data\(1) & (!\u_rx|rx_data\(2) & (!\u_rx|rx_data\(6) & !\u_rx|rx_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|rx_data\(1),
	datab => \u_rx|rx_data\(2),
	datac => \u_rx|rx_data\(6),
	datad => \u_rx|rx_data\(0),
	combout => \u_receiver_ok|OK~1_combout\);

-- Location: LCCOMB_X52_Y33_N18
\always2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always2~0_combout\ = (\tx_start~q\) # (\u_tx|tx_busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_start~q\,
	datad => \u_tx|tx_busy~q\,
	combout => \always2~0_combout\);

-- Location: LCCOMB_X63_Y29_N2
\rst_cnt[0]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rst_cnt[0]~60_combout\ = \LessThan0~4_combout\ $ (rst_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~4_combout\,
	datac => rst_cnt(0),
	combout => \rst_cnt[0]~60_combout\);

-- Location: FF_X63_Y29_N3
\rst_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rst_cnt[0]~60_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rst_cnt(0));

-- Location: LCCOMB_X63_Y29_N12
\rst_cnt[1]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rst_cnt[1]~20_combout\ = (rst_cnt(1) & (rst_cnt(0) $ (VCC))) # (!rst_cnt(1) & (rst_cnt(0) & VCC))
-- \rst_cnt[1]~21\ = CARRY((rst_cnt(1) & rst_cnt(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rst_cnt(1),
	datab => rst_cnt(0),
	datad => VCC,
	combout => \rst_cnt[1]~20_combout\,
	cout => \rst_cnt[1]~21\);

-- Location: FF_X63_Y29_N13
\rst_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rst_cnt[1]~20_combout\,
	clrn => \rst_n~input_o\,
	ena => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rst_cnt(1));

-- Location: LCCOMB_X63_Y29_N14
\rst_cnt[2]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rst_cnt[2]~22_combout\ = (rst_cnt(2) & (!\rst_cnt[1]~21\)) # (!rst_cnt(2) & ((\rst_cnt[1]~21\) # (GND)))
-- \rst_cnt[2]~23\ = CARRY((!\rst_cnt[1]~21\) # (!rst_cnt(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rst_cnt(2),
	datad => VCC,
	cin => \rst_cnt[1]~21\,
	combout => \rst_cnt[2]~22_combout\,
	cout => \rst_cnt[2]~23\);

-- Location: FF_X63_Y29_N15
\rst_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rst_cnt[2]~22_combout\,
	clrn => \rst_n~input_o\,
	ena => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rst_cnt(2));

-- Location: LCCOMB_X63_Y29_N16
\rst_cnt[3]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rst_cnt[3]~24_combout\ = (rst_cnt(3) & (\rst_cnt[2]~23\ $ (GND))) # (!rst_cnt(3) & (!\rst_cnt[2]~23\ & VCC))
-- \rst_cnt[3]~25\ = CARRY((rst_cnt(3) & !\rst_cnt[2]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rst_cnt(3),
	datad => VCC,
	cin => \rst_cnt[2]~23\,
	combout => \rst_cnt[3]~24_combout\,
	cout => \rst_cnt[3]~25\);

-- Location: FF_X63_Y29_N17
\rst_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rst_cnt[3]~24_combout\,
	clrn => \rst_n~input_o\,
	ena => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rst_cnt(3));

-- Location: LCCOMB_X63_Y29_N18
\rst_cnt[4]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rst_cnt[4]~26_combout\ = (rst_cnt(4) & (!\rst_cnt[3]~25\)) # (!rst_cnt(4) & ((\rst_cnt[3]~25\) # (GND)))
-- \rst_cnt[4]~27\ = CARRY((!\rst_cnt[3]~25\) # (!rst_cnt(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rst_cnt(4),
	datad => VCC,
	cin => \rst_cnt[3]~25\,
	combout => \rst_cnt[4]~26_combout\,
	cout => \rst_cnt[4]~27\);

-- Location: FF_X63_Y29_N19
\rst_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rst_cnt[4]~26_combout\,
	clrn => \rst_n~input_o\,
	ena => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rst_cnt(4));

-- Location: LCCOMB_X63_Y29_N20
\rst_cnt[5]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rst_cnt[5]~28_combout\ = (rst_cnt(5) & (\rst_cnt[4]~27\ $ (GND))) # (!rst_cnt(5) & (!\rst_cnt[4]~27\ & VCC))
-- \rst_cnt[5]~29\ = CARRY((rst_cnt(5) & !\rst_cnt[4]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rst_cnt(5),
	datad => VCC,
	cin => \rst_cnt[4]~27\,
	combout => \rst_cnt[5]~28_combout\,
	cout => \rst_cnt[5]~29\);

-- Location: FF_X63_Y29_N21
\rst_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rst_cnt[5]~28_combout\,
	clrn => \rst_n~input_o\,
	ena => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rst_cnt(5));

-- Location: LCCOMB_X63_Y29_N22
\rst_cnt[6]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rst_cnt[6]~30_combout\ = (rst_cnt(6) & (!\rst_cnt[5]~29\)) # (!rst_cnt(6) & ((\rst_cnt[5]~29\) # (GND)))
-- \rst_cnt[6]~31\ = CARRY((!\rst_cnt[5]~29\) # (!rst_cnt(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rst_cnt(6),
	datad => VCC,
	cin => \rst_cnt[5]~29\,
	combout => \rst_cnt[6]~30_combout\,
	cout => \rst_cnt[6]~31\);

-- Location: FF_X63_Y29_N23
\rst_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rst_cnt[6]~30_combout\,
	clrn => \rst_n~input_o\,
	ena => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rst_cnt(6));

-- Location: LCCOMB_X63_Y29_N24
\rst_cnt[7]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rst_cnt[7]~32_combout\ = (rst_cnt(7) & (\rst_cnt[6]~31\ $ (GND))) # (!rst_cnt(7) & (!\rst_cnt[6]~31\ & VCC))
-- \rst_cnt[7]~33\ = CARRY((rst_cnt(7) & !\rst_cnt[6]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rst_cnt(7),
	datad => VCC,
	cin => \rst_cnt[6]~31\,
	combout => \rst_cnt[7]~32_combout\,
	cout => \rst_cnt[7]~33\);

-- Location: FF_X63_Y29_N25
\rst_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rst_cnt[7]~32_combout\,
	clrn => \rst_n~input_o\,
	ena => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rst_cnt(7));

-- Location: LCCOMB_X63_Y29_N26
\rst_cnt[8]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rst_cnt[8]~34_combout\ = (rst_cnt(8) & (!\rst_cnt[7]~33\)) # (!rst_cnt(8) & ((\rst_cnt[7]~33\) # (GND)))
-- \rst_cnt[8]~35\ = CARRY((!\rst_cnt[7]~33\) # (!rst_cnt(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rst_cnt(8),
	datad => VCC,
	cin => \rst_cnt[7]~33\,
	combout => \rst_cnt[8]~34_combout\,
	cout => \rst_cnt[8]~35\);

-- Location: FF_X63_Y29_N27
\rst_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rst_cnt[8]~34_combout\,
	clrn => \rst_n~input_o\,
	ena => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rst_cnt(8));

-- Location: LCCOMB_X63_Y29_N28
\rst_cnt[9]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rst_cnt[9]~36_combout\ = (rst_cnt(9) & (\rst_cnt[8]~35\ $ (GND))) # (!rst_cnt(9) & (!\rst_cnt[8]~35\ & VCC))
-- \rst_cnt[9]~37\ = CARRY((rst_cnt(9) & !\rst_cnt[8]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rst_cnt(9),
	datad => VCC,
	cin => \rst_cnt[8]~35\,
	combout => \rst_cnt[9]~36_combout\,
	cout => \rst_cnt[9]~37\);

-- Location: FF_X63_Y29_N29
\rst_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rst_cnt[9]~36_combout\,
	clrn => \rst_n~input_o\,
	ena => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rst_cnt(9));

-- Location: LCCOMB_X63_Y29_N30
\rst_cnt[10]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rst_cnt[10]~38_combout\ = (rst_cnt(10) & (!\rst_cnt[9]~37\)) # (!rst_cnt(10) & ((\rst_cnt[9]~37\) # (GND)))
-- \rst_cnt[10]~39\ = CARRY((!\rst_cnt[9]~37\) # (!rst_cnt(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rst_cnt(10),
	datad => VCC,
	cin => \rst_cnt[9]~37\,
	combout => \rst_cnt[10]~38_combout\,
	cout => \rst_cnt[10]~39\);

-- Location: FF_X63_Y29_N31
\rst_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rst_cnt[10]~38_combout\,
	clrn => \rst_n~input_o\,
	ena => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rst_cnt(10));

-- Location: LCCOMB_X63_Y28_N0
\rst_cnt[11]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rst_cnt[11]~40_combout\ = (rst_cnt(11) & (\rst_cnt[10]~39\ $ (GND))) # (!rst_cnt(11) & (!\rst_cnt[10]~39\ & VCC))
-- \rst_cnt[11]~41\ = CARRY((rst_cnt(11) & !\rst_cnt[10]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rst_cnt(11),
	datad => VCC,
	cin => \rst_cnt[10]~39\,
	combout => \rst_cnt[11]~40_combout\,
	cout => \rst_cnt[11]~41\);

-- Location: FF_X63_Y28_N1
\rst_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rst_cnt[11]~40_combout\,
	clrn => \rst_n~input_o\,
	ena => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rst_cnt(11));

-- Location: LCCOMB_X63_Y28_N2
\rst_cnt[12]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rst_cnt[12]~42_combout\ = (rst_cnt(12) & (!\rst_cnt[11]~41\)) # (!rst_cnt(12) & ((\rst_cnt[11]~41\) # (GND)))
-- \rst_cnt[12]~43\ = CARRY((!\rst_cnt[11]~41\) # (!rst_cnt(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rst_cnt(12),
	datad => VCC,
	cin => \rst_cnt[11]~41\,
	combout => \rst_cnt[12]~42_combout\,
	cout => \rst_cnt[12]~43\);

-- Location: FF_X63_Y28_N3
\rst_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rst_cnt[12]~42_combout\,
	clrn => \rst_n~input_o\,
	ena => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rst_cnt(12));

-- Location: LCCOMB_X63_Y28_N4
\rst_cnt[13]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rst_cnt[13]~44_combout\ = (rst_cnt(13) & (\rst_cnt[12]~43\ $ (GND))) # (!rst_cnt(13) & (!\rst_cnt[12]~43\ & VCC))
-- \rst_cnt[13]~45\ = CARRY((rst_cnt(13) & !\rst_cnt[12]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rst_cnt(13),
	datad => VCC,
	cin => \rst_cnt[12]~43\,
	combout => \rst_cnt[13]~44_combout\,
	cout => \rst_cnt[13]~45\);

-- Location: FF_X63_Y28_N5
\rst_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rst_cnt[13]~44_combout\,
	clrn => \rst_n~input_o\,
	ena => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rst_cnt(13));

-- Location: LCCOMB_X63_Y28_N6
\rst_cnt[14]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rst_cnt[14]~46_combout\ = (rst_cnt(14) & (!\rst_cnt[13]~45\)) # (!rst_cnt(14) & ((\rst_cnt[13]~45\) # (GND)))
-- \rst_cnt[14]~47\ = CARRY((!\rst_cnt[13]~45\) # (!rst_cnt(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rst_cnt(14),
	datad => VCC,
	cin => \rst_cnt[13]~45\,
	combout => \rst_cnt[14]~46_combout\,
	cout => \rst_cnt[14]~47\);

-- Location: FF_X63_Y28_N7
\rst_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rst_cnt[14]~46_combout\,
	clrn => \rst_n~input_o\,
	ena => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rst_cnt(14));

-- Location: LCCOMB_X63_Y28_N8
\rst_cnt[15]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rst_cnt[15]~48_combout\ = (rst_cnt(15) & (\rst_cnt[14]~47\ $ (GND))) # (!rst_cnt(15) & (!\rst_cnt[14]~47\ & VCC))
-- \rst_cnt[15]~49\ = CARRY((rst_cnt(15) & !\rst_cnt[14]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rst_cnt(15),
	datad => VCC,
	cin => \rst_cnt[14]~47\,
	combout => \rst_cnt[15]~48_combout\,
	cout => \rst_cnt[15]~49\);

-- Location: FF_X63_Y28_N9
\rst_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rst_cnt[15]~48_combout\,
	clrn => \rst_n~input_o\,
	ena => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rst_cnt(15));

-- Location: LCCOMB_X63_Y28_N10
\rst_cnt[16]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rst_cnt[16]~50_combout\ = (rst_cnt(16) & (!\rst_cnt[15]~49\)) # (!rst_cnt(16) & ((\rst_cnt[15]~49\) # (GND)))
-- \rst_cnt[16]~51\ = CARRY((!\rst_cnt[15]~49\) # (!rst_cnt(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rst_cnt(16),
	datad => VCC,
	cin => \rst_cnt[15]~49\,
	combout => \rst_cnt[16]~50_combout\,
	cout => \rst_cnt[16]~51\);

-- Location: FF_X63_Y28_N11
\rst_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rst_cnt[16]~50_combout\,
	clrn => \rst_n~input_o\,
	ena => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rst_cnt(16));

-- Location: LCCOMB_X63_Y28_N12
\rst_cnt[17]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rst_cnt[17]~52_combout\ = (rst_cnt(17) & (\rst_cnt[16]~51\ $ (GND))) # (!rst_cnt(17) & (!\rst_cnt[16]~51\ & VCC))
-- \rst_cnt[17]~53\ = CARRY((rst_cnt(17) & !\rst_cnt[16]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rst_cnt(17),
	datad => VCC,
	cin => \rst_cnt[16]~51\,
	combout => \rst_cnt[17]~52_combout\,
	cout => \rst_cnt[17]~53\);

-- Location: FF_X63_Y28_N13
\rst_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rst_cnt[17]~52_combout\,
	clrn => \rst_n~input_o\,
	ena => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rst_cnt(17));

-- Location: LCCOMB_X63_Y28_N14
\rst_cnt[18]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rst_cnt[18]~54_combout\ = (rst_cnt(18) & (!\rst_cnt[17]~53\)) # (!rst_cnt(18) & ((\rst_cnt[17]~53\) # (GND)))
-- \rst_cnt[18]~55\ = CARRY((!\rst_cnt[17]~53\) # (!rst_cnt(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rst_cnt(18),
	datad => VCC,
	cin => \rst_cnt[17]~53\,
	combout => \rst_cnt[18]~54_combout\,
	cout => \rst_cnt[18]~55\);

-- Location: FF_X63_Y28_N15
\rst_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rst_cnt[18]~54_combout\,
	clrn => \rst_n~input_o\,
	ena => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rst_cnt(18));

-- Location: LCCOMB_X63_Y28_N16
\rst_cnt[19]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rst_cnt[19]~56_combout\ = (rst_cnt(19) & (\rst_cnt[18]~55\ $ (GND))) # (!rst_cnt(19) & (!\rst_cnt[18]~55\ & VCC))
-- \rst_cnt[19]~57\ = CARRY((rst_cnt(19) & !\rst_cnt[18]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rst_cnt(19),
	datad => VCC,
	cin => \rst_cnt[18]~55\,
	combout => \rst_cnt[19]~56_combout\,
	cout => \rst_cnt[19]~57\);

-- Location: FF_X63_Y28_N17
\rst_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rst_cnt[19]~56_combout\,
	clrn => \rst_n~input_o\,
	ena => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rst_cnt(19));

-- Location: LCCOMB_X63_Y28_N18
\rst_cnt[20]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rst_cnt[20]~58_combout\ = rst_cnt(20) $ (\rst_cnt[19]~57\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rst_cnt(20),
	cin => \rst_cnt[19]~57\,
	combout => \rst_cnt[20]~58_combout\);

-- Location: FF_X63_Y28_N19
\rst_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rst_cnt[20]~58_combout\,
	clrn => \rst_n~input_o\,
	ena => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rst_cnt(20));

-- Location: LCCOMB_X63_Y28_N22
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (((!rst_cnt(14) & !rst_cnt(15))) # (!rst_cnt(17))) # (!rst_cnt(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rst_cnt(16),
	datab => rst_cnt(14),
	datac => rst_cnt(15),
	datad => rst_cnt(17),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X63_Y29_N8
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ((!rst_cnt(6) & (!rst_cnt(7) & !rst_cnt(8)))) # (!rst_cnt(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rst_cnt(6),
	datab => rst_cnt(7),
	datac => rst_cnt(8),
	datad => rst_cnt(9),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X63_Y28_N28
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!rst_cnt(10) & (!rst_cnt(11) & (!rst_cnt(13) & !rst_cnt(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rst_cnt(10),
	datab => rst_cnt(11),
	datac => rst_cnt(13),
	datad => rst_cnt(12),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X63_Y28_N30
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\LessThan0~0_combout\) # ((!rst_cnt(15) & (\LessThan0~1_combout\ & \LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => rst_cnt(15),
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X63_Y28_N24
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!rst_cnt(20) & (((\LessThan0~3_combout\) # (!rst_cnt(19))) # (!rst_cnt(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rst_cnt(20),
	datab => rst_cnt(18),
	datac => \LessThan0~3_combout\,
	datad => rst_cnt(19),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X55_Y31_N26
\wifi_rst_done~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \wifi_rst_done~0_combout\ = !\LessThan0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LessThan0~4_combout\,
	combout => \wifi_rst_done~0_combout\);

-- Location: FF_X55_Y31_N27
wifi_rst_done : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wifi_rst_done~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wifi_rst_done~q\);

-- Location: LCCOMB_X55_Y31_N6
\Selector29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\wifi_rst_done~q\ & !\state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wifi_rst_done~q\,
	datac => \state.S_IDLE~q\,
	combout => \Selector29~0_combout\);

-- Location: LCCOMB_X55_Y31_N8
\u_button_3x3|pressed~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|pressed~0_combout\ = !\u_button_3x3|Equal0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_button_3x3|Equal0~0_combout\,
	combout => \u_button_3x3|pressed~0_combout\);

-- Location: FF_X55_Y31_N9
\u_button_3x3|pressed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_button_3x3|clk_cnt[18]~clkctrl_outclk\,
	d => \u_button_3x3|pressed~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_button_3x3|pressed~q\);

-- Location: FF_X55_Y31_N13
pressed_d1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_button_3x3|pressed~q\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pressed_d1~q\);

-- Location: FF_X55_Y31_N5
pressed_d2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pressed_d1~q\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pressed_d2~q\);

-- Location: LCCOMB_X55_Y31_N28
\Selector36~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (!\Selector29~0_combout\ & (((\pressed_d2~q\) # (!\state.S_READY~q\)) # (!\pressed_d1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressed_d1~q\,
	datab => \state.S_READY~q\,
	datac => \pressed_d2~q\,
	datad => \Selector29~0_combout\,
	combout => \Selector36~0_combout\);

-- Location: LCCOMB_X54_Y31_N20
\Selector29~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector29~1_combout\ = (((\state.S_WAIT_DONE~q\ & !\always2~5_combout\)) # (!\Selector36~0_combout\)) # (!\Selector552~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector552~0_combout\,
	datab => \state.S_WAIT_DONE~q\,
	datac => \always2~5_combout\,
	datad => \Selector36~0_combout\,
	combout => \Selector29~1_combout\);

-- Location: LCCOMB_X54_Y31_N30
\Selector29~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector29~4_combout\ = (!\Selector29~2_combout\ & ((\Selector29~0_combout\) # ((\state.S_AT_RST~q\ & !\Selector29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector29~0_combout\,
	datab => \Selector29~2_combout\,
	datac => \state.S_AT_RST~q\,
	datad => \Selector29~1_combout\,
	combout => \Selector29~4_combout\);

-- Location: FF_X54_Y31_N31
\state.S_AT_RST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector29~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_AT_RST~q\);

-- Location: LCCOMB_X53_Y31_N8
\delay_cnt[27]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[27]~93_combout\ = (!\state.S_SEND_DATA~q\ & !\state.S_AT_RST~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S_SEND_DATA~q\,
	datac => \state.S_AT_RST~q\,
	combout => \delay_cnt[27]~93_combout\);

-- Location: LCCOMB_X55_Y31_N10
\Selector29~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector29~3_combout\ = (!\state.S_WAIT_DONE~q\ & (!\state.S_COOL_DOWN~q\ & (\state.S_IDLE~q\ & !\state.S_READY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_WAIT_DONE~q\,
	datab => \state.S_COOL_DOWN~q\,
	datac => \state.S_IDLE~q\,
	datad => \state.S_READY~q\,
	combout => \Selector29~3_combout\);

-- Location: LCCOMB_X55_Y31_N4
\Selector29~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector29~5_combout\ = (\pressed_d1~q\ & (!\pressed_d2~q\ & \state.S_READY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressed_d1~q\,
	datac => \pressed_d2~q\,
	datad => \state.S_READY~q\,
	combout => \Selector29~5_combout\);

-- Location: LCCOMB_X54_Y31_N10
\Selector34~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (!\Selector29~2_combout\ & ((\Selector29~5_combout\) # ((\state.S_CIPSEND~q\ & !\Selector29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector29~5_combout\,
	datab => \Selector29~2_combout\,
	datac => \state.S_CIPSEND~q\,
	datad => \Selector29~1_combout\,
	combout => \Selector34~0_combout\);

-- Location: FF_X54_Y31_N11
\state.S_CIPSEND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector34~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_CIPSEND~q\);

-- Location: LCCOMB_X54_Y31_N14
\delay_cnt[27]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[27]~92_combout\ = (!\state.S_CIPSEND~q\ & (!\state.S_CWMODE~q\ & (!\state.S_AT_RST~q\ & !\state.S_SEND_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_CIPSEND~q\,
	datab => \state.S_CWMODE~q\,
	datac => \state.S_AT_RST~q\,
	datad => \state.S_SEND_DATA~q\,
	combout => \delay_cnt[27]~92_combout\);

-- Location: LCCOMB_X53_Y31_N26
\Selector423~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector423~0_combout\ = ((\always2~0_combout\ & ((\state.S_CIPSTART~q\) # (!\delay_cnt[27]~92_combout\)))) # (!\Selector29~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_CIPSTART~q\,
	datab => \always2~0_combout\,
	datac => \delay_cnt[27]~92_combout\,
	datad => \Selector29~3_combout\,
	combout => \Selector423~0_combout\);

-- Location: LCCOMB_X53_Y31_N30
\Selector423~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector423~1_combout\ = (\state.S_CWJAP~q\ & (((current_cmd(126)) # (!\always2~0_combout\)))) # (!\state.S_CWJAP~q\ & (\Selector423~0_combout\ & (current_cmd(126))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector423~0_combout\,
	datab => \state.S_CWJAP~q\,
	datac => current_cmd(126),
	datad => \always2~0_combout\,
	combout => \Selector423~1_combout\);

-- Location: FF_X53_Y31_N31
\current_cmd[126]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector423~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(126));

-- Location: LCCOMB_X53_Y31_N10
\Selector32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (\state.S_WAIT_DONE~q\ & (current_cmd(126) & !\always2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S_WAIT_DONE~q\,
	datac => current_cmd(126),
	datad => \always2~5_combout\,
	combout => \Selector32~0_combout\);

-- Location: LCCOMB_X51_Y31_N20
\Selector30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (!\Selector28~2_combout\ & ((\always2~5_combout\) # (!\state.S_WAIT_DONE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S_WAIT_DONE~q\,
	datac => \Selector28~2_combout\,
	datad => \always2~5_combout\,
	combout => \Selector30~0_combout\);

-- Location: FF_X53_Y31_N11
\state.S_CIPSTART\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector32~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \ALT_INV_Selector30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_CIPSTART~q\);

-- Location: LCCOMB_X53_Y31_N4
\delay_cnt[27]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[27]~84_combout\ = (!\state.S_CWJAP~q\ & !\state.S_CIPSTART~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S_CWJAP~q\,
	datad => \state.S_CIPSTART~q\,
	combout => \delay_cnt[27]~84_combout\);

-- Location: LCCOMB_X54_Y31_N16
\delay_cnt[27]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[27]~85_combout\ = (!\state.S_CWMODE~q\ & !\state.S_CIPSEND~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.S_CWMODE~q\,
	datad => \state.S_CIPSEND~q\,
	combout => \delay_cnt[27]~85_combout\);

-- Location: LCCOMB_X54_Y31_N18
\Selector524~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector524~2_combout\ = (\always2~0_combout\ & ((\state.S_SEND_DATA~q\) # ((!\delay_cnt[27]~85_combout\) # (!\delay_cnt[27]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_SEND_DATA~q\,
	datab => \delay_cnt[27]~84_combout\,
	datac => \always2~0_combout\,
	datad => \delay_cnt[27]~85_combout\,
	combout => \Selector524~2_combout\);

-- Location: LCCOMB_X54_Y31_N0
\Selector524~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector524~3_combout\ = (current_cmd(25) & ((\state.S_AT_RST~q\) # ((\Selector524~2_combout\) # (!\Selector29~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_AT_RST~q\,
	datab => current_cmd(25),
	datac => \Selector29~3_combout\,
	datad => \Selector524~2_combout\,
	combout => \Selector524~3_combout\);

-- Location: LCCOMB_X54_Y31_N28
\Selector524~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector524~4_combout\ = (\Selector524~3_combout\) # ((!\tx_start~q\ & (\state.S_AT_RST~q\ & !\u_tx|tx_busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_start~q\,
	datab => \Selector524~3_combout\,
	datac => \state.S_AT_RST~q\,
	datad => \u_tx|tx_busy~q\,
	combout => \Selector524~4_combout\);

-- Location: FF_X54_Y31_N29
\current_cmd[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector524~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(25));

-- Location: LCCOMB_X54_Y31_N4
\Selector30~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector30~1_combout\ = (\state.S_WAIT_DONE~q\ & (!\always2~5_combout\ & current_cmd(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S_WAIT_DONE~q\,
	datac => \always2~5_combout\,
	datad => current_cmd(25),
	combout => \Selector30~1_combout\);

-- Location: FF_X54_Y31_N5
\state.S_CWMODE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector30~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \ALT_INV_Selector30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_CWMODE~q\);

-- Location: LCCOMB_X54_Y32_N10
\Selector447~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector447~2_combout\ = (!\state.S_SEND_DATA~q\ & (!\state.S_AT_RST~q\ & (!\state.S_CWJAP~q\ & !\state.S_CIPSTART~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_SEND_DATA~q\,
	datab => \state.S_AT_RST~q\,
	datac => \state.S_CWJAP~q\,
	datad => \state.S_CIPSTART~q\,
	combout => \Selector447~2_combout\);

-- Location: LCCOMB_X54_Y32_N20
\Selector500~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector500~0_combout\ = ((\always2~0_combout\ & ((\state.S_CIPSEND~q\) # (!\Selector447~2_combout\)))) # (!\Selector29~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_CIPSEND~q\,
	datab => \Selector29~3_combout\,
	datac => \always2~0_combout\,
	datad => \Selector447~2_combout\,
	combout => \Selector500~0_combout\);

-- Location: LCCOMB_X54_Y32_N8
\Selector500~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector500~1_combout\ = (\state.S_CWMODE~q\ & (((current_cmd(49))) # (!\always2~0_combout\))) # (!\state.S_CWMODE~q\ & (((current_cmd(49) & \Selector500~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_CWMODE~q\,
	datab => \always2~0_combout\,
	datac => current_cmd(49),
	datad => \Selector500~0_combout\,
	combout => \Selector500~1_combout\);

-- Location: FF_X54_Y32_N9
\current_cmd[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector500~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(49));

-- Location: LCCOMB_X53_Y31_N16
\Selector31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (current_cmd(49) & (\state.S_WAIT_DONE~q\ & !\always2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(49),
	datab => \state.S_WAIT_DONE~q\,
	datad => \always2~5_combout\,
	combout => \Selector31~0_combout\);

-- Location: FF_X53_Y31_N17
\state.S_CWJAP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector31~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \ALT_INV_Selector30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_CWJAP~q\);

-- Location: LCCOMB_X53_Y32_N18
\Selector491~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector491~0_combout\ = (!\state.S_CWJAP~q\ & (!\state.S_CWMODE~q\ & !\state.S_CIPSTART~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_CWJAP~q\,
	datab => \state.S_CWMODE~q\,
	datad => \state.S_CIPSTART~q\,
	combout => \Selector491~0_combout\);

-- Location: LCCOMB_X53_Y32_N8
\Selector445~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector445~0_combout\ = ((\always2~0_combout\ & ((!\Selector491~0_combout\) # (!\delay_cnt[27]~93_combout\)))) # (!\Selector29~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~0_combout\,
	datab => \delay_cnt[27]~93_combout\,
	datac => \Selector29~3_combout\,
	datad => \Selector491~0_combout\,
	combout => \Selector445~0_combout\);

-- Location: LCCOMB_X53_Y32_N12
\Selector445~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector445~1_combout\ = (current_cmd(104) & (((\Selector445~0_combout\) # (\state.S_CIPSEND~q\)))) # (!current_cmd(104) & (!\always2~0_combout\ & ((\state.S_CIPSEND~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~0_combout\,
	datab => \Selector445~0_combout\,
	datac => current_cmd(104),
	datad => \state.S_CIPSEND~q\,
	combout => \Selector445~1_combout\);

-- Location: FF_X53_Y32_N13
\current_cmd[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector445~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(104));

-- Location: LCCOMB_X53_Y31_N14
\Selector35~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (current_cmd(104) & (\state.S_WAIT_DONE~q\ & !\always2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(104),
	datab => \state.S_WAIT_DONE~q\,
	datad => \always2~5_combout\,
	combout => \Selector35~0_combout\);

-- Location: FF_X53_Y31_N15
\state.S_SEND_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector35~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \ALT_INV_Selector30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_SEND_DATA~q\);

-- Location: LCCOMB_X53_Y31_N2
\delay_cnt[27]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[27]~86_combout\ = (\state.S_AT_RST~q\) # ((\state.S_SEND_DATA~q\) # ((!\delay_cnt[27]~85_combout\) # (!\delay_cnt[27]~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_AT_RST~q\,
	datab => \state.S_SEND_DATA~q\,
	datac => \delay_cnt[27]~84_combout\,
	datad => \delay_cnt[27]~85_combout\,
	combout => \delay_cnt[27]~86_combout\);

-- Location: LCCOMB_X51_Y31_N22
\Selector551~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector551~0_combout\ = (\always2~0_combout\ & (((\always2~5_combout\)) # (!\state.S_WAIT_DONE~q\))) # (!\always2~0_combout\ & (!\delay_cnt[27]~86_combout\ & ((\always2~5_combout\) # (!\state.S_WAIT_DONE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~0_combout\,
	datab => \state.S_WAIT_DONE~q\,
	datac => \delay_cnt[27]~86_combout\,
	datad => \always2~5_combout\,
	combout => \Selector551~0_combout\);

-- Location: FF_X51_Y31_N23
receive_ok_en : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector551~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receive_ok_en~q\);

-- Location: FF_X52_Y28_N21
\u_rx|rx_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_rx|Selector19~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rx|rx_done~q\);

-- Location: LCCOMB_X52_Y30_N10
\u_receiver_ok|state~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_receiver_ok|state~18_combout\ = (!\u_rx|rx_done~q\ & ((!\u_receiver_ok|state.000~q\) # (!\receive_ok_en~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receive_ok_en~q\,
	datac => \u_rx|rx_done~q\,
	datad => \u_receiver_ok|state.000~q\,
	combout => \u_receiver_ok|state~18_combout\);

-- Location: LCCOMB_X52_Y30_N28
\u_receiver_ok|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_receiver_ok|Equal0~1_combout\ = (\u_rx|rx_data\(6) & (\u_receiver_ok|Equal0~0_combout\ & (\u_rx|rx_data\(1) & \u_rx|rx_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|rx_data\(6),
	datab => \u_receiver_ok|Equal0~0_combout\,
	datac => \u_rx|rx_data\(1),
	datad => \u_rx|rx_data\(0),
	combout => \u_receiver_ok|Equal0~1_combout\);

-- Location: LCCOMB_X52_Y30_N20
\u_receiver_ok|state~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_receiver_ok|state~19_combout\ = ((\u_rx|rx_data\(2) & (\u_receiver_ok|state.000~q\)) # (!\u_rx|rx_data\(2) & ((!\u_receiver_ok|state.001~q\)))) # (!\u_receiver_ok|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|rx_data\(2),
	datab => \u_receiver_ok|state.000~q\,
	datac => \u_receiver_ok|state.001~q\,
	datad => \u_receiver_ok|Equal0~1_combout\,
	combout => \u_receiver_ok|state~19_combout\);

-- Location: LCCOMB_X52_Y30_N18
\u_receiver_ok|state~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_receiver_ok|state~20_combout\ = (!\u_receiver_ok|state~18_combout\ & (((\u_receiver_ok|state~12_combout\) # (!\u_rx|rx_done~q\)) # (!\u_receiver_ok|state~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_receiver_ok|state~18_combout\,
	datab => \u_receiver_ok|state~19_combout\,
	datac => \u_rx|rx_done~q\,
	datad => \u_receiver_ok|state~12_combout\,
	combout => \u_receiver_ok|state~20_combout\);

-- Location: FF_X52_Y30_N19
\u_receiver_ok|state.000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_receiver_ok|state~20_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_receiver_ok|state.000~q\);

-- Location: LCCOMB_X52_Y30_N16
\u_receiver_ok|state~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_receiver_ok|state~16_combout\ = (\u_rx|rx_data\(2) & (!\u_receiver_ok|state.000~q\ & (\u_rx|rx_done~q\ & \u_receiver_ok|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|rx_data\(2),
	datab => \u_receiver_ok|state.000~q\,
	datac => \u_rx|rx_done~q\,
	datad => \u_receiver_ok|Equal0~1_combout\,
	combout => \u_receiver_ok|state~16_combout\);

-- Location: LCCOMB_X52_Y30_N26
\u_receiver_ok|state~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_receiver_ok|state~17_combout\ = (\u_receiver_ok|state~16_combout\) # ((\receive_ok_en~q\ & (!\u_rx|rx_done~q\ & \u_receiver_ok|state.001~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receive_ok_en~q\,
	datab => \u_rx|rx_done~q\,
	datac => \u_receiver_ok|state.001~q\,
	datad => \u_receiver_ok|state~16_combout\,
	combout => \u_receiver_ok|state~17_combout\);

-- Location: FF_X52_Y30_N27
\u_receiver_ok|state.001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_receiver_ok|state~17_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_receiver_ok|state.001~q\);

-- Location: LCCOMB_X52_Y30_N12
\u_receiver_ok|state~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_receiver_ok|state~14_combout\ = (\u_receiver_ok|state.001~q\ & (!\u_rx|rx_data\(2) & (\u_rx|rx_done~q\ & \u_receiver_ok|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_receiver_ok|state.001~q\,
	datab => \u_rx|rx_data\(2),
	datac => \u_rx|rx_done~q\,
	datad => \u_receiver_ok|Equal0~1_combout\,
	combout => \u_receiver_ok|state~14_combout\);

-- Location: LCCOMB_X52_Y30_N22
\u_receiver_ok|state~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_receiver_ok|state~15_combout\ = (\u_receiver_ok|state~14_combout\) # ((\receive_ok_en~q\ & (!\u_rx|rx_done~q\ & \u_receiver_ok|state.010~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receive_ok_en~q\,
	datab => \u_rx|rx_done~q\,
	datac => \u_receiver_ok|state.010~q\,
	datad => \u_receiver_ok|state~14_combout\,
	combout => \u_receiver_ok|state~15_combout\);

-- Location: FF_X52_Y30_N23
\u_receiver_ok|state.010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_receiver_ok|state~15_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_receiver_ok|state.010~q\);

-- Location: LCCOMB_X52_Y30_N24
\u_receiver_ok|state~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_receiver_ok|state~11_combout\ = (!\u_rx|rx_data\(1) & (\u_rx|rx_data\(2) & (\u_receiver_ok|state.010~q\ & \u_rx|rx_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|rx_data\(1),
	datab => \u_rx|rx_data\(2),
	datac => \u_receiver_ok|state.010~q\,
	datad => \u_rx|rx_data\(0),
	combout => \u_receiver_ok|state~11_combout\);

-- Location: LCCOMB_X52_Y30_N2
\u_receiver_ok|state~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_receiver_ok|state~12_combout\ = (!\u_rx|rx_data\(6) & (\u_receiver_ok|Equal0~0_combout\ & \u_receiver_ok|state~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rx|rx_data\(6),
	datac => \u_receiver_ok|Equal0~0_combout\,
	datad => \u_receiver_ok|state~11_combout\,
	combout => \u_receiver_ok|state~12_combout\);

-- Location: LCCOMB_X52_Y30_N6
\u_receiver_ok|state~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_receiver_ok|state~13_combout\ = (\u_rx|rx_done~q\ & (((\u_receiver_ok|state~12_combout\)))) # (!\u_rx|rx_done~q\ & (\receive_ok_en~q\ & (\u_receiver_ok|state.011~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receive_ok_en~q\,
	datab => \u_rx|rx_done~q\,
	datac => \u_receiver_ok|state.011~q\,
	datad => \u_receiver_ok|state~12_combout\,
	combout => \u_receiver_ok|state~13_combout\);

-- Location: FF_X52_Y30_N7
\u_receiver_ok|state.011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_receiver_ok|state~13_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_receiver_ok|state.011~q\);

-- Location: LCCOMB_X52_Y30_N0
\u_receiver_ok|OK~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_receiver_ok|OK~2_combout\ = (\u_rx|rx_done~q\ & (((\u_receiver_ok|state.011~q\)))) # (!\u_rx|rx_done~q\ & (\receive_ok_en~q\ & (\u_receiver_ok|OK~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receive_ok_en~q\,
	datab => \u_rx|rx_done~q\,
	datac => \u_receiver_ok|OK~q\,
	datad => \u_receiver_ok|state.011~q\,
	combout => \u_receiver_ok|OK~2_combout\);

-- Location: LCCOMB_X51_Y31_N6
\u_receiver_ok|OK~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_receiver_ok|OK~3_combout\ = (\u_receiver_ok|OK~2_combout\ & ((\u_receiver_ok|OK~q\) # ((\u_receiver_ok|Equal0~0_combout\ & \u_receiver_ok|OK~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_receiver_ok|Equal0~0_combout\,
	datab => \u_receiver_ok|OK~1_combout\,
	datac => \u_receiver_ok|OK~q\,
	datad => \u_receiver_ok|OK~2_combout\,
	combout => \u_receiver_ok|OK~3_combout\);

-- Location: FF_X51_Y31_N7
\u_receiver_ok|OK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_receiver_ok|OK~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_receiver_ok|OK~q\);

-- Location: LCCOMB_X52_Y32_N4
\delay_cnt[0]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[0]~31_combout\ = delay_cnt(0) $ (VCC)
-- \delay_cnt[0]~32\ = CARRY(delay_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(0),
	datad => VCC,
	combout => \delay_cnt[0]~31_combout\,
	cout => \delay_cnt[0]~32\);

-- Location: LCCOMB_X51_Y31_N0
\delay_cnt[27]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[27]~83_combout\ = (!\always2~5_combout\) # (!\state.S_WAIT_DONE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.S_WAIT_DONE~q\,
	datad => \always2~5_combout\,
	combout => \delay_cnt[27]~83_combout\);

-- Location: LCCOMB_X52_Y31_N30
\delay_cnt[27]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[27]~94_combout\ = (\delay_cnt[27]~86_combout\ & ((\state.S_IDLE~q\ & ((\always2~0_combout\))) # (!\state.S_IDLE~q\ & (!\wifi_rst_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wifi_rst_done~q\,
	datab => \state.S_IDLE~q\,
	datac => \always2~0_combout\,
	datad => \delay_cnt[27]~86_combout\,
	combout => \delay_cnt[27]~94_combout\);

-- Location: LCCOMB_X52_Y31_N28
\delay_cnt[27]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[27]~87_combout\ = (\delay_cnt[27]~30_combout\ & (!\delay_cnt[27]~94_combout\ & ((\state.S_IDLE~q\) # (\wifi_rst_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay_cnt[27]~30_combout\,
	datab => \state.S_IDLE~q\,
	datac => \delay_cnt[27]~94_combout\,
	datad => \wifi_rst_done~q\,
	combout => \delay_cnt[27]~87_combout\);

-- Location: FF_X52_Y32_N5
\delay_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[0]~31_combout\,
	clrn => \rst_n~input_o\,
	sclr => \delay_cnt[27]~83_combout\,
	ena => \delay_cnt[27]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(0));

-- Location: LCCOMB_X52_Y32_N6
\delay_cnt[1]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[1]~33_combout\ = (delay_cnt(1) & (!\delay_cnt[0]~32\)) # (!delay_cnt(1) & ((\delay_cnt[0]~32\) # (GND)))
-- \delay_cnt[1]~34\ = CARRY((!\delay_cnt[0]~32\) # (!delay_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(1),
	datad => VCC,
	cin => \delay_cnt[0]~32\,
	combout => \delay_cnt[1]~33_combout\,
	cout => \delay_cnt[1]~34\);

-- Location: FF_X52_Y32_N7
\delay_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[1]~33_combout\,
	clrn => \rst_n~input_o\,
	sclr => \delay_cnt[27]~83_combout\,
	ena => \delay_cnt[27]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(1));

-- Location: LCCOMB_X52_Y32_N8
\delay_cnt[2]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[2]~35_combout\ = (delay_cnt(2) & (\delay_cnt[1]~34\ $ (GND))) # (!delay_cnt(2) & (!\delay_cnt[1]~34\ & VCC))
-- \delay_cnt[2]~36\ = CARRY((delay_cnt(2) & !\delay_cnt[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(2),
	datad => VCC,
	cin => \delay_cnt[1]~34\,
	combout => \delay_cnt[2]~35_combout\,
	cout => \delay_cnt[2]~36\);

-- Location: FF_X52_Y32_N9
\delay_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[2]~35_combout\,
	clrn => \rst_n~input_o\,
	sclr => \delay_cnt[27]~83_combout\,
	ena => \delay_cnt[27]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(2));

-- Location: LCCOMB_X52_Y32_N10
\delay_cnt[3]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[3]~37_combout\ = (delay_cnt(3) & (!\delay_cnt[2]~36\)) # (!delay_cnt(3) & ((\delay_cnt[2]~36\) # (GND)))
-- \delay_cnt[3]~38\ = CARRY((!\delay_cnt[2]~36\) # (!delay_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(3),
	datad => VCC,
	cin => \delay_cnt[2]~36\,
	combout => \delay_cnt[3]~37_combout\,
	cout => \delay_cnt[3]~38\);

-- Location: FF_X52_Y32_N11
\delay_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[3]~37_combout\,
	clrn => \rst_n~input_o\,
	sclr => \delay_cnt[27]~83_combout\,
	ena => \delay_cnt[27]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(3));

-- Location: LCCOMB_X52_Y32_N12
\delay_cnt[4]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[4]~39_combout\ = (delay_cnt(4) & (\delay_cnt[3]~38\ $ (GND))) # (!delay_cnt(4) & (!\delay_cnt[3]~38\ & VCC))
-- \delay_cnt[4]~40\ = CARRY((delay_cnt(4) & !\delay_cnt[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(4),
	datad => VCC,
	cin => \delay_cnt[3]~38\,
	combout => \delay_cnt[4]~39_combout\,
	cout => \delay_cnt[4]~40\);

-- Location: FF_X52_Y32_N13
\delay_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[4]~39_combout\,
	clrn => \rst_n~input_o\,
	sclr => \delay_cnt[27]~83_combout\,
	ena => \delay_cnt[27]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(4));

-- Location: LCCOMB_X52_Y32_N14
\delay_cnt[5]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[5]~41_combout\ = (delay_cnt(5) & (!\delay_cnt[4]~40\)) # (!delay_cnt(5) & ((\delay_cnt[4]~40\) # (GND)))
-- \delay_cnt[5]~42\ = CARRY((!\delay_cnt[4]~40\) # (!delay_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(5),
	datad => VCC,
	cin => \delay_cnt[4]~40\,
	combout => \delay_cnt[5]~41_combout\,
	cout => \delay_cnt[5]~42\);

-- Location: FF_X52_Y32_N15
\delay_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[5]~41_combout\,
	clrn => \rst_n~input_o\,
	sclr => \delay_cnt[27]~83_combout\,
	ena => \delay_cnt[27]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(5));

-- Location: LCCOMB_X52_Y32_N16
\delay_cnt[6]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[6]~43_combout\ = (delay_cnt(6) & (\delay_cnt[5]~42\ $ (GND))) # (!delay_cnt(6) & (!\delay_cnt[5]~42\ & VCC))
-- \delay_cnt[6]~44\ = CARRY((delay_cnt(6) & !\delay_cnt[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(6),
	datad => VCC,
	cin => \delay_cnt[5]~42\,
	combout => \delay_cnt[6]~43_combout\,
	cout => \delay_cnt[6]~44\);

-- Location: FF_X52_Y32_N17
\delay_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[6]~43_combout\,
	clrn => \rst_n~input_o\,
	sclr => \delay_cnt[27]~83_combout\,
	ena => \delay_cnt[27]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(6));

-- Location: LCCOMB_X52_Y32_N18
\delay_cnt[7]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[7]~45_combout\ = (delay_cnt(7) & (!\delay_cnt[6]~44\)) # (!delay_cnt(7) & ((\delay_cnt[6]~44\) # (GND)))
-- \delay_cnt[7]~46\ = CARRY((!\delay_cnt[6]~44\) # (!delay_cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(7),
	datad => VCC,
	cin => \delay_cnt[6]~44\,
	combout => \delay_cnt[7]~45_combout\,
	cout => \delay_cnt[7]~46\);

-- Location: FF_X52_Y32_N19
\delay_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[7]~45_combout\,
	clrn => \rst_n~input_o\,
	sclr => \delay_cnt[27]~83_combout\,
	ena => \delay_cnt[27]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(7));

-- Location: LCCOMB_X52_Y32_N20
\delay_cnt[8]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[8]~47_combout\ = (delay_cnt(8) & (\delay_cnt[7]~46\ $ (GND))) # (!delay_cnt(8) & (!\delay_cnt[7]~46\ & VCC))
-- \delay_cnt[8]~48\ = CARRY((delay_cnt(8) & !\delay_cnt[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(8),
	datad => VCC,
	cin => \delay_cnt[7]~46\,
	combout => \delay_cnt[8]~47_combout\,
	cout => \delay_cnt[8]~48\);

-- Location: FF_X52_Y32_N21
\delay_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[8]~47_combout\,
	clrn => \rst_n~input_o\,
	sclr => \delay_cnt[27]~83_combout\,
	ena => \delay_cnt[27]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(8));

-- Location: LCCOMB_X52_Y32_N22
\delay_cnt[9]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[9]~49_combout\ = (delay_cnt(9) & (!\delay_cnt[8]~48\)) # (!delay_cnt(9) & ((\delay_cnt[8]~48\) # (GND)))
-- \delay_cnt[9]~50\ = CARRY((!\delay_cnt[8]~48\) # (!delay_cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(9),
	datad => VCC,
	cin => \delay_cnt[8]~48\,
	combout => \delay_cnt[9]~49_combout\,
	cout => \delay_cnt[9]~50\);

-- Location: FF_X52_Y32_N23
\delay_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[9]~49_combout\,
	clrn => \rst_n~input_o\,
	sclr => \delay_cnt[27]~83_combout\,
	ena => \delay_cnt[27]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(9));

-- Location: LCCOMB_X52_Y32_N24
\delay_cnt[10]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[10]~51_combout\ = (delay_cnt(10) & (\delay_cnt[9]~50\ $ (GND))) # (!delay_cnt(10) & (!\delay_cnt[9]~50\ & VCC))
-- \delay_cnt[10]~52\ = CARRY((delay_cnt(10) & !\delay_cnt[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(10),
	datad => VCC,
	cin => \delay_cnt[9]~50\,
	combout => \delay_cnt[10]~51_combout\,
	cout => \delay_cnt[10]~52\);

-- Location: FF_X52_Y32_N25
\delay_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[10]~51_combout\,
	clrn => \rst_n~input_o\,
	sclr => \delay_cnt[27]~83_combout\,
	ena => \delay_cnt[27]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(10));

-- Location: LCCOMB_X52_Y32_N26
\delay_cnt[11]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[11]~53_combout\ = (delay_cnt(11) & (!\delay_cnt[10]~52\)) # (!delay_cnt(11) & ((\delay_cnt[10]~52\) # (GND)))
-- \delay_cnt[11]~54\ = CARRY((!\delay_cnt[10]~52\) # (!delay_cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(11),
	datad => VCC,
	cin => \delay_cnt[10]~52\,
	combout => \delay_cnt[11]~53_combout\,
	cout => \delay_cnt[11]~54\);

-- Location: FF_X52_Y32_N27
\delay_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[11]~53_combout\,
	clrn => \rst_n~input_o\,
	sclr => \delay_cnt[27]~83_combout\,
	ena => \delay_cnt[27]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(11));

-- Location: LCCOMB_X52_Y32_N28
\delay_cnt[12]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[12]~55_combout\ = (delay_cnt(12) & (\delay_cnt[11]~54\ $ (GND))) # (!delay_cnt(12) & (!\delay_cnt[11]~54\ & VCC))
-- \delay_cnt[12]~56\ = CARRY((delay_cnt(12) & !\delay_cnt[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(12),
	datad => VCC,
	cin => \delay_cnt[11]~54\,
	combout => \delay_cnt[12]~55_combout\,
	cout => \delay_cnt[12]~56\);

-- Location: FF_X52_Y32_N29
\delay_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[12]~55_combout\,
	clrn => \rst_n~input_o\,
	sclr => \delay_cnt[27]~83_combout\,
	ena => \delay_cnt[27]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(12));

-- Location: LCCOMB_X52_Y32_N30
\delay_cnt[13]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[13]~57_combout\ = (delay_cnt(13) & (!\delay_cnt[12]~56\)) # (!delay_cnt(13) & ((\delay_cnt[12]~56\) # (GND)))
-- \delay_cnt[13]~58\ = CARRY((!\delay_cnt[12]~56\) # (!delay_cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(13),
	datad => VCC,
	cin => \delay_cnt[12]~56\,
	combout => \delay_cnt[13]~57_combout\,
	cout => \delay_cnt[13]~58\);

-- Location: FF_X52_Y32_N31
\delay_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[13]~57_combout\,
	clrn => \rst_n~input_o\,
	sclr => \delay_cnt[27]~83_combout\,
	ena => \delay_cnt[27]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(13));

-- Location: LCCOMB_X52_Y31_N0
\delay_cnt[14]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[14]~59_combout\ = (delay_cnt(14) & (\delay_cnt[13]~58\ $ (GND))) # (!delay_cnt(14) & (!\delay_cnt[13]~58\ & VCC))
-- \delay_cnt[14]~60\ = CARRY((delay_cnt(14) & !\delay_cnt[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(14),
	datad => VCC,
	cin => \delay_cnt[13]~58\,
	combout => \delay_cnt[14]~59_combout\,
	cout => \delay_cnt[14]~60\);

-- Location: FF_X52_Y31_N1
\delay_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[14]~59_combout\,
	clrn => \rst_n~input_o\,
	sclr => \delay_cnt[27]~83_combout\,
	ena => \delay_cnt[27]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(14));

-- Location: LCCOMB_X52_Y31_N2
\delay_cnt[15]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[15]~61_combout\ = (delay_cnt(15) & (!\delay_cnt[14]~60\)) # (!delay_cnt(15) & ((\delay_cnt[14]~60\) # (GND)))
-- \delay_cnt[15]~62\ = CARRY((!\delay_cnt[14]~60\) # (!delay_cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(15),
	datad => VCC,
	cin => \delay_cnt[14]~60\,
	combout => \delay_cnt[15]~61_combout\,
	cout => \delay_cnt[15]~62\);

-- Location: FF_X52_Y31_N3
\delay_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[15]~61_combout\,
	clrn => \rst_n~input_o\,
	sclr => \delay_cnt[27]~83_combout\,
	ena => \delay_cnt[27]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(15));

-- Location: LCCOMB_X52_Y31_N4
\delay_cnt[16]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[16]~63_combout\ = (delay_cnt(16) & (\delay_cnt[15]~62\ $ (GND))) # (!delay_cnt(16) & (!\delay_cnt[15]~62\ & VCC))
-- \delay_cnt[16]~64\ = CARRY((delay_cnt(16) & !\delay_cnt[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(16),
	datad => VCC,
	cin => \delay_cnt[15]~62\,
	combout => \delay_cnt[16]~63_combout\,
	cout => \delay_cnt[16]~64\);

-- Location: FF_X52_Y31_N5
\delay_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[16]~63_combout\,
	clrn => \rst_n~input_o\,
	sclr => \delay_cnt[27]~83_combout\,
	ena => \delay_cnt[27]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(16));

-- Location: LCCOMB_X52_Y31_N6
\delay_cnt[17]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[17]~65_combout\ = (delay_cnt(17) & (!\delay_cnt[16]~64\)) # (!delay_cnt(17) & ((\delay_cnt[16]~64\) # (GND)))
-- \delay_cnt[17]~66\ = CARRY((!\delay_cnt[16]~64\) # (!delay_cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(17),
	datad => VCC,
	cin => \delay_cnt[16]~64\,
	combout => \delay_cnt[17]~65_combout\,
	cout => \delay_cnt[17]~66\);

-- Location: FF_X52_Y31_N7
\delay_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[17]~65_combout\,
	clrn => \rst_n~input_o\,
	sclr => \delay_cnt[27]~83_combout\,
	ena => \delay_cnt[27]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(17));

-- Location: LCCOMB_X52_Y31_N8
\delay_cnt[18]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[18]~67_combout\ = (delay_cnt(18) & (\delay_cnt[17]~66\ $ (GND))) # (!delay_cnt(18) & (!\delay_cnt[17]~66\ & VCC))
-- \delay_cnt[18]~68\ = CARRY((delay_cnt(18) & !\delay_cnt[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(18),
	datad => VCC,
	cin => \delay_cnt[17]~66\,
	combout => \delay_cnt[18]~67_combout\,
	cout => \delay_cnt[18]~68\);

-- Location: FF_X52_Y31_N9
\delay_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[18]~67_combout\,
	clrn => \rst_n~input_o\,
	sclr => \delay_cnt[27]~83_combout\,
	ena => \delay_cnt[27]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(18));

-- Location: LCCOMB_X52_Y31_N10
\delay_cnt[19]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[19]~69_combout\ = (delay_cnt(19) & (!\delay_cnt[18]~68\)) # (!delay_cnt(19) & ((\delay_cnt[18]~68\) # (GND)))
-- \delay_cnt[19]~70\ = CARRY((!\delay_cnt[18]~68\) # (!delay_cnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(19),
	datad => VCC,
	cin => \delay_cnt[18]~68\,
	combout => \delay_cnt[19]~69_combout\,
	cout => \delay_cnt[19]~70\);

-- Location: FF_X52_Y31_N11
\delay_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[19]~69_combout\,
	clrn => \rst_n~input_o\,
	sclr => \delay_cnt[27]~83_combout\,
	ena => \delay_cnt[27]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(19));

-- Location: LCCOMB_X52_Y31_N12
\delay_cnt[20]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[20]~71_combout\ = (delay_cnt(20) & (\delay_cnt[19]~70\ $ (GND))) # (!delay_cnt(20) & (!\delay_cnt[19]~70\ & VCC))
-- \delay_cnt[20]~72\ = CARRY((delay_cnt(20) & !\delay_cnt[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(20),
	datad => VCC,
	cin => \delay_cnt[19]~70\,
	combout => \delay_cnt[20]~71_combout\,
	cout => \delay_cnt[20]~72\);

-- Location: FF_X52_Y31_N13
\delay_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[20]~71_combout\,
	clrn => \rst_n~input_o\,
	sclr => \delay_cnt[27]~83_combout\,
	ena => \delay_cnt[27]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(20));

-- Location: LCCOMB_X52_Y31_N14
\delay_cnt[21]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[21]~73_combout\ = (delay_cnt(21) & (!\delay_cnt[20]~72\)) # (!delay_cnt(21) & ((\delay_cnt[20]~72\) # (GND)))
-- \delay_cnt[21]~74\ = CARRY((!\delay_cnt[20]~72\) # (!delay_cnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(21),
	datad => VCC,
	cin => \delay_cnt[20]~72\,
	combout => \delay_cnt[21]~73_combout\,
	cout => \delay_cnt[21]~74\);

-- Location: FF_X52_Y31_N15
\delay_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[21]~73_combout\,
	clrn => \rst_n~input_o\,
	sclr => \delay_cnt[27]~83_combout\,
	ena => \delay_cnt[27]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(21));

-- Location: LCCOMB_X52_Y31_N16
\delay_cnt[22]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[22]~75_combout\ = (delay_cnt(22) & (\delay_cnt[21]~74\ $ (GND))) # (!delay_cnt(22) & (!\delay_cnt[21]~74\ & VCC))
-- \delay_cnt[22]~76\ = CARRY((delay_cnt(22) & !\delay_cnt[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(22),
	datad => VCC,
	cin => \delay_cnt[21]~74\,
	combout => \delay_cnt[22]~75_combout\,
	cout => \delay_cnt[22]~76\);

-- Location: FF_X52_Y31_N17
\delay_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[22]~75_combout\,
	clrn => \rst_n~input_o\,
	sclr => \delay_cnt[27]~83_combout\,
	ena => \delay_cnt[27]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(22));

-- Location: LCCOMB_X52_Y31_N18
\delay_cnt[23]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[23]~77_combout\ = (delay_cnt(23) & (!\delay_cnt[22]~76\)) # (!delay_cnt(23) & ((\delay_cnt[22]~76\) # (GND)))
-- \delay_cnt[23]~78\ = CARRY((!\delay_cnt[22]~76\) # (!delay_cnt(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(23),
	datad => VCC,
	cin => \delay_cnt[22]~76\,
	combout => \delay_cnt[23]~77_combout\,
	cout => \delay_cnt[23]~78\);

-- Location: FF_X52_Y31_N19
\delay_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[23]~77_combout\,
	clrn => \rst_n~input_o\,
	sclr => \delay_cnt[27]~83_combout\,
	ena => \delay_cnt[27]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(23));

-- Location: LCCOMB_X52_Y31_N20
\delay_cnt[24]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[24]~79_combout\ = (delay_cnt(24) & (\delay_cnt[23]~78\ $ (GND))) # (!delay_cnt(24) & (!\delay_cnt[23]~78\ & VCC))
-- \delay_cnt[24]~80\ = CARRY((delay_cnt(24) & !\delay_cnt[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(24),
	datad => VCC,
	cin => \delay_cnt[23]~78\,
	combout => \delay_cnt[24]~79_combout\,
	cout => \delay_cnt[24]~80\);

-- Location: FF_X52_Y31_N21
\delay_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[24]~79_combout\,
	clrn => \rst_n~input_o\,
	sclr => \delay_cnt[27]~83_combout\,
	ena => \delay_cnt[27]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(24));

-- Location: LCCOMB_X51_Y31_N30
\always2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always2~4_combout\ = (!\u_receiver_ok|OK~q\ & (!delay_cnt(20) & (!delay_cnt(24) & !delay_cnt(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_receiver_ok|OK~q\,
	datab => delay_cnt(20),
	datac => delay_cnt(24),
	datad => delay_cnt(19),
	combout => \always2~4_combout\);

-- Location: LCCOMB_X52_Y31_N22
\delay_cnt[25]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[25]~81_combout\ = (delay_cnt(25) & (!\delay_cnt[24]~80\)) # (!delay_cnt(25) & ((\delay_cnt[24]~80\) # (GND)))
-- \delay_cnt[25]~82\ = CARRY((!\delay_cnt[24]~80\) # (!delay_cnt(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(25),
	datad => VCC,
	cin => \delay_cnt[24]~80\,
	combout => \delay_cnt[25]~81_combout\,
	cout => \delay_cnt[25]~82\);

-- Location: FF_X52_Y31_N23
\delay_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[25]~81_combout\,
	clrn => \rst_n~input_o\,
	sclr => \delay_cnt[27]~83_combout\,
	ena => \delay_cnt[27]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(25));

-- Location: LCCOMB_X52_Y31_N24
\delay_cnt[26]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[26]~88_combout\ = (delay_cnt(26) & (\delay_cnt[25]~82\ $ (GND))) # (!delay_cnt(26) & (!\delay_cnt[25]~82\ & VCC))
-- \delay_cnt[26]~89\ = CARRY((delay_cnt(26) & !\delay_cnt[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(26),
	datad => VCC,
	cin => \delay_cnt[25]~82\,
	combout => \delay_cnt[26]~88_combout\,
	cout => \delay_cnt[26]~89\);

-- Location: FF_X52_Y31_N25
\delay_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[26]~88_combout\,
	clrn => \rst_n~input_o\,
	sclr => \delay_cnt[27]~83_combout\,
	ena => \delay_cnt[27]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(26));

-- Location: LCCOMB_X52_Y31_N26
\delay_cnt[27]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[27]~90_combout\ = delay_cnt(27) $ (\delay_cnt[26]~89\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(27),
	cin => \delay_cnt[26]~89\,
	combout => \delay_cnt[27]~90_combout\);

-- Location: FF_X52_Y31_N27
\delay_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[27]~90_combout\,
	clrn => \rst_n~input_o\,
	sclr => \delay_cnt[27]~83_combout\,
	ena => \delay_cnt[27]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(27));

-- Location: LCCOMB_X51_Y31_N14
\always2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always2~2_combout\ = (!delay_cnt(26)) # (!delay_cnt(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => delay_cnt(27),
	datad => delay_cnt(26),
	combout => \always2~2_combout\);

-- Location: LCCOMB_X51_Y31_N12
\always2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always2~1_combout\ = (!delay_cnt(24) & (((!delay_cnt(22)) # (!delay_cnt(21))) # (!delay_cnt(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(24),
	datab => delay_cnt(23),
	datac => delay_cnt(21),
	datad => delay_cnt(22),
	combout => \always2~1_combout\);

-- Location: LCCOMB_X51_Y31_N8
\always2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always2~3_combout\ = (!\u_receiver_ok|OK~q\ & (((\always2~2_combout\) # (\always2~1_combout\)) # (!delay_cnt(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_receiver_ok|OK~q\,
	datab => delay_cnt(25),
	datac => \always2~2_combout\,
	datad => \always2~1_combout\,
	combout => \always2~3_combout\);

-- Location: LCCOMB_X51_Y31_N10
\LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = ((!delay_cnt(14) & ((!delay_cnt(12)) # (!delay_cnt(13))))) # (!delay_cnt(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(15),
	datab => delay_cnt(14),
	datac => delay_cnt(13),
	datad => delay_cnt(12),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X51_Y31_N4
\LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (((!delay_cnt(16) & \LessThan1~2_combout\)) # (!delay_cnt(18))) # (!delay_cnt(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(17),
	datab => delay_cnt(16),
	datac => delay_cnt(18),
	datad => \LessThan1~2_combout\,
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X52_Y32_N0
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!delay_cnt(10) & (((!delay_cnt(7) & !delay_cnt(8))) # (!delay_cnt(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(9),
	datab => delay_cnt(7),
	datac => delay_cnt(8),
	datad => delay_cnt(10),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X51_Y31_N24
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!delay_cnt(11) & (!delay_cnt(16) & (!delay_cnt(14) & \LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(11),
	datab => delay_cnt(16),
	datac => delay_cnt(14),
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X51_Y31_N2
\always2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always2~5_combout\ = (\always2~3_combout\) # ((\always2~4_combout\ & ((\LessThan1~3_combout\) # (\LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~4_combout\,
	datab => \always2~3_combout\,
	datac => \LessThan1~3_combout\,
	datad => \LessThan1~1_combout\,
	combout => \always2~5_combout\);

-- Location: LCCOMB_X54_Y31_N22
\Selector36~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector36~1_combout\ = (!\Selector552~0_combout\ & (\Selector36~0_combout\ & ((\always2~5_combout\) # (!\state.S_WAIT_DONE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector552~0_combout\,
	datab => \state.S_WAIT_DONE~q\,
	datac => \always2~5_combout\,
	datad => \Selector36~0_combout\,
	combout => \Selector36~1_combout\);

-- Location: LCCOMB_X54_Y31_N8
\Selector36~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector36~2_combout\ = (!\Selector29~2_combout\ & ((\Selector36~1_combout\) # ((\state.S_WAIT_DONE~q\ & !\Selector29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~1_combout\,
	datab => \Selector29~2_combout\,
	datac => \state.S_WAIT_DONE~q\,
	datad => \Selector29~1_combout\,
	combout => \Selector36~2_combout\);

-- Location: FF_X54_Y31_N9
\state.S_WAIT_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector36~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_WAIT_DONE~q\);

-- Location: LCCOMB_X53_Y31_N24
\Selector444~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector444~0_combout\ = ((\always2~0_combout\ & ((\state.S_CWJAP~q\) # (!\delay_cnt[27]~92_combout\)))) # (!\Selector29~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector29~3_combout\,
	datab => \state.S_CWJAP~q\,
	datac => \delay_cnt[27]~92_combout\,
	datad => \always2~0_combout\,
	combout => \Selector444~0_combout\);

-- Location: LCCOMB_X53_Y31_N28
\Selector444~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector444~1_combout\ = (\state.S_CIPSTART~q\ & (((current_cmd(105))) # (!\always2~0_combout\))) # (!\state.S_CIPSTART~q\ & (((current_cmd(105) & \Selector444~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_CIPSTART~q\,
	datab => \always2~0_combout\,
	datac => current_cmd(105),
	datad => \Selector444~0_combout\,
	combout => \Selector444~1_combout\);

-- Location: FF_X53_Y31_N29
\current_cmd[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector444~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(105));

-- Location: LCCOMB_X55_Y31_N24
\state.S_READY~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.S_READY~0_combout\ = (\Selector29~2_combout\) # ((\state.S_WAIT_DONE~q\ & (current_cmd(105) & !\always2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_WAIT_DONE~q\,
	datab => current_cmd(105),
	datac => \Selector29~2_combout\,
	datad => \always2~5_combout\,
	combout => \state.S_READY~0_combout\);

-- Location: LCCOMB_X55_Y31_N20
\state.S_READY~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.S_READY~1_combout\ = (\Selector29~2_combout\ & (\state.S_READY~0_combout\)) # (!\Selector29~2_combout\ & ((\Selector30~0_combout\ & ((\state.S_READY~q\))) # (!\Selector30~0_combout\ & (\state.S_READY~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector29~2_combout\,
	datab => \state.S_READY~0_combout\,
	datac => \state.S_READY~q\,
	datad => \Selector30~0_combout\,
	combout => \state.S_READY~1_combout\);

-- Location: FF_X55_Y31_N21
\state.S_READY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.S_READY~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_READY~q\);

-- Location: LCCOMB_X55_Y31_N30
\delay_cnt[27]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[27]~30_combout\ = (!\state.S_READY~q\ & !\state.S_COOL_DOWN~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S_READY~q\,
	datad => \state.S_COOL_DOWN~q\,
	combout => \delay_cnt[27]~30_combout\);

-- Location: FF_X56_Y31_N17
\cooldown_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~91_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.S_COOL_DOWN~q\,
	ena => \ALT_INV_delay_cnt[27]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cooldown_cnt(0));

-- Location: LCCOMB_X57_Y31_N6
\Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (cooldown_cnt(1) & (!\Add2~17\)) # (!cooldown_cnt(1) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!cooldown_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cooldown_cnt(1),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X57_Y31_N2
\Add2~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~90_combout\ = (!\LessThan2~5_combout\ & (!\LessThan2~3_combout\ & (!\LessThan2~7_combout\ & \Add2~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~5_combout\,
	datab => \LessThan2~3_combout\,
	datac => \LessThan2~7_combout\,
	datad => \Add2~18_combout\,
	combout => \Add2~90_combout\);

-- Location: FF_X57_Y31_N3
\cooldown_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~90_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.S_COOL_DOWN~q\,
	ena => \ALT_INV_delay_cnt[27]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cooldown_cnt(1));

-- Location: LCCOMB_X57_Y31_N8
\Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (cooldown_cnt(2) & (\Add2~19\ $ (GND))) # (!cooldown_cnt(2) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((cooldown_cnt(2) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cooldown_cnt(2),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X56_Y31_N14
\Add2~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~89_combout\ = (!\LessThan2~5_combout\ & (!\LessThan2~7_combout\ & (\Add2~20_combout\ & !\LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~5_combout\,
	datab => \LessThan2~7_combout\,
	datac => \Add2~20_combout\,
	datad => \LessThan2~3_combout\,
	combout => \Add2~89_combout\);

-- Location: FF_X56_Y31_N15
\cooldown_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~89_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.S_COOL_DOWN~q\,
	ena => \ALT_INV_delay_cnt[27]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cooldown_cnt(2));

-- Location: LCCOMB_X57_Y31_N10
\Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (cooldown_cnt(3) & (!\Add2~21\)) # (!cooldown_cnt(3) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!cooldown_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cooldown_cnt(3),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X57_Y31_N0
\Add2~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~88_combout\ = (!\LessThan2~5_combout\ & (!\LessThan2~3_combout\ & (!\LessThan2~7_combout\ & \Add2~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~5_combout\,
	datab => \LessThan2~3_combout\,
	datac => \LessThan2~7_combout\,
	datad => \Add2~22_combout\,
	combout => \Add2~88_combout\);

-- Location: FF_X57_Y31_N1
\cooldown_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~88_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.S_COOL_DOWN~q\,
	ena => \ALT_INV_delay_cnt[27]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cooldown_cnt(3));

-- Location: LCCOMB_X57_Y31_N12
\Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (cooldown_cnt(4) & (\Add2~23\ $ (GND))) # (!cooldown_cnt(4) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((cooldown_cnt(4) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cooldown_cnt(4),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X56_Y31_N0
\Add2~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~87_combout\ = (!\LessThan2~5_combout\ & (!\LessThan2~7_combout\ & (\Add2~24_combout\ & !\LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~5_combout\,
	datab => \LessThan2~7_combout\,
	datac => \Add2~24_combout\,
	datad => \LessThan2~3_combout\,
	combout => \Add2~87_combout\);

-- Location: FF_X56_Y31_N1
\cooldown_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~87_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.S_COOL_DOWN~q\,
	ena => \ALT_INV_delay_cnt[27]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cooldown_cnt(4));

-- Location: LCCOMB_X57_Y31_N14
\Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (cooldown_cnt(5) & (!\Add2~25\)) # (!cooldown_cnt(5) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!cooldown_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cooldown_cnt(5),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X56_Y31_N10
\Add2~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~86_combout\ = (!\LessThan2~5_combout\ & (!\LessThan2~7_combout\ & (\Add2~26_combout\ & !\LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~5_combout\,
	datab => \LessThan2~7_combout\,
	datac => \Add2~26_combout\,
	datad => \LessThan2~3_combout\,
	combout => \Add2~86_combout\);

-- Location: FF_X56_Y31_N11
\cooldown_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~86_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.S_COOL_DOWN~q\,
	ena => \ALT_INV_delay_cnt[27]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cooldown_cnt(5));

-- Location: LCCOMB_X57_Y31_N16
\Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (cooldown_cnt(6) & (\Add2~27\ $ (GND))) # (!cooldown_cnt(6) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((cooldown_cnt(6) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cooldown_cnt(6),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X56_Y31_N28
\Add2~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~85_combout\ = (!\LessThan2~5_combout\ & (!\LessThan2~3_combout\ & (!\LessThan2~7_combout\ & \Add2~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~5_combout\,
	datab => \LessThan2~3_combout\,
	datac => \LessThan2~7_combout\,
	datad => \Add2~28_combout\,
	combout => \Add2~85_combout\);

-- Location: FF_X56_Y31_N29
\cooldown_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~85_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.S_COOL_DOWN~q\,
	ena => \ALT_INV_delay_cnt[27]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cooldown_cnt(6));

-- Location: LCCOMB_X57_Y31_N18
\Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (cooldown_cnt(7) & (!\Add2~29\)) # (!cooldown_cnt(7) & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!cooldown_cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cooldown_cnt(7),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X57_Y31_N20
\Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (cooldown_cnt(8) & (\Add2~31\ $ (GND))) # (!cooldown_cnt(8) & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((cooldown_cnt(8) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cooldown_cnt(8),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X56_Y31_N20
\Add2~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~72_combout\ = (!\LessThan2~5_combout\ & (!\LessThan2~7_combout\ & (\Add2~32_combout\ & !\LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~5_combout\,
	datab => \LessThan2~7_combout\,
	datac => \Add2~32_combout\,
	datad => \LessThan2~3_combout\,
	combout => \Add2~72_combout\);

-- Location: FF_X56_Y31_N21
\cooldown_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~72_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.S_COOL_DOWN~q\,
	ena => \ALT_INV_delay_cnt[27]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cooldown_cnt(8));

-- Location: LCCOMB_X57_Y31_N22
\Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (cooldown_cnt(9) & (!\Add2~33\)) # (!cooldown_cnt(9) & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!cooldown_cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cooldown_cnt(9),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X56_Y31_N24
\Add2~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~70_combout\ = (!\LessThan2~5_combout\ & (!\LessThan2~3_combout\ & (!\LessThan2~7_combout\ & \Add2~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~5_combout\,
	datab => \LessThan2~3_combout\,
	datac => \LessThan2~7_combout\,
	datad => \Add2~34_combout\,
	combout => \Add2~70_combout\);

-- Location: FF_X56_Y31_N25
\cooldown_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~70_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.S_COOL_DOWN~q\,
	ena => \ALT_INV_delay_cnt[27]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cooldown_cnt(9));

-- Location: LCCOMB_X57_Y31_N24
\Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (cooldown_cnt(10) & (\Add2~35\ $ (GND))) # (!cooldown_cnt(10) & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((cooldown_cnt(10) & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cooldown_cnt(10),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCCOMB_X56_Y31_N30
\Add2~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~71_combout\ = (!\LessThan2~5_combout\ & (!\LessThan2~3_combout\ & (!\LessThan2~7_combout\ & \Add2~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~5_combout\,
	datab => \LessThan2~3_combout\,
	datac => \LessThan2~7_combout\,
	datad => \Add2~36_combout\,
	combout => \Add2~71_combout\);

-- Location: FF_X56_Y31_N31
\cooldown_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~71_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.S_COOL_DOWN~q\,
	ena => \ALT_INV_delay_cnt[27]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cooldown_cnt(10));

-- Location: LCCOMB_X57_Y31_N26
\Add2~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (cooldown_cnt(11) & (!\Add2~37\)) # (!cooldown_cnt(11) & ((\Add2~37\) # (GND)))
-- \Add2~39\ = CARRY((!\Add2~37\) # (!cooldown_cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cooldown_cnt(11),
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X56_Y31_N22
\Add2~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~69_combout\ = (!\LessThan2~5_combout\ & (!\LessThan2~3_combout\ & (!\LessThan2~7_combout\ & \Add2~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~5_combout\,
	datab => \LessThan2~3_combout\,
	datac => \LessThan2~7_combout\,
	datad => \Add2~38_combout\,
	combout => \Add2~69_combout\);

-- Location: FF_X56_Y31_N23
\cooldown_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~69_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.S_COOL_DOWN~q\,
	ena => \ALT_INV_delay_cnt[27]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cooldown_cnt(11));

-- Location: LCCOMB_X57_Y31_N28
\Add2~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (cooldown_cnt(12) & (\Add2~39\ $ (GND))) # (!cooldown_cnt(12) & (!\Add2~39\ & VCC))
-- \Add2~41\ = CARRY((cooldown_cnt(12) & !\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cooldown_cnt(12),
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCCOMB_X56_Y31_N4
\Add2~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~68_combout\ = (!\LessThan2~5_combout\ & (!\LessThan2~3_combout\ & (!\LessThan2~7_combout\ & \Add2~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~5_combout\,
	datab => \LessThan2~3_combout\,
	datac => \LessThan2~7_combout\,
	datad => \Add2~40_combout\,
	combout => \Add2~68_combout\);

-- Location: FF_X56_Y31_N5
\cooldown_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~68_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.S_COOL_DOWN~q\,
	ena => \ALT_INV_delay_cnt[27]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cooldown_cnt(12));

-- Location: LCCOMB_X57_Y31_N30
\Add2~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (cooldown_cnt(13) & (!\Add2~41\)) # (!cooldown_cnt(13) & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!cooldown_cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cooldown_cnt(13),
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X56_Y31_N6
\Add2~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~67_combout\ = (!\LessThan2~5_combout\ & (!\LessThan2~7_combout\ & (\Add2~42_combout\ & !\LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~5_combout\,
	datab => \LessThan2~7_combout\,
	datac => \Add2~42_combout\,
	datad => \LessThan2~3_combout\,
	combout => \Add2~67_combout\);

-- Location: FF_X56_Y31_N7
\cooldown_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~67_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.S_COOL_DOWN~q\,
	ena => \ALT_INV_delay_cnt[27]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cooldown_cnt(13));

-- Location: LCCOMB_X57_Y30_N0
\Add2~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (cooldown_cnt(14) & (\Add2~43\ $ (GND))) # (!cooldown_cnt(14) & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((cooldown_cnt(14) & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cooldown_cnt(14),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X56_Y31_N8
\Add2~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~66_combout\ = (!\LessThan2~5_combout\ & (!\LessThan2~3_combout\ & (!\LessThan2~7_combout\ & \Add2~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~5_combout\,
	datab => \LessThan2~3_combout\,
	datac => \LessThan2~7_combout\,
	datad => \Add2~44_combout\,
	combout => \Add2~66_combout\);

-- Location: FF_X56_Y31_N9
\cooldown_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~66_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.S_COOL_DOWN~q\,
	ena => \ALT_INV_delay_cnt[27]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cooldown_cnt(14));

-- Location: LCCOMB_X57_Y30_N2
\Add2~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (cooldown_cnt(15) & (!\Add2~45\)) # (!cooldown_cnt(15) & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!cooldown_cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cooldown_cnt(15),
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: LCCOMB_X56_Y30_N16
\Add2~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (!\LessThan2~7_combout\ & (!\LessThan2~3_combout\ & (!\LessThan2~5_combout\ & \Add2~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~7_combout\,
	datab => \LessThan2~3_combout\,
	datac => \LessThan2~5_combout\,
	datad => \Add2~46_combout\,
	combout => \Add2~48_combout\);

-- Location: FF_X56_Y30_N17
\cooldown_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~48_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.S_COOL_DOWN~q\,
	ena => \ALT_INV_delay_cnt[27]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cooldown_cnt(15));

-- Location: LCCOMB_X57_Y30_N4
\Add2~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~49_combout\ = (cooldown_cnt(16) & (\Add2~47\ $ (GND))) # (!cooldown_cnt(16) & (!\Add2~47\ & VCC))
-- \Add2~50\ = CARRY((cooldown_cnt(16) & !\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cooldown_cnt(16),
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~49_combout\,
	cout => \Add2~50\);

-- Location: LCCOMB_X56_Y30_N26
\Add2~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~76_combout\ = (!\LessThan2~7_combout\ & (!\LessThan2~3_combout\ & (!\LessThan2~5_combout\ & \Add2~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~7_combout\,
	datab => \LessThan2~3_combout\,
	datac => \LessThan2~5_combout\,
	datad => \Add2~49_combout\,
	combout => \Add2~76_combout\);

-- Location: FF_X56_Y30_N27
\cooldown_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~76_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.S_COOL_DOWN~q\,
	ena => \ALT_INV_delay_cnt[27]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cooldown_cnt(16));

-- Location: LCCOMB_X57_Y30_N6
\Add2~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~51_combout\ = (cooldown_cnt(17) & (!\Add2~50\)) # (!cooldown_cnt(17) & ((\Add2~50\) # (GND)))
-- \Add2~52\ = CARRY((!\Add2~50\) # (!cooldown_cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cooldown_cnt(17),
	datad => VCC,
	cin => \Add2~50\,
	combout => \Add2~51_combout\,
	cout => \Add2~52\);

-- Location: LCCOMB_X57_Y30_N28
\Add2~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~75_combout\ = (!\LessThan2~5_combout\ & (!\LessThan2~7_combout\ & (!\LessThan2~3_combout\ & \Add2~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~5_combout\,
	datab => \LessThan2~7_combout\,
	datac => \LessThan2~3_combout\,
	datad => \Add2~51_combout\,
	combout => \Add2~75_combout\);

-- Location: FF_X57_Y30_N29
\cooldown_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~75_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.S_COOL_DOWN~q\,
	ena => \ALT_INV_delay_cnt[27]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cooldown_cnt(17));

-- Location: LCCOMB_X57_Y30_N8
\Add2~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~53_combout\ = (cooldown_cnt(18) & (\Add2~52\ $ (GND))) # (!cooldown_cnt(18) & (!\Add2~52\ & VCC))
-- \Add2~54\ = CARRY((cooldown_cnt(18) & !\Add2~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cooldown_cnt(18),
	datad => VCC,
	cin => \Add2~52\,
	combout => \Add2~53_combout\,
	cout => \Add2~54\);

-- Location: LCCOMB_X56_Y30_N24
\Add2~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~74_combout\ = (!\LessThan2~7_combout\ & (!\LessThan2~5_combout\ & (\Add2~53_combout\ & !\LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~7_combout\,
	datab => \LessThan2~5_combout\,
	datac => \Add2~53_combout\,
	datad => \LessThan2~3_combout\,
	combout => \Add2~74_combout\);

-- Location: FF_X56_Y30_N25
\cooldown_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~74_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.S_COOL_DOWN~q\,
	ena => \ALT_INV_delay_cnt[27]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cooldown_cnt(18));

-- Location: LCCOMB_X57_Y30_N10
\Add2~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~55_combout\ = (cooldown_cnt(19) & (!\Add2~54\)) # (!cooldown_cnt(19) & ((\Add2~54\) # (GND)))
-- \Add2~56\ = CARRY((!\Add2~54\) # (!cooldown_cnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cooldown_cnt(19),
	datad => VCC,
	cin => \Add2~54\,
	combout => \Add2~55_combout\,
	cout => \Add2~56\);

-- Location: LCCOMB_X56_Y30_N22
\Add2~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~65_combout\ = (!\LessThan2~7_combout\ & (!\LessThan2~5_combout\ & (\Add2~55_combout\ & !\LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~7_combout\,
	datab => \LessThan2~5_combout\,
	datac => \Add2~55_combout\,
	datad => \LessThan2~3_combout\,
	combout => \Add2~65_combout\);

-- Location: FF_X56_Y30_N23
\cooldown_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~65_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.S_COOL_DOWN~q\,
	ena => \ALT_INV_delay_cnt[27]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cooldown_cnt(19));

-- Location: LCCOMB_X57_Y30_N12
\Add2~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~57_combout\ = (cooldown_cnt(20) & (\Add2~56\ $ (GND))) # (!cooldown_cnt(20) & (!\Add2~56\ & VCC))
-- \Add2~58\ = CARRY((cooldown_cnt(20) & !\Add2~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cooldown_cnt(20),
	datad => VCC,
	cin => \Add2~56\,
	combout => \Add2~57_combout\,
	cout => \Add2~58\);

-- Location: LCCOMB_X57_Y30_N14
\Add2~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~59_combout\ = (cooldown_cnt(21) & (!\Add2~58\)) # (!cooldown_cnt(21) & ((\Add2~58\) # (GND)))
-- \Add2~60\ = CARRY((!\Add2~58\) # (!cooldown_cnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cooldown_cnt(21),
	datad => VCC,
	cin => \Add2~58\,
	combout => \Add2~59_combout\,
	cout => \Add2~60\);

-- Location: LCCOMB_X56_Y30_N28
\Add2~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~96_combout\ = (!\LessThan2~7_combout\ & (!\LessThan2~5_combout\ & (\Add2~59_combout\ & !\LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~7_combout\,
	datab => \LessThan2~5_combout\,
	datac => \Add2~59_combout\,
	datad => \LessThan2~3_combout\,
	combout => \Add2~96_combout\);

-- Location: FF_X56_Y30_N29
\cooldown_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~96_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.S_COOL_DOWN~q\,
	ena => \ALT_INV_delay_cnt[27]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cooldown_cnt(21));

-- Location: LCCOMB_X57_Y30_N16
\Add2~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~61_combout\ = (cooldown_cnt(22) & (\Add2~60\ $ (GND))) # (!cooldown_cnt(22) & (!\Add2~60\ & VCC))
-- \Add2~62\ = CARRY((cooldown_cnt(22) & !\Add2~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cooldown_cnt(22),
	datad => VCC,
	cin => \Add2~60\,
	combout => \Add2~61_combout\,
	cout => \Add2~62\);

-- Location: LCCOMB_X56_Y30_N30
\Add2~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~95_combout\ = (!\LessThan2~7_combout\ & (!\LessThan2~3_combout\ & (!\LessThan2~5_combout\ & \Add2~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~7_combout\,
	datab => \LessThan2~3_combout\,
	datac => \LessThan2~5_combout\,
	datad => \Add2~61_combout\,
	combout => \Add2~95_combout\);

-- Location: FF_X56_Y30_N31
\cooldown_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~95_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.S_COOL_DOWN~q\,
	ena => \ALT_INV_delay_cnt[27]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cooldown_cnt(22));

-- Location: LCCOMB_X57_Y30_N18
\Add2~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~63_combout\ = (cooldown_cnt(23) & (!\Add2~62\)) # (!cooldown_cnt(23) & ((\Add2~62\) # (GND)))
-- \Add2~64\ = CARRY((!\Add2~62\) # (!cooldown_cnt(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cooldown_cnt(23),
	datad => VCC,
	cin => \Add2~62\,
	combout => \Add2~63_combout\,
	cout => \Add2~64\);

-- Location: LCCOMB_X56_Y30_N6
\Add2~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~92_combout\ = (!\LessThan2~7_combout\ & (!\LessThan2~3_combout\ & (!\LessThan2~5_combout\ & \Add2~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~7_combout\,
	datab => \LessThan2~3_combout\,
	datac => \LessThan2~5_combout\,
	datad => \Add2~63_combout\,
	combout => \Add2~92_combout\);

-- Location: FF_X56_Y30_N7
\cooldown_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~92_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.S_COOL_DOWN~q\,
	ena => \ALT_INV_delay_cnt[27]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cooldown_cnt(23));

-- Location: LCCOMB_X57_Y30_N20
\Add2~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~77_combout\ = (cooldown_cnt(24) & (\Add2~64\ $ (GND))) # (!cooldown_cnt(24) & (!\Add2~64\ & VCC))
-- \Add2~78\ = CARRY((cooldown_cnt(24) & !\Add2~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cooldown_cnt(24),
	datad => VCC,
	cin => \Add2~64\,
	combout => \Add2~77_combout\,
	cout => \Add2~78\);

-- Location: LCCOMB_X56_Y30_N0
\Add2~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~99_combout\ = (!\LessThan2~7_combout\ & (!\LessThan2~5_combout\ & (\Add2~77_combout\ & !\LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~7_combout\,
	datab => \LessThan2~5_combout\,
	datac => \Add2~77_combout\,
	datad => \LessThan2~3_combout\,
	combout => \Add2~99_combout\);

-- Location: FF_X56_Y30_N1
\cooldown_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~99_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.S_COOL_DOWN~q\,
	ena => \ALT_INV_delay_cnt[27]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cooldown_cnt(24));

-- Location: LCCOMB_X57_Y30_N22
\Add2~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~79_combout\ = (cooldown_cnt(25) & (!\Add2~78\)) # (!cooldown_cnt(25) & ((\Add2~78\) # (GND)))
-- \Add2~80\ = CARRY((!\Add2~78\) # (!cooldown_cnt(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cooldown_cnt(25),
	datad => VCC,
	cin => \Add2~78\,
	combout => \Add2~79_combout\,
	cout => \Add2~80\);

-- Location: LCCOMB_X56_Y30_N10
\Add2~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~98_combout\ = (!\LessThan2~7_combout\ & (!\LessThan2~3_combout\ & (!\LessThan2~5_combout\ & \Add2~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~7_combout\,
	datab => \LessThan2~3_combout\,
	datac => \LessThan2~5_combout\,
	datad => \Add2~79_combout\,
	combout => \Add2~98_combout\);

-- Location: FF_X56_Y30_N11
\cooldown_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~98_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.S_COOL_DOWN~q\,
	ena => \ALT_INV_delay_cnt[27]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cooldown_cnt(25));

-- Location: LCCOMB_X57_Y30_N24
\Add2~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~81_combout\ = (cooldown_cnt(26) & (\Add2~80\ $ (GND))) # (!cooldown_cnt(26) & (!\Add2~80\ & VCC))
-- \Add2~82\ = CARRY((cooldown_cnt(26) & !\Add2~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cooldown_cnt(26),
	datad => VCC,
	cin => \Add2~80\,
	combout => \Add2~81_combout\,
	cout => \Add2~82\);

-- Location: LCCOMB_X57_Y30_N30
\Add2~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~97_combout\ = (!\LessThan2~5_combout\ & (!\LessThan2~7_combout\ & (!\LessThan2~3_combout\ & \Add2~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~5_combout\,
	datab => \LessThan2~7_combout\,
	datac => \LessThan2~3_combout\,
	datad => \Add2~81_combout\,
	combout => \Add2~97_combout\);

-- Location: FF_X57_Y30_N31
\cooldown_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~97_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.S_COOL_DOWN~q\,
	ena => \ALT_INV_delay_cnt[27]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cooldown_cnt(26));

-- Location: LCCOMB_X57_Y30_N26
\Add2~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~83_combout\ = \Add2~82\ $ (cooldown_cnt(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cooldown_cnt(27),
	cin => \Add2~82\,
	combout => \Add2~83_combout\);

-- Location: LCCOMB_X56_Y30_N20
\Add2~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~94_combout\ = (!\LessThan2~7_combout\ & (!\LessThan2~3_combout\ & (!\LessThan2~5_combout\ & \Add2~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~7_combout\,
	datab => \LessThan2~3_combout\,
	datac => \LessThan2~5_combout\,
	datad => \Add2~83_combout\,
	combout => \Add2~94_combout\);

-- Location: FF_X56_Y30_N21
\cooldown_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~94_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.S_COOL_DOWN~q\,
	ena => \ALT_INV_delay_cnt[27]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cooldown_cnt(27));

-- Location: LCCOMB_X56_Y30_N8
\LessThan2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = (cooldown_cnt(27)) # ((cooldown_cnt(23) & ((cooldown_cnt(21)) # (cooldown_cnt(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cooldown_cnt(23),
	datab => cooldown_cnt(21),
	datac => cooldown_cnt(22),
	datad => cooldown_cnt(27),
	combout => \LessThan2~6_combout\);

-- Location: LCCOMB_X56_Y30_N2
\LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~7_combout\ = (cooldown_cnt(26)) # ((cooldown_cnt(24)) # ((\LessThan2~6_combout\) # (cooldown_cnt(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cooldown_cnt(26),
	datab => cooldown_cnt(24),
	datac => \LessThan2~6_combout\,
	datad => cooldown_cnt(25),
	combout => \LessThan2~7_combout\);

-- Location: LCCOMB_X56_Y30_N12
\Add2~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~93_combout\ = (!\LessThan2~7_combout\ & (!\LessThan2~5_combout\ & (\Add2~57_combout\ & !\LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~7_combout\,
	datab => \LessThan2~5_combout\,
	datac => \Add2~57_combout\,
	datad => \LessThan2~3_combout\,
	combout => \Add2~93_combout\);

-- Location: FF_X56_Y30_N13
\cooldown_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~93_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.S_COOL_DOWN~q\,
	ena => \ALT_INV_delay_cnt[27]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cooldown_cnt(20));

-- Location: LCCOMB_X56_Y30_N4
\LessThan2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = (cooldown_cnt(18)) # ((cooldown_cnt(16)) # (cooldown_cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cooldown_cnt(18),
	datac => cooldown_cnt(16),
	datad => cooldown_cnt(17),
	combout => \LessThan2~4_combout\);

-- Location: LCCOMB_X56_Y30_N14
\LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = (cooldown_cnt(20) & (cooldown_cnt(19) & (\LessThan2~4_combout\ & cooldown_cnt(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cooldown_cnt(20),
	datab => cooldown_cnt(19),
	datac => \LessThan2~4_combout\,
	datad => cooldown_cnt(23),
	combout => \LessThan2~5_combout\);

-- Location: LCCOMB_X56_Y31_N26
\Add2~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~73_combout\ = (!\LessThan2~5_combout\ & (!\LessThan2~3_combout\ & (!\LessThan2~7_combout\ & \Add2~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~5_combout\,
	datab => \LessThan2~3_combout\,
	datac => \LessThan2~7_combout\,
	datad => \Add2~30_combout\,
	combout => \Add2~73_combout\);

-- Location: FF_X56_Y31_N27
\cooldown_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~73_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.S_COOL_DOWN~q\,
	ena => \ALT_INV_delay_cnt[27]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cooldown_cnt(7));

-- Location: LCCOMB_X56_Y31_N12
\LessThan2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (cooldown_cnt(10) & (cooldown_cnt(12) & ((cooldown_cnt(7)) # (cooldown_cnt(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cooldown_cnt(7),
	datab => cooldown_cnt(8),
	datac => cooldown_cnt(10),
	datad => cooldown_cnt(12),
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X56_Y30_N18
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (cooldown_cnt(23) & (cooldown_cnt(15) & (cooldown_cnt(19) & cooldown_cnt(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cooldown_cnt(23),
	datab => cooldown_cnt(15),
	datac => cooldown_cnt(19),
	datad => cooldown_cnt(20),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X56_Y31_N2
\LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (cooldown_cnt(13)) # ((cooldown_cnt(14)) # ((cooldown_cnt(12) & cooldown_cnt(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cooldown_cnt(13),
	datab => cooldown_cnt(12),
	datac => cooldown_cnt(11),
	datad => cooldown_cnt(14),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X56_Y31_N18
\LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (\LessThan2~0_combout\ & ((\LessThan2~1_combout\) # ((\LessThan2~2_combout\ & cooldown_cnt(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~2_combout\,
	datab => cooldown_cnt(9),
	datac => \LessThan2~0_combout\,
	datad => \LessThan2~1_combout\,
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X55_Y31_N22
\Selector29~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector29~2_combout\ = (\state.S_COOL_DOWN~q\ & ((\LessThan2~3_combout\) # ((\LessThan2~7_combout\) # (\LessThan2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_COOL_DOWN~q\,
	datab => \LessThan2~3_combout\,
	datac => \LessThan2~7_combout\,
	datad => \LessThan2~5_combout\,
	combout => \Selector29~2_combout\);

-- Location: LCCOMB_X53_Y32_N6
\Selector521~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector521~6_combout\ = (\state.S_CIPSTART~q\) # (((\state.S_CWJAP~q\) # (\state.S_AT_RST~q\)) # (!\delay_cnt[27]~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_CIPSTART~q\,
	datab => \delay_cnt[27]~85_combout\,
	datac => \state.S_CWJAP~q\,
	datad => \state.S_AT_RST~q\,
	combout => \Selector521~6_combout\);

-- Location: LCCOMB_X53_Y32_N10
\Selector558~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector558~0_combout\ = (\state.S_SEND_DATA~q\) # (((\always2~0_combout\ & \Selector521~6_combout\)) # (!\Selector29~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~0_combout\,
	datab => \state.S_SEND_DATA~q\,
	datac => \Selector29~3_combout\,
	datad => \Selector521~6_combout\,
	combout => \Selector558~0_combout\);

-- Location: LCCOMB_X53_Y32_N24
\Selector558~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector558~1_combout\ = (\always2~0_combout\ & (((\next_state_after_wait.S_COOL_DOWN~q\ & \Selector558~0_combout\)))) # (!\always2~0_combout\ & ((\state.S_SEND_DATA~q\) # ((\next_state_after_wait.S_COOL_DOWN~q\ & \Selector558~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~0_combout\,
	datab => \state.S_SEND_DATA~q\,
	datac => \next_state_after_wait.S_COOL_DOWN~q\,
	datad => \Selector558~0_combout\,
	combout => \Selector558~1_combout\);

-- Location: FF_X53_Y32_N25
\next_state_after_wait.S_COOL_DOWN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector558~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state_after_wait.S_COOL_DOWN~q\);

-- Location: LCCOMB_X55_Y31_N2
\state.S_COOL_DOWN~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.S_COOL_DOWN~0_combout\ = (\state.S_WAIT_DONE~q\ & (\next_state_after_wait.S_COOL_DOWN~q\ & (!\Selector29~2_combout\ & !\always2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_WAIT_DONE~q\,
	datab => \next_state_after_wait.S_COOL_DOWN~q\,
	datac => \Selector29~2_combout\,
	datad => \always2~5_combout\,
	combout => \state.S_COOL_DOWN~0_combout\);

-- Location: LCCOMB_X55_Y31_N18
\state.S_COOL_DOWN~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.S_COOL_DOWN~1_combout\ = (\state.S_COOL_DOWN~0_combout\) # ((!\Selector29~2_combout\ & (\state.S_COOL_DOWN~q\ & \Selector30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector29~2_combout\,
	datab => \state.S_COOL_DOWN~0_combout\,
	datac => \state.S_COOL_DOWN~q\,
	datad => \Selector30~0_combout\,
	combout => \state.S_COOL_DOWN~1_combout\);

-- Location: FF_X55_Y31_N19
\state.S_COOL_DOWN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.S_COOL_DOWN~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_COOL_DOWN~q\);

-- Location: LCCOMB_X55_Y31_N14
\Selector28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (\pressed_d1~q\ & (!\pressed_d2~q\ & (\state.S_IDLE~q\ & \state.S_READY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pressed_d1~q\,
	datab => \pressed_d2~q\,
	datac => \state.S_IDLE~q\,
	datad => \state.S_READY~q\,
	combout => \Selector28~0_combout\);

-- Location: LCCOMB_X51_Y31_N16
\Selector28~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector28~1_combout\ = (\state.S_IDLE~q\ & (!\state.S_READY~q\ & ((!\always2~0_combout\)))) # (!\state.S_IDLE~q\ & (((\wifi_rst_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_READY~q\,
	datab => \state.S_IDLE~q\,
	datac => \wifi_rst_done~q\,
	datad => \always2~0_combout\,
	combout => \Selector28~1_combout\);

-- Location: LCCOMB_X51_Y31_N26
\Selector28~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector28~2_combout\ = (!\state.S_COOL_DOWN~q\ & (!\state.S_WAIT_DONE~q\ & ((\Selector28~0_combout\) # (\Selector28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_COOL_DOWN~q\,
	datab => \state.S_WAIT_DONE~q\,
	datac => \Selector28~0_combout\,
	datad => \Selector28~1_combout\,
	combout => \Selector28~2_combout\);

-- Location: LCCOMB_X54_Y33_N12
\next_state_after_wait.S_IDLE~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state_after_wait.S_IDLE~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \next_state_after_wait.S_IDLE~feeder_combout\);

-- Location: FF_X54_Y33_N13
\next_state_after_wait.S_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_state_after_wait.S_IDLE~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \ALT_INV_Selector552~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state_after_wait.S_IDLE~q\);

-- Location: LCCOMB_X51_Y31_N18
\Selector28~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector28~3_combout\ = (\always2~5_combout\) # (!\state.S_WAIT_DONE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S_WAIT_DONE~q\,
	datad => \always2~5_combout\,
	combout => \Selector28~3_combout\);

-- Location: LCCOMB_X51_Y31_N28
\Selector28~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector28~4_combout\ = (\Selector28~3_combout\ & ((\Selector28~2_combout\) # ((\state.S_IDLE~q\)))) # (!\Selector28~3_combout\ & (((\next_state_after_wait.S_IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector28~2_combout\,
	datab => \next_state_after_wait.S_IDLE~q\,
	datac => \state.S_IDLE~q\,
	datad => \Selector28~3_combout\,
	combout => \Selector28~4_combout\);

-- Location: FF_X51_Y31_N29
\state.S_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector28~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_IDLE~q\);

-- Location: LCCOMB_X54_Y33_N26
\Selector552~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector552~0_combout\ = ((\state.S_WAIT_DONE~q\) # ((\always2~0_combout\) # (!\delay_cnt[27]~30_combout\))) # (!\state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_IDLE~q\,
	datab => \state.S_WAIT_DONE~q\,
	datac => \always2~0_combout\,
	datad => \delay_cnt[27]~30_combout\,
	combout => \Selector552~0_combout\);

-- Location: LCCOMB_X52_Y33_N8
\tx_start~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_start~0_combout\ = !\Selector552~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector552~0_combout\,
	combout => \tx_start~0_combout\);

-- Location: FF_X52_Y33_N9
tx_start : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_start~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_start~q\);

-- Location: LCCOMB_X56_Y33_N26
\u_tx|Selector521~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector521~1_combout\ = (\u_tx|tx_busy~q\ & ((\u_tx|state.S_DATA~q\) # ((\tx_start~q\ & !\u_tx|state.S_IDLE~q\)))) # (!\u_tx|tx_busy~q\ & (\tx_start~q\ & (!\u_tx|state.S_IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|tx_busy~q\,
	datab => \tx_start~q\,
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|state.S_DATA~q\,
	combout => \u_tx|Selector521~1_combout\);

-- Location: LCCOMB_X55_Y29_N4
\u_tx|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Add2~0_combout\ = \u_tx|byte_cnt\(0) $ (VCC)
-- \u_tx|Add2~1\ = CARRY(\u_tx|byte_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|byte_cnt\(0),
	datad => VCC,
	combout => \u_tx|Add2~0_combout\,
	cout => \u_tx|Add2~1\);

-- Location: LCCOMB_X54_Y29_N6
\u_tx|Selector520~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector520~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|Add2~0_combout\,
	combout => \u_tx|Selector520~0_combout\);

-- Location: LCCOMB_X53_Y31_N22
\Selector448~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector448~0_combout\ = (current_cmd(101) & (((\always2~0_combout\ & !\delay_cnt[27]~92_combout\)) # (!\Selector29~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(101),
	datab => \always2~0_combout\,
	datac => \delay_cnt[27]~92_combout\,
	datad => \Selector29~3_combout\,
	combout => \Selector448~0_combout\);

-- Location: LCCOMB_X53_Y31_N20
\Selector448~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector448~1_combout\ = (\Selector448~0_combout\) # ((!\delay_cnt[27]~84_combout\ & ((current_cmd(101)) # (!\always2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector448~0_combout\,
	datab => \delay_cnt[27]~84_combout\,
	datac => current_cmd(101),
	datad => \always2~0_combout\,
	combout => \Selector448~1_combout\);

-- Location: FF_X53_Y31_N21
\current_cmd[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector448~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(101));

-- Location: LCCOMB_X54_Y31_N26
\current_cmd~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_cmd~0_combout\ = (current_cmd(29)) # ((!\u_tx|tx_busy~q\ & !\tx_start~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|tx_busy~q\,
	datac => \tx_start~q\,
	datad => current_cmd(29),
	combout => \current_cmd~0_combout\);

-- Location: LCCOMB_X54_Y31_N12
\Selector520~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector520~0_combout\ = (current_cmd(29) & (((\always2~0_combout\ & !\delay_cnt[27]~93_combout\)) # (!\Selector29~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(29),
	datab => \always2~0_combout\,
	datac => \Selector29~3_combout\,
	datad => \delay_cnt[27]~93_combout\,
	combout => \Selector520~0_combout\);

-- Location: LCCOMB_X54_Y31_N6
\Selector520~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector520~1_combout\ = (\Selector520~0_combout\) # ((\current_cmd~0_combout\ & ((!\delay_cnt[27]~84_combout\) # (!\delay_cnt[27]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_cmd~0_combout\,
	datab => \delay_cnt[27]~85_combout\,
	datac => \delay_cnt[27]~84_combout\,
	datad => \Selector520~0_combout\,
	combout => \Selector520~1_combout\);

-- Location: FF_X54_Y31_N7
\current_cmd[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector520~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(29));

-- Location: LCCOMB_X53_Y33_N12
\u_button_3x3|key~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|key~1_combout\ = (\column[2]~input_o\ & ((\u_button_3x3|bond\(0)) # (!\column[1]~input_o\))) # (!\column[2]~input_o\ & ((!\u_button_3x3|bond\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \column[1]~input_o\,
	datac => \column[2]~input_o\,
	datad => \u_button_3x3|bond\(0),
	combout => \u_button_3x3|key~1_combout\);

-- Location: LCCOMB_X53_Y33_N14
\u_button_3x3|key~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|key~2_combout\ = (\column[2]~input_o\ & (!\u_button_3x3|Equal0~0_combout\ & (\u_button_3x3|bond\(1) $ (!\u_button_3x3|key~1_combout\)))) # (!\column[2]~input_o\ & (\u_button_3x3|bond\(1) $ (((!\u_button_3x3|key~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \column[2]~input_o\,
	datab => \u_button_3x3|bond\(1),
	datac => \u_button_3x3|Equal0~0_combout\,
	datad => \u_button_3x3|key~1_combout\,
	combout => \u_button_3x3|key~2_combout\);

-- Location: LCCOMB_X53_Y33_N30
\u_button_3x3|key[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|key[3]~3_combout\ = (\column[1]~input_o\ & ((\column[2]~input_o\) # (\column[0]~input_o\))) # (!\column[1]~input_o\ & (\column[2]~input_o\ & \column[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \column[1]~input_o\,
	datac => \column[2]~input_o\,
	datad => \column[0]~input_o\,
	combout => \u_button_3x3|key[3]~3_combout\);

-- Location: FF_X53_Y33_N15
\u_button_3x3|key[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_button_3x3|clk_cnt[18]~clkctrl_outclk\,
	d => \u_button_3x3|key~2_combout\,
	ena => \u_button_3x3|key[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_button_3x3|key\(1));

-- Location: LCCOMB_X53_Y33_N4
\u_button_3x3|key~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|key~4_combout\ = (\column[2]~input_o\ & \column[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \column[2]~input_o\,
	datad => \column[1]~input_o\,
	combout => \u_button_3x3|key~4_combout\);

-- Location: LCCOMB_X53_Y33_N6
\u_button_3x3|key~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|key~7_combout\ = (\u_button_3x3|bond\(1) & ((\u_button_3x3|key~4_combout\ & (!\column[0]~input_o\)) # (!\u_button_3x3|key~4_combout\ & ((\u_button_3x3|bond\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \column[0]~input_o\,
	datab => \u_button_3x3|bond\(0),
	datac => \u_button_3x3|key~4_combout\,
	datad => \u_button_3x3|bond\(1),
	combout => \u_button_3x3|key~7_combout\);

-- Location: FF_X53_Y33_N7
\u_button_3x3|key[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_button_3x3|clk_cnt[18]~clkctrl_outclk\,
	d => \u_button_3x3|key~7_combout\,
	ena => \u_button_3x3|key[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_button_3x3|key\(3));

-- Location: LCCOMB_X53_Y33_N16
\u_button_3x3|key[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|key[4]~8_combout\ = (\column[2]~input_o\ & ((\column[0]~input_o\ & ((\column[1]~input_o\))) # (!\column[0]~input_o\ & (\u_button_3x3|key\(4) & !\column[1]~input_o\)))) # (!\column[2]~input_o\ & (\u_button_3x3|key\(4) & 
-- ((!\column[1]~input_o\) # (!\column[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \column[2]~input_o\,
	datab => \column[0]~input_o\,
	datac => \u_button_3x3|key\(4),
	datad => \column[1]~input_o\,
	combout => \u_button_3x3|key[4]~8_combout\);

-- Location: FF_X53_Y33_N17
\u_button_3x3|key[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_button_3x3|clk_cnt[18]~clkctrl_outclk\,
	d => \u_button_3x3|key[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_button_3x3|key\(4));

-- Location: LCCOMB_X53_Y33_N22
\u_button_3x3|key~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|key~5_combout\ = (\column[2]~input_o\ & ((!\column[0]~input_o\) # (!\column[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \column[1]~input_o\,
	datac => \column[2]~input_o\,
	datad => \column[0]~input_o\,
	combout => \u_button_3x3|key~5_combout\);

-- Location: LCCOMB_X53_Y33_N20
\u_button_3x3|key~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|key~6_combout\ = (\u_button_3x3|bond\(1) & (((!\u_button_3x3|key~4_combout\ & !\u_button_3x3|bond\(0))))) # (!\u_button_3x3|bond\(1) & (\u_button_3x3|key~5_combout\ & ((\u_button_3x3|bond\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_button_3x3|key~5_combout\,
	datab => \u_button_3x3|bond\(1),
	datac => \u_button_3x3|key~4_combout\,
	datad => \u_button_3x3|bond\(0),
	combout => \u_button_3x3|key~6_combout\);

-- Location: FF_X53_Y33_N21
\u_button_3x3|key[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_button_3x3|clk_cnt[18]~clkctrl_outclk\,
	d => \u_button_3x3|key~6_combout\,
	ena => \u_button_3x3|key[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_button_3x3|key\(2));

-- Location: LCCOMB_X54_Y33_N16
\WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\u_button_3x3|key\(3) & (!\u_button_3x3|key\(4) & ((\u_button_3x3|key\(1)) # (\u_button_3x3|key\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_button_3x3|key\(1),
	datab => \u_button_3x3|key\(3),
	datac => \u_button_3x3|key\(4),
	datad => \u_button_3x3|key\(2),
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X54_Y33_N18
\Selector527~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector527~0_combout\ = (\state.S_SEND_DATA~q\ & ((\WideOr0~0_combout\))) # (!\state.S_SEND_DATA~q\ & (\state.S_AT_RST~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S_AT_RST~q\,
	datac => \state.S_SEND_DATA~q\,
	datad => \WideOr0~0_combout\,
	combout => \Selector527~0_combout\);

-- Location: LCCOMB_X54_Y33_N4
\current_cmd[21]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_cmd[21]~1_combout\ = !\Selector527~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector527~0_combout\,
	combout => \current_cmd[21]~1_combout\);

-- Location: FF_X54_Y33_N5
\current_cmd[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_cmd[21]~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \ALT_INV_Selector552~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(21));

-- Location: LCCOMB_X55_Y32_N2
\u_tx|Selector491~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector491~0_combout\ = (!\u_tx|state.S_IDLE~q\ & current_cmd(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => current_cmd(21),
	combout => \u_tx|Selector491~0_combout\);

-- Location: FF_X55_Y32_N3
\u_tx|shift_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector491~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(21));

-- Location: LCCOMB_X55_Y32_N18
\u_tx|Selector483~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector483~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(21)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(29),
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(21),
	combout => \u_tx|Selector483~0_combout\);

-- Location: FF_X55_Y32_N19
\u_tx|shift_reg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector483~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(29));

-- Location: LCCOMB_X55_Y32_N26
\u_tx|Selector475~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector475~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(29)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(101),
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(29),
	combout => \u_tx|Selector475~0_combout\);

-- Location: FF_X55_Y32_N27
\u_tx|shift_reg[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector475~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(37));

-- Location: LCCOMB_X54_Y32_N24
\Selector504~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector504~1_combout\ = ((\always2~0_combout\ & ((\state.S_SEND_DATA~q\) # (!\delay_cnt[27]~85_combout\)))) # (!\Selector29~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_SEND_DATA~q\,
	datab => \delay_cnt[27]~85_combout\,
	datac => \Selector29~3_combout\,
	datad => \always2~0_combout\,
	combout => \Selector504~1_combout\);

-- Location: LCCOMB_X55_Y33_N16
\Selector504~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector504~0_combout\ = (\state.S_CIPSTART~q\) # ((\state.S_AT_RST~q\) # (\state.S_CWJAP~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_CIPSTART~q\,
	datab => \state.S_AT_RST~q\,
	datad => \state.S_CWJAP~q\,
	combout => \Selector504~0_combout\);

-- Location: LCCOMB_X55_Y33_N8
\Selector504~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector504~2_combout\ = (current_cmd(45) & ((\Selector504~1_combout\) # ((\Selector504~0_combout\)))) # (!current_cmd(45) & (((!\always2~0_combout\ & \Selector504~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector504~1_combout\,
	datab => \always2~0_combout\,
	datac => current_cmd(45),
	datad => \Selector504~0_combout\,
	combout => \Selector504~2_combout\);

-- Location: FF_X55_Y33_N9
\current_cmd[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector504~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(45));

-- Location: LCCOMB_X55_Y32_N30
\u_tx|Selector467~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector467~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(37))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(37),
	datab => current_cmd(45),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector467~0_combout\);

-- Location: FF_X55_Y32_N31
\u_tx|shift_reg[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector467~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(45));

-- Location: LCCOMB_X55_Y32_N10
\u_tx|Selector459~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector459~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(45))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => \u_tx|shift_reg\(45),
	datad => current_cmd(101),
	combout => \u_tx|Selector459~0_combout\);

-- Location: FF_X55_Y32_N11
\u_tx|shift_reg[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector459~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(53));

-- Location: LCCOMB_X55_Y32_N6
\u_tx|Selector451~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector451~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(53)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(101),
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(53),
	combout => \u_tx|Selector451~0_combout\);

-- Location: FF_X55_Y32_N7
\u_tx|shift_reg[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector451~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(61));

-- Location: LCCOMB_X55_Y32_N22
\u_tx|Selector443~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector443~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(61)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(101),
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(61),
	combout => \u_tx|Selector443~0_combout\);

-- Location: FF_X55_Y32_N23
\u_tx|shift_reg[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector443~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(69));

-- Location: LCCOMB_X55_Y32_N14
\u_tx|Selector435~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector435~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(69))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => \u_tx|shift_reg\(69),
	datad => current_cmd(101),
	combout => \u_tx|Selector435~0_combout\);

-- Location: FF_X55_Y32_N15
\u_tx|shift_reg[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector435~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(77));

-- Location: LCCOMB_X53_Y32_N20
\Selector491~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector491~1_combout\ = ((\always2~0_combout\ & ((\state.S_CIPSEND~q\) # (!\delay_cnt[27]~93_combout\)))) # (!\Selector29~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~0_combout\,
	datab => \delay_cnt[27]~93_combout\,
	datac => \Selector29~3_combout\,
	datad => \state.S_CIPSEND~q\,
	combout => \Selector491~1_combout\);

-- Location: LCCOMB_X53_Y32_N26
\Selector491~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector491~2_combout\ = (\Selector491~0_combout\ & (((current_cmd(58) & \Selector491~1_combout\)))) # (!\Selector491~0_combout\ & (((current_cmd(58))) # (!\always2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~0_combout\,
	datab => \Selector491~0_combout\,
	datac => current_cmd(58),
	datad => \Selector491~1_combout\,
	combout => \Selector491~2_combout\);

-- Location: FF_X53_Y32_N27
\current_cmd[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector491~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(58));

-- Location: LCCOMB_X56_Y32_N6
\u_tx|Selector427~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector427~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(77))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(58))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(77),
	datab => \u_tx|state.S_IDLE~q\,
	datad => current_cmd(58),
	combout => \u_tx|Selector427~0_combout\);

-- Location: FF_X56_Y32_N7
\u_tx|shift_reg[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector427~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(85));

-- Location: LCCOMB_X55_Y31_N12
\Selector492~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector492~1_combout\ = (!\state.S_CWJAP~q\ & (!\state.S_CIPSTART~q\ & !\state.S_CIPSEND~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_CWJAP~q\,
	datab => \state.S_CIPSTART~q\,
	datad => \state.S_CIPSEND~q\,
	combout => \Selector492~1_combout\);

-- Location: LCCOMB_X55_Y31_N0
\Selector492~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector492~0_combout\ = ((\always2~0_combout\ & ((\state.S_CWMODE~q\) # (!\delay_cnt[27]~93_combout\)))) # (!\Selector29~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector29~3_combout\,
	datab => \state.S_CWMODE~q\,
	datac => \delay_cnt[27]~93_combout\,
	datad => \always2~0_combout\,
	combout => \Selector492~0_combout\);

-- Location: LCCOMB_X55_Y31_N16
\Selector492~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector492~2_combout\ = (\Selector492~1_combout\ & (((current_cmd(57) & \Selector492~0_combout\)))) # (!\Selector492~1_combout\ & (((current_cmd(57))) # (!\always2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector492~1_combout\,
	datab => \always2~0_combout\,
	datac => current_cmd(57),
	datad => \Selector492~0_combout\,
	combout => \Selector492~2_combout\);

-- Location: FF_X55_Y31_N17
\current_cmd[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector492~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(57));

-- Location: LCCOMB_X57_Y28_N8
\u_tx|Selector419~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector419~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(85))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(57))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(85),
	datac => current_cmd(57),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector419~0_combout\);

-- Location: FF_X57_Y28_N9
\u_tx|shift_reg[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector419~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(93));

-- Location: LCCOMB_X56_Y27_N14
\u_tx|Selector411~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector411~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(93)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(101),
	datad => \u_tx|shift_reg\(93),
	combout => \u_tx|Selector411~0_combout\);

-- Location: FF_X56_Y27_N15
\u_tx|shift_reg[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector411~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(101));

-- Location: LCCOMB_X56_Y27_N0
\u_tx|Selector403~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector403~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(101))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(101),
	datac => current_cmd(101),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector403~0_combout\);

-- Location: FF_X56_Y27_N1
\u_tx|shift_reg[109]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector403~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(109));

-- Location: LCCOMB_X56_Y27_N26
\u_tx|Selector395~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector395~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(109)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(101),
	datad => \u_tx|shift_reg\(109),
	combout => \u_tx|Selector395~0_combout\);

-- Location: FF_X56_Y27_N27
\u_tx|shift_reg[117]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector395~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(117));

-- Location: LCCOMB_X55_Y27_N30
\u_tx|Selector387~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector387~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(117)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(105),
	datad => \u_tx|shift_reg\(117),
	combout => \u_tx|Selector387~0_combout\);

-- Location: FF_X55_Y27_N31
\u_tx|shift_reg[125]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector387~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(125));

-- Location: LCCOMB_X55_Y27_N12
\u_tx|Selector379~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector379~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(125))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(105))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(125),
	datac => current_cmd(105),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector379~0_combout\);

-- Location: FF_X55_Y27_N13
\u_tx|shift_reg[133]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector379~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(133));

-- Location: LCCOMB_X55_Y27_N10
\u_tx|Selector371~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector371~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(133)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(105),
	datad => \u_tx|shift_reg\(133),
	combout => \u_tx|Selector371~0_combout\);

-- Location: FF_X55_Y27_N11
\u_tx|shift_reg[141]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector371~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(141));

-- Location: LCCOMB_X55_Y27_N16
\u_tx|Selector363~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector363~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(141)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(105),
	datad => \u_tx|shift_reg\(141),
	combout => \u_tx|Selector363~0_combout\);

-- Location: FF_X55_Y27_N17
\u_tx|shift_reg[149]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector363~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(149));

-- Location: LCCOMB_X55_Y27_N26
\u_tx|Selector355~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector355~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(149)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(105),
	datad => \u_tx|shift_reg\(149),
	combout => \u_tx|Selector355~0_combout\);

-- Location: FF_X55_Y27_N27
\u_tx|shift_reg[157]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector355~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(157));

-- Location: LCCOMB_X55_Y27_N24
\u_tx|Selector347~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector347~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(157)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(126)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(126),
	datac => \u_tx|shift_reg\(157),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector347~0_combout\);

-- Location: FF_X55_Y27_N25
\u_tx|shift_reg[165]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector347~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(165));

-- Location: LCCOMB_X55_Y27_N2
\u_tx|Selector339~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector339~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(165))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(165),
	combout => \u_tx|Selector339~0_combout\);

-- Location: FF_X55_Y27_N3
\u_tx|shift_reg[173]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector339~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(173));

-- Location: LCCOMB_X55_Y27_N20
\u_tx|Selector331~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector331~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(173)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(126)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(126),
	datac => \u_tx|shift_reg\(173),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector331~0_combout\);

-- Location: FF_X55_Y27_N21
\u_tx|shift_reg[181]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector331~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(181));

-- Location: LCCOMB_X55_Y27_N18
\u_tx|Selector323~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector323~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(181)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(105),
	datad => \u_tx|shift_reg\(181),
	combout => \u_tx|Selector323~0_combout\);

-- Location: FF_X55_Y27_N19
\u_tx|shift_reg[189]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector323~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(189));

-- Location: LCCOMB_X55_Y27_N8
\u_tx|Selector315~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector315~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(189)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(101),
	datad => \u_tx|shift_reg\(189),
	combout => \u_tx|Selector315~0_combout\);

-- Location: FF_X55_Y27_N9
\u_tx|shift_reg[197]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector315~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(197));

-- Location: LCCOMB_X55_Y27_N22
\u_tx|Selector307~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector307~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(197)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(126)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(126),
	datac => \u_tx|shift_reg\(197),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector307~0_combout\);

-- Location: FF_X55_Y27_N23
\u_tx|shift_reg[205]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector307~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(205));

-- Location: LCCOMB_X55_Y27_N4
\u_tx|Selector299~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector299~0_combout\ = (\u_tx|shift_reg\(205) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(205),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector299~0_combout\);

-- Location: FF_X55_Y27_N5
\u_tx|shift_reg[213]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector299~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(213));

-- Location: LCCOMB_X55_Y27_N14
\u_tx|Selector291~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector291~0_combout\ = (\u_tx|shift_reg\(213) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(213),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector291~0_combout\);

-- Location: FF_X55_Y27_N15
\u_tx|shift_reg[221]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector291~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(221));

-- Location: LCCOMB_X55_Y27_N6
\u_tx|Selector283~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector283~0_combout\ = (\u_tx|shift_reg\(221) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(221),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector283~0_combout\);

-- Location: FF_X55_Y27_N7
\u_tx|shift_reg[229]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector283~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(229));

-- Location: LCCOMB_X55_Y27_N28
\u_tx|Selector275~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector275~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(229))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(229),
	combout => \u_tx|Selector275~0_combout\);

-- Location: FF_X55_Y27_N29
\u_tx|shift_reg[237]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector275~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(237));

-- Location: LCCOMB_X55_Y30_N14
\u_tx|Selector267~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector267~0_combout\ = (\u_tx|shift_reg\(237) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(237),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector267~0_combout\);

-- Location: FF_X55_Y30_N15
\u_tx|shift_reg[245]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector267~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(245));

-- Location: LCCOMB_X55_Y30_N24
\u_tx|Selector259~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector259~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(245)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(126)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(126),
	datac => \u_tx|shift_reg\(245),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector259~0_combout\);

-- Location: FF_X55_Y30_N25
\u_tx|shift_reg[253]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector259~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(253));

-- Location: LCCOMB_X55_Y30_N12
\u_tx|Selector251~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector251~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(253))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(253),
	combout => \u_tx|Selector251~0_combout\);

-- Location: FF_X55_Y30_N13
\u_tx|shift_reg[261]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector251~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(261));

-- Location: LCCOMB_X55_Y30_N4
\u_tx|Selector243~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector243~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(261))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(105))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(261),
	datab => current_cmd(105),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector243~0_combout\);

-- Location: FF_X55_Y30_N5
\u_tx|shift_reg[269]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector243~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(269));

-- Location: LCCOMB_X55_Y30_N16
\u_tx|Selector235~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector235~0_combout\ = (\u_tx|shift_reg\(269) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(269),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector235~0_combout\);

-- Location: FF_X55_Y30_N17
\u_tx|shift_reg[277]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector235~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(277));

-- Location: LCCOMB_X55_Y30_N22
\u_tx|Selector227~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector227~0_combout\ = (\u_tx|shift_reg\(277) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(277),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector227~0_combout\);

-- Location: FF_X55_Y30_N23
\u_tx|shift_reg[285]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector227~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(285));

-- Location: LCCOMB_X55_Y30_N0
\u_tx|Selector219~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector219~0_combout\ = (\u_tx|shift_reg\(285) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(285),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector219~0_combout\);

-- Location: FF_X55_Y30_N1
\u_tx|shift_reg[293]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector219~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(293));

-- Location: LCCOMB_X55_Y30_N10
\u_tx|Selector211~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector211~0_combout\ = (\u_tx|shift_reg\(293) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(293),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector211~0_combout\);

-- Location: FF_X55_Y30_N11
\u_tx|shift_reg[301]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector211~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(301));

-- Location: LCCOMB_X59_Y30_N16
\u_tx|Selector203~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector203~0_combout\ = (\u_tx|shift_reg\(301) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(301),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector203~0_combout\);

-- Location: FF_X59_Y30_N17
\u_tx|shift_reg[309]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector203~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(309));

-- Location: LCCOMB_X59_Y30_N18
\u_tx|Selector195~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector195~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(309))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(309),
	combout => \u_tx|Selector195~0_combout\);

-- Location: FF_X59_Y30_N19
\u_tx|shift_reg[317]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector195~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(317));

-- Location: LCCOMB_X59_Y30_N20
\u_tx|Selector187~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector187~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(317))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(317),
	combout => \u_tx|Selector187~0_combout\);

-- Location: FF_X59_Y30_N21
\u_tx|shift_reg[325]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector187~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(325));

-- Location: LCCOMB_X59_Y30_N10
\u_tx|Selector179~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector179~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(325))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(325),
	combout => \u_tx|Selector179~0_combout\);

-- Location: FF_X59_Y30_N11
\u_tx|shift_reg[333]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector179~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(333));

-- Location: LCCOMB_X59_Y30_N28
\u_tx|Selector171~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector171~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(333))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(333),
	combout => \u_tx|Selector171~0_combout\);

-- Location: FF_X59_Y30_N29
\u_tx|shift_reg[341]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector171~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(341));

-- Location: LCCOMB_X59_Y30_N26
\u_tx|Selector163~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector163~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(341))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(341),
	combout => \u_tx|Selector163~0_combout\);

-- Location: FF_X59_Y30_N27
\u_tx|shift_reg[349]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector163~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(349));

-- Location: LCCOMB_X59_Y30_N12
\u_tx|Selector155~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector155~0_combout\ = (\u_tx|shift_reg\(349) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(349),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector155~0_combout\);

-- Location: FF_X59_Y30_N13
\u_tx|shift_reg[357]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector155~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(357));

-- Location: LCCOMB_X59_Y30_N22
\u_tx|Selector147~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector147~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(357))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(357),
	combout => \u_tx|Selector147~0_combout\);

-- Location: FF_X59_Y30_N23
\u_tx|shift_reg[365]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector147~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(365));

-- Location: LCCOMB_X59_Y30_N24
\u_tx|Selector139~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector139~0_combout\ = (\u_tx|shift_reg\(365) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(365),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector139~0_combout\);

-- Location: FF_X59_Y30_N25
\u_tx|shift_reg[373]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector139~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(373));

-- Location: LCCOMB_X60_Y30_N28
\u_tx|Selector131~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector131~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(373))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(373),
	combout => \u_tx|Selector131~0_combout\);

-- Location: FF_X60_Y30_N29
\u_tx|shift_reg[381]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector131~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(381));

-- Location: LCCOMB_X60_Y30_N18
\u_tx|Selector123~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector123~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(381))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(381),
	combout => \u_tx|Selector123~0_combout\);

-- Location: FF_X60_Y30_N19
\u_tx|shift_reg[389]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector123~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(389));

-- Location: LCCOMB_X60_Y30_N20
\u_tx|Selector115~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector115~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(389))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(389),
	combout => \u_tx|Selector115~0_combout\);

-- Location: FF_X60_Y30_N21
\u_tx|shift_reg[397]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector115~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(397));

-- Location: LCCOMB_X60_Y30_N10
\u_tx|Selector107~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector107~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(397))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(397),
	combout => \u_tx|Selector107~0_combout\);

-- Location: FF_X60_Y30_N11
\u_tx|shift_reg[405]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector107~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(405));

-- Location: LCCOMB_X60_Y30_N12
\u_tx|Selector99~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector99~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(405))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(405),
	combout => \u_tx|Selector99~0_combout\);

-- Location: FF_X60_Y30_N13
\u_tx|shift_reg[413]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector99~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(413));

-- Location: LCCOMB_X60_Y30_N22
\u_tx|Selector91~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector91~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(413))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(413),
	combout => \u_tx|Selector91~0_combout\);

-- Location: FF_X60_Y30_N23
\u_tx|shift_reg[421]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector91~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(421));

-- Location: LCCOMB_X60_Y30_N8
\u_tx|Selector83~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector83~0_combout\ = (\u_tx|shift_reg\(421) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(421),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector83~0_combout\);

-- Location: FF_X60_Y30_N9
\u_tx|shift_reg[429]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector83~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(429));

-- Location: LCCOMB_X60_Y30_N26
\u_tx|Selector75~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector75~0_combout\ = (\u_tx|shift_reg\(429) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(429),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector75~0_combout\);

-- Location: FF_X60_Y30_N27
\u_tx|shift_reg[437]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector75~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(437));

-- Location: LCCOMB_X60_Y30_N0
\u_tx|Selector67~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector67~0_combout\ = (\u_tx|shift_reg\(437) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(437),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector67~0_combout\);

-- Location: FF_X60_Y30_N1
\u_tx|shift_reg[445]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector67~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(445));

-- Location: LCCOMB_X60_Y30_N2
\u_tx|Selector59~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector59~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(445))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(445),
	combout => \u_tx|Selector59~0_combout\);

-- Location: FF_X60_Y30_N3
\u_tx|shift_reg[453]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector59~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(453));

-- Location: LCCOMB_X60_Y30_N24
\u_tx|Selector51~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector51~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(453))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(453),
	combout => \u_tx|Selector51~0_combout\);

-- Location: FF_X60_Y30_N25
\u_tx|shift_reg[461]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector51~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(461));

-- Location: LCCOMB_X57_Y33_N18
\u_tx|Selector43~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector43~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(461))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(461),
	combout => \u_tx|Selector43~0_combout\);

-- Location: FF_X57_Y33_N19
\u_tx|shift_reg[469]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector43~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(469));

-- Location: LCCOMB_X57_Y33_N20
\u_tx|Selector35~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector35~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(469))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(469),
	combout => \u_tx|Selector35~0_combout\);

-- Location: FF_X57_Y33_N21
\u_tx|shift_reg[477]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector35~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(477));

-- Location: LCCOMB_X57_Y33_N26
\u_tx|Selector27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector27~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(477))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(477),
	combout => \u_tx|Selector27~0_combout\);

-- Location: FF_X57_Y33_N27
\u_tx|shift_reg[485]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector27~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(485));

-- Location: LCCOMB_X57_Y33_N8
\u_tx|Selector19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector19~0_combout\ = (\u_tx|shift_reg\(485) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(485),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector19~0_combout\);

-- Location: FF_X57_Y33_N9
\u_tx|shift_reg[493]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector19~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(493));

-- Location: LCCOMB_X56_Y33_N28
\u_tx|Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector11~0_combout\ = (\u_tx|shift_reg\(493) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(493),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector11~0_combout\);

-- Location: FF_X54_Y29_N19
\u_tx|shift_reg[501]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_tx|Selector11~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(501));

-- Location: LCCOMB_X54_Y29_N4
\u_tx|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector3~0_combout\ = (\u_tx|shift_reg\(501) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(501),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector3~0_combout\);

-- Location: FF_X55_Y29_N3
\u_tx|shift_reg[509]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_tx|Selector3~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(509));

-- Location: LCCOMB_X54_Y32_N2
\Selector447~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector447~4_combout\ = (\Selector29~3_combout\ & ((\Selector447~2_combout\) # ((!\tx_start~q\ & !\u_tx|tx_busy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector447~2_combout\,
	datab => \Selector29~3_combout\,
	datac => \tx_start~q\,
	datad => \u_tx|tx_busy~q\,
	combout => \Selector447~4_combout\);

-- Location: LCCOMB_X54_Y32_N14
\Selector447~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector447~3_combout\ = (\delay_cnt[27]~85_combout\ & (((current_cmd(102) & !\Selector447~4_combout\)))) # (!\delay_cnt[27]~85_combout\ & (((current_cmd(102))) # (!\always2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~0_combout\,
	datab => \delay_cnt[27]~85_combout\,
	datac => current_cmd(102),
	datad => \Selector447~4_combout\,
	combout => \Selector447~3_combout\);

-- Location: FF_X54_Y32_N15
\current_cmd[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector447~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(102));

-- Location: LCCOMB_X53_Y32_N14
\Selector525~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector525~1_combout\ = (!\state.S_CIPSEND~q\ & (!\state.S_CWMODE~q\ & !\state.S_AT_RST~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_CIPSEND~q\,
	datac => \state.S_CWMODE~q\,
	datad => \state.S_AT_RST~q\,
	combout => \Selector525~1_combout\);

-- Location: LCCOMB_X53_Y32_N28
\Selector525~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector525~0_combout\ = ((\always2~0_combout\ & ((\state.S_SEND_DATA~q\) # (!\delay_cnt[27]~84_combout\)))) # (!\Selector29~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay_cnt[27]~84_combout\,
	datab => \state.S_SEND_DATA~q\,
	datac => \Selector29~3_combout\,
	datad => \always2~0_combout\,
	combout => \Selector525~0_combout\);

-- Location: LCCOMB_X53_Y32_N22
\Selector525~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector525~2_combout\ = (\Selector525~1_combout\ & (((current_cmd(24) & \Selector525~0_combout\)))) # (!\Selector525~1_combout\ & (((current_cmd(24))) # (!\always2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~0_combout\,
	datab => \Selector525~1_combout\,
	datac => current_cmd(24),
	datad => \Selector525~0_combout\,
	combout => \Selector525~2_combout\);

-- Location: FF_X53_Y32_N23
\current_cmd[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector525~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(24));

-- Location: FF_X54_Y33_N19
\current_cmd[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector527~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \ALT_INV_Selector552~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(22));

-- Location: LCCOMB_X57_Y32_N30
\u_tx|Selector490~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector490~0_combout\ = (!\u_tx|state.S_IDLE~q\ & current_cmd(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => current_cmd(22),
	combout => \u_tx|Selector490~0_combout\);

-- Location: FF_X57_Y32_N31
\u_tx|shift_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector490~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(22));

-- Location: LCCOMB_X57_Y32_N26
\u_tx|Selector482~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector482~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(22))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(22),
	datab => current_cmd(25),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector482~0_combout\);

-- Location: FF_X57_Y32_N27
\u_tx|shift_reg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector482~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(30));

-- Location: LCCOMB_X60_Y32_N2
\u_tx|Selector474~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector474~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(30)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(24),
	datad => \u_tx|shift_reg\(30),
	combout => \u_tx|Selector474~0_combout\);

-- Location: FF_X60_Y32_N3
\u_tx|shift_reg[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector474~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(38));

-- Location: LCCOMB_X60_Y32_N28
\u_tx|Selector466~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector466~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(38)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(102)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(102),
	datad => \u_tx|shift_reg\(38),
	combout => \u_tx|Selector466~0_combout\);

-- Location: FF_X60_Y32_N29
\u_tx|shift_reg[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector466~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(46));

-- Location: LCCOMB_X60_Y32_N18
\u_tx|Selector458~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector458~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(46)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(24),
	datad => \u_tx|shift_reg\(46),
	combout => \u_tx|Selector458~0_combout\);

-- Location: FF_X60_Y32_N19
\u_tx|shift_reg[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector458~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(54));

-- Location: LCCOMB_X60_Y32_N24
\u_tx|Selector450~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector450~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(54)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(24),
	datad => \u_tx|shift_reg\(54),
	combout => \u_tx|Selector450~0_combout\);

-- Location: FF_X60_Y32_N25
\u_tx|shift_reg[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector450~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(62));

-- Location: LCCOMB_X60_Y32_N10
\u_tx|Selector442~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector442~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(62)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(102)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(102),
	datad => \u_tx|shift_reg\(62),
	combout => \u_tx|Selector442~0_combout\);

-- Location: FF_X60_Y32_N11
\u_tx|shift_reg[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector442~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(70));

-- Location: LCCOMB_X60_Y32_N22
\u_tx|Selector434~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector434~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(70)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(102)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(102),
	datad => \u_tx|shift_reg\(70),
	combout => \u_tx|Selector434~0_combout\);

-- Location: FF_X60_Y32_N23
\u_tx|shift_reg[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector434~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(78));

-- Location: LCCOMB_X60_Y32_N26
\u_tx|Selector426~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector426~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(78))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(104))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(78),
	datac => current_cmd(104),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector426~0_combout\);

-- Location: FF_X60_Y32_N27
\u_tx|shift_reg[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector426~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(86));

-- Location: LCCOMB_X60_Y32_N0
\u_tx|Selector418~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector418~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(86))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(49))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(86),
	datac => current_cmd(49),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector418~0_combout\);

-- Location: FF_X60_Y32_N1
\u_tx|shift_reg[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector418~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(94));

-- Location: LCCOMB_X60_Y32_N6
\u_tx|Selector410~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector410~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(94)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(102)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(102),
	datad => \u_tx|shift_reg\(94),
	combout => \u_tx|Selector410~0_combout\);

-- Location: FF_X60_Y32_N7
\u_tx|shift_reg[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector410~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(102));

-- Location: LCCOMB_X60_Y32_N20
\u_tx|Selector402~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector402~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(102))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(104))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(102),
	datac => current_cmd(104),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector402~0_combout\);

-- Location: FF_X60_Y32_N21
\u_tx|shift_reg[110]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector402~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(110));

-- Location: LCCOMB_X60_Y27_N4
\u_tx|Selector394~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector394~0_combout\ = (\u_tx|shift_reg\(110) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(110),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector394~0_combout\);

-- Location: FF_X60_Y27_N5
\u_tx|shift_reg[118]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector394~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(118));

-- Location: LCCOMB_X59_Y27_N2
\u_tx|Selector386~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector386~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(118)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(126)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(126),
	datad => \u_tx|shift_reg\(118),
	combout => \u_tx|Selector386~0_combout\);

-- Location: FF_X59_Y27_N3
\u_tx|shift_reg[126]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector386~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(126));

-- Location: LCCOMB_X59_Y27_N20
\u_tx|Selector378~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector378~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(126)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(126)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(126),
	datad => \u_tx|shift_reg\(126),
	combout => \u_tx|Selector378~0_combout\);

-- Location: FF_X59_Y27_N21
\u_tx|shift_reg[134]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector378~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(134));

-- Location: LCCOMB_X59_Y27_N6
\u_tx|Selector370~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector370~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(134)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(126)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(126),
	datad => \u_tx|shift_reg\(134),
	combout => \u_tx|Selector370~0_combout\);

-- Location: FF_X59_Y27_N7
\u_tx|shift_reg[142]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector370~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(142));

-- Location: LCCOMB_X59_Y27_N28
\u_tx|Selector362~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector362~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(142)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(126)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(126),
	datad => \u_tx|shift_reg\(142),
	combout => \u_tx|Selector362~0_combout\);

-- Location: FF_X59_Y27_N29
\u_tx|shift_reg[150]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector362~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(150));

-- Location: LCCOMB_X59_Y27_N26
\u_tx|Selector354~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector354~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(150)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(126)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(126),
	datad => \u_tx|shift_reg\(150),
	combout => \u_tx|Selector354~0_combout\);

-- Location: FF_X59_Y27_N27
\u_tx|shift_reg[158]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector354~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(158));

-- Location: LCCOMB_X59_Y27_N24
\u_tx|Selector346~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector346~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(158))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(158),
	datab => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(101),
	combout => \u_tx|Selector346~0_combout\);

-- Location: FF_X59_Y27_N25
\u_tx|shift_reg[166]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector346~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(166));

-- Location: LCCOMB_X59_Y27_N22
\u_tx|Selector338~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector338~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(166)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(101),
	datad => \u_tx|shift_reg\(166),
	combout => \u_tx|Selector338~0_combout\);

-- Location: FF_X59_Y27_N23
\u_tx|shift_reg[174]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector338~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(174));

-- Location: LCCOMB_X59_Y27_N16
\u_tx|Selector330~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector330~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(174))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(174),
	datab => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(101),
	combout => \u_tx|Selector330~0_combout\);

-- Location: FF_X59_Y27_N17
\u_tx|shift_reg[182]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector330~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(182));

-- Location: LCCOMB_X59_Y27_N10
\u_tx|Selector322~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector322~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(182)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(126)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(126),
	datad => \u_tx|shift_reg\(182),
	combout => \u_tx|Selector322~0_combout\);

-- Location: FF_X59_Y27_N11
\u_tx|shift_reg[190]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector322~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(190));

-- Location: LCCOMB_X59_Y27_N12
\u_tx|Selector314~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector314~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(190))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(190),
	combout => \u_tx|Selector314~0_combout\);

-- Location: FF_X59_Y27_N13
\u_tx|shift_reg[198]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector314~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(198));

-- Location: LCCOMB_X59_Y27_N30
\u_tx|Selector306~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector306~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(198)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(105),
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(198),
	combout => \u_tx|Selector306~0_combout\);

-- Location: FF_X59_Y27_N31
\u_tx|shift_reg[206]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector306~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(206));

-- Location: LCCOMB_X59_Y27_N4
\u_tx|Selector298~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector298~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(206))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(206),
	datab => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(101),
	combout => \u_tx|Selector298~0_combout\);

-- Location: FF_X59_Y27_N5
\u_tx|shift_reg[214]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector298~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(214));

-- Location: LCCOMB_X59_Y27_N18
\u_tx|Selector290~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector290~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(214)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(101),
	datab => \u_tx|state.S_IDLE~q\,
	datac => \u_tx|shift_reg\(214),
	combout => \u_tx|Selector290~0_combout\);

-- Location: FF_X59_Y27_N19
\u_tx|shift_reg[222]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector290~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(222));

-- Location: LCCOMB_X59_Y27_N8
\u_tx|Selector282~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector282~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(222)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(101),
	datad => \u_tx|shift_reg\(222),
	combout => \u_tx|Selector282~0_combout\);

-- Location: FF_X59_Y27_N9
\u_tx|shift_reg[230]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector282~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(230));

-- Location: LCCOMB_X59_Y27_N14
\u_tx|Selector274~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector274~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(230)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(101),
	datab => \u_tx|state.S_IDLE~q\,
	datac => \u_tx|shift_reg\(230),
	combout => \u_tx|Selector274~0_combout\);

-- Location: FF_X59_Y27_N15
\u_tx|shift_reg[238]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector274~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(238));

-- Location: LCCOMB_X59_Y27_N0
\u_tx|Selector266~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector266~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(238)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(101),
	datab => \u_tx|state.S_IDLE~q\,
	datac => \u_tx|shift_reg\(238),
	combout => \u_tx|Selector266~0_combout\);

-- Location: FF_X59_Y27_N1
\u_tx|shift_reg[246]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector266~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(246));

-- Location: LCCOMB_X59_Y28_N28
\u_tx|Selector258~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector258~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(246)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(105),
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(246),
	combout => \u_tx|Selector258~0_combout\);

-- Location: FF_X59_Y28_N29
\u_tx|shift_reg[254]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector258~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(254));

-- Location: LCCOMB_X59_Y28_N18
\u_tx|Selector250~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector250~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(254))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datab => \u_tx|shift_reg\(254),
	datad => current_cmd(101),
	combout => \u_tx|Selector250~0_combout\);

-- Location: FF_X59_Y28_N19
\u_tx|shift_reg[262]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector250~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(262));

-- Location: LCCOMB_X59_Y28_N2
\u_tx|Selector242~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector242~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(262)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(126)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(126),
	datab => \u_tx|shift_reg\(262),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector242~0_combout\);

-- Location: FF_X59_Y28_N3
\u_tx|shift_reg[270]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector242~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(270));

-- Location: LCCOMB_X59_Y28_N16
\u_tx|Selector234~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector234~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(270)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(105),
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(270),
	combout => \u_tx|Selector234~0_combout\);

-- Location: FF_X59_Y28_N17
\u_tx|shift_reg[278]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector234~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(278));

-- Location: LCCOMB_X59_Y28_N14
\u_tx|Selector226~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector226~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(278)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(105),
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(278),
	combout => \u_tx|Selector226~0_combout\);

-- Location: FF_X59_Y28_N15
\u_tx|shift_reg[286]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector226~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(286));

-- Location: LCCOMB_X59_Y28_N8
\u_tx|Selector218~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector218~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(286))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => \u_tx|shift_reg\(286),
	combout => \u_tx|Selector218~0_combout\);

-- Location: FF_X59_Y28_N9
\u_tx|shift_reg[294]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector218~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(294));

-- Location: LCCOMB_X59_Y28_N22
\u_tx|Selector210~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector210~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(294))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => \u_tx|shift_reg\(294),
	combout => \u_tx|Selector210~0_combout\);

-- Location: FF_X59_Y28_N23
\u_tx|shift_reg[302]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector210~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(302));

-- Location: LCCOMB_X59_Y28_N4
\u_tx|Selector202~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector202~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(302))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => \u_tx|shift_reg\(302),
	combout => \u_tx|Selector202~0_combout\);

-- Location: FF_X59_Y28_N5
\u_tx|shift_reg[310]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector202~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(310));

-- Location: LCCOMB_X59_Y28_N30
\u_tx|Selector194~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector194~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(310))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => \u_tx|shift_reg\(310),
	combout => \u_tx|Selector194~0_combout\);

-- Location: FF_X59_Y28_N31
\u_tx|shift_reg[318]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector194~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(318));

-- Location: LCCOMB_X59_Y28_N12
\u_tx|Selector186~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector186~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(318))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => \u_tx|shift_reg\(318),
	combout => \u_tx|Selector186~0_combout\);

-- Location: FF_X59_Y28_N13
\u_tx|shift_reg[326]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector186~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(326));

-- Location: LCCOMB_X59_Y28_N10
\u_tx|Selector178~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector178~0_combout\ = (\u_tx|shift_reg\(326) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(326),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector178~0_combout\);

-- Location: FF_X59_Y28_N11
\u_tx|shift_reg[334]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector178~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(334));

-- Location: LCCOMB_X59_Y28_N24
\u_tx|Selector170~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector170~0_combout\ = (\u_tx|shift_reg\(334) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(334),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector170~0_combout\);

-- Location: FF_X59_Y28_N25
\u_tx|shift_reg[342]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector170~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(342));

-- Location: LCCOMB_X59_Y28_N6
\u_tx|Selector162~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector162~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(342))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(342),
	combout => \u_tx|Selector162~0_combout\);

-- Location: FF_X59_Y28_N7
\u_tx|shift_reg[350]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector162~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(350));

-- Location: LCCOMB_X59_Y28_N0
\u_tx|Selector154~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector154~0_combout\ = (\u_tx|shift_reg\(350) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(350),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector154~0_combout\);

-- Location: FF_X59_Y28_N1
\u_tx|shift_reg[358]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector154~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(358));

-- Location: LCCOMB_X60_Y29_N4
\u_tx|Selector146~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector146~0_combout\ = (\u_tx|shift_reg\(358) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(358),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector146~0_combout\);

-- Location: FF_X60_Y29_N5
\u_tx|shift_reg[366]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector146~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(366));

-- Location: LCCOMB_X60_Y29_N22
\u_tx|Selector138~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector138~0_combout\ = (\u_tx|shift_reg\(366) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(366),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector138~0_combout\);

-- Location: FF_X60_Y29_N23
\u_tx|shift_reg[374]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector138~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(374));

-- Location: LCCOMB_X60_Y29_N8
\u_tx|Selector130~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector130~0_combout\ = (\u_tx|shift_reg\(374) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(374),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector130~0_combout\);

-- Location: FF_X60_Y29_N9
\u_tx|shift_reg[382]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector130~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(382));

-- Location: LCCOMB_X60_Y29_N26
\u_tx|Selector122~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector122~0_combout\ = (\u_tx|shift_reg\(382) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(382),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector122~0_combout\);

-- Location: FF_X60_Y29_N27
\u_tx|shift_reg[390]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector122~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(390));

-- Location: LCCOMB_X60_Y29_N12
\u_tx|Selector114~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector114~0_combout\ = (\u_tx|shift_reg\(390) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(390),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector114~0_combout\);

-- Location: FF_X60_Y29_N13
\u_tx|shift_reg[398]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector114~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(398));

-- Location: LCCOMB_X60_Y29_N14
\u_tx|Selector106~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector106~0_combout\ = (\u_tx|shift_reg\(398) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(398),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector106~0_combout\);

-- Location: FF_X60_Y29_N15
\u_tx|shift_reg[406]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector106~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(406));

-- Location: LCCOMB_X60_Y29_N24
\u_tx|Selector98~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector98~0_combout\ = (\u_tx|shift_reg\(406) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(406),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector98~0_combout\);

-- Location: FF_X60_Y29_N25
\u_tx|shift_reg[414]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector98~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(414));

-- Location: LCCOMB_X60_Y29_N10
\u_tx|Selector90~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector90~0_combout\ = (\u_tx|shift_reg\(414) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(414),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector90~0_combout\);

-- Location: FF_X60_Y29_N11
\u_tx|shift_reg[422]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector90~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(422));

-- Location: LCCOMB_X60_Y29_N28
\u_tx|Selector82~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector82~0_combout\ = (\u_tx|shift_reg\(422) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(422),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector82~0_combout\);

-- Location: FF_X60_Y29_N29
\u_tx|shift_reg[430]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector82~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(430));

-- Location: LCCOMB_X60_Y29_N6
\u_tx|Selector74~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector74~0_combout\ = (\u_tx|shift_reg\(430) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(430),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector74~0_combout\);

-- Location: FF_X60_Y29_N7
\u_tx|shift_reg[438]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector74~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(438));

-- Location: LCCOMB_X60_Y29_N16
\u_tx|Selector66~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector66~0_combout\ = (\u_tx|shift_reg\(438) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(438),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector66~0_combout\);

-- Location: FF_X60_Y29_N17
\u_tx|shift_reg[446]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector66~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(446));

-- Location: LCCOMB_X60_Y29_N18
\u_tx|Selector58~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector58~0_combout\ = (\u_tx|shift_reg\(446) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(446),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector58~0_combout\);

-- Location: FF_X60_Y29_N19
\u_tx|shift_reg[454]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector58~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(454));

-- Location: LCCOMB_X60_Y29_N0
\u_tx|Selector50~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector50~0_combout\ = (\u_tx|shift_reg\(454) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(454),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector50~0_combout\);

-- Location: FF_X60_Y29_N1
\u_tx|shift_reg[462]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector50~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(462));

-- Location: LCCOMB_X60_Y29_N2
\u_tx|Selector42~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector42~0_combout\ = (\u_tx|shift_reg\(462) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(462),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector42~0_combout\);

-- Location: FF_X60_Y29_N3
\u_tx|shift_reg[470]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector42~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(470));

-- Location: LCCOMB_X60_Y29_N20
\u_tx|Selector34~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector34~0_combout\ = (\u_tx|shift_reg\(470) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(470),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector34~0_combout\);

-- Location: FF_X60_Y29_N21
\u_tx|shift_reg[478]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector34~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(478));

-- Location: LCCOMB_X54_Y29_N0
\u_tx|Selector26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector26~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(478))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(478),
	combout => \u_tx|Selector26~0_combout\);

-- Location: FF_X55_Y29_N15
\u_tx|shift_reg[486]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_tx|Selector26~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(486));

-- Location: LCCOMB_X54_Y29_N24
\u_tx|Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector18~0_combout\ = (\u_tx|shift_reg\(486) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(486),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector18~0_combout\);

-- Location: FF_X54_Y29_N25
\u_tx|shift_reg[494]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector18~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(494));

-- Location: LCCOMB_X54_Y29_N12
\u_tx|Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector10~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(494))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(494),
	combout => \u_tx|Selector10~0_combout\);

-- Location: FF_X54_Y29_N13
\u_tx|shift_reg[502]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector10~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(502));

-- Location: LCCOMB_X55_Y29_N2
\u_tx|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector2~0_combout\ = (\u_tx|shift_reg\(502) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(502),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector2~0_combout\);

-- Location: FF_X56_Y29_N7
\u_tx|shift_reg[510]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_tx|Selector2~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(510));

-- Location: LCCOMB_X56_Y29_N6
\u_tx|always1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|always1~0_combout\ = (!\u_tx|shift_reg\(509) & (!\u_tx|byte_cnt\(6) & (!\u_tx|shift_reg\(510) & !\u_tx|byte_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(509),
	datab => \u_tx|byte_cnt\(6),
	datac => \u_tx|shift_reg\(510),
	datad => \u_tx|byte_cnt\(7),
	combout => \u_tx|always1~0_combout\);

-- Location: LCCOMB_X54_Y33_N22
\Selector530~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector530~0_combout\ = (current_cmd(19) & (((\always2~0_combout\ & \delay_cnt[27]~86_combout\)) # (!\Selector29~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(19),
	datab => \always2~0_combout\,
	datac => \delay_cnt[27]~86_combout\,
	datad => \Selector29~3_combout\,
	combout => \Selector530~0_combout\);

-- Location: LCCOMB_X54_Y33_N8
\Selector530~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector530~1_combout\ = (\state.S_SEND_DATA~q\ & !\u_button_3x3|key\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S_SEND_DATA~q\,
	datac => \u_button_3x3|key\(4),
	combout => \Selector530~1_combout\);

-- Location: LCCOMB_X53_Y33_N2
\Selector530~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector530~2_combout\ = (\u_button_3x3|key\(3) & (!\u_button_3x3|key\(2) & !\u_button_3x3|key\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_button_3x3|key\(3),
	datab => \u_button_3x3|key\(2),
	datad => \u_button_3x3|key\(1),
	combout => \Selector530~2_combout\);

-- Location: LCCOMB_X54_Y33_N6
\Selector530~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector530~3_combout\ = (\Selector530~0_combout\) # ((!\always2~0_combout\ & (\Selector530~1_combout\ & \Selector530~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector530~0_combout\,
	datab => \always2~0_combout\,
	datac => \Selector530~1_combout\,
	datad => \Selector530~2_combout\,
	combout => \Selector530~3_combout\);

-- Location: FF_X54_Y33_N7
\current_cmd[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector530~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(19));

-- Location: LCCOMB_X56_Y33_N0
\u_tx|Selector511~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector511~0_combout\ = (!\u_tx|state.S_IDLE~q\ & ((\tx_start~q\ & ((\next_state_after_wait.S_IDLE~q\))) # (!\tx_start~q\ & (\u_tx|shift_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(1),
	datab => \next_state_after_wait.S_IDLE~q\,
	datac => \u_tx|state.S_IDLE~q\,
	datad => \tx_start~q\,
	combout => \u_tx|Selector511~0_combout\);

-- Location: LCCOMB_X56_Y33_N4
\u_tx|Selector525~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector525~1_combout\ = (\u_tx|Equal0~4_combout\ & \u_tx|state.S_STOP~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|Equal0~4_combout\,
	datad => \u_tx|state.S_STOP~q\,
	combout => \u_tx|Selector525~1_combout\);

-- Location: LCCOMB_X56_Y33_N10
\u_tx|Selector511~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector511~1_combout\ = (\u_tx|shift_reg\(1) & ((\u_tx|Selector525~1_combout\) # ((\u_tx|state.S_START~q\ & !\u_tx|always1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(1),
	datab => \u_tx|state.S_START~q\,
	datac => \u_tx|Selector525~1_combout\,
	datad => \u_tx|always1~2_combout\,
	combout => \u_tx|Selector511~1_combout\);

-- Location: LCCOMB_X56_Y33_N6
\u_tx|Selector511~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector511~2_combout\ = (\u_tx|Selector511~0_combout\) # ((\u_tx|Selector511~1_combout\) # ((\u_tx|state.S_DATA~q\ & \u_tx|shift_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_DATA~q\,
	datab => \u_tx|Selector511~0_combout\,
	datac => \u_tx|shift_reg\(1),
	datad => \u_tx|Selector511~1_combout\,
	combout => \u_tx|Selector511~2_combout\);

-- Location: FF_X56_Y33_N7
\u_tx|shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector511~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(1));

-- Location: LCCOMB_X55_Y33_N0
\u_tx|Selector501~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector501~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(1)))) # (!\u_tx|state.S_IDLE~q\ & (\next_state_after_wait.S_IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state_after_wait.S_IDLE~q\,
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(1),
	combout => \u_tx|Selector501~0_combout\);

-- Location: FF_X55_Y33_N1
\u_tx|shift_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector501~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(11));

-- Location: LCCOMB_X55_Y33_N20
\u_tx|Selector493~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector493~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(11)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(19),
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(11),
	combout => \u_tx|Selector493~0_combout\);

-- Location: FF_X55_Y33_N21
\u_tx|shift_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector493~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(19));

-- Location: LCCOMB_X54_Y31_N2
\Selector522~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector522~6_combout\ = (\state.S_CWJAP~q\ & ((\u_tx|tx_busy~q\) # ((\tx_start~q\)))) # (!\state.S_CWJAP~q\ & (!\delay_cnt[27]~93_combout\ & ((\u_tx|tx_busy~q\) # (\tx_start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_CWJAP~q\,
	datab => \u_tx|tx_busy~q\,
	datac => \tx_start~q\,
	datad => \delay_cnt[27]~93_combout\,
	combout => \Selector522~6_combout\);

-- Location: LCCOMB_X53_Y31_N6
\Selector522~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector522~4_combout\ = (\state.S_CIPSTART~q\ & (((current_cmd(27))) # (!\always2~0_combout\))) # (!\state.S_CIPSTART~q\ & (!\delay_cnt[27]~85_combout\ & ((current_cmd(27)) # (!\always2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_CIPSTART~q\,
	datab => \always2~0_combout\,
	datac => current_cmd(27),
	datad => \delay_cnt[27]~85_combout\,
	combout => \Selector522~4_combout\);

-- Location: LCCOMB_X53_Y31_N12
\Selector522~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector522~5_combout\ = (\Selector522~4_combout\) # ((current_cmd(27) & ((\Selector522~6_combout\) # (!\Selector29~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector29~3_combout\,
	datab => \Selector522~6_combout\,
	datac => current_cmd(27),
	datad => \Selector522~4_combout\,
	combout => \Selector522~5_combout\);

-- Location: FF_X53_Y31_N13
\current_cmd[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector522~5_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(27));

-- Location: LCCOMB_X57_Y32_N28
\u_tx|Selector485~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector485~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(19))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(19),
	datac => \u_tx|state.S_IDLE~q\,
	datad => current_cmd(27),
	combout => \u_tx|Selector485~0_combout\);

-- Location: FF_X57_Y32_N29
\u_tx|shift_reg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector485~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(27));

-- Location: LCCOMB_X57_Y28_N10
\u_tx|Selector477~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector477~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(27)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(105),
	datac => \u_tx|shift_reg\(27),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector477~0_combout\);

-- Location: FF_X57_Y28_N11
\u_tx|shift_reg[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector477~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(35));

-- Location: LCCOMB_X53_Y32_N30
\Selector506~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector506~0_combout\ = (\state.S_AT_RST~q\ & ((current_cmd(43)) # ((!\always2~0_combout\)))) # (!\state.S_AT_RST~q\ & (\state.S_CIPSEND~q\ & ((current_cmd(43)) # (!\always2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_AT_RST~q\,
	datab => current_cmd(43),
	datac => \always2~0_combout\,
	datad => \state.S_CIPSEND~q\,
	combout => \Selector506~0_combout\);

-- Location: LCCOMB_X53_Y32_N0
\Selector506~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector506~1_combout\ = (\always2~0_combout\ & (((\state.S_CWMODE~q\) # (\state.S_SEND_DATA~q\)) # (!\delay_cnt[27]~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay_cnt[27]~84_combout\,
	datab => \state.S_CWMODE~q\,
	datac => \state.S_SEND_DATA~q\,
	datad => \always2~0_combout\,
	combout => \Selector506~1_combout\);

-- Location: LCCOMB_X53_Y32_N4
\Selector506~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector506~2_combout\ = (\Selector506~0_combout\) # ((current_cmd(43) & ((\Selector506~1_combout\) # (!\Selector29~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector29~3_combout\,
	datab => \Selector506~0_combout\,
	datac => current_cmd(43),
	datad => \Selector506~1_combout\,
	combout => \Selector506~2_combout\);

-- Location: FF_X53_Y32_N5
\current_cmd[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector506~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(43));

-- Location: LCCOMB_X57_Y28_N20
\u_tx|Selector469~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector469~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(35))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(35),
	datac => current_cmd(43),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector469~0_combout\);

-- Location: FF_X57_Y28_N21
\u_tx|shift_reg[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector469~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(43));

-- Location: LCCOMB_X54_Y32_N30
\Selector517~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector517~0_combout\ = (!\state.S_SEND_DATA~q\ & (!\state.S_AT_RST~q\ & !\state.S_CIPSTART~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_SEND_DATA~q\,
	datac => \state.S_AT_RST~q\,
	datad => \state.S_CIPSTART~q\,
	combout => \Selector517~0_combout\);

-- Location: LCCOMB_X55_Y33_N10
\Selector517~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector517~1_combout\ = ((\always2~0_combout\ & ((\state.S_CIPSEND~q\) # (!\Selector517~0_combout\)))) # (!\Selector29~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_CIPSEND~q\,
	datab => \Selector29~3_combout\,
	datac => \always2~0_combout\,
	datad => \Selector517~0_combout\,
	combout => \Selector517~1_combout\);

-- Location: LCCOMB_X54_Y33_N30
\Selector449~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector449~7_combout\ = (!\state.S_CWJAP~q\ & !\state.S_CWMODE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.S_CWJAP~q\,
	datad => \state.S_CWMODE~q\,
	combout => \Selector449~7_combout\);

-- Location: LCCOMB_X55_Y33_N30
\Selector517~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector517~2_combout\ = (current_cmd(32) & ((\Selector517~1_combout\) # ((!\Selector449~7_combout\)))) # (!current_cmd(32) & (((!\always2~0_combout\ & !\Selector449~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector517~1_combout\,
	datab => \always2~0_combout\,
	datac => current_cmd(32),
	datad => \Selector449~7_combout\,
	combout => \Selector517~2_combout\);

-- Location: FF_X55_Y33_N31
\current_cmd[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector517~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(32));

-- Location: LCCOMB_X57_Y28_N6
\u_tx|Selector461~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector461~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(43))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(43),
	datac => current_cmd(32),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector461~0_combout\);

-- Location: FF_X57_Y28_N7
\u_tx|shift_reg[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector461~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(51));

-- Location: LCCOMB_X54_Y32_N22
\Selector490~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector490~6_combout\ = (\state.S_CWMODE~q\ & (((current_cmd(59))) # (!\always2~0_combout\))) # (!\state.S_CWMODE~q\ & (\state.S_CIPSTART~q\ & ((current_cmd(59)) # (!\always2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_CWMODE~q\,
	datab => \always2~0_combout\,
	datac => current_cmd(59),
	datad => \state.S_CIPSTART~q\,
	combout => \Selector490~6_combout\);

-- Location: LCCOMB_X54_Y32_N0
\Selector490~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector490~7_combout\ = (!\state.S_CWJAP~q\ & !\state.S_CIPSEND~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.S_CWJAP~q\,
	datad => \state.S_CIPSEND~q\,
	combout => \Selector490~7_combout\);

-- Location: LCCOMB_X54_Y32_N18
\Selector490~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector490~9_combout\ = (\delay_cnt[27]~93_combout\ & (!\Selector490~7_combout\ & ((\u_tx|tx_busy~q\) # (\tx_start~q\)))) # (!\delay_cnt[27]~93_combout\ & ((\u_tx|tx_busy~q\) # ((\tx_start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay_cnt[27]~93_combout\,
	datab => \u_tx|tx_busy~q\,
	datac => \tx_start~q\,
	datad => \Selector490~7_combout\,
	combout => \Selector490~9_combout\);

-- Location: LCCOMB_X54_Y32_N6
\Selector490~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector490~8_combout\ = (\Selector490~6_combout\) # ((current_cmd(59) & ((\Selector490~9_combout\) # (!\Selector29~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector490~6_combout\,
	datab => \Selector490~9_combout\,
	datac => current_cmd(59),
	datad => \Selector29~3_combout\,
	combout => \Selector490~8_combout\);

-- Location: FF_X54_Y32_N7
\current_cmd[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector490~8_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(59));

-- Location: LCCOMB_X57_Y28_N24
\u_tx|Selector453~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector453~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(51))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(59))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(51),
	datac => current_cmd(59),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector453~0_combout\);

-- Location: FF_X57_Y28_N25
\u_tx|shift_reg[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector453~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(59));

-- Location: LCCOMB_X57_Y28_N18
\u_tx|Selector445~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector445~0_combout\ = (\u_tx|shift_reg\(59) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(59),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector445~0_combout\);

-- Location: FF_X57_Y28_N19
\u_tx|shift_reg[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector445~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(67));

-- Location: LCCOMB_X57_Y28_N12
\u_tx|Selector437~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector437~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(67))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(57))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(67),
	datac => current_cmd(57),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector437~0_combout\);

-- Location: FF_X57_Y28_N13
\u_tx|shift_reg[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector437~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(75));

-- Location: LCCOMB_X57_Y28_N2
\u_tx|Selector429~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector429~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(75))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(59))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(75),
	datac => current_cmd(59),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector429~0_combout\);

-- Location: FF_X57_Y28_N3
\u_tx|shift_reg[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector429~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(83));

-- Location: LCCOMB_X57_Y28_N26
\u_tx|Selector421~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector421~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(83))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(104))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(83),
	datac => current_cmd(104),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector421~0_combout\);

-- Location: FF_X57_Y28_N27
\u_tx|shift_reg[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector421~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(91));

-- Location: LCCOMB_X57_Y28_N0
\u_tx|Selector413~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector413~0_combout\ = (\u_tx|shift_reg\(91) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(91),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector413~0_combout\);

-- Location: FF_X57_Y28_N1
\u_tx|shift_reg[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector413~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(99));

-- Location: LCCOMB_X57_Y28_N4
\u_tx|Selector405~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector405~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(99)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(101),
	datab => \u_tx|shift_reg\(99),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector405~0_combout\);

-- Location: FF_X57_Y28_N5
\u_tx|shift_reg[107]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector405~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(107));

-- Location: LCCOMB_X56_Y28_N30
\u_tx|Selector397~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector397~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(107))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(107),
	combout => \u_tx|Selector397~0_combout\);

-- Location: FF_X56_Y28_N31
\u_tx|shift_reg[115]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector397~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(115));

-- Location: LCCOMB_X60_Y27_N14
\u_tx|Selector389~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector389~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(115))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(105))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(115),
	datac => current_cmd(105),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector389~0_combout\);

-- Location: FF_X60_Y27_N15
\u_tx|shift_reg[123]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector389~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(123));

-- Location: LCCOMB_X60_Y27_N12
\u_tx|Selector381~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector381~0_combout\ = (\u_tx|shift_reg\(123) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(123),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector381~0_combout\);

-- Location: FF_X60_Y27_N13
\u_tx|shift_reg[131]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector381~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(131));

-- Location: LCCOMB_X60_Y27_N10
\u_tx|Selector373~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector373~0_combout\ = (\u_tx|shift_reg\(131) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(131),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector373~0_combout\);

-- Location: FF_X60_Y27_N11
\u_tx|shift_reg[139]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector373~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(139));

-- Location: LCCOMB_X60_Y27_N20
\u_tx|Selector365~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector365~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(139))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(105))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(139),
	datac => current_cmd(105),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector365~0_combout\);

-- Location: FF_X60_Y27_N21
\u_tx|shift_reg[147]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector365~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(147));

-- Location: LCCOMB_X60_Y27_N26
\u_tx|Selector357~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector357~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(147))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(126))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(147),
	datac => current_cmd(126),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector357~0_combout\);

-- Location: FF_X60_Y27_N27
\u_tx|shift_reg[155]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector357~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(155));

-- Location: LCCOMB_X60_Y27_N24
\u_tx|Selector349~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector349~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(155))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(126))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(155),
	datac => current_cmd(126),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector349~0_combout\);

-- Location: FF_X60_Y27_N25
\u_tx|shift_reg[163]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector349~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(163));

-- Location: LCCOMB_X60_Y27_N30
\u_tx|Selector341~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector341~0_combout\ = (\u_tx|shift_reg\(163) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(163),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector341~0_combout\);

-- Location: FF_X60_Y27_N31
\u_tx|shift_reg[171]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector341~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(171));

-- Location: LCCOMB_X60_Y27_N8
\u_tx|Selector333~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector333~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(171))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(126))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(171),
	datac => current_cmd(126),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector333~0_combout\);

-- Location: FF_X60_Y27_N9
\u_tx|shift_reg[179]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector333~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(179));

-- Location: LCCOMB_X60_Y27_N18
\u_tx|Selector325~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector325~0_combout\ = (\u_tx|shift_reg\(179) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(179),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector325~0_combout\);

-- Location: FF_X60_Y27_N19
\u_tx|shift_reg[187]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector325~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(187));

-- Location: LCCOMB_X60_Y27_N28
\u_tx|Selector317~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector317~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(187))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(105))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(187),
	datac => current_cmd(105),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector317~0_combout\);

-- Location: FF_X60_Y27_N29
\u_tx|shift_reg[195]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector317~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(195));

-- Location: LCCOMB_X60_Y27_N22
\u_tx|Selector309~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector309~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(195))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(126))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(195),
	datac => current_cmd(126),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector309~0_combout\);

-- Location: FF_X60_Y27_N23
\u_tx|shift_reg[203]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector309~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(203));

-- Location: LCCOMB_X60_Y27_N16
\u_tx|Selector301~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector301~0_combout\ = (\u_tx|shift_reg\(203) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(203),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector301~0_combout\);

-- Location: FF_X60_Y27_N17
\u_tx|shift_reg[211]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector301~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(211));

-- Location: LCCOMB_X60_Y27_N2
\u_tx|Selector293~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector293~0_combout\ = (\u_tx|shift_reg\(211) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(211),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector293~0_combout\);

-- Location: FF_X60_Y27_N3
\u_tx|shift_reg[219]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector293~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(219));

-- Location: LCCOMB_X60_Y27_N0
\u_tx|Selector285~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector285~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(219))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(126))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(219),
	datac => current_cmd(126),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector285~0_combout\);

-- Location: FF_X60_Y27_N1
\u_tx|shift_reg[227]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector285~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(227));

-- Location: LCCOMB_X60_Y28_N16
\u_tx|Selector277~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector277~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(227))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(227),
	combout => \u_tx|Selector277~0_combout\);

-- Location: FF_X60_Y28_N17
\u_tx|shift_reg[235]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector277~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(235));

-- Location: LCCOMB_X60_Y28_N2
\u_tx|Selector269~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector269~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(235))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(235),
	combout => \u_tx|Selector269~0_combout\);

-- Location: FF_X60_Y28_N3
\u_tx|shift_reg[243]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector269~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(243));

-- Location: LCCOMB_X60_Y28_N12
\u_tx|Selector261~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector261~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(243)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(101),
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(243),
	combout => \u_tx|Selector261~0_combout\);

-- Location: FF_X60_Y28_N13
\u_tx|shift_reg[251]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector261~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(251));

-- Location: LCCOMB_X60_Y28_N14
\u_tx|Selector253~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector253~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(251))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(251),
	combout => \u_tx|Selector253~0_combout\);

-- Location: FF_X60_Y28_N15
\u_tx|shift_reg[259]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector253~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(259));

-- Location: LCCOMB_X59_Y28_N20
\u_tx|Selector245~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector245~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(259))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(105))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => \u_tx|shift_reg\(259),
	datad => current_cmd(105),
	combout => \u_tx|Selector245~0_combout\);

-- Location: FF_X59_Y28_N21
\u_tx|shift_reg[267]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector245~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(267));

-- Location: LCCOMB_X60_Y28_N28
\u_tx|Selector237~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector237~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(267))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(267),
	combout => \u_tx|Selector237~0_combout\);

-- Location: FF_X60_Y28_N29
\u_tx|shift_reg[275]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector237~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(275));

-- Location: LCCOMB_X60_Y28_N18
\u_tx|Selector229~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector229~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(275))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(275),
	combout => \u_tx|Selector229~0_combout\);

-- Location: FF_X60_Y28_N19
\u_tx|shift_reg[283]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector229~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(283));

-- Location: LCCOMB_X60_Y28_N8
\u_tx|Selector221~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector221~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(283))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(283),
	combout => \u_tx|Selector221~0_combout\);

-- Location: FF_X60_Y28_N9
\u_tx|shift_reg[291]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector221~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(291));

-- Location: LCCOMB_X60_Y28_N10
\u_tx|Selector213~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector213~0_combout\ = (\u_tx|shift_reg\(291) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(291),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector213~0_combout\);

-- Location: FF_X60_Y28_N11
\u_tx|shift_reg[299]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector213~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(299));

-- Location: LCCOMB_X60_Y28_N4
\u_tx|Selector205~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector205~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(299))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(299),
	combout => \u_tx|Selector205~0_combout\);

-- Location: FF_X60_Y28_N5
\u_tx|shift_reg[307]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector205~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(307));

-- Location: LCCOMB_X60_Y28_N22
\u_tx|Selector197~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector197~0_combout\ = (\u_tx|shift_reg\(307) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(307),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector197~0_combout\);

-- Location: FF_X60_Y28_N23
\u_tx|shift_reg[315]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector197~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(315));

-- Location: LCCOMB_X60_Y28_N30
\u_tx|Selector189~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector189~0_combout\ = (\u_tx|shift_reg\(315) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(315),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector189~0_combout\);

-- Location: FF_X60_Y28_N31
\u_tx|shift_reg[323]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector189~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(323));

-- Location: LCCOMB_X60_Y28_N26
\u_tx|Selector181~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector181~0_combout\ = (\u_tx|shift_reg\(323) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(323),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector181~0_combout\);

-- Location: FF_X60_Y28_N27
\u_tx|shift_reg[331]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector181~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(331));

-- Location: LCCOMB_X60_Y28_N20
\u_tx|Selector173~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector173~0_combout\ = (\u_tx|shift_reg\(331) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(331),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector173~0_combout\);

-- Location: FF_X60_Y28_N21
\u_tx|shift_reg[339]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector173~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(339));

-- Location: LCCOMB_X57_Y26_N18
\u_tx|Selector165~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector165~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(339))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(339),
	combout => \u_tx|Selector165~0_combout\);

-- Location: FF_X57_Y26_N19
\u_tx|shift_reg[347]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector165~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(347));

-- Location: LCCOMB_X57_Y26_N20
\u_tx|Selector157~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector157~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(347))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(347),
	combout => \u_tx|Selector157~0_combout\);

-- Location: FF_X57_Y26_N21
\u_tx|shift_reg[355]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector157~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(355));

-- Location: LCCOMB_X57_Y26_N6
\u_tx|Selector149~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector149~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(355))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(355),
	combout => \u_tx|Selector149~0_combout\);

-- Location: FF_X57_Y26_N7
\u_tx|shift_reg[363]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector149~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(363));

-- Location: LCCOMB_X57_Y26_N24
\u_tx|Selector141~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector141~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(363))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(363),
	combout => \u_tx|Selector141~0_combout\);

-- Location: FF_X57_Y26_N25
\u_tx|shift_reg[371]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector141~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(371));

-- Location: LCCOMB_X57_Y26_N10
\u_tx|Selector133~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector133~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(371))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(371),
	combout => \u_tx|Selector133~0_combout\);

-- Location: FF_X57_Y26_N11
\u_tx|shift_reg[379]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector133~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(379));

-- Location: LCCOMB_X57_Y26_N28
\u_tx|Selector125~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector125~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(379))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(379),
	combout => \u_tx|Selector125~0_combout\);

-- Location: FF_X57_Y26_N29
\u_tx|shift_reg[387]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector125~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(387));

-- Location: LCCOMB_X57_Y26_N26
\u_tx|Selector117~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector117~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(387))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(387),
	combout => \u_tx|Selector117~0_combout\);

-- Location: FF_X57_Y26_N27
\u_tx|shift_reg[395]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector117~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(395));

-- Location: LCCOMB_X57_Y26_N16
\u_tx|Selector109~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector109~0_combout\ = (\u_tx|shift_reg\(395) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(395),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector109~0_combout\);

-- Location: FF_X57_Y26_N17
\u_tx|shift_reg[403]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector109~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(403));

-- Location: LCCOMB_X57_Y26_N22
\u_tx|Selector101~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector101~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(403))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(403),
	combout => \u_tx|Selector101~0_combout\);

-- Location: FF_X57_Y26_N23
\u_tx|shift_reg[411]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector101~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(411));

-- Location: LCCOMB_X57_Y26_N4
\u_tx|Selector93~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector93~0_combout\ = (\u_tx|shift_reg\(411) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(411),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector93~0_combout\);

-- Location: FF_X57_Y26_N5
\u_tx|shift_reg[419]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector93~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(419));

-- Location: LCCOMB_X57_Y26_N30
\u_tx|Selector85~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector85~0_combout\ = (\u_tx|shift_reg\(419) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(419),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector85~0_combout\);

-- Location: FF_X57_Y26_N31
\u_tx|shift_reg[427]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector85~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(427));

-- Location: LCCOMB_X57_Y26_N8
\u_tx|Selector77~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector77~0_combout\ = (\u_tx|shift_reg\(427) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(427),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector77~0_combout\);

-- Location: FF_X57_Y26_N9
\u_tx|shift_reg[435]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector77~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(435));

-- Location: LCCOMB_X57_Y26_N14
\u_tx|Selector69~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector69~0_combout\ = (\u_tx|shift_reg\(435) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(435),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector69~0_combout\);

-- Location: FF_X57_Y26_N15
\u_tx|shift_reg[443]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector69~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(443));

-- Location: LCCOMB_X57_Y26_N0
\u_tx|Selector61~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector61~0_combout\ = (\u_tx|shift_reg\(443) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(443),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector61~0_combout\);

-- Location: FF_X57_Y26_N1
\u_tx|shift_reg[451]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector61~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(451));

-- Location: LCCOMB_X57_Y26_N2
\u_tx|Selector53~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector53~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(451))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(451),
	combout => \u_tx|Selector53~0_combout\);

-- Location: FF_X57_Y26_N3
\u_tx|shift_reg[459]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector53~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(459));

-- Location: LCCOMB_X57_Y26_N12
\u_tx|Selector45~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector45~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(459))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(459),
	combout => \u_tx|Selector45~0_combout\);

-- Location: FF_X57_Y26_N13
\u_tx|shift_reg[467]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector45~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(467));

-- Location: LCCOMB_X57_Y33_N10
\u_tx|Selector37~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector37~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(467))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(467),
	combout => \u_tx|Selector37~0_combout\);

-- Location: FF_X57_Y33_N11
\u_tx|shift_reg[475]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector37~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(475));

-- Location: LCCOMB_X57_Y33_N12
\u_tx|Selector29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector29~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(475))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(475),
	combout => \u_tx|Selector29~0_combout\);

-- Location: FF_X57_Y33_N13
\u_tx|shift_reg[483]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector29~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(483));

-- Location: LCCOMB_X57_Y33_N14
\u_tx|Selector21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector21~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(483))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(483),
	combout => \u_tx|Selector21~0_combout\);

-- Location: FF_X57_Y33_N15
\u_tx|shift_reg[491]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector21~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(491));

-- Location: LCCOMB_X54_Y29_N30
\u_tx|Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector13~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(491))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(491),
	combout => \u_tx|Selector13~0_combout\);

-- Location: FF_X54_Y29_N31
\u_tx|shift_reg[499]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector13~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(499));

-- Location: LCCOMB_X54_Y29_N18
\u_tx|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector5~0_combout\ = (\u_tx|shift_reg\(499) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(499),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector5~0_combout\);

-- Location: FF_X56_Y29_N9
\u_tx|shift_reg[507]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_tx|Selector5~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(507));

-- Location: LCCOMB_X54_Y32_N28
\Selector523~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector523~0_combout\ = (!\state.S_CWJAP~q\ & (\delay_cnt[27]~85_combout\ & ((\Selector517~0_combout\) # (!\always2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_CWJAP~q\,
	datab => \always2~0_combout\,
	datac => \Selector517~0_combout\,
	datad => \delay_cnt[27]~85_combout\,
	combout => \Selector523~0_combout\);

-- Location: LCCOMB_X54_Y32_N26
\Selector523~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector523~1_combout\ = (current_cmd(26) & (((!\Selector523~0_combout\) # (!\Selector29~3_combout\)))) # (!current_cmd(26) & (!\always2~0_combout\ & ((!\Selector523~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~0_combout\,
	datab => \Selector29~3_combout\,
	datac => current_cmd(26),
	datad => \Selector523~0_combout\,
	combout => \Selector523~1_combout\);

-- Location: FF_X54_Y32_N27
\current_cmd[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector523~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(26));

-- Location: LCCOMB_X53_Y33_N26
\u_button_3x3|key~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|key~10_combout\ = (\u_button_3x3|key\(0) & ((\column[1]~input_o\ & (\column[0]~input_o\ $ (!\column[2]~input_o\))) # (!\column[1]~input_o\ & ((!\column[2]~input_o\) # (!\column[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \column[1]~input_o\,
	datab => \column[0]~input_o\,
	datac => \column[2]~input_o\,
	datad => \u_button_3x3|key\(0),
	combout => \u_button_3x3|key~10_combout\);

-- Location: LCCOMB_X53_Y33_N28
\u_button_3x3|key~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|key~9_combout\ = (\column[1]~input_o\ & (\u_button_3x3|bond\(0) & (\column[0]~input_o\ $ (\column[2]~input_o\)))) # (!\column[1]~input_o\ & (\column[0]~input_o\ & (\column[2]~input_o\ & !\u_button_3x3|bond\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \column[1]~input_o\,
	datab => \column[0]~input_o\,
	datac => \column[2]~input_o\,
	datad => \u_button_3x3|bond\(0),
	combout => \u_button_3x3|key~9_combout\);

-- Location: LCCOMB_X53_Y33_N0
\u_button_3x3|key~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_button_3x3|key~11_combout\ = (!\u_button_3x3|Equal0~0_combout\ & ((\u_button_3x3|key~10_combout\) # (\u_button_3x3|key~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_button_3x3|Equal0~0_combout\,
	datac => \u_button_3x3|key~10_combout\,
	datad => \u_button_3x3|key~9_combout\,
	combout => \u_button_3x3|key~11_combout\);

-- Location: FF_X53_Y33_N1
\u_button_3x3|key[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_button_3x3|clk_cnt[18]~clkctrl_outclk\,
	d => \u_button_3x3|key~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_button_3x3|key\(0));

-- Location: LCCOMB_X53_Y33_N24
\WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (\u_button_3x3|key\(2) & ((\u_button_3x3|key\(0)) # ((\u_button_3x3|key\(1)) # (!\u_button_3x3|key\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_button_3x3|key\(0),
	datab => \u_button_3x3|key\(1),
	datac => \u_button_3x3|key\(3),
	datad => \u_button_3x3|key\(2),
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X54_Y33_N24
\WideOr2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr2~1_combout\ = (!\u_button_3x3|key\(4) & \WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_button_3x3|key\(4),
	datad => \WideOr2~0_combout\,
	combout => \WideOr2~1_combout\);

-- Location: FF_X54_Y33_N25
\current_cmd[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr2~1_combout\,
	asdata => \state.S_AT_RST~q\,
	clrn => \rst_n~input_o\,
	sload => \ALT_INV_state.S_SEND_DATA~q\,
	ena => \ALT_INV_Selector552~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(18));

-- Location: LCCOMB_X56_Y32_N14
\u_tx|Selector502~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector502~0_combout\ = (\next_state_after_wait.S_IDLE~q\ & !\u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \next_state_after_wait.S_IDLE~q\,
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector502~0_combout\);

-- Location: FF_X56_Y32_N15
\u_tx|shift_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector502~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(10));

-- Location: LCCOMB_X57_Y32_N14
\u_tx|Selector494~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector494~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(10)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(18),
	datad => \u_tx|shift_reg\(10),
	combout => \u_tx|Selector494~0_combout\);

-- Location: FF_X57_Y32_N15
\u_tx|shift_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector494~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(18));

-- Location: LCCOMB_X57_Y32_N12
\u_tx|Selector486~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector486~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(18)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(26),
	datab => \u_tx|shift_reg\(18),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector486~0_combout\);

-- Location: FF_X57_Y32_N13
\u_tx|shift_reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector486~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(26));

-- Location: LCCOMB_X57_Y32_N4
\u_tx|Selector478~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector478~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(26))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(26),
	datac => \u_tx|state.S_IDLE~q\,
	datad => current_cmd(27),
	combout => \u_tx|Selector478~0_combout\);

-- Location: FF_X57_Y32_N5
\u_tx|shift_reg[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector478~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(34));

-- Location: LCCOMB_X57_Y32_N20
\u_tx|Selector470~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector470~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(34)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(26),
	datab => \u_tx|shift_reg\(34),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector470~0_combout\);

-- Location: FF_X57_Y32_N21
\u_tx|shift_reg[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector470~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(42));

-- Location: LCCOMB_X57_Y32_N24
\u_tx|Selector462~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector462~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(42)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(24),
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(42),
	combout => \u_tx|Selector462~0_combout\);

-- Location: FF_X57_Y32_N25
\u_tx|shift_reg[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector462~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(50));

-- Location: LCCOMB_X59_Y32_N2
\u_tx|Selector454~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector454~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(50)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(58)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(58),
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(50),
	combout => \u_tx|Selector454~0_combout\);

-- Location: FF_X59_Y32_N3
\u_tx|shift_reg[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector454~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(58));

-- Location: LCCOMB_X59_Y32_N24
\u_tx|Selector446~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector446~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(58)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(58)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(58),
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(58),
	combout => \u_tx|Selector446~0_combout\);

-- Location: FF_X59_Y32_N25
\u_tx|shift_reg[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector446~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(66));

-- Location: LCCOMB_X59_Y32_N10
\u_tx|Selector438~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector438~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(66)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(105),
	datad => \u_tx|shift_reg\(66),
	combout => \u_tx|Selector438~0_combout\);

-- Location: FF_X59_Y32_N11
\u_tx|shift_reg[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector438~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(74));

-- Location: LCCOMB_X59_Y32_N14
\u_tx|Selector430~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector430~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(74)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(126)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(126),
	datad => \u_tx|shift_reg\(74),
	combout => \u_tx|Selector430~0_combout\);

-- Location: FF_X59_Y32_N15
\u_tx|shift_reg[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector430~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(82));

-- Location: LCCOMB_X59_Y32_N30
\u_tx|Selector422~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector422~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(82)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(59)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(59),
	datab => \u_tx|shift_reg\(82),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector422~0_combout\);

-- Location: FF_X59_Y32_N31
\u_tx|shift_reg[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector422~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(90));

-- Location: LCCOMB_X59_Y32_N16
\u_tx|Selector414~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector414~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(90))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(104))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(90),
	datac => \u_tx|state.S_IDLE~q\,
	datad => current_cmd(104),
	combout => \u_tx|Selector414~0_combout\);

-- Location: FF_X59_Y32_N17
\u_tx|shift_reg[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector414~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(98));

-- Location: LCCOMB_X59_Y32_N18
\u_tx|Selector406~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector406~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(98)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(101),
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(98),
	combout => \u_tx|Selector406~0_combout\);

-- Location: FF_X59_Y32_N19
\u_tx|shift_reg[106]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector406~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(106));

-- Location: LCCOMB_X59_Y32_N6
\u_tx|Selector398~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector398~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(106))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(106),
	combout => \u_tx|Selector398~0_combout\);

-- Location: FF_X59_Y32_N7
\u_tx|shift_reg[114]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector398~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(114));

-- Location: LCCOMB_X59_Y29_N18
\u_tx|Selector390~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector390~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(114))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(114),
	combout => \u_tx|Selector390~0_combout\);

-- Location: FF_X59_Y29_N19
\u_tx|shift_reg[122]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector390~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(122));

-- Location: LCCOMB_X59_Y29_N16
\u_tx|Selector382~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector382~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(122)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(126)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(126),
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(122),
	combout => \u_tx|Selector382~0_combout\);

-- Location: FF_X59_Y29_N17
\u_tx|shift_reg[130]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector382~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(130));

-- Location: LCCOMB_X59_Y29_N22
\u_tx|Selector374~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector374~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(130))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(130),
	combout => \u_tx|Selector374~0_combout\);

-- Location: FF_X59_Y29_N23
\u_tx|shift_reg[138]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector374~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(138));

-- Location: LCCOMB_X59_Y29_N28
\u_tx|Selector366~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector366~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(138))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(138),
	datab => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(101),
	combout => \u_tx|Selector366~0_combout\);

-- Location: FF_X59_Y29_N29
\u_tx|shift_reg[146]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector366~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(146));

-- Location: LCCOMB_X59_Y29_N10
\u_tx|Selector358~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector358~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(146)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(126)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(126),
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(146),
	combout => \u_tx|Selector358~0_combout\);

-- Location: FF_X59_Y29_N11
\u_tx|shift_reg[154]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector358~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(154));

-- Location: LCCOMB_X59_Y29_N24
\u_tx|Selector350~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector350~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(154))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(154),
	combout => \u_tx|Selector350~0_combout\);

-- Location: FF_X59_Y29_N25
\u_tx|shift_reg[162]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector350~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(162));

-- Location: LCCOMB_X59_Y29_N14
\u_tx|Selector342~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector342~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(162)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(126)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(126),
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(162),
	combout => \u_tx|Selector342~0_combout\);

-- Location: FF_X59_Y29_N15
\u_tx|shift_reg[170]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector342~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(170));

-- Location: LCCOMB_X59_Y29_N12
\u_tx|Selector334~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector334~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(170)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(105),
	datab => \u_tx|shift_reg\(170),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector334~0_combout\);

-- Location: FF_X59_Y29_N13
\u_tx|shift_reg[178]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector334~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(178));

-- Location: LCCOMB_X59_Y29_N26
\u_tx|Selector326~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector326~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(178)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(126)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(126),
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(178),
	combout => \u_tx|Selector326~0_combout\);

-- Location: FF_X59_Y29_N27
\u_tx|shift_reg[186]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector326~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(186));

-- Location: LCCOMB_X59_Y29_N20
\u_tx|Selector318~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector318~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(186)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(105),
	datab => \u_tx|state.S_IDLE~q\,
	datac => \u_tx|shift_reg\(186),
	combout => \u_tx|Selector318~0_combout\);

-- Location: FF_X59_Y29_N21
\u_tx|shift_reg[194]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector318~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(194));

-- Location: LCCOMB_X59_Y29_N6
\u_tx|Selector310~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector310~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(194)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(101),
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(194),
	combout => \u_tx|Selector310~0_combout\);

-- Location: FF_X59_Y29_N7
\u_tx|shift_reg[202]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector310~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(202));

-- Location: LCCOMB_X59_Y29_N8
\u_tx|Selector302~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector302~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(202))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(202),
	combout => \u_tx|Selector302~0_combout\);

-- Location: FF_X59_Y29_N9
\u_tx|shift_reg[210]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector302~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(210));

-- Location: LCCOMB_X59_Y29_N2
\u_tx|Selector294~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector294~0_combout\ = (\u_tx|shift_reg\(210) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(210),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector294~0_combout\);

-- Location: FF_X59_Y29_N3
\u_tx|shift_reg[218]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector294~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(218));

-- Location: LCCOMB_X59_Y29_N0
\u_tx|Selector286~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector286~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(218)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(105),
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(218),
	combout => \u_tx|Selector286~0_combout\);

-- Location: FF_X59_Y29_N1
\u_tx|shift_reg[226]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector286~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(226));

-- Location: LCCOMB_X59_Y29_N30
\u_tx|Selector278~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector278~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(226)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(126)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(126),
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(226),
	combout => \u_tx|Selector278~0_combout\);

-- Location: FF_X59_Y29_N31
\u_tx|shift_reg[234]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector278~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(234));

-- Location: LCCOMB_X56_Y28_N20
\u_tx|Selector270~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector270~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(234))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => \u_tx|shift_reg\(234),
	combout => \u_tx|Selector270~0_combout\);

-- Location: FF_X56_Y28_N21
\u_tx|shift_reg[242]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector270~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(242));

-- Location: LCCOMB_X56_Y28_N6
\u_tx|Selector262~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector262~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(242))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(242),
	combout => \u_tx|Selector262~0_combout\);

-- Location: FF_X56_Y28_N7
\u_tx|shift_reg[250]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector262~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(250));

-- Location: LCCOMB_X55_Y28_N22
\u_tx|Selector254~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector254~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(250)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(126)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(126),
	datad => \u_tx|shift_reg\(250),
	combout => \u_tx|Selector254~0_combout\);

-- Location: FF_X55_Y28_N23
\u_tx|shift_reg[258]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector254~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(258));

-- Location: LCCOMB_X55_Y28_N14
\u_tx|Selector246~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector246~0_combout\ = (\u_tx|shift_reg\(258) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(258),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector246~0_combout\);

-- Location: FF_X55_Y28_N15
\u_tx|shift_reg[266]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector246~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(266));

-- Location: LCCOMB_X56_Y28_N28
\u_tx|Selector238~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector238~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(266)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(105),
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(266),
	combout => \u_tx|Selector238~0_combout\);

-- Location: FF_X56_Y28_N29
\u_tx|shift_reg[274]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector238~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(274));

-- Location: LCCOMB_X56_Y28_N18
\u_tx|Selector230~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector230~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(274))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(274),
	combout => \u_tx|Selector230~0_combout\);

-- Location: FF_X56_Y28_N19
\u_tx|shift_reg[282]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector230~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(282));

-- Location: LCCOMB_X56_Y28_N8
\u_tx|Selector222~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector222~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(282))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(282),
	combout => \u_tx|Selector222~0_combout\);

-- Location: FF_X56_Y28_N9
\u_tx|shift_reg[290]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector222~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(290));

-- Location: LCCOMB_X56_Y26_N18
\u_tx|Selector214~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector214~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(290))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(290),
	combout => \u_tx|Selector214~0_combout\);

-- Location: FF_X56_Y26_N19
\u_tx|shift_reg[298]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector214~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(298));

-- Location: LCCOMB_X56_Y26_N10
\u_tx|Selector206~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector206~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(298))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(298),
	combout => \u_tx|Selector206~0_combout\);

-- Location: FF_X56_Y26_N11
\u_tx|shift_reg[306]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector206~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(306));

-- Location: LCCOMB_X56_Y26_N6
\u_tx|Selector198~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector198~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(306))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(306),
	combout => \u_tx|Selector198~0_combout\);

-- Location: FF_X56_Y26_N7
\u_tx|shift_reg[314]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector198~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(314));

-- Location: LCCOMB_X56_Y26_N22
\u_tx|Selector190~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector190~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(314))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(314),
	combout => \u_tx|Selector190~0_combout\);

-- Location: FF_X56_Y26_N23
\u_tx|shift_reg[322]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector190~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(322));

-- Location: LCCOMB_X56_Y26_N26
\u_tx|Selector182~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector182~0_combout\ = (\u_tx|shift_reg\(322) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(322),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector182~0_combout\);

-- Location: FF_X56_Y26_N27
\u_tx|shift_reg[330]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector182~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(330));

-- Location: LCCOMB_X56_Y28_N22
\u_tx|Selector174~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector174~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(330))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(330),
	combout => \u_tx|Selector174~0_combout\);

-- Location: FF_X56_Y28_N23
\u_tx|shift_reg[338]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector174~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(338));

-- Location: LCCOMB_X56_Y28_N10
\u_tx|Selector166~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector166~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(338))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => \u_tx|shift_reg\(338),
	combout => \u_tx|Selector166~0_combout\);

-- Location: FF_X56_Y28_N11
\u_tx|shift_reg[346]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector166~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(346));

-- Location: LCCOMB_X56_Y28_N4
\u_tx|Selector158~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector158~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(346))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(346),
	combout => \u_tx|Selector158~0_combout\);

-- Location: FF_X56_Y28_N5
\u_tx|shift_reg[354]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector158~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(354));

-- Location: LCCOMB_X56_Y28_N26
\u_tx|Selector150~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector150~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(354))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => \u_tx|shift_reg\(354),
	combout => \u_tx|Selector150~0_combout\);

-- Location: FF_X56_Y28_N27
\u_tx|shift_reg[362]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector150~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(362));

-- Location: LCCOMB_X56_Y28_N16
\u_tx|Selector142~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector142~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(362))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => \u_tx|shift_reg\(362),
	combout => \u_tx|Selector142~0_combout\);

-- Location: FF_X56_Y28_N17
\u_tx|shift_reg[370]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector142~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(370));

-- Location: LCCOMB_X56_Y26_N2
\u_tx|Selector134~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector134~0_combout\ = (\u_tx|shift_reg\(370) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(370),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector134~0_combout\);

-- Location: FF_X56_Y26_N3
\u_tx|shift_reg[378]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector134~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(378));

-- Location: LCCOMB_X56_Y26_N0
\u_tx|Selector126~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector126~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(378))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(378),
	combout => \u_tx|Selector126~0_combout\);

-- Location: FF_X56_Y26_N1
\u_tx|shift_reg[386]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector126~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(386));

-- Location: LCCOMB_X56_Y26_N14
\u_tx|Selector118~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector118~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(386))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(386),
	combout => \u_tx|Selector118~0_combout\);

-- Location: FF_X56_Y26_N15
\u_tx|shift_reg[394]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector118~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(394));

-- Location: LCCOMB_X56_Y26_N4
\u_tx|Selector110~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector110~0_combout\ = (\u_tx|shift_reg\(394) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(394),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector110~0_combout\);

-- Location: FF_X56_Y26_N5
\u_tx|shift_reg[402]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector110~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(402));

-- Location: LCCOMB_X55_Y26_N0
\u_tx|Selector102~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector102~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(402))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(402),
	combout => \u_tx|Selector102~0_combout\);

-- Location: FF_X55_Y26_N1
\u_tx|shift_reg[410]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector102~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(410));

-- Location: LCCOMB_X55_Y26_N18
\u_tx|Selector94~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector94~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(410))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(410),
	combout => \u_tx|Selector94~0_combout\);

-- Location: FF_X55_Y26_N19
\u_tx|shift_reg[418]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector94~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(418));

-- Location: LCCOMB_X55_Y26_N12
\u_tx|Selector86~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector86~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(418))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(418),
	combout => \u_tx|Selector86~0_combout\);

-- Location: FF_X55_Y26_N13
\u_tx|shift_reg[426]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector86~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(426));

-- Location: LCCOMB_X55_Y26_N10
\u_tx|Selector78~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector78~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(426))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(426),
	combout => \u_tx|Selector78~0_combout\);

-- Location: FF_X55_Y26_N11
\u_tx|shift_reg[434]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector78~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(434));

-- Location: LCCOMB_X55_Y26_N28
\u_tx|Selector70~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector70~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(434))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(434),
	combout => \u_tx|Selector70~0_combout\);

-- Location: FF_X55_Y26_N29
\u_tx|shift_reg[442]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector70~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(442));

-- Location: LCCOMB_X55_Y26_N22
\u_tx|Selector62~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector62~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(442))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(442),
	combout => \u_tx|Selector62~0_combout\);

-- Location: FF_X55_Y26_N23
\u_tx|shift_reg[450]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector62~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(450));

-- Location: LCCOMB_X55_Y26_N4
\u_tx|Selector54~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector54~0_combout\ = (\u_tx|shift_reg\(450) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(450),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector54~0_combout\);

-- Location: FF_X55_Y26_N5
\u_tx|shift_reg[458]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector54~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(458));

-- Location: LCCOMB_X55_Y26_N2
\u_tx|Selector46~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector46~0_combout\ = (\u_tx|shift_reg\(458) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(458),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector46~0_combout\);

-- Location: FF_X55_Y26_N3
\u_tx|shift_reg[466]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector46~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(466));

-- Location: LCCOMB_X55_Y26_N20
\u_tx|Selector38~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector38~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(466))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(466),
	combout => \u_tx|Selector38~0_combout\);

-- Location: FF_X55_Y26_N21
\u_tx|shift_reg[474]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector38~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(474));

-- Location: LCCOMB_X54_Y29_N8
\u_tx|Selector30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector30~0_combout\ = (\u_tx|shift_reg\(474) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(474),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector30~0_combout\);

-- Location: FF_X54_Y29_N9
\u_tx|shift_reg[482]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector30~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(482));

-- Location: LCCOMB_X54_Y29_N26
\u_tx|Selector22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector22~0_combout\ = (\u_tx|shift_reg\(482) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(482),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector22~0_combout\);

-- Location: FF_X55_Y29_N13
\u_tx|shift_reg[490]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_tx|Selector22~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(490));

-- Location: LCCOMB_X54_Y29_N10
\u_tx|Selector14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector14~0_combout\ = (\u_tx|shift_reg\(490) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(490),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector14~0_combout\);

-- Location: FF_X54_Y29_N11
\u_tx|shift_reg[498]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector14~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(498));

-- Location: LCCOMB_X54_Y29_N16
\u_tx|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector6~0_combout\ = (\u_tx|shift_reg\(498) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(498),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector6~0_combout\);

-- Location: FF_X55_Y29_N25
\u_tx|shift_reg[506]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_tx|Selector6~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(506));

-- Location: LCCOMB_X54_Y32_N12
\Selector449~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector449~9_combout\ = (\Selector449~7_combout\ & (!\delay_cnt[27]~93_combout\ & ((\tx_start~q\) # (\u_tx|tx_busy~q\)))) # (!\Selector449~7_combout\ & ((\tx_start~q\) # ((\u_tx|tx_busy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector449~7_combout\,
	datab => \tx_start~q\,
	datac => \delay_cnt[27]~93_combout\,
	datad => \u_tx|tx_busy~q\,
	combout => \Selector449~9_combout\);

-- Location: LCCOMB_X54_Y32_N16
\Selector449~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector449~6_combout\ = (\state.S_CIPSTART~q\ & ((current_cmd(100)) # ((!\always2~0_combout\)))) # (!\state.S_CIPSTART~q\ & (\state.S_CIPSEND~q\ & ((current_cmd(100)) # (!\always2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_CIPSTART~q\,
	datab => current_cmd(100),
	datac => \always2~0_combout\,
	datad => \state.S_CIPSEND~q\,
	combout => \Selector449~6_combout\);

-- Location: LCCOMB_X54_Y32_N4
\Selector449~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector449~8_combout\ = (\Selector449~6_combout\) # ((current_cmd(100) & ((\Selector449~9_combout\) # (!\Selector29~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector449~9_combout\,
	datab => \Selector29~3_combout\,
	datac => current_cmd(100),
	datad => \Selector449~6_combout\,
	combout => \Selector449~8_combout\);

-- Location: FF_X54_Y32_N5
\current_cmd[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector449~8_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(100));

-- Location: LCCOMB_X55_Y33_N26
\u_tx|Selector503~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector503~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(1),
	combout => \u_tx|Selector503~0_combout\);

-- Location: FF_X55_Y33_N27
\u_tx|shift_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector503~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(9));

-- Location: LCCOMB_X55_Y33_N6
\Selector489~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector489~0_combout\ = (\Selector29~3_combout\ & (((\Selector517~0_combout\ & !\state.S_CWMODE~q\)) # (!\always2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector517~0_combout\,
	datab => \state.S_CWMODE~q\,
	datac => \Selector29~3_combout\,
	datad => \always2~0_combout\,
	combout => \Selector489~0_combout\);

-- Location: LCCOMB_X53_Y33_N10
\WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (\u_button_3x3|key\(3) & ((\u_button_3x3|key\(0) & (\u_button_3x3|key\(1))) # (!\u_button_3x3|key\(0) & (!\u_button_3x3|key\(1) & \u_button_3x3|key\(2))))) # (!\u_button_3x3|key\(3) & (((\u_button_3x3|key\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_button_3x3|key\(3),
	datab => \u_button_3x3|key\(0),
	datac => \u_button_3x3|key\(1),
	datad => \u_button_3x3|key\(2),
	combout => \WideOr3~0_combout\);

-- Location: LCCOMB_X54_Y33_N28
\Selector532~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector532~0_combout\ = (!\always2~0_combout\ & (((\Selector530~1_combout\ & \WideOr3~0_combout\)) # (!\Selector490~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector490~7_combout\,
	datab => \always2~0_combout\,
	datac => \Selector530~1_combout\,
	datad => \WideOr3~0_combout\,
	combout => \Selector532~0_combout\);

-- Location: LCCOMB_X54_Y33_N14
\Selector532~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector532~1_combout\ = (\Selector532~0_combout\) # ((current_cmd(17) & ((!\Selector490~7_combout\) # (!\Selector489~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector489~0_combout\,
	datab => \Selector490~7_combout\,
	datac => current_cmd(17),
	datad => \Selector532~0_combout\,
	combout => \Selector532~1_combout\);

-- Location: FF_X54_Y33_N15
\current_cmd[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector532~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(17));

-- Location: LCCOMB_X55_Y33_N18
\u_tx|Selector495~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector495~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(9))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(9),
	datac => \u_tx|state.S_IDLE~q\,
	datad => current_cmd(17),
	combout => \u_tx|Selector495~0_combout\);

-- Location: FF_X55_Y33_N19
\u_tx|shift_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector495~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(17));

-- Location: LCCOMB_X59_Y30_N14
\u_tx|Selector487~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector487~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(17)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(25),
	datad => \u_tx|shift_reg\(17),
	combout => \u_tx|Selector487~0_combout\);

-- Location: FF_X59_Y30_N15
\u_tx|shift_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector487~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(25));

-- Location: LCCOMB_X59_Y30_N4
\u_tx|Selector479~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector479~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(25))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(25),
	datac => current_cmd(25),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector479~0_combout\);

-- Location: FF_X59_Y30_N5
\u_tx|shift_reg[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector479~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(33));

-- Location: LCCOMB_X55_Y33_N22
\Selector508~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector508~1_combout\ = ((\always2~0_combout\ & ((\state.S_SEND_DATA~q\) # (!\Selector449~7_combout\)))) # (!\Selector29~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_SEND_DATA~q\,
	datab => \Selector29~3_combout\,
	datac => \always2~0_combout\,
	datad => \Selector449~7_combout\,
	combout => \Selector508~1_combout\);

-- Location: LCCOMB_X55_Y33_N24
\Selector508~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector508~0_combout\ = (\state.S_AT_RST~q\) # ((\state.S_CIPSTART~q\) # (\state.S_CIPSEND~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S_AT_RST~q\,
	datac => \state.S_CIPSTART~q\,
	datad => \state.S_CIPSEND~q\,
	combout => \Selector508~0_combout\);

-- Location: LCCOMB_X55_Y33_N14
\Selector508~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector508~2_combout\ = (current_cmd(41) & ((\Selector508~1_combout\) # ((\Selector508~0_combout\)))) # (!current_cmd(41) & (((!\always2~0_combout\ & \Selector508~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector508~1_combout\,
	datab => \always2~0_combout\,
	datac => current_cmd(41),
	datad => \Selector508~0_combout\,
	combout => \Selector508~2_combout\);

-- Location: FF_X55_Y33_N15
\current_cmd[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector508~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(41));

-- Location: LCCOMB_X59_Y30_N6
\u_tx|Selector471~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector471~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(33))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(41))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(33),
	datac => current_cmd(41),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector471~0_combout\);

-- Location: FF_X59_Y30_N7
\u_tx|shift_reg[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector471~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(41));

-- Location: LCCOMB_X59_Y30_N8
\u_tx|Selector463~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector463~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(41)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(49),
	datad => \u_tx|shift_reg\(41),
	combout => \u_tx|Selector463~0_combout\);

-- Location: FF_X59_Y30_N9
\u_tx|shift_reg[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector463~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(49));

-- Location: LCCOMB_X59_Y30_N30
\u_tx|Selector455~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector455~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(49))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(57))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(49),
	datac => current_cmd(57),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector455~0_combout\);

-- Location: FF_X59_Y30_N31
\u_tx|shift_reg[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector455~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(57));

-- Location: LCCOMB_X59_Y30_N0
\u_tx|Selector447~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector447~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(57))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datac => \u_tx|shift_reg\(57),
	datad => current_cmd(32),
	combout => \u_tx|Selector447~0_combout\);

-- Location: FF_X59_Y30_N1
\u_tx|shift_reg[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector447~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(65));

-- Location: LCCOMB_X59_Y30_N2
\u_tx|Selector439~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector439~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(65)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(59)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(59),
	datab => \u_tx|shift_reg\(65),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector439~0_combout\);

-- Location: FF_X59_Y30_N3
\u_tx|shift_reg[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector439~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(73));

-- Location: LCCOMB_X59_Y32_N28
\u_tx|Selector431~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector431~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(73))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(102))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(73),
	datac => \u_tx|state.S_IDLE~q\,
	datad => current_cmd(102),
	combout => \u_tx|Selector431~0_combout\);

-- Location: FF_X59_Y32_N29
\u_tx|shift_reg[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector431~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(81));

-- Location: LCCOMB_X59_Y32_N12
\u_tx|Selector423~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector423~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(81)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(100)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(100),
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(81),
	combout => \u_tx|Selector423~0_combout\);

-- Location: FF_X59_Y32_N13
\u_tx|shift_reg[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector423~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(89));

-- Location: LCCOMB_X59_Y32_N26
\u_tx|Selector415~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector415~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(89)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(126)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(126),
	datad => \u_tx|shift_reg\(89),
	combout => \u_tx|Selector415~0_combout\);

-- Location: FF_X59_Y32_N27
\u_tx|shift_reg[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector415~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(97));

-- Location: LCCOMB_X59_Y32_N0
\u_tx|Selector407~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector407~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(97))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(105))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(97),
	datab => current_cmd(105),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector407~0_combout\);

-- Location: FF_X59_Y32_N1
\u_tx|shift_reg[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector407~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(105));

-- Location: LCCOMB_X59_Y32_N20
\u_tx|Selector399~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector399~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(105)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(101),
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(105),
	combout => \u_tx|Selector399~0_combout\);

-- Location: FF_X59_Y32_N21
\u_tx|shift_reg[113]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector399~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(113));

-- Location: LCCOMB_X59_Y32_N8
\u_tx|Selector391~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector391~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(113))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(113),
	combout => \u_tx|Selector391~0_combout\);

-- Location: FF_X59_Y32_N9
\u_tx|shift_reg[121]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector391~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(121));

-- Location: LCCOMB_X59_Y31_N10
\u_tx|Selector383~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector383~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(121))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(126))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(121),
	datac => current_cmd(126),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector383~0_combout\);

-- Location: FF_X59_Y31_N11
\u_tx|shift_reg[129]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector383~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(129));

-- Location: LCCOMB_X59_Y31_N12
\u_tx|Selector375~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector375~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(129))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(105))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(129),
	datab => current_cmd(105),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector375~0_combout\);

-- Location: FF_X59_Y31_N13
\u_tx|shift_reg[137]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector375~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(137));

-- Location: LCCOMB_X59_Y31_N14
\u_tx|Selector367~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector367~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(137))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(126))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(137),
	datac => current_cmd(126),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector367~0_combout\);

-- Location: FF_X59_Y31_N15
\u_tx|shift_reg[145]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector367~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(145));

-- Location: LCCOMB_X59_Y31_N4
\u_tx|Selector359~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector359~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(145)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(101),
	datac => \u_tx|shift_reg\(145),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector359~0_combout\);

-- Location: FF_X59_Y31_N5
\u_tx|shift_reg[153]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector359~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(153));

-- Location: LCCOMB_X59_Y31_N30
\u_tx|Selector351~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector351~0_combout\ = (\u_tx|shift_reg\(153) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(153),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector351~0_combout\);

-- Location: FF_X59_Y31_N31
\u_tx|shift_reg[161]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector351~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(161));

-- Location: LCCOMB_X59_Y31_N8
\u_tx|Selector343~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector343~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(161)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(101),
	datac => \u_tx|shift_reg\(161),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector343~0_combout\);

-- Location: FF_X59_Y31_N9
\u_tx|shift_reg[169]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector343~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(169));

-- Location: LCCOMB_X59_Y31_N18
\u_tx|Selector335~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector335~0_combout\ = (\u_tx|shift_reg\(169) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(169),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector335~0_combout\);

-- Location: FF_X59_Y31_N19
\u_tx|shift_reg[177]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector335~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(177));

-- Location: LCCOMB_X59_Y31_N20
\u_tx|Selector327~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector327~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(177)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(101),
	datab => \u_tx|shift_reg\(177),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector327~0_combout\);

-- Location: FF_X59_Y31_N21
\u_tx|shift_reg[185]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector327~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(185));

-- Location: LCCOMB_X59_Y31_N26
\u_tx|Selector319~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector319~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(185))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(126))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(185),
	datac => current_cmd(126),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector319~0_combout\);

-- Location: FF_X59_Y31_N27
\u_tx|shift_reg[193]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector319~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(193));

-- Location: LCCOMB_X59_Y31_N28
\u_tx|Selector311~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector311~0_combout\ = (\u_tx|shift_reg\(193) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(193),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector311~0_combout\);

-- Location: FF_X59_Y31_N29
\u_tx|shift_reg[201]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector311~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(201));

-- Location: LCCOMB_X59_Y31_N6
\u_tx|Selector303~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector303~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(201))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(105))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(201),
	datac => current_cmd(105),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector303~0_combout\);

-- Location: FF_X59_Y31_N7
\u_tx|shift_reg[209]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector303~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(209));

-- Location: LCCOMB_X59_Y31_N16
\u_tx|Selector295~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector295~0_combout\ = (\u_tx|shift_reg\(209) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(209),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector295~0_combout\);

-- Location: FF_X59_Y31_N17
\u_tx|shift_reg[217]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector295~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(217));

-- Location: LCCOMB_X59_Y31_N22
\u_tx|Selector287~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector287~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(217))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(126))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(217),
	datac => current_cmd(126),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector287~0_combout\);

-- Location: FF_X59_Y31_N23
\u_tx|shift_reg[225]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector287~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(225));

-- Location: LCCOMB_X59_Y31_N0
\u_tx|Selector279~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector279~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(225))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datac => \u_tx|shift_reg\(225),
	datad => current_cmd(101),
	combout => \u_tx|Selector279~0_combout\);

-- Location: FF_X59_Y31_N1
\u_tx|shift_reg[233]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector279~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(233));

-- Location: LCCOMB_X59_Y31_N2
\u_tx|Selector271~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector271~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(233))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(126))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(233),
	datac => current_cmd(126),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector271~0_combout\);

-- Location: FF_X59_Y31_N3
\u_tx|shift_reg[241]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector271~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(241));

-- Location: LCCOMB_X59_Y31_N24
\u_tx|Selector263~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector263~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(241))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(126))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(241),
	datac => current_cmd(126),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector263~0_combout\);

-- Location: FF_X59_Y31_N25
\u_tx|shift_reg[249]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector263~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(249));

-- Location: LCCOMB_X60_Y31_N2
\u_tx|Selector255~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector255~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(249)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(105),
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(249),
	combout => \u_tx|Selector255~0_combout\);

-- Location: FF_X60_Y31_N3
\u_tx|shift_reg[257]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector255~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(257));

-- Location: LCCOMB_X60_Y31_N12
\u_tx|Selector247~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector247~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(257)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(105),
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(257),
	combout => \u_tx|Selector247~0_combout\);

-- Location: FF_X60_Y31_N13
\u_tx|shift_reg[265]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector247~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(265));

-- Location: LCCOMB_X60_Y31_N18
\u_tx|Selector239~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector239~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(265))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(265),
	combout => \u_tx|Selector239~0_combout\);

-- Location: FF_X60_Y31_N19
\u_tx|shift_reg[273]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector239~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(273));

-- Location: LCCOMB_X60_Y31_N20
\u_tx|Selector231~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector231~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(273))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(273),
	combout => \u_tx|Selector231~0_combout\);

-- Location: FF_X60_Y31_N21
\u_tx|shift_reg[281]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector231~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(281));

-- Location: LCCOMB_X60_Y31_N10
\u_tx|Selector223~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector223~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(281))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(281),
	combout => \u_tx|Selector223~0_combout\);

-- Location: FF_X60_Y31_N11
\u_tx|shift_reg[289]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector223~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(289));

-- Location: LCCOMB_X60_Y31_N0
\u_tx|Selector215~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector215~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(289))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(289),
	combout => \u_tx|Selector215~0_combout\);

-- Location: FF_X60_Y31_N1
\u_tx|shift_reg[297]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector215~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(297));

-- Location: LCCOMB_X60_Y31_N22
\u_tx|Selector207~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector207~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(297))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(297),
	combout => \u_tx|Selector207~0_combout\);

-- Location: FF_X60_Y31_N23
\u_tx|shift_reg[305]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector207~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(305));

-- Location: LCCOMB_X60_Y31_N4
\u_tx|Selector199~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector199~0_combout\ = (\u_tx|shift_reg\(305) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(305),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector199~0_combout\);

-- Location: FF_X60_Y31_N5
\u_tx|shift_reg[313]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector199~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(313));

-- Location: LCCOMB_X60_Y28_N0
\u_tx|Selector191~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector191~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(313))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(313),
	combout => \u_tx|Selector191~0_combout\);

-- Location: FF_X60_Y28_N1
\u_tx|shift_reg[321]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector191~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(321));

-- Location: LCCOMB_X60_Y28_N24
\u_tx|Selector183~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector183~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(321))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(321),
	combout => \u_tx|Selector183~0_combout\);

-- Location: FF_X60_Y28_N25
\u_tx|shift_reg[329]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector183~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(329));

-- Location: LCCOMB_X56_Y28_N0
\u_tx|Selector175~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector175~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(329))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(329),
	combout => \u_tx|Selector175~0_combout\);

-- Location: FF_X56_Y28_N1
\u_tx|shift_reg[337]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector175~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(337));

-- Location: LCCOMB_X59_Y29_N4
\u_tx|Selector167~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector167~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(337))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(337),
	combout => \u_tx|Selector167~0_combout\);

-- Location: FF_X59_Y29_N5
\u_tx|shift_reg[345]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector167~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(345));

-- Location: LCCOMB_X59_Y33_N12
\u_tx|Selector159~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector159~0_combout\ = (\u_tx|shift_reg\(345) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(345),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector159~0_combout\);

-- Location: FF_X59_Y33_N13
\u_tx|shift_reg[353]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector159~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(353));

-- Location: LCCOMB_X59_Y33_N26
\u_tx|Selector151~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector151~0_combout\ = (\u_tx|shift_reg\(353) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(353),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector151~0_combout\);

-- Location: FF_X59_Y33_N27
\u_tx|shift_reg[361]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector151~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(361));

-- Location: LCCOMB_X59_Y33_N22
\u_tx|Selector143~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector143~0_combout\ = (\u_tx|shift_reg\(361) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(361),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector143~0_combout\);

-- Location: FF_X59_Y33_N23
\u_tx|shift_reg[369]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector143~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(369));

-- Location: LCCOMB_X59_Y33_N4
\u_tx|Selector135~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector135~0_combout\ = (\u_tx|shift_reg\(369) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(369),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector135~0_combout\);

-- Location: FF_X56_Y33_N3
\u_tx|shift_reg[377]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_tx|Selector135~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(377));

-- Location: LCCOMB_X59_Y33_N20
\u_tx|Selector127~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector127~0_combout\ = (\u_tx|shift_reg\(377) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(377),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector127~0_combout\);

-- Location: FF_X59_Y33_N21
\u_tx|shift_reg[385]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector127~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(385));

-- Location: LCCOMB_X59_Y33_N18
\u_tx|Selector119~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector119~0_combout\ = (\u_tx|shift_reg\(385) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(385),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector119~0_combout\);

-- Location: FF_X59_Y33_N19
\u_tx|shift_reg[393]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector119~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(393));

-- Location: LCCOMB_X59_Y33_N24
\u_tx|Selector111~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector111~0_combout\ = (\u_tx|shift_reg\(393) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(393),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector111~0_combout\);

-- Location: FF_X59_Y33_N25
\u_tx|shift_reg[401]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector111~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(401));

-- Location: LCCOMB_X59_Y33_N2
\u_tx|Selector103~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector103~0_combout\ = (\u_tx|shift_reg\(401) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(401),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector103~0_combout\);

-- Location: FF_X59_Y33_N3
\u_tx|shift_reg[409]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector103~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(409));

-- Location: LCCOMB_X59_Y33_N0
\u_tx|Selector95~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector95~0_combout\ = (\u_tx|shift_reg\(409) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(409),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector95~0_combout\);

-- Location: FF_X59_Y33_N1
\u_tx|shift_reg[417]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector95~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(417));

-- Location: LCCOMB_X59_Y33_N6
\u_tx|Selector87~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector87~0_combout\ = (\u_tx|shift_reg\(417) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(417),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector87~0_combout\);

-- Location: FF_X59_Y33_N7
\u_tx|shift_reg[425]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector87~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(425));

-- Location: LCCOMB_X57_Y33_N2
\u_tx|Selector79~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector79~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(425))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(425),
	combout => \u_tx|Selector79~0_combout\);

-- Location: FF_X57_Y33_N3
\u_tx|shift_reg[433]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector79~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(433));

-- Location: LCCOMB_X57_Y33_N0
\u_tx|Selector71~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector71~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(433))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(433),
	combout => \u_tx|Selector71~0_combout\);

-- Location: FF_X57_Y33_N1
\u_tx|shift_reg[441]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector71~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(441));

-- Location: LCCOMB_X57_Y33_N22
\u_tx|Selector63~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector63~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(441))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(441),
	combout => \u_tx|Selector63~0_combout\);

-- Location: FF_X57_Y33_N23
\u_tx|shift_reg[449]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector63~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(449));

-- Location: LCCOMB_X57_Y33_N16
\u_tx|Selector55~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector55~0_combout\ = (\u_tx|shift_reg\(449) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(449),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector55~0_combout\);

-- Location: FF_X57_Y33_N17
\u_tx|shift_reg[457]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector55~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(457));

-- Location: LCCOMB_X57_Y33_N30
\u_tx|Selector47~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector47~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(457))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(457),
	combout => \u_tx|Selector47~0_combout\);

-- Location: FF_X57_Y33_N31
\u_tx|shift_reg[465]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector47~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(465));

-- Location: LCCOMB_X57_Y32_N10
\u_tx|Selector39~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector39~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(465))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(465),
	combout => \u_tx|Selector39~0_combout\);

-- Location: FF_X57_Y32_N11
\u_tx|shift_reg[473]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector39~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(473));

-- Location: LCCOMB_X57_Y32_N8
\u_tx|Selector31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector31~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(473))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(473),
	combout => \u_tx|Selector31~0_combout\);

-- Location: FF_X57_Y32_N9
\u_tx|shift_reg[481]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector31~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(481));

-- Location: LCCOMB_X57_Y33_N4
\u_tx|Selector23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector23~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(481))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(481),
	combout => \u_tx|Selector23~0_combout\);

-- Location: FF_X57_Y33_N5
\u_tx|shift_reg[489]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector23~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(489));

-- Location: LCCOMB_X56_Y33_N20
\u_tx|Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector15~0_combout\ = (\u_tx|shift_reg\(489) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(489),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector15~0_combout\);

-- Location: FF_X56_Y33_N21
\u_tx|shift_reg[497]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector15~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(497));

-- Location: LCCOMB_X56_Y33_N2
\u_tx|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector7~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(497))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(497),
	combout => \u_tx|Selector7~0_combout\);

-- Location: FF_X56_Y29_N31
\u_tx|shift_reg[505]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_tx|Selector7~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(505));

-- Location: LCCOMB_X54_Y33_N20
\Selector489~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector489~1_combout\ = (\Selector490~7_combout\ & (((current_cmd(60) & !\Selector489~0_combout\)))) # (!\Selector490~7_combout\ & (((current_cmd(60))) # (!\always2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector490~7_combout\,
	datab => \always2~0_combout\,
	datac => current_cmd(60),
	datad => \Selector489~0_combout\,
	combout => \Selector489~1_combout\);

-- Location: FF_X54_Y33_N21
\current_cmd[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector489~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(60));

-- Location: LCCOMB_X53_Y31_N18
\Selector513~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector513~0_combout\ = (current_cmd(36) & ((\state.S_CWJAP~q\) # ((\state.S_AT_RST~q\)))) # (!current_cmd(36) & (!\always2~0_combout\ & ((\state.S_CWJAP~q\) # (\state.S_AT_RST~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(36),
	datab => \state.S_CWJAP~q\,
	datac => \state.S_AT_RST~q\,
	datad => \always2~0_combout\,
	combout => \Selector513~0_combout\);

-- Location: LCCOMB_X54_Y31_N24
\Selector513~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector513~1_combout\ = (\always2~0_combout\ & ((\state.S_CIPSTART~q\) # ((\state.S_SEND_DATA~q\) # (!\delay_cnt[27]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_CIPSTART~q\,
	datab => \delay_cnt[27]~85_combout\,
	datac => \always2~0_combout\,
	datad => \state.S_SEND_DATA~q\,
	combout => \Selector513~1_combout\);

-- Location: LCCOMB_X53_Y31_N0
\Selector513~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector513~2_combout\ = (\Selector513~0_combout\) # ((current_cmd(36) & ((\Selector513~1_combout\) # (!\Selector29~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector29~3_combout\,
	datab => \Selector513~0_combout\,
	datac => current_cmd(36),
	datad => \Selector513~1_combout\,
	combout => \Selector513~2_combout\);

-- Location: FF_X53_Y31_N1
\current_cmd[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector513~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(36));

-- Location: LCCOMB_X53_Y32_N16
\Selector521~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector521~4_combout\ = (current_cmd(28) & (((\always2~0_combout\ & \state.S_SEND_DATA~q\)) # (!\Selector29~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~0_combout\,
	datab => \state.S_SEND_DATA~q\,
	datac => \Selector29~3_combout\,
	datad => current_cmd(28),
	combout => \Selector521~4_combout\);

-- Location: LCCOMB_X53_Y32_N2
\Selector521~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector521~5_combout\ = (\Selector521~4_combout\) # ((\Selector521~6_combout\ & ((current_cmd(28)) # (!\always2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~0_combout\,
	datab => \Selector521~4_combout\,
	datac => current_cmd(28),
	datad => \Selector521~6_combout\,
	combout => \Selector521~5_combout\);

-- Location: FF_X53_Y32_N3
\current_cmd[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector521~5_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(28));

-- Location: LCCOMB_X52_Y33_N24
\Selector529~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector529~5_combout\ = (!\state.S_SEND_DATA~q\ & (!\state.S_CIPSTART~q\ & \Selector525~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S_SEND_DATA~q\,
	datac => \state.S_CIPSTART~q\,
	datad => \Selector525~1_combout\,
	combout => \Selector529~5_combout\);

-- Location: LCCOMB_X52_Y33_N16
\Selector529~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector529~12_combout\ = (\Selector29~3_combout\ & (((!\u_tx|tx_busy~q\ & !\tx_start~q\)) # (!\state.S_CWJAP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|tx_busy~q\,
	datab => \tx_start~q\,
	datac => \state.S_CWJAP~q\,
	datad => \Selector29~3_combout\,
	combout => \Selector529~12_combout\);

-- Location: LCCOMB_X52_Y33_N26
\Selector529~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector529~6_combout\ = (\Selector529~5_combout\ & (((current_cmd(20) & !\Selector529~12_combout\)))) # (!\Selector529~5_combout\ & (((current_cmd(20))) # (!\always2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~0_combout\,
	datab => \Selector529~5_combout\,
	datac => current_cmd(20),
	datad => \Selector529~12_combout\,
	combout => \Selector529~6_combout\);

-- Location: LCCOMB_X52_Y33_N10
\Selector529~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector529~4_combout\ = (\always2~0_combout\ & (current_cmd(20))) # (!\always2~0_combout\ & (((current_cmd(20) & !\Selector29~3_combout\)) # (!\Selector525~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~0_combout\,
	datab => current_cmd(20),
	datac => \Selector29~3_combout\,
	datad => \Selector525~1_combout\,
	combout => \Selector529~4_combout\);

-- Location: LCCOMB_X52_Y33_N2
\Selector529~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector529~11_combout\ = (\Selector529~4_combout\) # ((!\u_tx|tx_busy~q\ & (!\tx_start~q\ & \state.S_CIPSTART~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|tx_busy~q\,
	datab => \tx_start~q\,
	datac => \state.S_CIPSTART~q\,
	datad => \Selector529~4_combout\,
	combout => \Selector529~11_combout\);

-- Location: LCCOMB_X52_Y33_N4
\Selector529~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector529~7_combout\ = (\Selector529~6_combout\ & ((\Selector529~11_combout\) # (!\u_button_3x3|key\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_button_3x3|key\(4),
	datac => \Selector529~6_combout\,
	datad => \Selector529~11_combout\,
	combout => \Selector529~7_combout\);

-- Location: LCCOMB_X52_Y33_N30
\Selector529~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector529~8_combout\ = (\always2~0_combout\ & (current_cmd(20))) # (!\always2~0_combout\ & ((\state.S_CIPSTART~q\) # ((current_cmd(20) & !\Selector29~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~0_combout\,
	datab => current_cmd(20),
	datac => \state.S_CIPSTART~q\,
	datad => \Selector29~3_combout\,
	combout => \Selector529~8_combout\);

-- Location: LCCOMB_X52_Y33_N12
\Selector529~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector529~9_combout\ = (\Selector529~8_combout\) # (((!\Selector525~1_combout\ & !\always2~0_combout\)) # (!\u_button_3x3|key\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector525~1_combout\,
	datab => \always2~0_combout\,
	datac => \Selector529~8_combout\,
	datad => \u_button_3x3|key\(3),
	combout => \Selector529~9_combout\);

-- Location: LCCOMB_X52_Y33_N28
\Selector529~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector529~10_combout\ = (\Selector529~7_combout\ & ((\Selector529~9_combout\) # ((!\u_button_3x3|key\(1) & !\u_button_3x3|key\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_button_3x3|key\(1),
	datab => \u_button_3x3|key\(2),
	datac => \Selector529~7_combout\,
	datad => \Selector529~9_combout\,
	combout => \Selector529~10_combout\);

-- Location: FF_X52_Y33_N29
\current_cmd[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector529~10_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(20));

-- Location: LCCOMB_X56_Y32_N4
\u_tx|Selector492~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector492~0_combout\ = (current_cmd(20) & !\u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => current_cmd(20),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector492~0_combout\);

-- Location: FF_X56_Y32_N5
\u_tx|shift_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector492~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(20));

-- Location: LCCOMB_X55_Y32_N16
\u_tx|Selector484~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector484~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(20)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(28),
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(20),
	combout => \u_tx|Selector484~0_combout\);

-- Location: FF_X55_Y32_N17
\u_tx|shift_reg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector484~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(28));

-- Location: LCCOMB_X55_Y32_N20
\u_tx|Selector476~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector476~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(28)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(36)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(36),
	datad => \u_tx|shift_reg\(28),
	combout => \u_tx|Selector476~0_combout\);

-- Location: FF_X55_Y32_N21
\u_tx|shift_reg[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector476~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(36));

-- Location: LCCOMB_X55_Y32_N28
\u_tx|Selector468~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector468~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(36)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(126)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(126),
	datad => \u_tx|shift_reg\(36),
	combout => \u_tx|Selector468~0_combout\);

-- Location: FF_X55_Y32_N29
\u_tx|shift_reg[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector468~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(44));

-- Location: LCCOMB_X55_Y32_N12
\u_tx|Selector460~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector460~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(44)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(45)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(45),
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(44),
	combout => \u_tx|Selector460~0_combout\);

-- Location: FF_X55_Y32_N13
\u_tx|shift_reg[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector460~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(52));

-- Location: LCCOMB_X55_Y32_N4
\u_tx|Selector452~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector452~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(52)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(60)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(60),
	datad => \u_tx|shift_reg\(52),
	combout => \u_tx|Selector452~0_combout\);

-- Location: FF_X55_Y32_N5
\u_tx|shift_reg[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector452~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(60));

-- Location: LCCOMB_X55_Y32_N0
\u_tx|Selector444~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector444~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(60))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(60),
	datac => \u_tx|state.S_IDLE~q\,
	datad => current_cmd(29),
	combout => \u_tx|Selector444~0_combout\);

-- Location: FF_X55_Y32_N1
\u_tx|shift_reg[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector444~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(68));

-- Location: LCCOMB_X55_Y32_N8
\u_tx|Selector436~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector436~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(68)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(126)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(126),
	datad => \u_tx|shift_reg\(68),
	combout => \u_tx|Selector436~0_combout\);

-- Location: FF_X55_Y32_N9
\u_tx|shift_reg[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector436~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(76));

-- Location: LCCOMB_X55_Y32_N24
\u_tx|Selector428~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector428~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(76))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(76),
	datac => \u_tx|state.S_IDLE~q\,
	datad => current_cmd(101),
	combout => \u_tx|Selector428~0_combout\);

-- Location: FF_X55_Y32_N25
\u_tx|shift_reg[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector428~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(84));

-- Location: LCCOMB_X59_Y32_N4
\u_tx|Selector420~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector420~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(84)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(58)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(58),
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(84),
	combout => \u_tx|Selector420~0_combout\);

-- Location: FF_X59_Y32_N5
\u_tx|shift_reg[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector420~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(92));

-- Location: LCCOMB_X59_Y32_N22
\u_tx|Selector412~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector412~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(92)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(100)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(100),
	datab => \u_tx|shift_reg\(92),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector412~0_combout\);

-- Location: FF_X59_Y32_N23
\u_tx|shift_reg[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector412~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(100));

-- Location: LCCOMB_X60_Y29_N30
\u_tx|Selector404~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector404~0_combout\ = (\u_tx|shift_reg\(100) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(100),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector404~0_combout\);

-- Location: FF_X60_Y29_N31
\u_tx|shift_reg[108]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector404~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(108));

-- Location: LCCOMB_X57_Y27_N14
\u_tx|Selector396~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector396~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(108)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(105),
	datac => \u_tx|shift_reg\(108),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector396~0_combout\);

-- Location: FF_X57_Y27_N15
\u_tx|shift_reg[116]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector396~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(116));

-- Location: LCCOMB_X57_Y27_N28
\u_tx|Selector388~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector388~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(116)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(105),
	datac => \u_tx|shift_reg\(116),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector388~0_combout\);

-- Location: FF_X57_Y27_N29
\u_tx|shift_reg[124]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector388~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(124));

-- Location: LCCOMB_X57_Y27_N6
\u_tx|Selector380~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector380~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(124)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datab => current_cmd(105),
	datad => \u_tx|shift_reg\(124),
	combout => \u_tx|Selector380~0_combout\);

-- Location: FF_X57_Y27_N7
\u_tx|shift_reg[132]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector380~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(132));

-- Location: LCCOMB_X57_Y27_N0
\u_tx|Selector372~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector372~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(132))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(126))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(132),
	datac => current_cmd(126),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector372~0_combout\);

-- Location: FF_X57_Y27_N1
\u_tx|shift_reg[140]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector372~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(140));

-- Location: LCCOMB_X57_Y27_N10
\u_tx|Selector364~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector364~0_combout\ = (\u_tx|shift_reg\(140) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(140),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector364~0_combout\);

-- Location: FF_X57_Y27_N11
\u_tx|shift_reg[148]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector364~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(148));

-- Location: LCCOMB_X57_Y27_N8
\u_tx|Selector356~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector356~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(148))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(126))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(148),
	datac => current_cmd(126),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector356~0_combout\);

-- Location: FF_X57_Y27_N9
\u_tx|shift_reg[156]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector356~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(156));

-- Location: LCCOMB_X57_Y27_N26
\u_tx|Selector348~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector348~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(156)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(105),
	datac => \u_tx|shift_reg\(156),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector348~0_combout\);

-- Location: FF_X57_Y27_N27
\u_tx|shift_reg[164]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector348~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(164));

-- Location: LCCOMB_X57_Y27_N16
\u_tx|Selector340~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector340~0_combout\ = (\u_tx|shift_reg\(164) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(164),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector340~0_combout\);

-- Location: FF_X57_Y27_N17
\u_tx|shift_reg[172]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector340~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(172));

-- Location: LCCOMB_X57_Y27_N30
\u_tx|Selector332~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector332~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(172)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datab => current_cmd(105),
	datad => \u_tx|shift_reg\(172),
	combout => \u_tx|Selector332~0_combout\);

-- Location: FF_X57_Y27_N31
\u_tx|shift_reg[180]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector332~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(180));

-- Location: LCCOMB_X57_Y27_N24
\u_tx|Selector324~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector324~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(180))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(126))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(180),
	datac => current_cmd(126),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector324~0_combout\);

-- Location: FF_X57_Y27_N25
\u_tx|shift_reg[188]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector324~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(188));

-- Location: LCCOMB_X57_Y27_N18
\u_tx|Selector316~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector316~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(188)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datab => current_cmd(105),
	datad => \u_tx|shift_reg\(188),
	combout => \u_tx|Selector316~0_combout\);

-- Location: FF_X57_Y27_N19
\u_tx|shift_reg[196]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector316~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(196));

-- Location: LCCOMB_X57_Y27_N20
\u_tx|Selector308~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector308~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(196)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(101),
	datab => \u_tx|shift_reg\(196),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector308~0_combout\);

-- Location: FF_X57_Y27_N21
\u_tx|shift_reg[204]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector308~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(204));

-- Location: LCCOMB_X57_Y27_N22
\u_tx|Selector300~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector300~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(204)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(101),
	datab => \u_tx|shift_reg\(204),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector300~0_combout\);

-- Location: FF_X57_Y27_N23
\u_tx|shift_reg[212]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector300~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(212));

-- Location: LCCOMB_X57_Y27_N4
\u_tx|Selector292~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector292~0_combout\ = (\u_tx|shift_reg\(212) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(212),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector292~0_combout\);

-- Location: FF_X57_Y27_N5
\u_tx|shift_reg[220]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector292~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(220));

-- Location: LCCOMB_X57_Y27_N2
\u_tx|Selector284~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector284~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(220)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(105),
	datac => \u_tx|shift_reg\(220),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector284~0_combout\);

-- Location: FF_X57_Y27_N3
\u_tx|shift_reg[228]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector284~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(228));

-- Location: LCCOMB_X57_Y27_N12
\u_tx|Selector276~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector276~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(228)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(101),
	datab => \u_tx|shift_reg\(228),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector276~0_combout\);

-- Location: FF_X57_Y27_N13
\u_tx|shift_reg[236]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector276~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(236));

-- Location: LCCOMB_X56_Y27_N8
\u_tx|Selector268~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector268~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(236)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(105),
	datab => \u_tx|state.S_IDLE~q\,
	datac => \u_tx|shift_reg\(236),
	combout => \u_tx|Selector268~0_combout\);

-- Location: FF_X56_Y27_N9
\u_tx|shift_reg[244]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector268~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(244));

-- Location: LCCOMB_X55_Y28_N16
\u_tx|Selector260~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector260~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(244))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(244),
	combout => \u_tx|Selector260~0_combout\);

-- Location: FF_X55_Y28_N17
\u_tx|shift_reg[252]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector260~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(252));

-- Location: LCCOMB_X55_Y30_N2
\u_tx|Selector252~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector252~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(252)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(126)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(126),
	datac => \u_tx|shift_reg\(252),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector252~0_combout\);

-- Location: FF_X55_Y30_N3
\u_tx|shift_reg[260]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector252~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(260));

-- Location: LCCOMB_X55_Y30_N18
\u_tx|Selector244~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector244~0_combout\ = (\u_tx|shift_reg\(260) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(260),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector244~0_combout\);

-- Location: FF_X55_Y30_N19
\u_tx|shift_reg[268]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector244~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(268));

-- Location: LCCOMB_X55_Y30_N6
\u_tx|Selector236~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector236~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(268))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(105))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(268),
	datac => current_cmd(105),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector236~0_combout\);

-- Location: FF_X55_Y30_N7
\u_tx|shift_reg[276]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector236~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(276));

-- Location: LCCOMB_X55_Y26_N14
\u_tx|Selector228~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector228~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(276))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(276),
	combout => \u_tx|Selector228~0_combout\);

-- Location: FF_X55_Y26_N15
\u_tx|shift_reg[284]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector228~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(284));

-- Location: LCCOMB_X56_Y26_N24
\u_tx|Selector220~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector220~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(284))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(284),
	combout => \u_tx|Selector220~0_combout\);

-- Location: FF_X56_Y26_N25
\u_tx|shift_reg[292]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector220~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(292));

-- Location: LCCOMB_X56_Y26_N8
\u_tx|Selector212~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector212~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(292))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(292),
	combout => \u_tx|Selector212~0_combout\);

-- Location: FF_X56_Y26_N9
\u_tx|shift_reg[300]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector212~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(300));

-- Location: LCCOMB_X56_Y26_N16
\u_tx|Selector204~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector204~0_combout\ = (\u_tx|shift_reg\(300) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(300),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector204~0_combout\);

-- Location: FF_X56_Y26_N17
\u_tx|shift_reg[308]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector204~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(308));

-- Location: LCCOMB_X56_Y26_N20
\u_tx|Selector196~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector196~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(308))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(308),
	combout => \u_tx|Selector196~0_combout\);

-- Location: FF_X56_Y26_N21
\u_tx|shift_reg[316]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector196~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(316));

-- Location: LCCOMB_X56_Y26_N12
\u_tx|Selector188~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector188~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(316))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(316),
	combout => \u_tx|Selector188~0_combout\);

-- Location: FF_X56_Y26_N13
\u_tx|shift_reg[324]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector188~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(324));

-- Location: LCCOMB_X56_Y26_N28
\u_tx|Selector180~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector180~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(324))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(324),
	combout => \u_tx|Selector180~0_combout\);

-- Location: FF_X56_Y26_N29
\u_tx|shift_reg[332]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector180~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(332));

-- Location: LCCOMB_X55_Y26_N24
\u_tx|Selector172~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector172~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(332))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(332),
	combout => \u_tx|Selector172~0_combout\);

-- Location: FF_X55_Y26_N25
\u_tx|shift_reg[340]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector172~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(340));

-- Location: LCCOMB_X55_Y26_N26
\u_tx|Selector164~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector164~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(340))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(340),
	combout => \u_tx|Selector164~0_combout\);

-- Location: FF_X55_Y26_N27
\u_tx|shift_reg[348]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector164~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(348));

-- Location: LCCOMB_X55_Y28_N4
\u_tx|Selector156~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector156~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(348))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => \u_tx|shift_reg\(348),
	combout => \u_tx|Selector156~0_combout\);

-- Location: FF_X55_Y28_N5
\u_tx|shift_reg[356]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector156~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(356));

-- Location: LCCOMB_X54_Y28_N16
\u_tx|Selector148~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector148~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(356))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(356),
	combout => \u_tx|Selector148~0_combout\);

-- Location: FF_X54_Y28_N17
\u_tx|shift_reg[364]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector148~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(364));

-- Location: LCCOMB_X54_Y28_N18
\u_tx|Selector140~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector140~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(364))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(364),
	combout => \u_tx|Selector140~0_combout\);

-- Location: FF_X54_Y28_N19
\u_tx|shift_reg[372]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector140~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(372));

-- Location: LCCOMB_X54_Y28_N28
\u_tx|Selector132~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector132~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(372))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(372),
	combout => \u_tx|Selector132~0_combout\);

-- Location: FF_X54_Y28_N29
\u_tx|shift_reg[380]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector132~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(380));

-- Location: LCCOMB_X54_Y28_N6
\u_tx|Selector124~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector124~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(380))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(380),
	combout => \u_tx|Selector124~0_combout\);

-- Location: FF_X54_Y28_N7
\u_tx|shift_reg[388]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector124~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(388));

-- Location: LCCOMB_X54_Y28_N24
\u_tx|Selector116~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector116~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(388))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(388),
	combout => \u_tx|Selector116~0_combout\);

-- Location: FF_X54_Y28_N25
\u_tx|shift_reg[396]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector116~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(396));

-- Location: LCCOMB_X54_Y28_N26
\u_tx|Selector108~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector108~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(396))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(396),
	combout => \u_tx|Selector108~0_combout\);

-- Location: FF_X54_Y28_N27
\u_tx|shift_reg[404]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector108~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(404));

-- Location: LCCOMB_X54_Y28_N0
\u_tx|Selector100~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector100~0_combout\ = (\u_tx|shift_reg\(404) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(404),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector100~0_combout\);

-- Location: FF_X54_Y28_N1
\u_tx|shift_reg[412]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector100~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(412));

-- Location: LCCOMB_X54_Y28_N22
\u_tx|Selector92~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector92~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(412))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(412),
	combout => \u_tx|Selector92~0_combout\);

-- Location: FF_X54_Y28_N23
\u_tx|shift_reg[420]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector92~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(420));

-- Location: LCCOMB_X54_Y28_N12
\u_tx|Selector84~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector84~0_combout\ = (\u_tx|shift_reg\(420) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(420),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector84~0_combout\);

-- Location: FF_X54_Y28_N13
\u_tx|shift_reg[428]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector84~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(428));

-- Location: LCCOMB_X54_Y28_N14
\u_tx|Selector76~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector76~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(428))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(428),
	combout => \u_tx|Selector76~0_combout\);

-- Location: FF_X54_Y28_N15
\u_tx|shift_reg[436]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector76~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(436));

-- Location: LCCOMB_X54_Y28_N20
\u_tx|Selector68~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector68~0_combout\ = (\u_tx|shift_reg\(436) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(436),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector68~0_combout\);

-- Location: FF_X54_Y28_N21
\u_tx|shift_reg[444]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector68~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(444));

-- Location: LCCOMB_X54_Y28_N2
\u_tx|Selector60~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector60~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(444))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(444),
	combout => \u_tx|Selector60~0_combout\);

-- Location: FF_X54_Y28_N3
\u_tx|shift_reg[452]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector60~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(452));

-- Location: LCCOMB_X54_Y28_N4
\u_tx|Selector52~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector52~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(452))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(452),
	combout => \u_tx|Selector52~0_combout\);

-- Location: FF_X54_Y28_N5
\u_tx|shift_reg[460]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector52~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(460));

-- Location: LCCOMB_X54_Y28_N8
\u_tx|Selector44~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector44~0_combout\ = (\u_tx|shift_reg\(460) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(460),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector44~0_combout\);

-- Location: FF_X54_Y28_N9
\u_tx|shift_reg[468]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector44~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(468));

-- Location: LCCOMB_X54_Y28_N10
\u_tx|Selector36~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector36~0_combout\ = (\u_tx|shift_reg\(468) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(468),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector36~0_combout\);

-- Location: FF_X54_Y29_N23
\u_tx|shift_reg[476]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_tx|Selector36~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(476));

-- Location: LCCOMB_X54_Y29_N2
\u_tx|Selector28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector28~0_combout\ = (\u_tx|shift_reg\(476) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(476),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector28~0_combout\);

-- Location: FF_X55_Y29_N17
\u_tx|shift_reg[484]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_tx|Selector28~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(484));

-- Location: LCCOMB_X54_Y29_N22
\u_tx|Selector20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector20~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(484))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(484),
	combout => \u_tx|Selector20~0_combout\);

-- Location: FF_X55_Y29_N11
\u_tx|shift_reg[492]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_tx|Selector20~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(492));

-- Location: LCCOMB_X54_Y29_N20
\u_tx|Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector12~0_combout\ = (\u_tx|shift_reg\(492) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(492),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector12~0_combout\);

-- Location: FF_X54_Y29_N21
\u_tx|shift_reg[500]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector12~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(500));

-- Location: LCCOMB_X54_Y29_N14
\u_tx|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector4~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(500))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(500),
	combout => \u_tx|Selector4~0_combout\);

-- Location: FF_X55_Y29_N23
\u_tx|shift_reg[508]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_tx|Selector4~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(508));

-- Location: LCCOMB_X56_Y29_N30
\u_tx|always1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|always1~1_combout\ = (!\u_tx|shift_reg\(507) & (!\u_tx|shift_reg\(506) & (!\u_tx|shift_reg\(505) & !\u_tx|shift_reg\(508))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(507),
	datab => \u_tx|shift_reg\(506),
	datac => \u_tx|shift_reg\(505),
	datad => \u_tx|shift_reg\(508),
	combout => \u_tx|always1~1_combout\);

-- Location: LCCOMB_X53_Y33_N18
\WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = \u_button_3x3|key\(0) $ (((\u_button_3x3|key\(3) & ((\u_button_3x3|key\(2)) # (\u_button_3x3|key\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_button_3x3|key\(3),
	datab => \u_button_3x3|key\(2),
	datac => \u_button_3x3|key\(1),
	datad => \u_button_3x3|key\(0),
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X54_Y33_N10
\Selector533~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector533~0_combout\ = (!\always2~0_combout\ & (((\Selector530~1_combout\ & \WideOr4~0_combout\)) # (!\delay_cnt[27]~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay_cnt[27]~85_combout\,
	datab => \always2~0_combout\,
	datac => \Selector530~1_combout\,
	datad => \WideOr4~0_combout\,
	combout => \Selector533~0_combout\);

-- Location: LCCOMB_X54_Y33_N0
\Selector533~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector533~1_combout\ = (\Selector533~0_combout\) # ((current_cmd(16) & ((!\Selector447~4_combout\) # (!\delay_cnt[27]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay_cnt[27]~85_combout\,
	datab => \Selector447~4_combout\,
	datac => current_cmd(16),
	datad => \Selector533~0_combout\,
	combout => \Selector533~1_combout\);

-- Location: FF_X54_Y33_N1
\current_cmd[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector533~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(16));

-- Location: LCCOMB_X57_Y32_N16
\u_tx|Selector496~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector496~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(10)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(16),
	datad => \u_tx|shift_reg\(10),
	combout => \u_tx|Selector496~0_combout\);

-- Location: FF_X57_Y32_N17
\u_tx|shift_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector496~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(16));

-- Location: LCCOMB_X57_Y32_N6
\u_tx|Selector488~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector488~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(16)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(24),
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(16),
	combout => \u_tx|Selector488~0_combout\);

-- Location: FF_X57_Y32_N7
\u_tx|shift_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector488~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(24));

-- Location: LCCOMB_X57_Y32_N2
\u_tx|Selector480~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector480~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(24)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(32)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(32),
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(24),
	combout => \u_tx|Selector480~0_combout\);

-- Location: FF_X57_Y32_N3
\u_tx|shift_reg[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector480~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(32));

-- Location: LCCOMB_X57_Y32_N18
\u_tx|Selector472~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector472~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(32)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(25),
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(32),
	combout => \u_tx|Selector472~0_combout\);

-- Location: FF_X57_Y32_N19
\u_tx|shift_reg[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector472~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(40));

-- Location: LCCOMB_X56_Y28_N2
\u_tx|Selector464~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector464~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(40)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(27),
	datad => \u_tx|shift_reg\(40),
	combout => \u_tx|Selector464~0_combout\);

-- Location: FF_X56_Y28_N3
\u_tx|shift_reg[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector464~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(48));

-- Location: LCCOMB_X55_Y33_N12
\Selector493~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector493~0_combout\ = (\state.S_CIPSEND~q\) # ((\state.S_CWJAP~q\) # ((\state.S_AT_RST~q\) # (\state.S_CWMODE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_CIPSEND~q\,
	datab => \state.S_CWJAP~q\,
	datac => \state.S_AT_RST~q\,
	datad => \state.S_CWMODE~q\,
	combout => \Selector493~0_combout\);

-- Location: LCCOMB_X55_Y33_N2
\Selector493~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector493~1_combout\ = ((\always2~0_combout\ & ((\state.S_CIPSTART~q\) # (\state.S_SEND_DATA~q\)))) # (!\Selector29~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_CIPSTART~q\,
	datab => \Selector29~3_combout\,
	datac => \always2~0_combout\,
	datad => \state.S_SEND_DATA~q\,
	combout => \Selector493~1_combout\);

-- Location: LCCOMB_X55_Y33_N4
\Selector493~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector493~2_combout\ = (\Selector493~0_combout\ & (((current_cmd(56))) # (!\always2~0_combout\))) # (!\Selector493~0_combout\ & (((current_cmd(56) & \Selector493~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector493~0_combout\,
	datab => \always2~0_combout\,
	datac => current_cmd(56),
	datad => \Selector493~1_combout\,
	combout => \Selector493~2_combout\);

-- Location: FF_X55_Y33_N5
\current_cmd[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector493~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(56));

-- Location: LCCOMB_X56_Y28_N24
\u_tx|Selector456~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector456~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(48))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(48),
	datac => \u_tx|state.S_IDLE~q\,
	datad => current_cmd(56),
	combout => \u_tx|Selector456~0_combout\);

-- Location: FF_X56_Y28_N25
\u_tx|shift_reg[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector456~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(56));

-- Location: LCCOMB_X59_Y28_N26
\u_tx|Selector448~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector448~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(56)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(32)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(32),
	datad => \u_tx|shift_reg\(56),
	combout => \u_tx|Selector448~0_combout\);

-- Location: FF_X59_Y28_N27
\u_tx|shift_reg[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector448~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(64));

-- Location: LCCOMB_X60_Y32_N16
\u_tx|Selector440~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector440~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(64)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(102)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datab => current_cmd(102),
	datac => \u_tx|shift_reg\(64),
	combout => \u_tx|Selector440~0_combout\);

-- Location: FF_X60_Y32_N17
\u_tx|shift_reg[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector440~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(72));

-- Location: LCCOMB_X60_Y32_N12
\u_tx|Selector432~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector432~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(72)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(102)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(102),
	datad => \u_tx|shift_reg\(72),
	combout => \u_tx|Selector432~0_combout\);

-- Location: FF_X60_Y32_N13
\u_tx|shift_reg[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector432~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(80));

-- Location: LCCOMB_X57_Y28_N28
\u_tx|Selector424~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector424~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(80)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(104)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(104),
	datad => \u_tx|shift_reg\(80),
	combout => \u_tx|Selector424~0_combout\);

-- Location: FF_X57_Y28_N29
\u_tx|shift_reg[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector424~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(88));

-- Location: LCCOMB_X57_Y28_N30
\u_tx|Selector416~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector416~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(88))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(59))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(88),
	datac => current_cmd(59),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector416~0_combout\);

-- Location: FF_X57_Y28_N31
\u_tx|shift_reg[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector416~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(96));

-- Location: LCCOMB_X57_Y28_N22
\u_tx|Selector408~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector408~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(96))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(104))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(96),
	datac => current_cmd(104),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector408~0_combout\);

-- Location: FF_X57_Y28_N23
\u_tx|shift_reg[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector408~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(104));

-- Location: LCCOMB_X57_Y28_N14
\u_tx|Selector400~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector400~0_combout\ = (\u_tx|shift_reg\(104) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(104),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector400~0_combout\);

-- Location: FF_X57_Y28_N15
\u_tx|shift_reg[112]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector400~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(112));

-- Location: LCCOMB_X57_Y28_N16
\u_tx|Selector392~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector392~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(112)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(101),
	datab => \u_tx|shift_reg\(112),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector392~0_combout\);

-- Location: FF_X57_Y28_N17
\u_tx|shift_reg[120]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector392~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(120));

-- Location: LCCOMB_X56_Y27_N24
\u_tx|Selector384~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector384~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(120)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(101),
	datad => \u_tx|shift_reg\(120),
	combout => \u_tx|Selector384~0_combout\);

-- Location: FF_X56_Y27_N25
\u_tx|shift_reg[128]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector384~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(128));

-- Location: LCCOMB_X56_Y27_N18
\u_tx|Selector376~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector376~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(128))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(128),
	combout => \u_tx|Selector376~0_combout\);

-- Location: FF_X56_Y27_N19
\u_tx|shift_reg[136]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector376~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(136));

-- Location: LCCOMB_X56_Y27_N28
\u_tx|Selector368~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector368~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(136))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(136),
	combout => \u_tx|Selector368~0_combout\);

-- Location: FF_X56_Y27_N29
\u_tx|shift_reg[144]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector368~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(144));

-- Location: LCCOMB_X56_Y27_N22
\u_tx|Selector360~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector360~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(144)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(126)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(126),
	datad => \u_tx|shift_reg\(144),
	combout => \u_tx|Selector360~0_combout\);

-- Location: FF_X56_Y27_N23
\u_tx|shift_reg[152]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector360~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(152));

-- Location: LCCOMB_X56_Y27_N20
\u_tx|Selector352~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector352~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(152))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(126))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(152),
	datab => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(126),
	combout => \u_tx|Selector352~0_combout\);

-- Location: FF_X56_Y27_N21
\u_tx|shift_reg[160]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector352~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(160));

-- Location: LCCOMB_X56_Y27_N30
\u_tx|Selector344~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector344~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(160)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(105),
	datad => \u_tx|shift_reg\(160),
	combout => \u_tx|Selector344~0_combout\);

-- Location: FF_X56_Y27_N31
\u_tx|shift_reg[168]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector344~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(168));

-- Location: LCCOMB_X56_Y27_N12
\u_tx|Selector336~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector336~0_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|shift_reg\(168))) # (!\u_tx|state.S_IDLE~q\ & ((current_cmd(126))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(168),
	datab => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(126),
	combout => \u_tx|Selector336~0_combout\);

-- Location: FF_X56_Y27_N13
\u_tx|shift_reg[176]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector336~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(176));

-- Location: LCCOMB_X56_Y27_N2
\u_tx|Selector328~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector328~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(176)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(126)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(126),
	datad => \u_tx|shift_reg\(176),
	combout => \u_tx|Selector328~0_combout\);

-- Location: FF_X56_Y27_N3
\u_tx|shift_reg[184]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector328~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(184));

-- Location: LCCOMB_X56_Y27_N16
\u_tx|Selector320~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector320~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(184)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(105),
	datad => \u_tx|shift_reg\(184),
	combout => \u_tx|Selector320~0_combout\);

-- Location: FF_X56_Y27_N17
\u_tx|shift_reg[192]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector320~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(192));

-- Location: LCCOMB_X56_Y27_N10
\u_tx|Selector312~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector312~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(192)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(126)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(126),
	datad => \u_tx|shift_reg\(192),
	combout => \u_tx|Selector312~0_combout\);

-- Location: FF_X56_Y27_N11
\u_tx|shift_reg[200]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector312~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(200));

-- Location: LCCOMB_X56_Y27_N4
\u_tx|Selector304~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector304~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(200))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(200),
	combout => \u_tx|Selector304~0_combout\);

-- Location: FF_X56_Y27_N5
\u_tx|shift_reg[208]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector304~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(208));

-- Location: LCCOMB_X56_Y27_N6
\u_tx|Selector296~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector296~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(208)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(101),
	datac => \u_tx|shift_reg\(208),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector296~0_combout\);

-- Location: FF_X56_Y27_N7
\u_tx|shift_reg[216]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector296~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(216));

-- Location: LCCOMB_X55_Y27_N0
\u_tx|Selector288~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector288~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(216))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(216),
	combout => \u_tx|Selector288~0_combout\);

-- Location: FF_X55_Y27_N1
\u_tx|shift_reg[224]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector288~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(224));

-- Location: LCCOMB_X55_Y28_N10
\u_tx|Selector280~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector280~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(224)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(101),
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(224),
	combout => \u_tx|Selector280~0_combout\);

-- Location: FF_X55_Y28_N11
\u_tx|shift_reg[232]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector280~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(232));

-- Location: LCCOMB_X55_Y28_N8
\u_tx|Selector272~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector272~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(232)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(126)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => current_cmd(126),
	datad => \u_tx|shift_reg\(232),
	combout => \u_tx|Selector272~0_combout\);

-- Location: FF_X55_Y28_N9
\u_tx|shift_reg[240]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector272~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(240));

-- Location: LCCOMB_X55_Y28_N6
\u_tx|Selector264~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector264~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(240)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(101),
	datab => \u_tx|shift_reg\(240),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector264~0_combout\);

-- Location: FF_X55_Y28_N7
\u_tx|shift_reg[248]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector264~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(248));

-- Location: LCCOMB_X55_Y28_N28
\u_tx|Selector256~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector256~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(248)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(105),
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(248),
	combout => \u_tx|Selector256~0_combout\);

-- Location: FF_X55_Y28_N29
\u_tx|shift_reg[256]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector256~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(256));

-- Location: LCCOMB_X55_Y28_N24
\u_tx|Selector248~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector248~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(256)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(101),
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(256),
	combout => \u_tx|Selector248~0_combout\);

-- Location: FF_X55_Y28_N25
\u_tx|shift_reg[264]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector248~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(264));

-- Location: LCCOMB_X55_Y28_N18
\u_tx|Selector240~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector240~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(264))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(264),
	combout => \u_tx|Selector240~0_combout\);

-- Location: FF_X55_Y28_N19
\u_tx|shift_reg[272]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector240~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(272));

-- Location: LCCOMB_X55_Y28_N20
\u_tx|Selector232~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector232~0_combout\ = (\u_tx|state.S_IDLE~q\ & ((\u_tx|shift_reg\(272)))) # (!\u_tx|state.S_IDLE~q\ & (current_cmd(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(105),
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(272),
	combout => \u_tx|Selector232~0_combout\);

-- Location: FF_X55_Y28_N21
\u_tx|shift_reg[280]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector232~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(280));

-- Location: LCCOMB_X55_Y28_N2
\u_tx|Selector224~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector224~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(280))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(280),
	combout => \u_tx|Selector224~0_combout\);

-- Location: FF_X55_Y28_N3
\u_tx|shift_reg[288]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector224~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(288));

-- Location: LCCOMB_X55_Y28_N12
\u_tx|Selector216~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector216~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(288))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(288),
	combout => \u_tx|Selector216~0_combout\);

-- Location: FF_X55_Y28_N13
\u_tx|shift_reg[296]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector216~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(296));

-- Location: LCCOMB_X55_Y28_N30
\u_tx|Selector208~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector208~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(296))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(296),
	combout => \u_tx|Selector208~0_combout\);

-- Location: FF_X55_Y28_N31
\u_tx|shift_reg[304]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector208~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(304));

-- Location: LCCOMB_X55_Y28_N0
\u_tx|Selector200~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector200~0_combout\ = (\u_tx|shift_reg\(304) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(304),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector200~0_combout\);

-- Location: FF_X55_Y28_N1
\u_tx|shift_reg[312]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector200~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(312));

-- Location: LCCOMB_X55_Y28_N26
\u_tx|Selector192~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector192~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(312))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(312),
	combout => \u_tx|Selector192~0_combout\);

-- Location: FF_X55_Y28_N27
\u_tx|shift_reg[320]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector192~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(320));

-- Location: LCCOMB_X56_Y28_N14
\u_tx|Selector184~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector184~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(320))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => \u_tx|shift_reg\(320),
	combout => \u_tx|Selector184~0_combout\);

-- Location: FF_X56_Y28_N15
\u_tx|shift_reg[328]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector184~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(328));

-- Location: LCCOMB_X56_Y28_N12
\u_tx|Selector176~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector176~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(328))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => \u_tx|shift_reg\(328),
	combout => \u_tx|Selector176~0_combout\);

-- Location: FF_X56_Y28_N13
\u_tx|shift_reg[336]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector176~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(336));

-- Location: LCCOMB_X56_Y32_N12
\u_tx|Selector168~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector168~0_combout\ = (\u_tx|shift_reg\(336) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(336),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector168~0_combout\);

-- Location: FF_X56_Y32_N13
\u_tx|shift_reg[344]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector168~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(344));

-- Location: LCCOMB_X56_Y32_N18
\u_tx|Selector160~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector160~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(344))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(344),
	combout => \u_tx|Selector160~0_combout\);

-- Location: FF_X56_Y32_N19
\u_tx|shift_reg[352]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector160~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(352));

-- Location: LCCOMB_X56_Y32_N8
\u_tx|Selector152~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector152~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(352))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(352),
	combout => \u_tx|Selector152~0_combout\);

-- Location: FF_X56_Y32_N9
\u_tx|shift_reg[360]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector152~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(360));

-- Location: LCCOMB_X57_Y32_N22
\u_tx|Selector144~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector144~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(360))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(360),
	combout => \u_tx|Selector144~0_combout\);

-- Location: FF_X57_Y32_N23
\u_tx|shift_reg[368]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector144~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(368));

-- Location: LCCOMB_X56_Y32_N2
\u_tx|Selector136~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector136~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(368))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(368),
	combout => \u_tx|Selector136~0_combout\);

-- Location: FF_X56_Y32_N3
\u_tx|shift_reg[376]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector136~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(376));

-- Location: LCCOMB_X56_Y32_N28
\u_tx|Selector128~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector128~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(376))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(376),
	combout => \u_tx|Selector128~0_combout\);

-- Location: FF_X56_Y32_N29
\u_tx|shift_reg[384]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector128~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(384));

-- Location: LCCOMB_X56_Y32_N26
\u_tx|Selector120~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector120~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(384))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(384),
	combout => \u_tx|Selector120~0_combout\);

-- Location: FF_X56_Y32_N27
\u_tx|shift_reg[392]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector120~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(392));

-- Location: LCCOMB_X56_Y32_N20
\u_tx|Selector112~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector112~0_combout\ = (\u_tx|shift_reg\(392) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(392),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector112~0_combout\);

-- Location: FF_X56_Y32_N21
\u_tx|shift_reg[400]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector112~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(400));

-- Location: LCCOMB_X56_Y32_N10
\u_tx|Selector104~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector104~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(400))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(400),
	combout => \u_tx|Selector104~0_combout\);

-- Location: FF_X56_Y32_N11
\u_tx|shift_reg[408]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector104~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(408));

-- Location: LCCOMB_X56_Y32_N16
\u_tx|Selector96~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector96~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(408))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(408),
	combout => \u_tx|Selector96~0_combout\);

-- Location: FF_X56_Y32_N17
\u_tx|shift_reg[416]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector96~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(416));

-- Location: LCCOMB_X56_Y32_N30
\u_tx|Selector88~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector88~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(416))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(416),
	combout => \u_tx|Selector88~0_combout\);

-- Location: FF_X56_Y32_N31
\u_tx|shift_reg[424]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector88~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(424));

-- Location: LCCOMB_X56_Y32_N0
\u_tx|Selector80~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector80~0_combout\ = (\u_tx|shift_reg\(424) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(424),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector80~0_combout\);

-- Location: FF_X56_Y32_N1
\u_tx|shift_reg[432]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector80~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(432));

-- Location: LCCOMB_X56_Y32_N22
\u_tx|Selector72~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector72~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(432))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(432),
	combout => \u_tx|Selector72~0_combout\);

-- Location: FF_X56_Y32_N23
\u_tx|shift_reg[440]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector72~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(440));

-- Location: LCCOMB_X56_Y32_N24
\u_tx|Selector64~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector64~0_combout\ = (\u_tx|shift_reg\(440) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(440),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector64~0_combout\);

-- Location: FF_X56_Y32_N25
\u_tx|shift_reg[448]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector64~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(448));

-- Location: LCCOMB_X57_Y32_N0
\u_tx|Selector56~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector56~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(448))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(448),
	combout => \u_tx|Selector56~0_combout\);

-- Location: FF_X57_Y32_N1
\u_tx|shift_reg[456]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector56~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(456));

-- Location: LCCOMB_X57_Y33_N24
\u_tx|Selector48~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector48~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(456))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(456),
	combout => \u_tx|Selector48~0_combout\);

-- Location: FF_X57_Y33_N25
\u_tx|shift_reg[464]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector48~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(464));

-- Location: LCCOMB_X57_Y33_N28
\u_tx|Selector40~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector40~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(464))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(464),
	combout => \u_tx|Selector40~0_combout\);

-- Location: FF_X57_Y33_N29
\u_tx|shift_reg[472]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector40~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(472));

-- Location: LCCOMB_X57_Y33_N6
\u_tx|Selector32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector32~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(472))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|shift_reg\(472),
	combout => \u_tx|Selector32~0_combout\);

-- Location: FF_X57_Y33_N7
\u_tx|shift_reg[480]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector32~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(480));

-- Location: LCCOMB_X59_Y33_N8
\u_tx|Selector24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector24~0_combout\ = (\u_tx|shift_reg\(480) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(480),
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector24~0_combout\);

-- Location: FF_X59_Y33_N9
\u_tx|shift_reg[488]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector24~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(488));

-- Location: LCCOMB_X56_Y33_N14
\u_tx|Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector16~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|shift_reg\(488))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datac => \u_tx|shift_reg\(488),
	combout => \u_tx|Selector16~0_combout\);

-- Location: FF_X56_Y33_N15
\u_tx|shift_reg[496]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector16~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(496));

-- Location: LCCOMB_X56_Y33_N8
\u_tx|Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector8~0_combout\ = (\u_tx|shift_reg\(496) & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|shift_reg\(496),
	datac => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector8~0_combout\);

-- Location: FF_X55_Y29_N19
\u_tx|shift_reg[504]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_tx|Selector8~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_reg\(504));

-- Location: LCCOMB_X56_Y29_N16
\u_tx|always1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|always1~2_combout\ = (\u_tx|always1~0_combout\ & (\u_tx|always1~1_combout\ & !\u_tx|shift_reg\(504)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|always1~0_combout\,
	datac => \u_tx|always1~1_combout\,
	datad => \u_tx|shift_reg\(504),
	combout => \u_tx|always1~2_combout\);

-- Location: LCCOMB_X56_Y29_N14
\u_tx|Selector523~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector523~3_combout\ = (!\u_tx|state.S_IDLE~q\ & \tx_start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \tx_start~q\,
	combout => \u_tx|Selector523~3_combout\);

-- Location: LCCOMB_X56_Y29_N0
\u_tx|shift_reg[103]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|shift_reg[103]~0_combout\ = (\u_tx|Selector523~3_combout\) # (((\u_tx|state.S_START~q\ & \u_tx|always1~2_combout\)) # (!\u_tx|Selector523~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_START~q\,
	datab => \u_tx|always1~2_combout\,
	datac => \u_tx|Selector523~3_combout\,
	datad => \u_tx|Selector523~2_combout\,
	combout => \u_tx|shift_reg[103]~0_combout\);

-- Location: FF_X55_Y29_N5
\u_tx|byte_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_tx|Selector520~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|byte_cnt\(0));

-- Location: LCCOMB_X55_Y29_N6
\u_tx|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Add2~2_combout\ = (\u_tx|byte_cnt\(1) & (!\u_tx|Add2~1\)) # (!\u_tx|byte_cnt\(1) & ((\u_tx|Add2~1\) # (GND)))
-- \u_tx|Add2~3\ = CARRY((!\u_tx|Add2~1\) # (!\u_tx|byte_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|byte_cnt\(1),
	datad => VCC,
	cin => \u_tx|Add2~1\,
	combout => \u_tx|Add2~2_combout\,
	cout => \u_tx|Add2~3\);

-- Location: LCCOMB_X55_Y29_N24
\u_tx|Selector519~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector519~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|Add2~2_combout\,
	combout => \u_tx|Selector519~0_combout\);

-- Location: FF_X55_Y29_N7
\u_tx|byte_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_tx|Selector519~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|byte_cnt\(1));

-- Location: LCCOMB_X55_Y29_N8
\u_tx|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Add2~4_combout\ = (\u_tx|byte_cnt\(2) & (\u_tx|Add2~3\ $ (GND))) # (!\u_tx|byte_cnt\(2) & (!\u_tx|Add2~3\ & VCC))
-- \u_tx|Add2~5\ = CARRY((\u_tx|byte_cnt\(2) & !\u_tx|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|byte_cnt\(2),
	datad => VCC,
	cin => \u_tx|Add2~3\,
	combout => \u_tx|Add2~4_combout\,
	cout => \u_tx|Add2~5\);

-- Location: LCCOMB_X55_Y29_N22
\u_tx|Selector518~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector518~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|Add2~4_combout\,
	combout => \u_tx|Selector518~0_combout\);

-- Location: FF_X55_Y29_N9
\u_tx|byte_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_tx|Selector518~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|byte_cnt\(2));

-- Location: LCCOMB_X55_Y29_N10
\u_tx|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Add2~6_combout\ = (\u_tx|byte_cnt\(3) & (!\u_tx|Add2~5\)) # (!\u_tx|byte_cnt\(3) & ((\u_tx|Add2~5\) # (GND)))
-- \u_tx|Add2~7\ = CARRY((!\u_tx|Add2~5\) # (!\u_tx|byte_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|byte_cnt\(3),
	datad => VCC,
	cin => \u_tx|Add2~5\,
	combout => \u_tx|Add2~6_combout\,
	cout => \u_tx|Add2~7\);

-- Location: LCCOMB_X55_Y29_N30
\u_tx|Selector517~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector517~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|Add2~6_combout\,
	combout => \u_tx|Selector517~0_combout\);

-- Location: FF_X55_Y29_N31
\u_tx|byte_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector517~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|byte_cnt\(3));

-- Location: LCCOMB_X55_Y29_N12
\u_tx|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Add2~8_combout\ = (\u_tx|byte_cnt\(4) & (\u_tx|Add2~7\ $ (GND))) # (!\u_tx|byte_cnt\(4) & (!\u_tx|Add2~7\ & VCC))
-- \u_tx|Add2~9\ = CARRY((\u_tx|byte_cnt\(4) & !\u_tx|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|byte_cnt\(4),
	datad => VCC,
	cin => \u_tx|Add2~7\,
	combout => \u_tx|Add2~8_combout\,
	cout => \u_tx|Add2~9\);

-- Location: LCCOMB_X55_Y29_N0
\u_tx|Selector516~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector516~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|Add2~8_combout\,
	combout => \u_tx|Selector516~0_combout\);

-- Location: FF_X55_Y29_N1
\u_tx|byte_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector516~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|byte_cnt\(4));

-- Location: LCCOMB_X55_Y29_N14
\u_tx|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Add2~10_combout\ = (\u_tx|byte_cnt\(5) & (!\u_tx|Add2~9\)) # (!\u_tx|byte_cnt\(5) & ((\u_tx|Add2~9\) # (GND)))
-- \u_tx|Add2~11\ = CARRY((!\u_tx|Add2~9\) # (!\u_tx|byte_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|byte_cnt\(5),
	datad => VCC,
	cin => \u_tx|Add2~9\,
	combout => \u_tx|Add2~10_combout\,
	cout => \u_tx|Add2~11\);

-- Location: LCCOMB_X55_Y29_N26
\u_tx|Selector515~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector515~0_combout\ = (\u_tx|Add2~10_combout\ & \u_tx|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|Add2~10_combout\,
	datad => \u_tx|state.S_IDLE~q\,
	combout => \u_tx|Selector515~0_combout\);

-- Location: FF_X55_Y29_N27
\u_tx|byte_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector515~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|byte_cnt\(5));

-- Location: LCCOMB_X55_Y29_N16
\u_tx|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Add2~12_combout\ = (\u_tx|byte_cnt\(6) & (\u_tx|Add2~11\ $ (GND))) # (!\u_tx|byte_cnt\(6) & (!\u_tx|Add2~11\ & VCC))
-- \u_tx|Add2~13\ = CARRY((\u_tx|byte_cnt\(6) & !\u_tx|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|byte_cnt\(6),
	datad => VCC,
	cin => \u_tx|Add2~11\,
	combout => \u_tx|Add2~12_combout\,
	cout => \u_tx|Add2~13\);

-- Location: LCCOMB_X56_Y29_N28
\u_tx|Selector514~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector514~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|Add2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|Add2~12_combout\,
	combout => \u_tx|Selector514~0_combout\);

-- Location: FF_X56_Y29_N29
\u_tx|byte_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector514~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|byte_cnt\(6));

-- Location: LCCOMB_X56_Y33_N12
\u_tx|Selector523~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector523~4_combout\ = (\u_tx|state.S_START~q\ & ((\u_tx|byte_cnt\(7)) # (\u_tx|byte_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|byte_cnt\(7),
	datac => \u_tx|state.S_START~q\,
	datad => \u_tx|byte_cnt\(6),
	combout => \u_tx|Selector523~4_combout\);

-- Location: LCCOMB_X56_Y29_N18
\u_tx|Selector524~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector524~0_combout\ = (\u_tx|Selector521~0_combout\ & (((\u_tx|shift_reg\(504)) # (!\u_tx|always1~1_combout\)) # (!\u_tx|always1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|always1~0_combout\,
	datab => \u_tx|shift_reg\(504),
	datac => \u_tx|Selector521~0_combout\,
	datad => \u_tx|always1~1_combout\,
	combout => \u_tx|Selector524~0_combout\);

-- Location: LCCOMB_X56_Y29_N2
\u_tx|Selector523~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector523~5_combout\ = (\u_tx|state.S_DATA~q\ & (((\u_tx|Equal0~4_combout\ & !\u_tx|Selector524~0_combout\)) # (!\u_tx|Equal2~0_combout\))) # (!\u_tx|state.S_DATA~q\ & ((\u_tx|Equal0~4_combout\) # ((!\u_tx|Selector524~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|Equal0~4_combout\,
	datab => \u_tx|state.S_DATA~q\,
	datac => \u_tx|Equal2~0_combout\,
	datad => \u_tx|Selector524~0_combout\,
	combout => \u_tx|Selector523~5_combout\);

-- Location: LCCOMB_X55_Y30_N8
\u_tx|Selector523~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector523~7_combout\ = (\u_tx|state.S_IDLE~q\ & (\u_tx|state.S_START~q\ & ((\u_tx|Selector523~5_combout\)))) # (!\u_tx|state.S_IDLE~q\ & ((\tx_start~q\) # ((\u_tx|state.S_START~q\ & \u_tx|Selector523~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_IDLE~q\,
	datab => \u_tx|state.S_START~q\,
	datac => \tx_start~q\,
	datad => \u_tx|Selector523~5_combout\,
	combout => \u_tx|Selector523~7_combout\);

-- Location: LCCOMB_X55_Y29_N18
\u_tx|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Add2~14_combout\ = (\u_tx|byte_cnt\(7) & (!\u_tx|Add2~13\)) # (!\u_tx|byte_cnt\(7) & ((\u_tx|Add2~13\) # (GND)))
-- \u_tx|Add2~15\ = CARRY((!\u_tx|Add2~13\) # (!\u_tx|byte_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|byte_cnt\(7),
	datad => VCC,
	cin => \u_tx|Add2~13\,
	combout => \u_tx|Add2~14_combout\,
	cout => \u_tx|Add2~15\);

-- Location: LCCOMB_X55_Y29_N20
\u_tx|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Add2~16_combout\ = !\u_tx|Add2~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_tx|Add2~15\,
	combout => \u_tx|Add2~16_combout\);

-- Location: LCCOMB_X54_Y29_N28
\u_tx|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Equal3~0_combout\ = (!\u_tx|shift_reg\(502) & (!\u_tx|shift_reg\(500) & (!\u_tx|shift_reg\(499) & !\u_tx|shift_reg\(501))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(502),
	datab => \u_tx|shift_reg\(500),
	datac => \u_tx|shift_reg\(499),
	datad => \u_tx|shift_reg\(501),
	combout => \u_tx|Equal3~0_combout\);

-- Location: LCCOMB_X55_Y33_N28
\u_tx|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Equal3~1_combout\ = (!\u_tx|shift_reg\(497) & (!\u_tx|shift_reg\(498) & (!\u_tx|shift_reg\(496) & \u_tx|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|shift_reg\(497),
	datab => \u_tx|shift_reg\(498),
	datac => \u_tx|shift_reg\(496),
	datad => \u_tx|Equal3~0_combout\,
	combout => \u_tx|Equal3~1_combout\);

-- Location: LCCOMB_X55_Y30_N20
\u_tx|always1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|always1~3_combout\ = (\u_tx|Add2~14_combout\) # ((\u_tx|Add2~12_combout\) # ((\u_tx|Add2~16_combout\) # (\u_tx|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|Add2~14_combout\,
	datab => \u_tx|Add2~12_combout\,
	datac => \u_tx|Add2~16_combout\,
	datad => \u_tx|Equal3~1_combout\,
	combout => \u_tx|always1~3_combout\);

-- Location: LCCOMB_X55_Y30_N28
\u_tx|Selector523~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector523~6_combout\ = (\u_tx|Selector523~2_combout\ & (!\u_tx|Selector523~4_combout\ & (\u_tx|Selector523~7_combout\))) # (!\u_tx|Selector523~2_combout\ & (((!\u_tx|always1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|Selector523~2_combout\,
	datab => \u_tx|Selector523~4_combout\,
	datac => \u_tx|Selector523~7_combout\,
	datad => \u_tx|always1~3_combout\,
	combout => \u_tx|Selector523~6_combout\);

-- Location: FF_X55_Y30_N29
\u_tx|state.S_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector523~6_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|state.S_START~q\);

-- Location: LCCOMB_X56_Y29_N8
\u_tx|Selector521~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector521~0_combout\ = (\u_tx|state.S_START~q\ & (!\u_tx|byte_cnt\(6) & !\u_tx|byte_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_START~q\,
	datab => \u_tx|byte_cnt\(6),
	datad => \u_tx|byte_cnt\(7),
	combout => \u_tx|Selector521~0_combout\);

-- Location: LCCOMB_X56_Y33_N18
\u_tx|Selector521~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector521~2_combout\ = (!\u_tx|Add2~12_combout\ & (\u_tx|state.S_STOP~q\ & (!\u_tx|Add2~16_combout\ & !\u_tx|Add2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|Add2~12_combout\,
	datab => \u_tx|state.S_STOP~q\,
	datac => \u_tx|Add2~16_combout\,
	datad => \u_tx|Add2~14_combout\,
	combout => \u_tx|Selector521~2_combout\);

-- Location: LCCOMB_X56_Y33_N24
\u_tx|Selector521~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector521~3_combout\ = (\u_tx|tx_busy~q\ & ((\u_tx|Selector525~1_combout\) # ((!\u_tx|Equal3~1_combout\ & \u_tx|Selector521~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|tx_busy~q\,
	datab => \u_tx|Equal3~1_combout\,
	datac => \u_tx|Selector525~1_combout\,
	datad => \u_tx|Selector521~2_combout\,
	combout => \u_tx|Selector521~3_combout\);

-- Location: LCCOMB_X56_Y33_N22
\u_tx|Selector521~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector521~4_combout\ = (\u_tx|Selector521~1_combout\) # ((\u_tx|Selector521~3_combout\) # ((\u_tx|Selector521~0_combout\ & \u_tx|tx_busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|Selector521~1_combout\,
	datab => \u_tx|Selector521~0_combout\,
	datac => \u_tx|tx_busy~q\,
	datad => \u_tx|Selector521~3_combout\,
	combout => \u_tx|Selector521~4_combout\);

-- Location: FF_X56_Y33_N23
\u_tx|tx_busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector521~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|tx_busy~q\);

-- Location: LCCOMB_X53_Y29_N28
\u_tx|baud_cnt[3]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|baud_cnt[3]~20_combout\ = (!\u_tx|Equal0~4_combout\) # (!\u_tx|tx_busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|tx_busy~q\,
	datad => \u_tx|Equal0~4_combout\,
	combout => \u_tx|baud_cnt[3]~20_combout\);

-- Location: FF_X57_Y29_N1
\u_tx|baud_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|baud_cnt[0]~16_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_tx|baud_cnt[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|baud_cnt\(0));

-- Location: LCCOMB_X57_Y29_N2
\u_tx|baud_cnt[1]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|baud_cnt[1]~18_combout\ = (\u_tx|baud_cnt\(1) & (!\u_tx|baud_cnt[0]~17\)) # (!\u_tx|baud_cnt\(1) & ((\u_tx|baud_cnt[0]~17\) # (GND)))
-- \u_tx|baud_cnt[1]~19\ = CARRY((!\u_tx|baud_cnt[0]~17\) # (!\u_tx|baud_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|baud_cnt\(1),
	datad => VCC,
	cin => \u_tx|baud_cnt[0]~17\,
	combout => \u_tx|baud_cnt[1]~18_combout\,
	cout => \u_tx|baud_cnt[1]~19\);

-- Location: FF_X57_Y29_N3
\u_tx|baud_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|baud_cnt[1]~18_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_tx|baud_cnt[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|baud_cnt\(1));

-- Location: LCCOMB_X57_Y29_N4
\u_tx|baud_cnt[2]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|baud_cnt[2]~21_combout\ = (\u_tx|baud_cnt\(2) & (\u_tx|baud_cnt[1]~19\ $ (GND))) # (!\u_tx|baud_cnt\(2) & (!\u_tx|baud_cnt[1]~19\ & VCC))
-- \u_tx|baud_cnt[2]~22\ = CARRY((\u_tx|baud_cnt\(2) & !\u_tx|baud_cnt[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|baud_cnt\(2),
	datad => VCC,
	cin => \u_tx|baud_cnt[1]~19\,
	combout => \u_tx|baud_cnt[2]~21_combout\,
	cout => \u_tx|baud_cnt[2]~22\);

-- Location: FF_X57_Y29_N5
\u_tx|baud_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|baud_cnt[2]~21_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_tx|baud_cnt[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|baud_cnt\(2));

-- Location: LCCOMB_X57_Y29_N6
\u_tx|baud_cnt[3]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|baud_cnt[3]~23_combout\ = (\u_tx|baud_cnt\(3) & (!\u_tx|baud_cnt[2]~22\)) # (!\u_tx|baud_cnt\(3) & ((\u_tx|baud_cnt[2]~22\) # (GND)))
-- \u_tx|baud_cnt[3]~24\ = CARRY((!\u_tx|baud_cnt[2]~22\) # (!\u_tx|baud_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|baud_cnt\(3),
	datad => VCC,
	cin => \u_tx|baud_cnt[2]~22\,
	combout => \u_tx|baud_cnt[3]~23_combout\,
	cout => \u_tx|baud_cnt[3]~24\);

-- Location: FF_X57_Y29_N7
\u_tx|baud_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|baud_cnt[3]~23_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_tx|baud_cnt[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|baud_cnt\(3));

-- Location: LCCOMB_X57_Y29_N8
\u_tx|baud_cnt[4]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|baud_cnt[4]~25_combout\ = (\u_tx|baud_cnt\(4) & (\u_tx|baud_cnt[3]~24\ $ (GND))) # (!\u_tx|baud_cnt\(4) & (!\u_tx|baud_cnt[3]~24\ & VCC))
-- \u_tx|baud_cnt[4]~26\ = CARRY((\u_tx|baud_cnt\(4) & !\u_tx|baud_cnt[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|baud_cnt\(4),
	datad => VCC,
	cin => \u_tx|baud_cnt[3]~24\,
	combout => \u_tx|baud_cnt[4]~25_combout\,
	cout => \u_tx|baud_cnt[4]~26\);

-- Location: FF_X57_Y29_N9
\u_tx|baud_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|baud_cnt[4]~25_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_tx|baud_cnt[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|baud_cnt\(4));

-- Location: LCCOMB_X57_Y29_N10
\u_tx|baud_cnt[5]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|baud_cnt[5]~27_combout\ = (\u_tx|baud_cnt\(5) & (!\u_tx|baud_cnt[4]~26\)) # (!\u_tx|baud_cnt\(5) & ((\u_tx|baud_cnt[4]~26\) # (GND)))
-- \u_tx|baud_cnt[5]~28\ = CARRY((!\u_tx|baud_cnt[4]~26\) # (!\u_tx|baud_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|baud_cnt\(5),
	datad => VCC,
	cin => \u_tx|baud_cnt[4]~26\,
	combout => \u_tx|baud_cnt[5]~27_combout\,
	cout => \u_tx|baud_cnt[5]~28\);

-- Location: FF_X57_Y29_N11
\u_tx|baud_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|baud_cnt[5]~27_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_tx|baud_cnt[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|baud_cnt\(5));

-- Location: LCCOMB_X57_Y29_N12
\u_tx|baud_cnt[6]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|baud_cnt[6]~29_combout\ = (\u_tx|baud_cnt\(6) & (\u_tx|baud_cnt[5]~28\ $ (GND))) # (!\u_tx|baud_cnt\(6) & (!\u_tx|baud_cnt[5]~28\ & VCC))
-- \u_tx|baud_cnt[6]~30\ = CARRY((\u_tx|baud_cnt\(6) & !\u_tx|baud_cnt[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|baud_cnt\(6),
	datad => VCC,
	cin => \u_tx|baud_cnt[5]~28\,
	combout => \u_tx|baud_cnt[6]~29_combout\,
	cout => \u_tx|baud_cnt[6]~30\);

-- Location: FF_X57_Y29_N13
\u_tx|baud_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|baud_cnt[6]~29_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_tx|baud_cnt[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|baud_cnt\(6));

-- Location: LCCOMB_X57_Y29_N14
\u_tx|baud_cnt[7]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|baud_cnt[7]~31_combout\ = (\u_tx|baud_cnt\(7) & (!\u_tx|baud_cnt[6]~30\)) # (!\u_tx|baud_cnt\(7) & ((\u_tx|baud_cnt[6]~30\) # (GND)))
-- \u_tx|baud_cnt[7]~32\ = CARRY((!\u_tx|baud_cnt[6]~30\) # (!\u_tx|baud_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|baud_cnt\(7),
	datad => VCC,
	cin => \u_tx|baud_cnt[6]~30\,
	combout => \u_tx|baud_cnt[7]~31_combout\,
	cout => \u_tx|baud_cnt[7]~32\);

-- Location: FF_X57_Y29_N15
\u_tx|baud_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|baud_cnt[7]~31_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_tx|baud_cnt[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|baud_cnt\(7));

-- Location: LCCOMB_X57_Y29_N16
\u_tx|baud_cnt[8]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|baud_cnt[8]~33_combout\ = (\u_tx|baud_cnt\(8) & (\u_tx|baud_cnt[7]~32\ $ (GND))) # (!\u_tx|baud_cnt\(8) & (!\u_tx|baud_cnt[7]~32\ & VCC))
-- \u_tx|baud_cnt[8]~34\ = CARRY((\u_tx|baud_cnt\(8) & !\u_tx|baud_cnt[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|baud_cnt\(8),
	datad => VCC,
	cin => \u_tx|baud_cnt[7]~32\,
	combout => \u_tx|baud_cnt[8]~33_combout\,
	cout => \u_tx|baud_cnt[8]~34\);

-- Location: FF_X57_Y29_N17
\u_tx|baud_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|baud_cnt[8]~33_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_tx|baud_cnt[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|baud_cnt\(8));

-- Location: LCCOMB_X57_Y29_N18
\u_tx|baud_cnt[9]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|baud_cnt[9]~35_combout\ = (\u_tx|baud_cnt\(9) & (!\u_tx|baud_cnt[8]~34\)) # (!\u_tx|baud_cnt\(9) & ((\u_tx|baud_cnt[8]~34\) # (GND)))
-- \u_tx|baud_cnt[9]~36\ = CARRY((!\u_tx|baud_cnt[8]~34\) # (!\u_tx|baud_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|baud_cnt\(9),
	datad => VCC,
	cin => \u_tx|baud_cnt[8]~34\,
	combout => \u_tx|baud_cnt[9]~35_combout\,
	cout => \u_tx|baud_cnt[9]~36\);

-- Location: FF_X57_Y29_N19
\u_tx|baud_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|baud_cnt[9]~35_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_tx|baud_cnt[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|baud_cnt\(9));

-- Location: LCCOMB_X57_Y29_N20
\u_tx|baud_cnt[10]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|baud_cnt[10]~37_combout\ = (\u_tx|baud_cnt\(10) & (\u_tx|baud_cnt[9]~36\ $ (GND))) # (!\u_tx|baud_cnt\(10) & (!\u_tx|baud_cnt[9]~36\ & VCC))
-- \u_tx|baud_cnt[10]~38\ = CARRY((\u_tx|baud_cnt\(10) & !\u_tx|baud_cnt[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|baud_cnt\(10),
	datad => VCC,
	cin => \u_tx|baud_cnt[9]~36\,
	combout => \u_tx|baud_cnt[10]~37_combout\,
	cout => \u_tx|baud_cnt[10]~38\);

-- Location: FF_X57_Y29_N21
\u_tx|baud_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|baud_cnt[10]~37_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_tx|baud_cnt[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|baud_cnt\(10));

-- Location: LCCOMB_X57_Y29_N22
\u_tx|baud_cnt[11]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|baud_cnt[11]~39_combout\ = (\u_tx|baud_cnt\(11) & (!\u_tx|baud_cnt[10]~38\)) # (!\u_tx|baud_cnt\(11) & ((\u_tx|baud_cnt[10]~38\) # (GND)))
-- \u_tx|baud_cnt[11]~40\ = CARRY((!\u_tx|baud_cnt[10]~38\) # (!\u_tx|baud_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|baud_cnt\(11),
	datad => VCC,
	cin => \u_tx|baud_cnt[10]~38\,
	combout => \u_tx|baud_cnt[11]~39_combout\,
	cout => \u_tx|baud_cnt[11]~40\);

-- Location: FF_X57_Y29_N23
\u_tx|baud_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|baud_cnt[11]~39_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_tx|baud_cnt[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|baud_cnt\(11));

-- Location: LCCOMB_X57_Y29_N24
\u_tx|baud_cnt[12]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|baud_cnt[12]~41_combout\ = (\u_tx|baud_cnt\(12) & (\u_tx|baud_cnt[11]~40\ $ (GND))) # (!\u_tx|baud_cnt\(12) & (!\u_tx|baud_cnt[11]~40\ & VCC))
-- \u_tx|baud_cnt[12]~42\ = CARRY((\u_tx|baud_cnt\(12) & !\u_tx|baud_cnt[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|baud_cnt\(12),
	datad => VCC,
	cin => \u_tx|baud_cnt[11]~40\,
	combout => \u_tx|baud_cnt[12]~41_combout\,
	cout => \u_tx|baud_cnt[12]~42\);

-- Location: FF_X57_Y29_N25
\u_tx|baud_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|baud_cnt[12]~41_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_tx|baud_cnt[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|baud_cnt\(12));

-- Location: LCCOMB_X57_Y29_N26
\u_tx|baud_cnt[13]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|baud_cnt[13]~43_combout\ = (\u_tx|baud_cnt\(13) & (!\u_tx|baud_cnt[12]~42\)) # (!\u_tx|baud_cnt\(13) & ((\u_tx|baud_cnt[12]~42\) # (GND)))
-- \u_tx|baud_cnt[13]~44\ = CARRY((!\u_tx|baud_cnt[12]~42\) # (!\u_tx|baud_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|baud_cnt\(13),
	datad => VCC,
	cin => \u_tx|baud_cnt[12]~42\,
	combout => \u_tx|baud_cnt[13]~43_combout\,
	cout => \u_tx|baud_cnt[13]~44\);

-- Location: FF_X57_Y29_N27
\u_tx|baud_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|baud_cnt[13]~43_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_tx|baud_cnt[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|baud_cnt\(13));

-- Location: LCCOMB_X57_Y29_N28
\u_tx|baud_cnt[14]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|baud_cnt[14]~45_combout\ = (\u_tx|baud_cnt\(14) & (\u_tx|baud_cnt[13]~44\ $ (GND))) # (!\u_tx|baud_cnt\(14) & (!\u_tx|baud_cnt[13]~44\ & VCC))
-- \u_tx|baud_cnt[14]~46\ = CARRY((\u_tx|baud_cnt\(14) & !\u_tx|baud_cnt[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|baud_cnt\(14),
	datad => VCC,
	cin => \u_tx|baud_cnt[13]~44\,
	combout => \u_tx|baud_cnt[14]~45_combout\,
	cout => \u_tx|baud_cnt[14]~46\);

-- Location: FF_X57_Y29_N29
\u_tx|baud_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|baud_cnt[14]~45_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_tx|baud_cnt[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|baud_cnt\(14));

-- Location: LCCOMB_X57_Y29_N30
\u_tx|baud_cnt[15]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|baud_cnt[15]~47_combout\ = \u_tx|baud_cnt\(15) $ (\u_tx|baud_cnt[14]~46\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|baud_cnt\(15),
	cin => \u_tx|baud_cnt[14]~46\,
	combout => \u_tx|baud_cnt[15]~47_combout\);

-- Location: FF_X57_Y29_N31
\u_tx|baud_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|baud_cnt[15]~47_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_tx|baud_cnt[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|baud_cnt\(15));

-- Location: LCCOMB_X56_Y29_N22
\u_tx|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Equal0~3_combout\ = (\u_tx|baud_cnt\(15)) # ((\u_tx|baud_cnt\(14)) # ((\u_tx|baud_cnt\(13)) # (\u_tx|baud_cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|baud_cnt\(15),
	datab => \u_tx|baud_cnt\(14),
	datac => \u_tx|baud_cnt\(13),
	datad => \u_tx|baud_cnt\(12),
	combout => \u_tx|Equal0~3_combout\);

-- Location: LCCOMB_X56_Y29_N24
\u_tx|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Equal0~2_combout\ = (\u_tx|baud_cnt\(10)) # (((\u_tx|baud_cnt\(9)) # (\u_tx|baud_cnt\(11))) # (!\u_tx|baud_cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|baud_cnt\(10),
	datab => \u_tx|baud_cnt\(8),
	datac => \u_tx|baud_cnt\(9),
	datad => \u_tx|baud_cnt\(11),
	combout => \u_tx|Equal0~2_combout\);

-- Location: LCCOMB_X56_Y29_N4
\u_tx|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Equal0~0_combout\ = (\u_tx|baud_cnt\(3)) # (((\u_tx|baud_cnt\(1)) # (\u_tx|baud_cnt\(2))) # (!\u_tx|baud_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|baud_cnt\(3),
	datab => \u_tx|baud_cnt\(0),
	datac => \u_tx|baud_cnt\(1),
	datad => \u_tx|baud_cnt\(2),
	combout => \u_tx|Equal0~0_combout\);

-- Location: LCCOMB_X56_Y29_N10
\u_tx|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Equal0~1_combout\ = ((\u_tx|baud_cnt\(6)) # ((!\u_tx|baud_cnt\(4)) # (!\u_tx|baud_cnt\(7)))) # (!\u_tx|baud_cnt\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|baud_cnt\(5),
	datab => \u_tx|baud_cnt\(6),
	datac => \u_tx|baud_cnt\(7),
	datad => \u_tx|baud_cnt\(4),
	combout => \u_tx|Equal0~1_combout\);

-- Location: LCCOMB_X56_Y29_N12
\u_tx|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Equal0~4_combout\ = (\u_tx|Equal0~3_combout\) # ((\u_tx|Equal0~2_combout\) # ((\u_tx|Equal0~0_combout\) # (\u_tx|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|Equal0~3_combout\,
	datab => \u_tx|Equal0~2_combout\,
	datac => \u_tx|Equal0~0_combout\,
	datad => \u_tx|Equal0~1_combout\,
	combout => \u_tx|Equal0~4_combout\);

-- Location: LCCOMB_X53_Y29_N4
\u_tx|Selector524~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector524~1_combout\ = (\u_tx|Equal0~4_combout\ & (((\u_tx|state.S_DATA~q\)))) # (!\u_tx|Equal0~4_combout\ & ((\u_tx|Selector524~0_combout\) # ((!\u_tx|Equal2~0_combout\ & \u_tx|state.S_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|Equal2~0_combout\,
	datab => \u_tx|Equal0~4_combout\,
	datac => \u_tx|state.S_DATA~q\,
	datad => \u_tx|Selector524~0_combout\,
	combout => \u_tx|Selector524~1_combout\);

-- Location: FF_X53_Y29_N5
\u_tx|state.S_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector524~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|state.S_DATA~q\);

-- Location: LCCOMB_X53_Y29_N0
\u_tx|bit_idx[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|bit_idx[1]~0_combout\ = (!\u_tx|Selector524~0_combout\ & ((\u_tx|Equal2~0_combout\) # ((\u_tx|Equal0~4_combout\) # (!\u_tx|state.S_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|Equal2~0_combout\,
	datab => \u_tx|state.S_DATA~q\,
	datac => \u_tx|Equal0~4_combout\,
	datad => \u_tx|Selector524~0_combout\,
	combout => \u_tx|bit_idx[1]~0_combout\);

-- Location: LCCOMB_X53_Y29_N8
\u_tx|bit_idx[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|bit_idx[0]~1_combout\ = (\u_tx|bit_idx\(0) & ((\u_tx|bit_idx[1]~0_combout\))) # (!\u_tx|bit_idx\(0) & (\u_tx|state.S_DATA~q\ & !\u_tx|bit_idx[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_DATA~q\,
	datac => \u_tx|bit_idx\(0),
	datad => \u_tx|bit_idx[1]~0_combout\,
	combout => \u_tx|bit_idx[0]~1_combout\);

-- Location: FF_X53_Y29_N9
\u_tx|bit_idx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|bit_idx[0]~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|bit_idx\(0));

-- Location: LCCOMB_X53_Y29_N30
\u_tx|bit_idx[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|bit_idx[1]~2_combout\ = (\u_tx|bit_idx[1]~0_combout\ & (((\u_tx|bit_idx\(1))))) # (!\u_tx|bit_idx[1]~0_combout\ & (\u_tx|state.S_DATA~q\ & (\u_tx|bit_idx\(0) $ (\u_tx|bit_idx\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|state.S_DATA~q\,
	datab => \u_tx|bit_idx\(0),
	datac => \u_tx|bit_idx\(1),
	datad => \u_tx|bit_idx[1]~0_combout\,
	combout => \u_tx|bit_idx[1]~2_combout\);

-- Location: FF_X53_Y29_N31
\u_tx|bit_idx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|bit_idx[1]~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|bit_idx\(1));

-- Location: LCCOMB_X53_Y29_N22
\u_tx|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Add1~0_combout\ = \u_tx|bit_idx\(2) $ (((\u_tx|bit_idx\(1) & \u_tx|bit_idx\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|bit_idx\(2),
	datac => \u_tx|bit_idx\(1),
	datad => \u_tx|bit_idx\(0),
	combout => \u_tx|Add1~0_combout\);

-- Location: LCCOMB_X53_Y29_N26
\u_tx|bit_idx[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|bit_idx[2]~3_combout\ = (\u_tx|bit_idx[1]~0_combout\ & (((\u_tx|bit_idx\(2))))) # (!\u_tx|bit_idx[1]~0_combout\ & (\u_tx|Add1~0_combout\ & (\u_tx|state.S_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|Add1~0_combout\,
	datab => \u_tx|state.S_DATA~q\,
	datac => \u_tx|bit_idx\(2),
	datad => \u_tx|bit_idx[1]~0_combout\,
	combout => \u_tx|bit_idx[2]~3_combout\);

-- Location: FF_X53_Y29_N27
\u_tx|bit_idx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|bit_idx[2]~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|bit_idx\(2));

-- Location: LCCOMB_X53_Y29_N18
\u_tx|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Equal2~0_combout\ = (\u_tx|bit_idx\(2) & (\u_tx|bit_idx\(0) & \u_tx|bit_idx\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|bit_idx\(2),
	datab => \u_tx|bit_idx\(0),
	datad => \u_tx|bit_idx\(1),
	combout => \u_tx|Equal2~0_combout\);

-- Location: LCCOMB_X56_Y29_N26
\u_tx|Selector525~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector525~0_combout\ = (\u_tx|Equal0~4_combout\ & (((\u_tx|state.S_STOP~q\)))) # (!\u_tx|Equal0~4_combout\ & (\u_tx|Equal2~0_combout\ & (\u_tx|state.S_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|Equal2~0_combout\,
	datab => \u_tx|state.S_DATA~q\,
	datac => \u_tx|state.S_STOP~q\,
	datad => \u_tx|Equal0~4_combout\,
	combout => \u_tx|Selector525~0_combout\);

-- Location: FF_X56_Y29_N27
\u_tx|state.S_STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector525~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|state.S_STOP~q\);

-- Location: LCCOMB_X56_Y29_N20
\u_tx|Selector523~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector523~2_combout\ = (\u_tx|Equal0~4_combout\) # (!\u_tx|state.S_STOP~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|state.S_STOP~q\,
	datad => \u_tx|Equal0~4_combout\,
	combout => \u_tx|Selector523~2_combout\);

-- Location: LCCOMB_X55_Y30_N26
\u_tx|Selector522~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector522~3_combout\ = (!\tx_start~q\ & (!\u_tx|state.S_IDLE~q\ & (\u_tx|Selector523~2_combout\ & \u_tx|Selector523~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_start~q\,
	datab => \u_tx|state.S_IDLE~q\,
	datac => \u_tx|Selector523~2_combout\,
	datad => \u_tx|Selector523~5_combout\,
	combout => \u_tx|Selector522~3_combout\);

-- Location: LCCOMB_X55_Y30_N30
\u_tx|Selector522~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector522~2_combout\ = (!\u_tx|Selector522~3_combout\ & ((\u_tx|Selector523~2_combout\ & (!\u_tx|Selector523~4_combout\)) # (!\u_tx|Selector523~2_combout\ & ((!\u_tx|always1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|Selector523~2_combout\,
	datab => \u_tx|Selector523~4_combout\,
	datac => \u_tx|Selector522~3_combout\,
	datad => \u_tx|always1~3_combout\,
	combout => \u_tx|Selector522~2_combout\);

-- Location: FF_X55_Y30_N31
\u_tx|state.S_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector522~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|state.S_IDLE~q\);

-- Location: LCCOMB_X55_Y29_N28
\u_tx|Selector513~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector513~0_combout\ = (\u_tx|state.S_IDLE~q\ & \u_tx|Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_tx|state.S_IDLE~q\,
	datad => \u_tx|Add2~14_combout\,
	combout => \u_tx|Selector513~0_combout\);

-- Location: FF_X55_Y29_N29
\u_tx|byte_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector513~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|shift_reg[103]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|byte_cnt\(7));

-- Location: LCCOMB_X56_Y33_N30
\u_tx|Selector0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector0~3_combout\ = ((!\u_tx|tx~q\ & ((\u_tx|byte_cnt\(7)) # (\u_tx|byte_cnt\(6))))) # (!\u_tx|state.S_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|byte_cnt\(7),
	datab => \u_tx|state.S_START~q\,
	datac => \u_tx|byte_cnt\(6),
	datad => \u_tx|tx~q\,
	combout => \u_tx|Selector0~3_combout\);

-- Location: FF_X53_Y29_N21
\u_tx|shift_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_tx|shift_reg\(510),
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_tx|Selector524~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_byte\(6));

-- Location: LCCOMB_X53_Y29_N16
\u_tx|shift_byte[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|shift_byte[5]~feeder_combout\ = \u_tx|shift_reg\(509)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_tx|shift_reg\(509),
	combout => \u_tx|shift_byte[5]~feeder_combout\);

-- Location: FF_X53_Y29_N17
\u_tx|shift_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|shift_byte[5]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|Selector524~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_byte\(5));

-- Location: FF_X53_Y29_N7
\u_tx|shift_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_tx|shift_reg\(508),
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_tx|Selector524~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_byte\(4));

-- Location: LCCOMB_X53_Y29_N6
\u_tx|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector0~0_combout\ = (!\u_tx|bit_idx\(1) & ((\u_tx|bit_idx\(0) & (\u_tx|shift_byte\(5))) # (!\u_tx|bit_idx\(0) & ((\u_tx|shift_byte\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|bit_idx\(1),
	datab => \u_tx|shift_byte\(5),
	datac => \u_tx|shift_byte\(4),
	datad => \u_tx|bit_idx\(0),
	combout => \u_tx|Selector0~0_combout\);

-- Location: LCCOMB_X53_Y29_N20
\u_tx|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector0~1_combout\ = (\u_tx|Selector0~0_combout\) # ((\u_tx|bit_idx\(1) & (!\u_tx|bit_idx\(0) & \u_tx|shift_byte\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|bit_idx\(1),
	datab => \u_tx|bit_idx\(0),
	datac => \u_tx|shift_byte\(6),
	datad => \u_tx|Selector0~0_combout\,
	combout => \u_tx|Selector0~1_combout\);

-- Location: FF_X53_Y29_N19
\u_tx|shift_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_tx|shift_reg\(506),
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_tx|Selector524~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_byte\(2));

-- Location: FF_X53_Y29_N13
\u_tx|shift_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_tx|shift_reg\(507),
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_tx|Selector524~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_byte\(3));

-- Location: FF_X53_Y29_N3
\u_tx|shift_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_tx|shift_reg\(504),
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_tx|Selector524~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_byte\(0));

-- Location: LCCOMB_X53_Y29_N24
\u_tx|shift_byte[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|shift_byte[1]~feeder_combout\ = \u_tx|shift_reg\(505)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_tx|shift_reg\(505),
	combout => \u_tx|shift_byte[1]~feeder_combout\);

-- Location: FF_X53_Y29_N25
\u_tx|shift_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|shift_byte[1]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_tx|Selector524~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|shift_byte\(1));

-- Location: LCCOMB_X53_Y29_N2
\u_tx|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Mux0~0_combout\ = (\u_tx|bit_idx\(1) & (\u_tx|bit_idx\(0))) # (!\u_tx|bit_idx\(1) & ((\u_tx|bit_idx\(0) & ((\u_tx|shift_byte\(1)))) # (!\u_tx|bit_idx\(0) & (\u_tx|shift_byte\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|bit_idx\(1),
	datab => \u_tx|bit_idx\(0),
	datac => \u_tx|shift_byte\(0),
	datad => \u_tx|shift_byte\(1),
	combout => \u_tx|Mux0~0_combout\);

-- Location: LCCOMB_X53_Y29_N12
\u_tx|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Mux0~1_combout\ = (\u_tx|bit_idx\(1) & ((\u_tx|Mux0~0_combout\ & ((\u_tx|shift_byte\(3)))) # (!\u_tx|Mux0~0_combout\ & (\u_tx|shift_byte\(2))))) # (!\u_tx|bit_idx\(1) & (((\u_tx|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|bit_idx\(1),
	datab => \u_tx|shift_byte\(2),
	datac => \u_tx|shift_byte\(3),
	datad => \u_tx|Mux0~0_combout\,
	combout => \u_tx|Mux0~1_combout\);

-- Location: LCCOMB_X53_Y29_N10
\u_tx|Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector0~2_combout\ = ((\u_tx|bit_idx\(2) & (\u_tx|Selector0~1_combout\)) # (!\u_tx|bit_idx\(2) & ((\u_tx|Mux0~1_combout\)))) # (!\u_tx|state.S_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|bit_idx\(2),
	datab => \u_tx|Selector0~1_combout\,
	datac => \u_tx|state.S_DATA~q\,
	datad => \u_tx|Mux0~1_combout\,
	combout => \u_tx|Selector0~2_combout\);

-- Location: LCCOMB_X56_Y33_N16
\u_tx|Selector0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_tx|Selector0~4_combout\ = ((!\u_tx|Selector0~3_combout\ & ((\u_tx|tx~q\) # (!\u_tx|always1~2_combout\)))) # (!\u_tx|Selector0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_tx|Selector0~3_combout\,
	datab => \u_tx|always1~2_combout\,
	datac => \u_tx|tx~q\,
	datad => \u_tx|Selector0~2_combout\,
	combout => \u_tx|Selector0~4_combout\);

-- Location: FF_X56_Y33_N17
\u_tx|tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_tx|Selector0~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_tx|tx~q\);

-- Location: LCCOMB_X63_Y28_N20
\RST_WiFi~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RST_WiFi~0_combout\ = !\LessThan0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LessThan0~4_combout\,
	combout => \RST_WiFi~0_combout\);

-- Location: FF_X63_Y28_N21
\RST_WiFi~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RST_WiFi~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RST_WiFi~reg0_q\);

ww_row(0) <= \row[0]~output_o\;

ww_row(1) <= \row[1]~output_o\;

ww_row(2) <= \row[2]~output_o\;

ww_tx <= \tx~output_o\;

ww_Client_WiFi_txd <= \Client_WiFi_txd~output_o\;

ww_RST_WiFi <= \RST_WiFi~output_o\;
END structure;


