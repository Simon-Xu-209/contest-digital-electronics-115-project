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

-- DATE "08/21/2026 10:13:22"

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
	clk : IN std_logic;
	rst_n : IN std_logic;
	tx_en : IN std_logic;
	rx : IN std_logic;
	tx : BUFFER std_logic;
	LED : BUFFER std_logic_vector(7 DOWNTO 0);
	Server_WiFi_txd : BUFFER std_logic;
	RST_WiFi : BUFFER std_logic;
	WiFi_signal : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END UART_Server;

-- Design Ports Information
-- tx	=>  Location: PIN_164,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[0]	=>  Location: PIN_232,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[4]	=>  Location: PIN_219,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[5]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[6]	=>  Location: PIN_117,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[7]	=>  Location: PIN_240,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Server_WiFi_txd	=>  Location: PIN_166,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST_WiFi	=>  Location: PIN_160,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiFi_signal[0]	=>  Location: PIN_169,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiFi_signal[1]	=>  Location: PIN_173,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiFi_signal[2]	=>  Location: PIN_177,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiFi_signal[3]	=>  Location: PIN_184,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiFi_signal[4]	=>  Location: PIN_186,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiFi_signal[5]	=>  Location: PIN_188,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiFi_signal[6]	=>  Location: PIN_194,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiFi_signal[7]	=>  Location: PIN_196,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiFi_signal[8]	=>  Location: PIN_216,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiFi_signal[9]	=>  Location: PIN_207,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiFi_signal[10]	=>  Location: PIN_201,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiFi_signal[11]	=>  Location: PIN_197,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiFi_signal[12]	=>  Location: PIN_202,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiFi_signal[13]	=>  Location: PIN_200,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiFi_signal[14]	=>  Location: PIN_195,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiFi_signal[15]	=>  Location: PIN_203,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx	=>  Location: PIN_161,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_149,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_145,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_en	=>  Location: PIN_159,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_tx_en : std_logic;
SIGNAL ww_rx : std_logic;
SIGNAL ww_tx : std_logic;
SIGNAL ww_LED : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Server_WiFi_txd : std_logic;
SIGNAL ww_RST_WiFi : std_logic;
SIGNAL ww_WiFi_signal : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tx~output_o\ : std_logic;
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \LED[4]~output_o\ : std_logic;
SIGNAL \LED[5]~output_o\ : std_logic;
SIGNAL \LED[6]~output_o\ : std_logic;
SIGNAL \LED[7]~output_o\ : std_logic;
SIGNAL \Server_WiFi_txd~output_o\ : std_logic;
SIGNAL \RST_WiFi~output_o\ : std_logic;
SIGNAL \WiFi_signal[0]~output_o\ : std_logic;
SIGNAL \WiFi_signal[1]~output_o\ : std_logic;
SIGNAL \WiFi_signal[2]~output_o\ : std_logic;
SIGNAL \WiFi_signal[3]~output_o\ : std_logic;
SIGNAL \WiFi_signal[4]~output_o\ : std_logic;
SIGNAL \WiFi_signal[5]~output_o\ : std_logic;
SIGNAL \WiFi_signal[6]~output_o\ : std_logic;
SIGNAL \WiFi_signal[7]~output_o\ : std_logic;
SIGNAL \WiFi_signal[8]~output_o\ : std_logic;
SIGNAL \WiFi_signal[9]~output_o\ : std_logic;
SIGNAL \WiFi_signal[10]~output_o\ : std_logic;
SIGNAL \WiFi_signal[11]~output_o\ : std_logic;
SIGNAL \WiFi_signal[12]~output_o\ : std_logic;
SIGNAL \WiFi_signal[13]~output_o\ : std_logic;
SIGNAL \WiFi_signal[14]~output_o\ : std_logic;
SIGNAL \WiFi_signal[15]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \uart_tx_u1|baud_cnt[0]~16_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \uart_tx_u1|Equal0~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|baud_cnt[11]~40\ : std_logic;
SIGNAL \uart_tx_u1|baud_cnt[12]~41_combout\ : std_logic;
SIGNAL \uart_tx_u1|baud_cnt[12]~42\ : std_logic;
SIGNAL \uart_tx_u1|baud_cnt[13]~43_combout\ : std_logic;
SIGNAL \uart_tx_u1|baud_cnt[13]~44\ : std_logic;
SIGNAL \uart_tx_u1|baud_cnt[14]~45_combout\ : std_logic;
SIGNAL \uart_tx_u1|baud_cnt[14]~46\ : std_logic;
SIGNAL \uart_tx_u1|baud_cnt[15]~47_combout\ : std_logic;
SIGNAL \uart_tx_u1|Equal0~3_combout\ : std_logic;
SIGNAL \uart_tx_u1|Equal0~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|Equal0~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add2~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector520~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector525~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|state.S_STOP~q\ : std_logic;
SIGNAL \uart_tx_u1|Selector523~0_combout\ : std_logic;
SIGNAL \cmd_step.0000~feeder_combout\ : std_logic;
SIGNAL \tx_en~input_o\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
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
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \wifi_rst_done~0_combout\ : std_logic;
SIGNAL \wifi_rst_done~q\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \boot_delay_cnt[24]~24_combout\ : std_logic;
SIGNAL \boot_delay_cnt[0]~74_combout\ : std_logic;
SIGNAL \boot_delay_cnt[1]~25_combout\ : std_logic;
SIGNAL \boot_delay_cnt[24]~73_combout\ : std_logic;
SIGNAL \boot_delay_cnt[1]~26\ : std_logic;
SIGNAL \boot_delay_cnt[2]~27_combout\ : std_logic;
SIGNAL \boot_delay_cnt[2]~28\ : std_logic;
SIGNAL \boot_delay_cnt[3]~29_combout\ : std_logic;
SIGNAL \boot_delay_cnt[3]~30\ : std_logic;
SIGNAL \boot_delay_cnt[4]~31_combout\ : std_logic;
SIGNAL \boot_delay_cnt[4]~32\ : std_logic;
SIGNAL \boot_delay_cnt[5]~33_combout\ : std_logic;
SIGNAL \boot_delay_cnt[5]~34\ : std_logic;
SIGNAL \boot_delay_cnt[6]~35_combout\ : std_logic;
SIGNAL \boot_delay_cnt[6]~36\ : std_logic;
SIGNAL \boot_delay_cnt[7]~37_combout\ : std_logic;
SIGNAL \boot_delay_cnt[7]~38\ : std_logic;
SIGNAL \boot_delay_cnt[8]~39_combout\ : std_logic;
SIGNAL \boot_delay_cnt[8]~40\ : std_logic;
SIGNAL \boot_delay_cnt[9]~41_combout\ : std_logic;
SIGNAL \boot_delay_cnt[9]~42\ : std_logic;
SIGNAL \boot_delay_cnt[10]~43_combout\ : std_logic;
SIGNAL \boot_delay_cnt[10]~44\ : std_logic;
SIGNAL \boot_delay_cnt[11]~45_combout\ : std_logic;
SIGNAL \boot_delay_cnt[11]~46\ : std_logic;
SIGNAL \boot_delay_cnt[12]~47_combout\ : std_logic;
SIGNAL \boot_delay_cnt[12]~48\ : std_logic;
SIGNAL \boot_delay_cnt[13]~49_combout\ : std_logic;
SIGNAL \boot_delay_cnt[13]~50\ : std_logic;
SIGNAL \boot_delay_cnt[14]~51_combout\ : std_logic;
SIGNAL \boot_delay_cnt[14]~52\ : std_logic;
SIGNAL \boot_delay_cnt[15]~53_combout\ : std_logic;
SIGNAL \boot_delay_cnt[15]~54\ : std_logic;
SIGNAL \boot_delay_cnt[16]~55_combout\ : std_logic;
SIGNAL \boot_delay_cnt[16]~56\ : std_logic;
SIGNAL \boot_delay_cnt[17]~57_combout\ : std_logic;
SIGNAL \boot_delay_cnt[17]~58\ : std_logic;
SIGNAL \boot_delay_cnt[18]~59_combout\ : std_logic;
SIGNAL \boot_delay_cnt[18]~60\ : std_logic;
SIGNAL \boot_delay_cnt[19]~61_combout\ : std_logic;
SIGNAL \boot_delay_cnt[19]~62\ : std_logic;
SIGNAL \boot_delay_cnt[20]~63_combout\ : std_logic;
SIGNAL \boot_delay_cnt[20]~64\ : std_logic;
SIGNAL \boot_delay_cnt[21]~65_combout\ : std_logic;
SIGNAL \boot_delay_cnt[21]~66\ : std_logic;
SIGNAL \boot_delay_cnt[22]~67_combout\ : std_logic;
SIGNAL \boot_delay_cnt[22]~68\ : std_logic;
SIGNAL \boot_delay_cnt[23]~69_combout\ : std_logic;
SIGNAL \boot_delay_cnt[23]~70\ : std_logic;
SIGNAL \boot_delay_cnt[24]~71_combout\ : std_logic;
SIGNAL \boot_ready~0_combout\ : std_logic;
SIGNAL \boot_ready~q\ : std_logic;
SIGNAL \Selector265~0_combout\ : std_logic;
SIGNAL \cmd_step.1101~q\ : std_logic;
SIGNAL \cmd_step.1110~0_combout\ : std_logic;
SIGNAL \cmd_step.1110~q\ : std_logic;
SIGNAL \init_done~0_combout\ : std_logic;
SIGNAL \init_done~q\ : std_logic;
SIGNAL \cmd_step~38_combout\ : std_logic;
SIGNAL \cmd_step.0000~q\ : std_logic;
SIGNAL \Selector253~0_combout\ : std_logic;
SIGNAL \cmd_step.0001~q\ : std_logic;
SIGNAL \Selector254~0_combout\ : std_logic;
SIGNAL \cmd_step.0010~q\ : std_logic;
SIGNAL \Selector255~0_combout\ : std_logic;
SIGNAL \cmd_step.0011~q\ : std_logic;
SIGNAL \Selector256~0_combout\ : std_logic;
SIGNAL \cmd_step.0100~q\ : std_logic;
SIGNAL \Selector257~0_combout\ : std_logic;
SIGNAL \cmd_step.0101~q\ : std_logic;
SIGNAL \Selector258~0_combout\ : std_logic;
SIGNAL \cmd_step.0110~q\ : std_logic;
SIGNAL \Selector259~0_combout\ : std_logic;
SIGNAL \cmd_step.0111~q\ : std_logic;
SIGNAL \Selector260~0_combout\ : std_logic;
SIGNAL \cmd_step.1000~q\ : std_logic;
SIGNAL \Selector261~0_combout\ : std_logic;
SIGNAL \cmd_step.1001~q\ : std_logic;
SIGNAL \Selector262~0_combout\ : std_logic;
SIGNAL \cmd_step.1010~q\ : std_logic;
SIGNAL \Selector263~0_combout\ : std_logic;
SIGNAL \cmd_step.1011~q\ : std_logic;
SIGNAL \delay_en~7_combout\ : std_logic;
SIGNAL \delay_en~8_combout\ : std_logic;
SIGNAL \delay_cnt[0]~23_combout\ : std_logic;
SIGNAL \delay_cnt[22]~53_combout\ : std_logic;
SIGNAL \delay_cnt[0]~24\ : std_logic;
SIGNAL \delay_cnt[1]~25_combout\ : std_logic;
SIGNAL \delay_cnt[1]~26\ : std_logic;
SIGNAL \delay_cnt[2]~27_combout\ : std_logic;
SIGNAL \delay_cnt[2]~28\ : std_logic;
SIGNAL \delay_cnt[3]~29_combout\ : std_logic;
SIGNAL \delay_cnt[3]~30\ : std_logic;
SIGNAL \delay_cnt[4]~31_combout\ : std_logic;
SIGNAL \delay_cnt[4]~32\ : std_logic;
SIGNAL \delay_cnt[5]~33_combout\ : std_logic;
SIGNAL \delay_cnt[5]~34\ : std_logic;
SIGNAL \delay_cnt[6]~35_combout\ : std_logic;
SIGNAL \delay_cnt[6]~36\ : std_logic;
SIGNAL \delay_cnt[7]~37_combout\ : std_logic;
SIGNAL \delay_cnt[7]~38\ : std_logic;
SIGNAL \delay_cnt[8]~39_combout\ : std_logic;
SIGNAL \delay_cnt[8]~40\ : std_logic;
SIGNAL \delay_cnt[9]~41_combout\ : std_logic;
SIGNAL \delay_cnt[9]~42\ : std_logic;
SIGNAL \delay_cnt[10]~43_combout\ : std_logic;
SIGNAL \delay_cnt[10]~44\ : std_logic;
SIGNAL \delay_cnt[11]~45_combout\ : std_logic;
SIGNAL \delay_cnt[11]~46\ : std_logic;
SIGNAL \delay_cnt[12]~47_combout\ : std_logic;
SIGNAL \delay_cnt[12]~48\ : std_logic;
SIGNAL \delay_cnt[13]~49_combout\ : std_logic;
SIGNAL \delay_cnt[13]~50\ : std_logic;
SIGNAL \delay_cnt[14]~51_combout\ : std_logic;
SIGNAL \delay_cnt[14]~52\ : std_logic;
SIGNAL \delay_cnt[15]~54_combout\ : std_logic;
SIGNAL \delay_cnt[15]~55\ : std_logic;
SIGNAL \delay_cnt[16]~56_combout\ : std_logic;
SIGNAL \delay_cnt[16]~57\ : std_logic;
SIGNAL \delay_cnt[17]~58_combout\ : std_logic;
SIGNAL \delay_cnt[17]~59\ : std_logic;
SIGNAL \delay_cnt[18]~60_combout\ : std_logic;
SIGNAL \delay_cnt[18]~61\ : std_logic;
SIGNAL \delay_cnt[19]~62_combout\ : std_logic;
SIGNAL \delay_cnt[19]~63\ : std_logic;
SIGNAL \delay_cnt[20]~64_combout\ : std_logic;
SIGNAL \delay_cnt[20]~65\ : std_logic;
SIGNAL \delay_cnt[21]~66_combout\ : std_logic;
SIGNAL \delay_cnt[21]~67\ : std_logic;
SIGNAL \delay_cnt[22]~68_combout\ : std_logic;
SIGNAL \delay_en~5_combout\ : std_logic;
SIGNAL \delay_en~0_combout\ : std_logic;
SIGNAL \delay_en~1_combout\ : std_logic;
SIGNAL \delay_en~2_combout\ : std_logic;
SIGNAL \delay_en~3_combout\ : std_logic;
SIGNAL \delay_en~4_combout\ : std_logic;
SIGNAL \delay_en~6_combout\ : std_logic;
SIGNAL \delay_en~9_combout\ : std_logic;
SIGNAL \always2~0_combout\ : std_logic;
SIGNAL \delay_en~q\ : std_logic;
SIGNAL \WideOr36~0_combout\ : std_logic;
SIGNAL \tx_start~0_combout\ : std_logic;
SIGNAL \tx_start~q\ : std_logic;
SIGNAL \uart_tx_u1|Selector522~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector522~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector523~1_combout\ : std_logic;
SIGNAL \Selector180~0_combout\ : std_logic;
SIGNAL \WideOr36~combout\ : std_logic;
SIGNAL \Selector184~0_combout\ : std_logic;
SIGNAL \Selector176~0_combout\ : std_logic;
SIGNAL \Selector179~0_combout\ : std_logic;
SIGNAL \Selector246~0_combout\ : std_logic;
SIGNAL \Selector195~0_combout\ : std_logic;
SIGNAL \Selector190~0_combout\ : std_logic;
SIGNAL \Selector183~0_combout\ : std_logic;
SIGNAL \Selector250~0_combout\ : std_logic;
SIGNAL \Selector222~0_combout\ : std_logic;
SIGNAL \Selector242~0_combout\ : std_logic;
SIGNAL \Selector242~1_combout\ : std_logic;
SIGNAL \current_cmd[10]~0_combout\ : std_logic;
SIGNAL \Selector174~0_combout\ : std_logic;
SIGNAL \Selector177~0_combout\ : std_logic;
SIGNAL \WideOr36~2_combout\ : std_logic;
SIGNAL \Selector247~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector474~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector466~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector458~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector450~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector442~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector434~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector426~0_combout\ : std_logic;
SIGNAL \Selector190~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector418~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector410~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector402~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector394~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector386~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector378~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector370~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector362~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector354~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector346~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector338~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector330~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector322~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector314~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector306~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector298~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector290~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector282~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector274~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector266~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector258~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector250~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector242~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector234~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector226~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector218~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector210~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector202~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector194~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector186~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector178~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector170~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector162~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector154~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector146~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector138~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector130~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector122~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector114~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector106~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector98~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector90~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector82~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector74~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector66~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector58~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector50~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector42~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector34~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector26~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector18~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector10~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector2~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector491~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector483~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector475~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector467~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector459~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector451~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector443~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector435~0_combout\ : std_logic;
SIGNAL \Selector198~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector427~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector419~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector411~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector403~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector395~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector387~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector379~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector371~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector363~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector355~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector347~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector339~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector331~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector323~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector315~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector307~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector299~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector291~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector283~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector275~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector267~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector259~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector251~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector243~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector235~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector227~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector219~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector211~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector203~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector195~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector187~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector179~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector171~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector163~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector155~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector147~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector139~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector131~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector123~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector115~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector107~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector99~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector91~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector83~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector75~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector67~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector59~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector51~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector43~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector35~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector27~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector19~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector11~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector3~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|always1~0_combout\ : std_logic;
SIGNAL \Selector221~0_combout\ : std_logic;
SIGNAL \Selector244~0_combout\ : std_logic;
SIGNAL \Selector248~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector492~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector484~0_combout\ : std_logic;
SIGNAL \Selector239~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector476~0_combout\ : std_logic;
SIGNAL \Selector240~0_combout\ : std_logic;
SIGNAL \Selector240~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector468~0_combout\ : std_logic;
SIGNAL \Selector226~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector460~0_combout\ : std_logic;
SIGNAL \Selector219~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector452~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector444~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector436~0_combout\ : std_logic;
SIGNAL \Selector207~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector428~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector420~0_combout\ : std_logic;
SIGNAL \Selector185~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector412~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector404~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector396~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector388~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector380~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector372~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector364~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector356~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector348~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector340~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector332~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector324~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector316~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector308~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector300~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector292~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector284~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector276~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector268~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector260~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector252~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector244~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector236~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector228~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector220~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector212~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector204~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector196~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector188~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector180~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector172~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector164~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector156~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector148~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector140~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector132~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector124~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector116~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector108~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector100~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector92~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector84~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector76~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector68~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector60~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector52~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector44~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector36~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector28~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector20~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector12~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector4~0_combout\ : std_logic;
SIGNAL \Selector213~0_combout\ : std_logic;
SIGNAL \Selector213~1_combout\ : std_logic;
SIGNAL \Selector223~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector501~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector493~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector485~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector477~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector469~0_combout\ : std_logic;
SIGNAL \Selector228~0_combout\ : std_logic;
SIGNAL \Selector227~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector461~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector453~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector445~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector437~0_combout\ : std_logic;
SIGNAL \Selector200~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector429~0_combout\ : std_logic;
SIGNAL \Selector193~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector421~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector413~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector405~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector397~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector389~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector381~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector373~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector365~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector357~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector349~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector341~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector333~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector325~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector317~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector309~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector301~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector293~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector285~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector277~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector269~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector261~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector253~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector245~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector237~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector229~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector221~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector213~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector205~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector197~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector189~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector181~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector173~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector165~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector157~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector149~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector141~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector133~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector125~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector117~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector109~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector101~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector93~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector85~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector77~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector69~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector61~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector53~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector45~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector37~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector29~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector21~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector13~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector5~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector7~0_combout\ : std_logic;
SIGNAL \Selector216~0_combout\ : std_logic;
SIGNAL \Selector214~0_combout\ : std_logic;
SIGNAL \Selector209~0_combout\ : std_logic;
SIGNAL \Selector235~0_combout\ : std_logic;
SIGNAL \Selector243~0_combout\ : std_logic;
SIGNAL \Selector241~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector494~0_combout\ : std_logic;
SIGNAL \Selector246~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector486~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector478~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector470~0_combout\ : std_logic;
SIGNAL \Selector228~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector462~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|shift_reg[50]~feeder_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector454~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector446~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector438~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector430~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector422~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector414~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector406~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector398~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector390~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector382~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector374~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector366~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector358~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector350~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector342~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector334~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector326~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector318~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector310~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector302~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector294~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector286~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector278~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector270~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector262~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector254~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector246~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector238~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector230~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector222~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector214~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector206~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector198~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector190~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector182~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector174~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector166~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector158~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector150~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector142~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector134~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector126~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector118~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector110~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector102~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector94~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector86~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector78~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector70~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector62~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector54~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector46~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector38~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector30~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector22~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector14~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector6~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|always1~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector511~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector511~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector511~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector511~3_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector503~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector495~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector487~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector479~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector471~0_combout\ : std_logic;
SIGNAL \Selector229~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector463~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector455~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector447~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector439~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector431~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector423~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector415~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector407~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector399~0_combout\ : std_logic;
SIGNAL \Selector176~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector391~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector383~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector375~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector367~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector359~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector351~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector343~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector335~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector327~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector319~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector311~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector303~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector295~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector287~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector279~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector271~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector263~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector255~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector247~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector239~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector231~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector223~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector215~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector207~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector199~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector191~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector183~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector175~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector167~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector159~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector151~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector143~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector135~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector127~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector119~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector111~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector103~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector95~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector87~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector79~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector71~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector63~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector55~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector47~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector39~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector31~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector23~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector15~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Equal3~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Equal3~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add2~15\ : std_logic;
SIGNAL \uart_tx_u1|Add2~16_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add2~12_combout\ : std_logic;
SIGNAL \uart_tx_u1|always1~3_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector523~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|state.S_START~q\ : std_logic;
SIGNAL \uart_tx_u1|shift_reg[288]~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|shift_reg[288]~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add2~1\ : std_logic;
SIGNAL \uart_tx_u1|Add2~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector519~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add2~3\ : std_logic;
SIGNAL \uart_tx_u1|Add2~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector518~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add2~5\ : std_logic;
SIGNAL \uart_tx_u1|Add2~6_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector517~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add2~7\ : std_logic;
SIGNAL \uart_tx_u1|Add2~8_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector516~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add2~9\ : std_logic;
SIGNAL \uart_tx_u1|Add2~10_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector515~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add2~11\ : std_logic;
SIGNAL \uart_tx_u1|Add2~13\ : std_logic;
SIGNAL \uart_tx_u1|Add2~14_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector513~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector522~3_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector526~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|cmd_done~q\ : std_logic;
SIGNAL \Selector264~0_combout\ : std_logic;
SIGNAL \cmd_step.1100~q\ : std_logic;
SIGNAL \WideOr36~1_combout\ : std_logic;
SIGNAL \Selector181~0_combout\ : std_logic;
SIGNAL \Selector209~1_combout\ : std_logic;
SIGNAL \Selector243~1_combout\ : std_logic;
SIGNAL \Selector251~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector496~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector488~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector480~0_combout\ : std_logic;
SIGNAL \Selector236~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector472~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector464~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector456~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector448~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector440~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector432~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector424~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector416~0_combout\ : std_logic;
SIGNAL \Selector182~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector408~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector400~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector392~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector384~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector376~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector368~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector360~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector352~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector344~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector336~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector328~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector320~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector312~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector304~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector296~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector288~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector280~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector272~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector264~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector256~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector248~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector240~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector232~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector224~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector216~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector208~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector200~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector192~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector184~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector176~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector168~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector160~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector152~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector144~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector136~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector128~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector120~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector112~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector104~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector96~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector88~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector80~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector72~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector64~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector56~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector48~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector40~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector32~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector24~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector16~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector8~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector521~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector524~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|bit_idx[0]~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|bit_idx[0]~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|bit_idx[1]~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|Add1~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|bit_idx[2]~3_combout\ : std_logic;
SIGNAL \uart_tx_u1|Equal2~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector524~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|state.S_DATA~q\ : std_logic;
SIGNAL \uart_tx_u1|Selector521~3_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector521~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector521~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector521~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|tx_busy~q\ : std_logic;
SIGNAL \uart_tx_u1|baud_cnt[10]~20_combout\ : std_logic;
SIGNAL \uart_tx_u1|baud_cnt[0]~17\ : std_logic;
SIGNAL \uart_tx_u1|baud_cnt[1]~18_combout\ : std_logic;
SIGNAL \uart_tx_u1|baud_cnt[1]~19\ : std_logic;
SIGNAL \uart_tx_u1|baud_cnt[2]~21_combout\ : std_logic;
SIGNAL \uart_tx_u1|baud_cnt[2]~22\ : std_logic;
SIGNAL \uart_tx_u1|baud_cnt[3]~23_combout\ : std_logic;
SIGNAL \uart_tx_u1|baud_cnt[3]~24\ : std_logic;
SIGNAL \uart_tx_u1|baud_cnt[4]~25_combout\ : std_logic;
SIGNAL \uart_tx_u1|baud_cnt[4]~26\ : std_logic;
SIGNAL \uart_tx_u1|baud_cnt[5]~27_combout\ : std_logic;
SIGNAL \uart_tx_u1|baud_cnt[5]~28\ : std_logic;
SIGNAL \uart_tx_u1|baud_cnt[6]~29_combout\ : std_logic;
SIGNAL \uart_tx_u1|baud_cnt[6]~30\ : std_logic;
SIGNAL \uart_tx_u1|baud_cnt[7]~31_combout\ : std_logic;
SIGNAL \uart_tx_u1|baud_cnt[7]~32\ : std_logic;
SIGNAL \uart_tx_u1|baud_cnt[8]~33_combout\ : std_logic;
SIGNAL \uart_tx_u1|baud_cnt[8]~34\ : std_logic;
SIGNAL \uart_tx_u1|baud_cnt[9]~35_combout\ : std_logic;
SIGNAL \uart_tx_u1|baud_cnt[9]~36\ : std_logic;
SIGNAL \uart_tx_u1|baud_cnt[10]~37_combout\ : std_logic;
SIGNAL \uart_tx_u1|baud_cnt[10]~38\ : std_logic;
SIGNAL \uart_tx_u1|baud_cnt[11]~39_combout\ : std_logic;
SIGNAL \uart_tx_u1|Equal0~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector526~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector526~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector522~6_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector522~5_combout\ : std_logic;
SIGNAL \uart_tx_u1|state.S_IDLE~q\ : std_logic;
SIGNAL \uart_tx_u1|Selector514~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|always1~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector0~3_combout\ : std_logic;
SIGNAL \uart_tx_u1|Mux0~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Mux0~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector0~0_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector0~1_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector0~2_combout\ : std_logic;
SIGNAL \uart_tx_u1|Selector0~4_combout\ : std_logic;
SIGNAL \uart_tx_u1|tx~q\ : std_logic;
SIGNAL \rx~input_o\ : std_logic;
SIGNAL \RST_WiFi~0_combout\ : std_logic;
SIGNAL \RST_WiFi~reg0_q\ : std_logic;
SIGNAL \u_uart_rx|Selector63~0_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt[0]~16_combout\ : std_logic;
SIGNAL \u_uart_rx|rx_state.RX_IDLE~_wirecell_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt[9]~20_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt[9]~21_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt[0]~17\ : std_logic;
SIGNAL \u_uart_rx|cnt[1]~18_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \u_uart_rx|cnt[1]~19\ : std_logic;
SIGNAL \u_uart_rx|cnt[2]~22_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt[2]~23\ : std_logic;
SIGNAL \u_uart_rx|cnt[3]~24_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt[3]~25\ : std_logic;
SIGNAL \u_uart_rx|cnt[4]~26_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt[4]~27\ : std_logic;
SIGNAL \u_uart_rx|cnt[5]~28_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt[5]~29\ : std_logic;
SIGNAL \u_uart_rx|cnt[6]~30_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt[6]~31\ : std_logic;
SIGNAL \u_uart_rx|cnt[7]~32_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt[7]~33\ : std_logic;
SIGNAL \u_uart_rx|cnt[8]~34_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt[8]~35\ : std_logic;
SIGNAL \u_uart_rx|cnt[9]~36_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt[9]~37\ : std_logic;
SIGNAL \u_uart_rx|cnt[10]~38_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt[10]~39\ : std_logic;
SIGNAL \u_uart_rx|cnt[11]~40_combout\ : std_logic;
SIGNAL \u_uart_rx|Equal0~2_combout\ : std_logic;
SIGNAL \u_uart_rx|Equal0~1_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt[11]~41\ : std_logic;
SIGNAL \u_uart_rx|cnt[12]~42_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt[12]~43\ : std_logic;
SIGNAL \u_uart_rx|cnt[13]~44_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt[13]~45\ : std_logic;
SIGNAL \u_uart_rx|cnt[14]~46_combout\ : std_logic;
SIGNAL \u_uart_rx|cnt[14]~47\ : std_logic;
SIGNAL \u_uart_rx|cnt[15]~48_combout\ : std_logic;
SIGNAL \u_uart_rx|Equal0~3_combout\ : std_logic;
SIGNAL \u_uart_rx|Equal0~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Equal0~4_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector0~1_combout\ : std_logic;
SIGNAL \u_uart_rx|rx_state.RX_IDLE~q\ : std_logic;
SIGNAL \u_uart_rx|Selector22~0_combout\ : std_logic;
SIGNAL \u_uart_rx|bit_cnt[0]~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector21~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector20~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector2~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector2~1_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector1~2_combout\ : std_logic;
SIGNAL \u_uart_rx|Decoder0~2_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector1~3_combout\ : std_logic;
SIGNAL \u_uart_rx|rx_state.RX_START~q\ : std_logic;
SIGNAL \u_uart_rx|Selector2~2_combout\ : std_logic;
SIGNAL \u_uart_rx|rx_state.RX_DATA~q\ : std_logic;
SIGNAL \u_uart_rx|Selector23~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Add1~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector3~1_combout\ : std_logic;
SIGNAL \u_uart_rx|rx_state.RX_STOP~q\ : std_logic;
SIGNAL \u_uart_rx|rx_byte[7]~0_combout\ : std_logic;
SIGNAL \u_uart_rx|rx_done~q\ : std_logic;
SIGNAL \u_uart_rx|data_cnt[15]~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Add5~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector78~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Add5~1\ : std_logic;
SIGNAL \u_uart_rx|Add5~2_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector77~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Add5~3\ : std_logic;
SIGNAL \u_uart_rx|Add5~4_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector76~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Add5~5\ : std_logic;
SIGNAL \u_uart_rx|Add5~6_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector75~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Add5~7\ : std_logic;
SIGNAL \u_uart_rx|Add5~8_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector74~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Add5~9\ : std_logic;
SIGNAL \u_uart_rx|Add5~10_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector73~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Add5~11\ : std_logic;
SIGNAL \u_uart_rx|Add5~12_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector72~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Add5~13\ : std_logic;
SIGNAL \u_uart_rx|Add5~14_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector71~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Add5~15\ : std_logic;
SIGNAL \u_uart_rx|Add5~16_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector70~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Add5~17\ : std_logic;
SIGNAL \u_uart_rx|Add5~18_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector69~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Add5~19\ : std_logic;
SIGNAL \u_uart_rx|Add5~20_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector68~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Add5~21\ : std_logic;
SIGNAL \u_uart_rx|Add5~22_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector67~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Add5~23\ : std_logic;
SIGNAL \u_uart_rx|Add5~24_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector66~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Add5~25\ : std_logic;
SIGNAL \u_uart_rx|Add5~26_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector65~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Add5~27\ : std_logic;
SIGNAL \u_uart_rx|Add5~28_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector64~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Add5~29\ : std_logic;
SIGNAL \u_uart_rx|Add5~30_combout\ : std_logic;
SIGNAL \u_uart_rx|Add5~31\ : std_logic;
SIGNAL \u_uart_rx|Add5~32_combout\ : std_logic;
SIGNAL \u_uart_rx|always1~3_combout\ : std_logic;
SIGNAL \u_uart_rx|always1~4_combout\ : std_logic;
SIGNAL \u_uart_rx|Decoder0~3_combout\ : std_logic;
SIGNAL \u_uart_rx|Decoder0~0_combout\ : std_logic;
SIGNAL \u_uart_rx|rdata[1]~1_combout\ : std_logic;
SIGNAL \u_uart_rx|rdata[7]~4_combout\ : std_logic;
SIGNAL \u_uart_rx|rdata[5]~3_combout\ : std_logic;
SIGNAL \u_uart_rx|Decoder0~4_combout\ : std_logic;
SIGNAL \u_uart_rx|rdata[6]~5_combout\ : std_logic;
SIGNAL \u_uart_rx|rdata[3]~2_combout\ : std_logic;
SIGNAL \u_uart_rx|rx_byte[3]~feeder_combout\ : std_logic;
SIGNAL \u_uart_rx|Equal2~0_combout\ : std_logic;
SIGNAL \u_uart_rx|rdata[2]~7_combout\ : std_logic;
SIGNAL \u_uart_rx|rx_byte[2]~feeder_combout\ : std_logic;
SIGNAL \u_uart_rx|Decoder0~1_combout\ : std_logic;
SIGNAL \u_uart_rx|rdata[0]~0_combout\ : std_logic;
SIGNAL \u_uart_rx|rdata[4]~6_combout\ : std_logic;
SIGNAL \u_uart_rx|rx_byte[4]~feeder_combout\ : std_logic;
SIGNAL \u_uart_rx|Equal5~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Equal6~0_combout\ : std_logic;
SIGNAL \u_uart_rx|always1~5_combout\ : std_logic;
SIGNAL \u_uart_rx|always1~6_combout\ : std_logic;
SIGNAL \u_uart_rx|Equal2~1_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector38~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Equal4~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector38~1_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector38~2_combout\ : std_logic;
SIGNAL \u_uart_rx|ipd_step~21_combout\ : std_logic;
SIGNAL \u_uart_rx|ipd_step~19_combout\ : std_logic;
SIGNAL \u_uart_rx|ipd_step.01~q\ : std_logic;
SIGNAL \u_uart_rx|ipd_step~20_combout\ : std_logic;
SIGNAL \u_uart_rx|ipd_step.10~q\ : std_logic;
SIGNAL \u_uart_rx|ipd_step~14_combout\ : std_logic;
SIGNAL \u_uart_rx|ipd_step.11~q\ : std_logic;
SIGNAL \u_uart_rx|ipd_step.00~feeder_combout\ : std_logic;
SIGNAL \u_uart_rx|ipd_step.00~q\ : std_logic;
SIGNAL \u_uart_rx|Equal3~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Equal3~1_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector38~5_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector38~3_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector38~4_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector38~6_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector38~7_combout\ : std_logic;
SIGNAL \u_uart_rx|always1~1_combout\ : std_logic;
SIGNAL \u_uart_rx|always1~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Add3~0_combout\ : std_logic;
SIGNAL \u_uart_rx|rx_Data_len[0]~46_combout\ : std_logic;
SIGNAL \u_uart_rx|rx_Data_len[0]~47_combout\ : std_logic;
SIGNAL \u_uart_rx|rx_Data_len[1]~15_combout\ : std_logic;
SIGNAL \u_uart_rx|rx_Data_len[15]~45_combout\ : std_logic;
SIGNAL \u_uart_rx|rx_Data_len[1]~16\ : std_logic;
SIGNAL \u_uart_rx|rx_Data_len[2]~17_combout\ : std_logic;
SIGNAL \u_uart_rx|Add2~0_combout\ : std_logic;
SIGNAL \u_uart_rx|rx_Data_len[2]~18\ : std_logic;
SIGNAL \u_uart_rx|rx_Data_len[3]~19_combout\ : std_logic;
SIGNAL \u_uart_rx|Add3~3_combout\ : std_logic;
SIGNAL \u_uart_rx|Add2~1\ : std_logic;
SIGNAL \u_uart_rx|Add2~2_combout\ : std_logic;
SIGNAL \u_uart_rx|rx_Data_len[3]~20\ : std_logic;
SIGNAL \u_uart_rx|rx_Data_len[4]~21_combout\ : std_logic;
SIGNAL \u_uart_rx|Add2~3\ : std_logic;
SIGNAL \u_uart_rx|Add2~4_combout\ : std_logic;
SIGNAL \u_uart_rx|rx_Data_len[4]~22\ : std_logic;
SIGNAL \u_uart_rx|rx_Data_len[5]~23_combout\ : std_logic;
SIGNAL \u_uart_rx|Add2~5\ : std_logic;
SIGNAL \u_uart_rx|Add2~6_combout\ : std_logic;
SIGNAL \u_uart_rx|Add3~2_combout\ : std_logic;
SIGNAL \u_uart_rx|rx_Data_len[5]~24\ : std_logic;
SIGNAL \u_uart_rx|rx_Data_len[6]~25_combout\ : std_logic;
SIGNAL \u_uart_rx|Add2~7\ : std_logic;
SIGNAL \u_uart_rx|Add2~8_combout\ : std_logic;
SIGNAL \u_uart_rx|Add3~1_combout\ : std_logic;
SIGNAL \u_uart_rx|rx_Data_len[6]~26\ : std_logic;
SIGNAL \u_uart_rx|rx_Data_len[7]~27_combout\ : std_logic;
SIGNAL \u_uart_rx|Add2~9\ : std_logic;
SIGNAL \u_uart_rx|Add2~10_combout\ : std_logic;
SIGNAL \u_uart_rx|rx_Data_len[7]~28\ : std_logic;
SIGNAL \u_uart_rx|rx_Data_len[8]~29_combout\ : std_logic;
SIGNAL \u_uart_rx|Add2~11\ : std_logic;
SIGNAL \u_uart_rx|Add2~12_combout\ : std_logic;
SIGNAL \u_uart_rx|rx_Data_len[8]~30\ : std_logic;
SIGNAL \u_uart_rx|rx_Data_len[9]~31_combout\ : std_logic;
SIGNAL \u_uart_rx|Add2~13\ : std_logic;
SIGNAL \u_uart_rx|Add2~14_combout\ : std_logic;
SIGNAL \u_uart_rx|rx_Data_len[9]~32\ : std_logic;
SIGNAL \u_uart_rx|rx_Data_len[10]~33_combout\ : std_logic;
SIGNAL \u_uart_rx|Add2~15\ : std_logic;
SIGNAL \u_uart_rx|Add2~16_combout\ : std_logic;
SIGNAL \u_uart_rx|rx_Data_len[10]~34\ : std_logic;
SIGNAL \u_uart_rx|rx_Data_len[11]~35_combout\ : std_logic;
SIGNAL \u_uart_rx|Add2~17\ : std_logic;
SIGNAL \u_uart_rx|Add2~18_combout\ : std_logic;
SIGNAL \u_uart_rx|rx_Data_len[11]~36\ : std_logic;
SIGNAL \u_uart_rx|rx_Data_len[12]~37_combout\ : std_logic;
SIGNAL \u_uart_rx|Add2~19\ : std_logic;
SIGNAL \u_uart_rx|Add2~20_combout\ : std_logic;
SIGNAL \u_uart_rx|rx_Data_len[12]~38\ : std_logic;
SIGNAL \u_uart_rx|rx_Data_len[13]~39_combout\ : std_logic;
SIGNAL \u_uart_rx|Add2~21\ : std_logic;
SIGNAL \u_uart_rx|Add2~22_combout\ : std_logic;
SIGNAL \u_uart_rx|rx_Data_len[13]~40\ : std_logic;
SIGNAL \u_uart_rx|rx_Data_len[14]~41_combout\ : std_logic;
SIGNAL \u_uart_rx|Add2~23\ : std_logic;
SIGNAL \u_uart_rx|Add2~24_combout\ : std_logic;
SIGNAL \u_uart_rx|rx_Data_len[14]~42\ : std_logic;
SIGNAL \u_uart_rx|rx_Data_len[15]~43_combout\ : std_logic;
SIGNAL \u_uart_rx|LessThan3~1_cout\ : std_logic;
SIGNAL \u_uart_rx|LessThan3~3_cout\ : std_logic;
SIGNAL \u_uart_rx|LessThan3~5_cout\ : std_logic;
SIGNAL \u_uart_rx|LessThan3~7_cout\ : std_logic;
SIGNAL \u_uart_rx|LessThan3~9_cout\ : std_logic;
SIGNAL \u_uart_rx|LessThan3~11_cout\ : std_logic;
SIGNAL \u_uart_rx|LessThan3~13_cout\ : std_logic;
SIGNAL \u_uart_rx|LessThan3~15_cout\ : std_logic;
SIGNAL \u_uart_rx|LessThan3~17_cout\ : std_logic;
SIGNAL \u_uart_rx|LessThan3~19_cout\ : std_logic;
SIGNAL \u_uart_rx|LessThan3~21_cout\ : std_logic;
SIGNAL \u_uart_rx|LessThan3~23_cout\ : std_logic;
SIGNAL \u_uart_rx|LessThan3~25_cout\ : std_logic;
SIGNAL \u_uart_rx|LessThan3~27_cout\ : std_logic;
SIGNAL \u_uart_rx|LessThan3~29_cout\ : std_logic;
SIGNAL \u_uart_rx|LessThan3~30_combout\ : std_logic;
SIGNAL \u_uart_rx|always1~2_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector38~8_combout\ : std_logic;
SIGNAL \u_uart_rx|parse_state.S_SEARCH_PLUS~q\ : std_logic;
SIGNAL \u_uart_rx|ipd_step~15_combout\ : std_logic;
SIGNAL \u_uart_rx|ipd_step~16_combout\ : std_logic;
SIGNAL \u_uart_rx|ipd_step~17_combout\ : std_logic;
SIGNAL \u_uart_rx|ipd_step~18_combout\ : std_logic;
SIGNAL \u_uart_rx|parse_state.S_MATCH_IPD~q\ : std_logic;
SIGNAL \u_uart_rx|Selector40~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector40~1_combout\ : std_logic;
SIGNAL \u_uart_rx|parse_state.S_PARSE_ID~q\ : std_logic;
SIGNAL \u_uart_rx|Selector41~0_combout\ : std_logic;
SIGNAL \u_uart_rx|parse_state.S_PARSE_LEN~q\ : std_logic;
SIGNAL \u_uart_rx|Selector42~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector42~1_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector42~2_combout\ : std_logic;
SIGNAL \u_uart_rx|parse_state.S_RECV_DATA~q\ : std_logic;
SIGNAL \u_uart_rx|Selector334~0_combout\ : std_logic;
SIGNAL \u_uart_rx|rx_Data_reg[0]~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector333~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector327~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector331~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector332~0_combout\ : std_logic;
SIGNAL \mode_LED_u1|always0~3_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector328~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector330~0_combout\ : std_logic;
SIGNAL \u_uart_rx|Selector329~0_combout\ : std_logic;
SIGNAL \mode_LED_u1|always0~4_combout\ : std_logic;
SIGNAL \mode_LED_u1|always0~0_combout\ : std_logic;
SIGNAL \mode_LED_u1|always0~1_combout\ : std_logic;
SIGNAL \mode_LED_u1|always0~2_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add3~0_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add1~0_combout\ : std_logic;
SIGNAL \mode_LED_u1|WiFi_signal~0_combout\ : std_logic;
SIGNAL \mode_LED_u1|WiFi_signal~1_combout\ : std_logic;
SIGNAL \u_uart_rx|rx_ready~0_combout\ : std_logic;
SIGNAL \u_uart_rx|rx_ready~q\ : std_logic;
SIGNAL \mode_LED_u1|Add3~1\ : std_logic;
SIGNAL \mode_LED_u1|Add3~2_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add4~0_combout\ : std_logic;
SIGNAL \mode_LED_u1|always0~5_combout\ : std_logic;
SIGNAL \mode_LED_u1|always0~7_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add2~3_combout\ : std_logic;
SIGNAL \mode_LED_u1|always0~6_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add1~1\ : std_logic;
SIGNAL \mode_LED_u1|Add1~2_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add2~0_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add2~2_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add2~4_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add3~3\ : std_logic;
SIGNAL \mode_LED_u1|Add3~4_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add4~1\ : std_logic;
SIGNAL \mode_LED_u1|Add4~2_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add1~3\ : std_logic;
SIGNAL \mode_LED_u1|Add1~4_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add2~1\ : std_logic;
SIGNAL \mode_LED_u1|Add2~5_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add2~7_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add2~8_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add3~5\ : std_logic;
SIGNAL \mode_LED_u1|Add3~6_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add4~3\ : std_logic;
SIGNAL \mode_LED_u1|Add4~4_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add1~5\ : std_logic;
SIGNAL \mode_LED_u1|Add1~6_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add2~6\ : std_logic;
SIGNAL \mode_LED_u1|Add2~9_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add2~11_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add2~12_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add1~7\ : std_logic;
SIGNAL \mode_LED_u1|Add1~8_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add2~10\ : std_logic;
SIGNAL \mode_LED_u1|Add2~13_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add3~7\ : std_logic;
SIGNAL \mode_LED_u1|Add3~8_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add4~5\ : std_logic;
SIGNAL \mode_LED_u1|Add4~6_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add2~15_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add2~16_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add3~9\ : std_logic;
SIGNAL \mode_LED_u1|Add3~10_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add4~7\ : std_logic;
SIGNAL \mode_LED_u1|Add4~8_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add1~9\ : std_logic;
SIGNAL \mode_LED_u1|Add1~10_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add2~14\ : std_logic;
SIGNAL \mode_LED_u1|Add2~17_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add2~19_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add2~20_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add3~11\ : std_logic;
SIGNAL \mode_LED_u1|Add3~12_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add4~9\ : std_logic;
SIGNAL \mode_LED_u1|Add4~10_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add1~11\ : std_logic;
SIGNAL \mode_LED_u1|Add1~12_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add2~18\ : std_logic;
SIGNAL \mode_LED_u1|Add2~21_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add2~23_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add2~24_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add3~13\ : std_logic;
SIGNAL \mode_LED_u1|Add3~14_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add4~11\ : std_logic;
SIGNAL \mode_LED_u1|Add4~12_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add1~13\ : std_logic;
SIGNAL \mode_LED_u1|Add1~14_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add2~22\ : std_logic;
SIGNAL \mode_LED_u1|Add2~25_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add2~27_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add2~28_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add1~15\ : std_logic;
SIGNAL \mode_LED_u1|Add1~16_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add2~26\ : std_logic;
SIGNAL \mode_LED_u1|Add2~29_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add3~15\ : std_logic;
SIGNAL \mode_LED_u1|Add3~16_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add4~13\ : std_logic;
SIGNAL \mode_LED_u1|Add4~14_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add2~31_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add2~32_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add4~15\ : std_logic;
SIGNAL \mode_LED_u1|Add4~16_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add2~30\ : std_logic;
SIGNAL \mode_LED_u1|Add2~33_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add2~35_combout\ : std_logic;
SIGNAL \mode_LED_u1|Add2~36_combout\ : std_logic;
SIGNAL \mode_LED_u1|WiFi_signal[9]~feeder_combout\ : std_logic;
SIGNAL \mode_LED_u1|WiFi_signal[10]~feeder_combout\ : std_logic;
SIGNAL \mode_LED_u1|WiFi_signal[11]~feeder_combout\ : std_logic;
SIGNAL \mode_LED_u1|WiFi_signal[12]~feeder_combout\ : std_logic;
SIGNAL \mode_LED_u1|WiFi_signal[13]~feeder_combout\ : std_logic;
SIGNAL \mode_LED_u1|WiFi_signal[14]~feeder_combout\ : std_logic;
SIGNAL rst_cnt : std_logic_vector(20 DOWNTO 0);
SIGNAL delay_cnt : std_logic_vector(22 DOWNTO 0);
SIGNAL current_cmd : std_logic_vector(511 DOWNTO 0);
SIGNAL boot_delay_cnt : std_logic_vector(24 DOWNTO 0);
SIGNAL \uart_tx_u1|byte_cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_tx_u1|shift_byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_tx_u1|shift_reg\ : std_logic_vector(511 DOWNTO 0);
SIGNAL \uart_tx_u1|bit_idx\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \uart_tx_u1|baud_cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_uart_rx|rx_byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_uart_rx|rx_Data_reg\ : std_logic_vector(255 DOWNTO 0);
SIGNAL \u_uart_rx|rx_Data_len\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_uart_rx|rdata\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_uart_rx|data_cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_uart_rx|cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_uart_rx|bit_cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mode_LED_u1|WiFi_signal\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_delay_en~6_combout\ : std_logic;
SIGNAL \u_uart_rx|ALT_INV_parse_state.S_PARSE_LEN~q\ : std_logic;
SIGNAL \u_uart_rx|ALT_INV_rx_done~q\ : std_logic;
SIGNAL \mode_LED_u1|ALT_INV_WiFi_signal\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \uart_tx_u1|ALT_INV_tx~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst_n <= rst_n;
ww_tx_en <= tx_en;
ww_rx <= rx;
tx <= ww_tx;
LED <= ww_LED;
Server_WiFi_txd <= ww_Server_WiFi_txd;
RST_WiFi <= ww_RST_WiFi;
WiFi_signal <= ww_WiFi_signal;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_delay_en~6_combout\ <= NOT \delay_en~6_combout\;
\u_uart_rx|ALT_INV_parse_state.S_PARSE_LEN~q\ <= NOT \u_uart_rx|parse_state.S_PARSE_LEN~q\;
\u_uart_rx|ALT_INV_rx_done~q\ <= NOT \u_uart_rx|rx_done~q\;
\mode_LED_u1|ALT_INV_WiFi_signal\(15) <= NOT \mode_LED_u1|WiFi_signal\(15);
\mode_LED_u1|ALT_INV_WiFi_signal\(14) <= NOT \mode_LED_u1|WiFi_signal\(14);
\mode_LED_u1|ALT_INV_WiFi_signal\(13) <= NOT \mode_LED_u1|WiFi_signal\(13);
\mode_LED_u1|ALT_INV_WiFi_signal\(12) <= NOT \mode_LED_u1|WiFi_signal\(12);
\mode_LED_u1|ALT_INV_WiFi_signal\(11) <= NOT \mode_LED_u1|WiFi_signal\(11);
\mode_LED_u1|ALT_INV_WiFi_signal\(10) <= NOT \mode_LED_u1|WiFi_signal\(10);
\mode_LED_u1|ALT_INV_WiFi_signal\(9) <= NOT \mode_LED_u1|WiFi_signal\(9);
\mode_LED_u1|ALT_INV_WiFi_signal\(8) <= NOT \mode_LED_u1|WiFi_signal\(8);
\mode_LED_u1|ALT_INV_WiFi_signal\(7) <= NOT \mode_LED_u1|WiFi_signal\(7);
\mode_LED_u1|ALT_INV_WiFi_signal\(6) <= NOT \mode_LED_u1|WiFi_signal\(6);
\mode_LED_u1|ALT_INV_WiFi_signal\(5) <= NOT \mode_LED_u1|WiFi_signal\(5);
\mode_LED_u1|ALT_INV_WiFi_signal\(4) <= NOT \mode_LED_u1|WiFi_signal\(4);
\mode_LED_u1|ALT_INV_WiFi_signal\(3) <= NOT \mode_LED_u1|WiFi_signal\(3);
\mode_LED_u1|ALT_INV_WiFi_signal\(2) <= NOT \mode_LED_u1|WiFi_signal\(2);
\mode_LED_u1|ALT_INV_WiFi_signal\(1) <= NOT \mode_LED_u1|WiFi_signal\(1);
\mode_LED_u1|ALT_INV_WiFi_signal\(0) <= NOT \mode_LED_u1|WiFi_signal\(0);
\uart_tx_u1|ALT_INV_tx~q\ <= NOT \uart_tx_u1|tx~q\;

-- Location: IOOBUF_X67_Y27_N16
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

-- Location: IOOBUF_X9_Y43_N9
\LED[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\LED[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

-- Location: IOOBUF_X67_Y3_N23
\LED[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[2]~output_o\);

-- Location: IOOBUF_X61_Y0_N9
\LED[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[3]~output_o\);

-- Location: IOOBUF_X25_Y43_N9
\LED[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[4]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\LED[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[5]~output_o\);

-- Location: IOOBUF_X63_Y0_N9
\LED[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[6]~output_o\);

-- Location: IOOBUF_X1_Y43_N23
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

-- Location: IOOBUF_X67_Y28_N23
\Server_WiFi_txd~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx~input_o\,
	devoe => ww_devoe,
	o => \Server_WiFi_txd~output_o\);

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

-- Location: IOOBUF_X67_Y31_N23
\WiFi_signal[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|ALT_INV_WiFi_signal\(0),
	devoe => ww_devoe,
	o => \WiFi_signal[0]~output_o\);

-- Location: IOOBUF_X67_Y35_N2
\WiFi_signal[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|ALT_INV_WiFi_signal\(1),
	devoe => ww_devoe,
	o => \WiFi_signal[1]~output_o\);

-- Location: IOOBUF_X67_Y40_N23
\WiFi_signal[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|ALT_INV_WiFi_signal\(2),
	devoe => ww_devoe,
	o => \WiFi_signal[2]~output_o\);

-- Location: IOOBUF_X61_Y43_N16
\WiFi_signal[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|ALT_INV_WiFi_signal\(3),
	devoe => ww_devoe,
	o => \WiFi_signal[3]~output_o\);

-- Location: IOOBUF_X59_Y43_N16
\WiFi_signal[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|ALT_INV_WiFi_signal\(4),
	devoe => ww_devoe,
	o => \WiFi_signal[4]~output_o\);

-- Location: IOOBUF_X56_Y43_N23
\WiFi_signal[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|ALT_INV_WiFi_signal\(5),
	devoe => ww_devoe,
	o => \WiFi_signal[5]~output_o\);

-- Location: IOOBUF_X50_Y43_N2
\WiFi_signal[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|ALT_INV_WiFi_signal\(6),
	devoe => ww_devoe,
	o => \WiFi_signal[6]~output_o\);

-- Location: IOOBUF_X48_Y43_N9
\WiFi_signal[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|ALT_INV_WiFi_signal\(7),
	devoe => ww_devoe,
	o => \WiFi_signal[7]~output_o\);

-- Location: IOOBUF_X29_Y43_N23
\WiFi_signal[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|ALT_INV_WiFi_signal\(8),
	devoe => ww_devoe,
	o => \WiFi_signal[8]~output_o\);

-- Location: IOOBUF_X38_Y43_N30
\WiFi_signal[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|ALT_INV_WiFi_signal\(9),
	devoe => ww_devoe,
	o => \WiFi_signal[9]~output_o\);

-- Location: IOOBUF_X45_Y43_N9
\WiFi_signal[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|ALT_INV_WiFi_signal\(10),
	devoe => ww_devoe,
	o => \WiFi_signal[10]~output_o\);

-- Location: IOOBUF_X48_Y43_N16
\WiFi_signal[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|ALT_INV_WiFi_signal\(11),
	devoe => ww_devoe,
	o => \WiFi_signal[11]~output_o\);

-- Location: IOOBUF_X45_Y43_N16
\WiFi_signal[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|ALT_INV_WiFi_signal\(12),
	devoe => ww_devoe,
	o => \WiFi_signal[12]~output_o\);

-- Location: IOOBUF_X45_Y43_N2
\WiFi_signal[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|ALT_INV_WiFi_signal\(13),
	devoe => ww_devoe,
	o => \WiFi_signal[13]~output_o\);

-- Location: IOOBUF_X50_Y43_N23
\WiFi_signal[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|ALT_INV_WiFi_signal\(14),
	devoe => ww_devoe,
	o => \WiFi_signal[14]~output_o\);

-- Location: IOOBUF_X41_Y43_N9
\WiFi_signal[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mode_LED_u1|ALT_INV_WiFi_signal\(15),
	devoe => ww_devoe,
	o => \WiFi_signal[15]~output_o\);

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

-- Location: LCCOMB_X48_Y24_N0
\uart_tx_u1|baud_cnt[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|baud_cnt[0]~16_combout\ = \uart_tx_u1|baud_cnt\(0) $ (VCC)
-- \uart_tx_u1|baud_cnt[0]~17\ = CARRY(\uart_tx_u1|baud_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|baud_cnt\(0),
	datad => VCC,
	combout => \uart_tx_u1|baud_cnt[0]~16_combout\,
	cout => \uart_tx_u1|baud_cnt[0]~17\);

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

-- Location: LCCOMB_X49_Y24_N24
\uart_tx_u1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Equal0~0_combout\ = (\uart_tx_u1|baud_cnt\(1)) # ((\uart_tx_u1|baud_cnt\(3)) # ((\uart_tx_u1|baud_cnt\(2)) # (!\uart_tx_u1|baud_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|baud_cnt\(1),
	datab => \uart_tx_u1|baud_cnt\(3),
	datac => \uart_tx_u1|baud_cnt\(0),
	datad => \uart_tx_u1|baud_cnt\(2),
	combout => \uart_tx_u1|Equal0~0_combout\);

-- Location: LCCOMB_X48_Y24_N22
\uart_tx_u1|baud_cnt[11]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|baud_cnt[11]~39_combout\ = (\uart_tx_u1|baud_cnt\(11) & (!\uart_tx_u1|baud_cnt[10]~38\)) # (!\uart_tx_u1|baud_cnt\(11) & ((\uart_tx_u1|baud_cnt[10]~38\) # (GND)))
-- \uart_tx_u1|baud_cnt[11]~40\ = CARRY((!\uart_tx_u1|baud_cnt[10]~38\) # (!\uart_tx_u1|baud_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|baud_cnt\(11),
	datad => VCC,
	cin => \uart_tx_u1|baud_cnt[10]~38\,
	combout => \uart_tx_u1|baud_cnt[11]~39_combout\,
	cout => \uart_tx_u1|baud_cnt[11]~40\);

-- Location: LCCOMB_X48_Y24_N24
\uart_tx_u1|baud_cnt[12]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|baud_cnt[12]~41_combout\ = (\uart_tx_u1|baud_cnt\(12) & (\uart_tx_u1|baud_cnt[11]~40\ $ (GND))) # (!\uart_tx_u1|baud_cnt\(12) & (!\uart_tx_u1|baud_cnt[11]~40\ & VCC))
-- \uart_tx_u1|baud_cnt[12]~42\ = CARRY((\uart_tx_u1|baud_cnt\(12) & !\uart_tx_u1|baud_cnt[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|baud_cnt\(12),
	datad => VCC,
	cin => \uart_tx_u1|baud_cnt[11]~40\,
	combout => \uart_tx_u1|baud_cnt[12]~41_combout\,
	cout => \uart_tx_u1|baud_cnt[12]~42\);

-- Location: FF_X48_Y24_N25
\uart_tx_u1|baud_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|baud_cnt[12]~41_combout\,
	clrn => \rst_n~input_o\,
	sclr => \uart_tx_u1|baud_cnt[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|baud_cnt\(12));

-- Location: LCCOMB_X48_Y24_N26
\uart_tx_u1|baud_cnt[13]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|baud_cnt[13]~43_combout\ = (\uart_tx_u1|baud_cnt\(13) & (!\uart_tx_u1|baud_cnt[12]~42\)) # (!\uart_tx_u1|baud_cnt\(13) & ((\uart_tx_u1|baud_cnt[12]~42\) # (GND)))
-- \uart_tx_u1|baud_cnt[13]~44\ = CARRY((!\uart_tx_u1|baud_cnt[12]~42\) # (!\uart_tx_u1|baud_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|baud_cnt\(13),
	datad => VCC,
	cin => \uart_tx_u1|baud_cnt[12]~42\,
	combout => \uart_tx_u1|baud_cnt[13]~43_combout\,
	cout => \uart_tx_u1|baud_cnt[13]~44\);

-- Location: FF_X48_Y24_N27
\uart_tx_u1|baud_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|baud_cnt[13]~43_combout\,
	clrn => \rst_n~input_o\,
	sclr => \uart_tx_u1|baud_cnt[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|baud_cnt\(13));

-- Location: LCCOMB_X48_Y24_N28
\uart_tx_u1|baud_cnt[14]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|baud_cnt[14]~45_combout\ = (\uart_tx_u1|baud_cnt\(14) & (\uart_tx_u1|baud_cnt[13]~44\ $ (GND))) # (!\uart_tx_u1|baud_cnt\(14) & (!\uart_tx_u1|baud_cnt[13]~44\ & VCC))
-- \uart_tx_u1|baud_cnt[14]~46\ = CARRY((\uart_tx_u1|baud_cnt\(14) & !\uart_tx_u1|baud_cnt[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|baud_cnt\(14),
	datad => VCC,
	cin => \uart_tx_u1|baud_cnt[13]~44\,
	combout => \uart_tx_u1|baud_cnt[14]~45_combout\,
	cout => \uart_tx_u1|baud_cnt[14]~46\);

-- Location: FF_X48_Y24_N29
\uart_tx_u1|baud_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|baud_cnt[14]~45_combout\,
	clrn => \rst_n~input_o\,
	sclr => \uart_tx_u1|baud_cnt[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|baud_cnt\(14));

-- Location: LCCOMB_X48_Y24_N30
\uart_tx_u1|baud_cnt[15]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|baud_cnt[15]~47_combout\ = \uart_tx_u1|baud_cnt\(15) $ (\uart_tx_u1|baud_cnt[14]~46\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|baud_cnt\(15),
	cin => \uart_tx_u1|baud_cnt[14]~46\,
	combout => \uart_tx_u1|baud_cnt[15]~47_combout\);

-- Location: FF_X48_Y24_N31
\uart_tx_u1|baud_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|baud_cnt[15]~47_combout\,
	clrn => \rst_n~input_o\,
	sclr => \uart_tx_u1|baud_cnt[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|baud_cnt\(15));

-- Location: LCCOMB_X49_Y24_N14
\uart_tx_u1|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Equal0~3_combout\ = (\uart_tx_u1|baud_cnt\(14)) # ((\uart_tx_u1|baud_cnt\(15)) # ((\uart_tx_u1|baud_cnt\(13)) # (\uart_tx_u1|baud_cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|baud_cnt\(14),
	datab => \uart_tx_u1|baud_cnt\(15),
	datac => \uart_tx_u1|baud_cnt\(13),
	datad => \uart_tx_u1|baud_cnt\(12),
	combout => \uart_tx_u1|Equal0~3_combout\);

-- Location: LCCOMB_X49_Y24_N2
\uart_tx_u1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Equal0~1_combout\ = ((\uart_tx_u1|baud_cnt\(6)) # ((!\uart_tx_u1|baud_cnt\(7)) # (!\uart_tx_u1|baud_cnt\(5)))) # (!\uart_tx_u1|baud_cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|baud_cnt\(4),
	datab => \uart_tx_u1|baud_cnt\(6),
	datac => \uart_tx_u1|baud_cnt\(5),
	datad => \uart_tx_u1|baud_cnt\(7),
	combout => \uart_tx_u1|Equal0~1_combout\);

-- Location: LCCOMB_X49_Y24_N12
\uart_tx_u1|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Equal0~4_combout\ = (\uart_tx_u1|Equal0~0_combout\) # ((\uart_tx_u1|Equal0~2_combout\) # ((\uart_tx_u1|Equal0~3_combout\) # (\uart_tx_u1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Equal0~0_combout\,
	datab => \uart_tx_u1|Equal0~2_combout\,
	datac => \uart_tx_u1|Equal0~3_combout\,
	datad => \uart_tx_u1|Equal0~1_combout\,
	combout => \uart_tx_u1|Equal0~4_combout\);

-- Location: LCCOMB_X51_Y24_N12
\uart_tx_u1|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add2~0_combout\ = \uart_tx_u1|byte_cnt\(0) $ (VCC)
-- \uart_tx_u1|Add2~1\ = CARRY(\uart_tx_u1|byte_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|byte_cnt\(0),
	datad => VCC,
	combout => \uart_tx_u1|Add2~0_combout\,
	cout => \uart_tx_u1|Add2~1\);

-- Location: LCCOMB_X51_Y24_N10
\uart_tx_u1|Selector520~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector520~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|Add2~0_combout\,
	combout => \uart_tx_u1|Selector520~0_combout\);

-- Location: LCCOMB_X52_Y24_N4
\uart_tx_u1|Selector525~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector525~0_combout\ = (\uart_tx_u1|Equal0~4_combout\ & (((\uart_tx_u1|state.S_STOP~q\)))) # (!\uart_tx_u1|Equal0~4_combout\ & (\uart_tx_u1|state.S_DATA~q\ & (\uart_tx_u1|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_DATA~q\,
	datab => \uart_tx_u1|Equal2~0_combout\,
	datac => \uart_tx_u1|state.S_STOP~q\,
	datad => \uart_tx_u1|Equal0~4_combout\,
	combout => \uart_tx_u1|Selector525~0_combout\);

-- Location: FF_X52_Y24_N5
\uart_tx_u1|state.S_STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector525~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|state.S_STOP~q\);

-- Location: LCCOMB_X52_Y24_N2
\uart_tx_u1|Selector523~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector523~0_combout\ = (!\uart_tx_u1|Selector522~3_combout\ & ((\uart_tx_u1|Equal0~4_combout\) # (!\uart_tx_u1|state.S_STOP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Selector522~3_combout\,
	datac => \uart_tx_u1|state.S_STOP~q\,
	datad => \uart_tx_u1|Equal0~4_combout\,
	combout => \uart_tx_u1|Selector523~0_combout\);

-- Location: LCCOMB_X45_Y24_N14
\cmd_step.0000~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_step.0000~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \cmd_step.0000~feeder_combout\);

-- Location: IOIBUF_X67_Y25_N22
\tx_en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_en,
	o => \tx_en~input_o\);

-- Location: LCCOMB_X42_Y24_N22
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (((!rst_cnt(17)) # (!rst_cnt(18))) # (!rst_cnt(19))) # (!rst_cnt(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rst_cnt(16),
	datab => rst_cnt(19),
	datac => rst_cnt(18),
	datad => rst_cnt(17),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X42_Y24_N30
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!rst_cnt(10) & (!rst_cnt(12) & (!rst_cnt(13) & !rst_cnt(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rst_cnt(10),
	datab => rst_cnt(12),
	datac => rst_cnt(13),
	datad => rst_cnt(11),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X42_Y25_N4
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!rst_cnt(8) & (!rst_cnt(7) & !rst_cnt(6)))) # (!rst_cnt(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rst_cnt(8),
	datab => rst_cnt(7),
	datac => rst_cnt(6),
	datad => rst_cnt(9),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X42_Y24_N28
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!rst_cnt(15) & (((\LessThan0~1_combout\ & \LessThan0~0_combout\)) # (!rst_cnt(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rst_cnt(14),
	datab => rst_cnt(15),
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X42_Y25_N2
\rst_cnt[0]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rst_cnt[0]~60_combout\ = rst_cnt(0) $ (((!rst_cnt(20) & ((\LessThan0~3_combout\) # (\LessThan0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => rst_cnt(20),
	datac => rst_cnt(0),
	datad => \LessThan0~2_combout\,
	combout => \rst_cnt[0]~60_combout\);

-- Location: FF_X42_Y25_N3
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

-- Location: LCCOMB_X42_Y25_N12
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

-- Location: FF_X42_Y25_N13
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

-- Location: LCCOMB_X42_Y25_N14
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

-- Location: FF_X42_Y25_N15
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

-- Location: LCCOMB_X42_Y25_N16
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

-- Location: FF_X42_Y25_N17
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

-- Location: LCCOMB_X42_Y25_N18
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

-- Location: FF_X42_Y25_N19
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

-- Location: LCCOMB_X42_Y25_N20
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

-- Location: FF_X42_Y25_N21
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

-- Location: LCCOMB_X42_Y25_N22
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

-- Location: FF_X42_Y25_N23
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

-- Location: LCCOMB_X42_Y25_N24
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

-- Location: FF_X42_Y25_N25
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

-- Location: LCCOMB_X42_Y25_N26
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

-- Location: FF_X42_Y25_N27
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

-- Location: LCCOMB_X42_Y25_N28
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

-- Location: FF_X42_Y25_N29
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

-- Location: LCCOMB_X42_Y25_N30
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

-- Location: FF_X42_Y25_N31
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

-- Location: LCCOMB_X42_Y24_N0
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

-- Location: FF_X42_Y24_N1
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

-- Location: LCCOMB_X42_Y24_N2
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

-- Location: FF_X42_Y24_N3
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

-- Location: LCCOMB_X42_Y24_N4
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

-- Location: FF_X42_Y24_N5
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

-- Location: LCCOMB_X42_Y24_N6
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

-- Location: FF_X42_Y24_N7
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

-- Location: LCCOMB_X42_Y24_N8
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

-- Location: FF_X42_Y24_N9
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

-- Location: LCCOMB_X42_Y24_N10
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

-- Location: FF_X42_Y24_N11
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

-- Location: LCCOMB_X42_Y24_N12
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

-- Location: FF_X42_Y24_N13
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

-- Location: LCCOMB_X42_Y24_N14
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

-- Location: FF_X42_Y24_N15
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

-- Location: LCCOMB_X42_Y24_N16
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

-- Location: FF_X42_Y24_N17
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

-- Location: LCCOMB_X42_Y24_N18
\rst_cnt[20]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rst_cnt[20]~58_combout\ = \rst_cnt[19]~57\ $ (rst_cnt(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => rst_cnt(20),
	cin => \rst_cnt[19]~57\,
	combout => \rst_cnt[20]~58_combout\);

-- Location: FF_X42_Y24_N19
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

-- Location: LCCOMB_X42_Y24_N20
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!rst_cnt(20) & ((\LessThan0~3_combout\) # (\LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rst_cnt(20),
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X42_Y24_N26
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

-- Location: FF_X42_Y24_N27
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

-- Location: LCCOMB_X43_Y24_N24
\LessThan1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (((!boot_delay_cnt(17) & !boot_delay_cnt(16))) # (!boot_delay_cnt(19))) # (!boot_delay_cnt(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => boot_delay_cnt(18),
	datab => boot_delay_cnt(17),
	datac => boot_delay_cnt(19),
	datad => boot_delay_cnt(16),
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X43_Y24_N30
\LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (((\LessThan1~4_combout\) # (!boot_delay_cnt(20))) # (!boot_delay_cnt(21))) # (!boot_delay_cnt(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => boot_delay_cnt(22),
	datab => boot_delay_cnt(21),
	datac => boot_delay_cnt(20),
	datad => \LessThan1~4_combout\,
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X43_Y25_N0
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!boot_delay_cnt(7) & (!boot_delay_cnt(6) & (!boot_delay_cnt(15) & !boot_delay_cnt(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => boot_delay_cnt(7),
	datab => boot_delay_cnt(6),
	datac => boot_delay_cnt(15),
	datad => boot_delay_cnt(17),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X43_Y25_N2
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!boot_delay_cnt(8) & (!boot_delay_cnt(9) & (!boot_delay_cnt(10) & \LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => boot_delay_cnt(8),
	datab => boot_delay_cnt(9),
	datac => boot_delay_cnt(10),
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X43_Y25_N4
\LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = ((!boot_delay_cnt(11)) # (!boot_delay_cnt(12))) # (!boot_delay_cnt(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => boot_delay_cnt(13),
	datac => boot_delay_cnt(12),
	datad => boot_delay_cnt(11),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X43_Y25_N6
\LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (!boot_delay_cnt(17) & (!boot_delay_cnt(15) & ((\LessThan1~2_combout\) # (!boot_delay_cnt(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => boot_delay_cnt(17),
	datab => boot_delay_cnt(15),
	datac => \LessThan1~2_combout\,
	datad => boot_delay_cnt(14),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X43_Y24_N28
\boot_delay_cnt[24]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \boot_delay_cnt[24]~24_combout\ = (!boot_delay_cnt(23) & ((\LessThan1~5_combout\) # ((\LessThan1~1_combout\) # (\LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~5_combout\,
	datab => boot_delay_cnt(23),
	datac => \LessThan1~1_combout\,
	datad => \LessThan1~3_combout\,
	combout => \boot_delay_cnt[24]~24_combout\);

-- Location: LCCOMB_X44_Y24_N10
\boot_delay_cnt[0]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \boot_delay_cnt[0]~74_combout\ = boot_delay_cnt(0) $ (((\wifi_rst_done~q\ & ((\boot_delay_cnt[24]~24_combout\) # (!boot_delay_cnt(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wifi_rst_done~q\,
	datab => boot_delay_cnt(24),
	datac => boot_delay_cnt(0),
	datad => \boot_delay_cnt[24]~24_combout\,
	combout => \boot_delay_cnt[0]~74_combout\);

-- Location: FF_X44_Y24_N11
\boot_delay_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \boot_delay_cnt[0]~74_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => boot_delay_cnt(0));

-- Location: LCCOMB_X43_Y25_N8
\boot_delay_cnt[1]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \boot_delay_cnt[1]~25_combout\ = (boot_delay_cnt(0) & (boot_delay_cnt(1) $ (VCC))) # (!boot_delay_cnt(0) & (boot_delay_cnt(1) & VCC))
-- \boot_delay_cnt[1]~26\ = CARRY((boot_delay_cnt(0) & boot_delay_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => boot_delay_cnt(0),
	datab => boot_delay_cnt(1),
	datad => VCC,
	combout => \boot_delay_cnt[1]~25_combout\,
	cout => \boot_delay_cnt[1]~26\);

-- Location: LCCOMB_X43_Y24_N26
\boot_delay_cnt[24]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \boot_delay_cnt[24]~73_combout\ = (\wifi_rst_done~q\ & ((\boot_delay_cnt[24]~24_combout\) # (!boot_delay_cnt(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wifi_rst_done~q\,
	datac => boot_delay_cnt(24),
	datad => \boot_delay_cnt[24]~24_combout\,
	combout => \boot_delay_cnt[24]~73_combout\);

-- Location: FF_X43_Y25_N9
\boot_delay_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \boot_delay_cnt[1]~25_combout\,
	clrn => \rst_n~input_o\,
	ena => \boot_delay_cnt[24]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => boot_delay_cnt(1));

-- Location: LCCOMB_X43_Y25_N10
\boot_delay_cnt[2]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \boot_delay_cnt[2]~27_combout\ = (boot_delay_cnt(2) & (!\boot_delay_cnt[1]~26\)) # (!boot_delay_cnt(2) & ((\boot_delay_cnt[1]~26\) # (GND)))
-- \boot_delay_cnt[2]~28\ = CARRY((!\boot_delay_cnt[1]~26\) # (!boot_delay_cnt(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => boot_delay_cnt(2),
	datad => VCC,
	cin => \boot_delay_cnt[1]~26\,
	combout => \boot_delay_cnt[2]~27_combout\,
	cout => \boot_delay_cnt[2]~28\);

-- Location: FF_X43_Y25_N11
\boot_delay_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \boot_delay_cnt[2]~27_combout\,
	clrn => \rst_n~input_o\,
	ena => \boot_delay_cnt[24]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => boot_delay_cnt(2));

-- Location: LCCOMB_X43_Y25_N12
\boot_delay_cnt[3]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \boot_delay_cnt[3]~29_combout\ = (boot_delay_cnt(3) & (\boot_delay_cnt[2]~28\ $ (GND))) # (!boot_delay_cnt(3) & (!\boot_delay_cnt[2]~28\ & VCC))
-- \boot_delay_cnt[3]~30\ = CARRY((boot_delay_cnt(3) & !\boot_delay_cnt[2]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => boot_delay_cnt(3),
	datad => VCC,
	cin => \boot_delay_cnt[2]~28\,
	combout => \boot_delay_cnt[3]~29_combout\,
	cout => \boot_delay_cnt[3]~30\);

-- Location: FF_X43_Y25_N13
\boot_delay_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \boot_delay_cnt[3]~29_combout\,
	clrn => \rst_n~input_o\,
	ena => \boot_delay_cnt[24]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => boot_delay_cnt(3));

-- Location: LCCOMB_X43_Y25_N14
\boot_delay_cnt[4]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \boot_delay_cnt[4]~31_combout\ = (boot_delay_cnt(4) & (!\boot_delay_cnt[3]~30\)) # (!boot_delay_cnt(4) & ((\boot_delay_cnt[3]~30\) # (GND)))
-- \boot_delay_cnt[4]~32\ = CARRY((!\boot_delay_cnt[3]~30\) # (!boot_delay_cnt(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => boot_delay_cnt(4),
	datad => VCC,
	cin => \boot_delay_cnt[3]~30\,
	combout => \boot_delay_cnt[4]~31_combout\,
	cout => \boot_delay_cnt[4]~32\);

-- Location: FF_X43_Y25_N15
\boot_delay_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \boot_delay_cnt[4]~31_combout\,
	clrn => \rst_n~input_o\,
	ena => \boot_delay_cnt[24]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => boot_delay_cnt(4));

-- Location: LCCOMB_X43_Y25_N16
\boot_delay_cnt[5]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \boot_delay_cnt[5]~33_combout\ = (boot_delay_cnt(5) & (\boot_delay_cnt[4]~32\ $ (GND))) # (!boot_delay_cnt(5) & (!\boot_delay_cnt[4]~32\ & VCC))
-- \boot_delay_cnt[5]~34\ = CARRY((boot_delay_cnt(5) & !\boot_delay_cnt[4]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => boot_delay_cnt(5),
	datad => VCC,
	cin => \boot_delay_cnt[4]~32\,
	combout => \boot_delay_cnt[5]~33_combout\,
	cout => \boot_delay_cnt[5]~34\);

-- Location: FF_X43_Y25_N17
\boot_delay_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \boot_delay_cnt[5]~33_combout\,
	clrn => \rst_n~input_o\,
	ena => \boot_delay_cnt[24]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => boot_delay_cnt(5));

-- Location: LCCOMB_X43_Y25_N18
\boot_delay_cnt[6]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \boot_delay_cnt[6]~35_combout\ = (boot_delay_cnt(6) & (!\boot_delay_cnt[5]~34\)) # (!boot_delay_cnt(6) & ((\boot_delay_cnt[5]~34\) # (GND)))
-- \boot_delay_cnt[6]~36\ = CARRY((!\boot_delay_cnt[5]~34\) # (!boot_delay_cnt(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => boot_delay_cnt(6),
	datad => VCC,
	cin => \boot_delay_cnt[5]~34\,
	combout => \boot_delay_cnt[6]~35_combout\,
	cout => \boot_delay_cnt[6]~36\);

-- Location: FF_X43_Y25_N19
\boot_delay_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \boot_delay_cnt[6]~35_combout\,
	clrn => \rst_n~input_o\,
	ena => \boot_delay_cnt[24]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => boot_delay_cnt(6));

-- Location: LCCOMB_X43_Y25_N20
\boot_delay_cnt[7]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \boot_delay_cnt[7]~37_combout\ = (boot_delay_cnt(7) & (\boot_delay_cnt[6]~36\ $ (GND))) # (!boot_delay_cnt(7) & (!\boot_delay_cnt[6]~36\ & VCC))
-- \boot_delay_cnt[7]~38\ = CARRY((boot_delay_cnt(7) & !\boot_delay_cnt[6]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => boot_delay_cnt(7),
	datad => VCC,
	cin => \boot_delay_cnt[6]~36\,
	combout => \boot_delay_cnt[7]~37_combout\,
	cout => \boot_delay_cnt[7]~38\);

-- Location: FF_X43_Y25_N21
\boot_delay_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \boot_delay_cnt[7]~37_combout\,
	clrn => \rst_n~input_o\,
	ena => \boot_delay_cnt[24]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => boot_delay_cnt(7));

-- Location: LCCOMB_X43_Y25_N22
\boot_delay_cnt[8]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \boot_delay_cnt[8]~39_combout\ = (boot_delay_cnt(8) & (!\boot_delay_cnt[7]~38\)) # (!boot_delay_cnt(8) & ((\boot_delay_cnt[7]~38\) # (GND)))
-- \boot_delay_cnt[8]~40\ = CARRY((!\boot_delay_cnt[7]~38\) # (!boot_delay_cnt(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => boot_delay_cnt(8),
	datad => VCC,
	cin => \boot_delay_cnt[7]~38\,
	combout => \boot_delay_cnt[8]~39_combout\,
	cout => \boot_delay_cnt[8]~40\);

-- Location: FF_X43_Y25_N23
\boot_delay_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \boot_delay_cnt[8]~39_combout\,
	clrn => \rst_n~input_o\,
	ena => \boot_delay_cnt[24]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => boot_delay_cnt(8));

-- Location: LCCOMB_X43_Y25_N24
\boot_delay_cnt[9]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \boot_delay_cnt[9]~41_combout\ = (boot_delay_cnt(9) & (\boot_delay_cnt[8]~40\ $ (GND))) # (!boot_delay_cnt(9) & (!\boot_delay_cnt[8]~40\ & VCC))
-- \boot_delay_cnt[9]~42\ = CARRY((boot_delay_cnt(9) & !\boot_delay_cnt[8]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => boot_delay_cnt(9),
	datad => VCC,
	cin => \boot_delay_cnt[8]~40\,
	combout => \boot_delay_cnt[9]~41_combout\,
	cout => \boot_delay_cnt[9]~42\);

-- Location: FF_X43_Y25_N25
\boot_delay_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \boot_delay_cnt[9]~41_combout\,
	clrn => \rst_n~input_o\,
	ena => \boot_delay_cnt[24]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => boot_delay_cnt(9));

-- Location: LCCOMB_X43_Y25_N26
\boot_delay_cnt[10]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \boot_delay_cnt[10]~43_combout\ = (boot_delay_cnt(10) & (!\boot_delay_cnt[9]~42\)) # (!boot_delay_cnt(10) & ((\boot_delay_cnt[9]~42\) # (GND)))
-- \boot_delay_cnt[10]~44\ = CARRY((!\boot_delay_cnt[9]~42\) # (!boot_delay_cnt(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => boot_delay_cnt(10),
	datad => VCC,
	cin => \boot_delay_cnt[9]~42\,
	combout => \boot_delay_cnt[10]~43_combout\,
	cout => \boot_delay_cnt[10]~44\);

-- Location: FF_X43_Y25_N27
\boot_delay_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \boot_delay_cnt[10]~43_combout\,
	clrn => \rst_n~input_o\,
	ena => \boot_delay_cnt[24]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => boot_delay_cnt(10));

-- Location: LCCOMB_X43_Y25_N28
\boot_delay_cnt[11]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \boot_delay_cnt[11]~45_combout\ = (boot_delay_cnt(11) & (\boot_delay_cnt[10]~44\ $ (GND))) # (!boot_delay_cnt(11) & (!\boot_delay_cnt[10]~44\ & VCC))
-- \boot_delay_cnt[11]~46\ = CARRY((boot_delay_cnt(11) & !\boot_delay_cnt[10]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => boot_delay_cnt(11),
	datad => VCC,
	cin => \boot_delay_cnt[10]~44\,
	combout => \boot_delay_cnt[11]~45_combout\,
	cout => \boot_delay_cnt[11]~46\);

-- Location: FF_X43_Y25_N29
\boot_delay_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \boot_delay_cnt[11]~45_combout\,
	clrn => \rst_n~input_o\,
	ena => \boot_delay_cnt[24]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => boot_delay_cnt(11));

-- Location: LCCOMB_X43_Y25_N30
\boot_delay_cnt[12]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \boot_delay_cnt[12]~47_combout\ = (boot_delay_cnt(12) & (!\boot_delay_cnt[11]~46\)) # (!boot_delay_cnt(12) & ((\boot_delay_cnt[11]~46\) # (GND)))
-- \boot_delay_cnt[12]~48\ = CARRY((!\boot_delay_cnt[11]~46\) # (!boot_delay_cnt(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => boot_delay_cnt(12),
	datad => VCC,
	cin => \boot_delay_cnt[11]~46\,
	combout => \boot_delay_cnt[12]~47_combout\,
	cout => \boot_delay_cnt[12]~48\);

-- Location: FF_X43_Y25_N31
\boot_delay_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \boot_delay_cnt[12]~47_combout\,
	clrn => \rst_n~input_o\,
	ena => \boot_delay_cnt[24]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => boot_delay_cnt(12));

-- Location: LCCOMB_X43_Y24_N0
\boot_delay_cnt[13]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \boot_delay_cnt[13]~49_combout\ = (boot_delay_cnt(13) & (\boot_delay_cnt[12]~48\ $ (GND))) # (!boot_delay_cnt(13) & (!\boot_delay_cnt[12]~48\ & VCC))
-- \boot_delay_cnt[13]~50\ = CARRY((boot_delay_cnt(13) & !\boot_delay_cnt[12]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => boot_delay_cnt(13),
	datad => VCC,
	cin => \boot_delay_cnt[12]~48\,
	combout => \boot_delay_cnt[13]~49_combout\,
	cout => \boot_delay_cnt[13]~50\);

-- Location: FF_X43_Y24_N1
\boot_delay_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \boot_delay_cnt[13]~49_combout\,
	clrn => \rst_n~input_o\,
	ena => \boot_delay_cnt[24]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => boot_delay_cnt(13));

-- Location: LCCOMB_X43_Y24_N2
\boot_delay_cnt[14]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \boot_delay_cnt[14]~51_combout\ = (boot_delay_cnt(14) & (!\boot_delay_cnt[13]~50\)) # (!boot_delay_cnt(14) & ((\boot_delay_cnt[13]~50\) # (GND)))
-- \boot_delay_cnt[14]~52\ = CARRY((!\boot_delay_cnt[13]~50\) # (!boot_delay_cnt(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => boot_delay_cnt(14),
	datad => VCC,
	cin => \boot_delay_cnt[13]~50\,
	combout => \boot_delay_cnt[14]~51_combout\,
	cout => \boot_delay_cnt[14]~52\);

-- Location: FF_X43_Y24_N3
\boot_delay_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \boot_delay_cnt[14]~51_combout\,
	clrn => \rst_n~input_o\,
	ena => \boot_delay_cnt[24]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => boot_delay_cnt(14));

-- Location: LCCOMB_X43_Y24_N4
\boot_delay_cnt[15]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \boot_delay_cnt[15]~53_combout\ = (boot_delay_cnt(15) & (\boot_delay_cnt[14]~52\ $ (GND))) # (!boot_delay_cnt(15) & (!\boot_delay_cnt[14]~52\ & VCC))
-- \boot_delay_cnt[15]~54\ = CARRY((boot_delay_cnt(15) & !\boot_delay_cnt[14]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => boot_delay_cnt(15),
	datad => VCC,
	cin => \boot_delay_cnt[14]~52\,
	combout => \boot_delay_cnt[15]~53_combout\,
	cout => \boot_delay_cnt[15]~54\);

-- Location: FF_X43_Y24_N5
\boot_delay_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \boot_delay_cnt[15]~53_combout\,
	clrn => \rst_n~input_o\,
	ena => \boot_delay_cnt[24]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => boot_delay_cnt(15));

-- Location: LCCOMB_X43_Y24_N6
\boot_delay_cnt[16]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \boot_delay_cnt[16]~55_combout\ = (boot_delay_cnt(16) & (!\boot_delay_cnt[15]~54\)) # (!boot_delay_cnt(16) & ((\boot_delay_cnt[15]~54\) # (GND)))
-- \boot_delay_cnt[16]~56\ = CARRY((!\boot_delay_cnt[15]~54\) # (!boot_delay_cnt(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => boot_delay_cnt(16),
	datad => VCC,
	cin => \boot_delay_cnt[15]~54\,
	combout => \boot_delay_cnt[16]~55_combout\,
	cout => \boot_delay_cnt[16]~56\);

-- Location: FF_X43_Y24_N7
\boot_delay_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \boot_delay_cnt[16]~55_combout\,
	clrn => \rst_n~input_o\,
	ena => \boot_delay_cnt[24]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => boot_delay_cnt(16));

-- Location: LCCOMB_X43_Y24_N8
\boot_delay_cnt[17]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \boot_delay_cnt[17]~57_combout\ = (boot_delay_cnt(17) & (\boot_delay_cnt[16]~56\ $ (GND))) # (!boot_delay_cnt(17) & (!\boot_delay_cnt[16]~56\ & VCC))
-- \boot_delay_cnt[17]~58\ = CARRY((boot_delay_cnt(17) & !\boot_delay_cnt[16]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => boot_delay_cnt(17),
	datad => VCC,
	cin => \boot_delay_cnt[16]~56\,
	combout => \boot_delay_cnt[17]~57_combout\,
	cout => \boot_delay_cnt[17]~58\);

-- Location: FF_X43_Y24_N9
\boot_delay_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \boot_delay_cnt[17]~57_combout\,
	clrn => \rst_n~input_o\,
	ena => \boot_delay_cnt[24]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => boot_delay_cnt(17));

-- Location: LCCOMB_X43_Y24_N10
\boot_delay_cnt[18]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \boot_delay_cnt[18]~59_combout\ = (boot_delay_cnt(18) & (!\boot_delay_cnt[17]~58\)) # (!boot_delay_cnt(18) & ((\boot_delay_cnt[17]~58\) # (GND)))
-- \boot_delay_cnt[18]~60\ = CARRY((!\boot_delay_cnt[17]~58\) # (!boot_delay_cnt(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => boot_delay_cnt(18),
	datad => VCC,
	cin => \boot_delay_cnt[17]~58\,
	combout => \boot_delay_cnt[18]~59_combout\,
	cout => \boot_delay_cnt[18]~60\);

-- Location: FF_X43_Y24_N11
\boot_delay_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \boot_delay_cnt[18]~59_combout\,
	clrn => \rst_n~input_o\,
	ena => \boot_delay_cnt[24]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => boot_delay_cnt(18));

-- Location: LCCOMB_X43_Y24_N12
\boot_delay_cnt[19]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \boot_delay_cnt[19]~61_combout\ = (boot_delay_cnt(19) & (\boot_delay_cnt[18]~60\ $ (GND))) # (!boot_delay_cnt(19) & (!\boot_delay_cnt[18]~60\ & VCC))
-- \boot_delay_cnt[19]~62\ = CARRY((boot_delay_cnt(19) & !\boot_delay_cnt[18]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => boot_delay_cnt(19),
	datad => VCC,
	cin => \boot_delay_cnt[18]~60\,
	combout => \boot_delay_cnt[19]~61_combout\,
	cout => \boot_delay_cnt[19]~62\);

-- Location: FF_X43_Y24_N13
\boot_delay_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \boot_delay_cnt[19]~61_combout\,
	clrn => \rst_n~input_o\,
	ena => \boot_delay_cnt[24]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => boot_delay_cnt(19));

-- Location: LCCOMB_X43_Y24_N14
\boot_delay_cnt[20]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \boot_delay_cnt[20]~63_combout\ = (boot_delay_cnt(20) & (!\boot_delay_cnt[19]~62\)) # (!boot_delay_cnt(20) & ((\boot_delay_cnt[19]~62\) # (GND)))
-- \boot_delay_cnt[20]~64\ = CARRY((!\boot_delay_cnt[19]~62\) # (!boot_delay_cnt(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => boot_delay_cnt(20),
	datad => VCC,
	cin => \boot_delay_cnt[19]~62\,
	combout => \boot_delay_cnt[20]~63_combout\,
	cout => \boot_delay_cnt[20]~64\);

-- Location: FF_X43_Y24_N15
\boot_delay_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \boot_delay_cnt[20]~63_combout\,
	clrn => \rst_n~input_o\,
	ena => \boot_delay_cnt[24]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => boot_delay_cnt(20));

-- Location: LCCOMB_X43_Y24_N16
\boot_delay_cnt[21]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \boot_delay_cnt[21]~65_combout\ = (boot_delay_cnt(21) & (\boot_delay_cnt[20]~64\ $ (GND))) # (!boot_delay_cnt(21) & (!\boot_delay_cnt[20]~64\ & VCC))
-- \boot_delay_cnt[21]~66\ = CARRY((boot_delay_cnt(21) & !\boot_delay_cnt[20]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => boot_delay_cnt(21),
	datad => VCC,
	cin => \boot_delay_cnt[20]~64\,
	combout => \boot_delay_cnt[21]~65_combout\,
	cout => \boot_delay_cnt[21]~66\);

-- Location: FF_X43_Y24_N17
\boot_delay_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \boot_delay_cnt[21]~65_combout\,
	clrn => \rst_n~input_o\,
	ena => \boot_delay_cnt[24]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => boot_delay_cnt(21));

-- Location: LCCOMB_X43_Y24_N18
\boot_delay_cnt[22]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \boot_delay_cnt[22]~67_combout\ = (boot_delay_cnt(22) & (!\boot_delay_cnt[21]~66\)) # (!boot_delay_cnt(22) & ((\boot_delay_cnt[21]~66\) # (GND)))
-- \boot_delay_cnt[22]~68\ = CARRY((!\boot_delay_cnt[21]~66\) # (!boot_delay_cnt(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => boot_delay_cnt(22),
	datad => VCC,
	cin => \boot_delay_cnt[21]~66\,
	combout => \boot_delay_cnt[22]~67_combout\,
	cout => \boot_delay_cnt[22]~68\);

-- Location: FF_X43_Y24_N19
\boot_delay_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \boot_delay_cnt[22]~67_combout\,
	clrn => \rst_n~input_o\,
	ena => \boot_delay_cnt[24]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => boot_delay_cnt(22));

-- Location: LCCOMB_X43_Y24_N20
\boot_delay_cnt[23]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \boot_delay_cnt[23]~69_combout\ = (boot_delay_cnt(23) & (\boot_delay_cnt[22]~68\ $ (GND))) # (!boot_delay_cnt(23) & (!\boot_delay_cnt[22]~68\ & VCC))
-- \boot_delay_cnt[23]~70\ = CARRY((boot_delay_cnt(23) & !\boot_delay_cnt[22]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => boot_delay_cnt(23),
	datad => VCC,
	cin => \boot_delay_cnt[22]~68\,
	combout => \boot_delay_cnt[23]~69_combout\,
	cout => \boot_delay_cnt[23]~70\);

-- Location: FF_X43_Y24_N21
\boot_delay_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \boot_delay_cnt[23]~69_combout\,
	clrn => \rst_n~input_o\,
	ena => \boot_delay_cnt[24]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => boot_delay_cnt(23));

-- Location: LCCOMB_X43_Y24_N22
\boot_delay_cnt[24]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \boot_delay_cnt[24]~71_combout\ = boot_delay_cnt(24) $ (\boot_delay_cnt[23]~70\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => boot_delay_cnt(24),
	cin => \boot_delay_cnt[23]~70\,
	combout => \boot_delay_cnt[24]~71_combout\);

-- Location: FF_X43_Y24_N23
\boot_delay_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \boot_delay_cnt[24]~71_combout\,
	clrn => \rst_n~input_o\,
	ena => \boot_delay_cnt[24]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => boot_delay_cnt(24));

-- Location: LCCOMB_X44_Y24_N2
\boot_ready~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \boot_ready~0_combout\ = (\wifi_rst_done~q\ & (boot_delay_cnt(24) & ((!\boot_delay_cnt[24]~24_combout\)))) # (!\wifi_rst_done~q\ & (((\boot_ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wifi_rst_done~q\,
	datab => boot_delay_cnt(24),
	datac => \boot_ready~q\,
	datad => \boot_delay_cnt[24]~24_combout\,
	combout => \boot_ready~0_combout\);

-- Location: FF_X44_Y24_N3
boot_ready : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \boot_ready~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \boot_ready~q\);

-- Location: LCCOMB_X45_Y24_N24
\Selector265~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector265~0_combout\ = (\cmd_step.1100~q\) # ((\cmd_step.1101~q\ & !\uart_tx_u1|cmd_done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_step.1100~q\,
	datac => \cmd_step.1101~q\,
	datad => \uart_tx_u1|cmd_done~q\,
	combout => \Selector265~0_combout\);

-- Location: FF_X45_Y24_N25
\cmd_step.1101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector265~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_step.1101~q\);

-- Location: LCCOMB_X44_Y24_N18
\cmd_step.1110~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_step.1110~0_combout\ = (\cmd_step.1110~q\) # ((\uart_tx_u1|cmd_done~q\ & (\cmd_step~38_combout\ & \cmd_step.1101~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|cmd_done~q\,
	datab => \cmd_step~38_combout\,
	datac => \cmd_step.1110~q\,
	datad => \cmd_step.1101~q\,
	combout => \cmd_step.1110~0_combout\);

-- Location: FF_X44_Y24_N19
\cmd_step.1110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cmd_step.1110~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_step.1110~q\);

-- Location: LCCOMB_X44_Y24_N4
\init_done~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \init_done~0_combout\ = (\init_done~q\) # ((\cmd_step~38_combout\ & \cmd_step.1110~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmd_step~38_combout\,
	datac => \init_done~q\,
	datad => \cmd_step.1110~q\,
	combout => \init_done~0_combout\);

-- Location: FF_X44_Y24_N5
init_done : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \init_done~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_done~q\);

-- Location: LCCOMB_X44_Y24_N16
\cmd_step~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cmd_step~38_combout\ = (\tx_en~input_o\ & (\boot_ready~q\ & (!\init_done~q\ & !\delay_en~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_en~input_o\,
	datab => \boot_ready~q\,
	datac => \init_done~q\,
	datad => \delay_en~q\,
	combout => \cmd_step~38_combout\);

-- Location: FF_X45_Y24_N15
\cmd_step.0000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cmd_step.0000~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_step.0000~q\);

-- Location: LCCOMB_X45_Y24_N28
\Selector253~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector253~0_combout\ = ((\cmd_step.0001~q\ & !\uart_tx_u1|cmd_done~q\)) # (!\cmd_step.0000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmd_step.0000~q\,
	datac => \cmd_step.0001~q\,
	datad => \uart_tx_u1|cmd_done~q\,
	combout => \Selector253~0_combout\);

-- Location: FF_X45_Y24_N29
\cmd_step.0001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector253~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_step.0001~q\);

-- Location: LCCOMB_X45_Y24_N8
\Selector254~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector254~0_combout\ = (\uart_tx_u1|cmd_done~q\ & \cmd_step.0001~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|cmd_done~q\,
	datad => \cmd_step.0001~q\,
	combout => \Selector254~0_combout\);

-- Location: FF_X45_Y24_N9
\cmd_step.0010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector254~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_step.0010~q\);

-- Location: LCCOMB_X45_Y24_N4
\Selector255~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector255~0_combout\ = (\cmd_step.0010~q\) # ((\cmd_step.0011~q\ & !\uart_tx_u1|cmd_done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmd_step.0010~q\,
	datac => \cmd_step.0011~q\,
	datad => \uart_tx_u1|cmd_done~q\,
	combout => \Selector255~0_combout\);

-- Location: FF_X45_Y24_N5
\cmd_step.0011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector255~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_step.0011~q\);

-- Location: LCCOMB_X45_Y24_N0
\Selector256~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector256~0_combout\ = (\cmd_step.0011~q\ & \uart_tx_u1|cmd_done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmd_step.0011~q\,
	datad => \uart_tx_u1|cmd_done~q\,
	combout => \Selector256~0_combout\);

-- Location: FF_X45_Y24_N1
\cmd_step.0100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector256~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_step.0100~q\);

-- Location: LCCOMB_X45_Y24_N6
\Selector257~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector257~0_combout\ = (\cmd_step.0100~q\) # ((\cmd_step.0101~q\ & !\uart_tx_u1|cmd_done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmd_step.0100~q\,
	datac => \cmd_step.0101~q\,
	datad => \uart_tx_u1|cmd_done~q\,
	combout => \Selector257~0_combout\);

-- Location: FF_X45_Y24_N7
\cmd_step.0101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector257~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_step.0101~q\);

-- Location: LCCOMB_X45_Y24_N30
\Selector258~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector258~0_combout\ = (\uart_tx_u1|cmd_done~q\ & \cmd_step.0101~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|cmd_done~q\,
	datad => \cmd_step.0101~q\,
	combout => \Selector258~0_combout\);

-- Location: FF_X45_Y24_N31
\cmd_step.0110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector258~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_step.0110~q\);

-- Location: LCCOMB_X45_Y24_N12
\Selector259~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector259~0_combout\ = (\cmd_step.0110~q\) # ((\cmd_step.0111~q\ & !\uart_tx_u1|cmd_done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_step.0110~q\,
	datac => \cmd_step.0111~q\,
	datad => \uart_tx_u1|cmd_done~q\,
	combout => \Selector259~0_combout\);

-- Location: FF_X45_Y24_N13
\cmd_step.0111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector259~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_step.0111~q\);

-- Location: LCCOMB_X45_Y24_N16
\Selector260~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector260~0_combout\ = (\uart_tx_u1|cmd_done~q\ & \cmd_step.0111~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|cmd_done~q\,
	datad => \cmd_step.0111~q\,
	combout => \Selector260~0_combout\);

-- Location: FF_X45_Y24_N17
\cmd_step.1000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector260~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_step.1000~q\);

-- Location: LCCOMB_X45_Y24_N2
\Selector261~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector261~0_combout\ = (\cmd_step.1000~q\) # ((\cmd_step.1001~q\ & !\uart_tx_u1|cmd_done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmd_step.1000~q\,
	datac => \cmd_step.1001~q\,
	datad => \uart_tx_u1|cmd_done~q\,
	combout => \Selector261~0_combout\);

-- Location: FF_X45_Y24_N3
\cmd_step.1001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector261~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_step.1001~q\);

-- Location: LCCOMB_X45_Y24_N22
\Selector262~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector262~0_combout\ = (\uart_tx_u1|cmd_done~q\ & \cmd_step.1001~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|cmd_done~q\,
	datad => \cmd_step.1001~q\,
	combout => \Selector262~0_combout\);

-- Location: FF_X45_Y24_N23
\cmd_step.1010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector262~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_step.1010~q\);

-- Location: LCCOMB_X45_Y24_N18
\Selector263~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector263~0_combout\ = (\cmd_step.1010~q\) # ((\cmd_step.1011~q\ & !\uart_tx_u1|cmd_done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_step.1010~q\,
	datac => \cmd_step.1011~q\,
	datad => \uart_tx_u1|cmd_done~q\,
	combout => \Selector263~0_combout\);

-- Location: FF_X45_Y24_N19
\cmd_step.1011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector263~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_step.1011~q\);

-- Location: LCCOMB_X44_Y24_N22
\delay_en~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_en~7_combout\ = (\cmd_step.0011~q\) # ((\cmd_step.0001~q\) # ((\cmd_step.0111~q\) # (\cmd_step.0101~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_step.0011~q\,
	datab => \cmd_step.0001~q\,
	datac => \cmd_step.0111~q\,
	datad => \cmd_step.0101~q\,
	combout => \delay_en~7_combout\);

-- Location: LCCOMB_X44_Y24_N20
\delay_en~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_en~8_combout\ = (\cmd_step.1001~q\) # ((\cmd_step.1011~q\) # ((\delay_en~7_combout\) # (\cmd_step.1101~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_step.1001~q\,
	datab => \cmd_step.1011~q\,
	datac => \delay_en~7_combout\,
	datad => \cmd_step.1101~q\,
	combout => \delay_en~8_combout\);

-- Location: LCCOMB_X44_Y26_N10
\delay_cnt[0]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[0]~23_combout\ = delay_cnt(0) $ (VCC)
-- \delay_cnt[0]~24\ = CARRY(delay_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(0),
	datad => VCC,
	combout => \delay_cnt[0]~23_combout\,
	cout => \delay_cnt[0]~24\);

-- Location: LCCOMB_X44_Y24_N0
\delay_cnt[22]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[22]~53_combout\ = (\tx_en~input_o\ & (\boot_ready~q\ & (!\init_done~q\ & \delay_en~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_en~input_o\,
	datab => \boot_ready~q\,
	datac => \init_done~q\,
	datad => \delay_en~q\,
	combout => \delay_cnt[22]~53_combout\);

-- Location: FF_X44_Y26_N11
\delay_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[0]~23_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_delay_en~6_combout\,
	ena => \delay_cnt[22]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(0));

-- Location: LCCOMB_X44_Y26_N12
\delay_cnt[1]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[1]~25_combout\ = (delay_cnt(1) & (!\delay_cnt[0]~24\)) # (!delay_cnt(1) & ((\delay_cnt[0]~24\) # (GND)))
-- \delay_cnt[1]~26\ = CARRY((!\delay_cnt[0]~24\) # (!delay_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(1),
	datad => VCC,
	cin => \delay_cnt[0]~24\,
	combout => \delay_cnt[1]~25_combout\,
	cout => \delay_cnt[1]~26\);

-- Location: FF_X44_Y26_N13
\delay_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[1]~25_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_delay_en~6_combout\,
	ena => \delay_cnt[22]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(1));

-- Location: LCCOMB_X44_Y26_N14
\delay_cnt[2]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[2]~27_combout\ = (delay_cnt(2) & (\delay_cnt[1]~26\ $ (GND))) # (!delay_cnt(2) & (!\delay_cnt[1]~26\ & VCC))
-- \delay_cnt[2]~28\ = CARRY((delay_cnt(2) & !\delay_cnt[1]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(2),
	datad => VCC,
	cin => \delay_cnt[1]~26\,
	combout => \delay_cnt[2]~27_combout\,
	cout => \delay_cnt[2]~28\);

-- Location: FF_X44_Y26_N15
\delay_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[2]~27_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_delay_en~6_combout\,
	ena => \delay_cnt[22]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(2));

-- Location: LCCOMB_X44_Y26_N16
\delay_cnt[3]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[3]~29_combout\ = (delay_cnt(3) & (!\delay_cnt[2]~28\)) # (!delay_cnt(3) & ((\delay_cnt[2]~28\) # (GND)))
-- \delay_cnt[3]~30\ = CARRY((!\delay_cnt[2]~28\) # (!delay_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(3),
	datad => VCC,
	cin => \delay_cnt[2]~28\,
	combout => \delay_cnt[3]~29_combout\,
	cout => \delay_cnt[3]~30\);

-- Location: FF_X44_Y26_N17
\delay_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[3]~29_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_delay_en~6_combout\,
	ena => \delay_cnt[22]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(3));

-- Location: LCCOMB_X44_Y26_N18
\delay_cnt[4]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[4]~31_combout\ = (delay_cnt(4) & (\delay_cnt[3]~30\ $ (GND))) # (!delay_cnt(4) & (!\delay_cnt[3]~30\ & VCC))
-- \delay_cnt[4]~32\ = CARRY((delay_cnt(4) & !\delay_cnt[3]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(4),
	datad => VCC,
	cin => \delay_cnt[3]~30\,
	combout => \delay_cnt[4]~31_combout\,
	cout => \delay_cnt[4]~32\);

-- Location: FF_X44_Y26_N19
\delay_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[4]~31_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_delay_en~6_combout\,
	ena => \delay_cnt[22]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(4));

-- Location: LCCOMB_X44_Y26_N20
\delay_cnt[5]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[5]~33_combout\ = (delay_cnt(5) & (!\delay_cnt[4]~32\)) # (!delay_cnt(5) & ((\delay_cnt[4]~32\) # (GND)))
-- \delay_cnt[5]~34\ = CARRY((!\delay_cnt[4]~32\) # (!delay_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(5),
	datad => VCC,
	cin => \delay_cnt[4]~32\,
	combout => \delay_cnt[5]~33_combout\,
	cout => \delay_cnt[5]~34\);

-- Location: FF_X44_Y26_N21
\delay_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[5]~33_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_delay_en~6_combout\,
	ena => \delay_cnt[22]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(5));

-- Location: LCCOMB_X44_Y26_N22
\delay_cnt[6]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[6]~35_combout\ = (delay_cnt(6) & (\delay_cnt[5]~34\ $ (GND))) # (!delay_cnt(6) & (!\delay_cnt[5]~34\ & VCC))
-- \delay_cnt[6]~36\ = CARRY((delay_cnt(6) & !\delay_cnt[5]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(6),
	datad => VCC,
	cin => \delay_cnt[5]~34\,
	combout => \delay_cnt[6]~35_combout\,
	cout => \delay_cnt[6]~36\);

-- Location: FF_X44_Y26_N23
\delay_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[6]~35_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_delay_en~6_combout\,
	ena => \delay_cnt[22]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(6));

-- Location: LCCOMB_X44_Y26_N24
\delay_cnt[7]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[7]~37_combout\ = (delay_cnt(7) & (!\delay_cnt[6]~36\)) # (!delay_cnt(7) & ((\delay_cnt[6]~36\) # (GND)))
-- \delay_cnt[7]~38\ = CARRY((!\delay_cnt[6]~36\) # (!delay_cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(7),
	datad => VCC,
	cin => \delay_cnt[6]~36\,
	combout => \delay_cnt[7]~37_combout\,
	cout => \delay_cnt[7]~38\);

-- Location: FF_X44_Y26_N25
\delay_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[7]~37_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_delay_en~6_combout\,
	ena => \delay_cnt[22]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(7));

-- Location: LCCOMB_X44_Y26_N26
\delay_cnt[8]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[8]~39_combout\ = (delay_cnt(8) & (\delay_cnt[7]~38\ $ (GND))) # (!delay_cnt(8) & (!\delay_cnt[7]~38\ & VCC))
-- \delay_cnt[8]~40\ = CARRY((delay_cnt(8) & !\delay_cnt[7]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(8),
	datad => VCC,
	cin => \delay_cnt[7]~38\,
	combout => \delay_cnt[8]~39_combout\,
	cout => \delay_cnt[8]~40\);

-- Location: FF_X44_Y26_N27
\delay_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[8]~39_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_delay_en~6_combout\,
	ena => \delay_cnt[22]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(8));

-- Location: LCCOMB_X44_Y26_N28
\delay_cnt[9]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[9]~41_combout\ = (delay_cnt(9) & (!\delay_cnt[8]~40\)) # (!delay_cnt(9) & ((\delay_cnt[8]~40\) # (GND)))
-- \delay_cnt[9]~42\ = CARRY((!\delay_cnt[8]~40\) # (!delay_cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(9),
	datad => VCC,
	cin => \delay_cnt[8]~40\,
	combout => \delay_cnt[9]~41_combout\,
	cout => \delay_cnt[9]~42\);

-- Location: FF_X44_Y26_N29
\delay_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[9]~41_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_delay_en~6_combout\,
	ena => \delay_cnt[22]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(9));

-- Location: LCCOMB_X44_Y26_N30
\delay_cnt[10]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[10]~43_combout\ = (delay_cnt(10) & (\delay_cnt[9]~42\ $ (GND))) # (!delay_cnt(10) & (!\delay_cnt[9]~42\ & VCC))
-- \delay_cnt[10]~44\ = CARRY((delay_cnt(10) & !\delay_cnt[9]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(10),
	datad => VCC,
	cin => \delay_cnt[9]~42\,
	combout => \delay_cnt[10]~43_combout\,
	cout => \delay_cnt[10]~44\);

-- Location: FF_X44_Y26_N31
\delay_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[10]~43_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_delay_en~6_combout\,
	ena => \delay_cnt[22]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(10));

-- Location: LCCOMB_X44_Y25_N0
\delay_cnt[11]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[11]~45_combout\ = (delay_cnt(11) & (!\delay_cnt[10]~44\)) # (!delay_cnt(11) & ((\delay_cnt[10]~44\) # (GND)))
-- \delay_cnt[11]~46\ = CARRY((!\delay_cnt[10]~44\) # (!delay_cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(11),
	datad => VCC,
	cin => \delay_cnt[10]~44\,
	combout => \delay_cnt[11]~45_combout\,
	cout => \delay_cnt[11]~46\);

-- Location: FF_X44_Y25_N1
\delay_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[11]~45_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_delay_en~6_combout\,
	ena => \delay_cnt[22]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(11));

-- Location: LCCOMB_X44_Y25_N2
\delay_cnt[12]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[12]~47_combout\ = (delay_cnt(12) & (\delay_cnt[11]~46\ $ (GND))) # (!delay_cnt(12) & (!\delay_cnt[11]~46\ & VCC))
-- \delay_cnt[12]~48\ = CARRY((delay_cnt(12) & !\delay_cnt[11]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(12),
	datad => VCC,
	cin => \delay_cnt[11]~46\,
	combout => \delay_cnt[12]~47_combout\,
	cout => \delay_cnt[12]~48\);

-- Location: FF_X44_Y25_N3
\delay_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[12]~47_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_delay_en~6_combout\,
	ena => \delay_cnt[22]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(12));

-- Location: LCCOMB_X44_Y25_N4
\delay_cnt[13]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[13]~49_combout\ = (delay_cnt(13) & (!\delay_cnt[12]~48\)) # (!delay_cnt(13) & ((\delay_cnt[12]~48\) # (GND)))
-- \delay_cnt[13]~50\ = CARRY((!\delay_cnt[12]~48\) # (!delay_cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(13),
	datad => VCC,
	cin => \delay_cnt[12]~48\,
	combout => \delay_cnt[13]~49_combout\,
	cout => \delay_cnt[13]~50\);

-- Location: FF_X44_Y25_N5
\delay_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[13]~49_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_delay_en~6_combout\,
	ena => \delay_cnt[22]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(13));

-- Location: LCCOMB_X44_Y25_N6
\delay_cnt[14]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[14]~51_combout\ = (delay_cnt(14) & (\delay_cnt[13]~50\ $ (GND))) # (!delay_cnt(14) & (!\delay_cnt[13]~50\ & VCC))
-- \delay_cnt[14]~52\ = CARRY((delay_cnt(14) & !\delay_cnt[13]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(14),
	datad => VCC,
	cin => \delay_cnt[13]~50\,
	combout => \delay_cnt[14]~51_combout\,
	cout => \delay_cnt[14]~52\);

-- Location: FF_X44_Y25_N7
\delay_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[14]~51_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_delay_en~6_combout\,
	ena => \delay_cnt[22]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(14));

-- Location: LCCOMB_X44_Y25_N8
\delay_cnt[15]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[15]~54_combout\ = (delay_cnt(15) & (!\delay_cnt[14]~52\)) # (!delay_cnt(15) & ((\delay_cnt[14]~52\) # (GND)))
-- \delay_cnt[15]~55\ = CARRY((!\delay_cnt[14]~52\) # (!delay_cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(15),
	datad => VCC,
	cin => \delay_cnt[14]~52\,
	combout => \delay_cnt[15]~54_combout\,
	cout => \delay_cnt[15]~55\);

-- Location: FF_X44_Y25_N9
\delay_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[15]~54_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_delay_en~6_combout\,
	ena => \delay_cnt[22]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(15));

-- Location: LCCOMB_X44_Y25_N10
\delay_cnt[16]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[16]~56_combout\ = (delay_cnt(16) & (\delay_cnt[15]~55\ $ (GND))) # (!delay_cnt(16) & (!\delay_cnt[15]~55\ & VCC))
-- \delay_cnt[16]~57\ = CARRY((delay_cnt(16) & !\delay_cnt[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(16),
	datad => VCC,
	cin => \delay_cnt[15]~55\,
	combout => \delay_cnt[16]~56_combout\,
	cout => \delay_cnt[16]~57\);

-- Location: FF_X44_Y25_N11
\delay_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[16]~56_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_delay_en~6_combout\,
	ena => \delay_cnt[22]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(16));

-- Location: LCCOMB_X44_Y25_N12
\delay_cnt[17]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[17]~58_combout\ = (delay_cnt(17) & (!\delay_cnt[16]~57\)) # (!delay_cnt(17) & ((\delay_cnt[16]~57\) # (GND)))
-- \delay_cnt[17]~59\ = CARRY((!\delay_cnt[16]~57\) # (!delay_cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(17),
	datad => VCC,
	cin => \delay_cnt[16]~57\,
	combout => \delay_cnt[17]~58_combout\,
	cout => \delay_cnt[17]~59\);

-- Location: FF_X44_Y25_N13
\delay_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[17]~58_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_delay_en~6_combout\,
	ena => \delay_cnt[22]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(17));

-- Location: LCCOMB_X44_Y25_N14
\delay_cnt[18]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[18]~60_combout\ = (delay_cnt(18) & (\delay_cnt[17]~59\ $ (GND))) # (!delay_cnt(18) & (!\delay_cnt[17]~59\ & VCC))
-- \delay_cnt[18]~61\ = CARRY((delay_cnt(18) & !\delay_cnt[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(18),
	datad => VCC,
	cin => \delay_cnt[17]~59\,
	combout => \delay_cnt[18]~60_combout\,
	cout => \delay_cnt[18]~61\);

-- Location: FF_X44_Y25_N15
\delay_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[18]~60_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_delay_en~6_combout\,
	ena => \delay_cnt[22]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(18));

-- Location: LCCOMB_X44_Y25_N16
\delay_cnt[19]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[19]~62_combout\ = (delay_cnt(19) & (!\delay_cnt[18]~61\)) # (!delay_cnt(19) & ((\delay_cnt[18]~61\) # (GND)))
-- \delay_cnt[19]~63\ = CARRY((!\delay_cnt[18]~61\) # (!delay_cnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(19),
	datad => VCC,
	cin => \delay_cnt[18]~61\,
	combout => \delay_cnt[19]~62_combout\,
	cout => \delay_cnt[19]~63\);

-- Location: FF_X44_Y25_N17
\delay_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[19]~62_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_delay_en~6_combout\,
	ena => \delay_cnt[22]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(19));

-- Location: LCCOMB_X44_Y25_N18
\delay_cnt[20]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[20]~64_combout\ = (delay_cnt(20) & (\delay_cnt[19]~63\ $ (GND))) # (!delay_cnt(20) & (!\delay_cnt[19]~63\ & VCC))
-- \delay_cnt[20]~65\ = CARRY((delay_cnt(20) & !\delay_cnt[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(20),
	datad => VCC,
	cin => \delay_cnt[19]~63\,
	combout => \delay_cnt[20]~64_combout\,
	cout => \delay_cnt[20]~65\);

-- Location: FF_X44_Y25_N19
\delay_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[20]~64_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_delay_en~6_combout\,
	ena => \delay_cnt[22]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(20));

-- Location: LCCOMB_X44_Y25_N20
\delay_cnt[21]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[21]~66_combout\ = (delay_cnt(21) & (!\delay_cnt[20]~65\)) # (!delay_cnt(21) & ((\delay_cnt[20]~65\) # (GND)))
-- \delay_cnt[21]~67\ = CARRY((!\delay_cnt[20]~65\) # (!delay_cnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(21),
	datad => VCC,
	cin => \delay_cnt[20]~65\,
	combout => \delay_cnt[21]~66_combout\,
	cout => \delay_cnt[21]~67\);

-- Location: FF_X44_Y25_N21
\delay_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[21]~66_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_delay_en~6_combout\,
	ena => \delay_cnt[22]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(21));

-- Location: LCCOMB_X44_Y25_N22
\delay_cnt[22]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_cnt[22]~68_combout\ = delay_cnt(22) $ (!\delay_cnt[21]~67\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(22),
	cin => \delay_cnt[21]~67\,
	combout => \delay_cnt[22]~68_combout\);

-- Location: FF_X44_Y25_N23
\delay_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_cnt[22]~68_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_delay_en~6_combout\,
	ena => \delay_cnt[22]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay_cnt(22));

-- Location: LCCOMB_X44_Y25_N26
\delay_en~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_en~5_combout\ = (!delay_cnt(20) & (!delay_cnt(22) & !delay_cnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => delay_cnt(20),
	datac => delay_cnt(22),
	datad => delay_cnt(19),
	combout => \delay_en~5_combout\);

-- Location: LCCOMB_X44_Y25_N24
\delay_en~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_en~0_combout\ = (!delay_cnt(17)) # (!delay_cnt(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => delay_cnt(18),
	datad => delay_cnt(17),
	combout => \delay_en~0_combout\);

-- Location: LCCOMB_X44_Y26_N4
\delay_en~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_en~1_combout\ = (((!delay_cnt(5) & !delay_cnt(6))) # (!delay_cnt(7))) # (!delay_cnt(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(8),
	datab => delay_cnt(5),
	datac => delay_cnt(6),
	datad => delay_cnt(7),
	combout => \delay_en~1_combout\);

-- Location: LCCOMB_X44_Y26_N6
\delay_en~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_en~2_combout\ = (delay_cnt(11)) # ((delay_cnt(10) & ((delay_cnt(9)) # (!\delay_en~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(10),
	datab => delay_cnt(9),
	datac => \delay_en~1_combout\,
	datad => delay_cnt(11),
	combout => \delay_en~2_combout\);

-- Location: LCCOMB_X44_Y26_N0
\delay_en~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_en~3_combout\ = (delay_cnt(16)) # ((delay_cnt(13) & ((delay_cnt(12)) # (\delay_en~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(13),
	datab => delay_cnt(16),
	datac => delay_cnt(12),
	datad => \delay_en~2_combout\,
	combout => \delay_en~3_combout\);

-- Location: LCCOMB_X44_Y26_N2
\delay_en~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_en~4_combout\ = (\delay_en~0_combout\) # ((!delay_cnt(14) & (!delay_cnt(15) & !\delay_en~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \delay_en~0_combout\,
	datab => delay_cnt(14),
	datac => delay_cnt(15),
	datad => \delay_en~3_combout\,
	combout => \delay_en~4_combout\);

-- Location: LCCOMB_X44_Y26_N8
\delay_en~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_en~6_combout\ = (delay_cnt(21) & (((\delay_en~5_combout\ & \delay_en~4_combout\)))) # (!delay_cnt(21) & (((\delay_en~5_combout\ & \delay_en~4_combout\)) # (!delay_cnt(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => delay_cnt(21),
	datab => delay_cnt(22),
	datac => \delay_en~5_combout\,
	datad => \delay_en~4_combout\,
	combout => \delay_en~6_combout\);

-- Location: LCCOMB_X44_Y24_N24
\delay_en~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \delay_en~9_combout\ = (\delay_en~q\ & (((\delay_en~6_combout\)))) # (!\delay_en~q\ & (\uart_tx_u1|cmd_done~q\ & (\delay_en~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|cmd_done~q\,
	datab => \delay_en~8_combout\,
	datac => \delay_en~q\,
	datad => \delay_en~6_combout\,
	combout => \delay_en~9_combout\);

-- Location: LCCOMB_X44_Y24_N6
\always2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always2~0_combout\ = (!\init_done~q\ & (\tx_en~input_o\ & \boot_ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \init_done~q\,
	datac => \tx_en~input_o\,
	datad => \boot_ready~q\,
	combout => \always2~0_combout\);

-- Location: FF_X44_Y24_N25
delay_en : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \delay_en~9_combout\,
	clrn => \rst_n~input_o\,
	ena => \always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay_en~q\);

-- Location: LCCOMB_X45_Y25_N24
\WideOr36~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr36~0_combout\ = (!\cmd_step.1010~q\ & (!\cmd_step.1000~q\ & \cmd_step.0000~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmd_step.1010~q\,
	datac => \cmd_step.1000~q\,
	datad => \cmd_step.0000~q\,
	combout => \WideOr36~0_combout\);

-- Location: LCCOMB_X45_Y24_N20
\tx_start~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_start~0_combout\ = (!\delay_en~q\ & ((!\WideOr36~0_combout\) # (!\WideOr36~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \delay_en~q\,
	datac => \WideOr36~1_combout\,
	datad => \WideOr36~0_combout\,
	combout => \tx_start~0_combout\);

-- Location: FF_X45_Y24_N21
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
	ena => \always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_start~q\);

-- Location: LCCOMB_X49_Y24_N18
\uart_tx_u1|Selector522~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector522~2_combout\ = (!\uart_tx_u1|state.S_IDLE~q\ & \tx_start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \tx_start~q\,
	combout => \uart_tx_u1|Selector522~2_combout\);

-- Location: LCCOMB_X52_Y24_N16
\uart_tx_u1|Selector522~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector522~4_combout\ = (\uart_tx_u1|state.S_DATA~q\ & (\uart_tx_u1|Equal2~0_combout\ & ((\uart_tx_u1|Selector524~0_combout\) # (!\uart_tx_u1|Equal0~4_combout\)))) # (!\uart_tx_u1|state.S_DATA~q\ & (((\uart_tx_u1|Selector524~0_combout\ & 
-- !\uart_tx_u1|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_DATA~q\,
	datab => \uart_tx_u1|Equal2~0_combout\,
	datac => \uart_tx_u1|Selector524~0_combout\,
	datad => \uart_tx_u1|Equal0~4_combout\,
	combout => \uart_tx_u1|Selector522~4_combout\);

-- Location: LCCOMB_X52_Y24_N26
\uart_tx_u1|Selector523~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector523~1_combout\ = (\uart_tx_u1|Selector523~0_combout\ & ((\uart_tx_u1|Selector522~2_combout\) # ((\uart_tx_u1|state.S_START~q\ & !\uart_tx_u1|Selector522~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_START~q\,
	datab => \uart_tx_u1|Selector523~0_combout\,
	datac => \uart_tx_u1|Selector522~2_combout\,
	datad => \uart_tx_u1|Selector522~4_combout\,
	combout => \uart_tx_u1|Selector523~1_combout\);

-- Location: LCCOMB_X45_Y26_N8
\Selector180~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector180~0_combout\ = (\cmd_step.0100~q\) # ((\WideOr36~1_combout\ & (current_cmd(107) & \WideOr36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_step.0100~q\,
	datab => \WideOr36~1_combout\,
	datac => current_cmd(107),
	datad => \WideOr36~0_combout\,
	combout => \Selector180~0_combout\);

-- Location: FF_X45_Y26_N9
\current_cmd[107]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector180~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(107));

-- Location: LCCOMB_X45_Y25_N12
WideOr36 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr36~combout\ = (\cmd_step.1000~q\) # ((\cmd_step.1010~q\) # ((!\cmd_step.0000~q\) # (!\WideOr36~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_step.1000~q\,
	datab => \cmd_step.1010~q\,
	datac => \WideOr36~1_combout\,
	datad => \cmd_step.0000~q\,
	combout => \WideOr36~combout\);

-- Location: LCCOMB_X45_Y25_N18
\Selector184~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector184~0_combout\ = (\cmd_step.0100~q\) # ((\cmd_step.1010~q\) # ((!\WideOr36~combout\ & current_cmd(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr36~combout\,
	datab => \cmd_step.0100~q\,
	datac => current_cmd(101),
	datad => \cmd_step.1010~q\,
	combout => \Selector184~0_combout\);

-- Location: FF_X45_Y25_N19
\current_cmd[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector184~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(101));

-- Location: LCCOMB_X45_Y25_N16
\Selector176~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector176~0_combout\ = (!\cmd_step.1000~q\ & !\cmd_step.1010~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmd_step.1000~q\,
	datad => \cmd_step.1010~q\,
	combout => \Selector176~0_combout\);

-- Location: LCCOMB_X45_Y25_N10
\Selector179~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector179~0_combout\ = ((\cmd_step.0100~q\) # ((!\WideOr36~combout\ & current_cmd(108)))) # (!\Selector176~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr36~combout\,
	datab => \Selector176~0_combout\,
	datac => current_cmd(108),
	datad => \cmd_step.0100~q\,
	combout => \Selector179~0_combout\);

-- Location: FF_X45_Y25_N11
\current_cmd[108]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector179~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(108));

-- Location: LCCOMB_X46_Y25_N22
\Selector246~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector246~0_combout\ = (!\cmd_step.0100~q\ & \cmd_step.0000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmd_step.0100~q\,
	datad => \cmd_step.0000~q\,
	combout => \Selector246~0_combout\);

-- Location: LCCOMB_X46_Y26_N20
\Selector195~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector195~0_combout\ = (\cmd_step.1010~q\) # (((!\WideOr36~combout\ & current_cmd(89))) # (!\Selector246~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr36~combout\,
	datab => \cmd_step.1010~q\,
	datac => current_cmd(89),
	datad => \Selector246~0_combout\,
	combout => \Selector195~0_combout\);

-- Location: FF_X46_Y26_N21
\current_cmd[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector195~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(89));

-- Location: LCCOMB_X46_Y26_N22
\Selector190~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector190~0_combout\ = (!\cmd_step.0010~q\ & (!\cmd_step.1100~q\ & (!\cmd_step.0110~q\ & !\cmd_step.1000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_step.0010~q\,
	datab => \cmd_step.1100~q\,
	datac => \cmd_step.0110~q\,
	datad => \cmd_step.1000~q\,
	combout => \Selector190~0_combout\);

-- Location: LCCOMB_X46_Y27_N8
\Selector183~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector183~0_combout\ = (((current_cmd(102) & !\WideOr36~combout\)) # (!\Selector190~0_combout\)) # (!\cmd_step.0000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_step.0000~q\,
	datab => \Selector190~0_combout\,
	datac => current_cmd(102),
	datad => \WideOr36~combout\,
	combout => \Selector183~0_combout\);

-- Location: FF_X46_Y27_N9
\current_cmd[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector183~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(102));

-- Location: LCCOMB_X46_Y24_N6
\Selector250~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector250~0_combout\ = (\cmd_step.0010~q\) # ((\cmd_step.1010~q\) # ((current_cmd(17) & !\WideOr36~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_step.0010~q\,
	datab => \cmd_step.1010~q\,
	datac => current_cmd(17),
	datad => \WideOr36~combout\,
	combout => \Selector250~0_combout\);

-- Location: FF_X46_Y24_N7
\current_cmd[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector250~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(17));

-- Location: LCCOMB_X46_Y24_N26
\Selector222~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector222~0_combout\ = ((\WideOr36~1_combout\ & current_cmd(57))) # (!\WideOr36~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr36~1_combout\,
	datab => \WideOr36~0_combout\,
	datac => current_cmd(57),
	combout => \Selector222~0_combout\);

-- Location: FF_X46_Y24_N27
\current_cmd[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector222~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(57));

-- Location: LCCOMB_X45_Y24_N10
\Selector242~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector242~0_combout\ = (!\cmd_step.1010~q\ & \cmd_step.0000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_step.1010~q\,
	datac => \cmd_step.0000~q\,
	combout => \Selector242~0_combout\);

-- Location: LCCOMB_X46_Y24_N10
\Selector242~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector242~1_combout\ = ((\cmd_step.1100~q\) # ((current_cmd(33) & !\WideOr36~combout\))) # (!\Selector242~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector242~0_combout\,
	datab => \cmd_step.1100~q\,
	datac => current_cmd(33),
	datad => \WideOr36~combout\,
	combout => \Selector242~1_combout\);

-- Location: FF_X46_Y24_N11
\current_cmd[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector242~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(33));

-- Location: LCCOMB_X45_Y25_N30
\current_cmd[10]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_cmd[10]~0_combout\ = (current_cmd(10)) # ((\cmd_step~38_combout\ & ((!\WideOr36~0_combout\) # (!\WideOr36~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr36~1_combout\,
	datab => \cmd_step~38_combout\,
	datac => current_cmd(10),
	datad => \WideOr36~0_combout\,
	combout => \current_cmd[10]~0_combout\);

-- Location: FF_X45_Y25_N31
\current_cmd[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_cmd[10]~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(10));

-- Location: LCCOMB_X46_Y27_N28
\Selector174~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector174~0_combout\ = (\cmd_step.1000~q\) # ((\WideOr36~0_combout\ & (\WideOr36~1_combout\ & current_cmd(115))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr36~0_combout\,
	datab => \WideOr36~1_combout\,
	datac => current_cmd(115),
	datad => \cmd_step.1000~q\,
	combout => \Selector174~0_combout\);

-- Location: FF_X46_Y27_N29
\current_cmd[115]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector174~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(115));

-- Location: LCCOMB_X45_Y25_N20
\Selector177~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector177~0_combout\ = (\cmd_step.1000~q\) # (((!\WideOr36~combout\ & current_cmd(110))) # (!\cmd_step.0000~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_step.1000~q\,
	datab => \WideOr36~combout\,
	datac => current_cmd(110),
	datad => \cmd_step.0000~q\,
	combout => \Selector177~0_combout\);

-- Location: FF_X45_Y25_N21
\current_cmd[110]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector177~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(110));

-- Location: LCCOMB_X46_Y25_N0
\WideOr36~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr36~2_combout\ = (!\cmd_step.0010~q\ & (!\cmd_step.0110~q\ & !\cmd_step.1100~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_step.0010~q\,
	datac => \cmd_step.0110~q\,
	datad => \cmd_step.1100~q\,
	combout => \WideOr36~2_combout\);

-- Location: LCCOMB_X46_Y26_N6
\Selector247~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector247~0_combout\ = (((!\WideOr36~combout\ & current_cmd(24))) # (!\WideOr36~2_combout\)) # (!\cmd_step.0000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr36~combout\,
	datab => \cmd_step.0000~q\,
	datac => current_cmd(24),
	datad => \WideOr36~2_combout\,
	combout => \Selector247~0_combout\);

-- Location: FF_X46_Y26_N7
\current_cmd[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector247~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(24));

-- Location: LCCOMB_X50_Y25_N2
\uart_tx_u1|Selector474~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector474~0_combout\ = (!\uart_tx_u1|state.S_IDLE~q\ & current_cmd(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => current_cmd(24),
	combout => \uart_tx_u1|Selector474~0_combout\);

-- Location: FF_X50_Y25_N3
\uart_tx_u1|shift_reg[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector474~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(38));

-- Location: LCCOMB_X50_Y25_N0
\uart_tx_u1|Selector466~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector466~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(38)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(24),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(38),
	combout => \uart_tx_u1|Selector466~0_combout\);

-- Location: FF_X50_Y25_N1
\uart_tx_u1|shift_reg[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector466~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(46));

-- Location: LCCOMB_X50_Y25_N6
\uart_tx_u1|Selector458~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector458~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(46))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datac => \uart_tx_u1|shift_reg\(46),
	datad => current_cmd(24),
	combout => \uart_tx_u1|Selector458~0_combout\);

-- Location: FF_X50_Y25_N7
\uart_tx_u1|shift_reg[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector458~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(54));

-- Location: LCCOMB_X46_Y27_N20
\uart_tx_u1|Selector450~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector450~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(54))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(102))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(54),
	datac => current_cmd(102),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector450~0_combout\);

-- Location: FF_X46_Y27_N21
\uart_tx_u1|shift_reg[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector450~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(62));

-- Location: LCCOMB_X46_Y27_N6
\uart_tx_u1|Selector442~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector442~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(62))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(102))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(62),
	datac => current_cmd(102),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector442~0_combout\);

-- Location: FF_X46_Y27_N7
\uart_tx_u1|shift_reg[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector442~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(70));

-- Location: LCCOMB_X46_Y27_N16
\uart_tx_u1|Selector434~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector434~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(70))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(102))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(70),
	datac => current_cmd(102),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector434~0_combout\);

-- Location: FF_X46_Y27_N17
\uart_tx_u1|shift_reg[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector434~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(78));

-- Location: LCCOMB_X46_Y27_N30
\uart_tx_u1|Selector426~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector426~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(78)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(110)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(110),
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(78),
	combout => \uart_tx_u1|Selector426~0_combout\);

-- Location: FF_X46_Y27_N31
\uart_tx_u1|shift_reg[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector426~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(86));

-- Location: LCCOMB_X46_Y27_N0
\Selector190~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector190~1_combout\ = ((\WideOr36~0_combout\ & (\WideOr36~1_combout\ & current_cmd(94)))) # (!\Selector190~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr36~0_combout\,
	datab => \WideOr36~1_combout\,
	datac => current_cmd(94),
	datad => \Selector190~0_combout\,
	combout => \Selector190~1_combout\);

-- Location: FF_X46_Y27_N1
\current_cmd[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector190~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(94));

-- Location: LCCOMB_X46_Y27_N26
\uart_tx_u1|Selector418~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector418~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(86))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(94))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datac => \uart_tx_u1|shift_reg\(86),
	datad => current_cmd(94),
	combout => \uart_tx_u1|Selector418~0_combout\);

-- Location: FF_X46_Y27_N27
\uart_tx_u1|shift_reg[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector418~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(94));

-- Location: LCCOMB_X46_Y27_N18
\uart_tx_u1|Selector410~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector410~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(94))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(102))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(94),
	datac => current_cmd(102),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector410~0_combout\);

-- Location: FF_X46_Y27_N19
\uart_tx_u1|shift_reg[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector410~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(102));

-- Location: LCCOMB_X46_Y27_N24
\uart_tx_u1|Selector402~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector402~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(102)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(110)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(110),
	datab => \uart_tx_u1|shift_reg\(102),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector402~0_combout\);

-- Location: FF_X50_Y27_N9
\uart_tx_u1|shift_reg[110]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uart_tx_u1|Selector402~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(110));

-- Location: LCCOMB_X50_Y27_N18
\uart_tx_u1|Selector394~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector394~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(110))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(115))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(110),
	datac => current_cmd(115),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector394~0_combout\);

-- Location: FF_X50_Y27_N19
\uart_tx_u1|shift_reg[118]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector394~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(118));

-- Location: LCCOMB_X50_Y27_N12
\uart_tx_u1|Selector386~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector386~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(118)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(115)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(115),
	datad => \uart_tx_u1|shift_reg\(118),
	combout => \uart_tx_u1|Selector386~0_combout\);

-- Location: FF_X50_Y27_N13
\uart_tx_u1|shift_reg[126]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector386~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(126));

-- Location: LCCOMB_X50_Y27_N28
\uart_tx_u1|Selector378~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector378~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(126))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(126),
	combout => \uart_tx_u1|Selector378~0_combout\);

-- Location: FF_X50_Y27_N29
\uart_tx_u1|shift_reg[134]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector378~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(134));

-- Location: LCCOMB_X50_Y27_N16
\uart_tx_u1|Selector370~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector370~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(134)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(115)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(115),
	datad => \uart_tx_u1|shift_reg\(134),
	combout => \uart_tx_u1|Selector370~0_combout\);

-- Location: FF_X50_Y27_N17
\uart_tx_u1|shift_reg[142]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector370~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(142));

-- Location: LCCOMB_X50_Y27_N20
\uart_tx_u1|Selector362~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector362~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(142)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(115)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(115),
	datad => \uart_tx_u1|shift_reg\(142),
	combout => \uart_tx_u1|Selector362~0_combout\);

-- Location: FF_X50_Y27_N21
\uart_tx_u1|shift_reg[150]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector362~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(150));

-- Location: LCCOMB_X50_Y27_N4
\uart_tx_u1|Selector354~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector354~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(150)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(107)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(107),
	datab => \uart_tx_u1|shift_reg\(150),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector354~0_combout\);

-- Location: FF_X50_Y27_N5
\uart_tx_u1|shift_reg[158]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector354~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(158));

-- Location: LCCOMB_X49_Y23_N10
\uart_tx_u1|Selector346~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector346~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(158))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(107))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(158),
	datac => current_cmd(107),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector346~0_combout\);

-- Location: FF_X49_Y23_N11
\uart_tx_u1|shift_reg[166]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector346~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(166));

-- Location: LCCOMB_X49_Y23_N8
\uart_tx_u1|Selector338~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector338~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(166))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(107))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(166),
	datac => current_cmd(107),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector338~0_combout\);

-- Location: FF_X49_Y23_N9
\uart_tx_u1|shift_reg[174]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector338~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(174));

-- Location: LCCOMB_X45_Y23_N14
\uart_tx_u1|Selector330~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector330~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(174))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(107))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(174),
	datac => current_cmd(107),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector330~0_combout\);

-- Location: FF_X45_Y23_N15
\uart_tx_u1|shift_reg[182]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector330~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(182));

-- Location: LCCOMB_X45_Y23_N0
\uart_tx_u1|Selector322~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector322~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(182))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(107))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(182),
	datac => current_cmd(107),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector322~0_combout\);

-- Location: FF_X45_Y23_N1
\uart_tx_u1|shift_reg[190]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector322~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(190));

-- Location: LCCOMB_X45_Y23_N6
\uart_tx_u1|Selector314~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector314~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(190))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(107))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(190),
	datac => current_cmd(107),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector314~0_combout\);

-- Location: FF_X45_Y23_N7
\uart_tx_u1|shift_reg[198]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector314~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(198));

-- Location: LCCOMB_X45_Y23_N12
\uart_tx_u1|Selector306~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector306~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(198))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(107))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(198),
	datac => current_cmd(107),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector306~0_combout\);

-- Location: FF_X45_Y23_N13
\uart_tx_u1|shift_reg[206]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector306~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(206));

-- Location: LCCOMB_X45_Y23_N30
\uart_tx_u1|Selector298~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector298~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(206))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(107))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(206),
	datac => current_cmd(107),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector298~0_combout\);

-- Location: FF_X45_Y23_N31
\uart_tx_u1|shift_reg[214]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector298~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(214));

-- Location: LCCOMB_X45_Y23_N4
\uart_tx_u1|Selector290~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector290~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(214))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(107))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(214),
	datac => current_cmd(107),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector290~0_combout\);

-- Location: FF_X45_Y23_N5
\uart_tx_u1|shift_reg[222]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector290~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(222));

-- Location: LCCOMB_X45_Y23_N2
\uart_tx_u1|Selector282~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector282~0_combout\ = (\uart_tx_u1|shift_reg\(222) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|shift_reg\(222),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector282~0_combout\);

-- Location: FF_X45_Y23_N3
\uart_tx_u1|shift_reg[230]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector282~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(230));

-- Location: LCCOMB_X45_Y23_N20
\uart_tx_u1|Selector274~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector274~0_combout\ = (\uart_tx_u1|shift_reg\(230) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(230),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector274~0_combout\);

-- Location: FF_X45_Y23_N21
\uart_tx_u1|shift_reg[238]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector274~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(238));

-- Location: LCCOMB_X45_Y23_N10
\uart_tx_u1|Selector266~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector266~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(238))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(107))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(238),
	datac => current_cmd(107),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector266~0_combout\);

-- Location: FF_X45_Y23_N11
\uart_tx_u1|shift_reg[246]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector266~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(246));

-- Location: LCCOMB_X45_Y23_N28
\uart_tx_u1|Selector258~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector258~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(246))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(107))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(246),
	datac => current_cmd(107),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector258~0_combout\);

-- Location: FF_X45_Y23_N29
\uart_tx_u1|shift_reg[254]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector258~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(254));

-- Location: LCCOMB_X45_Y23_N18
\uart_tx_u1|Selector250~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector250~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(254))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(107))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(254),
	datac => current_cmd(107),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector250~0_combout\);

-- Location: FF_X45_Y23_N19
\uart_tx_u1|shift_reg[262]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector250~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(262));

-- Location: LCCOMB_X45_Y23_N24
\uart_tx_u1|Selector242~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector242~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(262))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(107))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(262),
	datac => current_cmd(107),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector242~0_combout\);

-- Location: FF_X45_Y23_N25
\uart_tx_u1|shift_reg[270]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector242~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(270));

-- Location: LCCOMB_X45_Y23_N22
\uart_tx_u1|Selector234~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector234~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(270))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(107))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(270),
	datac => current_cmd(107),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector234~0_combout\);

-- Location: FF_X45_Y23_N23
\uart_tx_u1|shift_reg[278]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector234~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(278));

-- Location: LCCOMB_X45_Y23_N16
\uart_tx_u1|Selector226~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector226~0_combout\ = (\uart_tx_u1|shift_reg\(278) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|shift_reg\(278),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector226~0_combout\);

-- Location: FF_X45_Y23_N17
\uart_tx_u1|shift_reg[286]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector226~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(286));

-- Location: LCCOMB_X45_Y23_N8
\uart_tx_u1|Selector218~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector218~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(286))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(107))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(286),
	datac => current_cmd(107),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector218~0_combout\);

-- Location: FF_X45_Y23_N9
\uart_tx_u1|shift_reg[294]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector218~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(294));

-- Location: LCCOMB_X45_Y23_N26
\uart_tx_u1|Selector210~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector210~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(294))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(107))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(294),
	datac => current_cmd(107),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector210~0_combout\);

-- Location: FF_X48_Y23_N7
\uart_tx_u1|shift_reg[302]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uart_tx_u1|Selector210~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(302));

-- Location: LCCOMB_X48_Y23_N26
\uart_tx_u1|Selector202~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector202~0_combout\ = (\uart_tx_u1|shift_reg\(302) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(302),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector202~0_combout\);

-- Location: FF_X48_Y23_N27
\uart_tx_u1|shift_reg[310]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector202~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(310));

-- Location: LCCOMB_X48_Y23_N4
\uart_tx_u1|Selector194~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector194~0_combout\ = (\uart_tx_u1|shift_reg\(310) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|shift_reg\(310),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector194~0_combout\);

-- Location: FF_X48_Y23_N5
\uart_tx_u1|shift_reg[318]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector194~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(318));

-- Location: LCCOMB_X48_Y23_N14
\uart_tx_u1|Selector186~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector186~0_combout\ = (\uart_tx_u1|shift_reg\(318) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|shift_reg\(318),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector186~0_combout\);

-- Location: FF_X48_Y23_N15
\uart_tx_u1|shift_reg[326]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector186~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(326));

-- Location: LCCOMB_X48_Y23_N12
\uart_tx_u1|Selector178~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector178~0_combout\ = (\uart_tx_u1|shift_reg\(326) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|shift_reg\(326),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector178~0_combout\);

-- Location: FF_X48_Y23_N13
\uart_tx_u1|shift_reg[334]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector178~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(334));

-- Location: LCCOMB_X48_Y23_N30
\uart_tx_u1|Selector170~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector170~0_combout\ = (\uart_tx_u1|shift_reg\(334) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(334),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector170~0_combout\);

-- Location: FF_X48_Y23_N31
\uart_tx_u1|shift_reg[342]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector170~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(342));

-- Location: LCCOMB_X48_Y23_N24
\uart_tx_u1|Selector162~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector162~0_combout\ = (\uart_tx_u1|shift_reg\(342) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|shift_reg\(342),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector162~0_combout\);

-- Location: FF_X48_Y23_N25
\uart_tx_u1|shift_reg[350]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector162~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(350));

-- Location: LCCOMB_X49_Y23_N22
\uart_tx_u1|Selector154~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector154~0_combout\ = (\uart_tx_u1|shift_reg\(350) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(350),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector154~0_combout\);

-- Location: FF_X49_Y23_N23
\uart_tx_u1|shift_reg[358]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector154~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(358));

-- Location: LCCOMB_X49_Y23_N20
\uart_tx_u1|Selector146~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector146~0_combout\ = (\uart_tx_u1|shift_reg\(358) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|shift_reg\(358),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector146~0_combout\);

-- Location: FF_X49_Y23_N21
\uart_tx_u1|shift_reg[366]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector146~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(366));

-- Location: LCCOMB_X49_Y23_N30
\uart_tx_u1|Selector138~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector138~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(366))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(366),
	datac => current_cmd(106),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector138~0_combout\);

-- Location: FF_X49_Y23_N31
\uart_tx_u1|shift_reg[374]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector138~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(374));

-- Location: LCCOMB_X49_Y23_N12
\uart_tx_u1|Selector130~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector130~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(374))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(374),
	datac => current_cmd(106),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector130~0_combout\);

-- Location: FF_X49_Y23_N13
\uart_tx_u1|shift_reg[382]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector130~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(382));

-- Location: LCCOMB_X49_Y23_N2
\uart_tx_u1|Selector122~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector122~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(382))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(382),
	datac => current_cmd(106),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector122~0_combout\);

-- Location: FF_X49_Y23_N3
\uart_tx_u1|shift_reg[390]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector122~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(390));

-- Location: LCCOMB_X49_Y23_N28
\uart_tx_u1|Selector114~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector114~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(390))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(390),
	datac => current_cmd(106),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector114~0_combout\);

-- Location: FF_X49_Y23_N29
\uart_tx_u1|shift_reg[398]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector114~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(398));

-- Location: LCCOMB_X49_Y23_N14
\uart_tx_u1|Selector106~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector106~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(398))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(398),
	datac => current_cmd(106),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector106~0_combout\);

-- Location: FF_X49_Y23_N15
\uart_tx_u1|shift_reg[406]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector106~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(406));

-- Location: LCCOMB_X50_Y23_N22
\uart_tx_u1|Selector98~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector98~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(406))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(406),
	combout => \uart_tx_u1|Selector98~0_combout\);

-- Location: FF_X50_Y23_N23
\uart_tx_u1|shift_reg[414]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector98~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(414));

-- Location: LCCOMB_X50_Y23_N8
\uart_tx_u1|Selector90~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector90~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(414))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(414),
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => current_cmd(106),
	combout => \uart_tx_u1|Selector90~0_combout\);

-- Location: FF_X50_Y23_N9
\uart_tx_u1|shift_reg[422]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector90~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(422));

-- Location: LCCOMB_X50_Y23_N26
\uart_tx_u1|Selector82~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector82~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(422))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datac => \uart_tx_u1|shift_reg\(422),
	datad => current_cmd(106),
	combout => \uart_tx_u1|Selector82~0_combout\);

-- Location: FF_X50_Y23_N27
\uart_tx_u1|shift_reg[430]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector82~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(430));

-- Location: LCCOMB_X51_Y23_N30
\uart_tx_u1|Selector74~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector74~0_combout\ = (\uart_tx_u1|shift_reg\(430) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|shift_reg\(430),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector74~0_combout\);

-- Location: FF_X50_Y23_N11
\uart_tx_u1|shift_reg[438]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uart_tx_u1|Selector74~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(438));

-- Location: LCCOMB_X50_Y23_N16
\uart_tx_u1|Selector66~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector66~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(438))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(438),
	combout => \uart_tx_u1|Selector66~0_combout\);

-- Location: FF_X50_Y23_N17
\uart_tx_u1|shift_reg[446]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector66~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(446));

-- Location: LCCOMB_X50_Y23_N6
\uart_tx_u1|Selector58~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector58~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(446))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(446),
	combout => \uart_tx_u1|Selector58~0_combout\);

-- Location: FF_X50_Y23_N7
\uart_tx_u1|shift_reg[454]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector58~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(454));

-- Location: LCCOMB_X50_Y23_N20
\uart_tx_u1|Selector50~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector50~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(454))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(454),
	combout => \uart_tx_u1|Selector50~0_combout\);

-- Location: FF_X50_Y23_N21
\uart_tx_u1|shift_reg[462]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector50~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(462));

-- Location: LCCOMB_X50_Y23_N18
\uart_tx_u1|Selector42~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector42~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(462))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(462),
	combout => \uart_tx_u1|Selector42~0_combout\);

-- Location: FF_X50_Y23_N19
\uart_tx_u1|shift_reg[470]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector42~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(470));

-- Location: LCCOMB_X50_Y23_N14
\uart_tx_u1|Selector34~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector34~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(470))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(470),
	combout => \uart_tx_u1|Selector34~0_combout\);

-- Location: FF_X50_Y23_N15
\uart_tx_u1|shift_reg[478]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector34~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(478));

-- Location: LCCOMB_X51_Y23_N8
\uart_tx_u1|Selector26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector26~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(478))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(478),
	combout => \uart_tx_u1|Selector26~0_combout\);

-- Location: FF_X51_Y23_N9
\uart_tx_u1|shift_reg[486]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector26~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(486));

-- Location: LCCOMB_X51_Y23_N4
\uart_tx_u1|Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector18~0_combout\ = (\uart_tx_u1|shift_reg\(486) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|shift_reg\(486),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector18~0_combout\);

-- Location: FF_X51_Y23_N5
\uart_tx_u1|shift_reg[494]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector18~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(494));

-- Location: LCCOMB_X51_Y23_N10
\uart_tx_u1|Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector10~0_combout\ = (\uart_tx_u1|shift_reg\(494) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|shift_reg\(494),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector10~0_combout\);

-- Location: FF_X51_Y24_N29
\uart_tx_u1|shift_reg[502]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uart_tx_u1|Selector10~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(502));

-- Location: LCCOMB_X50_Y24_N8
\uart_tx_u1|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector2~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(502))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(502),
	combout => \uart_tx_u1|Selector2~0_combout\);

-- Location: FF_X49_Y24_N23
\uart_tx_u1|shift_reg[510]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uart_tx_u1|Selector2~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(510));

-- Location: LCCOMB_X49_Y26_N22
\uart_tx_u1|Selector491~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector491~0_combout\ = (!\uart_tx_u1|state.S_IDLE~q\ & current_cmd(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(10),
	combout => \uart_tx_u1|Selector491~0_combout\);

-- Location: FF_X49_Y26_N23
\uart_tx_u1|shift_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector491~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(21));

-- Location: LCCOMB_X48_Y26_N0
\uart_tx_u1|Selector483~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector483~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(21))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(21),
	datac => current_cmd(10),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector483~0_combout\);

-- Location: FF_X48_Y26_N1
\uart_tx_u1|shift_reg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector483~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(29));

-- Location: LCCOMB_X48_Y26_N18
\uart_tx_u1|Selector475~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector475~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(29)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(108)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(108),
	datab => \uart_tx_u1|shift_reg\(29),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector475~0_combout\);

-- Location: FF_X48_Y26_N19
\uart_tx_u1|shift_reg[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector475~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(37));

-- Location: LCCOMB_X49_Y26_N18
\uart_tx_u1|Selector467~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector467~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(37)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(108)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(108),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(37),
	combout => \uart_tx_u1|Selector467~0_combout\);

-- Location: FF_X49_Y26_N19
\uart_tx_u1|shift_reg[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector467~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(45));

-- Location: LCCOMB_X49_Y26_N20
\uart_tx_u1|Selector459~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector459~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(45)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(108)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(108),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(45),
	combout => \uart_tx_u1|Selector459~0_combout\);

-- Location: FF_X49_Y26_N21
\uart_tx_u1|shift_reg[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector459~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(53));

-- Location: LCCOMB_X49_Y26_N26
\uart_tx_u1|Selector451~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector451~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(53)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(101),
	datad => \uart_tx_u1|shift_reg\(53),
	combout => \uart_tx_u1|Selector451~0_combout\);

-- Location: FF_X49_Y26_N27
\uart_tx_u1|shift_reg[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector451~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(61));

-- Location: LCCOMB_X49_Y26_N16
\uart_tx_u1|Selector443~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector443~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(61))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(61),
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(101),
	combout => \uart_tx_u1|Selector443~0_combout\);

-- Location: FF_X49_Y26_N17
\uart_tx_u1|shift_reg[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector443~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(69));

-- Location: LCCOMB_X49_Y26_N30
\uart_tx_u1|Selector435~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector435~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(69)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(101),
	datad => \uart_tx_u1|shift_reg\(69),
	combout => \uart_tx_u1|Selector435~0_combout\);

-- Location: FF_X49_Y26_N31
\uart_tx_u1|shift_reg[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector435~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(77));

-- Location: LCCOMB_X45_Y25_N2
\Selector198~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector198~0_combout\ = ((\cmd_step.1010~q\) # ((current_cmd(85) & \WideOr36~0_combout\))) # (!\WideOr36~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr36~1_combout\,
	datab => \cmd_step.1010~q\,
	datac => current_cmd(85),
	datad => \WideOr36~0_combout\,
	combout => \Selector198~0_combout\);

-- Location: FF_X45_Y25_N3
\current_cmd[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector198~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(85));

-- Location: LCCOMB_X49_Y26_N12
\uart_tx_u1|Selector427~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector427~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(77))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(85))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(77),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => current_cmd(85),
	combout => \uart_tx_u1|Selector427~0_combout\);

-- Location: FF_X49_Y26_N13
\uart_tx_u1|shift_reg[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector427~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(85));

-- Location: LCCOMB_X49_Y26_N24
\uart_tx_u1|Selector419~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector419~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(85)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(89)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(89),
	datad => \uart_tx_u1|shift_reg\(85),
	combout => \uart_tx_u1|Selector419~0_combout\);

-- Location: FF_X49_Y26_N25
\uart_tx_u1|shift_reg[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector419~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(93));

-- Location: LCCOMB_X49_Y26_N0
\uart_tx_u1|Selector411~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector411~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(93)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(101),
	datad => \uart_tx_u1|shift_reg\(93),
	combout => \uart_tx_u1|Selector411~0_combout\);

-- Location: FF_X49_Y26_N1
\uart_tx_u1|shift_reg[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector411~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(101));

-- Location: LCCOMB_X49_Y26_N4
\uart_tx_u1|Selector403~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector403~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(101)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(101),
	datad => \uart_tx_u1|shift_reg\(101),
	combout => \uart_tx_u1|Selector403~0_combout\);

-- Location: FF_X49_Y26_N5
\uart_tx_u1|shift_reg[109]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector403~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(109));

-- Location: LCCOMB_X49_Y28_N22
\uart_tx_u1|Selector395~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector395~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(109))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(109),
	datac => current_cmd(101),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector395~0_combout\);

-- Location: FF_X49_Y28_N23
\uart_tx_u1|shift_reg[117]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector395~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(117));

-- Location: LCCOMB_X49_Y28_N30
\uart_tx_u1|Selector387~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector387~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(117))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(117),
	datac => current_cmd(101),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector387~0_combout\);

-- Location: FF_X49_Y28_N31
\uart_tx_u1|shift_reg[125]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector387~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(125));

-- Location: LCCOMB_X49_Y28_N26
\uart_tx_u1|Selector379~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector379~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(125))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(108))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(125),
	datac => current_cmd(108),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector379~0_combout\);

-- Location: FF_X49_Y28_N27
\uart_tx_u1|shift_reg[133]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector379~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(133));

-- Location: LCCOMB_X49_Y28_N18
\uart_tx_u1|Selector371~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector371~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(133))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(133),
	datac => current_cmd(101),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector371~0_combout\);

-- Location: FF_X49_Y28_N19
\uart_tx_u1|shift_reg[141]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector371~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(141));

-- Location: LCCOMB_X49_Y28_N14
\uart_tx_u1|Selector363~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector363~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(141))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(141),
	datac => current_cmd(101),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector363~0_combout\);

-- Location: FF_X49_Y28_N15
\uart_tx_u1|shift_reg[149]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector363~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(149));

-- Location: LCCOMB_X49_Y28_N6
\uart_tx_u1|Selector355~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector355~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(149))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(149),
	datac => current_cmd(106),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector355~0_combout\);

-- Location: FF_X49_Y28_N7
\uart_tx_u1|shift_reg[157]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector355~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(157));

-- Location: LCCOMB_X48_Y28_N2
\uart_tx_u1|Selector347~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector347~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(157))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(157),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => current_cmd(106),
	combout => \uart_tx_u1|Selector347~0_combout\);

-- Location: FF_X48_Y28_N3
\uart_tx_u1|shift_reg[165]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector347~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(165));

-- Location: LCCOMB_X48_Y28_N12
\uart_tx_u1|Selector339~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector339~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(165))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(165),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => current_cmd(106),
	combout => \uart_tx_u1|Selector339~0_combout\);

-- Location: FF_X48_Y28_N13
\uart_tx_u1|shift_reg[173]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector339~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(173));

-- Location: LCCOMB_X48_Y28_N26
\uart_tx_u1|Selector331~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector331~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(173))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(173),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => current_cmd(106),
	combout => \uart_tx_u1|Selector331~0_combout\);

-- Location: FF_X48_Y28_N27
\uart_tx_u1|shift_reg[181]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector331~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(181));

-- Location: LCCOMB_X48_Y28_N4
\uart_tx_u1|Selector323~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector323~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(181))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(181),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => current_cmd(106),
	combout => \uart_tx_u1|Selector323~0_combout\);

-- Location: FF_X48_Y28_N5
\uart_tx_u1|shift_reg[189]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector323~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(189));

-- Location: LCCOMB_X48_Y28_N30
\uart_tx_u1|Selector315~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector315~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(189))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datab => \uart_tx_u1|shift_reg\(189),
	datac => current_cmd(101),
	combout => \uart_tx_u1|Selector315~0_combout\);

-- Location: FF_X48_Y28_N31
\uart_tx_u1|shift_reg[197]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector315~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(197));

-- Location: LCCOMB_X48_Y28_N8
\uart_tx_u1|Selector307~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector307~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(197))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(197),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => current_cmd(106),
	combout => \uart_tx_u1|Selector307~0_combout\);

-- Location: FF_X48_Y28_N9
\uart_tx_u1|shift_reg[205]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector307~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(205));

-- Location: LCCOMB_X48_Y28_N14
\uart_tx_u1|Selector299~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector299~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(205))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datab => \uart_tx_u1|shift_reg\(205),
	datac => current_cmd(101),
	combout => \uart_tx_u1|Selector299~0_combout\);

-- Location: FF_X48_Y28_N15
\uart_tx_u1|shift_reg[213]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector299~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(213));

-- Location: LCCOMB_X48_Y28_N0
\uart_tx_u1|Selector291~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector291~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(213))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(213),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => current_cmd(106),
	combout => \uart_tx_u1|Selector291~0_combout\);

-- Location: FF_X48_Y28_N1
\uart_tx_u1|shift_reg[221]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector291~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(221));

-- Location: LCCOMB_X48_Y28_N6
\uart_tx_u1|Selector283~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector283~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(221)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(101),
	datad => \uart_tx_u1|shift_reg\(221),
	combout => \uart_tx_u1|Selector283~0_combout\);

-- Location: FF_X48_Y28_N7
\uart_tx_u1|shift_reg[229]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector283~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(229));

-- Location: LCCOMB_X48_Y28_N16
\uart_tx_u1|Selector275~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector275~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(229)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(101),
	datad => \uart_tx_u1|shift_reg\(229),
	combout => \uart_tx_u1|Selector275~0_combout\);

-- Location: FF_X48_Y28_N17
\uart_tx_u1|shift_reg[237]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector275~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(237));

-- Location: LCCOMB_X48_Y25_N18
\uart_tx_u1|Selector267~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector267~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(237)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(106),
	datad => \uart_tx_u1|shift_reg\(237),
	combout => \uart_tx_u1|Selector267~0_combout\);

-- Location: FF_X48_Y25_N19
\uart_tx_u1|shift_reg[245]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector267~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(245));

-- Location: LCCOMB_X48_Y25_N20
\uart_tx_u1|Selector259~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector259~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(245)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(106),
	datad => \uart_tx_u1|shift_reg\(245),
	combout => \uart_tx_u1|Selector259~0_combout\);

-- Location: FF_X48_Y25_N21
\uart_tx_u1|shift_reg[253]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector259~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(253));

-- Location: LCCOMB_X48_Y25_N10
\uart_tx_u1|Selector251~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector251~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(253)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(106),
	datad => \uart_tx_u1|shift_reg\(253),
	combout => \uart_tx_u1|Selector251~0_combout\);

-- Location: FF_X48_Y25_N11
\uart_tx_u1|shift_reg[261]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector251~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(261));

-- Location: LCCOMB_X48_Y25_N0
\uart_tx_u1|Selector243~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector243~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(261)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(106),
	datad => \uart_tx_u1|shift_reg\(261),
	combout => \uart_tx_u1|Selector243~0_combout\);

-- Location: FF_X48_Y25_N1
\uart_tx_u1|shift_reg[269]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector243~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(269));

-- Location: LCCOMB_X48_Y25_N6
\uart_tx_u1|Selector235~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector235~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(269)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(106),
	datad => \uart_tx_u1|shift_reg\(269),
	combout => \uart_tx_u1|Selector235~0_combout\);

-- Location: FF_X48_Y25_N7
\uart_tx_u1|shift_reg[277]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector235~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(277));

-- Location: LCCOMB_X48_Y25_N24
\uart_tx_u1|Selector227~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector227~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(277)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(101),
	datad => \uart_tx_u1|shift_reg\(277),
	combout => \uart_tx_u1|Selector227~0_combout\);

-- Location: FF_X48_Y25_N25
\uart_tx_u1|shift_reg[285]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector227~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(285));

-- Location: LCCOMB_X48_Y25_N14
\uart_tx_u1|Selector219~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector219~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(285)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(106),
	datad => \uart_tx_u1|shift_reg\(285),
	combout => \uart_tx_u1|Selector219~0_combout\);

-- Location: FF_X48_Y25_N15
\uart_tx_u1|shift_reg[293]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector219~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(293));

-- Location: LCCOMB_X48_Y25_N8
\uart_tx_u1|Selector211~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector211~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(293))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(293),
	datac => current_cmd(106),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector211~0_combout\);

-- Location: FF_X48_Y25_N9
\uart_tx_u1|shift_reg[301]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector211~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(301));

-- Location: LCCOMB_X48_Y25_N26
\uart_tx_u1|Selector203~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector203~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(301))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(301),
	datac => current_cmd(106),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector203~0_combout\);

-- Location: FF_X48_Y25_N27
\uart_tx_u1|shift_reg[309]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector203~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(309));

-- Location: LCCOMB_X48_Y25_N28
\uart_tx_u1|Selector195~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector195~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(309)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(106),
	datac => \uart_tx_u1|shift_reg\(309),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector195~0_combout\);

-- Location: FF_X48_Y25_N29
\uart_tx_u1|shift_reg[317]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector195~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(317));

-- Location: LCCOMB_X48_Y25_N30
\uart_tx_u1|Selector187~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector187~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(317)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(106),
	datad => \uart_tx_u1|shift_reg\(317),
	combout => \uart_tx_u1|Selector187~0_combout\);

-- Location: FF_X48_Y25_N31
\uart_tx_u1|shift_reg[325]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector187~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(325));

-- Location: LCCOMB_X48_Y25_N4
\uart_tx_u1|Selector179~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector179~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(325)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(106),
	datac => \uart_tx_u1|shift_reg\(325),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector179~0_combout\);

-- Location: FF_X48_Y25_N5
\uart_tx_u1|shift_reg[333]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector179~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(333));

-- Location: LCCOMB_X48_Y25_N22
\uart_tx_u1|Selector171~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector171~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(333))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(333),
	datac => current_cmd(106),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector171~0_combout\);

-- Location: FF_X48_Y25_N23
\uart_tx_u1|shift_reg[341]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector171~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(341));

-- Location: LCCOMB_X48_Y25_N12
\uart_tx_u1|Selector163~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector163~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(341)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(106),
	datac => \uart_tx_u1|shift_reg\(341),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector163~0_combout\);

-- Location: FF_X48_Y25_N13
\uart_tx_u1|shift_reg[349]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector163~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(349));

-- Location: LCCOMB_X48_Y25_N2
\uart_tx_u1|Selector155~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector155~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(349)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(106),
	datad => \uart_tx_u1|shift_reg\(349),
	combout => \uart_tx_u1|Selector155~0_combout\);

-- Location: FF_X48_Y25_N3
\uart_tx_u1|shift_reg[357]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector155~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(357));

-- Location: LCCOMB_X48_Y25_N16
\uart_tx_u1|Selector147~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector147~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(357)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(106),
	datad => \uart_tx_u1|shift_reg\(357),
	combout => \uart_tx_u1|Selector147~0_combout\);

-- Location: FF_X48_Y25_N17
\uart_tx_u1|shift_reg[365]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector147~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(365));

-- Location: LCCOMB_X48_Y23_N18
\uart_tx_u1|Selector139~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector139~0_combout\ = (\uart_tx_u1|shift_reg\(365) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(365),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector139~0_combout\);

-- Location: FF_X48_Y23_N19
\uart_tx_u1|shift_reg[373]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector139~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(373));

-- Location: LCCOMB_X48_Y23_N8
\uart_tx_u1|Selector131~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector131~0_combout\ = (\uart_tx_u1|shift_reg\(373) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(373),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector131~0_combout\);

-- Location: FF_X48_Y23_N9
\uart_tx_u1|shift_reg[381]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector131~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(381));

-- Location: LCCOMB_X51_Y23_N6
\uart_tx_u1|Selector123~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector123~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(381))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(381),
	combout => \uart_tx_u1|Selector123~0_combout\);

-- Location: FF_X51_Y23_N7
\uart_tx_u1|shift_reg[389]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector123~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(389));

-- Location: LCCOMB_X51_Y23_N16
\uart_tx_u1|Selector115~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector115~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(389))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(389),
	combout => \uart_tx_u1|Selector115~0_combout\);

-- Location: FF_X51_Y23_N17
\uart_tx_u1|shift_reg[397]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector115~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(397));

-- Location: LCCOMB_X51_Y23_N2
\uart_tx_u1|Selector107~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector107~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(397))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(397),
	combout => \uart_tx_u1|Selector107~0_combout\);

-- Location: FF_X51_Y23_N3
\uart_tx_u1|shift_reg[405]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector107~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(405));

-- Location: LCCOMB_X51_Y23_N20
\uart_tx_u1|Selector99~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector99~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(405)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(106),
	datad => \uart_tx_u1|shift_reg\(405),
	combout => \uart_tx_u1|Selector99~0_combout\);

-- Location: FF_X51_Y23_N21
\uart_tx_u1|shift_reg[413]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector99~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(413));

-- Location: LCCOMB_X51_Y23_N18
\uart_tx_u1|Selector91~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector91~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(413))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(413),
	combout => \uart_tx_u1|Selector91~0_combout\);

-- Location: FF_X51_Y23_N19
\uart_tx_u1|shift_reg[421]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector91~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(421));

-- Location: LCCOMB_X51_Y23_N24
\uart_tx_u1|Selector83~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector83~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(421))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(421),
	combout => \uart_tx_u1|Selector83~0_combout\);

-- Location: FF_X51_Y23_N25
\uart_tx_u1|shift_reg[429]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector83~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(429));

-- Location: LCCOMB_X51_Y23_N28
\uart_tx_u1|Selector75~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector75~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(429))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(429),
	combout => \uart_tx_u1|Selector75~0_combout\);

-- Location: FF_X51_Y23_N29
\uart_tx_u1|shift_reg[437]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector75~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(437));

-- Location: LCCOMB_X51_Y23_N22
\uart_tx_u1|Selector67~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector67~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(437))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(437),
	combout => \uart_tx_u1|Selector67~0_combout\);

-- Location: FF_X51_Y23_N23
\uart_tx_u1|shift_reg[445]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector67~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(445));

-- Location: LCCOMB_X51_Y23_N0
\uart_tx_u1|Selector59~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector59~0_combout\ = (\uart_tx_u1|shift_reg\(445) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|shift_reg\(445),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector59~0_combout\);

-- Location: FF_X51_Y23_N1
\uart_tx_u1|shift_reg[453]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector59~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(453));

-- Location: LCCOMB_X51_Y23_N26
\uart_tx_u1|Selector51~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector51~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(453))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(453),
	combout => \uart_tx_u1|Selector51~0_combout\);

-- Location: FF_X51_Y23_N27
\uart_tx_u1|shift_reg[461]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector51~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(461));

-- Location: LCCOMB_X51_Y23_N14
\uart_tx_u1|Selector43~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector43~0_combout\ = (\uart_tx_u1|shift_reg\(461) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|shift_reg\(461),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector43~0_combout\);

-- Location: FF_X51_Y23_N15
\uart_tx_u1|shift_reg[469]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector43~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(469));

-- Location: LCCOMB_X51_Y23_N12
\uart_tx_u1|Selector35~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector35~0_combout\ = (\uart_tx_u1|shift_reg\(469) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|shift_reg\(469),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector35~0_combout\);

-- Location: FF_X50_Y24_N21
\uart_tx_u1|shift_reg[477]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uart_tx_u1|Selector35~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(477));

-- Location: LCCOMB_X50_Y24_N18
\uart_tx_u1|Selector27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector27~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(477))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(477),
	combout => \uart_tx_u1|Selector27~0_combout\);

-- Location: FF_X49_Y24_N19
\uart_tx_u1|shift_reg[485]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uart_tx_u1|Selector27~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(485));

-- Location: LCCOMB_X50_Y24_N4
\uart_tx_u1|Selector19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector19~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(485))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(485),
	combout => \uart_tx_u1|Selector19~0_combout\);

-- Location: FF_X50_Y24_N5
\uart_tx_u1|shift_reg[493]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector19~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(493));

-- Location: LCCOMB_X50_Y24_N6
\uart_tx_u1|Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector11~0_combout\ = (\uart_tx_u1|shift_reg\(493) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(493),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector11~0_combout\);

-- Location: FF_X50_Y24_N7
\uart_tx_u1|shift_reg[501]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector11~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(501));

-- Location: LCCOMB_X50_Y24_N20
\uart_tx_u1|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector3~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(501))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(501),
	combout => \uart_tx_u1|Selector3~0_combout\);

-- Location: FF_X49_Y24_N29
\uart_tx_u1|shift_reg[509]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uart_tx_u1|Selector3~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(509));

-- Location: LCCOMB_X49_Y24_N28
\uart_tx_u1|always1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|always1~0_combout\ = (!\uart_tx_u1|shift_reg\(510) & (!\uart_tx_u1|byte_cnt\(6) & (!\uart_tx_u1|shift_reg\(509) & !\uart_tx_u1|byte_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(510),
	datab => \uart_tx_u1|byte_cnt\(6),
	datac => \uart_tx_u1|shift_reg\(509),
	datad => \uart_tx_u1|byte_cnt\(7),
	combout => \uart_tx_u1|always1~0_combout\);

-- Location: LCCOMB_X46_Y26_N24
\Selector221~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector221~0_combout\ = (\cmd_step.0010~q\) # (((current_cmd(58) & !\WideOr36~combout\)) # (!\Selector246~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_step.0010~q\,
	datab => \Selector246~0_combout\,
	datac => current_cmd(58),
	datad => \WideOr36~combout\,
	combout => \Selector221~0_combout\);

-- Location: FF_X46_Y26_N25
\current_cmd[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector221~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(58));

-- Location: LCCOMB_X46_Y25_N2
\Selector244~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector244~0_combout\ = (((\WideOr36~1_combout\ & current_cmd(28))) # (!\WideOr36~2_combout\)) # (!\WideOr36~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr36~1_combout\,
	datab => \WideOr36~0_combout\,
	datac => current_cmd(28),
	datad => \WideOr36~2_combout\,
	combout => \Selector244~0_combout\);

-- Location: FF_X46_Y25_N3
\current_cmd[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector244~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(28));

-- Location: LCCOMB_X46_Y26_N4
\Selector248~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector248~0_combout\ = (((current_cmd(20) & !\WideOr36~combout\)) # (!\Selector246~0_combout\)) # (!\Selector190~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector190~0_combout\,
	datab => \Selector246~0_combout\,
	datac => current_cmd(20),
	datad => \WideOr36~combout\,
	combout => \Selector248~0_combout\);

-- Location: FF_X46_Y26_N5
\current_cmd[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector248~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(20));

-- Location: LCCOMB_X45_Y26_N4
\uart_tx_u1|Selector492~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector492~0_combout\ = (current_cmd(20) & !\uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(20),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector492~0_combout\);

-- Location: FF_X45_Y26_N5
\uart_tx_u1|shift_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector492~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(20));

-- Location: LCCOMB_X45_Y26_N20
\uart_tx_u1|Selector484~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector484~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(20)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(28),
	datac => \uart_tx_u1|shift_reg\(20),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector484~0_combout\);

-- Location: FF_X45_Y26_N21
\uart_tx_u1|shift_reg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector484~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(28));

-- Location: LCCOMB_X46_Y26_N12
\Selector239~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector239~0_combout\ = (\cmd_step.0110~q\) # (((current_cmd(36) & !\WideOr36~combout\)) # (!\Selector246~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_step.0110~q\,
	datab => \Selector246~0_combout\,
	datac => current_cmd(36),
	datad => \WideOr36~combout\,
	combout => \Selector239~0_combout\);

-- Location: FF_X46_Y26_N13
\current_cmd[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector239~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(36));

-- Location: LCCOMB_X45_Y26_N16
\uart_tx_u1|Selector476~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector476~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(28))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(28),
	datac => current_cmd(36),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector476~0_combout\);

-- Location: FF_X45_Y26_N17
\uart_tx_u1|shift_reg[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector476~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(36));

-- Location: LCCOMB_X46_Y26_N28
\Selector240~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector240~0_combout\ = (!\cmd_step.1000~q\ & (!\cmd_step.1010~q\ & (!\cmd_step.0110~q\ & !\cmd_step.1100~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_step.1000~q\,
	datab => \cmd_step.1010~q\,
	datac => \cmd_step.0110~q\,
	datad => \cmd_step.1100~q\,
	combout => \Selector240~0_combout\);

-- Location: LCCOMB_X45_Y26_N26
\Selector240~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector240~1_combout\ = ((\WideOr36~1_combout\ & (\WideOr36~0_combout\ & current_cmd(35)))) # (!\Selector240~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr36~1_combout\,
	datab => \WideOr36~0_combout\,
	datac => current_cmd(35),
	datad => \Selector240~0_combout\,
	combout => \Selector240~1_combout\);

-- Location: FF_X45_Y26_N27
\current_cmd[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector240~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(35));

-- Location: LCCOMB_X45_Y26_N6
\uart_tx_u1|Selector468~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector468~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(36))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(35))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(36),
	datac => current_cmd(35),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector468~0_combout\);

-- Location: FF_X45_Y26_N7
\uart_tx_u1|shift_reg[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector468~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(44));

-- Location: LCCOMB_X45_Y26_N24
\Selector226~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector226~0_combout\ = (\cmd_step.1100~q\) # (((current_cmd(52) & \WideOr36~1_combout\)) # (!\WideOr36~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_step.1100~q\,
	datab => \WideOr36~0_combout\,
	datac => current_cmd(52),
	datad => \WideOr36~1_combout\,
	combout => \Selector226~0_combout\);

-- Location: FF_X45_Y26_N25
\current_cmd[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector226~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(52));

-- Location: LCCOMB_X45_Y26_N0
\uart_tx_u1|Selector460~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector460~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(44))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(52))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(44),
	datab => current_cmd(52),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector460~0_combout\);

-- Location: FF_X45_Y26_N1
\uart_tx_u1|shift_reg[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector460~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(52));

-- Location: LCCOMB_X45_Y26_N22
\Selector219~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector219~0_combout\ = (\cmd_step.0100~q\) # (((!\WideOr36~combout\ & current_cmd(60))) # (!\Selector240~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_step.0100~q\,
	datab => \WideOr36~combout\,
	datac => current_cmd(60),
	datad => \Selector240~0_combout\,
	combout => \Selector219~0_combout\);

-- Location: FF_X45_Y26_N23
\current_cmd[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector219~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(60));

-- Location: LCCOMB_X45_Y26_N10
\uart_tx_u1|Selector452~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector452~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(52))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(60))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(52),
	datac => current_cmd(60),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector452~0_combout\);

-- Location: FF_X45_Y26_N11
\uart_tx_u1|shift_reg[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector452~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(60));

-- Location: LCCOMB_X48_Y27_N12
\uart_tx_u1|Selector444~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector444~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(60)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(58)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(58),
	datac => \uart_tx_u1|shift_reg\(60),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector444~0_combout\);

-- Location: FF_X48_Y27_N13
\uart_tx_u1|shift_reg[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector444~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(68));

-- Location: LCCOMB_X48_Y27_N10
\uart_tx_u1|Selector436~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector436~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(68))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(108))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(68),
	datab => current_cmd(108),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector436~0_combout\);

-- Location: FF_X48_Y27_N11
\uart_tx_u1|shift_reg[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector436~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(76));

-- Location: LCCOMB_X45_Y25_N28
\Selector207~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector207~0_combout\ = (\cmd_step.0100~q\) # (((\WideOr36~1_combout\ & current_cmd(74))) # (!\WideOr36~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr36~1_combout\,
	datab => \cmd_step.0100~q\,
	datac => current_cmd(74),
	datad => \WideOr36~0_combout\,
	combout => \Selector207~0_combout\);

-- Location: FF_X45_Y25_N29
\current_cmd[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector207~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(74));

-- Location: LCCOMB_X48_Y27_N0
\uart_tx_u1|Selector428~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector428~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(76))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(74))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(76),
	datac => current_cmd(74),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector428~0_combout\);

-- Location: FF_X48_Y27_N1
\uart_tx_u1|shift_reg[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector428~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(84));

-- Location: LCCOMB_X48_Y27_N18
\uart_tx_u1|Selector420~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector420~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(84)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(85)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(85),
	datac => \uart_tx_u1|shift_reg\(84),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector420~0_combout\);

-- Location: FF_X48_Y27_N19
\uart_tx_u1|shift_reg[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector420~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(92));

-- Location: LCCOMB_X46_Y25_N24
\Selector185~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector185~0_combout\ = ((\cmd_step.1000~q\) # ((current_cmd(100) & !\WideOr36~combout\))) # (!\Selector246~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector246~0_combout\,
	datab => \cmd_step.1000~q\,
	datac => current_cmd(100),
	datad => \WideOr36~combout\,
	combout => \Selector185~0_combout\);

-- Location: FF_X46_Y25_N25
\current_cmd[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector185~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(100));

-- Location: LCCOMB_X48_Y27_N20
\uart_tx_u1|Selector412~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector412~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(92))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(100))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(92),
	datac => current_cmd(100),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector412~0_combout\);

-- Location: FF_X48_Y27_N21
\uart_tx_u1|shift_reg[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector412~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(100));

-- Location: LCCOMB_X48_Y27_N2
\uart_tx_u1|Selector404~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector404~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(100)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(108)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(108),
	datac => \uart_tx_u1|shift_reg\(100),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector404~0_combout\);

-- Location: FF_X48_Y27_N3
\uart_tx_u1|shift_reg[108]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector404~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(108));

-- Location: LCCOMB_X48_Y27_N8
\uart_tx_u1|Selector396~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector396~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(108))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(108),
	datac => current_cmd(101),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector396~0_combout\);

-- Location: FF_X48_Y27_N9
\uart_tx_u1|shift_reg[116]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector396~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(116));

-- Location: LCCOMB_X48_Y27_N14
\uart_tx_u1|Selector388~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector388~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(116))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(116),
	datac => current_cmd(101),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector388~0_combout\);

-- Location: FF_X48_Y27_N15
\uart_tx_u1|shift_reg[124]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector388~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(124));

-- Location: LCCOMB_X48_Y27_N28
\uart_tx_u1|Selector380~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector380~0_combout\ = (\uart_tx_u1|shift_reg\(124) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|shift_reg\(124),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector380~0_combout\);

-- Location: FF_X48_Y27_N29
\uart_tx_u1|shift_reg[132]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector380~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(132));

-- Location: LCCOMB_X48_Y27_N22
\uart_tx_u1|Selector372~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector372~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(132))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(115))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(132),
	datac => current_cmd(115),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector372~0_combout\);

-- Location: FF_X48_Y27_N23
\uart_tx_u1|shift_reg[140]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector372~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(140));

-- Location: LCCOMB_X48_Y27_N16
\uart_tx_u1|Selector364~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector364~0_combout\ = (\uart_tx_u1|shift_reg\(140) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|shift_reg\(140),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector364~0_combout\);

-- Location: FF_X48_Y27_N17
\uart_tx_u1|shift_reg[148]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector364~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(148));

-- Location: LCCOMB_X48_Y27_N30
\uart_tx_u1|Selector356~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector356~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(148)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(106),
	datab => \uart_tx_u1|shift_reg\(148),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector356~0_combout\);

-- Location: FF_X48_Y27_N31
\uart_tx_u1|shift_reg[156]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector356~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(156));

-- Location: LCCOMB_X48_Y27_N4
\uart_tx_u1|Selector348~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector348~0_combout\ = (\uart_tx_u1|shift_reg\(156) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|shift_reg\(156),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector348~0_combout\);

-- Location: FF_X48_Y27_N5
\uart_tx_u1|shift_reg[164]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector348~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(164));

-- Location: LCCOMB_X48_Y27_N26
\uart_tx_u1|Selector340~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector340~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(164))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(164),
	datac => current_cmd(101),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector340~0_combout\);

-- Location: FF_X48_Y27_N27
\uart_tx_u1|shift_reg[172]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector340~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(172));

-- Location: LCCOMB_X48_Y27_N24
\uart_tx_u1|Selector332~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector332~0_combout\ = (\uart_tx_u1|shift_reg\(172) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|shift_reg\(172),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector332~0_combout\);

-- Location: FF_X48_Y27_N25
\uart_tx_u1|shift_reg[180]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector332~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(180));

-- Location: LCCOMB_X49_Y27_N18
\uart_tx_u1|Selector324~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector324~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(180))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(180),
	datac => current_cmd(101),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector324~0_combout\);

-- Location: FF_X49_Y27_N19
\uart_tx_u1|shift_reg[188]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector324~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(188));

-- Location: LCCOMB_X49_Y27_N12
\uart_tx_u1|Selector316~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector316~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(188))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(188),
	datac => current_cmd(106),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector316~0_combout\);

-- Location: FF_X49_Y27_N13
\uart_tx_u1|shift_reg[196]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector316~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(196));

-- Location: LCCOMB_X49_Y27_N26
\uart_tx_u1|Selector308~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector308~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(196))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(196),
	datac => current_cmd(106),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector308~0_combout\);

-- Location: FF_X49_Y27_N27
\uart_tx_u1|shift_reg[204]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector308~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(204));

-- Location: LCCOMB_X49_Y27_N20
\uart_tx_u1|Selector300~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector300~0_combout\ = (\uart_tx_u1|shift_reg\(204) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|shift_reg\(204),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector300~0_combout\);

-- Location: FF_X49_Y27_N21
\uart_tx_u1|shift_reg[212]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector300~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(212));

-- Location: LCCOMB_X49_Y27_N10
\uart_tx_u1|Selector292~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector292~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(212))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(212),
	datac => current_cmd(101),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector292~0_combout\);

-- Location: FF_X49_Y27_N11
\uart_tx_u1|shift_reg[220]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector292~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(220));

-- Location: LCCOMB_X49_Y27_N28
\uart_tx_u1|Selector284~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector284~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(220))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(220),
	datac => current_cmd(106),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector284~0_combout\);

-- Location: FF_X49_Y27_N29
\uart_tx_u1|shift_reg[228]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector284~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(228));

-- Location: LCCOMB_X49_Y27_N6
\uart_tx_u1|Selector276~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector276~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(228))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(228),
	datac => current_cmd(101),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector276~0_combout\);

-- Location: FF_X49_Y27_N7
\uart_tx_u1|shift_reg[236]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector276~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(236));

-- Location: LCCOMB_X49_Y27_N4
\uart_tx_u1|Selector268~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector268~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(236))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(107))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(236),
	datac => current_cmd(107),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector268~0_combout\);

-- Location: FF_X49_Y27_N5
\uart_tx_u1|shift_reg[244]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector268~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(244));

-- Location: LCCOMB_X49_Y27_N30
\uart_tx_u1|Selector260~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector260~0_combout\ = (\uart_tx_u1|shift_reg\(244) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|shift_reg\(244),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector260~0_combout\);

-- Location: FF_X49_Y27_N31
\uart_tx_u1|shift_reg[252]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector260~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(252));

-- Location: LCCOMB_X49_Y27_N24
\uart_tx_u1|Selector252~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector252~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(252))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(107))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(252),
	datac => current_cmd(107),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector252~0_combout\);

-- Location: FF_X49_Y27_N25
\uart_tx_u1|shift_reg[260]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector252~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(260));

-- Location: LCCOMB_X49_Y27_N22
\uart_tx_u1|Selector244~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector244~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(260))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(260),
	datac => current_cmd(101),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector244~0_combout\);

-- Location: FF_X49_Y27_N23
\uart_tx_u1|shift_reg[268]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector244~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(268));

-- Location: LCCOMB_X49_Y27_N16
\uart_tx_u1|Selector236~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector236~0_combout\ = (\uart_tx_u1|shift_reg\(268) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|shift_reg\(268),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector236~0_combout\);

-- Location: FF_X49_Y27_N17
\uart_tx_u1|shift_reg[276]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector236~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(276));

-- Location: LCCOMB_X49_Y27_N14
\uart_tx_u1|Selector228~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector228~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(276))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(276),
	datac => current_cmd(106),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector228~0_combout\);

-- Location: FF_X49_Y27_N15
\uart_tx_u1|shift_reg[284]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector228~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(284));

-- Location: LCCOMB_X49_Y27_N8
\uart_tx_u1|Selector220~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector220~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(284))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(107))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(284),
	datac => current_cmd(107),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector220~0_combout\);

-- Location: FF_X49_Y27_N9
\uart_tx_u1|shift_reg[292]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector220~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(292));

-- Location: LCCOMB_X49_Y27_N2
\uart_tx_u1|Selector212~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector212~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(292))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(292),
	datac => current_cmd(106),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector212~0_combout\);

-- Location: FF_X49_Y27_N3
\uart_tx_u1|shift_reg[300]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector212~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(300));

-- Location: LCCOMB_X49_Y27_N0
\uart_tx_u1|Selector204~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector204~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(300))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(300),
	datac => current_cmd(106),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector204~0_combout\);

-- Location: FF_X49_Y27_N1
\uart_tx_u1|shift_reg[308]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector204~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(308));

-- Location: LCCOMB_X50_Y28_N18
\uart_tx_u1|Selector196~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector196~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(308))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(308),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => current_cmd(106),
	combout => \uart_tx_u1|Selector196~0_combout\);

-- Location: FF_X50_Y28_N19
\uart_tx_u1|shift_reg[316]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector196~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(316));

-- Location: LCCOMB_X50_Y28_N16
\uart_tx_u1|Selector188~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector188~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(316))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(316),
	combout => \uart_tx_u1|Selector188~0_combout\);

-- Location: FF_X50_Y28_N17
\uart_tx_u1|shift_reg[324]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector188~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(324));

-- Location: LCCOMB_X50_Y28_N22
\uart_tx_u1|Selector180~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector180~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(324)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(106),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(324),
	combout => \uart_tx_u1|Selector180~0_combout\);

-- Location: FF_X50_Y28_N23
\uart_tx_u1|shift_reg[332]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector180~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(332));

-- Location: LCCOMB_X50_Y28_N4
\uart_tx_u1|Selector172~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector172~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(332))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(332),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => current_cmd(106),
	combout => \uart_tx_u1|Selector172~0_combout\);

-- Location: FF_X50_Y28_N5
\uart_tx_u1|shift_reg[340]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector172~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(340));

-- Location: LCCOMB_X50_Y28_N10
\uart_tx_u1|Selector164~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector164~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(340))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datac => \uart_tx_u1|shift_reg\(340),
	datad => current_cmd(106),
	combout => \uart_tx_u1|Selector164~0_combout\);

-- Location: FF_X50_Y28_N11
\uart_tx_u1|shift_reg[348]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector164~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(348));

-- Location: LCCOMB_X50_Y28_N0
\uart_tx_u1|Selector156~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector156~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(348))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(348),
	combout => \uart_tx_u1|Selector156~0_combout\);

-- Location: FF_X50_Y28_N1
\uart_tx_u1|shift_reg[356]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector156~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(356));

-- Location: LCCOMB_X50_Y28_N30
\uart_tx_u1|Selector148~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector148~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(356)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(106),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(356),
	combout => \uart_tx_u1|Selector148~0_combout\);

-- Location: FF_X50_Y28_N31
\uart_tx_u1|shift_reg[364]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector148~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(364));

-- Location: LCCOMB_X50_Y28_N20
\uart_tx_u1|Selector140~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector140~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(364))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(364),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => current_cmd(106),
	combout => \uart_tx_u1|Selector140~0_combout\);

-- Location: FF_X50_Y28_N21
\uart_tx_u1|shift_reg[372]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector140~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(372));

-- Location: LCCOMB_X50_Y28_N14
\uart_tx_u1|Selector132~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector132~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(372))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(372),
	combout => \uart_tx_u1|Selector132~0_combout\);

-- Location: FF_X50_Y28_N15
\uart_tx_u1|shift_reg[380]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector132~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(380));

-- Location: LCCOMB_X50_Y28_N24
\uart_tx_u1|Selector124~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector124~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(380))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datac => \uart_tx_u1|shift_reg\(380),
	datad => current_cmd(106),
	combout => \uart_tx_u1|Selector124~0_combout\);

-- Location: FF_X50_Y28_N25
\uart_tx_u1|shift_reg[388]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector124~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(388));

-- Location: LCCOMB_X50_Y28_N6
\uart_tx_u1|Selector116~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector116~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(388))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(388),
	combout => \uart_tx_u1|Selector116~0_combout\);

-- Location: FF_X50_Y28_N7
\uart_tx_u1|shift_reg[396]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector116~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(396));

-- Location: LCCOMB_X50_Y28_N28
\uart_tx_u1|Selector108~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector108~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(396))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(396),
	combout => \uart_tx_u1|Selector108~0_combout\);

-- Location: FF_X50_Y28_N29
\uart_tx_u1|shift_reg[404]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector108~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(404));

-- Location: LCCOMB_X50_Y28_N2
\uart_tx_u1|Selector100~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector100~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(404))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(404),
	combout => \uart_tx_u1|Selector100~0_combout\);

-- Location: FF_X50_Y28_N3
\uart_tx_u1|shift_reg[412]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector100~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(412));

-- Location: LCCOMB_X50_Y28_N12
\uart_tx_u1|Selector92~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector92~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(412)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(106),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(412),
	combout => \uart_tx_u1|Selector92~0_combout\);

-- Location: FF_X50_Y28_N13
\uart_tx_u1|shift_reg[420]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector92~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(420));

-- Location: LCCOMB_X50_Y28_N26
\uart_tx_u1|Selector84~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector84~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(420))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(420),
	combout => \uart_tx_u1|Selector84~0_combout\);

-- Location: FF_X50_Y28_N27
\uart_tx_u1|shift_reg[428]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector84~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(428));

-- Location: LCCOMB_X50_Y28_N8
\uart_tx_u1|Selector76~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector76~0_combout\ = (\uart_tx_u1|shift_reg\(428) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(428),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector76~0_combout\);

-- Location: FF_X50_Y28_N9
\uart_tx_u1|shift_reg[436]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector76~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(436));

-- Location: LCCOMB_X50_Y25_N16
\uart_tx_u1|Selector68~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector68~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(436))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(436),
	combout => \uart_tx_u1|Selector68~0_combout\);

-- Location: FF_X50_Y25_N17
\uart_tx_u1|shift_reg[444]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector68~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(444));

-- Location: LCCOMB_X50_Y25_N26
\uart_tx_u1|Selector60~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector60~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(444))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(444),
	combout => \uart_tx_u1|Selector60~0_combout\);

-- Location: FF_X50_Y25_N27
\uart_tx_u1|shift_reg[452]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector60~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(452));

-- Location: LCCOMB_X50_Y25_N24
\uart_tx_u1|Selector52~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector52~0_combout\ = (\uart_tx_u1|shift_reg\(452) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(452),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector52~0_combout\);

-- Location: FF_X50_Y25_N25
\uart_tx_u1|shift_reg[460]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector52~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(460));

-- Location: LCCOMB_X50_Y25_N22
\uart_tx_u1|Selector44~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector44~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(460))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(460),
	combout => \uart_tx_u1|Selector44~0_combout\);

-- Location: FF_X50_Y25_N23
\uart_tx_u1|shift_reg[468]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector44~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(468));

-- Location: LCCOMB_X50_Y25_N8
\uart_tx_u1|Selector36~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector36~0_combout\ = (\uart_tx_u1|shift_reg\(468) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(468),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector36~0_combout\);

-- Location: FF_X50_Y25_N9
\uart_tx_u1|shift_reg[476]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector36~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(476));

-- Location: LCCOMB_X50_Y25_N14
\uart_tx_u1|Selector28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector28~0_combout\ = (\uart_tx_u1|shift_reg\(476) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(476),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector28~0_combout\);

-- Location: FF_X50_Y25_N15
\uart_tx_u1|shift_reg[484]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector28~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(484));

-- Location: LCCOMB_X50_Y25_N30
\uart_tx_u1|Selector20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector20~0_combout\ = (\uart_tx_u1|shift_reg\(484) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(484),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector20~0_combout\);

-- Location: FF_X50_Y25_N31
\uart_tx_u1|shift_reg[492]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector20~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(492));

-- Location: LCCOMB_X50_Y25_N20
\uart_tx_u1|Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector12~0_combout\ = (\uart_tx_u1|shift_reg\(492) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(492),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector12~0_combout\);

-- Location: FF_X50_Y25_N21
\uart_tx_u1|shift_reg[500]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector12~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(500));

-- Location: LCCOMB_X50_Y24_N30
\uart_tx_u1|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector4~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(500))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(500),
	combout => \uart_tx_u1|Selector4~0_combout\);

-- Location: FF_X49_Y24_N27
\uart_tx_u1|shift_reg[508]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uart_tx_u1|Selector4~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(508));

-- Location: LCCOMB_X45_Y25_N4
\Selector213~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector213~0_combout\ = (\cmd_step.1010~q\) # ((\cmd_step.0110~q\) # (\cmd_step.1100~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmd_step.1010~q\,
	datac => \cmd_step.0110~q\,
	datad => \cmd_step.1100~q\,
	combout => \Selector213~0_combout\);

-- Location: LCCOMB_X45_Y27_N10
\Selector213~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector213~1_combout\ = (\Selector213~0_combout\) # ((\WideOr36~1_combout\ & (\WideOr36~0_combout\ & current_cmd(67))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr36~1_combout\,
	datab => \WideOr36~0_combout\,
	datac => current_cmd(67),
	datad => \Selector213~0_combout\,
	combout => \Selector213~1_combout\);

-- Location: FF_X45_Y27_N11
\current_cmd[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector213~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(67));

-- Location: LCCOMB_X45_Y25_N6
\Selector223~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector223~0_combout\ = ((\cmd_step.0010~q\) # ((current_cmd(56) & !\WideOr36~combout\))) # (!\cmd_step.0000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_step.0000~q\,
	datab => \cmd_step.0010~q\,
	datac => current_cmd(56),
	datad => \WideOr36~combout\,
	combout => \Selector223~0_combout\);

-- Location: FF_X45_Y25_N7
\current_cmd[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector223~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(56));

-- Location: LCCOMB_X46_Y24_N16
\uart_tx_u1|Selector501~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector501~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(1)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(10),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(1),
	combout => \uart_tx_u1|Selector501~0_combout\);

-- Location: FF_X46_Y24_N17
\uart_tx_u1|shift_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector501~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(11));

-- Location: LCCOMB_X46_Y24_N0
\uart_tx_u1|Selector493~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector493~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(11),
	combout => \uart_tx_u1|Selector493~0_combout\);

-- Location: FF_X46_Y24_N1
\uart_tx_u1|shift_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector493~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(19));

-- Location: LCCOMB_X45_Y26_N18
\uart_tx_u1|Selector485~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector485~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(19)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(20),
	datab => \uart_tx_u1|shift_reg\(19),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector485~0_combout\);

-- Location: FF_X45_Y26_N19
\uart_tx_u1|shift_reg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector485~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(27));

-- Location: LCCOMB_X45_Y26_N12
\uart_tx_u1|Selector477~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector477~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(27))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(35))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(27),
	datac => current_cmd(35),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector477~0_combout\);

-- Location: FF_X45_Y26_N13
\uart_tx_u1|shift_reg[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector477~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(35));

-- Location: LCCOMB_X45_Y26_N2
\uart_tx_u1|Selector469~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector469~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(35))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(107))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(35),
	datac => current_cmd(107),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector469~0_combout\);

-- Location: FF_X45_Y26_N3
\uart_tx_u1|shift_reg[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector469~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(43));

-- Location: LCCOMB_X46_Y26_N14
\Selector228~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector228~0_combout\ = (!\cmd_step.0110~q\ & !\cmd_step.0010~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmd_step.0110~q\,
	datad => \cmd_step.0010~q\,
	combout => \Selector228~0_combout\);

-- Location: LCCOMB_X46_Y26_N30
\Selector227~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector227~0_combout\ = (\cmd_step.1000~q\) # (((current_cmd(51) & !\WideOr36~combout\)) # (!\Selector228~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_step.1000~q\,
	datab => \Selector228~0_combout\,
	datac => current_cmd(51),
	datad => \WideOr36~combout\,
	combout => \Selector227~0_combout\);

-- Location: FF_X46_Y26_N31
\current_cmd[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector227~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(51));

-- Location: LCCOMB_X45_Y26_N28
\uart_tx_u1|Selector461~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector461~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(43))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(51))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(43),
	datac => current_cmd(51),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector461~0_combout\);

-- Location: FF_X45_Y26_N29
\uart_tx_u1|shift_reg[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector461~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(51));

-- Location: LCCOMB_X46_Y25_N6
\uart_tx_u1|Selector453~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector453~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(51)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(56)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(56),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(51),
	combout => \uart_tx_u1|Selector453~0_combout\);

-- Location: FF_X46_Y25_N7
\uart_tx_u1|shift_reg[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector453~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(59));

-- Location: LCCOMB_X45_Y27_N0
\uart_tx_u1|Selector445~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector445~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(59)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(67)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(67),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(59),
	combout => \uart_tx_u1|Selector445~0_combout\);

-- Location: FF_X45_Y27_N1
\uart_tx_u1|shift_reg[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector445~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(67));

-- Location: LCCOMB_X45_Y27_N26
\uart_tx_u1|Selector437~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector437~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(67))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(67),
	combout => \uart_tx_u1|Selector437~0_combout\);

-- Location: FF_X45_Y27_N27
\uart_tx_u1|shift_reg[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector437~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(75));

-- Location: LCCOMB_X45_Y25_N14
\Selector200~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector200~0_combout\ = ((current_cmd(83) & \WideOr36~0_combout\)) # (!\WideOr36~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr36~1_combout\,
	datac => current_cmd(83),
	datad => \WideOr36~0_combout\,
	combout => \Selector200~0_combout\);

-- Location: FF_X45_Y25_N15
\current_cmd[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector200~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(83));

-- Location: LCCOMB_X45_Y27_N8
\uart_tx_u1|Selector429~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector429~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(75))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(83))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(75),
	datab => current_cmd(83),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector429~0_combout\);

-- Location: FF_X45_Y27_N9
\uart_tx_u1|shift_reg[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector429~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(83));

-- Location: LCCOMB_X46_Y27_N2
\Selector193~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector193~0_combout\ = ((\WideOr36~0_combout\ & (\WideOr36~1_combout\ & current_cmd(91)))) # (!\cmd_step.0000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr36~0_combout\,
	datab => \WideOr36~1_combout\,
	datac => current_cmd(91),
	datad => \cmd_step.0000~q\,
	combout => \Selector193~0_combout\);

-- Location: FF_X46_Y27_N3
\current_cmd[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector193~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(91));

-- Location: LCCOMB_X45_Y27_N14
\uart_tx_u1|Selector421~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector421~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(83))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(91))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(83),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => current_cmd(91),
	combout => \uart_tx_u1|Selector421~0_combout\);

-- Location: FF_X45_Y27_N15
\uart_tx_u1|shift_reg[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector421~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(91));

-- Location: LCCOMB_X45_Y27_N12
\uart_tx_u1|Selector413~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector413~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(91))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datab => \uart_tx_u1|shift_reg\(91),
	datac => current_cmd(106),
	combout => \uart_tx_u1|Selector413~0_combout\);

-- Location: FF_X45_Y27_N13
\uart_tx_u1|shift_reg[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector413~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(99));

-- Location: LCCOMB_X45_Y27_N6
\uart_tx_u1|Selector405~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector405~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(99)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(107)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(107),
	datad => \uart_tx_u1|shift_reg\(99),
	combout => \uart_tx_u1|Selector405~0_combout\);

-- Location: FF_X45_Y27_N7
\uart_tx_u1|shift_reg[107]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector405~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(107));

-- Location: LCCOMB_X45_Y27_N16
\uart_tx_u1|Selector397~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector397~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(107)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(115)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(115),
	datad => \uart_tx_u1|shift_reg\(107),
	combout => \uart_tx_u1|Selector397~0_combout\);

-- Location: FF_X45_Y27_N17
\uart_tx_u1|shift_reg[115]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector397~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(115));

-- Location: LCCOMB_X45_Y27_N18
\uart_tx_u1|Selector389~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector389~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(115))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(115),
	combout => \uart_tx_u1|Selector389~0_combout\);

-- Location: FF_X45_Y27_N19
\uart_tx_u1|shift_reg[123]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector389~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(123));

-- Location: LCCOMB_X45_Y27_N4
\uart_tx_u1|Selector381~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector381~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(123)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(115)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(115),
	datad => \uart_tx_u1|shift_reg\(123),
	combout => \uart_tx_u1|Selector381~0_combout\);

-- Location: FF_X45_Y27_N5
\uart_tx_u1|shift_reg[131]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector381~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(131));

-- Location: LCCOMB_X45_Y27_N30
\uart_tx_u1|Selector373~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector373~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(131)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(101),
	datab => \uart_tx_u1|shift_reg\(131),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector373~0_combout\);

-- Location: FF_X45_Y27_N31
\uart_tx_u1|shift_reg[139]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector373~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(139));

-- Location: LCCOMB_X45_Y27_N24
\uart_tx_u1|Selector365~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector365~0_combout\ = (\uart_tx_u1|shift_reg\(139) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(139),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector365~0_combout\);

-- Location: FF_X45_Y27_N25
\uart_tx_u1|shift_reg[147]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector365~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(147));

-- Location: LCCOMB_X45_Y27_N22
\uart_tx_u1|Selector357~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector357~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(147))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(147),
	combout => \uart_tx_u1|Selector357~0_combout\);

-- Location: FF_X45_Y27_N23
\uart_tx_u1|shift_reg[155]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector357~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(155));

-- Location: LCCOMB_X45_Y27_N28
\uart_tx_u1|Selector349~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector349~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(155)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datab => current_cmd(106),
	datac => \uart_tx_u1|shift_reg\(155),
	combout => \uart_tx_u1|Selector349~0_combout\);

-- Location: FF_X45_Y27_N29
\uart_tx_u1|shift_reg[163]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector349~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(163));

-- Location: LCCOMB_X45_Y27_N2
\uart_tx_u1|Selector341~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector341~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(163))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(163),
	combout => \uart_tx_u1|Selector341~0_combout\);

-- Location: FF_X45_Y27_N3
\uart_tx_u1|shift_reg[171]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector341~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(171));

-- Location: LCCOMB_X45_Y27_N20
\uart_tx_u1|Selector333~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector333~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(171)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(106),
	datad => \uart_tx_u1|shift_reg\(171),
	combout => \uart_tx_u1|Selector333~0_combout\);

-- Location: FF_X45_Y27_N21
\uart_tx_u1|shift_reg[179]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector333~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(179));

-- Location: LCCOMB_X49_Y26_N14
\uart_tx_u1|Selector325~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector325~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(179))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(179),
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(101),
	combout => \uart_tx_u1|Selector325~0_combout\);

-- Location: FF_X49_Y26_N15
\uart_tx_u1|shift_reg[187]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector325~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(187));

-- Location: LCCOMB_X50_Y26_N14
\uart_tx_u1|Selector317~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector317~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(187)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(107)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(107),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(187),
	combout => \uart_tx_u1|Selector317~0_combout\);

-- Location: FF_X50_Y26_N15
\uart_tx_u1|shift_reg[195]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector317~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(195));

-- Location: LCCOMB_X51_Y26_N6
\uart_tx_u1|Selector309~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector309~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(195))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(195),
	combout => \uart_tx_u1|Selector309~0_combout\);

-- Location: FF_X51_Y26_N7
\uart_tx_u1|shift_reg[203]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector309~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(203));

-- Location: LCCOMB_X51_Y26_N24
\uart_tx_u1|Selector301~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector301~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(203)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(101),
	datad => \uart_tx_u1|shift_reg\(203),
	combout => \uart_tx_u1|Selector301~0_combout\);

-- Location: FF_X51_Y26_N25
\uart_tx_u1|shift_reg[211]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector301~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(211));

-- Location: LCCOMB_X51_Y26_N2
\uart_tx_u1|Selector293~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector293~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(211))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(211),
	combout => \uart_tx_u1|Selector293~0_combout\);

-- Location: FF_X51_Y26_N3
\uart_tx_u1|shift_reg[219]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector293~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(219));

-- Location: LCCOMB_X51_Y26_N8
\uart_tx_u1|Selector285~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector285~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(219)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(106),
	datad => \uart_tx_u1|shift_reg\(219),
	combout => \uart_tx_u1|Selector285~0_combout\);

-- Location: FF_X51_Y26_N9
\uart_tx_u1|shift_reg[227]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector285~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(227));

-- Location: LCCOMB_X51_Y26_N10
\uart_tx_u1|Selector277~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector277~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(227))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(107))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datab => \uart_tx_u1|shift_reg\(227),
	datac => current_cmd(107),
	combout => \uart_tx_u1|Selector277~0_combout\);

-- Location: FF_X51_Y26_N11
\uart_tx_u1|shift_reg[235]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector277~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(235));

-- Location: LCCOMB_X51_Y26_N12
\uart_tx_u1|Selector269~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector269~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(235))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(235),
	combout => \uart_tx_u1|Selector269~0_combout\);

-- Location: FF_X51_Y26_N13
\uart_tx_u1|shift_reg[243]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector269~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(243));

-- Location: LCCOMB_X51_Y26_N22
\uart_tx_u1|Selector261~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector261~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(243)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(106),
	datad => \uart_tx_u1|shift_reg\(243),
	combout => \uart_tx_u1|Selector261~0_combout\);

-- Location: FF_X51_Y26_N23
\uart_tx_u1|shift_reg[251]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector261~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(251));

-- Location: LCCOMB_X51_Y26_N20
\uart_tx_u1|Selector253~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector253~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(251))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => \uart_tx_u1|shift_reg\(251),
	combout => \uart_tx_u1|Selector253~0_combout\);

-- Location: FF_X51_Y26_N21
\uart_tx_u1|shift_reg[259]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector253~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(259));

-- Location: LCCOMB_X51_Y26_N18
\uart_tx_u1|Selector245~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector245~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(259))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(259),
	combout => \uart_tx_u1|Selector245~0_combout\);

-- Location: FF_X51_Y26_N19
\uart_tx_u1|shift_reg[267]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector245~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(267));

-- Location: LCCOMB_X51_Y26_N4
\uart_tx_u1|Selector237~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector237~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(267)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(106),
	datad => \uart_tx_u1|shift_reg\(267),
	combout => \uart_tx_u1|Selector237~0_combout\);

-- Location: FF_X51_Y26_N5
\uart_tx_u1|shift_reg[275]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector237~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(275));

-- Location: LCCOMB_X50_Y26_N16
\uart_tx_u1|Selector229~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector229~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(275)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(107)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(107),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(275),
	combout => \uart_tx_u1|Selector229~0_combout\);

-- Location: FF_X50_Y26_N17
\uart_tx_u1|shift_reg[283]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector229~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(283));

-- Location: LCCOMB_X50_Y26_N18
\uart_tx_u1|Selector221~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector221~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(283)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(106),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(283),
	combout => \uart_tx_u1|Selector221~0_combout\);

-- Location: FF_X50_Y26_N19
\uart_tx_u1|shift_reg[291]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector221~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(291));

-- Location: LCCOMB_X49_Y22_N10
\uart_tx_u1|Selector213~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector213~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(291)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(106),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(291),
	combout => \uart_tx_u1|Selector213~0_combout\);

-- Location: FF_X49_Y22_N11
\uart_tx_u1|shift_reg[299]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector213~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(299));

-- Location: LCCOMB_X49_Y22_N28
\uart_tx_u1|Selector205~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector205~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(299))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(299),
	combout => \uart_tx_u1|Selector205~0_combout\);

-- Location: FF_X49_Y22_N29
\uart_tx_u1|shift_reg[307]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector205~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(307));

-- Location: LCCOMB_X49_Y22_N0
\uart_tx_u1|Selector197~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector197~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(307))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(307),
	combout => \uart_tx_u1|Selector197~0_combout\);

-- Location: FF_X49_Y22_N1
\uart_tx_u1|shift_reg[315]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector197~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(315));

-- Location: LCCOMB_X49_Y22_N12
\uart_tx_u1|Selector189~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector189~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(315)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(106),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(315),
	combout => \uart_tx_u1|Selector189~0_combout\);

-- Location: FF_X49_Y22_N13
\uart_tx_u1|shift_reg[323]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector189~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(323));

-- Location: LCCOMB_X49_Y22_N20
\uart_tx_u1|Selector181~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector181~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(323))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(323),
	combout => \uart_tx_u1|Selector181~0_combout\);

-- Location: FF_X49_Y22_N21
\uart_tx_u1|shift_reg[331]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector181~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(331));

-- Location: LCCOMB_X49_Y22_N4
\uart_tx_u1|Selector173~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector173~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(331)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(106),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(331),
	combout => \uart_tx_u1|Selector173~0_combout\);

-- Location: FF_X49_Y22_N5
\uart_tx_u1|shift_reg[339]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector173~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(339));

-- Location: LCCOMB_X49_Y22_N8
\uart_tx_u1|Selector165~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector165~0_combout\ = (\uart_tx_u1|shift_reg\(339) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(339),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector165~0_combout\);

-- Location: FF_X49_Y22_N9
\uart_tx_u1|shift_reg[347]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector165~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(347));

-- Location: LCCOMB_X49_Y22_N24
\uart_tx_u1|Selector157~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector157~0_combout\ = (\uart_tx_u1|shift_reg\(347) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(347),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector157~0_combout\);

-- Location: FF_X49_Y22_N25
\uart_tx_u1|shift_reg[355]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector157~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(355));

-- Location: LCCOMB_X50_Y22_N18
\uart_tx_u1|Selector149~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector149~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(355)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(106),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(355),
	combout => \uart_tx_u1|Selector149~0_combout\);

-- Location: FF_X50_Y22_N19
\uart_tx_u1|shift_reg[363]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector149~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(363));

-- Location: LCCOMB_X50_Y22_N20
\uart_tx_u1|Selector141~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector141~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(363))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(363),
	combout => \uart_tx_u1|Selector141~0_combout\);

-- Location: FF_X50_Y22_N21
\uart_tx_u1|shift_reg[371]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector141~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(371));

-- Location: LCCOMB_X50_Y22_N6
\uart_tx_u1|Selector133~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector133~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(371))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(371),
	combout => \uart_tx_u1|Selector133~0_combout\);

-- Location: FF_X50_Y22_N7
\uart_tx_u1|shift_reg[379]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector133~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(379));

-- Location: LCCOMB_X50_Y22_N4
\uart_tx_u1|Selector125~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector125~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(379))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(379),
	combout => \uart_tx_u1|Selector125~0_combout\);

-- Location: FF_X50_Y22_N5
\uart_tx_u1|shift_reg[387]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector125~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(387));

-- Location: LCCOMB_X50_Y22_N26
\uart_tx_u1|Selector117~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector117~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(387)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datab => current_cmd(106),
	datac => \uart_tx_u1|shift_reg\(387),
	combout => \uart_tx_u1|Selector117~0_combout\);

-- Location: FF_X50_Y22_N27
\uart_tx_u1|shift_reg[395]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector117~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(395));

-- Location: LCCOMB_X50_Y22_N8
\uart_tx_u1|Selector109~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector109~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(395))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => \uart_tx_u1|shift_reg\(395),
	combout => \uart_tx_u1|Selector109~0_combout\);

-- Location: FF_X50_Y22_N9
\uart_tx_u1|shift_reg[403]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector109~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(403));

-- Location: LCCOMB_X50_Y22_N22
\uart_tx_u1|Selector101~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector101~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(403)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datab => current_cmd(106),
	datac => \uart_tx_u1|shift_reg\(403),
	combout => \uart_tx_u1|Selector101~0_combout\);

-- Location: FF_X50_Y22_N23
\uart_tx_u1|shift_reg[411]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector101~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(411));

-- Location: LCCOMB_X50_Y22_N24
\uart_tx_u1|Selector93~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector93~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(411))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => \uart_tx_u1|shift_reg\(411),
	combout => \uart_tx_u1|Selector93~0_combout\);

-- Location: FF_X50_Y22_N25
\uart_tx_u1|shift_reg[419]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector93~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(419));

-- Location: LCCOMB_X50_Y22_N30
\uart_tx_u1|Selector85~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector85~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(419))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(419),
	combout => \uart_tx_u1|Selector85~0_combout\);

-- Location: FF_X50_Y22_N31
\uart_tx_u1|shift_reg[427]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector85~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(427));

-- Location: LCCOMB_X50_Y22_N16
\uart_tx_u1|Selector77~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector77~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(427))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => \uart_tx_u1|shift_reg\(427),
	combout => \uart_tx_u1|Selector77~0_combout\);

-- Location: FF_X50_Y22_N17
\uart_tx_u1|shift_reg[435]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector77~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(435));

-- Location: LCCOMB_X50_Y22_N10
\uart_tx_u1|Selector69~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector69~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(435))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(435),
	combout => \uart_tx_u1|Selector69~0_combout\);

-- Location: FF_X50_Y22_N11
\uart_tx_u1|shift_reg[443]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector69~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(443));

-- Location: LCCOMB_X50_Y22_N28
\uart_tx_u1|Selector61~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector61~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(443))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(443),
	combout => \uart_tx_u1|Selector61~0_combout\);

-- Location: FF_X50_Y22_N29
\uart_tx_u1|shift_reg[451]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector61~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(451));

-- Location: LCCOMB_X50_Y22_N14
\uart_tx_u1|Selector53~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector53~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(451))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(451),
	combout => \uart_tx_u1|Selector53~0_combout\);

-- Location: FF_X50_Y22_N15
\uart_tx_u1|shift_reg[459]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector53~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(459));

-- Location: LCCOMB_X50_Y22_N12
\uart_tx_u1|Selector45~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector45~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(459))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => \uart_tx_u1|shift_reg\(459),
	combout => \uart_tx_u1|Selector45~0_combout\);

-- Location: FF_X50_Y22_N13
\uart_tx_u1|shift_reg[467]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector45~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(467));

-- Location: LCCOMB_X50_Y22_N2
\uart_tx_u1|Selector37~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector37~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(467))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(467),
	combout => \uart_tx_u1|Selector37~0_combout\);

-- Location: FF_X50_Y22_N3
\uart_tx_u1|shift_reg[475]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector37~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(475));

-- Location: LCCOMB_X50_Y22_N0
\uart_tx_u1|Selector29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector29~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(475))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(475),
	combout => \uart_tx_u1|Selector29~0_combout\);

-- Location: FF_X50_Y22_N1
\uart_tx_u1|shift_reg[483]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector29~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(483));

-- Location: LCCOMB_X50_Y23_N4
\uart_tx_u1|Selector21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector21~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(483))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(483),
	combout => \uart_tx_u1|Selector21~0_combout\);

-- Location: FF_X50_Y23_N5
\uart_tx_u1|shift_reg[491]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector21~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(491));

-- Location: LCCOMB_X50_Y23_N10
\uart_tx_u1|Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector13~0_combout\ = (\uart_tx_u1|shift_reg\(491) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(491),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector13~0_combout\);

-- Location: FF_X50_Y24_N29
\uart_tx_u1|shift_reg[499]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uart_tx_u1|Selector13~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(499));

-- Location: LCCOMB_X49_Y24_N8
\uart_tx_u1|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector5~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(499))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(499),
	combout => \uart_tx_u1|Selector5~0_combout\);

-- Location: FF_X49_Y24_N9
\uart_tx_u1|shift_reg[507]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector5~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(507));

-- Location: LCCOMB_X49_Y24_N4
\uart_tx_u1|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector7~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(497))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datac => \uart_tx_u1|shift_reg\(497),
	combout => \uart_tx_u1|Selector7~0_combout\);

-- Location: FF_X49_Y24_N5
\uart_tx_u1|shift_reg[505]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector7~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(505));

-- Location: LCCOMB_X46_Y25_N8
\Selector216~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector216~0_combout\ = ((\cmd_step.1000~q\) # ((current_cmd(64) & \WideOr36~0_combout\))) # (!\WideOr36~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr36~1_combout\,
	datab => \cmd_step.1000~q\,
	datac => current_cmd(64),
	datad => \WideOr36~0_combout\,
	combout => \Selector216~0_combout\);

-- Location: FF_X46_Y25_N9
\current_cmd[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector216~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(64));

-- Location: LCCOMB_X45_Y25_N0
\Selector214~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector214~0_combout\ = (\cmd_step.0010~q\) # (((!\WideOr36~combout\ & current_cmd(66))) # (!\Selector176~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr36~combout\,
	datab => \cmd_step.0010~q\,
	datac => current_cmd(66),
	datad => \Selector176~0_combout\,
	combout => \Selector214~0_combout\);

-- Location: FF_X45_Y25_N1
\current_cmd[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector214~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(66));

-- Location: LCCOMB_X46_Y25_N4
\Selector209~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector209~0_combout\ = (!\cmd_step.0010~q\ & (!\cmd_step.1010~q\ & (!\cmd_step.0110~q\ & !\cmd_step.1100~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_step.0010~q\,
	datab => \cmd_step.1010~q\,
	datac => \cmd_step.0110~q\,
	datad => \cmd_step.1100~q\,
	combout => \Selector209~0_combout\);

-- Location: LCCOMB_X46_Y26_N18
\Selector235~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector235~0_combout\ = (((current_cmd(42) & !\WideOr36~combout\)) # (!\Selector246~0_combout\)) # (!\Selector209~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector209~0_combout\,
	datab => \Selector246~0_combout\,
	datac => current_cmd(42),
	datad => \WideOr36~combout\,
	combout => \Selector235~0_combout\);

-- Location: FF_X46_Y26_N19
\current_cmd[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector235~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(42));

-- Location: LCCOMB_X45_Y26_N14
\Selector243~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector243~0_combout\ = (!\cmd_step.1100~q\ & !\cmd_step.0010~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmd_step.1100~q\,
	datac => \cmd_step.0010~q\,
	combout => \Selector243~0_combout\);

-- Location: LCCOMB_X46_Y26_N16
\Selector241~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector241~0_combout\ = (((current_cmd(34) & !\WideOr36~combout\)) # (!\Selector176~0_combout\)) # (!\Selector243~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector243~0_combout\,
	datab => \Selector176~0_combout\,
	datac => current_cmd(34),
	datad => \WideOr36~combout\,
	combout => \Selector241~0_combout\);

-- Location: FF_X46_Y26_N17
\current_cmd[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector241~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(34));

-- Location: LCCOMB_X48_Y26_N20
\uart_tx_u1|Selector494~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector494~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(21)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(107)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(107),
	datab => \uart_tx_u1|shift_reg\(21),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector494~0_combout\);

-- Location: FF_X48_Y26_N21
\uart_tx_u1|shift_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector494~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(18));

-- Location: LCCOMB_X46_Y26_N26
\Selector246~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector246~1_combout\ = (((!\WideOr36~combout\ & current_cmd(26))) # (!\Selector246~0_combout\)) # (!\WideOr36~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr36~combout\,
	datab => \WideOr36~2_combout\,
	datac => current_cmd(26),
	datad => \Selector246~0_combout\,
	combout => \Selector246~1_combout\);

-- Location: FF_X46_Y26_N27
\current_cmd[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector246~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(26));

-- Location: LCCOMB_X46_Y26_N10
\uart_tx_u1|Selector486~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector486~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(18))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(18),
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(26),
	combout => \uart_tx_u1|Selector486~0_combout\);

-- Location: FF_X46_Y26_N11
\uart_tx_u1|shift_reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector486~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(26));

-- Location: LCCOMB_X46_Y26_N0
\uart_tx_u1|Selector478~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector478~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(26)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(34)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(34),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(26),
	combout => \uart_tx_u1|Selector478~0_combout\);

-- Location: FF_X46_Y26_N1
\uart_tx_u1|shift_reg[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector478~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(34));

-- Location: LCCOMB_X46_Y27_N22
\uart_tx_u1|Selector470~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector470~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(34)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(42)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(42),
	datad => \uart_tx_u1|shift_reg\(34),
	combout => \uart_tx_u1|Selector470~0_combout\);

-- Location: FF_X46_Y27_N23
\uart_tx_u1|shift_reg[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector470~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(42));

-- Location: LCCOMB_X46_Y27_N4
\Selector228~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector228~1_combout\ = (((\WideOr36~1_combout\ & current_cmd(50))) # (!\Selector228~0_combout\)) # (!\WideOr36~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr36~0_combout\,
	datab => \WideOr36~1_combout\,
	datac => current_cmd(50),
	datad => \Selector228~0_combout\,
	combout => \Selector228~1_combout\);

-- Location: FF_X46_Y27_N5
\current_cmd[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector228~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(50));

-- Location: LCCOMB_X46_Y27_N14
\uart_tx_u1|Selector462~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector462~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(42))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(42),
	datac => current_cmd(50),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector462~0_combout\);

-- Location: LCCOMB_X48_Y27_N6
\uart_tx_u1|shift_reg[50]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|shift_reg[50]~feeder_combout\ = \uart_tx_u1|Selector462~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_tx_u1|Selector462~0_combout\,
	combout => \uart_tx_u1|shift_reg[50]~feeder_combout\);

-- Location: FF_X48_Y27_N7
\uart_tx_u1|shift_reg[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|shift_reg[50]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(50));

-- Location: LCCOMB_X48_Y28_N10
\uart_tx_u1|Selector454~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector454~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(50))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(58))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => \uart_tx_u1|shift_reg\(50),
	datad => current_cmd(58),
	combout => \uart_tx_u1|Selector454~0_combout\);

-- Location: FF_X48_Y28_N11
\uart_tx_u1|shift_reg[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector454~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(58));

-- Location: LCCOMB_X48_Y28_N20
\uart_tx_u1|Selector446~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector446~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(58)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(66)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(66),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(58),
	combout => \uart_tx_u1|Selector446~0_combout\);

-- Location: FF_X48_Y28_N21
\uart_tx_u1|shift_reg[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector446~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(66));

-- Location: LCCOMB_X48_Y28_N18
\uart_tx_u1|Selector438~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector438~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(66)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(74)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(74),
	datad => \uart_tx_u1|shift_reg\(66),
	combout => \uart_tx_u1|Selector438~0_combout\);

-- Location: FF_X48_Y28_N19
\uart_tx_u1|shift_reg[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector438~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(74));

-- Location: LCCOMB_X48_Y28_N28
\uart_tx_u1|Selector430~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector430~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(74))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(74),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => current_cmd(106),
	combout => \uart_tx_u1|Selector430~0_combout\);

-- Location: FF_X48_Y28_N29
\uart_tx_u1|shift_reg[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector430~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(82));

-- Location: LCCOMB_X48_Y28_N22
\uart_tx_u1|Selector422~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector422~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(82)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(64)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(64),
	datad => \uart_tx_u1|shift_reg\(82),
	combout => \uart_tx_u1|Selector422~0_combout\);

-- Location: FF_X48_Y28_N23
\uart_tx_u1|shift_reg[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector422~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(90));

-- Location: LCCOMB_X48_Y28_N24
\uart_tx_u1|Selector414~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector414~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(90)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(89)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datab => current_cmd(89),
	datac => \uart_tx_u1|shift_reg\(90),
	combout => \uart_tx_u1|Selector414~0_combout\);

-- Location: FF_X48_Y28_N25
\uart_tx_u1|shift_reg[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector414~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(98));

-- Location: LCCOMB_X49_Y28_N10
\uart_tx_u1|Selector406~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector406~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(98))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(98),
	datac => current_cmd(106),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector406~0_combout\);

-- Location: FF_X49_Y28_N11
\uart_tx_u1|shift_reg[106]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector406~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(106));

-- Location: LCCOMB_X49_Y28_N8
\uart_tx_u1|Selector398~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector398~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(106))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(106),
	datac => current_cmd(101),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector398~0_combout\);

-- Location: FF_X49_Y28_N9
\uart_tx_u1|shift_reg[114]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector398~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(114));

-- Location: LCCOMB_X49_Y28_N4
\uart_tx_u1|Selector390~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector390~0_combout\ = (\uart_tx_u1|shift_reg\(114) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|shift_reg\(114),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector390~0_combout\);

-- Location: FF_X49_Y28_N5
\uart_tx_u1|shift_reg[122]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector390~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(122));

-- Location: LCCOMB_X49_Y28_N0
\uart_tx_u1|Selector382~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector382~0_combout\ = (\uart_tx_u1|shift_reg\(122) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|shift_reg\(122),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector382~0_combout\);

-- Location: FF_X49_Y28_N1
\uart_tx_u1|shift_reg[130]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector382~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(130));

-- Location: LCCOMB_X49_Y28_N12
\uart_tx_u1|Selector374~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector374~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(130))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(108))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(130),
	datac => current_cmd(108),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector374~0_combout\);

-- Location: FF_X49_Y28_N13
\uart_tx_u1|shift_reg[138]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector374~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(138));

-- Location: LCCOMB_X49_Y28_N24
\uart_tx_u1|Selector366~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector366~0_combout\ = (\uart_tx_u1|shift_reg\(138) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(138),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector366~0_combout\);

-- Location: FF_X49_Y28_N25
\uart_tx_u1|shift_reg[146]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector366~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(146));

-- Location: LCCOMB_X49_Y28_N20
\uart_tx_u1|Selector358~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector358~0_combout\ = (\uart_tx_u1|shift_reg\(146) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(146),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector358~0_combout\);

-- Location: FF_X49_Y28_N21
\uart_tx_u1|shift_reg[154]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector358~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(154));

-- Location: LCCOMB_X49_Y28_N16
\uart_tx_u1|Selector350~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector350~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(154))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(154),
	datac => current_cmd(101),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector350~0_combout\);

-- Location: FF_X49_Y28_N17
\uart_tx_u1|shift_reg[162]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector350~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(162));

-- Location: LCCOMB_X49_Y28_N2
\uart_tx_u1|Selector342~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector342~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(162))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(162),
	datac => current_cmd(106),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector342~0_combout\);

-- Location: FF_X49_Y28_N3
\uart_tx_u1|shift_reg[170]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector342~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(170));

-- Location: LCCOMB_X49_Y28_N28
\uart_tx_u1|Selector334~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector334~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(170))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(170),
	datac => current_cmd(101),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector334~0_combout\);

-- Location: FF_X49_Y28_N29
\uart_tx_u1|shift_reg[178]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector334~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(178));

-- Location: LCCOMB_X49_Y25_N26
\uart_tx_u1|Selector326~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector326~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(178)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(107)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(107),
	datad => \uart_tx_u1|shift_reg\(178),
	combout => \uart_tx_u1|Selector326~0_combout\);

-- Location: FF_X49_Y25_N27
\uart_tx_u1|shift_reg[186]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector326~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(186));

-- Location: LCCOMB_X49_Y25_N20
\uart_tx_u1|Selector318~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector318~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(186))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(186),
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => current_cmd(106),
	combout => \uart_tx_u1|Selector318~0_combout\);

-- Location: FF_X49_Y25_N21
\uart_tx_u1|shift_reg[194]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector318~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(194));

-- Location: LCCOMB_X49_Y25_N22
\uart_tx_u1|Selector310~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector310~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(194)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(107)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(107),
	datad => \uart_tx_u1|shift_reg\(194),
	combout => \uart_tx_u1|Selector310~0_combout\);

-- Location: FF_X49_Y25_N23
\uart_tx_u1|shift_reg[202]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector310~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(202));

-- Location: LCCOMB_X49_Y25_N28
\uart_tx_u1|Selector302~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector302~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(202))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(202),
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => current_cmd(106),
	combout => \uart_tx_u1|Selector302~0_combout\);

-- Location: FF_X49_Y25_N29
\uart_tx_u1|shift_reg[210]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector302~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(210));

-- Location: LCCOMB_X49_Y25_N2
\uart_tx_u1|Selector294~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector294~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(210)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(107)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(107),
	datad => \uart_tx_u1|shift_reg\(210),
	combout => \uart_tx_u1|Selector294~0_combout\);

-- Location: FF_X49_Y25_N3
\uart_tx_u1|shift_reg[218]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector294~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(218));

-- Location: LCCOMB_X49_Y25_N24
\uart_tx_u1|Selector286~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector286~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(218))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(218),
	combout => \uart_tx_u1|Selector286~0_combout\);

-- Location: FF_X49_Y25_N25
\uart_tx_u1|shift_reg[226]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector286~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(226));

-- Location: LCCOMB_X49_Y25_N10
\uart_tx_u1|Selector278~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector278~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(226)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(107)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(107),
	datad => \uart_tx_u1|shift_reg\(226),
	combout => \uart_tx_u1|Selector278~0_combout\);

-- Location: FF_X49_Y25_N11
\uart_tx_u1|shift_reg[234]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector278~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(234));

-- Location: LCCOMB_X49_Y25_N12
\uart_tx_u1|Selector270~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector270~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(234))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(234),
	combout => \uart_tx_u1|Selector270~0_combout\);

-- Location: FF_X49_Y25_N13
\uart_tx_u1|shift_reg[242]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector270~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(242));

-- Location: LCCOMB_X49_Y25_N6
\uart_tx_u1|Selector262~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector262~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(242)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(106),
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(242),
	combout => \uart_tx_u1|Selector262~0_combout\);

-- Location: FF_X49_Y25_N7
\uart_tx_u1|shift_reg[250]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector262~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(250));

-- Location: LCCOMB_X49_Y25_N8
\uart_tx_u1|Selector254~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector254~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(250))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(250),
	combout => \uart_tx_u1|Selector254~0_combout\);

-- Location: FF_X49_Y25_N9
\uart_tx_u1|shift_reg[258]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector254~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(258));

-- Location: LCCOMB_X49_Y25_N18
\uart_tx_u1|Selector246~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector246~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(258)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(107)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(107),
	datac => \uart_tx_u1|shift_reg\(258),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector246~0_combout\);

-- Location: FF_X49_Y25_N19
\uart_tx_u1|shift_reg[266]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector246~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(266));

-- Location: LCCOMB_X49_Y25_N0
\uart_tx_u1|Selector238~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector238~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(266)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(106),
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(266),
	combout => \uart_tx_u1|Selector238~0_combout\);

-- Location: FF_X49_Y25_N1
\uart_tx_u1|shift_reg[274]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector238~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(274));

-- Location: LCCOMB_X49_Y25_N30
\uart_tx_u1|Selector230~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector230~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(274)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(106),
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(274),
	combout => \uart_tx_u1|Selector230~0_combout\);

-- Location: FF_X49_Y25_N31
\uart_tx_u1|shift_reg[282]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector230~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(282));

-- Location: LCCOMB_X49_Y25_N16
\uart_tx_u1|Selector222~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector222~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(282)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(101),
	datac => \uart_tx_u1|shift_reg\(282),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector222~0_combout\);

-- Location: FF_X49_Y25_N17
\uart_tx_u1|shift_reg[290]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector222~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(290));

-- Location: LCCOMB_X49_Y25_N14
\uart_tx_u1|Selector214~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector214~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(290))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(290),
	combout => \uart_tx_u1|Selector214~0_combout\);

-- Location: FF_X49_Y25_N15
\uart_tx_u1|shift_reg[298]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector214~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(298));

-- Location: LCCOMB_X49_Y25_N4
\uart_tx_u1|Selector206~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector206~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(298)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(106),
	datac => \uart_tx_u1|shift_reg\(298),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector206~0_combout\);

-- Location: FF_X49_Y25_N5
\uart_tx_u1|shift_reg[306]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector206~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(306));

-- Location: LCCOMB_X46_Y23_N6
\uart_tx_u1|Selector198~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector198~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(306))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(306),
	combout => \uart_tx_u1|Selector198~0_combout\);

-- Location: FF_X46_Y23_N7
\uart_tx_u1|shift_reg[314]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector198~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(314));

-- Location: LCCOMB_X46_Y23_N28
\uart_tx_u1|Selector190~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector190~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(314)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(106),
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(314),
	combout => \uart_tx_u1|Selector190~0_combout\);

-- Location: FF_X46_Y23_N29
\uart_tx_u1|shift_reg[322]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector190~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(322));

-- Location: LCCOMB_X46_Y23_N26
\uart_tx_u1|Selector182~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector182~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(322))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(322),
	combout => \uart_tx_u1|Selector182~0_combout\);

-- Location: FF_X46_Y23_N27
\uart_tx_u1|shift_reg[330]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector182~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(330));

-- Location: LCCOMB_X46_Y23_N24
\uart_tx_u1|Selector174~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector174~0_combout\ = (\uart_tx_u1|shift_reg\(330) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(330),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector174~0_combout\);

-- Location: FF_X46_Y23_N25
\uart_tx_u1|shift_reg[338]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector174~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(338));

-- Location: LCCOMB_X46_Y23_N2
\uart_tx_u1|Selector166~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector166~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(338))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(338),
	combout => \uart_tx_u1|Selector166~0_combout\);

-- Location: FF_X46_Y23_N3
\uart_tx_u1|shift_reg[346]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector166~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(346));

-- Location: LCCOMB_X46_Y23_N0
\uart_tx_u1|Selector158~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector158~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(346))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(346),
	combout => \uart_tx_u1|Selector158~0_combout\);

-- Location: FF_X46_Y23_N1
\uart_tx_u1|shift_reg[354]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector158~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(354));

-- Location: LCCOMB_X46_Y23_N18
\uart_tx_u1|Selector150~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector150~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(354)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(106),
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(354),
	combout => \uart_tx_u1|Selector150~0_combout\);

-- Location: FF_X46_Y23_N19
\uart_tx_u1|shift_reg[362]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector150~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(362));

-- Location: LCCOMB_X46_Y23_N16
\uart_tx_u1|Selector142~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector142~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(362))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(362),
	combout => \uart_tx_u1|Selector142~0_combout\);

-- Location: FF_X46_Y23_N17
\uart_tx_u1|shift_reg[370]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector142~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(370));

-- Location: LCCOMB_X46_Y23_N10
\uart_tx_u1|Selector134~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector134~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(370))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(370),
	combout => \uart_tx_u1|Selector134~0_combout\);

-- Location: FF_X46_Y23_N11
\uart_tx_u1|shift_reg[378]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector134~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(378));

-- Location: LCCOMB_X46_Y23_N12
\uart_tx_u1|Selector126~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector126~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(378))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(378),
	combout => \uart_tx_u1|Selector126~0_combout\);

-- Location: FF_X46_Y23_N13
\uart_tx_u1|shift_reg[386]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector126~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(386));

-- Location: LCCOMB_X46_Y23_N22
\uart_tx_u1|Selector118~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector118~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(386))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(386),
	combout => \uart_tx_u1|Selector118~0_combout\);

-- Location: FF_X46_Y23_N23
\uart_tx_u1|shift_reg[394]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector118~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(394));

-- Location: LCCOMB_X46_Y23_N20
\uart_tx_u1|Selector110~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector110~0_combout\ = (\uart_tx_u1|shift_reg\(394) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(394),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector110~0_combout\);

-- Location: FF_X46_Y23_N21
\uart_tx_u1|shift_reg[402]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector110~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(402));

-- Location: LCCOMB_X48_Y23_N2
\uart_tx_u1|Selector102~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector102~0_combout\ = (\uart_tx_u1|shift_reg\(402) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|shift_reg\(402),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector102~0_combout\);

-- Location: FF_X48_Y23_N3
\uart_tx_u1|shift_reg[410]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector102~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(410));

-- Location: LCCOMB_X48_Y23_N20
\uart_tx_u1|Selector94~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector94~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(410))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(410),
	datac => current_cmd(106),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector94~0_combout\);

-- Location: FF_X48_Y23_N21
\uart_tx_u1|shift_reg[418]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector94~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(418));

-- Location: LCCOMB_X48_Y23_N10
\uart_tx_u1|Selector86~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector86~0_combout\ = (\uart_tx_u1|shift_reg\(418) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(418),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector86~0_combout\);

-- Location: FF_X48_Y23_N11
\uart_tx_u1|shift_reg[426]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector86~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(426));

-- Location: LCCOMB_X48_Y23_N28
\uart_tx_u1|Selector78~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector78~0_combout\ = (\uart_tx_u1|shift_reg\(426) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(426),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector78~0_combout\);

-- Location: FF_X48_Y23_N29
\uart_tx_u1|shift_reg[434]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector78~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(434));

-- Location: LCCOMB_X48_Y23_N22
\uart_tx_u1|Selector70~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector70~0_combout\ = (\uart_tx_u1|shift_reg\(434) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(434),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector70~0_combout\);

-- Location: FF_X48_Y23_N23
\uart_tx_u1|shift_reg[442]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector70~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(442));

-- Location: LCCOMB_X48_Y23_N0
\uart_tx_u1|Selector62~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector62~0_combout\ = (\uart_tx_u1|shift_reg\(442) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|shift_reg\(442),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector62~0_combout\);

-- Location: FF_X48_Y23_N1
\uart_tx_u1|shift_reg[450]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector62~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(450));

-- Location: LCCOMB_X48_Y23_N16
\uart_tx_u1|Selector54~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector54~0_combout\ = (\uart_tx_u1|shift_reg\(450) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(450),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector54~0_combout\);

-- Location: FF_X48_Y23_N17
\uart_tx_u1|shift_reg[458]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector54~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(458));

-- Location: LCCOMB_X48_Y23_N6
\uart_tx_u1|Selector46~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector46~0_combout\ = (\uart_tx_u1|shift_reg\(458) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(458),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector46~0_combout\);

-- Location: FF_X49_Y23_N1
\uart_tx_u1|shift_reg[466]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uart_tx_u1|Selector46~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(466));

-- Location: LCCOMB_X50_Y23_N28
\uart_tx_u1|Selector38~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector38~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(466))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(466),
	combout => \uart_tx_u1|Selector38~0_combout\);

-- Location: FF_X50_Y23_N29
\uart_tx_u1|shift_reg[474]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector38~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(474));

-- Location: LCCOMB_X50_Y23_N2
\uart_tx_u1|Selector30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector30~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(474))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(474),
	combout => \uart_tx_u1|Selector30~0_combout\);

-- Location: FF_X50_Y23_N3
\uart_tx_u1|shift_reg[482]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector30~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(482));

-- Location: LCCOMB_X51_Y25_N4
\uart_tx_u1|Selector22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector22~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(482))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(482),
	combout => \uart_tx_u1|Selector22~0_combout\);

-- Location: FF_X51_Y25_N5
\uart_tx_u1|shift_reg[490]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector22~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(490));

-- Location: LCCOMB_X50_Y25_N4
\uart_tx_u1|Selector14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector14~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(490))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(490),
	combout => \uart_tx_u1|Selector14~0_combout\);

-- Location: FF_X50_Y24_N19
\uart_tx_u1|shift_reg[498]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uart_tx_u1|Selector14~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(498));

-- Location: LCCOMB_X49_Y24_N6
\uart_tx_u1|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector6~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(498))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(498),
	combout => \uart_tx_u1|Selector6~0_combout\);

-- Location: FF_X49_Y24_N7
\uart_tx_u1|shift_reg[506]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector6~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(506));

-- Location: LCCOMB_X49_Y24_N10
\uart_tx_u1|always1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|always1~1_combout\ = (!\uart_tx_u1|shift_reg\(508) & (!\uart_tx_u1|shift_reg\(507) & (!\uart_tx_u1|shift_reg\(505) & !\uart_tx_u1|shift_reg\(506))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(508),
	datab => \uart_tx_u1|shift_reg\(507),
	datac => \uart_tx_u1|shift_reg\(505),
	datad => \uart_tx_u1|shift_reg\(506),
	combout => \uart_tx_u1|always1~1_combout\);

-- Location: LCCOMB_X50_Y24_N22
\uart_tx_u1|Selector511~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector511~0_combout\ = (\uart_tx_u1|state.S_START~q\ & ((\uart_tx_u1|shift_reg\(504)) # ((!\uart_tx_u1|always1~1_combout\) # (!\uart_tx_u1|always1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_START~q\,
	datab => \uart_tx_u1|shift_reg\(504),
	datac => \uart_tx_u1|always1~0_combout\,
	datad => \uart_tx_u1|always1~1_combout\,
	combout => \uart_tx_u1|Selector511~0_combout\);

-- Location: LCCOMB_X52_Y24_N30
\uart_tx_u1|Selector511~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector511~1_combout\ = (\uart_tx_u1|state.S_DATA~q\) # ((!\uart_tx_u1|state.S_IDLE~q\ & !\tx_start~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datab => \tx_start~q\,
	datad => \uart_tx_u1|state.S_DATA~q\,
	combout => \uart_tx_u1|Selector511~1_combout\);

-- Location: LCCOMB_X52_Y24_N18
\uart_tx_u1|Selector511~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector511~2_combout\ = (\uart_tx_u1|Selector511~0_combout\) # ((\uart_tx_u1|Selector511~1_combout\) # ((\uart_tx_u1|state.S_STOP~q\ & \uart_tx_u1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Selector511~0_combout\,
	datab => \uart_tx_u1|state.S_STOP~q\,
	datac => \uart_tx_u1|Selector511~1_combout\,
	datad => \uart_tx_u1|Equal0~4_combout\,
	combout => \uart_tx_u1|Selector511~2_combout\);

-- Location: LCCOMB_X52_Y24_N28
\uart_tx_u1|Selector511~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector511~3_combout\ = (current_cmd(10) & ((\uart_tx_u1|Selector522~2_combout\) # ((\uart_tx_u1|shift_reg\(1) & \uart_tx_u1|Selector511~2_combout\)))) # (!current_cmd(10) & (((\uart_tx_u1|shift_reg\(1) & 
-- \uart_tx_u1|Selector511~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(10),
	datab => \uart_tx_u1|Selector522~2_combout\,
	datac => \uart_tx_u1|shift_reg\(1),
	datad => \uart_tx_u1|Selector511~2_combout\,
	combout => \uart_tx_u1|Selector511~3_combout\);

-- Location: FF_X52_Y24_N29
\uart_tx_u1|shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector511~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(1));

-- Location: LCCOMB_X46_Y24_N14
\uart_tx_u1|Selector503~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector503~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(1),
	combout => \uart_tx_u1|Selector503~0_combout\);

-- Location: FF_X46_Y24_N15
\uart_tx_u1|shift_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector503~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(9));

-- Location: LCCOMB_X46_Y24_N18
\uart_tx_u1|Selector495~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector495~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(9)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(17),
	datab => \uart_tx_u1|shift_reg\(9),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector495~0_combout\);

-- Location: FF_X46_Y24_N19
\uart_tx_u1|shift_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector495~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(17));

-- Location: LCCOMB_X46_Y24_N24
\uart_tx_u1|Selector487~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector487~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(17),
	combout => \uart_tx_u1|Selector487~0_combout\);

-- Location: FF_X46_Y24_N25
\uart_tx_u1|shift_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector487~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(25));

-- Location: LCCOMB_X46_Y24_N2
\uart_tx_u1|Selector479~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector479~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(25)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(33)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(33),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(25),
	combout => \uart_tx_u1|Selector479~0_combout\);

-- Location: FF_X46_Y24_N3
\uart_tx_u1|shift_reg[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector479~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(33));

-- Location: LCCOMB_X46_Y24_N12
\uart_tx_u1|Selector471~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector471~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(33))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(33),
	combout => \uart_tx_u1|Selector471~0_combout\);

-- Location: FF_X46_Y24_N13
\uart_tx_u1|shift_reg[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector471~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(41));

-- Location: LCCOMB_X46_Y26_N8
\Selector229~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector229~0_combout\ = (((current_cmd(49) & !\WideOr36~combout\)) # (!\Selector246~0_combout\)) # (!\Selector243~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector243~0_combout\,
	datab => \Selector246~0_combout\,
	datac => current_cmd(49),
	datad => \WideOr36~combout\,
	combout => \Selector229~0_combout\);

-- Location: FF_X46_Y26_N9
\current_cmd[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector229~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(49));

-- Location: LCCOMB_X46_Y24_N8
\uart_tx_u1|Selector463~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector463~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(41))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(49))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(41),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => current_cmd(49),
	combout => \uart_tx_u1|Selector463~0_combout\);

-- Location: FF_X46_Y24_N9
\uart_tx_u1|shift_reg[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector463~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(49));

-- Location: LCCOMB_X46_Y24_N28
\uart_tx_u1|Selector455~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector455~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(49)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(57)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(57),
	datab => \uart_tx_u1|shift_reg\(49),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector455~0_combout\);

-- Location: FF_X46_Y24_N29
\uart_tx_u1|shift_reg[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector455~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(57));

-- Location: LCCOMB_X46_Y24_N22
\uart_tx_u1|Selector447~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector447~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(57)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(17),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(57),
	combout => \uart_tx_u1|Selector447~0_combout\);

-- Location: FF_X46_Y24_N23
\uart_tx_u1|shift_reg[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector447~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(65));

-- Location: LCCOMB_X48_Y26_N24
\uart_tx_u1|Selector439~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector439~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(65)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(102)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(102),
	datac => \uart_tx_u1|shift_reg\(65),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector439~0_combout\);

-- Location: FF_X48_Y26_N25
\uart_tx_u1|shift_reg[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector439~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(73));

-- Location: LCCOMB_X48_Y26_N14
\uart_tx_u1|Selector431~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector431~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(73))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(102))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(73),
	datac => current_cmd(102),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector431~0_combout\);

-- Location: FF_X48_Y26_N15
\uart_tx_u1|shift_reg[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector431~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(81));

-- Location: LCCOMB_X49_Y26_N2
\uart_tx_u1|Selector423~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector423~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(81)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(89)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(89),
	datad => \uart_tx_u1|shift_reg\(81),
	combout => \uart_tx_u1|Selector423~0_combout\);

-- Location: FF_X49_Y26_N3
\uart_tx_u1|shift_reg[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector423~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(89));

-- Location: LCCOMB_X49_Y26_N10
\uart_tx_u1|Selector415~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector415~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(89)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(108)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(108),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(89),
	combout => \uart_tx_u1|Selector415~0_combout\);

-- Location: FF_X49_Y26_N11
\uart_tx_u1|shift_reg[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector415~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(97));

-- Location: LCCOMB_X49_Y26_N6
\uart_tx_u1|Selector407~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector407~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(97))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(97),
	combout => \uart_tx_u1|Selector407~0_combout\);

-- Location: FF_X49_Y26_N7
\uart_tx_u1|shift_reg[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector407~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(105));

-- Location: LCCOMB_X48_Y26_N12
\uart_tx_u1|Selector399~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector399~0_combout\ = (\uart_tx_u1|shift_reg\(105) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(105),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector399~0_combout\);

-- Location: FF_X48_Y26_N13
\uart_tx_u1|shift_reg[113]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector399~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(113));

-- Location: LCCOMB_X45_Y25_N22
\Selector176~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector176~1_combout\ = ((\WideOr36~1_combout\ & (\WideOr36~0_combout\ & current_cmd(112)))) # (!\Selector176~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr36~1_combout\,
	datab => \WideOr36~0_combout\,
	datac => current_cmd(112),
	datad => \Selector176~0_combout\,
	combout => \Selector176~1_combout\);

-- Location: FF_X45_Y25_N23
\current_cmd[112]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector176~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(112));

-- Location: LCCOMB_X48_Y26_N6
\uart_tx_u1|Selector391~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector391~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(113))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(112))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(113),
	datac => current_cmd(112),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector391~0_combout\);

-- Location: FF_X48_Y26_N7
\uart_tx_u1|shift_reg[121]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector391~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(121));

-- Location: LCCOMB_X48_Y26_N8
\uart_tx_u1|Selector383~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector383~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(121))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(108))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(121),
	datab => current_cmd(108),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector383~0_combout\);

-- Location: FF_X48_Y26_N9
\uart_tx_u1|shift_reg[129]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector383~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(129));

-- Location: LCCOMB_X48_Y26_N22
\uart_tx_u1|Selector375~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector375~0_combout\ = (\uart_tx_u1|shift_reg\(129) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|shift_reg\(129),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector375~0_combout\);

-- Location: FF_X48_Y26_N23
\uart_tx_u1|shift_reg[137]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector375~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(137));

-- Location: LCCOMB_X48_Y26_N4
\uart_tx_u1|Selector367~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector367~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(137)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(101),
	datac => \uart_tx_u1|shift_reg\(137),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector367~0_combout\);

-- Location: FF_X48_Y26_N5
\uart_tx_u1|shift_reg[145]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector367~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(145));

-- Location: LCCOMB_X48_Y26_N26
\uart_tx_u1|Selector359~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector359~0_combout\ = (\uart_tx_u1|shift_reg\(145) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|shift_reg\(145),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector359~0_combout\);

-- Location: FF_X48_Y26_N27
\uart_tx_u1|shift_reg[153]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector359~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(153));

-- Location: LCCOMB_X48_Y26_N16
\uart_tx_u1|Selector351~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector351~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(153)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(101),
	datac => \uart_tx_u1|shift_reg\(153),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector351~0_combout\);

-- Location: FF_X48_Y26_N17
\uart_tx_u1|shift_reg[161]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector351~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(161));

-- Location: LCCOMB_X48_Y26_N10
\uart_tx_u1|Selector343~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector343~0_combout\ = (\uart_tx_u1|shift_reg\(161) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(161),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector343~0_combout\);

-- Location: FF_X48_Y26_N11
\uart_tx_u1|shift_reg[169]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector343~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(169));

-- Location: LCCOMB_X48_Y26_N28
\uart_tx_u1|Selector335~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector335~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(169))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(169),
	datab => current_cmd(101),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector335~0_combout\);

-- Location: FF_X48_Y26_N29
\uart_tx_u1|shift_reg[177]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector335~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(177));

-- Location: LCCOMB_X48_Y22_N10
\uart_tx_u1|Selector327~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector327~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(177))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(107))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(177),
	datac => current_cmd(107),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector327~0_combout\);

-- Location: FF_X48_Y22_N11
\uart_tx_u1|shift_reg[185]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector327~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(185));

-- Location: LCCOMB_X48_Y22_N12
\uart_tx_u1|Selector319~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector319~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(185))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(185),
	datac => current_cmd(106),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector319~0_combout\);

-- Location: FF_X48_Y22_N13
\uart_tx_u1|shift_reg[193]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector319~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(193));

-- Location: LCCOMB_X48_Y22_N18
\uart_tx_u1|Selector311~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector311~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(193))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(107))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(193),
	datac => current_cmd(107),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector311~0_combout\);

-- Location: FF_X48_Y22_N19
\uart_tx_u1|shift_reg[201]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector311~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(201));

-- Location: LCCOMB_X48_Y22_N24
\uart_tx_u1|Selector303~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector303~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(201)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(106),
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(201),
	combout => \uart_tx_u1|Selector303~0_combout\);

-- Location: FF_X48_Y22_N25
\uart_tx_u1|shift_reg[209]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector303~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(209));

-- Location: LCCOMB_X48_Y22_N14
\uart_tx_u1|Selector295~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector295~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(209))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(209),
	datac => current_cmd(101),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector295~0_combout\);

-- Location: FF_X48_Y22_N15
\uart_tx_u1|shift_reg[217]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector295~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(217));

-- Location: LCCOMB_X48_Y22_N16
\uart_tx_u1|Selector287~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector287~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(217)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(107)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(107),
	datac => \uart_tx_u1|shift_reg\(217),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector287~0_combout\);

-- Location: FF_X48_Y22_N17
\uart_tx_u1|shift_reg[225]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector287~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(225));

-- Location: LCCOMB_X48_Y22_N2
\uart_tx_u1|Selector279~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector279~0_combout\ = (\uart_tx_u1|shift_reg\(225) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(225),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector279~0_combout\);

-- Location: FF_X48_Y22_N3
\uart_tx_u1|shift_reg[233]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector279~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(233));

-- Location: LCCOMB_X48_Y22_N20
\uart_tx_u1|Selector271~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector271~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(233)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(106),
	datab => \uart_tx_u1|shift_reg\(233),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector271~0_combout\);

-- Location: FF_X48_Y22_N21
\uart_tx_u1|shift_reg[241]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector271~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(241));

-- Location: LCCOMB_X48_Y22_N6
\uart_tx_u1|Selector263~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector263~0_combout\ = (\uart_tx_u1|shift_reg\(241) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(241),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector263~0_combout\);

-- Location: FF_X48_Y22_N7
\uart_tx_u1|shift_reg[249]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector263~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(249));

-- Location: LCCOMB_X48_Y22_N4
\uart_tx_u1|Selector255~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector255~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(249))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(249),
	datac => current_cmd(101),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector255~0_combout\);

-- Location: FF_X48_Y22_N5
\uart_tx_u1|shift_reg[257]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector255~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(257));

-- Location: LCCOMB_X48_Y22_N30
\uart_tx_u1|Selector247~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector247~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(257)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(107)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(107),
	datac => \uart_tx_u1|shift_reg\(257),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector247~0_combout\);

-- Location: FF_X48_Y22_N31
\uart_tx_u1|shift_reg[265]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector247~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(265));

-- Location: LCCOMB_X48_Y22_N0
\uart_tx_u1|Selector239~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector239~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(265))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(265),
	datac => current_cmd(101),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector239~0_combout\);

-- Location: FF_X48_Y22_N1
\uart_tx_u1|shift_reg[273]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector239~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(273));

-- Location: LCCOMB_X48_Y22_N26
\uart_tx_u1|Selector231~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector231~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(273))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(107))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(273),
	datac => current_cmd(107),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector231~0_combout\);

-- Location: FF_X48_Y22_N27
\uart_tx_u1|shift_reg[281]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector231~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(281));

-- Location: LCCOMB_X48_Y22_N28
\uart_tx_u1|Selector223~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector223~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(281)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(106),
	datac => \uart_tx_u1|shift_reg\(281),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector223~0_combout\);

-- Location: FF_X48_Y22_N29
\uart_tx_u1|shift_reg[289]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector223~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(289));

-- Location: LCCOMB_X48_Y22_N22
\uart_tx_u1|Selector215~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector215~0_combout\ = (\uart_tx_u1|shift_reg\(289) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(289),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector215~0_combout\);

-- Location: FF_X48_Y22_N23
\uart_tx_u1|shift_reg[297]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector215~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(297));

-- Location: LCCOMB_X48_Y22_N8
\uart_tx_u1|Selector207~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector207~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(297)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(106),
	datac => \uart_tx_u1|shift_reg\(297),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector207~0_combout\);

-- Location: FF_X48_Y22_N9
\uart_tx_u1|shift_reg[305]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector207~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(305));

-- Location: LCCOMB_X49_Y22_N14
\uart_tx_u1|Selector199~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector199~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(305))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(305),
	combout => \uart_tx_u1|Selector199~0_combout\);

-- Location: FF_X49_Y22_N15
\uart_tx_u1|shift_reg[313]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector199~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(313));

-- Location: LCCOMB_X49_Y22_N18
\uart_tx_u1|Selector191~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector191~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(313))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(313),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => current_cmd(106),
	combout => \uart_tx_u1|Selector191~0_combout\);

-- Location: FF_X49_Y22_N19
\uart_tx_u1|shift_reg[321]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector191~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(321));

-- Location: LCCOMB_X49_Y22_N2
\uart_tx_u1|Selector183~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector183~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(321)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(106),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(321),
	combout => \uart_tx_u1|Selector183~0_combout\);

-- Location: FF_X49_Y22_N3
\uart_tx_u1|shift_reg[329]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector183~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(329));

-- Location: LCCOMB_X49_Y22_N6
\uart_tx_u1|Selector175~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector175~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(329))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(329),
	combout => \uart_tx_u1|Selector175~0_combout\);

-- Location: FF_X49_Y22_N7
\uart_tx_u1|shift_reg[337]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector175~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(337));

-- Location: LCCOMB_X49_Y22_N30
\uart_tx_u1|Selector167~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector167~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(337))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(337),
	combout => \uart_tx_u1|Selector167~0_combout\);

-- Location: FF_X49_Y22_N31
\uart_tx_u1|shift_reg[345]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector167~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(345));

-- Location: LCCOMB_X49_Y22_N26
\uart_tx_u1|Selector159~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector159~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(345))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(345),
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => current_cmd(106),
	combout => \uart_tx_u1|Selector159~0_combout\);

-- Location: FF_X49_Y22_N27
\uart_tx_u1|shift_reg[353]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector159~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(353));

-- Location: LCCOMB_X49_Y22_N22
\uart_tx_u1|Selector151~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector151~0_combout\ = (\uart_tx_u1|shift_reg\(353) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(353),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector151~0_combout\);

-- Location: FF_X49_Y22_N23
\uart_tx_u1|shift_reg[361]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector151~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(361));

-- Location: LCCOMB_X49_Y22_N16
\uart_tx_u1|Selector143~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector143~0_combout\ = (\uart_tx_u1|shift_reg\(361) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(361),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector143~0_combout\);

-- Location: FF_X49_Y22_N17
\uart_tx_u1|shift_reg[369]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector143~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(369));

-- Location: LCCOMB_X49_Y26_N8
\uart_tx_u1|Selector135~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector135~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(369))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(369),
	combout => \uart_tx_u1|Selector135~0_combout\);

-- Location: FF_X49_Y26_N9
\uart_tx_u1|shift_reg[377]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector135~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(377));

-- Location: LCCOMB_X50_Y26_N20
\uart_tx_u1|Selector127~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector127~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(377))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(377),
	combout => \uart_tx_u1|Selector127~0_combout\);

-- Location: FF_X50_Y26_N21
\uart_tx_u1|shift_reg[385]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector127~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(385));

-- Location: LCCOMB_X50_Y26_N2
\uart_tx_u1|Selector119~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector119~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(385))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(385),
	combout => \uart_tx_u1|Selector119~0_combout\);

-- Location: FF_X50_Y26_N3
\uart_tx_u1|shift_reg[393]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector119~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(393));

-- Location: LCCOMB_X50_Y26_N0
\uart_tx_u1|Selector111~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector111~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(393)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(106),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(393),
	combout => \uart_tx_u1|Selector111~0_combout\);

-- Location: FF_X50_Y26_N1
\uart_tx_u1|shift_reg[401]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector111~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(401));

-- Location: LCCOMB_X50_Y26_N10
\uart_tx_u1|Selector103~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector103~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(401)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(106),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(401),
	combout => \uart_tx_u1|Selector103~0_combout\);

-- Location: FF_X50_Y26_N11
\uart_tx_u1|shift_reg[409]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector103~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(409));

-- Location: LCCOMB_X50_Y26_N24
\uart_tx_u1|Selector95~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector95~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(409))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(409),
	combout => \uart_tx_u1|Selector95~0_combout\);

-- Location: FF_X50_Y26_N25
\uart_tx_u1|shift_reg[417]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector95~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(417));

-- Location: LCCOMB_X50_Y26_N26
\uart_tx_u1|Selector87~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector87~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(417))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(417),
	combout => \uart_tx_u1|Selector87~0_combout\);

-- Location: FF_X50_Y26_N27
\uart_tx_u1|shift_reg[425]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector87~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(425));

-- Location: LCCOMB_X50_Y26_N28
\uart_tx_u1|Selector79~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector79~0_combout\ = (\uart_tx_u1|shift_reg\(425) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(425),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector79~0_combout\);

-- Location: FF_X50_Y26_N29
\uart_tx_u1|shift_reg[433]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector79~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(433));

-- Location: LCCOMB_X50_Y26_N30
\uart_tx_u1|Selector71~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector71~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(433))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(433),
	combout => \uart_tx_u1|Selector71~0_combout\);

-- Location: FF_X50_Y26_N31
\uart_tx_u1|shift_reg[441]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector71~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(441));

-- Location: LCCOMB_X50_Y26_N12
\uart_tx_u1|Selector63~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector63~0_combout\ = (\uart_tx_u1|shift_reg\(441) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(441),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector63~0_combout\);

-- Location: FF_X50_Y26_N13
\uart_tx_u1|shift_reg[449]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector63~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(449));

-- Location: LCCOMB_X50_Y26_N6
\uart_tx_u1|Selector55~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector55~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(449))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(449),
	combout => \uart_tx_u1|Selector55~0_combout\);

-- Location: FF_X50_Y26_N7
\uart_tx_u1|shift_reg[457]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector55~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(457));

-- Location: LCCOMB_X50_Y26_N4
\uart_tx_u1|Selector47~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector47~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(457))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(457),
	combout => \uart_tx_u1|Selector47~0_combout\);

-- Location: FF_X50_Y26_N5
\uart_tx_u1|shift_reg[465]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector47~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(465));

-- Location: LCCOMB_X50_Y26_N22
\uart_tx_u1|Selector39~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector39~0_combout\ = (\uart_tx_u1|shift_reg\(465) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(465),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector39~0_combout\);

-- Location: FF_X50_Y26_N23
\uart_tx_u1|shift_reg[473]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector39~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(473));

-- Location: LCCOMB_X50_Y26_N8
\uart_tx_u1|Selector31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector31~0_combout\ = (\uart_tx_u1|shift_reg\(473) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(473),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector31~0_combout\);

-- Location: FF_X50_Y26_N9
\uart_tx_u1|shift_reg[481]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector31~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(481));

-- Location: LCCOMB_X50_Y23_N0
\uart_tx_u1|Selector23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector23~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(481))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(481),
	combout => \uart_tx_u1|Selector23~0_combout\);

-- Location: FF_X50_Y23_N1
\uart_tx_u1|shift_reg[489]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector23~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(489));

-- Location: LCCOMB_X50_Y24_N12
\uart_tx_u1|Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector15~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(489))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(489),
	combout => \uart_tx_u1|Selector15~0_combout\);

-- Location: FF_X50_Y24_N13
\uart_tx_u1|shift_reg[497]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector15~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(497));

-- Location: LCCOMB_X50_Y24_N28
\uart_tx_u1|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Equal3~0_combout\ = (!\uart_tx_u1|shift_reg\(501) & (!\uart_tx_u1|shift_reg\(502) & (!\uart_tx_u1|shift_reg\(499) & !\uart_tx_u1|shift_reg\(500))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(501),
	datab => \uart_tx_u1|shift_reg\(502),
	datac => \uart_tx_u1|shift_reg\(499),
	datad => \uart_tx_u1|shift_reg\(500),
	combout => \uart_tx_u1|Equal3~0_combout\);

-- Location: LCCOMB_X50_Y24_N26
\uart_tx_u1|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Equal3~1_combout\ = (!\uart_tx_u1|shift_reg\(497) & (!\uart_tx_u1|shift_reg\(498) & (!\uart_tx_u1|shift_reg\(496) & \uart_tx_u1|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(497),
	datab => \uart_tx_u1|shift_reg\(498),
	datac => \uart_tx_u1|shift_reg\(496),
	datad => \uart_tx_u1|Equal3~0_combout\,
	combout => \uart_tx_u1|Equal3~1_combout\);

-- Location: LCCOMB_X51_Y24_N26
\uart_tx_u1|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add2~14_combout\ = (\uart_tx_u1|byte_cnt\(7) & (!\uart_tx_u1|Add2~13\)) # (!\uart_tx_u1|byte_cnt\(7) & ((\uart_tx_u1|Add2~13\) # (GND)))
-- \uart_tx_u1|Add2~15\ = CARRY((!\uart_tx_u1|Add2~13\) # (!\uart_tx_u1|byte_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|byte_cnt\(7),
	datad => VCC,
	cin => \uart_tx_u1|Add2~13\,
	combout => \uart_tx_u1|Add2~14_combout\,
	cout => \uart_tx_u1|Add2~15\);

-- Location: LCCOMB_X51_Y24_N28
\uart_tx_u1|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add2~16_combout\ = !\uart_tx_u1|Add2~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \uart_tx_u1|Add2~15\,
	combout => \uart_tx_u1|Add2~16_combout\);

-- Location: LCCOMB_X51_Y24_N24
\uart_tx_u1|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add2~12_combout\ = (\uart_tx_u1|byte_cnt\(6) & (\uart_tx_u1|Add2~11\ $ (GND))) # (!\uart_tx_u1|byte_cnt\(6) & (!\uart_tx_u1|Add2~11\ & VCC))
-- \uart_tx_u1|Add2~13\ = CARRY((\uart_tx_u1|byte_cnt\(6) & !\uart_tx_u1|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|byte_cnt\(6),
	datad => VCC,
	cin => \uart_tx_u1|Add2~11\,
	combout => \uart_tx_u1|Add2~12_combout\,
	cout => \uart_tx_u1|Add2~13\);

-- Location: LCCOMB_X51_Y24_N30
\uart_tx_u1|always1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|always1~3_combout\ = (\uart_tx_u1|Equal3~1_combout\) # ((\uart_tx_u1|Add2~16_combout\) # ((\uart_tx_u1|Add2~14_combout\) # (\uart_tx_u1|Add2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Equal3~1_combout\,
	datab => \uart_tx_u1|Add2~16_combout\,
	datac => \uart_tx_u1|Add2~14_combout\,
	datad => \uart_tx_u1|Add2~12_combout\,
	combout => \uart_tx_u1|always1~3_combout\);

-- Location: LCCOMB_X52_Y24_N6
\uart_tx_u1|Selector523~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector523~2_combout\ = (\uart_tx_u1|Selector523~1_combout\) # ((\uart_tx_u1|Selector526~1_combout\ & !\uart_tx_u1|always1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Selector526~1_combout\,
	datac => \uart_tx_u1|Selector523~1_combout\,
	datad => \uart_tx_u1|always1~3_combout\,
	combout => \uart_tx_u1|Selector523~2_combout\);

-- Location: FF_X52_Y24_N7
\uart_tx_u1|state.S_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector523~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|state.S_START~q\);

-- Location: LCCOMB_X49_Y24_N0
\uart_tx_u1|shift_reg[288]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|shift_reg[288]~0_combout\ = (((\uart_tx_u1|shift_reg\(504)) # (!\uart_tx_u1|always1~1_combout\)) # (!\uart_tx_u1|always1~0_combout\)) # (!\uart_tx_u1|state.S_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_START~q\,
	datab => \uart_tx_u1|always1~0_combout\,
	datac => \uart_tx_u1|shift_reg\(504),
	datad => \uart_tx_u1|always1~1_combout\,
	combout => \uart_tx_u1|shift_reg[288]~0_combout\);

-- Location: LCCOMB_X49_Y24_N30
\uart_tx_u1|shift_reg[288]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|shift_reg[288]~1_combout\ = ((\uart_tx_u1|Selector522~2_combout\) # ((\uart_tx_u1|state.S_STOP~q\ & !\uart_tx_u1|Equal0~4_combout\))) # (!\uart_tx_u1|shift_reg[288]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg[288]~0_combout\,
	datab => \uart_tx_u1|Selector522~2_combout\,
	datac => \uart_tx_u1|state.S_STOP~q\,
	datad => \uart_tx_u1|Equal0~4_combout\,
	combout => \uart_tx_u1|shift_reg[288]~1_combout\);

-- Location: FF_X51_Y24_N11
\uart_tx_u1|byte_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector520~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|byte_cnt\(0));

-- Location: LCCOMB_X51_Y24_N14
\uart_tx_u1|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add2~2_combout\ = (\uart_tx_u1|byte_cnt\(1) & (!\uart_tx_u1|Add2~1\)) # (!\uart_tx_u1|byte_cnt\(1) & ((\uart_tx_u1|Add2~1\) # (GND)))
-- \uart_tx_u1|Add2~3\ = CARRY((!\uart_tx_u1|Add2~1\) # (!\uart_tx_u1|byte_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|byte_cnt\(1),
	datad => VCC,
	cin => \uart_tx_u1|Add2~1\,
	combout => \uart_tx_u1|Add2~2_combout\,
	cout => \uart_tx_u1|Add2~3\);

-- Location: LCCOMB_X51_Y24_N4
\uart_tx_u1|Selector519~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector519~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datac => \uart_tx_u1|Add2~2_combout\,
	combout => \uart_tx_u1|Selector519~0_combout\);

-- Location: FF_X51_Y24_N5
\uart_tx_u1|byte_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector519~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|byte_cnt\(1));

-- Location: LCCOMB_X51_Y24_N16
\uart_tx_u1|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add2~4_combout\ = (\uart_tx_u1|byte_cnt\(2) & (\uart_tx_u1|Add2~3\ $ (GND))) # (!\uart_tx_u1|byte_cnt\(2) & (!\uart_tx_u1|Add2~3\ & VCC))
-- \uart_tx_u1|Add2~5\ = CARRY((\uart_tx_u1|byte_cnt\(2) & !\uart_tx_u1|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|byte_cnt\(2),
	datad => VCC,
	cin => \uart_tx_u1|Add2~3\,
	combout => \uart_tx_u1|Add2~4_combout\,
	cout => \uart_tx_u1|Add2~5\);

-- Location: LCCOMB_X51_Y24_N6
\uart_tx_u1|Selector518~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector518~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|Add2~4_combout\,
	combout => \uart_tx_u1|Selector518~0_combout\);

-- Location: FF_X51_Y24_N7
\uart_tx_u1|byte_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector518~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|byte_cnt\(2));

-- Location: LCCOMB_X51_Y24_N18
\uart_tx_u1|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add2~6_combout\ = (\uart_tx_u1|byte_cnt\(3) & (!\uart_tx_u1|Add2~5\)) # (!\uart_tx_u1|byte_cnt\(3) & ((\uart_tx_u1|Add2~5\) # (GND)))
-- \uart_tx_u1|Add2~7\ = CARRY((!\uart_tx_u1|Add2~5\) # (!\uart_tx_u1|byte_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|byte_cnt\(3),
	datad => VCC,
	cin => \uart_tx_u1|Add2~5\,
	combout => \uart_tx_u1|Add2~6_combout\,
	cout => \uart_tx_u1|Add2~7\);

-- Location: LCCOMB_X51_Y24_N0
\uart_tx_u1|Selector517~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector517~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|Add2~6_combout\,
	combout => \uart_tx_u1|Selector517~0_combout\);

-- Location: FF_X51_Y24_N1
\uart_tx_u1|byte_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector517~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|byte_cnt\(3));

-- Location: LCCOMB_X51_Y24_N20
\uart_tx_u1|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add2~8_combout\ = (\uart_tx_u1|byte_cnt\(4) & (\uart_tx_u1|Add2~7\ $ (GND))) # (!\uart_tx_u1|byte_cnt\(4) & (!\uart_tx_u1|Add2~7\ & VCC))
-- \uart_tx_u1|Add2~9\ = CARRY((\uart_tx_u1|byte_cnt\(4) & !\uart_tx_u1|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|byte_cnt\(4),
	datad => VCC,
	cin => \uart_tx_u1|Add2~7\,
	combout => \uart_tx_u1|Add2~8_combout\,
	cout => \uart_tx_u1|Add2~9\);

-- Location: LCCOMB_X50_Y24_N10
\uart_tx_u1|Selector516~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector516~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datac => \uart_tx_u1|Add2~8_combout\,
	combout => \uart_tx_u1|Selector516~0_combout\);

-- Location: FF_X50_Y24_N11
\uart_tx_u1|byte_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector516~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|byte_cnt\(4));

-- Location: LCCOMB_X51_Y24_N22
\uart_tx_u1|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add2~10_combout\ = (\uart_tx_u1|byte_cnt\(5) & (!\uart_tx_u1|Add2~9\)) # (!\uart_tx_u1|byte_cnt\(5) & ((\uart_tx_u1|Add2~9\) # (GND)))
-- \uart_tx_u1|Add2~11\ = CARRY((!\uart_tx_u1|Add2~9\) # (!\uart_tx_u1|byte_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|byte_cnt\(5),
	datad => VCC,
	cin => \uart_tx_u1|Add2~9\,
	combout => \uart_tx_u1|Add2~10_combout\,
	cout => \uart_tx_u1|Add2~11\);

-- Location: LCCOMB_X50_Y24_N16
\uart_tx_u1|Selector515~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector515~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|Add2~10_combout\,
	combout => \uart_tx_u1|Selector515~0_combout\);

-- Location: FF_X50_Y24_N17
\uart_tx_u1|byte_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector515~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|byte_cnt\(5));

-- Location: LCCOMB_X50_Y24_N24
\uart_tx_u1|Selector513~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector513~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|Add2~14_combout\,
	combout => \uart_tx_u1|Selector513~0_combout\);

-- Location: FF_X50_Y24_N25
\uart_tx_u1|byte_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector513~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|byte_cnt\(7));

-- Location: LCCOMB_X52_Y24_N24
\uart_tx_u1|Selector522~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector522~3_combout\ = (\uart_tx_u1|state.S_START~q\ & ((\uart_tx_u1|byte_cnt\(7)) # (\uart_tx_u1|byte_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|byte_cnt\(7),
	datab => \uart_tx_u1|byte_cnt\(6),
	datad => \uart_tx_u1|state.S_START~q\,
	combout => \uart_tx_u1|Selector522~3_combout\);

-- Location: LCCOMB_X52_Y24_N10
\uart_tx_u1|Selector526~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector526~2_combout\ = (\uart_tx_u1|Selector522~3_combout\) # ((\uart_tx_u1|Selector526~1_combout\ & \uart_tx_u1|always1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Selector526~1_combout\,
	datab => \uart_tx_u1|Selector522~3_combout\,
	datad => \uart_tx_u1|always1~3_combout\,
	combout => \uart_tx_u1|Selector526~2_combout\);

-- Location: FF_X52_Y24_N11
\uart_tx_u1|cmd_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector526~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|cmd_done~q\);

-- Location: LCCOMB_X45_Y24_N26
\Selector264~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector264~0_combout\ = (\uart_tx_u1|cmd_done~q\ & \cmd_step.1011~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|cmd_done~q\,
	datad => \cmd_step.1011~q\,
	combout => \Selector264~0_combout\);

-- Location: FF_X45_Y24_N27
\cmd_step.1100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector264~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cmd_step.1100~q\);

-- Location: LCCOMB_X45_Y25_N26
\WideOr36~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr36~1_combout\ = (!\cmd_step.1100~q\ & (!\cmd_step.0010~q\ & (!\cmd_step.0110~q\ & !\cmd_step.0100~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_step.1100~q\,
	datab => \cmd_step.0010~q\,
	datac => \cmd_step.0110~q\,
	datad => \cmd_step.0100~q\,
	combout => \WideOr36~1_combout\);

-- Location: LCCOMB_X45_Y25_N8
\Selector181~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector181~0_combout\ = (\cmd_step.1010~q\) # ((\WideOr36~1_combout\ & (current_cmd(106) & \WideOr36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr36~1_combout\,
	datab => \cmd_step.1010~q\,
	datac => current_cmd(106),
	datad => \WideOr36~0_combout\,
	combout => \Selector181~0_combout\);

-- Location: FF_X45_Y25_N9
\current_cmd[106]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector181~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(106));

-- Location: LCCOMB_X46_Y25_N12
\Selector209~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector209~1_combout\ = ((\WideOr36~1_combout\ & (current_cmd(72) & \WideOr36~0_combout\))) # (!\Selector209~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr36~1_combout\,
	datab => \Selector209~0_combout\,
	datac => current_cmd(72),
	datad => \WideOr36~0_combout\,
	combout => \Selector209~1_combout\);

-- Location: FF_X46_Y25_N13
\current_cmd[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector209~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(72));

-- Location: LCCOMB_X46_Y26_N2
\Selector243~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector243~1_combout\ = ((\cmd_step.0100~q\) # ((current_cmd(32) & !\WideOr36~combout\))) # (!\Selector243~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector243~0_combout\,
	datab => \cmd_step.0100~q\,
	datac => current_cmd(32),
	datad => \WideOr36~combout\,
	combout => \Selector243~1_combout\);

-- Location: FF_X46_Y26_N3
\current_cmd[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector243~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(32));

-- Location: LCCOMB_X45_Y26_N30
\Selector251~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector251~0_combout\ = (\cmd_step.0110~q\) # ((\WideOr36~0_combout\ & (current_cmd(16) & \WideOr36~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmd_step.0110~q\,
	datab => \WideOr36~0_combout\,
	datac => current_cmd(16),
	datad => \WideOr36~1_combout\,
	combout => \Selector251~0_combout\);

-- Location: FF_X45_Y26_N31
\current_cmd[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector251~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(16));

-- Location: LCCOMB_X48_Y26_N30
\uart_tx_u1|Selector496~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector496~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(21))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(21),
	datac => current_cmd(16),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector496~0_combout\);

-- Location: FF_X48_Y26_N31
\uart_tx_u1|shift_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector496~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(16));

-- Location: LCCOMB_X48_Y26_N2
\uart_tx_u1|Selector488~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector488~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(16)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(24),
	datac => \uart_tx_u1|shift_reg\(16),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector488~0_combout\);

-- Location: FF_X48_Y26_N3
\uart_tx_u1|shift_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector488~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(24));

-- Location: LCCOMB_X49_Y26_N28
\uart_tx_u1|Selector480~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector480~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(24)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(32)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(32),
	datad => \uart_tx_u1|shift_reg\(24),
	combout => \uart_tx_u1|Selector480~0_combout\);

-- Location: FF_X49_Y26_N29
\uart_tx_u1|shift_reg[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector480~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(32));

-- Location: LCCOMB_X46_Y25_N10
\Selector236~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector236~0_combout\ = (\cmd_step.0110~q\) # (((\WideOr36~1_combout\ & current_cmd(40))) # (!\WideOr36~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr36~1_combout\,
	datab => \cmd_step.0110~q\,
	datac => current_cmd(40),
	datad => \WideOr36~0_combout\,
	combout => \Selector236~0_combout\);

-- Location: FF_X46_Y25_N11
\current_cmd[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector236~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(40));

-- Location: LCCOMB_X46_Y25_N20
\uart_tx_u1|Selector472~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector472~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(32))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(40))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => \uart_tx_u1|shift_reg\(32),
	datad => current_cmd(40),
	combout => \uart_tx_u1|Selector472~0_combout\);

-- Location: FF_X46_Y25_N21
\uart_tx_u1|shift_reg[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector472~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(40));

-- Location: LCCOMB_X46_Y25_N26
\uart_tx_u1|Selector464~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector464~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(40))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(40),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => current_cmd(28),
	combout => \uart_tx_u1|Selector464~0_combout\);

-- Location: FF_X46_Y25_N27
\uart_tx_u1|shift_reg[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector464~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(48));

-- Location: LCCOMB_X46_Y25_N28
\uart_tx_u1|Selector456~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector456~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(48))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(48),
	datab => current_cmd(56),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector456~0_combout\);

-- Location: FF_X46_Y25_N29
\uart_tx_u1|shift_reg[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector456~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(56));

-- Location: LCCOMB_X46_Y25_N18
\uart_tx_u1|Selector448~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector448~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(56)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(64)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(64),
	datad => \uart_tx_u1|shift_reg\(56),
	combout => \uart_tx_u1|Selector448~0_combout\);

-- Location: FF_X46_Y25_N19
\uart_tx_u1|shift_reg[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector448~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(64));

-- Location: LCCOMB_X46_Y25_N14
\uart_tx_u1|Selector440~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector440~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(64)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(72)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(72),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(64),
	combout => \uart_tx_u1|Selector440~0_combout\);

-- Location: FF_X46_Y25_N15
\uart_tx_u1|shift_reg[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector440~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(72));

-- Location: LCCOMB_X46_Y25_N16
\uart_tx_u1|Selector432~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector432~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(72)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(72)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(72),
	datab => \uart_tx_u1|shift_reg\(72),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector432~0_combout\);

-- Location: FF_X46_Y25_N17
\uart_tx_u1|shift_reg[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector432~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(80));

-- Location: LCCOMB_X46_Y25_N30
\uart_tx_u1|Selector424~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector424~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(80)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(100)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_cmd(100),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(80),
	combout => \uart_tx_u1|Selector424~0_combout\);

-- Location: FF_X46_Y25_N31
\uart_tx_u1|shift_reg[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector424~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(88));

-- Location: LCCOMB_X46_Y24_N30
\uart_tx_u1|Selector416~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector416~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(88))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(64))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(88),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => current_cmd(64),
	combout => \uart_tx_u1|Selector416~0_combout\);

-- Location: FF_X46_Y24_N31
\uart_tx_u1|shift_reg[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector416~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(96));

-- Location: LCCOMB_X46_Y24_N4
\Selector182~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector182~0_combout\ = ((\WideOr36~0_combout\ & (current_cmd(104) & \WideOr36~1_combout\))) # (!\Selector242~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector242~0_combout\,
	datab => \WideOr36~0_combout\,
	datac => current_cmd(104),
	datad => \WideOr36~1_combout\,
	combout => \Selector182~0_combout\);

-- Location: FF_X46_Y24_N5
\current_cmd[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector182~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \cmd_step~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_cmd(104));

-- Location: LCCOMB_X46_Y24_N20
\uart_tx_u1|Selector408~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector408~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(96))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(104))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(96),
	datab => current_cmd(104),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector408~0_combout\);

-- Location: FF_X46_Y24_N21
\uart_tx_u1|shift_reg[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector408~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(104));

-- Location: LCCOMB_X46_Y27_N12
\uart_tx_u1|Selector400~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector400~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(104))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(112))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(104),
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => current_cmd(112),
	combout => \uart_tx_u1|Selector400~0_combout\);

-- Location: FF_X46_Y27_N13
\uart_tx_u1|shift_reg[112]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector400~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(112));

-- Location: LCCOMB_X46_Y27_N10
\uart_tx_u1|Selector392~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector392~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(112))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(115))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(112),
	datab => current_cmd(115),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector392~0_combout\);

-- Location: FF_X46_Y27_N11
\uart_tx_u1|shift_reg[120]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector392~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(120));

-- Location: LCCOMB_X50_Y27_N10
\uart_tx_u1|Selector384~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector384~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(120)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(115)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(115),
	datac => \uart_tx_u1|shift_reg\(120),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector384~0_combout\);

-- Location: FF_X50_Y27_N11
\uart_tx_u1|shift_reg[128]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector384~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(128));

-- Location: LCCOMB_X50_Y27_N26
\uart_tx_u1|Selector376~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector376~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(128))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(128),
	combout => \uart_tx_u1|Selector376~0_combout\);

-- Location: FF_X50_Y27_N27
\uart_tx_u1|shift_reg[136]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector376~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(136));

-- Location: LCCOMB_X50_Y27_N30
\uart_tx_u1|Selector368~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector368~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(136)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(115)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(115),
	datac => \uart_tx_u1|shift_reg\(136),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector368~0_combout\);

-- Location: FF_X50_Y27_N31
\uart_tx_u1|shift_reg[144]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector368~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(144));

-- Location: LCCOMB_X50_Y27_N22
\uart_tx_u1|Selector360~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector360~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(144))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => \uart_tx_u1|shift_reg\(144),
	datad => current_cmd(101),
	combout => \uart_tx_u1|Selector360~0_combout\);

-- Location: FF_X50_Y27_N23
\uart_tx_u1|shift_reg[152]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector360~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(152));

-- Location: LCCOMB_X50_Y27_N6
\uart_tx_u1|Selector352~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector352~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(152)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(107)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(107),
	datac => \uart_tx_u1|shift_reg\(152),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector352~0_combout\);

-- Location: FF_X50_Y27_N7
\uart_tx_u1|shift_reg[160]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector352~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(160));

-- Location: LCCOMB_X50_Y27_N24
\uart_tx_u1|Selector344~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector344~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(160))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(160),
	combout => \uart_tx_u1|Selector344~0_combout\);

-- Location: FF_X50_Y27_N25
\uart_tx_u1|shift_reg[168]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector344~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(168));

-- Location: LCCOMB_X50_Y27_N2
\uart_tx_u1|Selector336~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector336~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(168))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(168),
	combout => \uart_tx_u1|Selector336~0_combout\);

-- Location: FF_X50_Y27_N3
\uart_tx_u1|shift_reg[176]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector336~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(176));

-- Location: LCCOMB_X50_Y27_N0
\uart_tx_u1|Selector328~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector328~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(176)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(107)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(107),
	datab => \uart_tx_u1|shift_reg\(176),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector328~0_combout\);

-- Location: FF_X50_Y27_N1
\uart_tx_u1|shift_reg[184]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector328~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(184));

-- Location: LCCOMB_X50_Y27_N14
\uart_tx_u1|Selector320~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector320~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(184)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(107)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_cmd(107),
	datab => \uart_tx_u1|shift_reg\(184),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector320~0_combout\);

-- Location: FF_X50_Y27_N15
\uart_tx_u1|shift_reg[192]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector320~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(192));

-- Location: LCCOMB_X51_Y27_N10
\uart_tx_u1|Selector312~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector312~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(192))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(192),
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => current_cmd(106),
	combout => \uart_tx_u1|Selector312~0_combout\);

-- Location: FF_X51_Y27_N11
\uart_tx_u1|shift_reg[200]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector312~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(200));

-- Location: LCCOMB_X51_Y27_N24
\uart_tx_u1|Selector304~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector304~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(200)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(107)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(107),
	datad => \uart_tx_u1|shift_reg\(200),
	combout => \uart_tx_u1|Selector304~0_combout\);

-- Location: FF_X51_Y27_N25
\uart_tx_u1|shift_reg[208]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector304~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(208));

-- Location: LCCOMB_X51_Y27_N22
\uart_tx_u1|Selector296~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector296~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(208)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(107)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(107),
	datad => \uart_tx_u1|shift_reg\(208),
	combout => \uart_tx_u1|Selector296~0_combout\);

-- Location: FF_X51_Y27_N23
\uart_tx_u1|shift_reg[216]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector296~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(216));

-- Location: LCCOMB_X51_Y27_N20
\uart_tx_u1|Selector288~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector288~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(216))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(216),
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => current_cmd(106),
	combout => \uart_tx_u1|Selector288~0_combout\);

-- Location: FF_X51_Y27_N21
\uart_tx_u1|shift_reg[224]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector288~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(224));

-- Location: LCCOMB_X51_Y27_N18
\uart_tx_u1|Selector280~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector280~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(224)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(101),
	datad => \uart_tx_u1|shift_reg\(224),
	combout => \uart_tx_u1|Selector280~0_combout\);

-- Location: FF_X51_Y27_N19
\uart_tx_u1|shift_reg[232]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector280~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(232));

-- Location: LCCOMB_X51_Y27_N0
\uart_tx_u1|Selector272~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector272~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(232))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(232),
	combout => \uart_tx_u1|Selector272~0_combout\);

-- Location: FF_X51_Y27_N1
\uart_tx_u1|shift_reg[240]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector272~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(240));

-- Location: LCCOMB_X51_Y27_N26
\uart_tx_u1|Selector264~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector264~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(240)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(107)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(107),
	datad => \uart_tx_u1|shift_reg\(240),
	combout => \uart_tx_u1|Selector264~0_combout\);

-- Location: FF_X51_Y27_N27
\uart_tx_u1|shift_reg[248]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector264~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(248));

-- Location: LCCOMB_X51_Y27_N12
\uart_tx_u1|Selector256~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector256~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(248))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(107))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(248),
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(107),
	combout => \uart_tx_u1|Selector256~0_combout\);

-- Location: FF_X51_Y27_N13
\uart_tx_u1|shift_reg[256]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector256~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(256));

-- Location: LCCOMB_X51_Y27_N2
\uart_tx_u1|Selector248~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector248~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(256)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(101),
	datad => \uart_tx_u1|shift_reg\(256),
	combout => \uart_tx_u1|Selector248~0_combout\);

-- Location: FF_X51_Y27_N3
\uart_tx_u1|shift_reg[264]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector248~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(264));

-- Location: LCCOMB_X51_Y27_N28
\uart_tx_u1|Selector240~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector240~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(264)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(107)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(107),
	datad => \uart_tx_u1|shift_reg\(264),
	combout => \uart_tx_u1|Selector240~0_combout\);

-- Location: FF_X51_Y27_N29
\uart_tx_u1|shift_reg[272]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector240~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(272));

-- Location: LCCOMB_X50_Y27_N8
\uart_tx_u1|Selector232~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector232~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(272))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(107))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datab => \uart_tx_u1|shift_reg\(272),
	datad => current_cmd(107),
	combout => \uart_tx_u1|Selector232~0_combout\);

-- Location: FF_X50_Y25_N5
\uart_tx_u1|shift_reg[280]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uart_tx_u1|Selector232~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(280));

-- Location: LCCOMB_X50_Y25_N12
\uart_tx_u1|Selector224~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector224~0_combout\ = (\uart_tx_u1|shift_reg\(280) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(280),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector224~0_combout\);

-- Location: FF_X50_Y25_N13
\uart_tx_u1|shift_reg[288]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector224~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(288));

-- Location: LCCOMB_X50_Y25_N10
\uart_tx_u1|Selector216~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector216~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(288)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(107)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(107),
	datad => \uart_tx_u1|shift_reg\(288),
	combout => \uart_tx_u1|Selector216~0_combout\);

-- Location: FF_X50_Y25_N11
\uart_tx_u1|shift_reg[296]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector216~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(296));

-- Location: LCCOMB_X50_Y25_N28
\uart_tx_u1|Selector208~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector208~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(296))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(296),
	combout => \uart_tx_u1|Selector208~0_combout\);

-- Location: FF_X50_Y25_N29
\uart_tx_u1|shift_reg[304]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector208~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(304));

-- Location: LCCOMB_X51_Y25_N18
\uart_tx_u1|Selector200~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector200~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(304)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(106),
	datad => \uart_tx_u1|shift_reg\(304),
	combout => \uart_tx_u1|Selector200~0_combout\);

-- Location: FF_X51_Y25_N19
\uart_tx_u1|shift_reg[312]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector200~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(312));

-- Location: LCCOMB_X51_Y25_N20
\uart_tx_u1|Selector192~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector192~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(312))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(312),
	combout => \uart_tx_u1|Selector192~0_combout\);

-- Location: FF_X51_Y25_N21
\uart_tx_u1|shift_reg[320]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector192~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(320));

-- Location: LCCOMB_X51_Y25_N14
\uart_tx_u1|Selector184~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector184~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(320))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(320),
	combout => \uart_tx_u1|Selector184~0_combout\);

-- Location: FF_X51_Y25_N15
\uart_tx_u1|shift_reg[328]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector184~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(328));

-- Location: LCCOMB_X51_Y25_N24
\uart_tx_u1|Selector176~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector176~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(328))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(328),
	datac => current_cmd(106),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector176~0_combout\);

-- Location: FF_X51_Y25_N25
\uart_tx_u1|shift_reg[336]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector176~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(336));

-- Location: LCCOMB_X51_Y25_N10
\uart_tx_u1|Selector168~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector168~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(336)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(106),
	datad => \uart_tx_u1|shift_reg\(336),
	combout => \uart_tx_u1|Selector168~0_combout\);

-- Location: FF_X51_Y25_N11
\uart_tx_u1|shift_reg[344]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector168~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(344));

-- Location: LCCOMB_X51_Y25_N28
\uart_tx_u1|Selector160~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector160~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(344))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(344),
	combout => \uart_tx_u1|Selector160~0_combout\);

-- Location: FF_X51_Y25_N29
\uart_tx_u1|shift_reg[352]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector160~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(352));

-- Location: LCCOMB_X51_Y25_N26
\uart_tx_u1|Selector152~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector152~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(352)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(106),
	datad => \uart_tx_u1|shift_reg\(352),
	combout => \uart_tx_u1|Selector152~0_combout\);

-- Location: FF_X51_Y25_N27
\uart_tx_u1|shift_reg[360]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector152~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(360));

-- Location: LCCOMB_X51_Y25_N16
\uart_tx_u1|Selector144~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector144~0_combout\ = (\uart_tx_u1|shift_reg\(360) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|shift_reg\(360),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector144~0_combout\);

-- Location: FF_X51_Y25_N17
\uart_tx_u1|shift_reg[368]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector144~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(368));

-- Location: LCCOMB_X51_Y25_N22
\uart_tx_u1|Selector136~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector136~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(368)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(106),
	datad => \uart_tx_u1|shift_reg\(368),
	combout => \uart_tx_u1|Selector136~0_combout\);

-- Location: FF_X51_Y25_N23
\uart_tx_u1|shift_reg[376]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector136~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(376));

-- Location: LCCOMB_X51_Y25_N0
\uart_tx_u1|Selector128~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector128~0_combout\ = (\uart_tx_u1|shift_reg\(376) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|shift_reg\(376),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector128~0_combout\);

-- Location: FF_X51_Y25_N1
\uart_tx_u1|shift_reg[384]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector128~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(384));

-- Location: LCCOMB_X51_Y25_N2
\uart_tx_u1|Selector120~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector120~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(384)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(106),
	datad => \uart_tx_u1|shift_reg\(384),
	combout => \uart_tx_u1|Selector120~0_combout\);

-- Location: FF_X51_Y25_N3
\uart_tx_u1|shift_reg[392]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector120~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(392));

-- Location: LCCOMB_X51_Y25_N8
\uart_tx_u1|Selector112~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector112~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(392)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(106),
	datad => \uart_tx_u1|shift_reg\(392),
	combout => \uart_tx_u1|Selector112~0_combout\);

-- Location: FF_X51_Y25_N9
\uart_tx_u1|shift_reg[400]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector112~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(400));

-- Location: LCCOMB_X51_Y25_N30
\uart_tx_u1|Selector104~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector104~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (\uart_tx_u1|shift_reg\(400))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((current_cmd(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(400),
	datac => current_cmd(106),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector104~0_combout\);

-- Location: FF_X51_Y25_N31
\uart_tx_u1|shift_reg[408]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector104~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(408));

-- Location: LCCOMB_X51_Y25_N12
\uart_tx_u1|Selector96~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector96~0_combout\ = (\uart_tx_u1|shift_reg\(408) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|shift_reg\(408),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector96~0_combout\);

-- Location: FF_X51_Y25_N13
\uart_tx_u1|shift_reg[416]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector96~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(416));

-- Location: LCCOMB_X51_Y25_N6
\uart_tx_u1|Selector88~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector88~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & ((\uart_tx_u1|shift_reg\(416)))) # (!\uart_tx_u1|state.S_IDLE~q\ & (current_cmd(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datac => current_cmd(106),
	datad => \uart_tx_u1|shift_reg\(416),
	combout => \uart_tx_u1|Selector88~0_combout\);

-- Location: FF_X51_Y25_N7
\uart_tx_u1|shift_reg[424]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector88~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(424));

-- Location: LCCOMB_X50_Y25_N18
\uart_tx_u1|Selector80~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector80~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(424))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(424),
	combout => \uart_tx_u1|Selector80~0_combout\);

-- Location: FF_X50_Y25_N19
\uart_tx_u1|shift_reg[432]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector80~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(432));

-- Location: LCCOMB_X49_Y23_N24
\uart_tx_u1|Selector72~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector72~0_combout\ = (\uart_tx_u1|shift_reg\(432) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(432),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector72~0_combout\);

-- Location: FF_X49_Y23_N25
\uart_tx_u1|shift_reg[440]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector72~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(440));

-- Location: LCCOMB_X49_Y23_N26
\uart_tx_u1|Selector64~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector64~0_combout\ = (\uart_tx_u1|shift_reg\(440) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|shift_reg\(440),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector64~0_combout\);

-- Location: FF_X49_Y23_N27
\uart_tx_u1|shift_reg[448]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector64~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(448));

-- Location: LCCOMB_X49_Y23_N4
\uart_tx_u1|Selector56~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector56~0_combout\ = (\uart_tx_u1|shift_reg\(448) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|shift_reg\(448),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector56~0_combout\);

-- Location: FF_X49_Y23_N5
\uart_tx_u1|shift_reg[456]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector56~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(456));

-- Location: LCCOMB_X49_Y23_N6
\uart_tx_u1|Selector48~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector48~0_combout\ = (\uart_tx_u1|shift_reg\(456) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|shift_reg\(456),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector48~0_combout\);

-- Location: FF_X49_Y23_N7
\uart_tx_u1|shift_reg[464]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector48~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(464));

-- Location: LCCOMB_X49_Y23_N0
\uart_tx_u1|Selector40~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector40~0_combout\ = (\uart_tx_u1|shift_reg\(464) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(464),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector40~0_combout\);

-- Location: FF_X50_Y23_N25
\uart_tx_u1|shift_reg[472]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uart_tx_u1|Selector40~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(472));

-- Location: LCCOMB_X50_Y23_N12
\uart_tx_u1|Selector32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector32~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(472))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(472),
	combout => \uart_tx_u1|Selector32~0_combout\);

-- Location: FF_X50_Y23_N13
\uart_tx_u1|shift_reg[480]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector32~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(480));

-- Location: LCCOMB_X50_Y23_N30
\uart_tx_u1|Selector24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector24~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|shift_reg\(480))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|shift_reg\(480),
	combout => \uart_tx_u1|Selector24~0_combout\);

-- Location: FF_X50_Y23_N31
\uart_tx_u1|shift_reg[488]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector24~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(488));

-- Location: LCCOMB_X50_Y23_N24
\uart_tx_u1|Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector16~0_combout\ = (\uart_tx_u1|shift_reg\(488) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(488),
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector16~0_combout\);

-- Location: FF_X50_Y24_N31
\uart_tx_u1|shift_reg[496]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uart_tx_u1|Selector16~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(496));

-- Location: LCCOMB_X50_Y24_N14
\uart_tx_u1|Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector8~0_combout\ = (\uart_tx_u1|shift_reg\(496) & \uart_tx_u1|state.S_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(496),
	datac => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector8~0_combout\);

-- Location: FF_X50_Y24_N15
\uart_tx_u1|shift_reg[504]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector8~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_reg\(504));

-- Location: LCCOMB_X52_Y24_N0
\uart_tx_u1|Selector521~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector521~0_combout\ = (\uart_tx_u1|state.S_START~q\ & (!\uart_tx_u1|byte_cnt\(7) & !\uart_tx_u1|byte_cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_START~q\,
	datac => \uart_tx_u1|byte_cnt\(7),
	datad => \uart_tx_u1|byte_cnt\(6),
	combout => \uart_tx_u1|Selector521~0_combout\);

-- Location: LCCOMB_X52_Y24_N14
\uart_tx_u1|Selector524~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector524~0_combout\ = (\uart_tx_u1|Selector521~0_combout\ & ((\uart_tx_u1|shift_reg\(504)) # ((!\uart_tx_u1|always1~0_combout\) # (!\uart_tx_u1|always1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_reg\(504),
	datab => \uart_tx_u1|Selector521~0_combout\,
	datac => \uart_tx_u1|always1~1_combout\,
	datad => \uart_tx_u1|always1~0_combout\,
	combout => \uart_tx_u1|Selector524~0_combout\);

-- Location: LCCOMB_X53_Y24_N20
\uart_tx_u1|bit_idx[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|bit_idx[0]~0_combout\ = (!\uart_tx_u1|Selector524~0_combout\ & (((\uart_tx_u1|Equal2~0_combout\) # (\uart_tx_u1|Equal0~4_combout\)) # (!\uart_tx_u1|state.S_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_DATA~q\,
	datab => \uart_tx_u1|Equal2~0_combout\,
	datac => \uart_tx_u1|Equal0~4_combout\,
	datad => \uart_tx_u1|Selector524~0_combout\,
	combout => \uart_tx_u1|bit_idx[0]~0_combout\);

-- Location: LCCOMB_X53_Y24_N18
\uart_tx_u1|bit_idx[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|bit_idx[0]~1_combout\ = (\uart_tx_u1|bit_idx\(0) & ((\uart_tx_u1|bit_idx[0]~0_combout\))) # (!\uart_tx_u1|bit_idx\(0) & (\uart_tx_u1|state.S_DATA~q\ & !\uart_tx_u1|bit_idx[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_DATA~q\,
	datac => \uart_tx_u1|bit_idx\(0),
	datad => \uart_tx_u1|bit_idx[0]~0_combout\,
	combout => \uart_tx_u1|bit_idx[0]~1_combout\);

-- Location: FF_X53_Y24_N19
\uart_tx_u1|bit_idx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|bit_idx[0]~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|bit_idx\(0));

-- Location: LCCOMB_X53_Y24_N12
\uart_tx_u1|bit_idx[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|bit_idx[1]~2_combout\ = (\uart_tx_u1|bit_idx[0]~0_combout\ & (((\uart_tx_u1|bit_idx\(1))))) # (!\uart_tx_u1|bit_idx[0]~0_combout\ & (\uart_tx_u1|state.S_DATA~q\ & (\uart_tx_u1|bit_idx\(0) $ (\uart_tx_u1|bit_idx\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_DATA~q\,
	datab => \uart_tx_u1|bit_idx\(0),
	datac => \uart_tx_u1|bit_idx\(1),
	datad => \uart_tx_u1|bit_idx[0]~0_combout\,
	combout => \uart_tx_u1|bit_idx[1]~2_combout\);

-- Location: FF_X53_Y24_N13
\uart_tx_u1|bit_idx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|bit_idx[1]~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|bit_idx\(1));

-- Location: LCCOMB_X53_Y24_N22
\uart_tx_u1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Add1~0_combout\ = \uart_tx_u1|bit_idx\(2) $ (((\uart_tx_u1|bit_idx\(1) & \uart_tx_u1|bit_idx\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|bit_idx\(1),
	datab => \uart_tx_u1|bit_idx\(0),
	datad => \uart_tx_u1|bit_idx\(2),
	combout => \uart_tx_u1|Add1~0_combout\);

-- Location: LCCOMB_X53_Y24_N16
\uart_tx_u1|bit_idx[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|bit_idx[2]~3_combout\ = (\uart_tx_u1|bit_idx[0]~0_combout\ & (((\uart_tx_u1|bit_idx\(2))))) # (!\uart_tx_u1|bit_idx[0]~0_combout\ & (\uart_tx_u1|state.S_DATA~q\ & (\uart_tx_u1|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_DATA~q\,
	datab => \uart_tx_u1|Add1~0_combout\,
	datac => \uart_tx_u1|bit_idx\(2),
	datad => \uart_tx_u1|bit_idx[0]~0_combout\,
	combout => \uart_tx_u1|bit_idx[2]~3_combout\);

-- Location: FF_X53_Y24_N17
\uart_tx_u1|bit_idx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|bit_idx[2]~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|bit_idx\(2));

-- Location: LCCOMB_X53_Y24_N10
\uart_tx_u1|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Equal2~0_combout\ = (\uart_tx_u1|bit_idx\(1) & (\uart_tx_u1|bit_idx\(2) & \uart_tx_u1|bit_idx\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|bit_idx\(1),
	datab => \uart_tx_u1|bit_idx\(2),
	datad => \uart_tx_u1|bit_idx\(0),
	combout => \uart_tx_u1|Equal2~0_combout\);

-- Location: LCCOMB_X53_Y24_N6
\uart_tx_u1|Selector524~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector524~1_combout\ = (\uart_tx_u1|Equal0~4_combout\ & (((\uart_tx_u1|state.S_DATA~q\)))) # (!\uart_tx_u1|Equal0~4_combout\ & ((\uart_tx_u1|Selector524~0_combout\) # ((!\uart_tx_u1|Equal2~0_combout\ & \uart_tx_u1|state.S_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Equal2~0_combout\,
	datab => \uart_tx_u1|Equal0~4_combout\,
	datac => \uart_tx_u1|state.S_DATA~q\,
	datad => \uart_tx_u1|Selector524~0_combout\,
	combout => \uart_tx_u1|Selector524~1_combout\);

-- Location: FF_X53_Y24_N7
\uart_tx_u1|state.S_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector524~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|state.S_DATA~q\);

-- Location: LCCOMB_X52_Y24_N12
\uart_tx_u1|Selector521~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector521~3_combout\ = (\uart_tx_u1|state.S_DATA~q\) # ((\uart_tx_u1|Selector521~0_combout\) # ((\tx_start~q\ & !\uart_tx_u1|state.S_IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_DATA~q\,
	datab => \tx_start~q\,
	datac => \uart_tx_u1|Selector521~0_combout\,
	datad => \uart_tx_u1|state.S_IDLE~q\,
	combout => \uart_tx_u1|Selector521~3_combout\);

-- Location: LCCOMB_X52_Y24_N8
\uart_tx_u1|Selector521~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector521~1_combout\ = (\uart_tx_u1|state.S_DATA~q\) # ((\uart_tx_u1|state.S_STOP~q\) # (\uart_tx_u1|Selector521~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_DATA~q\,
	datab => \uart_tx_u1|state.S_STOP~q\,
	datad => \uart_tx_u1|Selector521~0_combout\,
	combout => \uart_tx_u1|Selector521~1_combout\);

-- Location: LCCOMB_X52_Y24_N22
\uart_tx_u1|Selector521~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector521~2_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & (((\uart_tx_u1|Selector521~1_combout\ & \uart_tx_u1|tx_busy~q\)))) # (!\uart_tx_u1|state.S_IDLE~q\ & ((\tx_start~q\) # ((\uart_tx_u1|Selector521~1_combout\ & \uart_tx_u1|tx_busy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_IDLE~q\,
	datab => \tx_start~q\,
	datac => \uart_tx_u1|Selector521~1_combout\,
	datad => \uart_tx_u1|tx_busy~q\,
	combout => \uart_tx_u1|Selector521~2_combout\);

-- Location: LCCOMB_X52_Y24_N20
\uart_tx_u1|Selector521~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector521~4_combout\ = (\uart_tx_u1|Selector521~2_combout\ & ((\uart_tx_u1|Selector521~3_combout\) # ((\uart_tx_u1|Equal0~4_combout\) # (!\uart_tx_u1|always1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Selector521~3_combout\,
	datab => \uart_tx_u1|Equal0~4_combout\,
	datac => \uart_tx_u1|Selector521~2_combout\,
	datad => \uart_tx_u1|always1~3_combout\,
	combout => \uart_tx_u1|Selector521~4_combout\);

-- Location: FF_X52_Y24_N21
\uart_tx_u1|tx_busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector521~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|tx_busy~q\);

-- Location: LCCOMB_X49_Y24_N26
\uart_tx_u1|baud_cnt[10]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|baud_cnt[10]~20_combout\ = (!\uart_tx_u1|Equal0~4_combout\) # (!\uart_tx_u1|tx_busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|tx_busy~q\,
	datad => \uart_tx_u1|Equal0~4_combout\,
	combout => \uart_tx_u1|baud_cnt[10]~20_combout\);

-- Location: FF_X48_Y24_N1
\uart_tx_u1|baud_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|baud_cnt[0]~16_combout\,
	clrn => \rst_n~input_o\,
	sclr => \uart_tx_u1|baud_cnt[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|baud_cnt\(0));

-- Location: LCCOMB_X48_Y24_N2
\uart_tx_u1|baud_cnt[1]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|baud_cnt[1]~18_combout\ = (\uart_tx_u1|baud_cnt\(1) & (!\uart_tx_u1|baud_cnt[0]~17\)) # (!\uart_tx_u1|baud_cnt\(1) & ((\uart_tx_u1|baud_cnt[0]~17\) # (GND)))
-- \uart_tx_u1|baud_cnt[1]~19\ = CARRY((!\uart_tx_u1|baud_cnt[0]~17\) # (!\uart_tx_u1|baud_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|baud_cnt\(1),
	datad => VCC,
	cin => \uart_tx_u1|baud_cnt[0]~17\,
	combout => \uart_tx_u1|baud_cnt[1]~18_combout\,
	cout => \uart_tx_u1|baud_cnt[1]~19\);

-- Location: FF_X48_Y24_N3
\uart_tx_u1|baud_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|baud_cnt[1]~18_combout\,
	clrn => \rst_n~input_o\,
	sclr => \uart_tx_u1|baud_cnt[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|baud_cnt\(1));

-- Location: LCCOMB_X48_Y24_N4
\uart_tx_u1|baud_cnt[2]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|baud_cnt[2]~21_combout\ = (\uart_tx_u1|baud_cnt\(2) & (\uart_tx_u1|baud_cnt[1]~19\ $ (GND))) # (!\uart_tx_u1|baud_cnt\(2) & (!\uart_tx_u1|baud_cnt[1]~19\ & VCC))
-- \uart_tx_u1|baud_cnt[2]~22\ = CARRY((\uart_tx_u1|baud_cnt\(2) & !\uart_tx_u1|baud_cnt[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|baud_cnt\(2),
	datad => VCC,
	cin => \uart_tx_u1|baud_cnt[1]~19\,
	combout => \uart_tx_u1|baud_cnt[2]~21_combout\,
	cout => \uart_tx_u1|baud_cnt[2]~22\);

-- Location: FF_X48_Y24_N5
\uart_tx_u1|baud_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|baud_cnt[2]~21_combout\,
	clrn => \rst_n~input_o\,
	sclr => \uart_tx_u1|baud_cnt[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|baud_cnt\(2));

-- Location: LCCOMB_X48_Y24_N6
\uart_tx_u1|baud_cnt[3]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|baud_cnt[3]~23_combout\ = (\uart_tx_u1|baud_cnt\(3) & (!\uart_tx_u1|baud_cnt[2]~22\)) # (!\uart_tx_u1|baud_cnt\(3) & ((\uart_tx_u1|baud_cnt[2]~22\) # (GND)))
-- \uart_tx_u1|baud_cnt[3]~24\ = CARRY((!\uart_tx_u1|baud_cnt[2]~22\) # (!\uart_tx_u1|baud_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|baud_cnt\(3),
	datad => VCC,
	cin => \uart_tx_u1|baud_cnt[2]~22\,
	combout => \uart_tx_u1|baud_cnt[3]~23_combout\,
	cout => \uart_tx_u1|baud_cnt[3]~24\);

-- Location: FF_X48_Y24_N7
\uart_tx_u1|baud_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|baud_cnt[3]~23_combout\,
	clrn => \rst_n~input_o\,
	sclr => \uart_tx_u1|baud_cnt[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|baud_cnt\(3));

-- Location: LCCOMB_X48_Y24_N8
\uart_tx_u1|baud_cnt[4]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|baud_cnt[4]~25_combout\ = (\uart_tx_u1|baud_cnt\(4) & (\uart_tx_u1|baud_cnt[3]~24\ $ (GND))) # (!\uart_tx_u1|baud_cnt\(4) & (!\uart_tx_u1|baud_cnt[3]~24\ & VCC))
-- \uart_tx_u1|baud_cnt[4]~26\ = CARRY((\uart_tx_u1|baud_cnt\(4) & !\uart_tx_u1|baud_cnt[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|baud_cnt\(4),
	datad => VCC,
	cin => \uart_tx_u1|baud_cnt[3]~24\,
	combout => \uart_tx_u1|baud_cnt[4]~25_combout\,
	cout => \uart_tx_u1|baud_cnt[4]~26\);

-- Location: FF_X48_Y24_N9
\uart_tx_u1|baud_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|baud_cnt[4]~25_combout\,
	clrn => \rst_n~input_o\,
	sclr => \uart_tx_u1|baud_cnt[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|baud_cnt\(4));

-- Location: LCCOMB_X48_Y24_N10
\uart_tx_u1|baud_cnt[5]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|baud_cnt[5]~27_combout\ = (\uart_tx_u1|baud_cnt\(5) & (!\uart_tx_u1|baud_cnt[4]~26\)) # (!\uart_tx_u1|baud_cnt\(5) & ((\uart_tx_u1|baud_cnt[4]~26\) # (GND)))
-- \uart_tx_u1|baud_cnt[5]~28\ = CARRY((!\uart_tx_u1|baud_cnt[4]~26\) # (!\uart_tx_u1|baud_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|baud_cnt\(5),
	datad => VCC,
	cin => \uart_tx_u1|baud_cnt[4]~26\,
	combout => \uart_tx_u1|baud_cnt[5]~27_combout\,
	cout => \uart_tx_u1|baud_cnt[5]~28\);

-- Location: FF_X48_Y24_N11
\uart_tx_u1|baud_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|baud_cnt[5]~27_combout\,
	clrn => \rst_n~input_o\,
	sclr => \uart_tx_u1|baud_cnt[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|baud_cnt\(5));

-- Location: LCCOMB_X48_Y24_N12
\uart_tx_u1|baud_cnt[6]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|baud_cnt[6]~29_combout\ = (\uart_tx_u1|baud_cnt\(6) & (\uart_tx_u1|baud_cnt[5]~28\ $ (GND))) # (!\uart_tx_u1|baud_cnt\(6) & (!\uart_tx_u1|baud_cnt[5]~28\ & VCC))
-- \uart_tx_u1|baud_cnt[6]~30\ = CARRY((\uart_tx_u1|baud_cnt\(6) & !\uart_tx_u1|baud_cnt[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|baud_cnt\(6),
	datad => VCC,
	cin => \uart_tx_u1|baud_cnt[5]~28\,
	combout => \uart_tx_u1|baud_cnt[6]~29_combout\,
	cout => \uart_tx_u1|baud_cnt[6]~30\);

-- Location: FF_X48_Y24_N13
\uart_tx_u1|baud_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|baud_cnt[6]~29_combout\,
	clrn => \rst_n~input_o\,
	sclr => \uart_tx_u1|baud_cnt[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|baud_cnt\(6));

-- Location: LCCOMB_X48_Y24_N14
\uart_tx_u1|baud_cnt[7]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|baud_cnt[7]~31_combout\ = (\uart_tx_u1|baud_cnt\(7) & (!\uart_tx_u1|baud_cnt[6]~30\)) # (!\uart_tx_u1|baud_cnt\(7) & ((\uart_tx_u1|baud_cnt[6]~30\) # (GND)))
-- \uart_tx_u1|baud_cnt[7]~32\ = CARRY((!\uart_tx_u1|baud_cnt[6]~30\) # (!\uart_tx_u1|baud_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|baud_cnt\(7),
	datad => VCC,
	cin => \uart_tx_u1|baud_cnt[6]~30\,
	combout => \uart_tx_u1|baud_cnt[7]~31_combout\,
	cout => \uart_tx_u1|baud_cnt[7]~32\);

-- Location: FF_X48_Y24_N15
\uart_tx_u1|baud_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|baud_cnt[7]~31_combout\,
	clrn => \rst_n~input_o\,
	sclr => \uart_tx_u1|baud_cnt[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|baud_cnt\(7));

-- Location: LCCOMB_X48_Y24_N16
\uart_tx_u1|baud_cnt[8]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|baud_cnt[8]~33_combout\ = (\uart_tx_u1|baud_cnt\(8) & (\uart_tx_u1|baud_cnt[7]~32\ $ (GND))) # (!\uart_tx_u1|baud_cnt\(8) & (!\uart_tx_u1|baud_cnt[7]~32\ & VCC))
-- \uart_tx_u1|baud_cnt[8]~34\ = CARRY((\uart_tx_u1|baud_cnt\(8) & !\uart_tx_u1|baud_cnt[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|baud_cnt\(8),
	datad => VCC,
	cin => \uart_tx_u1|baud_cnt[7]~32\,
	combout => \uart_tx_u1|baud_cnt[8]~33_combout\,
	cout => \uart_tx_u1|baud_cnt[8]~34\);

-- Location: FF_X48_Y24_N17
\uart_tx_u1|baud_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|baud_cnt[8]~33_combout\,
	clrn => \rst_n~input_o\,
	sclr => \uart_tx_u1|baud_cnt[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|baud_cnt\(8));

-- Location: LCCOMB_X48_Y24_N18
\uart_tx_u1|baud_cnt[9]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|baud_cnt[9]~35_combout\ = (\uart_tx_u1|baud_cnt\(9) & (!\uart_tx_u1|baud_cnt[8]~34\)) # (!\uart_tx_u1|baud_cnt\(9) & ((\uart_tx_u1|baud_cnt[8]~34\) # (GND)))
-- \uart_tx_u1|baud_cnt[9]~36\ = CARRY((!\uart_tx_u1|baud_cnt[8]~34\) # (!\uart_tx_u1|baud_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|baud_cnt\(9),
	datad => VCC,
	cin => \uart_tx_u1|baud_cnt[8]~34\,
	combout => \uart_tx_u1|baud_cnt[9]~35_combout\,
	cout => \uart_tx_u1|baud_cnt[9]~36\);

-- Location: FF_X48_Y24_N19
\uart_tx_u1|baud_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|baud_cnt[9]~35_combout\,
	clrn => \rst_n~input_o\,
	sclr => \uart_tx_u1|baud_cnt[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|baud_cnt\(9));

-- Location: LCCOMB_X48_Y24_N20
\uart_tx_u1|baud_cnt[10]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|baud_cnt[10]~37_combout\ = (\uart_tx_u1|baud_cnt\(10) & (\uart_tx_u1|baud_cnt[9]~36\ $ (GND))) # (!\uart_tx_u1|baud_cnt\(10) & (!\uart_tx_u1|baud_cnt[9]~36\ & VCC))
-- \uart_tx_u1|baud_cnt[10]~38\ = CARRY((\uart_tx_u1|baud_cnt\(10) & !\uart_tx_u1|baud_cnt[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|baud_cnt\(10),
	datad => VCC,
	cin => \uart_tx_u1|baud_cnt[9]~36\,
	combout => \uart_tx_u1|baud_cnt[10]~37_combout\,
	cout => \uart_tx_u1|baud_cnt[10]~38\);

-- Location: FF_X48_Y24_N21
\uart_tx_u1|baud_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|baud_cnt[10]~37_combout\,
	clrn => \rst_n~input_o\,
	sclr => \uart_tx_u1|baud_cnt[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|baud_cnt\(10));

-- Location: FF_X48_Y24_N23
\uart_tx_u1|baud_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|baud_cnt[11]~39_combout\,
	clrn => \rst_n~input_o\,
	sclr => \uart_tx_u1|baud_cnt[10]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|baud_cnt\(11));

-- Location: LCCOMB_X49_Y24_N16
\uart_tx_u1|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Equal0~2_combout\ = (\uart_tx_u1|baud_cnt\(11)) # ((\uart_tx_u1|baud_cnt\(10)) # ((\uart_tx_u1|baud_cnt\(9)) # (!\uart_tx_u1|baud_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|baud_cnt\(11),
	datab => \uart_tx_u1|baud_cnt\(10),
	datac => \uart_tx_u1|baud_cnt\(8),
	datad => \uart_tx_u1|baud_cnt\(9),
	combout => \uart_tx_u1|Equal0~2_combout\);

-- Location: LCCOMB_X50_Y24_N2
\uart_tx_u1|Selector526~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector526~0_combout\ = (\uart_tx_u1|state.S_STOP~q\ & !\uart_tx_u1|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_tx_u1|state.S_STOP~q\,
	datad => \uart_tx_u1|Equal0~1_combout\,
	combout => \uart_tx_u1|Selector526~0_combout\);

-- Location: LCCOMB_X50_Y24_N0
\uart_tx_u1|Selector526~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector526~1_combout\ = (!\uart_tx_u1|Equal0~2_combout\ & (!\uart_tx_u1|Equal0~0_combout\ & (!\uart_tx_u1|Equal0~3_combout\ & \uart_tx_u1|Selector526~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Equal0~2_combout\,
	datab => \uart_tx_u1|Equal0~0_combout\,
	datac => \uart_tx_u1|Equal0~3_combout\,
	datad => \uart_tx_u1|Selector526~0_combout\,
	combout => \uart_tx_u1|Selector526~1_combout\);

-- Location: LCCOMB_X51_Y24_N2
\uart_tx_u1|Selector522~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector522~6_combout\ = (!\tx_start~q\ & (!\uart_tx_u1|state.S_IDLE~q\ & (!\uart_tx_u1|Selector526~1_combout\ & !\uart_tx_u1|Selector522~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_start~q\,
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datac => \uart_tx_u1|Selector526~1_combout\,
	datad => \uart_tx_u1|Selector522~4_combout\,
	combout => \uart_tx_u1|Selector522~6_combout\);

-- Location: LCCOMB_X51_Y24_N8
\uart_tx_u1|Selector522~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector522~5_combout\ = (!\uart_tx_u1|Selector522~6_combout\ & ((\uart_tx_u1|Selector526~1_combout\ & ((!\uart_tx_u1|always1~3_combout\))) # (!\uart_tx_u1|Selector526~1_combout\ & (!\uart_tx_u1|Selector522~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|Selector526~1_combout\,
	datab => \uart_tx_u1|Selector522~3_combout\,
	datac => \uart_tx_u1|always1~3_combout\,
	datad => \uart_tx_u1|Selector522~6_combout\,
	combout => \uart_tx_u1|Selector522~5_combout\);

-- Location: FF_X51_Y24_N9
\uart_tx_u1|state.S_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector522~5_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|state.S_IDLE~q\);

-- Location: LCCOMB_X49_Y24_N20
\uart_tx_u1|Selector514~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector514~0_combout\ = (\uart_tx_u1|state.S_IDLE~q\ & \uart_tx_u1|Add2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|state.S_IDLE~q\,
	datad => \uart_tx_u1|Add2~12_combout\,
	combout => \uart_tx_u1|Selector514~0_combout\);

-- Location: FF_X49_Y24_N21
\uart_tx_u1|byte_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector514~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \uart_tx_u1|shift_reg[288]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|byte_cnt\(6));

-- Location: LCCOMB_X49_Y24_N22
\uart_tx_u1|always1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|always1~2_combout\ = (\uart_tx_u1|always1~1_combout\ & (!\uart_tx_u1|shift_reg\(504) & \uart_tx_u1|always1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|always1~1_combout\,
	datab => \uart_tx_u1|shift_reg\(504),
	datad => \uart_tx_u1|always1~0_combout\,
	combout => \uart_tx_u1|always1~2_combout\);

-- Location: LCCOMB_X49_Y23_N18
\uart_tx_u1|Selector0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector0~3_combout\ = (!\uart_tx_u1|tx~q\ & ((\uart_tx_u1|byte_cnt\(6)) # ((\uart_tx_u1|byte_cnt\(7)) # (\uart_tx_u1|always1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|byte_cnt\(6),
	datab => \uart_tx_u1|byte_cnt\(7),
	datac => \uart_tx_u1|always1~2_combout\,
	datad => \uart_tx_u1|tx~q\,
	combout => \uart_tx_u1|Selector0~3_combout\);

-- Location: FF_X52_Y24_N31
\uart_tx_u1|shift_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uart_tx_u1|shift_reg\(506),
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \uart_tx_u1|Selector524~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_byte\(2));

-- Location: FF_X53_Y24_N27
\uart_tx_u1|shift_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uart_tx_u1|shift_reg\(507),
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \uart_tx_u1|Selector524~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_byte\(3));

-- Location: FF_X52_Y24_N25
\uart_tx_u1|shift_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uart_tx_u1|shift_reg\(504),
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \uart_tx_u1|Selector524~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_byte\(0));

-- Location: FF_X53_Y24_N25
\uart_tx_u1|shift_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uart_tx_u1|shift_reg\(505),
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \uart_tx_u1|Selector524~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_byte\(1));

-- Location: LCCOMB_X53_Y24_N24
\uart_tx_u1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Mux0~0_combout\ = (\uart_tx_u1|bit_idx\(1) & (((\uart_tx_u1|bit_idx\(0))))) # (!\uart_tx_u1|bit_idx\(1) & ((\uart_tx_u1|bit_idx\(0) & ((\uart_tx_u1|shift_byte\(1)))) # (!\uart_tx_u1|bit_idx\(0) & (\uart_tx_u1|shift_byte\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|bit_idx\(1),
	datab => \uart_tx_u1|shift_byte\(0),
	datac => \uart_tx_u1|shift_byte\(1),
	datad => \uart_tx_u1|bit_idx\(0),
	combout => \uart_tx_u1|Mux0~0_combout\);

-- Location: LCCOMB_X53_Y24_N26
\uart_tx_u1|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Mux0~1_combout\ = (\uart_tx_u1|bit_idx\(1) & ((\uart_tx_u1|Mux0~0_combout\ & ((\uart_tx_u1|shift_byte\(3)))) # (!\uart_tx_u1|Mux0~0_combout\ & (\uart_tx_u1|shift_byte\(2))))) # (!\uart_tx_u1|bit_idx\(1) & (((\uart_tx_u1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|bit_idx\(1),
	datab => \uart_tx_u1|shift_byte\(2),
	datac => \uart_tx_u1|shift_byte\(3),
	datad => \uart_tx_u1|Mux0~0_combout\,
	combout => \uart_tx_u1|Mux0~1_combout\);

-- Location: FF_X53_Y24_N3
\uart_tx_u1|shift_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uart_tx_u1|shift_reg\(510),
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \uart_tx_u1|Selector524~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_byte\(6));

-- Location: FF_X52_Y24_N9
\uart_tx_u1|shift_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uart_tx_u1|shift_reg\(509),
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \uart_tx_u1|Selector524~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_byte\(5));

-- Location: FF_X53_Y24_N1
\uart_tx_u1|shift_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uart_tx_u1|shift_reg\(508),
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \uart_tx_u1|Selector524~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|shift_byte\(4));

-- Location: LCCOMB_X53_Y24_N0
\uart_tx_u1|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector0~0_combout\ = (!\uart_tx_u1|bit_idx\(1) & ((\uart_tx_u1|bit_idx\(0) & (\uart_tx_u1|shift_byte\(5))) # (!\uart_tx_u1|bit_idx\(0) & ((\uart_tx_u1|shift_byte\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|shift_byte\(5),
	datab => \uart_tx_u1|bit_idx\(0),
	datac => \uart_tx_u1|shift_byte\(4),
	datad => \uart_tx_u1|bit_idx\(1),
	combout => \uart_tx_u1|Selector0~0_combout\);

-- Location: LCCOMB_X53_Y24_N2
\uart_tx_u1|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector0~1_combout\ = (\uart_tx_u1|Selector0~0_combout\) # ((\uart_tx_u1|bit_idx\(1) & (!\uart_tx_u1|bit_idx\(0) & \uart_tx_u1|shift_byte\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|bit_idx\(1),
	datab => \uart_tx_u1|bit_idx\(0),
	datac => \uart_tx_u1|shift_byte\(6),
	datad => \uart_tx_u1|Selector0~0_combout\,
	combout => \uart_tx_u1|Selector0~1_combout\);

-- Location: LCCOMB_X53_Y24_N28
\uart_tx_u1|Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector0~2_combout\ = ((\uart_tx_u1|bit_idx\(2) & ((\uart_tx_u1|Selector0~1_combout\))) # (!\uart_tx_u1|bit_idx\(2) & (\uart_tx_u1|Mux0~1_combout\))) # (!\uart_tx_u1|state.S_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_u1|state.S_DATA~q\,
	datab => \uart_tx_u1|bit_idx\(2),
	datac => \uart_tx_u1|Mux0~1_combout\,
	datad => \uart_tx_u1|Selector0~1_combout\,
	combout => \uart_tx_u1|Selector0~2_combout\);

-- Location: LCCOMB_X49_Y23_N16
\uart_tx_u1|Selector0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \uart_tx_u1|Selector0~4_combout\ = ((!\uart_tx_u1|Selector0~3_combout\ & \uart_tx_u1|state.S_START~q\)) # (!\uart_tx_u1|Selector0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_tx_u1|Selector0~3_combout\,
	datac => \uart_tx_u1|state.S_START~q\,
	datad => \uart_tx_u1|Selector0~2_combout\,
	combout => \uart_tx_u1|Selector0~4_combout\);

-- Location: FF_X49_Y23_N17
\uart_tx_u1|tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_tx_u1|Selector0~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_tx_u1|tx~q\);

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

-- Location: LCCOMB_X42_Y24_N24
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

-- Location: FF_X42_Y24_N25
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

-- Location: LCCOMB_X39_Y36_N0
\u_uart_rx|Selector63~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector63~0_combout\ = (\u_uart_rx|parse_state.S_RECV_DATA~q\ & \u_uart_rx|Add5~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|parse_state.S_RECV_DATA~q\,
	datad => \u_uart_rx|Add5~30_combout\,
	combout => \u_uart_rx|Selector63~0_combout\);

-- Location: LCCOMB_X46_Y35_N0
\u_uart_rx|cnt[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt[0]~16_combout\ = \u_uart_rx|cnt\(0) $ (VCC)
-- \u_uart_rx|cnt[0]~17\ = CARRY(\u_uart_rx|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|cnt\(0),
	datad => VCC,
	combout => \u_uart_rx|cnt[0]~16_combout\,
	cout => \u_uart_rx|cnt[0]~17\);

-- Location: LCCOMB_X45_Y35_N6
\u_uart_rx|rx_state.RX_IDLE~_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rx_state.RX_IDLE~_wirecell_combout\ = !\u_uart_rx|rx_state.RX_IDLE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_rx|rx_state.RX_IDLE~q\,
	combout => \u_uart_rx|rx_state.RX_IDLE~_wirecell_combout\);

-- Location: LCCOMB_X45_Y35_N22
\u_uart_rx|cnt[9]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt[9]~20_combout\ = (!\u_uart_rx|Equal0~4_combout\) # (!\u_uart_rx|rx_state.RX_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_rx|rx_state.RX_IDLE~q\,
	datad => \u_uart_rx|Equal0~4_combout\,
	combout => \u_uart_rx|cnt[9]~20_combout\);

-- Location: LCCOMB_X45_Y36_N28
\u_uart_rx|cnt[9]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt[9]~21_combout\ = (\u_uart_rx|rx_state.RX_IDLE~q\) # (!\rx~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx~input_o\,
	datad => \u_uart_rx|rx_state.RX_IDLE~q\,
	combout => \u_uart_rx|cnt[9]~21_combout\);

-- Location: FF_X46_Y35_N1
\u_uart_rx|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|cnt[0]~16_combout\,
	asdata => \u_uart_rx|rx_state.RX_IDLE~_wirecell_combout\,
	clrn => \rst_n~input_o\,
	sload => \u_uart_rx|cnt[9]~20_combout\,
	ena => \u_uart_rx|cnt[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt\(0));

-- Location: LCCOMB_X46_Y35_N2
\u_uart_rx|cnt[1]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt[1]~18_combout\ = (\u_uart_rx|cnt\(1) & (!\u_uart_rx|cnt[0]~17\)) # (!\u_uart_rx|cnt\(1) & ((\u_uart_rx|cnt[0]~17\) # (GND)))
-- \u_uart_rx|cnt[1]~19\ = CARRY((!\u_uart_rx|cnt[0]~17\) # (!\u_uart_rx|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|cnt\(1),
	datad => VCC,
	cin => \u_uart_rx|cnt[0]~17\,
	combout => \u_uart_rx|cnt[1]~18_combout\,
	cout => \u_uart_rx|cnt[1]~19\);

-- Location: LCCOMB_X45_Y35_N16
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X46_Y35_N3
\u_uart_rx|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|cnt[1]~18_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~input_o\,
	sload => \u_uart_rx|cnt[9]~20_combout\,
	ena => \u_uart_rx|cnt[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt\(1));

-- Location: LCCOMB_X46_Y35_N4
\u_uart_rx|cnt[2]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt[2]~22_combout\ = (\u_uart_rx|cnt\(2) & (\u_uart_rx|cnt[1]~19\ $ (GND))) # (!\u_uart_rx|cnt\(2) & (!\u_uart_rx|cnt[1]~19\ & VCC))
-- \u_uart_rx|cnt[2]~23\ = CARRY((\u_uart_rx|cnt\(2) & !\u_uart_rx|cnt[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|cnt\(2),
	datad => VCC,
	cin => \u_uart_rx|cnt[1]~19\,
	combout => \u_uart_rx|cnt[2]~22_combout\,
	cout => \u_uart_rx|cnt[2]~23\);

-- Location: FF_X46_Y35_N5
\u_uart_rx|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|cnt[2]~22_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~input_o\,
	sload => \u_uart_rx|cnt[9]~20_combout\,
	ena => \u_uart_rx|cnt[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt\(2));

-- Location: LCCOMB_X46_Y35_N6
\u_uart_rx|cnt[3]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt[3]~24_combout\ = (\u_uart_rx|cnt\(3) & (!\u_uart_rx|cnt[2]~23\)) # (!\u_uart_rx|cnt\(3) & ((\u_uart_rx|cnt[2]~23\) # (GND)))
-- \u_uart_rx|cnt[3]~25\ = CARRY((!\u_uart_rx|cnt[2]~23\) # (!\u_uart_rx|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|cnt\(3),
	datad => VCC,
	cin => \u_uart_rx|cnt[2]~23\,
	combout => \u_uart_rx|cnt[3]~24_combout\,
	cout => \u_uart_rx|cnt[3]~25\);

-- Location: FF_X46_Y35_N7
\u_uart_rx|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|cnt[3]~24_combout\,
	asdata => \u_uart_rx|rx_state.RX_IDLE~_wirecell_combout\,
	clrn => \rst_n~input_o\,
	sload => \u_uart_rx|cnt[9]~20_combout\,
	ena => \u_uart_rx|cnt[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt\(3));

-- Location: LCCOMB_X46_Y35_N8
\u_uart_rx|cnt[4]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt[4]~26_combout\ = (\u_uart_rx|cnt\(4) & (\u_uart_rx|cnt[3]~25\ $ (GND))) # (!\u_uart_rx|cnt\(4) & (!\u_uart_rx|cnt[3]~25\ & VCC))
-- \u_uart_rx|cnt[4]~27\ = CARRY((\u_uart_rx|cnt\(4) & !\u_uart_rx|cnt[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|cnt\(4),
	datad => VCC,
	cin => \u_uart_rx|cnt[3]~25\,
	combout => \u_uart_rx|cnt[4]~26_combout\,
	cout => \u_uart_rx|cnt[4]~27\);

-- Location: FF_X46_Y35_N9
\u_uart_rx|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|cnt[4]~26_combout\,
	asdata => \u_uart_rx|rx_state.RX_IDLE~_wirecell_combout\,
	clrn => \rst_n~input_o\,
	sload => \u_uart_rx|cnt[9]~20_combout\,
	ena => \u_uart_rx|cnt[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt\(4));

-- Location: LCCOMB_X46_Y35_N10
\u_uart_rx|cnt[5]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt[5]~28_combout\ = (\u_uart_rx|cnt\(5) & (!\u_uart_rx|cnt[4]~27\)) # (!\u_uart_rx|cnt\(5) & ((\u_uart_rx|cnt[4]~27\) # (GND)))
-- \u_uart_rx|cnt[5]~29\ = CARRY((!\u_uart_rx|cnt[4]~27\) # (!\u_uart_rx|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|cnt\(5),
	datad => VCC,
	cin => \u_uart_rx|cnt[4]~27\,
	combout => \u_uart_rx|cnt[5]~28_combout\,
	cout => \u_uart_rx|cnt[5]~29\);

-- Location: FF_X46_Y35_N11
\u_uart_rx|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|cnt[5]~28_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~input_o\,
	sload => \u_uart_rx|cnt[9]~20_combout\,
	ena => \u_uart_rx|cnt[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt\(5));

-- Location: LCCOMB_X46_Y35_N12
\u_uart_rx|cnt[6]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt[6]~30_combout\ = (\u_uart_rx|cnt\(6) & (\u_uart_rx|cnt[5]~29\ $ (GND))) # (!\u_uart_rx|cnt\(6) & (!\u_uart_rx|cnt[5]~29\ & VCC))
-- \u_uart_rx|cnt[6]~31\ = CARRY((\u_uart_rx|cnt\(6) & !\u_uart_rx|cnt[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|cnt\(6),
	datad => VCC,
	cin => \u_uart_rx|cnt[5]~29\,
	combout => \u_uart_rx|cnt[6]~30_combout\,
	cout => \u_uart_rx|cnt[6]~31\);

-- Location: FF_X46_Y35_N13
\u_uart_rx|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|cnt[6]~30_combout\,
	asdata => \u_uart_rx|rx_state.RX_IDLE~_wirecell_combout\,
	clrn => \rst_n~input_o\,
	sload => \u_uart_rx|cnt[9]~20_combout\,
	ena => \u_uart_rx|cnt[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt\(6));

-- Location: LCCOMB_X46_Y35_N14
\u_uart_rx|cnt[7]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt[7]~32_combout\ = (\u_uart_rx|cnt\(7) & (!\u_uart_rx|cnt[6]~31\)) # (!\u_uart_rx|cnt\(7) & ((\u_uart_rx|cnt[6]~31\) # (GND)))
-- \u_uart_rx|cnt[7]~33\ = CARRY((!\u_uart_rx|cnt[6]~31\) # (!\u_uart_rx|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|cnt\(7),
	datad => VCC,
	cin => \u_uart_rx|cnt[6]~31\,
	combout => \u_uart_rx|cnt[7]~32_combout\,
	cout => \u_uart_rx|cnt[7]~33\);

-- Location: FF_X46_Y35_N15
\u_uart_rx|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|cnt[7]~32_combout\,
	asdata => \u_uart_rx|rx_state.RX_IDLE~_wirecell_combout\,
	clrn => \rst_n~input_o\,
	sload => \u_uart_rx|cnt[9]~20_combout\,
	ena => \u_uart_rx|cnt[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt\(7));

-- Location: LCCOMB_X46_Y35_N16
\u_uart_rx|cnt[8]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt[8]~34_combout\ = (\u_uart_rx|cnt\(8) & (\u_uart_rx|cnt[7]~33\ $ (GND))) # (!\u_uart_rx|cnt\(8) & (!\u_uart_rx|cnt[7]~33\ & VCC))
-- \u_uart_rx|cnt[8]~35\ = CARRY((\u_uart_rx|cnt\(8) & !\u_uart_rx|cnt[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|cnt\(8),
	datad => VCC,
	cin => \u_uart_rx|cnt[7]~33\,
	combout => \u_uart_rx|cnt[8]~34_combout\,
	cout => \u_uart_rx|cnt[8]~35\);

-- Location: FF_X46_Y35_N17
\u_uart_rx|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|cnt[8]~34_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~input_o\,
	sload => \u_uart_rx|cnt[9]~20_combout\,
	ena => \u_uart_rx|cnt[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt\(8));

-- Location: LCCOMB_X46_Y35_N18
\u_uart_rx|cnt[9]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt[9]~36_combout\ = (\u_uart_rx|cnt\(9) & (!\u_uart_rx|cnt[8]~35\)) # (!\u_uart_rx|cnt\(9) & ((\u_uart_rx|cnt[8]~35\) # (GND)))
-- \u_uart_rx|cnt[9]~37\ = CARRY((!\u_uart_rx|cnt[8]~35\) # (!\u_uart_rx|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|cnt\(9),
	datad => VCC,
	cin => \u_uart_rx|cnt[8]~35\,
	combout => \u_uart_rx|cnt[9]~36_combout\,
	cout => \u_uart_rx|cnt[9]~37\);

-- Location: FF_X46_Y35_N19
\u_uart_rx|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|cnt[9]~36_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~input_o\,
	sload => \u_uart_rx|cnt[9]~20_combout\,
	ena => \u_uart_rx|cnt[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt\(9));

-- Location: LCCOMB_X46_Y35_N20
\u_uart_rx|cnt[10]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt[10]~38_combout\ = (\u_uart_rx|cnt\(10) & (\u_uart_rx|cnt[9]~37\ $ (GND))) # (!\u_uart_rx|cnt\(10) & (!\u_uart_rx|cnt[9]~37\ & VCC))
-- \u_uart_rx|cnt[10]~39\ = CARRY((\u_uart_rx|cnt\(10) & !\u_uart_rx|cnt[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|cnt\(10),
	datad => VCC,
	cin => \u_uart_rx|cnt[9]~37\,
	combout => \u_uart_rx|cnt[10]~38_combout\,
	cout => \u_uart_rx|cnt[10]~39\);

-- Location: FF_X46_Y35_N21
\u_uart_rx|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|cnt[10]~38_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~input_o\,
	sload => \u_uart_rx|cnt[9]~20_combout\,
	ena => \u_uart_rx|cnt[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt\(10));

-- Location: LCCOMB_X46_Y35_N22
\u_uart_rx|cnt[11]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt[11]~40_combout\ = (\u_uart_rx|cnt\(11) & (!\u_uart_rx|cnt[10]~39\)) # (!\u_uart_rx|cnt\(11) & ((\u_uart_rx|cnt[10]~39\) # (GND)))
-- \u_uart_rx|cnt[11]~41\ = CARRY((!\u_uart_rx|cnt[10]~39\) # (!\u_uart_rx|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|cnt\(11),
	datad => VCC,
	cin => \u_uart_rx|cnt[10]~39\,
	combout => \u_uart_rx|cnt[11]~40_combout\,
	cout => \u_uart_rx|cnt[11]~41\);

-- Location: FF_X46_Y35_N23
\u_uart_rx|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|cnt[11]~40_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~input_o\,
	sload => \u_uart_rx|cnt[9]~20_combout\,
	ena => \u_uart_rx|cnt[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt\(11));

-- Location: LCCOMB_X45_Y35_N12
\u_uart_rx|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Equal0~2_combout\ = (\u_uart_rx|cnt\(11)) # ((\u_uart_rx|cnt\(9)) # ((\u_uart_rx|cnt\(10)) # (!\u_uart_rx|cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|cnt\(11),
	datab => \u_uart_rx|cnt\(9),
	datac => \u_uart_rx|cnt\(10),
	datad => \u_uart_rx|cnt\(8),
	combout => \u_uart_rx|Equal0~2_combout\);

-- Location: LCCOMB_X45_Y35_N2
\u_uart_rx|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Equal0~1_combout\ = ((\u_uart_rx|cnt\(6)) # ((!\u_uart_rx|cnt\(5)) # (!\u_uart_rx|cnt\(4)))) # (!\u_uart_rx|cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|cnt\(7),
	datab => \u_uart_rx|cnt\(6),
	datac => \u_uart_rx|cnt\(4),
	datad => \u_uart_rx|cnt\(5),
	combout => \u_uart_rx|Equal0~1_combout\);

-- Location: LCCOMB_X46_Y35_N24
\u_uart_rx|cnt[12]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt[12]~42_combout\ = (\u_uart_rx|cnt\(12) & (\u_uart_rx|cnt[11]~41\ $ (GND))) # (!\u_uart_rx|cnt\(12) & (!\u_uart_rx|cnt[11]~41\ & VCC))
-- \u_uart_rx|cnt[12]~43\ = CARRY((\u_uart_rx|cnt\(12) & !\u_uart_rx|cnt[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|cnt\(12),
	datad => VCC,
	cin => \u_uart_rx|cnt[11]~41\,
	combout => \u_uart_rx|cnt[12]~42_combout\,
	cout => \u_uart_rx|cnt[12]~43\);

-- Location: FF_X46_Y35_N25
\u_uart_rx|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|cnt[12]~42_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~input_o\,
	sload => \u_uart_rx|cnt[9]~20_combout\,
	ena => \u_uart_rx|cnt[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt\(12));

-- Location: LCCOMB_X46_Y35_N26
\u_uart_rx|cnt[13]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt[13]~44_combout\ = (\u_uart_rx|cnt\(13) & (!\u_uart_rx|cnt[12]~43\)) # (!\u_uart_rx|cnt\(13) & ((\u_uart_rx|cnt[12]~43\) # (GND)))
-- \u_uart_rx|cnt[13]~45\ = CARRY((!\u_uart_rx|cnt[12]~43\) # (!\u_uart_rx|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|cnt\(13),
	datad => VCC,
	cin => \u_uart_rx|cnt[12]~43\,
	combout => \u_uart_rx|cnt[13]~44_combout\,
	cout => \u_uart_rx|cnt[13]~45\);

-- Location: FF_X46_Y35_N27
\u_uart_rx|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|cnt[13]~44_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~input_o\,
	sload => \u_uart_rx|cnt[9]~20_combout\,
	ena => \u_uart_rx|cnt[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt\(13));

-- Location: LCCOMB_X46_Y35_N28
\u_uart_rx|cnt[14]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt[14]~46_combout\ = (\u_uart_rx|cnt\(14) & (\u_uart_rx|cnt[13]~45\ $ (GND))) # (!\u_uart_rx|cnt\(14) & (!\u_uart_rx|cnt[13]~45\ & VCC))
-- \u_uart_rx|cnt[14]~47\ = CARRY((\u_uart_rx|cnt\(14) & !\u_uart_rx|cnt[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|cnt\(14),
	datad => VCC,
	cin => \u_uart_rx|cnt[13]~45\,
	combout => \u_uart_rx|cnt[14]~46_combout\,
	cout => \u_uart_rx|cnt[14]~47\);

-- Location: FF_X46_Y35_N29
\u_uart_rx|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|cnt[14]~46_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~input_o\,
	sload => \u_uart_rx|cnt[9]~20_combout\,
	ena => \u_uart_rx|cnt[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt\(14));

-- Location: LCCOMB_X46_Y35_N30
\u_uart_rx|cnt[15]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|cnt[15]~48_combout\ = \u_uart_rx|cnt\(15) $ (\u_uart_rx|cnt[14]~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|cnt\(15),
	cin => \u_uart_rx|cnt[14]~47\,
	combout => \u_uart_rx|cnt[15]~48_combout\);

-- Location: FF_X46_Y35_N31
\u_uart_rx|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|cnt[15]~48_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~input_o\,
	sload => \u_uart_rx|cnt[9]~20_combout\,
	ena => \u_uart_rx|cnt[9]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|cnt\(15));

-- Location: LCCOMB_X45_Y35_N26
\u_uart_rx|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Equal0~3_combout\ = (\u_uart_rx|cnt\(12)) # ((\u_uart_rx|cnt\(13)) # ((\u_uart_rx|cnt\(15)) # (\u_uart_rx|cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|cnt\(12),
	datab => \u_uart_rx|cnt\(13),
	datac => \u_uart_rx|cnt\(15),
	datad => \u_uart_rx|cnt\(14),
	combout => \u_uart_rx|Equal0~3_combout\);

-- Location: LCCOMB_X45_Y35_N20
\u_uart_rx|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Equal0~0_combout\ = (\u_uart_rx|cnt\(3)) # ((\u_uart_rx|cnt\(2)) # ((\u_uart_rx|cnt\(1)) # (!\u_uart_rx|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|cnt\(3),
	datab => \u_uart_rx|cnt\(2),
	datac => \u_uart_rx|cnt\(0),
	datad => \u_uart_rx|cnt\(1),
	combout => \u_uart_rx|Equal0~0_combout\);

-- Location: LCCOMB_X45_Y35_N0
\u_uart_rx|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Equal0~4_combout\ = (\u_uart_rx|Equal0~2_combout\) # ((\u_uart_rx|Equal0~1_combout\) # ((\u_uart_rx|Equal0~3_combout\) # (\u_uart_rx|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Equal0~2_combout\,
	datab => \u_uart_rx|Equal0~1_combout\,
	datac => \u_uart_rx|Equal0~3_combout\,
	datad => \u_uart_rx|Equal0~0_combout\,
	combout => \u_uart_rx|Equal0~4_combout\);

-- Location: LCCOMB_X45_Y36_N18
\u_uart_rx|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector0~1_combout\ = (\rx~input_o\ & (\u_uart_rx|rx_state.RX_IDLE~q\ & ((\u_uart_rx|Equal0~4_combout\) # (!\u_uart_rx|rx_state.RX_STOP~q\)))) # (!\rx~input_o\ & ((\u_uart_rx|Equal0~4_combout\) # ((!\u_uart_rx|rx_state.RX_STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => \u_uart_rx|Equal0~4_combout\,
	datac => \u_uart_rx|rx_state.RX_IDLE~q\,
	datad => \u_uart_rx|rx_state.RX_STOP~q\,
	combout => \u_uart_rx|Selector0~1_combout\);

-- Location: FF_X45_Y36_N19
\u_uart_rx|rx_state.RX_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|Selector0~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_state.RX_IDLE~q\);

-- Location: LCCOMB_X45_Y36_N4
\u_uart_rx|Selector22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector22~0_combout\ = (\u_uart_rx|rx_state.RX_DATA~q\ & (\u_uart_rx|bit_cnt\(1) $ (\u_uart_rx|bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|rx_state.RX_DATA~q\,
	datac => \u_uart_rx|bit_cnt\(1),
	datad => \u_uart_rx|bit_cnt\(0),
	combout => \u_uart_rx|Selector22~0_combout\);

-- Location: LCCOMB_X45_Y36_N0
\u_uart_rx|bit_cnt[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|bit_cnt[0]~0_combout\ = (!\u_uart_rx|Equal0~4_combout\ & (!\u_uart_rx|rx_state.RX_STOP~q\ & \u_uart_rx|rx_state.RX_IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|Equal0~4_combout\,
	datac => \u_uart_rx|rx_state.RX_STOP~q\,
	datad => \u_uart_rx|rx_state.RX_IDLE~q\,
	combout => \u_uart_rx|bit_cnt[0]~0_combout\);

-- Location: FF_X45_Y36_N5
\u_uart_rx|bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|Selector22~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|bit_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|bit_cnt\(1));

-- Location: LCCOMB_X45_Y36_N6
\u_uart_rx|Selector21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector21~0_combout\ = (\u_uart_rx|rx_state.RX_DATA~q\ & (\u_uart_rx|bit_cnt\(2) $ (((\u_uart_rx|bit_cnt\(0) & \u_uart_rx|bit_cnt\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|bit_cnt\(0),
	datab => \u_uart_rx|bit_cnt\(1),
	datac => \u_uart_rx|bit_cnt\(2),
	datad => \u_uart_rx|rx_state.RX_DATA~q\,
	combout => \u_uart_rx|Selector21~0_combout\);

-- Location: FF_X45_Y36_N7
\u_uart_rx|bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|Selector21~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|bit_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|bit_cnt\(2));

-- Location: LCCOMB_X45_Y36_N8
\u_uart_rx|Selector20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector20~0_combout\ = (\u_uart_rx|rx_state.RX_DATA~q\ & (\u_uart_rx|bit_cnt\(3) $ (((\u_uart_rx|bit_cnt\(2) & \u_uart_rx|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|bit_cnt\(2),
	datab => \u_uart_rx|rx_state.RX_DATA~q\,
	datac => \u_uart_rx|bit_cnt\(3),
	datad => \u_uart_rx|Add1~0_combout\,
	combout => \u_uart_rx|Selector20~0_combout\);

-- Location: FF_X45_Y36_N9
\u_uart_rx|bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|Selector20~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|bit_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|bit_cnt\(3));

-- Location: LCCOMB_X45_Y36_N22
\u_uart_rx|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector2~0_combout\ = ((\u_uart_rx|bit_cnt\(3)) # ((!\u_uart_rx|bit_cnt\(2)) # (!\u_uart_rx|bit_cnt\(1)))) # (!\u_uart_rx|bit_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|bit_cnt\(0),
	datab => \u_uart_rx|bit_cnt\(3),
	datac => \u_uart_rx|bit_cnt\(1),
	datad => \u_uart_rx|bit_cnt\(2),
	combout => \u_uart_rx|Selector2~0_combout\);

-- Location: LCCOMB_X45_Y36_N12
\u_uart_rx|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector2~1_combout\ = (\u_uart_rx|rx_state.RX_DATA~q\ & ((\u_uart_rx|Selector2~0_combout\) # ((\u_uart_rx|rx_state.RX_IDLE~q\ & \u_uart_rx|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_state.RX_IDLE~q\,
	datab => \u_uart_rx|rx_state.RX_DATA~q\,
	datac => \u_uart_rx|Selector2~0_combout\,
	datad => \u_uart_rx|Equal0~4_combout\,
	combout => \u_uart_rx|Selector2~1_combout\);

-- Location: LCCOMB_X45_Y36_N26
\u_uart_rx|Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector1~2_combout\ = (\u_uart_rx|rx_state.RX_START~q\ & ((\u_uart_rx|Equal0~4_combout\) # ((!\rx~input_o\ & !\u_uart_rx|rx_state.RX_IDLE~q\)))) # (!\u_uart_rx|rx_state.RX_START~q\ & (((!\rx~input_o\ & !\u_uart_rx|rx_state.RX_IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_state.RX_START~q\,
	datab => \u_uart_rx|Equal0~4_combout\,
	datac => \rx~input_o\,
	datad => \u_uart_rx|rx_state.RX_IDLE~q\,
	combout => \u_uart_rx|Selector1~2_combout\);

-- Location: LCCOMB_X45_Y36_N16
\u_uart_rx|Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Decoder0~2_combout\ = (\u_uart_rx|bit_cnt\(2) & (!\u_uart_rx|Equal0~4_combout\ & (!\u_uart_rx|bit_cnt\(3) & \u_uart_rx|rx_state.RX_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|bit_cnt\(2),
	datab => \u_uart_rx|Equal0~4_combout\,
	datac => \u_uart_rx|bit_cnt\(3),
	datad => \u_uart_rx|rx_state.RX_DATA~q\,
	combout => \u_uart_rx|Decoder0~2_combout\);

-- Location: LCCOMB_X45_Y36_N30
\u_uart_rx|Selector1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector1~3_combout\ = (\u_uart_rx|Selector1~2_combout\ & (((!\u_uart_rx|bit_cnt\(0)) # (!\u_uart_rx|bit_cnt\(1))) # (!\u_uart_rx|Decoder0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Selector1~2_combout\,
	datab => \u_uart_rx|Decoder0~2_combout\,
	datac => \u_uart_rx|bit_cnt\(1),
	datad => \u_uart_rx|bit_cnt\(0),
	combout => \u_uart_rx|Selector1~3_combout\);

-- Location: FF_X45_Y36_N31
\u_uart_rx|rx_state.RX_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|Selector1~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_state.RX_START~q\);

-- Location: LCCOMB_X45_Y36_N24
\u_uart_rx|Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector2~2_combout\ = (\u_uart_rx|Equal0~4_combout\ & (\u_uart_rx|Selector2~1_combout\)) # (!\u_uart_rx|Equal0~4_combout\ & (!\u_uart_rx|rx_state.RX_STOP~q\ & ((\u_uart_rx|Selector2~1_combout\) # (\u_uart_rx|rx_state.RX_START~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Selector2~1_combout\,
	datab => \u_uart_rx|Equal0~4_combout\,
	datac => \u_uart_rx|rx_state.RX_START~q\,
	datad => \u_uart_rx|rx_state.RX_STOP~q\,
	combout => \u_uart_rx|Selector2~2_combout\);

-- Location: FF_X45_Y36_N25
\u_uart_rx|rx_state.RX_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|Selector2~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_state.RX_DATA~q\);

-- Location: LCCOMB_X45_Y36_N10
\u_uart_rx|Selector23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector23~0_combout\ = (!\u_uart_rx|bit_cnt\(0) & \u_uart_rx|rx_state.RX_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_rx|bit_cnt\(0),
	datad => \u_uart_rx|rx_state.RX_DATA~q\,
	combout => \u_uart_rx|Selector23~0_combout\);

-- Location: FF_X45_Y36_N11
\u_uart_rx|bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|Selector23~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|bit_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|bit_cnt\(0));

-- Location: LCCOMB_X44_Y36_N14
\u_uart_rx|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add1~0_combout\ = (\u_uart_rx|bit_cnt\(0) & \u_uart_rx|bit_cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_rx|bit_cnt\(0),
	datad => \u_uart_rx|bit_cnt\(1),
	combout => \u_uart_rx|Add1~0_combout\);

-- Location: LCCOMB_X45_Y36_N20
\u_uart_rx|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector3~1_combout\ = (\u_uart_rx|Add1~0_combout\ & ((\u_uart_rx|Decoder0~2_combout\) # ((\u_uart_rx|Equal0~4_combout\ & \u_uart_rx|rx_state.RX_STOP~q\)))) # (!\u_uart_rx|Add1~0_combout\ & (\u_uart_rx|Equal0~4_combout\ & 
-- (\u_uart_rx|rx_state.RX_STOP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Add1~0_combout\,
	datab => \u_uart_rx|Equal0~4_combout\,
	datac => \u_uart_rx|rx_state.RX_STOP~q\,
	datad => \u_uart_rx|Decoder0~2_combout\,
	combout => \u_uart_rx|Selector3~1_combout\);

-- Location: FF_X45_Y36_N21
\u_uart_rx|rx_state.RX_STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|Selector3~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_state.RX_STOP~q\);

-- Location: LCCOMB_X45_Y36_N14
\u_uart_rx|rx_byte[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rx_byte[7]~0_combout\ = (\u_uart_rx|rx_state.RX_STOP~q\ & !\u_uart_rx|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|rx_state.RX_STOP~q\,
	datad => \u_uart_rx|Equal0~4_combout\,
	combout => \u_uart_rx|rx_byte[7]~0_combout\);

-- Location: FF_X42_Y36_N21
\u_uart_rx|rx_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_uart_rx|rx_byte[7]~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_done~q\);

-- Location: LCCOMB_X38_Y36_N26
\u_uart_rx|data_cnt[15]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|data_cnt[15]~0_combout\ = (\u_uart_rx|rx_done~q\ & \u_uart_rx|Selector42~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_done~q\,
	datad => \u_uart_rx|Selector42~2_combout\,
	combout => \u_uart_rx|data_cnt[15]~0_combout\);

-- Location: FF_X38_Y36_N13
\u_uart_rx|data_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_uart_rx|Selector63~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_uart_rx|data_cnt[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|data_cnt\(15));

-- Location: LCCOMB_X38_Y37_N16
\u_uart_rx|Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add5~0_combout\ = \u_uart_rx|data_cnt\(0) $ (VCC)
-- \u_uart_rx|Add5~1\ = CARRY(\u_uart_rx|data_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|data_cnt\(0),
	datad => VCC,
	combout => \u_uart_rx|Add5~0_combout\,
	cout => \u_uart_rx|Add5~1\);

-- Location: LCCOMB_X38_Y37_N10
\u_uart_rx|Selector78~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector78~0_combout\ = (\u_uart_rx|Add5~0_combout\ & \u_uart_rx|parse_state.S_RECV_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|Add5~0_combout\,
	datad => \u_uart_rx|parse_state.S_RECV_DATA~q\,
	combout => \u_uart_rx|Selector78~0_combout\);

-- Location: FF_X38_Y37_N11
\u_uart_rx|data_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|Selector78~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|data_cnt[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|data_cnt\(0));

-- Location: LCCOMB_X38_Y37_N18
\u_uart_rx|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add5~2_combout\ = (\u_uart_rx|data_cnt\(1) & (!\u_uart_rx|Add5~1\)) # (!\u_uart_rx|data_cnt\(1) & ((\u_uart_rx|Add5~1\) # (GND)))
-- \u_uart_rx|Add5~3\ = CARRY((!\u_uart_rx|Add5~1\) # (!\u_uart_rx|data_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|data_cnt\(1),
	datad => VCC,
	cin => \u_uart_rx|Add5~1\,
	combout => \u_uart_rx|Add5~2_combout\,
	cout => \u_uart_rx|Add5~3\);

-- Location: LCCOMB_X38_Y37_N12
\u_uart_rx|Selector77~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector77~0_combout\ = (\u_uart_rx|Add5~2_combout\ & \u_uart_rx|parse_state.S_RECV_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|Add5~2_combout\,
	datad => \u_uart_rx|parse_state.S_RECV_DATA~q\,
	combout => \u_uart_rx|Selector77~0_combout\);

-- Location: FF_X38_Y37_N13
\u_uart_rx|data_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|Selector77~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|data_cnt[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|data_cnt\(1));

-- Location: LCCOMB_X38_Y37_N20
\u_uart_rx|Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add5~4_combout\ = (\u_uart_rx|data_cnt\(2) & (\u_uart_rx|Add5~3\ $ (GND))) # (!\u_uart_rx|data_cnt\(2) & (!\u_uart_rx|Add5~3\ & VCC))
-- \u_uart_rx|Add5~5\ = CARRY((\u_uart_rx|data_cnt\(2) & !\u_uart_rx|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|data_cnt\(2),
	datad => VCC,
	cin => \u_uart_rx|Add5~3\,
	combout => \u_uart_rx|Add5~4_combout\,
	cout => \u_uart_rx|Add5~5\);

-- Location: LCCOMB_X38_Y37_N6
\u_uart_rx|Selector76~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector76~0_combout\ = (\u_uart_rx|Add5~4_combout\ & \u_uart_rx|parse_state.S_RECV_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|Add5~4_combout\,
	datad => \u_uart_rx|parse_state.S_RECV_DATA~q\,
	combout => \u_uart_rx|Selector76~0_combout\);

-- Location: FF_X38_Y37_N7
\u_uart_rx|data_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|Selector76~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|data_cnt[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|data_cnt\(2));

-- Location: LCCOMB_X38_Y37_N22
\u_uart_rx|Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add5~6_combout\ = (\u_uart_rx|data_cnt\(3) & (!\u_uart_rx|Add5~5\)) # (!\u_uart_rx|data_cnt\(3) & ((\u_uart_rx|Add5~5\) # (GND)))
-- \u_uart_rx|Add5~7\ = CARRY((!\u_uart_rx|Add5~5\) # (!\u_uart_rx|data_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|data_cnt\(3),
	datad => VCC,
	cin => \u_uart_rx|Add5~5\,
	combout => \u_uart_rx|Add5~6_combout\,
	cout => \u_uart_rx|Add5~7\);

-- Location: LCCOMB_X38_Y37_N8
\u_uart_rx|Selector75~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector75~0_combout\ = (\u_uart_rx|Add5~6_combout\ & \u_uart_rx|parse_state.S_RECV_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_rx|Add5~6_combout\,
	datad => \u_uart_rx|parse_state.S_RECV_DATA~q\,
	combout => \u_uart_rx|Selector75~0_combout\);

-- Location: FF_X38_Y37_N9
\u_uart_rx|data_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|Selector75~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|data_cnt[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|data_cnt\(3));

-- Location: LCCOMB_X38_Y37_N24
\u_uart_rx|Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add5~8_combout\ = (\u_uart_rx|data_cnt\(4) & (\u_uart_rx|Add5~7\ $ (GND))) # (!\u_uart_rx|data_cnt\(4) & (!\u_uart_rx|Add5~7\ & VCC))
-- \u_uart_rx|Add5~9\ = CARRY((\u_uart_rx|data_cnt\(4) & !\u_uart_rx|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|data_cnt\(4),
	datad => VCC,
	cin => \u_uart_rx|Add5~7\,
	combout => \u_uart_rx|Add5~8_combout\,
	cout => \u_uart_rx|Add5~9\);

-- Location: LCCOMB_X38_Y37_N14
\u_uart_rx|Selector74~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector74~0_combout\ = (\u_uart_rx|parse_state.S_RECV_DATA~q\ & \u_uart_rx|Add5~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|parse_state.S_RECV_DATA~q\,
	datad => \u_uart_rx|Add5~8_combout\,
	combout => \u_uart_rx|Selector74~0_combout\);

-- Location: FF_X38_Y37_N15
\u_uart_rx|data_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|Selector74~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|data_cnt[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|data_cnt\(4));

-- Location: LCCOMB_X38_Y37_N26
\u_uart_rx|Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add5~10_combout\ = (\u_uart_rx|data_cnt\(5) & (!\u_uart_rx|Add5~9\)) # (!\u_uart_rx|data_cnt\(5) & ((\u_uart_rx|Add5~9\) # (GND)))
-- \u_uart_rx|Add5~11\ = CARRY((!\u_uart_rx|Add5~9\) # (!\u_uart_rx|data_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|data_cnt\(5),
	datad => VCC,
	cin => \u_uart_rx|Add5~9\,
	combout => \u_uart_rx|Add5~10_combout\,
	cout => \u_uart_rx|Add5~11\);

-- Location: LCCOMB_X38_Y37_N4
\u_uart_rx|Selector73~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector73~0_combout\ = (\u_uart_rx|Add5~10_combout\ & \u_uart_rx|parse_state.S_RECV_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_rx|Add5~10_combout\,
	datad => \u_uart_rx|parse_state.S_RECV_DATA~q\,
	combout => \u_uart_rx|Selector73~0_combout\);

-- Location: FF_X38_Y37_N5
\u_uart_rx|data_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|Selector73~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|data_cnt[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|data_cnt\(5));

-- Location: LCCOMB_X38_Y37_N28
\u_uart_rx|Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add5~12_combout\ = (\u_uart_rx|data_cnt\(6) & (\u_uart_rx|Add5~11\ $ (GND))) # (!\u_uart_rx|data_cnt\(6) & (!\u_uart_rx|Add5~11\ & VCC))
-- \u_uart_rx|Add5~13\ = CARRY((\u_uart_rx|data_cnt\(6) & !\u_uart_rx|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|data_cnt\(6),
	datad => VCC,
	cin => \u_uart_rx|Add5~11\,
	combout => \u_uart_rx|Add5~12_combout\,
	cout => \u_uart_rx|Add5~13\);

-- Location: LCCOMB_X38_Y37_N0
\u_uart_rx|Selector72~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector72~0_combout\ = (\u_uart_rx|parse_state.S_RECV_DATA~q\ & \u_uart_rx|Add5~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|parse_state.S_RECV_DATA~q\,
	datad => \u_uart_rx|Add5~12_combout\,
	combout => \u_uart_rx|Selector72~0_combout\);

-- Location: FF_X38_Y37_N1
\u_uart_rx|data_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|Selector72~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|data_cnt[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|data_cnt\(6));

-- Location: LCCOMB_X38_Y37_N30
\u_uart_rx|Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add5~14_combout\ = (\u_uart_rx|data_cnt\(7) & (!\u_uart_rx|Add5~13\)) # (!\u_uart_rx|data_cnt\(7) & ((\u_uart_rx|Add5~13\) # (GND)))
-- \u_uart_rx|Add5~15\ = CARRY((!\u_uart_rx|Add5~13\) # (!\u_uart_rx|data_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|data_cnt\(7),
	datad => VCC,
	cin => \u_uart_rx|Add5~13\,
	combout => \u_uart_rx|Add5~14_combout\,
	cout => \u_uart_rx|Add5~15\);

-- Location: LCCOMB_X38_Y37_N2
\u_uart_rx|Selector71~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector71~0_combout\ = (\u_uart_rx|parse_state.S_RECV_DATA~q\ & \u_uart_rx|Add5~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|parse_state.S_RECV_DATA~q\,
	datad => \u_uart_rx|Add5~14_combout\,
	combout => \u_uart_rx|Selector71~0_combout\);

-- Location: FF_X38_Y37_N3
\u_uart_rx|data_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|Selector71~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|data_cnt[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|data_cnt\(7));

-- Location: LCCOMB_X38_Y36_N0
\u_uart_rx|Add5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add5~16_combout\ = (\u_uart_rx|data_cnt\(8) & (\u_uart_rx|Add5~15\ $ (GND))) # (!\u_uart_rx|data_cnt\(8) & (!\u_uart_rx|Add5~15\ & VCC))
-- \u_uart_rx|Add5~17\ = CARRY((\u_uart_rx|data_cnt\(8) & !\u_uart_rx|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|data_cnt\(8),
	datad => VCC,
	cin => \u_uart_rx|Add5~15\,
	combout => \u_uart_rx|Add5~16_combout\,
	cout => \u_uart_rx|Add5~17\);

-- Location: LCCOMB_X38_Y36_N24
\u_uart_rx|Selector70~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector70~0_combout\ = (\u_uart_rx|parse_state.S_RECV_DATA~q\ & \u_uart_rx|Add5~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_rx|parse_state.S_RECV_DATA~q\,
	datad => \u_uart_rx|Add5~16_combout\,
	combout => \u_uart_rx|Selector70~0_combout\);

-- Location: FF_X38_Y36_N25
\u_uart_rx|data_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|Selector70~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|data_cnt[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|data_cnt\(8));

-- Location: LCCOMB_X38_Y36_N2
\u_uart_rx|Add5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add5~18_combout\ = (\u_uart_rx|data_cnt\(9) & (!\u_uart_rx|Add5~17\)) # (!\u_uart_rx|data_cnt\(9) & ((\u_uart_rx|Add5~17\) # (GND)))
-- \u_uart_rx|Add5~19\ = CARRY((!\u_uart_rx|Add5~17\) # (!\u_uart_rx|data_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|data_cnt\(9),
	datad => VCC,
	cin => \u_uart_rx|Add5~17\,
	combout => \u_uart_rx|Add5~18_combout\,
	cout => \u_uart_rx|Add5~19\);

-- Location: LCCOMB_X39_Y36_N30
\u_uart_rx|Selector69~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector69~0_combout\ = (\u_uart_rx|parse_state.S_RECV_DATA~q\ & \u_uart_rx|Add5~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|parse_state.S_RECV_DATA~q\,
	datad => \u_uart_rx|Add5~18_combout\,
	combout => \u_uart_rx|Selector69~0_combout\);

-- Location: FF_X38_Y36_N3
\u_uart_rx|data_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_uart_rx|Selector69~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_uart_rx|data_cnt[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|data_cnt\(9));

-- Location: LCCOMB_X38_Y36_N4
\u_uart_rx|Add5~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add5~20_combout\ = (\u_uart_rx|data_cnt\(10) & (\u_uart_rx|Add5~19\ $ (GND))) # (!\u_uart_rx|data_cnt\(10) & (!\u_uart_rx|Add5~19\ & VCC))
-- \u_uart_rx|Add5~21\ = CARRY((\u_uart_rx|data_cnt\(10) & !\u_uart_rx|Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|data_cnt\(10),
	datad => VCC,
	cin => \u_uart_rx|Add5~19\,
	combout => \u_uart_rx|Add5~20_combout\,
	cout => \u_uart_rx|Add5~21\);

-- Location: LCCOMB_X38_Y36_N30
\u_uart_rx|Selector68~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector68~0_combout\ = (\u_uart_rx|parse_state.S_RECV_DATA~q\ & \u_uart_rx|Add5~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|parse_state.S_RECV_DATA~q\,
	datac => \u_uart_rx|Add5~20_combout\,
	combout => \u_uart_rx|Selector68~0_combout\);

-- Location: FF_X38_Y36_N31
\u_uart_rx|data_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|Selector68~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|data_cnt[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|data_cnt\(10));

-- Location: LCCOMB_X38_Y36_N6
\u_uart_rx|Add5~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add5~22_combout\ = (\u_uart_rx|data_cnt\(11) & (!\u_uart_rx|Add5~21\)) # (!\u_uart_rx|data_cnt\(11) & ((\u_uart_rx|Add5~21\) # (GND)))
-- \u_uart_rx|Add5~23\ = CARRY((!\u_uart_rx|Add5~21\) # (!\u_uart_rx|data_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|data_cnt\(11),
	datad => VCC,
	cin => \u_uart_rx|Add5~21\,
	combout => \u_uart_rx|Add5~22_combout\,
	cout => \u_uart_rx|Add5~23\);

-- Location: LCCOMB_X38_Y36_N28
\u_uart_rx|Selector67~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector67~0_combout\ = (\u_uart_rx|parse_state.S_RECV_DATA~q\ & \u_uart_rx|Add5~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_rx|parse_state.S_RECV_DATA~q\,
	datad => \u_uart_rx|Add5~22_combout\,
	combout => \u_uart_rx|Selector67~0_combout\);

-- Location: FF_X38_Y36_N29
\u_uart_rx|data_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|Selector67~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|data_cnt[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|data_cnt\(11));

-- Location: LCCOMB_X38_Y36_N8
\u_uart_rx|Add5~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add5~24_combout\ = (\u_uart_rx|data_cnt\(12) & (\u_uart_rx|Add5~23\ $ (GND))) # (!\u_uart_rx|data_cnt\(12) & (!\u_uart_rx|Add5~23\ & VCC))
-- \u_uart_rx|Add5~25\ = CARRY((\u_uart_rx|data_cnt\(12) & !\u_uart_rx|Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|data_cnt\(12),
	datad => VCC,
	cin => \u_uart_rx|Add5~23\,
	combout => \u_uart_rx|Add5~24_combout\,
	cout => \u_uart_rx|Add5~25\);

-- Location: LCCOMB_X38_Y36_N22
\u_uart_rx|Selector66~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector66~0_combout\ = (\u_uart_rx|parse_state.S_RECV_DATA~q\ & \u_uart_rx|Add5~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|parse_state.S_RECV_DATA~q\,
	datac => \u_uart_rx|Add5~24_combout\,
	combout => \u_uart_rx|Selector66~0_combout\);

-- Location: FF_X38_Y36_N23
\u_uart_rx|data_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|Selector66~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|data_cnt[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|data_cnt\(12));

-- Location: LCCOMB_X38_Y36_N10
\u_uart_rx|Add5~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add5~26_combout\ = (\u_uart_rx|data_cnt\(13) & (!\u_uart_rx|Add5~25\)) # (!\u_uart_rx|data_cnt\(13) & ((\u_uart_rx|Add5~25\) # (GND)))
-- \u_uart_rx|Add5~27\ = CARRY((!\u_uart_rx|Add5~25\) # (!\u_uart_rx|data_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|data_cnt\(13),
	datad => VCC,
	cin => \u_uart_rx|Add5~25\,
	combout => \u_uart_rx|Add5~26_combout\,
	cout => \u_uart_rx|Add5~27\);

-- Location: LCCOMB_X38_Y36_N20
\u_uart_rx|Selector65~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector65~0_combout\ = (\u_uart_rx|parse_state.S_RECV_DATA~q\ & \u_uart_rx|Add5~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_rx|parse_state.S_RECV_DATA~q\,
	datad => \u_uart_rx|Add5~26_combout\,
	combout => \u_uart_rx|Selector65~0_combout\);

-- Location: FF_X38_Y36_N21
\u_uart_rx|data_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|Selector65~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|data_cnt[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|data_cnt\(13));

-- Location: LCCOMB_X38_Y36_N12
\u_uart_rx|Add5~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add5~28_combout\ = (\u_uart_rx|data_cnt\(14) & (\u_uart_rx|Add5~27\ $ (GND))) # (!\u_uart_rx|data_cnt\(14) & (!\u_uart_rx|Add5~27\ & VCC))
-- \u_uart_rx|Add5~29\ = CARRY((\u_uart_rx|data_cnt\(14) & !\u_uart_rx|Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|data_cnt\(14),
	datad => VCC,
	cin => \u_uart_rx|Add5~27\,
	combout => \u_uart_rx|Add5~28_combout\,
	cout => \u_uart_rx|Add5~29\);

-- Location: LCCOMB_X39_Y36_N10
\u_uart_rx|Selector64~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector64~0_combout\ = (\u_uart_rx|parse_state.S_RECV_DATA~q\ & \u_uart_rx|Add5~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|parse_state.S_RECV_DATA~q\,
	datad => \u_uart_rx|Add5~28_combout\,
	combout => \u_uart_rx|Selector64~0_combout\);

-- Location: FF_X38_Y36_N27
\u_uart_rx|data_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_uart_rx|Selector64~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_uart_rx|data_cnt[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|data_cnt\(14));

-- Location: LCCOMB_X38_Y36_N14
\u_uart_rx|Add5~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add5~30_combout\ = (\u_uart_rx|data_cnt\(15) & (!\u_uart_rx|Add5~29\)) # (!\u_uart_rx|data_cnt\(15) & ((\u_uart_rx|Add5~29\) # (GND)))
-- \u_uart_rx|Add5~31\ = CARRY((!\u_uart_rx|Add5~29\) # (!\u_uart_rx|data_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|data_cnt\(15),
	datad => VCC,
	cin => \u_uart_rx|Add5~29\,
	combout => \u_uart_rx|Add5~30_combout\,
	cout => \u_uart_rx|Add5~31\);

-- Location: LCCOMB_X38_Y36_N16
\u_uart_rx|Add5~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add5~32_combout\ = !\u_uart_rx|Add5~31\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_uart_rx|Add5~31\,
	combout => \u_uart_rx|Add5~32_combout\);

-- Location: LCCOMB_X39_Y36_N24
\u_uart_rx|always1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|always1~3_combout\ = (\u_uart_rx|Add5~26_combout\) # (\u_uart_rx|Add5~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Add5~26_combout\,
	datad => \u_uart_rx|Add5~24_combout\,
	combout => \u_uart_rx|always1~3_combout\);

-- Location: LCCOMB_X39_Y36_N2
\u_uart_rx|always1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|always1~4_combout\ = (\u_uart_rx|Add5~30_combout\) # ((\u_uart_rx|Add5~28_combout\) # ((\u_uart_rx|Add5~32_combout\) # (\u_uart_rx|always1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Add5~30_combout\,
	datab => \u_uart_rx|Add5~28_combout\,
	datac => \u_uart_rx|Add5~32_combout\,
	datad => \u_uart_rx|always1~3_combout\,
	combout => \u_uart_rx|always1~4_combout\);

-- Location: LCCOMB_X44_Y36_N12
\u_uart_rx|Decoder0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Decoder0~3_combout\ = (\u_uart_rx|bit_cnt\(0) & !\u_uart_rx|bit_cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_rx|bit_cnt\(0),
	datad => \u_uart_rx|bit_cnt\(1),
	combout => \u_uart_rx|Decoder0~3_combout\);

-- Location: LCCOMB_X45_Y36_N2
\u_uart_rx|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Decoder0~0_combout\ = (!\u_uart_rx|bit_cnt\(2) & (!\u_uart_rx|Equal0~4_combout\ & (!\u_uart_rx|bit_cnt\(3) & \u_uart_rx|rx_state.RX_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|bit_cnt\(2),
	datab => \u_uart_rx|Equal0~4_combout\,
	datac => \u_uart_rx|bit_cnt\(3),
	datad => \u_uart_rx|rx_state.RX_DATA~q\,
	combout => \u_uart_rx|Decoder0~0_combout\);

-- Location: LCCOMB_X44_Y36_N10
\u_uart_rx|rdata[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rdata[1]~1_combout\ = (\u_uart_rx|Decoder0~3_combout\ & ((\u_uart_rx|Decoder0~0_combout\ & (\rx~input_o\)) # (!\u_uart_rx|Decoder0~0_combout\ & ((\u_uart_rx|rdata\(1)))))) # (!\u_uart_rx|Decoder0~3_combout\ & (((\u_uart_rx|rdata\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Decoder0~3_combout\,
	datab => \rx~input_o\,
	datac => \u_uart_rx|rdata\(1),
	datad => \u_uart_rx|Decoder0~0_combout\,
	combout => \u_uart_rx|rdata[1]~1_combout\);

-- Location: FF_X44_Y36_N11
\u_uart_rx|rdata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|rdata[1]~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rdata\(1));

-- Location: FF_X41_Y36_N7
\u_uart_rx|rx_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_uart_rx|rdata\(1),
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_uart_rx|rx_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_byte\(1));

-- Location: LCCOMB_X44_Y36_N0
\u_uart_rx|rdata[7]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rdata[7]~4_combout\ = (\u_uart_rx|Add1~0_combout\ & ((\u_uart_rx|Decoder0~2_combout\ & ((\rx~input_o\))) # (!\u_uart_rx|Decoder0~2_combout\ & (\u_uart_rx|rdata\(7))))) # (!\u_uart_rx|Add1~0_combout\ & (((\u_uart_rx|rdata\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Add1~0_combout\,
	datab => \u_uart_rx|Decoder0~2_combout\,
	datac => \u_uart_rx|rdata\(7),
	datad => \rx~input_o\,
	combout => \u_uart_rx|rdata[7]~4_combout\);

-- Location: FF_X44_Y36_N1
\u_uart_rx|rdata[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|rdata[7]~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rdata\(7));

-- Location: FF_X41_Y36_N13
\u_uart_rx|rx_byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_uart_rx|rdata\(7),
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_uart_rx|rx_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_byte\(7));

-- Location: LCCOMB_X44_Y36_N2
\u_uart_rx|rdata[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rdata[5]~3_combout\ = (\u_uart_rx|Decoder0~3_combout\ & ((\u_uart_rx|Decoder0~2_combout\ & (\rx~input_o\)) # (!\u_uart_rx|Decoder0~2_combout\ & ((\u_uart_rx|rdata\(5)))))) # (!\u_uart_rx|Decoder0~3_combout\ & (((\u_uart_rx|rdata\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Decoder0~3_combout\,
	datab => \rx~input_o\,
	datac => \u_uart_rx|rdata\(5),
	datad => \u_uart_rx|Decoder0~2_combout\,
	combout => \u_uart_rx|rdata[5]~3_combout\);

-- Location: FF_X44_Y36_N3
\u_uart_rx|rdata[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|rdata[5]~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rdata\(5));

-- Location: FF_X41_Y36_N15
\u_uart_rx|rx_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_uart_rx|rdata\(5),
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_uart_rx|rx_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_byte\(5));

-- Location: LCCOMB_X44_Y36_N6
\u_uart_rx|Decoder0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Decoder0~4_combout\ = (!\u_uart_rx|bit_cnt\(0) & \u_uart_rx|bit_cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_rx|bit_cnt\(0),
	datad => \u_uart_rx|bit_cnt\(1),
	combout => \u_uart_rx|Decoder0~4_combout\);

-- Location: LCCOMB_X44_Y36_N26
\u_uart_rx|rdata[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rdata[6]~5_combout\ = (\u_uart_rx|Decoder0~4_combout\ & ((\u_uart_rx|Decoder0~2_combout\ & (\rx~input_o\)) # (!\u_uart_rx|Decoder0~2_combout\ & ((\u_uart_rx|rdata\(6)))))) # (!\u_uart_rx|Decoder0~4_combout\ & (((\u_uart_rx|rdata\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Decoder0~4_combout\,
	datab => \rx~input_o\,
	datac => \u_uart_rx|rdata\(6),
	datad => \u_uart_rx|Decoder0~2_combout\,
	combout => \u_uart_rx|rdata[6]~5_combout\);

-- Location: FF_X44_Y36_N27
\u_uart_rx|rdata[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|rdata[6]~5_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rdata\(6));

-- Location: FF_X41_Y36_N31
\u_uart_rx|rx_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_uart_rx|rdata\(6),
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_uart_rx|rx_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_byte\(6));

-- Location: LCCOMB_X44_Y36_N24
\u_uart_rx|rdata[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rdata[3]~2_combout\ = (\u_uart_rx|Decoder0~0_combout\ & ((\u_uart_rx|Add1~0_combout\ & ((\rx~input_o\))) # (!\u_uart_rx|Add1~0_combout\ & (\u_uart_rx|rdata\(3))))) # (!\u_uart_rx|Decoder0~0_combout\ & (((\u_uart_rx|rdata\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Decoder0~0_combout\,
	datab => \u_uart_rx|Add1~0_combout\,
	datac => \u_uart_rx|rdata\(3),
	datad => \rx~input_o\,
	combout => \u_uart_rx|rdata[3]~2_combout\);

-- Location: FF_X44_Y36_N25
\u_uart_rx|rdata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|rdata[3]~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rdata\(3));

-- Location: LCCOMB_X41_Y36_N24
\u_uart_rx|rx_byte[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rx_byte[3]~feeder_combout\ = \u_uart_rx|rdata\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uart_rx|rdata\(3),
	combout => \u_uart_rx|rx_byte[3]~feeder_combout\);

-- Location: FF_X41_Y36_N25
\u_uart_rx|rx_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|rx_byte[3]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|rx_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_byte\(3));

-- Location: LCCOMB_X41_Y36_N20
\u_uart_rx|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Equal2~0_combout\ = (!\u_uart_rx|rx_byte\(7) & (\u_uart_rx|rx_byte\(5) & (!\u_uart_rx|rx_byte\(6) & \u_uart_rx|rx_byte\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_byte\(7),
	datab => \u_uart_rx|rx_byte\(5),
	datac => \u_uart_rx|rx_byte\(6),
	datad => \u_uart_rx|rx_byte\(3),
	combout => \u_uart_rx|Equal2~0_combout\);

-- Location: LCCOMB_X44_Y36_N22
\u_uart_rx|rdata[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rdata[2]~7_combout\ = (\u_uart_rx|Decoder0~4_combout\ & ((\u_uart_rx|Decoder0~0_combout\ & (\rx~input_o\)) # (!\u_uart_rx|Decoder0~0_combout\ & ((\u_uart_rx|rdata\(2)))))) # (!\u_uart_rx|Decoder0~4_combout\ & (((\u_uart_rx|rdata\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Decoder0~4_combout\,
	datab => \rx~input_o\,
	datac => \u_uart_rx|rdata\(2),
	datad => \u_uart_rx|Decoder0~0_combout\,
	combout => \u_uart_rx|rdata[2]~7_combout\);

-- Location: FF_X44_Y36_N23
\u_uart_rx|rdata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|rdata[2]~7_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rdata\(2));

-- Location: LCCOMB_X41_Y36_N4
\u_uart_rx|rx_byte[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rx_byte[2]~feeder_combout\ = \u_uart_rx|rdata\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uart_rx|rdata\(2),
	combout => \u_uart_rx|rx_byte[2]~feeder_combout\);

-- Location: FF_X41_Y36_N5
\u_uart_rx|rx_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|rx_byte[2]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|rx_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_byte\(2));

-- Location: LCCOMB_X44_Y36_N20
\u_uart_rx|Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Decoder0~1_combout\ = (!\u_uart_rx|bit_cnt\(0) & !\u_uart_rx|bit_cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_rx|bit_cnt\(0),
	datad => \u_uart_rx|bit_cnt\(1),
	combout => \u_uart_rx|Decoder0~1_combout\);

-- Location: LCCOMB_X44_Y36_N8
\u_uart_rx|rdata[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rdata[0]~0_combout\ = (\u_uart_rx|Decoder0~0_combout\ & ((\u_uart_rx|Decoder0~1_combout\ & (\rx~input_o\)) # (!\u_uart_rx|Decoder0~1_combout\ & ((\u_uart_rx|rdata\(0)))))) # (!\u_uart_rx|Decoder0~0_combout\ & (((\u_uart_rx|rdata\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Decoder0~0_combout\,
	datab => \rx~input_o\,
	datac => \u_uart_rx|rdata\(0),
	datad => \u_uart_rx|Decoder0~1_combout\,
	combout => \u_uart_rx|rdata[0]~0_combout\);

-- Location: FF_X44_Y36_N9
\u_uart_rx|rdata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|rdata[0]~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rdata\(0));

-- Location: FF_X41_Y36_N1
\u_uart_rx|rx_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_uart_rx|rdata\(0),
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_uart_rx|rx_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_byte\(0));

-- Location: LCCOMB_X44_Y36_N28
\u_uart_rx|rdata[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rdata[4]~6_combout\ = (\u_uart_rx|Decoder0~1_combout\ & ((\u_uart_rx|Decoder0~2_combout\ & (\rx~input_o\)) # (!\u_uart_rx|Decoder0~2_combout\ & ((\u_uart_rx|rdata\(4)))))) # (!\u_uart_rx|Decoder0~1_combout\ & (((\u_uart_rx|rdata\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Decoder0~1_combout\,
	datab => \rx~input_o\,
	datac => \u_uart_rx|rdata\(4),
	datad => \u_uart_rx|Decoder0~2_combout\,
	combout => \u_uart_rx|rdata[4]~6_combout\);

-- Location: FF_X44_Y36_N29
\u_uart_rx|rdata[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|rdata[4]~6_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rdata\(4));

-- Location: LCCOMB_X41_Y36_N10
\u_uart_rx|rx_byte[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rx_byte[4]~feeder_combout\ = \u_uart_rx|rdata\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uart_rx|rdata\(4),
	combout => \u_uart_rx|rx_byte[4]~feeder_combout\);

-- Location: FF_X41_Y36_N11
\u_uart_rx|rx_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|rx_byte[4]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|rx_byte[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_byte\(4));

-- Location: LCCOMB_X41_Y36_N18
\u_uart_rx|Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Equal5~0_combout\ = (\u_uart_rx|rx_byte\(2) & (!\u_uart_rx|rx_byte\(0) & !\u_uart_rx|rx_byte\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|rx_byte\(2),
	datac => \u_uart_rx|rx_byte\(0),
	datad => \u_uart_rx|rx_byte\(4),
	combout => \u_uart_rx|Equal5~0_combout\);

-- Location: LCCOMB_X41_Y36_N8
\u_uart_rx|Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Equal6~0_combout\ = (!\u_uart_rx|rx_byte\(1) & (\u_uart_rx|Equal2~0_combout\ & \u_uart_rx|Equal5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_byte\(1),
	datab => \u_uart_rx|Equal2~0_combout\,
	datad => \u_uart_rx|Equal5~0_combout\,
	combout => \u_uart_rx|Equal6~0_combout\);

-- Location: LCCOMB_X41_Y36_N26
\u_uart_rx|always1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|always1~5_combout\ = ((\u_uart_rx|rx_byte\(3) & ((\u_uart_rx|rx_byte\(2)) # (\u_uart_rx|rx_byte\(1))))) # (!\u_uart_rx|rx_byte\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_byte\(4),
	datab => \u_uart_rx|rx_byte\(2),
	datac => \u_uart_rx|rx_byte\(3),
	datad => \u_uart_rx|rx_byte\(1),
	combout => \u_uart_rx|always1~5_combout\);

-- Location: LCCOMB_X41_Y36_N28
\u_uart_rx|always1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|always1~6_combout\ = (\u_uart_rx|rx_byte\(6)) # (((\u_uart_rx|always1~5_combout\) # (\u_uart_rx|rx_byte\(7))) # (!\u_uart_rx|rx_byte\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_byte\(6),
	datab => \u_uart_rx|rx_byte\(5),
	datac => \u_uart_rx|always1~5_combout\,
	datad => \u_uart_rx|rx_byte\(7),
	combout => \u_uart_rx|always1~6_combout\);

-- Location: LCCOMB_X41_Y36_N0
\u_uart_rx|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Equal2~1_combout\ = (!\u_uart_rx|rx_byte\(2) & (\u_uart_rx|rx_byte\(0) & !\u_uart_rx|rx_byte\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|rx_byte\(2),
	datac => \u_uart_rx|rx_byte\(0),
	datad => \u_uart_rx|rx_byte\(4),
	combout => \u_uart_rx|Equal2~1_combout\);

-- Location: LCCOMB_X42_Y36_N10
\u_uart_rx|Selector38~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector38~0_combout\ = (!\u_uart_rx|parse_state.S_SEARCH_PLUS~q\ & (((!\u_uart_rx|rx_byte\(1)) # (!\u_uart_rx|Equal2~0_combout\)) # (!\u_uart_rx|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Equal2~1_combout\,
	datab => \u_uart_rx|Equal2~0_combout\,
	datac => \u_uart_rx|rx_byte\(1),
	datad => \u_uart_rx|parse_state.S_SEARCH_PLUS~q\,
	combout => \u_uart_rx|Selector38~0_combout\);

-- Location: LCCOMB_X41_Y36_N2
\u_uart_rx|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Equal4~0_combout\ = (!\u_uart_rx|rx_byte\(2) & (!\u_uart_rx|rx_byte\(0) & \u_uart_rx|rx_byte\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|rx_byte\(2),
	datac => \u_uart_rx|rx_byte\(0),
	datad => \u_uart_rx|rx_byte\(4),
	combout => \u_uart_rx|Equal4~0_combout\);

-- Location: LCCOMB_X42_Y36_N22
\u_uart_rx|Selector38~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector38~1_combout\ = (\u_uart_rx|parse_state.S_PARSE_LEN~q\ & (((!\u_uart_rx|Equal4~0_combout\) # (!\u_uart_rx|Equal2~0_combout\)) # (!\u_uart_rx|rx_byte\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_byte\(1),
	datab => \u_uart_rx|Equal2~0_combout\,
	datac => \u_uart_rx|parse_state.S_PARSE_LEN~q\,
	datad => \u_uart_rx|Equal4~0_combout\,
	combout => \u_uart_rx|Selector38~1_combout\);

-- Location: LCCOMB_X42_Y36_N8
\u_uart_rx|Selector38~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector38~2_combout\ = (\u_uart_rx|always1~6_combout\ & ((\u_uart_rx|Selector38~1_combout\) # ((\u_uart_rx|parse_state.S_PARSE_ID~q\ & !\u_uart_rx|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|parse_state.S_PARSE_ID~q\,
	datab => \u_uart_rx|always1~6_combout\,
	datac => \u_uart_rx|Selector38~1_combout\,
	datad => \u_uart_rx|Equal6~0_combout\,
	combout => \u_uart_rx|Selector38~2_combout\);

-- Location: LCCOMB_X43_Y36_N10
\u_uart_rx|ipd_step~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|ipd_step~21_combout\ = (\u_uart_rx|parse_state.S_MATCH_IPD~q\ & (!\u_uart_rx|ipd_step.01~q\ & !\u_uart_rx|ipd_step.10~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|parse_state.S_MATCH_IPD~q\,
	datac => \u_uart_rx|ipd_step.01~q\,
	datad => \u_uart_rx|ipd_step.10~q\,
	combout => \u_uart_rx|ipd_step~21_combout\);

-- Location: LCCOMB_X42_Y36_N4
\u_uart_rx|ipd_step~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|ipd_step~19_combout\ = (\u_uart_rx|rx_done~q\ & \u_uart_rx|ipd_step~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_rx|rx_done~q\,
	datad => \u_uart_rx|ipd_step~18_combout\,
	combout => \u_uart_rx|ipd_step~19_combout\);

-- Location: FF_X43_Y36_N11
\u_uart_rx|ipd_step.01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|ipd_step~21_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|ipd_step~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|ipd_step.01~q\);

-- Location: LCCOMB_X43_Y36_N6
\u_uart_rx|ipd_step~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|ipd_step~20_combout\ = (\u_uart_rx|parse_state.S_MATCH_IPD~q\ & \u_uart_rx|ipd_step.01~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|parse_state.S_MATCH_IPD~q\,
	datad => \u_uart_rx|ipd_step.01~q\,
	combout => \u_uart_rx|ipd_step~20_combout\);

-- Location: FF_X43_Y36_N7
\u_uart_rx|ipd_step.10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|ipd_step~20_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|ipd_step~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|ipd_step.10~q\);

-- Location: LCCOMB_X43_Y36_N4
\u_uart_rx|ipd_step~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|ipd_step~14_combout\ = (\u_uart_rx|parse_state.S_MATCH_IPD~q\ & \u_uart_rx|ipd_step.10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|parse_state.S_MATCH_IPD~q\,
	datad => \u_uart_rx|ipd_step.10~q\,
	combout => \u_uart_rx|ipd_step~14_combout\);

-- Location: FF_X43_Y36_N5
\u_uart_rx|ipd_step.11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|ipd_step~14_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|ipd_step~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|ipd_step.11~q\);

-- Location: LCCOMB_X43_Y36_N28
\u_uart_rx|ipd_step.00~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|ipd_step.00~feeder_combout\ = \u_uart_rx|parse_state.S_MATCH_IPD~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uart_rx|parse_state.S_MATCH_IPD~q\,
	combout => \u_uart_rx|ipd_step.00~feeder_combout\);

-- Location: FF_X43_Y36_N29
\u_uart_rx|ipd_step.00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|ipd_step.00~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|ipd_step~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|ipd_step.00~q\);

-- Location: LCCOMB_X41_Y36_N6
\u_uart_rx|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Equal3~0_combout\ = (\u_uart_rx|rx_byte\(6) & (!\u_uart_rx|rx_byte\(5) & (!\u_uart_rx|rx_byte\(1) & !\u_uart_rx|rx_byte\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_byte\(6),
	datab => \u_uart_rx|rx_byte\(5),
	datac => \u_uart_rx|rx_byte\(1),
	datad => \u_uart_rx|rx_byte\(7),
	combout => \u_uart_rx|Equal3~0_combout\);

-- Location: LCCOMB_X41_Y36_N12
\u_uart_rx|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Equal3~1_combout\ = (\u_uart_rx|Equal3~0_combout\ & (\u_uart_rx|rx_byte\(3) & \u_uart_rx|Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Equal3~0_combout\,
	datab => \u_uart_rx|rx_byte\(3),
	datad => \u_uart_rx|Equal2~1_combout\,
	combout => \u_uart_rx|Equal3~1_combout\);

-- Location: LCCOMB_X42_Y36_N6
\u_uart_rx|Selector38~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector38~5_combout\ = (\u_uart_rx|ipd_step.11~q\ & (((!\u_uart_rx|ipd_step.00~q\ & !\u_uart_rx|Equal3~1_combout\)) # (!\u_uart_rx|Equal6~0_combout\))) # (!\u_uart_rx|ipd_step.11~q\ & (!\u_uart_rx|ipd_step.00~q\ & 
-- (!\u_uart_rx|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|ipd_step.11~q\,
	datab => \u_uart_rx|ipd_step.00~q\,
	datac => \u_uart_rx|Equal3~1_combout\,
	datad => \u_uart_rx|Equal6~0_combout\,
	combout => \u_uart_rx|Selector38~5_combout\);

-- Location: LCCOMB_X42_Y36_N14
\u_uart_rx|Selector38~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector38~3_combout\ = (\u_uart_rx|ipd_step.10~q\ & (((\u_uart_rx|rx_byte\(3)) # (!\u_uart_rx|Equal5~0_combout\)) # (!\u_uart_rx|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|ipd_step.10~q\,
	datab => \u_uart_rx|Equal3~0_combout\,
	datac => \u_uart_rx|rx_byte\(3),
	datad => \u_uart_rx|Equal5~0_combout\,
	combout => \u_uart_rx|Selector38~3_combout\);

-- Location: LCCOMB_X42_Y36_N24
\u_uart_rx|Selector38~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector38~4_combout\ = (\u_uart_rx|ipd_step.01~q\ & (((\u_uart_rx|rx_byte\(3)) # (!\u_uart_rx|Equal3~0_combout\)) # (!\u_uart_rx|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Equal4~0_combout\,
	datab => \u_uart_rx|ipd_step.01~q\,
	datac => \u_uart_rx|rx_byte\(3),
	datad => \u_uart_rx|Equal3~0_combout\,
	combout => \u_uart_rx|Selector38~4_combout\);

-- Location: LCCOMB_X42_Y36_N16
\u_uart_rx|Selector38~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector38~6_combout\ = (\u_uart_rx|parse_state.S_MATCH_IPD~q\ & ((\u_uart_rx|Selector38~5_combout\) # ((\u_uart_rx|Selector38~3_combout\) # (\u_uart_rx|Selector38~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Selector38~5_combout\,
	datab => \u_uart_rx|parse_state.S_MATCH_IPD~q\,
	datac => \u_uart_rx|Selector38~3_combout\,
	datad => \u_uart_rx|Selector38~4_combout\,
	combout => \u_uart_rx|Selector38~6_combout\);

-- Location: LCCOMB_X42_Y36_N18
\u_uart_rx|Selector38~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector38~7_combout\ = (\u_uart_rx|Selector38~0_combout\) # ((\u_uart_rx|Selector38~2_combout\) # (\u_uart_rx|Selector38~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Selector38~0_combout\,
	datac => \u_uart_rx|Selector38~2_combout\,
	datad => \u_uart_rx|Selector38~6_combout\,
	combout => \u_uart_rx|Selector38~7_combout\);

-- Location: LCCOMB_X39_Y36_N18
\u_uart_rx|always1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|always1~1_combout\ = (\u_uart_rx|Add5~16_combout\) # ((\u_uart_rx|Add5~20_combout\) # ((\u_uart_rx|Add5~22_combout\) # (\u_uart_rx|Add5~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Add5~16_combout\,
	datab => \u_uart_rx|Add5~20_combout\,
	datac => \u_uart_rx|Add5~22_combout\,
	datad => \u_uart_rx|Add5~18_combout\,
	combout => \u_uart_rx|always1~1_combout\);

-- Location: LCCOMB_X39_Y36_N4
\u_uart_rx|always1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|always1~0_combout\ = (\u_uart_rx|Add5~14_combout\) # (\u_uart_rx|Add5~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_rx|Add5~14_combout\,
	datad => \u_uart_rx|Add5~12_combout\,
	combout => \u_uart_rx|always1~0_combout\);

-- Location: LCCOMB_X39_Y36_N16
\u_uart_rx|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add3~0_combout\ = (\u_uart_rx|rx_byte\(7)) # ((\u_uart_rx|rx_byte\(6)) # ((\u_uart_rx|rx_byte\(4) & \u_uart_rx|rx_byte\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_byte\(4),
	datab => \u_uart_rx|rx_byte\(5),
	datac => \u_uart_rx|rx_byte\(7),
	datad => \u_uart_rx|rx_byte\(6),
	combout => \u_uart_rx|Add3~0_combout\);

-- Location: LCCOMB_X39_Y36_N12
\u_uart_rx|rx_Data_len[0]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rx_Data_len[0]~46_combout\ = (\u_uart_rx|rx_byte\(0) & \u_uart_rx|parse_state.S_PARSE_LEN~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_byte\(0),
	datad => \u_uart_rx|parse_state.S_PARSE_LEN~q\,
	combout => \u_uart_rx|rx_Data_len[0]~46_combout\);

-- Location: LCCOMB_X39_Y36_N22
\u_uart_rx|rx_Data_len[0]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rx_Data_len[0]~47_combout\ = (\u_uart_rx|Selector41~0_combout\ & ((\u_uart_rx|rx_done~q\ & (\u_uart_rx|rx_Data_len[0]~46_combout\)) # (!\u_uart_rx|rx_done~q\ & ((\u_uart_rx|rx_Data_len\(0)))))) # (!\u_uart_rx|Selector41~0_combout\ & 
-- (((\u_uart_rx|rx_Data_len\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_len[0]~46_combout\,
	datab => \u_uart_rx|Selector41~0_combout\,
	datac => \u_uart_rx|rx_done~q\,
	datad => \u_uart_rx|rx_Data_len\(0),
	combout => \u_uart_rx|rx_Data_len[0]~47_combout\);

-- Location: FF_X37_Y36_N27
\u_uart_rx|rx_Data_len[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_uart_rx|rx_Data_len[0]~47_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_Data_len\(0));

-- Location: LCCOMB_X36_Y36_N2
\u_uart_rx|rx_Data_len[1]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rx_Data_len[1]~15_combout\ = (\u_uart_rx|rx_Data_len\(0) & (\u_uart_rx|rx_byte\(1) $ (VCC))) # (!\u_uart_rx|rx_Data_len\(0) & (\u_uart_rx|rx_byte\(1) & VCC))
-- \u_uart_rx|rx_Data_len[1]~16\ = CARRY((\u_uart_rx|rx_Data_len\(0) & \u_uart_rx|rx_byte\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_len\(0),
	datab => \u_uart_rx|rx_byte\(1),
	datad => VCC,
	combout => \u_uart_rx|rx_Data_len[1]~15_combout\,
	cout => \u_uart_rx|rx_Data_len[1]~16\);

-- Location: LCCOMB_X39_Y36_N26
\u_uart_rx|rx_Data_len[15]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rx_Data_len[15]~45_combout\ = (\u_uart_rx|rx_done~q\ & \u_uart_rx|Selector41~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_done~q\,
	datad => \u_uart_rx|Selector41~0_combout\,
	combout => \u_uart_rx|rx_Data_len[15]~45_combout\);

-- Location: FF_X36_Y36_N3
\u_uart_rx|rx_Data_len[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|rx_Data_len[1]~15_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_uart_rx|ALT_INV_parse_state.S_PARSE_LEN~q\,
	ena => \u_uart_rx|rx_Data_len[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_Data_len\(1));

-- Location: LCCOMB_X36_Y36_N4
\u_uart_rx|rx_Data_len[2]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rx_Data_len[2]~17_combout\ = (\u_uart_rx|rx_byte\(2) & ((\u_uart_rx|rx_Data_len\(1) & (\u_uart_rx|rx_Data_len[1]~16\ & VCC)) # (!\u_uart_rx|rx_Data_len\(1) & (!\u_uart_rx|rx_Data_len[1]~16\)))) # (!\u_uart_rx|rx_byte\(2) & 
-- ((\u_uart_rx|rx_Data_len\(1) & (!\u_uart_rx|rx_Data_len[1]~16\)) # (!\u_uart_rx|rx_Data_len\(1) & ((\u_uart_rx|rx_Data_len[1]~16\) # (GND)))))
-- \u_uart_rx|rx_Data_len[2]~18\ = CARRY((\u_uart_rx|rx_byte\(2) & (!\u_uart_rx|rx_Data_len\(1) & !\u_uart_rx|rx_Data_len[1]~16\)) # (!\u_uart_rx|rx_byte\(2) & ((!\u_uart_rx|rx_Data_len[1]~16\) # (!\u_uart_rx|rx_Data_len\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_byte\(2),
	datab => \u_uart_rx|rx_Data_len\(1),
	datad => VCC,
	cin => \u_uart_rx|rx_Data_len[1]~16\,
	combout => \u_uart_rx|rx_Data_len[2]~17_combout\,
	cout => \u_uart_rx|rx_Data_len[2]~18\);

-- Location: FF_X36_Y36_N5
\u_uart_rx|rx_Data_len[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|rx_Data_len[2]~17_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_uart_rx|ALT_INV_parse_state.S_PARSE_LEN~q\,
	ena => \u_uart_rx|rx_Data_len[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_Data_len\(2));

-- Location: LCCOMB_X35_Y36_N2
\u_uart_rx|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add2~0_combout\ = (\u_uart_rx|rx_Data_len\(2) & (\u_uart_rx|rx_Data_len\(0) $ (VCC))) # (!\u_uart_rx|rx_Data_len\(2) & (\u_uart_rx|rx_Data_len\(0) & VCC))
-- \u_uart_rx|Add2~1\ = CARRY((\u_uart_rx|rx_Data_len\(2) & \u_uart_rx|rx_Data_len\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_len\(2),
	datab => \u_uart_rx|rx_Data_len\(0),
	datad => VCC,
	combout => \u_uart_rx|Add2~0_combout\,
	cout => \u_uart_rx|Add2~1\);

-- Location: LCCOMB_X36_Y36_N6
\u_uart_rx|rx_Data_len[3]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rx_Data_len[3]~19_combout\ = ((\u_uart_rx|rx_byte\(3) $ (\u_uart_rx|Add2~0_combout\ $ (!\u_uart_rx|rx_Data_len[2]~18\)))) # (GND)
-- \u_uart_rx|rx_Data_len[3]~20\ = CARRY((\u_uart_rx|rx_byte\(3) & ((\u_uart_rx|Add2~0_combout\) # (!\u_uart_rx|rx_Data_len[2]~18\))) # (!\u_uart_rx|rx_byte\(3) & (\u_uart_rx|Add2~0_combout\ & !\u_uart_rx|rx_Data_len[2]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_byte\(3),
	datab => \u_uart_rx|Add2~0_combout\,
	datad => VCC,
	cin => \u_uart_rx|rx_Data_len[2]~18\,
	combout => \u_uart_rx|rx_Data_len[3]~19_combout\,
	cout => \u_uart_rx|rx_Data_len[3]~20\);

-- Location: FF_X36_Y36_N7
\u_uart_rx|rx_Data_len[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|rx_Data_len[3]~19_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_uart_rx|ALT_INV_parse_state.S_PARSE_LEN~q\,
	ena => \u_uart_rx|rx_Data_len[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_Data_len\(3));

-- Location: LCCOMB_X36_Y36_N0
\u_uart_rx|Add3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add3~3_combout\ = \u_uart_rx|rx_byte\(5) $ (\u_uart_rx|rx_byte\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_byte\(5),
	datad => \u_uart_rx|rx_byte\(4),
	combout => \u_uart_rx|Add3~3_combout\);

-- Location: LCCOMB_X35_Y36_N4
\u_uart_rx|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add2~2_combout\ = (\u_uart_rx|rx_Data_len\(3) & ((\u_uart_rx|rx_Data_len\(1) & (\u_uart_rx|Add2~1\ & VCC)) # (!\u_uart_rx|rx_Data_len\(1) & (!\u_uart_rx|Add2~1\)))) # (!\u_uart_rx|rx_Data_len\(3) & ((\u_uart_rx|rx_Data_len\(1) & 
-- (!\u_uart_rx|Add2~1\)) # (!\u_uart_rx|rx_Data_len\(1) & ((\u_uart_rx|Add2~1\) # (GND)))))
-- \u_uart_rx|Add2~3\ = CARRY((\u_uart_rx|rx_Data_len\(3) & (!\u_uart_rx|rx_Data_len\(1) & !\u_uart_rx|Add2~1\)) # (!\u_uart_rx|rx_Data_len\(3) & ((!\u_uart_rx|Add2~1\) # (!\u_uart_rx|rx_Data_len\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_len\(3),
	datab => \u_uart_rx|rx_Data_len\(1),
	datad => VCC,
	cin => \u_uart_rx|Add2~1\,
	combout => \u_uart_rx|Add2~2_combout\,
	cout => \u_uart_rx|Add2~3\);

-- Location: LCCOMB_X36_Y36_N8
\u_uart_rx|rx_Data_len[4]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rx_Data_len[4]~21_combout\ = (\u_uart_rx|Add2~2_combout\ & ((\u_uart_rx|rx_byte\(4) & (!\u_uart_rx|rx_Data_len[3]~20\)) # (!\u_uart_rx|rx_byte\(4) & (\u_uart_rx|rx_Data_len[3]~20\ & VCC)))) # (!\u_uart_rx|Add2~2_combout\ & 
-- ((\u_uart_rx|rx_byte\(4) & ((\u_uart_rx|rx_Data_len[3]~20\) # (GND))) # (!\u_uart_rx|rx_byte\(4) & (!\u_uart_rx|rx_Data_len[3]~20\))))
-- \u_uart_rx|rx_Data_len[4]~22\ = CARRY((\u_uart_rx|Add2~2_combout\ & (\u_uart_rx|rx_byte\(4) & !\u_uart_rx|rx_Data_len[3]~20\)) # (!\u_uart_rx|Add2~2_combout\ & ((\u_uart_rx|rx_byte\(4)) # (!\u_uart_rx|rx_Data_len[3]~20\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Add2~2_combout\,
	datab => \u_uart_rx|rx_byte\(4),
	datad => VCC,
	cin => \u_uart_rx|rx_Data_len[3]~20\,
	combout => \u_uart_rx|rx_Data_len[4]~21_combout\,
	cout => \u_uart_rx|rx_Data_len[4]~22\);

-- Location: FF_X36_Y36_N9
\u_uart_rx|rx_Data_len[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|rx_Data_len[4]~21_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_uart_rx|ALT_INV_parse_state.S_PARSE_LEN~q\,
	ena => \u_uart_rx|rx_Data_len[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_Data_len\(4));

-- Location: LCCOMB_X35_Y36_N6
\u_uart_rx|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add2~4_combout\ = ((\u_uart_rx|rx_Data_len\(2) $ (\u_uart_rx|rx_Data_len\(4) $ (!\u_uart_rx|Add2~3\)))) # (GND)
-- \u_uart_rx|Add2~5\ = CARRY((\u_uart_rx|rx_Data_len\(2) & ((\u_uart_rx|rx_Data_len\(4)) # (!\u_uart_rx|Add2~3\))) # (!\u_uart_rx|rx_Data_len\(2) & (\u_uart_rx|rx_Data_len\(4) & !\u_uart_rx|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_len\(2),
	datab => \u_uart_rx|rx_Data_len\(4),
	datad => VCC,
	cin => \u_uart_rx|Add2~3\,
	combout => \u_uart_rx|Add2~4_combout\,
	cout => \u_uart_rx|Add2~5\);

-- Location: LCCOMB_X36_Y36_N10
\u_uart_rx|rx_Data_len[5]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rx_Data_len[5]~23_combout\ = ((\u_uart_rx|Add3~3_combout\ $ (\u_uart_rx|Add2~4_combout\ $ (!\u_uart_rx|rx_Data_len[4]~22\)))) # (GND)
-- \u_uart_rx|rx_Data_len[5]~24\ = CARRY((\u_uart_rx|Add3~3_combout\ & ((\u_uart_rx|Add2~4_combout\) # (!\u_uart_rx|rx_Data_len[4]~22\))) # (!\u_uart_rx|Add3~3_combout\ & (\u_uart_rx|Add2~4_combout\ & !\u_uart_rx|rx_Data_len[4]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Add3~3_combout\,
	datab => \u_uart_rx|Add2~4_combout\,
	datad => VCC,
	cin => \u_uart_rx|rx_Data_len[4]~22\,
	combout => \u_uart_rx|rx_Data_len[5]~23_combout\,
	cout => \u_uart_rx|rx_Data_len[5]~24\);

-- Location: FF_X36_Y36_N11
\u_uart_rx|rx_Data_len[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|rx_Data_len[5]~23_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_uart_rx|ALT_INV_parse_state.S_PARSE_LEN~q\,
	ena => \u_uart_rx|rx_Data_len[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_Data_len\(5));

-- Location: LCCOMB_X35_Y36_N8
\u_uart_rx|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add2~6_combout\ = (\u_uart_rx|rx_Data_len\(3) & ((\u_uart_rx|rx_Data_len\(5) & (\u_uart_rx|Add2~5\ & VCC)) # (!\u_uart_rx|rx_Data_len\(5) & (!\u_uart_rx|Add2~5\)))) # (!\u_uart_rx|rx_Data_len\(3) & ((\u_uart_rx|rx_Data_len\(5) & 
-- (!\u_uart_rx|Add2~5\)) # (!\u_uart_rx|rx_Data_len\(5) & ((\u_uart_rx|Add2~5\) # (GND)))))
-- \u_uart_rx|Add2~7\ = CARRY((\u_uart_rx|rx_Data_len\(3) & (!\u_uart_rx|rx_Data_len\(5) & !\u_uart_rx|Add2~5\)) # (!\u_uart_rx|rx_Data_len\(3) & ((!\u_uart_rx|Add2~5\) # (!\u_uart_rx|rx_Data_len\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_len\(3),
	datab => \u_uart_rx|rx_Data_len\(5),
	datad => VCC,
	cin => \u_uart_rx|Add2~5\,
	combout => \u_uart_rx|Add2~6_combout\,
	cout => \u_uart_rx|Add2~7\);

-- Location: LCCOMB_X39_Y36_N20
\u_uart_rx|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add3~2_combout\ = \u_uart_rx|rx_byte\(6) $ (((\u_uart_rx|rx_byte\(5) & \u_uart_rx|rx_byte\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_byte\(6),
	datab => \u_uart_rx|rx_byte\(5),
	datac => \u_uart_rx|rx_byte\(4),
	combout => \u_uart_rx|Add3~2_combout\);

-- Location: LCCOMB_X36_Y36_N12
\u_uart_rx|rx_Data_len[6]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rx_Data_len[6]~25_combout\ = (\u_uart_rx|Add2~6_combout\ & ((\u_uart_rx|Add3~2_combout\ & (!\u_uart_rx|rx_Data_len[5]~24\)) # (!\u_uart_rx|Add3~2_combout\ & (\u_uart_rx|rx_Data_len[5]~24\ & VCC)))) # (!\u_uart_rx|Add2~6_combout\ & 
-- ((\u_uart_rx|Add3~2_combout\ & ((\u_uart_rx|rx_Data_len[5]~24\) # (GND))) # (!\u_uart_rx|Add3~2_combout\ & (!\u_uart_rx|rx_Data_len[5]~24\))))
-- \u_uart_rx|rx_Data_len[6]~26\ = CARRY((\u_uart_rx|Add2~6_combout\ & (\u_uart_rx|Add3~2_combout\ & !\u_uart_rx|rx_Data_len[5]~24\)) # (!\u_uart_rx|Add2~6_combout\ & ((\u_uart_rx|Add3~2_combout\) # (!\u_uart_rx|rx_Data_len[5]~24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Add2~6_combout\,
	datab => \u_uart_rx|Add3~2_combout\,
	datad => VCC,
	cin => \u_uart_rx|rx_Data_len[5]~24\,
	combout => \u_uart_rx|rx_Data_len[6]~25_combout\,
	cout => \u_uart_rx|rx_Data_len[6]~26\);

-- Location: FF_X36_Y36_N13
\u_uart_rx|rx_Data_len[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|rx_Data_len[6]~25_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_uart_rx|ALT_INV_parse_state.S_PARSE_LEN~q\,
	ena => \u_uart_rx|rx_Data_len[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_Data_len\(6));

-- Location: LCCOMB_X35_Y36_N10
\u_uart_rx|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add2~8_combout\ = ((\u_uart_rx|rx_Data_len\(6) $ (\u_uart_rx|rx_Data_len\(4) $ (!\u_uart_rx|Add2~7\)))) # (GND)
-- \u_uart_rx|Add2~9\ = CARRY((\u_uart_rx|rx_Data_len\(6) & ((\u_uart_rx|rx_Data_len\(4)) # (!\u_uart_rx|Add2~7\))) # (!\u_uart_rx|rx_Data_len\(6) & (\u_uart_rx|rx_Data_len\(4) & !\u_uart_rx|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_len\(6),
	datab => \u_uart_rx|rx_Data_len\(4),
	datad => VCC,
	cin => \u_uart_rx|Add2~7\,
	combout => \u_uart_rx|Add2~8_combout\,
	cout => \u_uart_rx|Add2~9\);

-- Location: LCCOMB_X39_Y36_N6
\u_uart_rx|Add3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add3~1_combout\ = \u_uart_rx|rx_byte\(7) $ (((\u_uart_rx|rx_byte\(6)) # ((\u_uart_rx|rx_byte\(4) & \u_uart_rx|rx_byte\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_byte\(4),
	datab => \u_uart_rx|rx_byte\(5),
	datac => \u_uart_rx|rx_byte\(7),
	datad => \u_uart_rx|rx_byte\(6),
	combout => \u_uart_rx|Add3~1_combout\);

-- Location: LCCOMB_X36_Y36_N14
\u_uart_rx|rx_Data_len[7]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rx_Data_len[7]~27_combout\ = ((\u_uart_rx|Add2~8_combout\ $ (\u_uart_rx|Add3~1_combout\ $ (\u_uart_rx|rx_Data_len[6]~26\)))) # (GND)
-- \u_uart_rx|rx_Data_len[7]~28\ = CARRY((\u_uart_rx|Add2~8_combout\ & ((!\u_uart_rx|rx_Data_len[6]~26\) # (!\u_uart_rx|Add3~1_combout\))) # (!\u_uart_rx|Add2~8_combout\ & (!\u_uart_rx|Add3~1_combout\ & !\u_uart_rx|rx_Data_len[6]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Add2~8_combout\,
	datab => \u_uart_rx|Add3~1_combout\,
	datad => VCC,
	cin => \u_uart_rx|rx_Data_len[6]~26\,
	combout => \u_uart_rx|rx_Data_len[7]~27_combout\,
	cout => \u_uart_rx|rx_Data_len[7]~28\);

-- Location: FF_X36_Y36_N15
\u_uart_rx|rx_Data_len[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|rx_Data_len[7]~27_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_uart_rx|ALT_INV_parse_state.S_PARSE_LEN~q\,
	ena => \u_uart_rx|rx_Data_len[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_Data_len\(7));

-- Location: LCCOMB_X35_Y36_N12
\u_uart_rx|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add2~10_combout\ = (\u_uart_rx|rx_Data_len\(7) & ((\u_uart_rx|rx_Data_len\(5) & (\u_uart_rx|Add2~9\ & VCC)) # (!\u_uart_rx|rx_Data_len\(5) & (!\u_uart_rx|Add2~9\)))) # (!\u_uart_rx|rx_Data_len\(7) & ((\u_uart_rx|rx_Data_len\(5) & 
-- (!\u_uart_rx|Add2~9\)) # (!\u_uart_rx|rx_Data_len\(5) & ((\u_uart_rx|Add2~9\) # (GND)))))
-- \u_uart_rx|Add2~11\ = CARRY((\u_uart_rx|rx_Data_len\(7) & (!\u_uart_rx|rx_Data_len\(5) & !\u_uart_rx|Add2~9\)) # (!\u_uart_rx|rx_Data_len\(7) & ((!\u_uart_rx|Add2~9\) # (!\u_uart_rx|rx_Data_len\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_len\(7),
	datab => \u_uart_rx|rx_Data_len\(5),
	datad => VCC,
	cin => \u_uart_rx|Add2~9\,
	combout => \u_uart_rx|Add2~10_combout\,
	cout => \u_uart_rx|Add2~11\);

-- Location: LCCOMB_X36_Y36_N16
\u_uart_rx|rx_Data_len[8]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rx_Data_len[8]~29_combout\ = (\u_uart_rx|Add3~0_combout\ & ((\u_uart_rx|Add2~10_combout\ & (!\u_uart_rx|rx_Data_len[7]~28\)) # (!\u_uart_rx|Add2~10_combout\ & ((\u_uart_rx|rx_Data_len[7]~28\) # (GND))))) # (!\u_uart_rx|Add3~0_combout\ & 
-- ((\u_uart_rx|Add2~10_combout\ & (\u_uart_rx|rx_Data_len[7]~28\ & VCC)) # (!\u_uart_rx|Add2~10_combout\ & (!\u_uart_rx|rx_Data_len[7]~28\))))
-- \u_uart_rx|rx_Data_len[8]~30\ = CARRY((\u_uart_rx|Add3~0_combout\ & ((!\u_uart_rx|rx_Data_len[7]~28\) # (!\u_uart_rx|Add2~10_combout\))) # (!\u_uart_rx|Add3~0_combout\ & (!\u_uart_rx|Add2~10_combout\ & !\u_uart_rx|rx_Data_len[7]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Add3~0_combout\,
	datab => \u_uart_rx|Add2~10_combout\,
	datad => VCC,
	cin => \u_uart_rx|rx_Data_len[7]~28\,
	combout => \u_uart_rx|rx_Data_len[8]~29_combout\,
	cout => \u_uart_rx|rx_Data_len[8]~30\);

-- Location: FF_X36_Y36_N17
\u_uart_rx|rx_Data_len[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|rx_Data_len[8]~29_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_uart_rx|ALT_INV_parse_state.S_PARSE_LEN~q\,
	ena => \u_uart_rx|rx_Data_len[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_Data_len\(8));

-- Location: LCCOMB_X35_Y36_N14
\u_uart_rx|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add2~12_combout\ = ((\u_uart_rx|rx_Data_len\(6) $ (\u_uart_rx|rx_Data_len\(8) $ (!\u_uart_rx|Add2~11\)))) # (GND)
-- \u_uart_rx|Add2~13\ = CARRY((\u_uart_rx|rx_Data_len\(6) & ((\u_uart_rx|rx_Data_len\(8)) # (!\u_uart_rx|Add2~11\))) # (!\u_uart_rx|rx_Data_len\(6) & (\u_uart_rx|rx_Data_len\(8) & !\u_uart_rx|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_len\(6),
	datab => \u_uart_rx|rx_Data_len\(8),
	datad => VCC,
	cin => \u_uart_rx|Add2~11\,
	combout => \u_uart_rx|Add2~12_combout\,
	cout => \u_uart_rx|Add2~13\);

-- Location: LCCOMB_X36_Y36_N18
\u_uart_rx|rx_Data_len[9]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rx_Data_len[9]~31_combout\ = ((\u_uart_rx|Add3~0_combout\ $ (\u_uart_rx|Add2~12_combout\ $ (\u_uart_rx|rx_Data_len[8]~30\)))) # (GND)
-- \u_uart_rx|rx_Data_len[9]~32\ = CARRY((\u_uart_rx|Add3~0_combout\ & (\u_uart_rx|Add2~12_combout\ & !\u_uart_rx|rx_Data_len[8]~30\)) # (!\u_uart_rx|Add3~0_combout\ & ((\u_uart_rx|Add2~12_combout\) # (!\u_uart_rx|rx_Data_len[8]~30\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Add3~0_combout\,
	datab => \u_uart_rx|Add2~12_combout\,
	datad => VCC,
	cin => \u_uart_rx|rx_Data_len[8]~30\,
	combout => \u_uart_rx|rx_Data_len[9]~31_combout\,
	cout => \u_uart_rx|rx_Data_len[9]~32\);

-- Location: FF_X36_Y36_N19
\u_uart_rx|rx_Data_len[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|rx_Data_len[9]~31_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_uart_rx|ALT_INV_parse_state.S_PARSE_LEN~q\,
	ena => \u_uart_rx|rx_Data_len[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_Data_len\(9));

-- Location: LCCOMB_X35_Y36_N16
\u_uart_rx|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add2~14_combout\ = (\u_uart_rx|rx_Data_len\(9) & ((\u_uart_rx|rx_Data_len\(7) & (\u_uart_rx|Add2~13\ & VCC)) # (!\u_uart_rx|rx_Data_len\(7) & (!\u_uart_rx|Add2~13\)))) # (!\u_uart_rx|rx_Data_len\(9) & ((\u_uart_rx|rx_Data_len\(7) & 
-- (!\u_uart_rx|Add2~13\)) # (!\u_uart_rx|rx_Data_len\(7) & ((\u_uart_rx|Add2~13\) # (GND)))))
-- \u_uart_rx|Add2~15\ = CARRY((\u_uart_rx|rx_Data_len\(9) & (!\u_uart_rx|rx_Data_len\(7) & !\u_uart_rx|Add2~13\)) # (!\u_uart_rx|rx_Data_len\(9) & ((!\u_uart_rx|Add2~13\) # (!\u_uart_rx|rx_Data_len\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_len\(9),
	datab => \u_uart_rx|rx_Data_len\(7),
	datad => VCC,
	cin => \u_uart_rx|Add2~13\,
	combout => \u_uart_rx|Add2~14_combout\,
	cout => \u_uart_rx|Add2~15\);

-- Location: LCCOMB_X36_Y36_N20
\u_uart_rx|rx_Data_len[10]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rx_Data_len[10]~33_combout\ = (\u_uart_rx|Add3~0_combout\ & ((\u_uart_rx|Add2~14_combout\ & (!\u_uart_rx|rx_Data_len[9]~32\)) # (!\u_uart_rx|Add2~14_combout\ & ((\u_uart_rx|rx_Data_len[9]~32\) # (GND))))) # (!\u_uart_rx|Add3~0_combout\ & 
-- ((\u_uart_rx|Add2~14_combout\ & (\u_uart_rx|rx_Data_len[9]~32\ & VCC)) # (!\u_uart_rx|Add2~14_combout\ & (!\u_uart_rx|rx_Data_len[9]~32\))))
-- \u_uart_rx|rx_Data_len[10]~34\ = CARRY((\u_uart_rx|Add3~0_combout\ & ((!\u_uart_rx|rx_Data_len[9]~32\) # (!\u_uart_rx|Add2~14_combout\))) # (!\u_uart_rx|Add3~0_combout\ & (!\u_uart_rx|Add2~14_combout\ & !\u_uart_rx|rx_Data_len[9]~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Add3~0_combout\,
	datab => \u_uart_rx|Add2~14_combout\,
	datad => VCC,
	cin => \u_uart_rx|rx_Data_len[9]~32\,
	combout => \u_uart_rx|rx_Data_len[10]~33_combout\,
	cout => \u_uart_rx|rx_Data_len[10]~34\);

-- Location: FF_X36_Y36_N21
\u_uart_rx|rx_Data_len[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|rx_Data_len[10]~33_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_uart_rx|ALT_INV_parse_state.S_PARSE_LEN~q\,
	ena => \u_uart_rx|rx_Data_len[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_Data_len\(10));

-- Location: LCCOMB_X35_Y36_N18
\u_uart_rx|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add2~16_combout\ = ((\u_uart_rx|rx_Data_len\(10) $ (\u_uart_rx|rx_Data_len\(8) $ (!\u_uart_rx|Add2~15\)))) # (GND)
-- \u_uart_rx|Add2~17\ = CARRY((\u_uart_rx|rx_Data_len\(10) & ((\u_uart_rx|rx_Data_len\(8)) # (!\u_uart_rx|Add2~15\))) # (!\u_uart_rx|rx_Data_len\(10) & (\u_uart_rx|rx_Data_len\(8) & !\u_uart_rx|Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_len\(10),
	datab => \u_uart_rx|rx_Data_len\(8),
	datad => VCC,
	cin => \u_uart_rx|Add2~15\,
	combout => \u_uart_rx|Add2~16_combout\,
	cout => \u_uart_rx|Add2~17\);

-- Location: LCCOMB_X36_Y36_N22
\u_uart_rx|rx_Data_len[11]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rx_Data_len[11]~35_combout\ = ((\u_uart_rx|Add3~0_combout\ $ (\u_uart_rx|Add2~16_combout\ $ (\u_uart_rx|rx_Data_len[10]~34\)))) # (GND)
-- \u_uart_rx|rx_Data_len[11]~36\ = CARRY((\u_uart_rx|Add3~0_combout\ & (\u_uart_rx|Add2~16_combout\ & !\u_uart_rx|rx_Data_len[10]~34\)) # (!\u_uart_rx|Add3~0_combout\ & ((\u_uart_rx|Add2~16_combout\) # (!\u_uart_rx|rx_Data_len[10]~34\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Add3~0_combout\,
	datab => \u_uart_rx|Add2~16_combout\,
	datad => VCC,
	cin => \u_uart_rx|rx_Data_len[10]~34\,
	combout => \u_uart_rx|rx_Data_len[11]~35_combout\,
	cout => \u_uart_rx|rx_Data_len[11]~36\);

-- Location: FF_X36_Y36_N23
\u_uart_rx|rx_Data_len[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|rx_Data_len[11]~35_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_uart_rx|ALT_INV_parse_state.S_PARSE_LEN~q\,
	ena => \u_uart_rx|rx_Data_len[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_Data_len\(11));

-- Location: LCCOMB_X35_Y36_N20
\u_uart_rx|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add2~18_combout\ = (\u_uart_rx|rx_Data_len\(9) & ((\u_uart_rx|rx_Data_len\(11) & (\u_uart_rx|Add2~17\ & VCC)) # (!\u_uart_rx|rx_Data_len\(11) & (!\u_uart_rx|Add2~17\)))) # (!\u_uart_rx|rx_Data_len\(9) & ((\u_uart_rx|rx_Data_len\(11) & 
-- (!\u_uart_rx|Add2~17\)) # (!\u_uart_rx|rx_Data_len\(11) & ((\u_uart_rx|Add2~17\) # (GND)))))
-- \u_uart_rx|Add2~19\ = CARRY((\u_uart_rx|rx_Data_len\(9) & (!\u_uart_rx|rx_Data_len\(11) & !\u_uart_rx|Add2~17\)) # (!\u_uart_rx|rx_Data_len\(9) & ((!\u_uart_rx|Add2~17\) # (!\u_uart_rx|rx_Data_len\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_len\(9),
	datab => \u_uart_rx|rx_Data_len\(11),
	datad => VCC,
	cin => \u_uart_rx|Add2~17\,
	combout => \u_uart_rx|Add2~18_combout\,
	cout => \u_uart_rx|Add2~19\);

-- Location: LCCOMB_X36_Y36_N24
\u_uart_rx|rx_Data_len[12]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rx_Data_len[12]~37_combout\ = (\u_uart_rx|Add3~0_combout\ & ((\u_uart_rx|Add2~18_combout\ & (!\u_uart_rx|rx_Data_len[11]~36\)) # (!\u_uart_rx|Add2~18_combout\ & ((\u_uart_rx|rx_Data_len[11]~36\) # (GND))))) # (!\u_uart_rx|Add3~0_combout\ & 
-- ((\u_uart_rx|Add2~18_combout\ & (\u_uart_rx|rx_Data_len[11]~36\ & VCC)) # (!\u_uart_rx|Add2~18_combout\ & (!\u_uart_rx|rx_Data_len[11]~36\))))
-- \u_uart_rx|rx_Data_len[12]~38\ = CARRY((\u_uart_rx|Add3~0_combout\ & ((!\u_uart_rx|rx_Data_len[11]~36\) # (!\u_uart_rx|Add2~18_combout\))) # (!\u_uart_rx|Add3~0_combout\ & (!\u_uart_rx|Add2~18_combout\ & !\u_uart_rx|rx_Data_len[11]~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Add3~0_combout\,
	datab => \u_uart_rx|Add2~18_combout\,
	datad => VCC,
	cin => \u_uart_rx|rx_Data_len[11]~36\,
	combout => \u_uart_rx|rx_Data_len[12]~37_combout\,
	cout => \u_uart_rx|rx_Data_len[12]~38\);

-- Location: FF_X36_Y36_N25
\u_uart_rx|rx_Data_len[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|rx_Data_len[12]~37_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_uart_rx|ALT_INV_parse_state.S_PARSE_LEN~q\,
	ena => \u_uart_rx|rx_Data_len[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_Data_len\(12));

-- Location: LCCOMB_X35_Y36_N22
\u_uart_rx|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add2~20_combout\ = ((\u_uart_rx|rx_Data_len\(10) $ (\u_uart_rx|rx_Data_len\(12) $ (!\u_uart_rx|Add2~19\)))) # (GND)
-- \u_uart_rx|Add2~21\ = CARRY((\u_uart_rx|rx_Data_len\(10) & ((\u_uart_rx|rx_Data_len\(12)) # (!\u_uart_rx|Add2~19\))) # (!\u_uart_rx|rx_Data_len\(10) & (\u_uart_rx|rx_Data_len\(12) & !\u_uart_rx|Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_len\(10),
	datab => \u_uart_rx|rx_Data_len\(12),
	datad => VCC,
	cin => \u_uart_rx|Add2~19\,
	combout => \u_uart_rx|Add2~20_combout\,
	cout => \u_uart_rx|Add2~21\);

-- Location: LCCOMB_X36_Y36_N26
\u_uart_rx|rx_Data_len[13]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rx_Data_len[13]~39_combout\ = ((\u_uart_rx|Add3~0_combout\ $ (\u_uart_rx|Add2~20_combout\ $ (\u_uart_rx|rx_Data_len[12]~38\)))) # (GND)
-- \u_uart_rx|rx_Data_len[13]~40\ = CARRY((\u_uart_rx|Add3~0_combout\ & (\u_uart_rx|Add2~20_combout\ & !\u_uart_rx|rx_Data_len[12]~38\)) # (!\u_uart_rx|Add3~0_combout\ & ((\u_uart_rx|Add2~20_combout\) # (!\u_uart_rx|rx_Data_len[12]~38\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Add3~0_combout\,
	datab => \u_uart_rx|Add2~20_combout\,
	datad => VCC,
	cin => \u_uart_rx|rx_Data_len[12]~38\,
	combout => \u_uart_rx|rx_Data_len[13]~39_combout\,
	cout => \u_uart_rx|rx_Data_len[13]~40\);

-- Location: FF_X36_Y36_N27
\u_uart_rx|rx_Data_len[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|rx_Data_len[13]~39_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_uart_rx|ALT_INV_parse_state.S_PARSE_LEN~q\,
	ena => \u_uart_rx|rx_Data_len[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_Data_len\(13));

-- Location: LCCOMB_X35_Y36_N24
\u_uart_rx|Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add2~22_combout\ = (\u_uart_rx|rx_Data_len\(13) & ((\u_uart_rx|rx_Data_len\(11) & (\u_uart_rx|Add2~21\ & VCC)) # (!\u_uart_rx|rx_Data_len\(11) & (!\u_uart_rx|Add2~21\)))) # (!\u_uart_rx|rx_Data_len\(13) & ((\u_uart_rx|rx_Data_len\(11) & 
-- (!\u_uart_rx|Add2~21\)) # (!\u_uart_rx|rx_Data_len\(11) & ((\u_uart_rx|Add2~21\) # (GND)))))
-- \u_uart_rx|Add2~23\ = CARRY((\u_uart_rx|rx_Data_len\(13) & (!\u_uart_rx|rx_Data_len\(11) & !\u_uart_rx|Add2~21\)) # (!\u_uart_rx|rx_Data_len\(13) & ((!\u_uart_rx|Add2~21\) # (!\u_uart_rx|rx_Data_len\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_len\(13),
	datab => \u_uart_rx|rx_Data_len\(11),
	datad => VCC,
	cin => \u_uart_rx|Add2~21\,
	combout => \u_uart_rx|Add2~22_combout\,
	cout => \u_uart_rx|Add2~23\);

-- Location: LCCOMB_X36_Y36_N28
\u_uart_rx|rx_Data_len[14]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rx_Data_len[14]~41_combout\ = (\u_uart_rx|Add3~0_combout\ & ((\u_uart_rx|Add2~22_combout\ & (!\u_uart_rx|rx_Data_len[13]~40\)) # (!\u_uart_rx|Add2~22_combout\ & ((\u_uart_rx|rx_Data_len[13]~40\) # (GND))))) # (!\u_uart_rx|Add3~0_combout\ & 
-- ((\u_uart_rx|Add2~22_combout\ & (\u_uart_rx|rx_Data_len[13]~40\ & VCC)) # (!\u_uart_rx|Add2~22_combout\ & (!\u_uart_rx|rx_Data_len[13]~40\))))
-- \u_uart_rx|rx_Data_len[14]~42\ = CARRY((\u_uart_rx|Add3~0_combout\ & ((!\u_uart_rx|rx_Data_len[13]~40\) # (!\u_uart_rx|Add2~22_combout\))) # (!\u_uart_rx|Add3~0_combout\ & (!\u_uart_rx|Add2~22_combout\ & !\u_uart_rx|rx_Data_len[13]~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Add3~0_combout\,
	datab => \u_uart_rx|Add2~22_combout\,
	datad => VCC,
	cin => \u_uart_rx|rx_Data_len[13]~40\,
	combout => \u_uart_rx|rx_Data_len[14]~41_combout\,
	cout => \u_uart_rx|rx_Data_len[14]~42\);

-- Location: FF_X36_Y36_N29
\u_uart_rx|rx_Data_len[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|rx_Data_len[14]~41_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_uart_rx|ALT_INV_parse_state.S_PARSE_LEN~q\,
	ena => \u_uart_rx|rx_Data_len[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_Data_len\(14));

-- Location: LCCOMB_X35_Y36_N26
\u_uart_rx|Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Add2~24_combout\ = \u_uart_rx|rx_Data_len\(14) $ (\u_uart_rx|Add2~23\ $ (!\u_uart_rx|rx_Data_len\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|rx_Data_len\(14),
	datad => \u_uart_rx|rx_Data_len\(12),
	cin => \u_uart_rx|Add2~23\,
	combout => \u_uart_rx|Add2~24_combout\);

-- Location: LCCOMB_X36_Y36_N30
\u_uart_rx|rx_Data_len[15]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rx_Data_len[15]~43_combout\ = \u_uart_rx|Add3~0_combout\ $ (\u_uart_rx|rx_Data_len[14]~42\ $ (\u_uart_rx|Add2~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Add3~0_combout\,
	datad => \u_uart_rx|Add2~24_combout\,
	cin => \u_uart_rx|rx_Data_len[14]~42\,
	combout => \u_uart_rx|rx_Data_len[15]~43_combout\);

-- Location: FF_X36_Y36_N31
\u_uart_rx|rx_Data_len[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|rx_Data_len[15]~43_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_uart_rx|ALT_INV_parse_state.S_PARSE_LEN~q\,
	ena => \u_uart_rx|rx_Data_len[15]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_Data_len\(15));

-- Location: LCCOMB_X37_Y36_N0
\u_uart_rx|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|LessThan3~1_cout\ = CARRY((\u_uart_rx|rx_Data_len\(0) & !\u_uart_rx|Add5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_len\(0),
	datab => \u_uart_rx|Add5~0_combout\,
	datad => VCC,
	cout => \u_uart_rx|LessThan3~1_cout\);

-- Location: LCCOMB_X37_Y36_N2
\u_uart_rx|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|LessThan3~3_cout\ = CARRY((\u_uart_rx|rx_Data_len\(1) & (\u_uart_rx|Add5~2_combout\ & !\u_uart_rx|LessThan3~1_cout\)) # (!\u_uart_rx|rx_Data_len\(1) & ((\u_uart_rx|Add5~2_combout\) # (!\u_uart_rx|LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_len\(1),
	datab => \u_uart_rx|Add5~2_combout\,
	datad => VCC,
	cin => \u_uart_rx|LessThan3~1_cout\,
	cout => \u_uart_rx|LessThan3~3_cout\);

-- Location: LCCOMB_X37_Y36_N4
\u_uart_rx|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|LessThan3~5_cout\ = CARRY((\u_uart_rx|rx_Data_len\(2) & ((!\u_uart_rx|LessThan3~3_cout\) # (!\u_uart_rx|Add5~4_combout\))) # (!\u_uart_rx|rx_Data_len\(2) & (!\u_uart_rx|Add5~4_combout\ & !\u_uart_rx|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_len\(2),
	datab => \u_uart_rx|Add5~4_combout\,
	datad => VCC,
	cin => \u_uart_rx|LessThan3~3_cout\,
	cout => \u_uart_rx|LessThan3~5_cout\);

-- Location: LCCOMB_X37_Y36_N6
\u_uart_rx|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|LessThan3~7_cout\ = CARRY((\u_uart_rx|Add5~6_combout\ & ((!\u_uart_rx|LessThan3~5_cout\) # (!\u_uart_rx|rx_Data_len\(3)))) # (!\u_uart_rx|Add5~6_combout\ & (!\u_uart_rx|rx_Data_len\(3) & !\u_uart_rx|LessThan3~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Add5~6_combout\,
	datab => \u_uart_rx|rx_Data_len\(3),
	datad => VCC,
	cin => \u_uart_rx|LessThan3~5_cout\,
	cout => \u_uart_rx|LessThan3~7_cout\);

-- Location: LCCOMB_X37_Y36_N8
\u_uart_rx|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|LessThan3~9_cout\ = CARRY((\u_uart_rx|Add5~8_combout\ & (\u_uart_rx|rx_Data_len\(4) & !\u_uart_rx|LessThan3~7_cout\)) # (!\u_uart_rx|Add5~8_combout\ & ((\u_uart_rx|rx_Data_len\(4)) # (!\u_uart_rx|LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Add5~8_combout\,
	datab => \u_uart_rx|rx_Data_len\(4),
	datad => VCC,
	cin => \u_uart_rx|LessThan3~7_cout\,
	cout => \u_uart_rx|LessThan3~9_cout\);

-- Location: LCCOMB_X37_Y36_N10
\u_uart_rx|LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|LessThan3~11_cout\ = CARRY((\u_uart_rx|Add5~10_combout\ & ((!\u_uart_rx|LessThan3~9_cout\) # (!\u_uart_rx|rx_Data_len\(5)))) # (!\u_uart_rx|Add5~10_combout\ & (!\u_uart_rx|rx_Data_len\(5) & !\u_uart_rx|LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Add5~10_combout\,
	datab => \u_uart_rx|rx_Data_len\(5),
	datad => VCC,
	cin => \u_uart_rx|LessThan3~9_cout\,
	cout => \u_uart_rx|LessThan3~11_cout\);

-- Location: LCCOMB_X37_Y36_N12
\u_uart_rx|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|LessThan3~13_cout\ = CARRY((\u_uart_rx|rx_Data_len\(6) & ((!\u_uart_rx|LessThan3~11_cout\) # (!\u_uart_rx|Add5~12_combout\))) # (!\u_uart_rx|rx_Data_len\(6) & (!\u_uart_rx|Add5~12_combout\ & !\u_uart_rx|LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_len\(6),
	datab => \u_uart_rx|Add5~12_combout\,
	datad => VCC,
	cin => \u_uart_rx|LessThan3~11_cout\,
	cout => \u_uart_rx|LessThan3~13_cout\);

-- Location: LCCOMB_X37_Y36_N14
\u_uart_rx|LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|LessThan3~15_cout\ = CARRY((\u_uart_rx|rx_Data_len\(7) & (\u_uart_rx|Add5~14_combout\ & !\u_uart_rx|LessThan3~13_cout\)) # (!\u_uart_rx|rx_Data_len\(7) & ((\u_uart_rx|Add5~14_combout\) # (!\u_uart_rx|LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_len\(7),
	datab => \u_uart_rx|Add5~14_combout\,
	datad => VCC,
	cin => \u_uart_rx|LessThan3~13_cout\,
	cout => \u_uart_rx|LessThan3~15_cout\);

-- Location: LCCOMB_X37_Y36_N16
\u_uart_rx|LessThan3~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|LessThan3~17_cout\ = CARRY((\u_uart_rx|Add5~16_combout\ & (\u_uart_rx|rx_Data_len\(8) & !\u_uart_rx|LessThan3~15_cout\)) # (!\u_uart_rx|Add5~16_combout\ & ((\u_uart_rx|rx_Data_len\(8)) # (!\u_uart_rx|LessThan3~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Add5~16_combout\,
	datab => \u_uart_rx|rx_Data_len\(8),
	datad => VCC,
	cin => \u_uart_rx|LessThan3~15_cout\,
	cout => \u_uart_rx|LessThan3~17_cout\);

-- Location: LCCOMB_X37_Y36_N18
\u_uart_rx|LessThan3~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|LessThan3~19_cout\ = CARRY((\u_uart_rx|rx_Data_len\(9) & (\u_uart_rx|Add5~18_combout\ & !\u_uart_rx|LessThan3~17_cout\)) # (!\u_uart_rx|rx_Data_len\(9) & ((\u_uart_rx|Add5~18_combout\) # (!\u_uart_rx|LessThan3~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_len\(9),
	datab => \u_uart_rx|Add5~18_combout\,
	datad => VCC,
	cin => \u_uart_rx|LessThan3~17_cout\,
	cout => \u_uart_rx|LessThan3~19_cout\);

-- Location: LCCOMB_X37_Y36_N20
\u_uart_rx|LessThan3~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|LessThan3~21_cout\ = CARRY((\u_uart_rx|Add5~20_combout\ & (\u_uart_rx|rx_Data_len\(10) & !\u_uart_rx|LessThan3~19_cout\)) # (!\u_uart_rx|Add5~20_combout\ & ((\u_uart_rx|rx_Data_len\(10)) # (!\u_uart_rx|LessThan3~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Add5~20_combout\,
	datab => \u_uart_rx|rx_Data_len\(10),
	datad => VCC,
	cin => \u_uart_rx|LessThan3~19_cout\,
	cout => \u_uart_rx|LessThan3~21_cout\);

-- Location: LCCOMB_X37_Y36_N22
\u_uart_rx|LessThan3~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|LessThan3~23_cout\ = CARRY((\u_uart_rx|Add5~22_combout\ & ((!\u_uart_rx|LessThan3~21_cout\) # (!\u_uart_rx|rx_Data_len\(11)))) # (!\u_uart_rx|Add5~22_combout\ & (!\u_uart_rx|rx_Data_len\(11) & !\u_uart_rx|LessThan3~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Add5~22_combout\,
	datab => \u_uart_rx|rx_Data_len\(11),
	datad => VCC,
	cin => \u_uart_rx|LessThan3~21_cout\,
	cout => \u_uart_rx|LessThan3~23_cout\);

-- Location: LCCOMB_X37_Y36_N24
\u_uart_rx|LessThan3~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|LessThan3~25_cout\ = CARRY((\u_uart_rx|rx_Data_len\(12) & ((!\u_uart_rx|LessThan3~23_cout\) # (!\u_uart_rx|Add5~24_combout\))) # (!\u_uart_rx|rx_Data_len\(12) & (!\u_uart_rx|Add5~24_combout\ & !\u_uart_rx|LessThan3~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_len\(12),
	datab => \u_uart_rx|Add5~24_combout\,
	datad => VCC,
	cin => \u_uart_rx|LessThan3~23_cout\,
	cout => \u_uart_rx|LessThan3~25_cout\);

-- Location: LCCOMB_X37_Y36_N26
\u_uart_rx|LessThan3~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|LessThan3~27_cout\ = CARRY((\u_uart_rx|rx_Data_len\(13) & (\u_uart_rx|Add5~26_combout\ & !\u_uart_rx|LessThan3~25_cout\)) # (!\u_uart_rx|rx_Data_len\(13) & ((\u_uart_rx|Add5~26_combout\) # (!\u_uart_rx|LessThan3~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_len\(13),
	datab => \u_uart_rx|Add5~26_combout\,
	datad => VCC,
	cin => \u_uart_rx|LessThan3~25_cout\,
	cout => \u_uart_rx|LessThan3~27_cout\);

-- Location: LCCOMB_X37_Y36_N28
\u_uart_rx|LessThan3~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|LessThan3~29_cout\ = CARRY((\u_uart_rx|rx_Data_len\(14) & ((!\u_uart_rx|LessThan3~27_cout\) # (!\u_uart_rx|Add5~28_combout\))) # (!\u_uart_rx|rx_Data_len\(14) & (!\u_uart_rx|Add5~28_combout\ & !\u_uart_rx|LessThan3~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_len\(14),
	datab => \u_uart_rx|Add5~28_combout\,
	datad => VCC,
	cin => \u_uart_rx|LessThan3~27_cout\,
	cout => \u_uart_rx|LessThan3~29_cout\);

-- Location: LCCOMB_X37_Y36_N30
\u_uart_rx|LessThan3~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|LessThan3~30_combout\ = (\u_uart_rx|rx_Data_len\(15) & ((\u_uart_rx|LessThan3~29_cout\) # (!\u_uart_rx|Add5~30_combout\))) # (!\u_uart_rx|rx_Data_len\(15) & (\u_uart_rx|LessThan3~29_cout\ & !\u_uart_rx|Add5~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|rx_Data_len\(15),
	datad => \u_uart_rx|Add5~30_combout\,
	cin => \u_uart_rx|LessThan3~29_cout\,
	combout => \u_uart_rx|LessThan3~30_combout\);

-- Location: LCCOMB_X35_Y36_N0
\u_uart_rx|always1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|always1~2_combout\ = (\u_uart_rx|always1~1_combout\) # ((\u_uart_rx|always1~0_combout\) # ((\u_uart_rx|Add5~10_combout\) # (!\u_uart_rx|LessThan3~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|always1~1_combout\,
	datab => \u_uart_rx|always1~0_combout\,
	datac => \u_uart_rx|Add5~10_combout\,
	datad => \u_uart_rx|LessThan3~30_combout\,
	combout => \u_uart_rx|always1~2_combout\);

-- Location: LCCOMB_X35_Y36_N30
\u_uart_rx|Selector38~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector38~8_combout\ = (!\u_uart_rx|Selector38~7_combout\ & (((!\u_uart_rx|always1~4_combout\ & !\u_uart_rx|always1~2_combout\)) # (!\u_uart_rx|parse_state.S_RECV_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|parse_state.S_RECV_DATA~q\,
	datab => \u_uart_rx|Selector38~7_combout\,
	datac => \u_uart_rx|always1~4_combout\,
	datad => \u_uart_rx|always1~2_combout\,
	combout => \u_uart_rx|Selector38~8_combout\);

-- Location: FF_X35_Y36_N31
\u_uart_rx|parse_state.S_SEARCH_PLUS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|Selector38~8_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|rx_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|parse_state.S_SEARCH_PLUS~q\);

-- Location: LCCOMB_X42_Y36_N30
\u_uart_rx|ipd_step~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|ipd_step~15_combout\ = (((\u_uart_rx|parse_state.S_SEARCH_PLUS~q\) # (!\u_uart_rx|rx_byte\(1))) # (!\u_uart_rx|Equal2~0_combout\)) # (!\u_uart_rx|Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Equal2~1_combout\,
	datab => \u_uart_rx|Equal2~0_combout\,
	datac => \u_uart_rx|rx_byte\(1),
	datad => \u_uart_rx|parse_state.S_SEARCH_PLUS~q\,
	combout => \u_uart_rx|ipd_step~15_combout\);

-- Location: LCCOMB_X42_Y36_N0
\u_uart_rx|ipd_step~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|ipd_step~16_combout\ = (\u_uart_rx|ipd_step.10~q\ & ((\u_uart_rx|Equal5~0_combout\) # ((\u_uart_rx|ipd_step.01~q\ & \u_uart_rx|Equal4~0_combout\)))) # (!\u_uart_rx|ipd_step.10~q\ & (((\u_uart_rx|ipd_step.01~q\ & \u_uart_rx|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|ipd_step.10~q\,
	datab => \u_uart_rx|Equal5~0_combout\,
	datac => \u_uart_rx|ipd_step.01~q\,
	datad => \u_uart_rx|Equal4~0_combout\,
	combout => \u_uart_rx|ipd_step~16_combout\);

-- Location: LCCOMB_X42_Y36_N2
\u_uart_rx|ipd_step~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|ipd_step~17_combout\ = (\u_uart_rx|rx_byte\(3) & (!\u_uart_rx|ipd_step.00~q\ & (\u_uart_rx|Equal2~1_combout\))) # (!\u_uart_rx|rx_byte\(3) & (((\u_uart_rx|ipd_step~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_byte\(3),
	datab => \u_uart_rx|ipd_step.00~q\,
	datac => \u_uart_rx|Equal2~1_combout\,
	datad => \u_uart_rx|ipd_step~16_combout\,
	combout => \u_uart_rx|ipd_step~17_combout\);

-- Location: LCCOMB_X42_Y36_N28
\u_uart_rx|ipd_step~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|ipd_step~18_combout\ = ((\u_uart_rx|Equal3~0_combout\ & (\u_uart_rx|parse_state.S_MATCH_IPD~q\ & \u_uart_rx|ipd_step~17_combout\))) # (!\u_uart_rx|ipd_step~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|ipd_step~15_combout\,
	datab => \u_uart_rx|Equal3~0_combout\,
	datac => \u_uart_rx|parse_state.S_MATCH_IPD~q\,
	datad => \u_uart_rx|ipd_step~17_combout\,
	combout => \u_uart_rx|ipd_step~18_combout\);

-- Location: FF_X42_Y36_N29
\u_uart_rx|parse_state.S_MATCH_IPD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|ipd_step~18_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|rx_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|parse_state.S_MATCH_IPD~q\);

-- Location: LCCOMB_X42_Y36_N20
\u_uart_rx|Selector40~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector40~0_combout\ = (\u_uart_rx|parse_state.S_MATCH_IPD~q\ & \u_uart_rx|ipd_step.11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|parse_state.S_MATCH_IPD~q\,
	datad => \u_uart_rx|ipd_step.11~q\,
	combout => \u_uart_rx|Selector40~0_combout\);

-- Location: LCCOMB_X42_Y36_N12
\u_uart_rx|Selector40~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector40~1_combout\ = (\u_uart_rx|Equal6~0_combout\ & ((\u_uart_rx|Selector40~0_combout\) # ((!\u_uart_rx|always1~6_combout\ & \u_uart_rx|parse_state.S_PARSE_ID~q\)))) # (!\u_uart_rx|Equal6~0_combout\ & (!\u_uart_rx|always1~6_combout\ & 
-- (\u_uart_rx|parse_state.S_PARSE_ID~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Equal6~0_combout\,
	datab => \u_uart_rx|always1~6_combout\,
	datac => \u_uart_rx|parse_state.S_PARSE_ID~q\,
	datad => \u_uart_rx|Selector40~0_combout\,
	combout => \u_uart_rx|Selector40~1_combout\);

-- Location: FF_X42_Y36_N13
\u_uart_rx|parse_state.S_PARSE_ID\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|Selector40~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|rx_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|parse_state.S_PARSE_ID~q\);

-- Location: LCCOMB_X42_Y36_N26
\u_uart_rx|Selector41~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector41~0_combout\ = (\u_uart_rx|parse_state.S_PARSE_ID~q\ & ((\u_uart_rx|Equal6~0_combout\) # ((!\u_uart_rx|always1~6_combout\ & \u_uart_rx|parse_state.S_PARSE_LEN~q\)))) # (!\u_uart_rx|parse_state.S_PARSE_ID~q\ & 
-- (!\u_uart_rx|always1~6_combout\ & (\u_uart_rx|parse_state.S_PARSE_LEN~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|parse_state.S_PARSE_ID~q\,
	datab => \u_uart_rx|always1~6_combout\,
	datac => \u_uart_rx|parse_state.S_PARSE_LEN~q\,
	datad => \u_uart_rx|Equal6~0_combout\,
	combout => \u_uart_rx|Selector41~0_combout\);

-- Location: FF_X42_Y36_N23
\u_uart_rx|parse_state.S_PARSE_LEN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_uart_rx|Selector41~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_uart_rx|rx_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|parse_state.S_PARSE_LEN~q\);

-- Location: LCCOMB_X41_Y36_N16
\u_uart_rx|Selector42~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector42~0_combout\ = (\u_uart_rx|rx_byte\(1) & (\u_uart_rx|Equal2~0_combout\ & (\u_uart_rx|parse_state.S_PARSE_LEN~q\ & \u_uart_rx|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_byte\(1),
	datab => \u_uart_rx|Equal2~0_combout\,
	datac => \u_uart_rx|parse_state.S_PARSE_LEN~q\,
	datad => \u_uart_rx|Equal4~0_combout\,
	combout => \u_uart_rx|Selector42~0_combout\);

-- Location: LCCOMB_X39_Y36_N8
\u_uart_rx|Selector42~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector42~1_combout\ = (!\u_uart_rx|Add5~10_combout\ & (\u_uart_rx|parse_state.S_RECV_DATA~q\ & (!\u_uart_rx|always1~0_combout\ & !\u_uart_rx|always1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|Add5~10_combout\,
	datab => \u_uart_rx|parse_state.S_RECV_DATA~q\,
	datac => \u_uart_rx|always1~0_combout\,
	datad => \u_uart_rx|always1~1_combout\,
	combout => \u_uart_rx|Selector42~1_combout\);

-- Location: LCCOMB_X38_Y36_N18
\u_uart_rx|Selector42~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector42~2_combout\ = (\u_uart_rx|Selector42~0_combout\) # ((!\u_uart_rx|always1~4_combout\ & (\u_uart_rx|Selector42~1_combout\ & \u_uart_rx|LessThan3~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|always1~4_combout\,
	datab => \u_uart_rx|Selector42~0_combout\,
	datac => \u_uart_rx|Selector42~1_combout\,
	datad => \u_uart_rx|LessThan3~30_combout\,
	combout => \u_uart_rx|Selector42~2_combout\);

-- Location: FF_X38_Y36_N19
\u_uart_rx|parse_state.S_RECV_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|Selector42~2_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|rx_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|parse_state.S_RECV_DATA~q\);

-- Location: LCCOMB_X38_Y35_N8
\u_uart_rx|Selector334~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector334~0_combout\ = (\u_uart_rx|parse_state.S_RECV_DATA~q\ & \u_uart_rx|rx_byte\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|parse_state.S_RECV_DATA~q\,
	datad => \u_uart_rx|rx_byte\(0),
	combout => \u_uart_rx|Selector334~0_combout\);

-- Location: LCCOMB_X39_Y36_N28
\u_uart_rx|rx_Data_reg[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rx_Data_reg[0]~0_combout\ = (\u_uart_rx|rx_done~q\ & ((\u_uart_rx|Selector42~0_combout\) # ((!\u_uart_rx|parse_state.S_PARSE_LEN~q\ & \u_uart_rx|parse_state.S_RECV_DATA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_done~q\,
	datab => \u_uart_rx|parse_state.S_PARSE_LEN~q\,
	datac => \u_uart_rx|parse_state.S_RECV_DATA~q\,
	datad => \u_uart_rx|Selector42~0_combout\,
	combout => \u_uart_rx|rx_Data_reg[0]~0_combout\);

-- Location: FF_X38_Y35_N9
\u_uart_rx|rx_Data_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|Selector334~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|rx_Data_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_Data_reg\(0));

-- Location: LCCOMB_X38_Y35_N4
\u_uart_rx|Selector333~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector333~0_combout\ = (\u_uart_rx|rx_byte\(1) & \u_uart_rx|parse_state.S_RECV_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|rx_byte\(1),
	datad => \u_uart_rx|parse_state.S_RECV_DATA~q\,
	combout => \u_uart_rx|Selector333~0_combout\);

-- Location: FF_X38_Y35_N5
\u_uart_rx|rx_Data_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|Selector333~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|rx_Data_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_Data_reg\(1));

-- Location: LCCOMB_X38_Y35_N30
\u_uart_rx|Selector327~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector327~0_combout\ = (\u_uart_rx|parse_state.S_RECV_DATA~q\ & \u_uart_rx|rx_byte\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|parse_state.S_RECV_DATA~q\,
	datad => \u_uart_rx|rx_byte\(7),
	combout => \u_uart_rx|Selector327~0_combout\);

-- Location: FF_X38_Y35_N31
\u_uart_rx|rx_Data_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|Selector327~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|rx_Data_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_Data_reg\(7));

-- Location: LCCOMB_X41_Y36_N14
\u_uart_rx|Selector331~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector331~0_combout\ = (\u_uart_rx|parse_state.S_RECV_DATA~q\ & \u_uart_rx|rx_byte\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|parse_state.S_RECV_DATA~q\,
	datad => \u_uart_rx|rx_byte\(3),
	combout => \u_uart_rx|Selector331~0_combout\);

-- Location: FF_X41_Y35_N5
\u_uart_rx|rx_Data_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_uart_rx|Selector331~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_uart_rx|rx_Data_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_Data_reg\(3));

-- Location: LCCOMB_X41_Y36_N30
\u_uart_rx|Selector332~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector332~0_combout\ = (\u_uart_rx|parse_state.S_RECV_DATA~q\ & \u_uart_rx|rx_byte\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|parse_state.S_RECV_DATA~q\,
	datab => \u_uart_rx|rx_byte\(2),
	combout => \u_uart_rx|Selector332~0_combout\);

-- Location: FF_X41_Y35_N9
\u_uart_rx|rx_Data_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_uart_rx|Selector332~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_uart_rx|rx_Data_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_Data_reg\(2));

-- Location: LCCOMB_X38_Y35_N6
\mode_LED_u1|always0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|always0~3_combout\ = (\u_uart_rx|rx_Data_reg\(7)) # ((\u_uart_rx|rx_Data_reg\(3) & ((\u_uart_rx|rx_Data_reg\(1)) # (\u_uart_rx|rx_Data_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_reg\(1),
	datab => \u_uart_rx|rx_Data_reg\(7),
	datac => \u_uart_rx|rx_Data_reg\(3),
	datad => \u_uart_rx|rx_Data_reg\(2),
	combout => \mode_LED_u1|always0~3_combout\);

-- Location: LCCOMB_X38_Y35_N28
\u_uart_rx|Selector328~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector328~0_combout\ = (\u_uart_rx|rx_byte\(6) & \u_uart_rx|parse_state.S_RECV_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_rx|rx_byte\(6),
	datad => \u_uart_rx|parse_state.S_RECV_DATA~q\,
	combout => \u_uart_rx|Selector328~0_combout\);

-- Location: FF_X38_Y35_N29
\u_uart_rx|rx_Data_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|Selector328~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|rx_Data_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_Data_reg\(6));

-- Location: LCCOMB_X39_Y36_N14
\u_uart_rx|Selector330~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector330~0_combout\ = (\u_uart_rx|rx_byte\(4) & \u_uart_rx|parse_state.S_RECV_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uart_rx|rx_byte\(4),
	datad => \u_uart_rx|parse_state.S_RECV_DATA~q\,
	combout => \u_uart_rx|Selector330~0_combout\);

-- Location: FF_X38_Y35_N1
\u_uart_rx|rx_Data_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_uart_rx|Selector330~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_uart_rx|rx_Data_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_Data_reg\(4));

-- Location: LCCOMB_X38_Y35_N2
\u_uart_rx|Selector329~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|Selector329~0_combout\ = (\u_uart_rx|rx_byte\(5) & \u_uart_rx|parse_state.S_RECV_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_byte\(5),
	datad => \u_uart_rx|parse_state.S_RECV_DATA~q\,
	combout => \u_uart_rx|Selector329~0_combout\);

-- Location: FF_X38_Y35_N3
\u_uart_rx|rx_Data_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|Selector329~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|rx_Data_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_Data_reg\(5));

-- Location: LCCOMB_X38_Y35_N0
\mode_LED_u1|always0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|always0~4_combout\ = (\mode_LED_u1|always0~3_combout\) # ((\u_uart_rx|rx_Data_reg\(6)) # ((!\u_uart_rx|rx_Data_reg\(5)) # (!\u_uart_rx|rx_Data_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|always0~3_combout\,
	datab => \u_uart_rx|rx_Data_reg\(6),
	datac => \u_uart_rx|rx_Data_reg\(4),
	datad => \u_uart_rx|rx_Data_reg\(5),
	combout => \mode_LED_u1|always0~4_combout\);

-- Location: LCCOMB_X41_Y35_N8
\mode_LED_u1|always0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|always0~0_combout\ = (!\u_uart_rx|rx_Data_reg\(7) & ((\u_uart_rx|rx_Data_reg\(1)) # ((\u_uart_rx|rx_Data_reg\(2)) # (\u_uart_rx|rx_Data_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_reg\(7),
	datab => \u_uart_rx|rx_Data_reg\(1),
	datac => \u_uart_rx|rx_Data_reg\(2),
	datad => \u_uart_rx|rx_Data_reg\(0),
	combout => \mode_LED_u1|always0~0_combout\);

-- Location: LCCOMB_X41_Y35_N6
\mode_LED_u1|always0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|always0~1_combout\ = (\u_uart_rx|rx_Data_reg\(6) & (((!\u_uart_rx|rx_Data_reg\(2)) # (!\u_uart_rx|rx_Data_reg\(0))) # (!\u_uart_rx|rx_Data_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_reg\(6),
	datab => \u_uart_rx|rx_Data_reg\(1),
	datac => \u_uart_rx|rx_Data_reg\(0),
	datad => \u_uart_rx|rx_Data_reg\(2),
	combout => \mode_LED_u1|always0~1_combout\);

-- Location: LCCOMB_X41_Y35_N4
\mode_LED_u1|always0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|always0~2_combout\ = (!\u_uart_rx|rx_Data_reg\(4) & (\mode_LED_u1|always0~0_combout\ & (!\u_uart_rx|rx_Data_reg\(3) & \mode_LED_u1|always0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_reg\(4),
	datab => \mode_LED_u1|always0~0_combout\,
	datac => \u_uart_rx|rx_Data_reg\(3),
	datad => \mode_LED_u1|always0~1_combout\,
	combout => \mode_LED_u1|always0~2_combout\);

-- Location: LCCOMB_X38_Y35_N10
\mode_LED_u1|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add3~0_combout\ = \u_uart_rx|rx_Data_reg\(0) $ (VCC)
-- \mode_LED_u1|Add3~1\ = CARRY(\u_uart_rx|rx_Data_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|rx_Data_reg\(0),
	datad => VCC,
	combout => \mode_LED_u1|Add3~0_combout\,
	cout => \mode_LED_u1|Add3~1\);

-- Location: LCCOMB_X41_Y35_N12
\mode_LED_u1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add1~0_combout\ = \u_uart_rx|rx_Data_reg\(0) $ (VCC)
-- \mode_LED_u1|Add1~1\ = CARRY(\u_uart_rx|rx_Data_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_reg\(0),
	datad => VCC,
	combout => \mode_LED_u1|Add1~0_combout\,
	cout => \mode_LED_u1|Add1~1\);

-- Location: LCCOMB_X41_Y35_N30
\mode_LED_u1|WiFi_signal~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|WiFi_signal~0_combout\ = ((\u_uart_rx|rx_Data_reg\(5) & (\mode_LED_u1|Add3~0_combout\)) # (!\u_uart_rx|rx_Data_reg\(5) & ((\mode_LED_u1|Add1~0_combout\)))) # (!\mode_LED_u1|always0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_reg\(5),
	datab => \mode_LED_u1|always0~2_combout\,
	datac => \mode_LED_u1|Add3~0_combout\,
	datad => \mode_LED_u1|Add1~0_combout\,
	combout => \mode_LED_u1|WiFi_signal~0_combout\);

-- Location: LCCOMB_X43_Y35_N16
\mode_LED_u1|WiFi_signal~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|WiFi_signal~1_combout\ = (\mode_LED_u1|always0~4_combout\ & ((!\mode_LED_u1|WiFi_signal~0_combout\))) # (!\mode_LED_u1|always0~4_combout\ & (!\u_uart_rx|rx_Data_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|rx_Data_reg\(0),
	datac => \mode_LED_u1|always0~4_combout\,
	datad => \mode_LED_u1|WiFi_signal~0_combout\,
	combout => \mode_LED_u1|WiFi_signal~1_combout\);

-- Location: LCCOMB_X35_Y36_N28
\u_uart_rx|rx_ready~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_uart_rx|rx_ready~0_combout\ = (\u_uart_rx|parse_state.S_RECV_DATA~q\ & ((\u_uart_rx|always1~4_combout\) # (\u_uart_rx|always1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|parse_state.S_RECV_DATA~q\,
	datac => \u_uart_rx|always1~4_combout\,
	datad => \u_uart_rx|always1~2_combout\,
	combout => \u_uart_rx|rx_ready~0_combout\);

-- Location: FF_X35_Y36_N29
\u_uart_rx|rx_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_uart_rx|rx_ready~0_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_uart_rx|ALT_INV_rx_done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uart_rx|rx_ready~q\);

-- Location: FF_X43_Y35_N17
\mode_LED_u1|WiFi_signal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mode_LED_u1|WiFi_signal~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|WiFi_signal\(0));

-- Location: LCCOMB_X38_Y35_N12
\mode_LED_u1|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add3~2_combout\ = (\u_uart_rx|rx_Data_reg\(1) & (\mode_LED_u1|Add3~1\ & VCC)) # (!\u_uart_rx|rx_Data_reg\(1) & (!\mode_LED_u1|Add3~1\))
-- \mode_LED_u1|Add3~3\ = CARRY((!\u_uart_rx|rx_Data_reg\(1) & !\mode_LED_u1|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|rx_Data_reg\(1),
	datad => VCC,
	cin => \mode_LED_u1|Add3~1\,
	combout => \mode_LED_u1|Add3~2_combout\,
	cout => \mode_LED_u1|Add3~3\);

-- Location: LCCOMB_X39_Y35_N4
\mode_LED_u1|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add4~0_combout\ = \mode_LED_u1|Add3~2_combout\ $ (VCC)
-- \mode_LED_u1|Add4~1\ = CARRY(\mode_LED_u1|Add3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|Add3~2_combout\,
	datad => VCC,
	combout => \mode_LED_u1|Add4~0_combout\,
	cout => \mode_LED_u1|Add4~1\);

-- Location: LCCOMB_X41_Y35_N0
\mode_LED_u1|always0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|always0~5_combout\ = (!\u_uart_rx|rx_Data_reg\(3) & !\u_uart_rx|rx_Data_reg\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|rx_Data_reg\(3),
	datac => \u_uart_rx|rx_Data_reg\(4),
	combout => \mode_LED_u1|always0~5_combout\);

-- Location: LCCOMB_X41_Y35_N10
\mode_LED_u1|always0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|always0~7_combout\ = (((!\mode_LED_u1|always0~1_combout\) # (!\mode_LED_u1|always0~0_combout\)) # (!\mode_LED_u1|always0~5_combout\)) # (!\u_uart_rx|rx_Data_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_reg\(5),
	datab => \mode_LED_u1|always0~5_combout\,
	datac => \mode_LED_u1|always0~0_combout\,
	datad => \mode_LED_u1|always0~1_combout\,
	combout => \mode_LED_u1|always0~7_combout\);

-- Location: LCCOMB_X39_Y35_N2
\mode_LED_u1|Add2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add2~3_combout\ = (\mode_LED_u1|always0~4_combout\ & ((\u_uart_rx|rx_Data_reg\(5)) # (!\mode_LED_u1|always0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|rx_Data_reg\(5),
	datac => \mode_LED_u1|always0~4_combout\,
	datad => \mode_LED_u1|always0~2_combout\,
	combout => \mode_LED_u1|Add2~3_combout\);

-- Location: LCCOMB_X41_Y35_N2
\mode_LED_u1|always0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|always0~6_combout\ = (\u_uart_rx|rx_Data_reg\(5)) # (((!\mode_LED_u1|always0~1_combout\) # (!\mode_LED_u1|always0~0_combout\)) # (!\mode_LED_u1|always0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_reg\(5),
	datab => \mode_LED_u1|always0~5_combout\,
	datac => \mode_LED_u1|always0~0_combout\,
	datad => \mode_LED_u1|always0~1_combout\,
	combout => \mode_LED_u1|always0~6_combout\);

-- Location: LCCOMB_X41_Y35_N14
\mode_LED_u1|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add1~2_combout\ = (\u_uart_rx|rx_Data_reg\(1) & (\mode_LED_u1|Add1~1\ & VCC)) # (!\u_uart_rx|rx_Data_reg\(1) & (!\mode_LED_u1|Add1~1\))
-- \mode_LED_u1|Add1~3\ = CARRY((!\u_uart_rx|rx_Data_reg\(1) & !\mode_LED_u1|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|rx_Data_reg\(1),
	datad => VCC,
	cin => \mode_LED_u1|Add1~1\,
	combout => \mode_LED_u1|Add1~2_combout\,
	cout => \mode_LED_u1|Add1~3\);

-- Location: LCCOMB_X42_Y35_N0
\mode_LED_u1|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add2~0_combout\ = \mode_LED_u1|Add1~2_combout\ $ (VCC)
-- \mode_LED_u1|Add2~1\ = CARRY(\mode_LED_u1|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|Add1~2_combout\,
	datad => VCC,
	combout => \mode_LED_u1|Add2~0_combout\,
	cout => \mode_LED_u1|Add2~1\);

-- Location: LCCOMB_X42_Y35_N30
\mode_LED_u1|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add2~2_combout\ = (\mode_LED_u1|always0~4_combout\ & (!\mode_LED_u1|always0~6_combout\ & ((\mode_LED_u1|Add2~0_combout\)))) # (!\mode_LED_u1|always0~4_combout\ & (((\u_uart_rx|rx_Data_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|always0~6_combout\,
	datab => \mode_LED_u1|always0~4_combout\,
	datac => \u_uart_rx|rx_Data_reg\(1),
	datad => \mode_LED_u1|Add2~0_combout\,
	combout => \mode_LED_u1|Add2~2_combout\);

-- Location: LCCOMB_X43_Y35_N22
\mode_LED_u1|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add2~4_combout\ = (!\mode_LED_u1|Add2~2_combout\ & (((!\mode_LED_u1|Add4~0_combout\ & !\mode_LED_u1|always0~7_combout\)) # (!\mode_LED_u1|Add2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|Add4~0_combout\,
	datab => \mode_LED_u1|always0~7_combout\,
	datac => \mode_LED_u1|Add2~3_combout\,
	datad => \mode_LED_u1|Add2~2_combout\,
	combout => \mode_LED_u1|Add2~4_combout\);

-- Location: FF_X43_Y35_N23
\mode_LED_u1|WiFi_signal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mode_LED_u1|Add2~4_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|WiFi_signal\(1));

-- Location: LCCOMB_X38_Y35_N14
\mode_LED_u1|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add3~4_combout\ = (\u_uart_rx|rx_Data_reg\(2) & ((GND) # (!\mode_LED_u1|Add3~3\))) # (!\u_uart_rx|rx_Data_reg\(2) & (\mode_LED_u1|Add3~3\ $ (GND)))
-- \mode_LED_u1|Add3~5\ = CARRY((\u_uart_rx|rx_Data_reg\(2)) # (!\mode_LED_u1|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_reg\(2),
	datad => VCC,
	cin => \mode_LED_u1|Add3~3\,
	combout => \mode_LED_u1|Add3~4_combout\,
	cout => \mode_LED_u1|Add3~5\);

-- Location: LCCOMB_X39_Y35_N6
\mode_LED_u1|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add4~2_combout\ = (\mode_LED_u1|Add3~4_combout\ & (!\mode_LED_u1|Add4~1\)) # (!\mode_LED_u1|Add3~4_combout\ & ((\mode_LED_u1|Add4~1\) # (GND)))
-- \mode_LED_u1|Add4~3\ = CARRY((!\mode_LED_u1|Add4~1\) # (!\mode_LED_u1|Add3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|Add3~4_combout\,
	datad => VCC,
	cin => \mode_LED_u1|Add4~1\,
	combout => \mode_LED_u1|Add4~2_combout\,
	cout => \mode_LED_u1|Add4~3\);

-- Location: LCCOMB_X41_Y35_N16
\mode_LED_u1|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add1~4_combout\ = (\u_uart_rx|rx_Data_reg\(2) & ((GND) # (!\mode_LED_u1|Add1~3\))) # (!\u_uart_rx|rx_Data_reg\(2) & (\mode_LED_u1|Add1~3\ $ (GND)))
-- \mode_LED_u1|Add1~5\ = CARRY((\u_uart_rx|rx_Data_reg\(2)) # (!\mode_LED_u1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_reg\(2),
	datad => VCC,
	cin => \mode_LED_u1|Add1~3\,
	combout => \mode_LED_u1|Add1~4_combout\,
	cout => \mode_LED_u1|Add1~5\);

-- Location: LCCOMB_X42_Y35_N2
\mode_LED_u1|Add2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add2~5_combout\ = (\mode_LED_u1|Add1~4_combout\ & (!\mode_LED_u1|Add2~1\)) # (!\mode_LED_u1|Add1~4_combout\ & ((\mode_LED_u1|Add2~1\) # (GND)))
-- \mode_LED_u1|Add2~6\ = CARRY((!\mode_LED_u1|Add2~1\) # (!\mode_LED_u1|Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|Add1~4_combout\,
	datad => VCC,
	cin => \mode_LED_u1|Add2~1\,
	combout => \mode_LED_u1|Add2~5_combout\,
	cout => \mode_LED_u1|Add2~6\);

-- Location: LCCOMB_X42_Y35_N28
\mode_LED_u1|Add2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add2~7_combout\ = (\mode_LED_u1|always0~4_combout\ & (!\mode_LED_u1|always0~6_combout\ & ((\mode_LED_u1|Add2~5_combout\)))) # (!\mode_LED_u1|always0~4_combout\ & (((\u_uart_rx|rx_Data_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|always0~6_combout\,
	datab => \mode_LED_u1|always0~4_combout\,
	datac => \u_uart_rx|rx_Data_reg\(2),
	datad => \mode_LED_u1|Add2~5_combout\,
	combout => \mode_LED_u1|Add2~7_combout\);

-- Location: LCCOMB_X39_Y35_N0
\mode_LED_u1|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add2~8_combout\ = (!\mode_LED_u1|Add2~7_combout\ & (((!\mode_LED_u1|Add4~2_combout\ & !\mode_LED_u1|always0~7_combout\)) # (!\mode_LED_u1|Add2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|Add4~2_combout\,
	datab => \mode_LED_u1|Add2~3_combout\,
	datac => \mode_LED_u1|always0~7_combout\,
	datad => \mode_LED_u1|Add2~7_combout\,
	combout => \mode_LED_u1|Add2~8_combout\);

-- Location: FF_X39_Y35_N1
\mode_LED_u1|WiFi_signal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mode_LED_u1|Add2~8_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|WiFi_signal\(2));

-- Location: LCCOMB_X38_Y35_N16
\mode_LED_u1|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add3~6_combout\ = (\u_uart_rx|rx_Data_reg\(3) & (\mode_LED_u1|Add3~5\ & VCC)) # (!\u_uart_rx|rx_Data_reg\(3) & (!\mode_LED_u1|Add3~5\))
-- \mode_LED_u1|Add3~7\ = CARRY((!\u_uart_rx|rx_Data_reg\(3) & !\mode_LED_u1|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|rx_Data_reg\(3),
	datad => VCC,
	cin => \mode_LED_u1|Add3~5\,
	combout => \mode_LED_u1|Add3~6_combout\,
	cout => \mode_LED_u1|Add3~7\);

-- Location: LCCOMB_X39_Y35_N8
\mode_LED_u1|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add4~4_combout\ = (\mode_LED_u1|Add3~6_combout\ & ((GND) # (!\mode_LED_u1|Add4~3\))) # (!\mode_LED_u1|Add3~6_combout\ & (\mode_LED_u1|Add4~3\ $ (GND)))
-- \mode_LED_u1|Add4~5\ = CARRY((\mode_LED_u1|Add3~6_combout\) # (!\mode_LED_u1|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|Add3~6_combout\,
	datad => VCC,
	cin => \mode_LED_u1|Add4~3\,
	combout => \mode_LED_u1|Add4~4_combout\,
	cout => \mode_LED_u1|Add4~5\);

-- Location: LCCOMB_X41_Y35_N18
\mode_LED_u1|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add1~6_combout\ = (\u_uart_rx|rx_Data_reg\(3) & (\mode_LED_u1|Add1~5\ & VCC)) # (!\u_uart_rx|rx_Data_reg\(3) & (!\mode_LED_u1|Add1~5\))
-- \mode_LED_u1|Add1~7\ = CARRY((!\u_uart_rx|rx_Data_reg\(3) & !\mode_LED_u1|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|rx_Data_reg\(3),
	datad => VCC,
	cin => \mode_LED_u1|Add1~5\,
	combout => \mode_LED_u1|Add1~6_combout\,
	cout => \mode_LED_u1|Add1~7\);

-- Location: LCCOMB_X42_Y35_N4
\mode_LED_u1|Add2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add2~9_combout\ = (\mode_LED_u1|Add1~6_combout\ & ((GND) # (!\mode_LED_u1|Add2~6\))) # (!\mode_LED_u1|Add1~6_combout\ & (\mode_LED_u1|Add2~6\ $ (GND)))
-- \mode_LED_u1|Add2~10\ = CARRY((\mode_LED_u1|Add1~6_combout\) # (!\mode_LED_u1|Add2~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mode_LED_u1|Add1~6_combout\,
	datad => VCC,
	cin => \mode_LED_u1|Add2~6\,
	combout => \mode_LED_u1|Add2~9_combout\,
	cout => \mode_LED_u1|Add2~10\);

-- Location: LCCOMB_X42_Y35_N26
\mode_LED_u1|Add2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add2~11_combout\ = (\mode_LED_u1|always0~4_combout\ & (!\mode_LED_u1|always0~6_combout\ & ((\mode_LED_u1|Add2~9_combout\)))) # (!\mode_LED_u1|always0~4_combout\ & (((\u_uart_rx|rx_Data_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|always0~6_combout\,
	datab => \u_uart_rx|rx_Data_reg\(3),
	datac => \mode_LED_u1|Add2~9_combout\,
	datad => \mode_LED_u1|always0~4_combout\,
	combout => \mode_LED_u1|Add2~11_combout\);

-- Location: LCCOMB_X39_Y35_N26
\mode_LED_u1|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add2~12_combout\ = (!\mode_LED_u1|Add2~11_combout\ & (((!\mode_LED_u1|always0~7_combout\ & !\mode_LED_u1|Add4~4_combout\)) # (!\mode_LED_u1|Add2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|always0~7_combout\,
	datab => \mode_LED_u1|Add2~3_combout\,
	datac => \mode_LED_u1|Add4~4_combout\,
	datad => \mode_LED_u1|Add2~11_combout\,
	combout => \mode_LED_u1|Add2~12_combout\);

-- Location: FF_X39_Y35_N27
\mode_LED_u1|WiFi_signal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mode_LED_u1|Add2~12_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|WiFi_signal\(3));

-- Location: LCCOMB_X41_Y35_N20
\mode_LED_u1|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add1~8_combout\ = (\u_uart_rx|rx_Data_reg\(4) & ((GND) # (!\mode_LED_u1|Add1~7\))) # (!\u_uart_rx|rx_Data_reg\(4) & (\mode_LED_u1|Add1~7\ $ (GND)))
-- \mode_LED_u1|Add1~9\ = CARRY((\u_uart_rx|rx_Data_reg\(4)) # (!\mode_LED_u1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_reg\(4),
	datad => VCC,
	cin => \mode_LED_u1|Add1~7\,
	combout => \mode_LED_u1|Add1~8_combout\,
	cout => \mode_LED_u1|Add1~9\);

-- Location: LCCOMB_X42_Y35_N6
\mode_LED_u1|Add2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add2~13_combout\ = (\mode_LED_u1|Add1~8_combout\ & (!\mode_LED_u1|Add2~10\)) # (!\mode_LED_u1|Add1~8_combout\ & ((\mode_LED_u1|Add2~10\) # (GND)))
-- \mode_LED_u1|Add2~14\ = CARRY((!\mode_LED_u1|Add2~10\) # (!\mode_LED_u1|Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mode_LED_u1|Add1~8_combout\,
	datad => VCC,
	cin => \mode_LED_u1|Add2~10\,
	combout => \mode_LED_u1|Add2~13_combout\,
	cout => \mode_LED_u1|Add2~14\);

-- Location: LCCOMB_X38_Y35_N18
\mode_LED_u1|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add3~8_combout\ = (\u_uart_rx|rx_Data_reg\(4) & ((GND) # (!\mode_LED_u1|Add3~7\))) # (!\u_uart_rx|rx_Data_reg\(4) & (\mode_LED_u1|Add3~7\ $ (GND)))
-- \mode_LED_u1|Add3~9\ = CARRY((\u_uart_rx|rx_Data_reg\(4)) # (!\mode_LED_u1|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|rx_Data_reg\(4),
	datad => VCC,
	cin => \mode_LED_u1|Add3~7\,
	combout => \mode_LED_u1|Add3~8_combout\,
	cout => \mode_LED_u1|Add3~9\);

-- Location: LCCOMB_X39_Y35_N10
\mode_LED_u1|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add4~6_combout\ = (\mode_LED_u1|Add3~8_combout\ & (!\mode_LED_u1|Add4~5\)) # (!\mode_LED_u1|Add3~8_combout\ & ((\mode_LED_u1|Add4~5\) # (GND)))
-- \mode_LED_u1|Add4~7\ = CARRY((!\mode_LED_u1|Add4~5\) # (!\mode_LED_u1|Add3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mode_LED_u1|Add3~8_combout\,
	datad => VCC,
	cin => \mode_LED_u1|Add4~5\,
	combout => \mode_LED_u1|Add4~6_combout\,
	cout => \mode_LED_u1|Add4~7\);

-- Location: LCCOMB_X43_Y35_N24
\mode_LED_u1|Add2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add2~15_combout\ = (\mode_LED_u1|always0~2_combout\ & ((\u_uart_rx|rx_Data_reg\(5) & ((!\mode_LED_u1|Add4~6_combout\))) # (!\u_uart_rx|rx_Data_reg\(5) & (!\mode_LED_u1|Add2~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|always0~2_combout\,
	datab => \u_uart_rx|rx_Data_reg\(5),
	datac => \mode_LED_u1|Add2~13_combout\,
	datad => \mode_LED_u1|Add4~6_combout\,
	combout => \mode_LED_u1|Add2~15_combout\);

-- Location: LCCOMB_X43_Y35_N28
\mode_LED_u1|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add2~16_combout\ = (\mode_LED_u1|Add2~15_combout\) # (!\mode_LED_u1|always0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mode_LED_u1|always0~4_combout\,
	datad => \mode_LED_u1|Add2~15_combout\,
	combout => \mode_LED_u1|Add2~16_combout\);

-- Location: FF_X43_Y35_N29
\mode_LED_u1|WiFi_signal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mode_LED_u1|Add2~16_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|WiFi_signal\(4));

-- Location: LCCOMB_X38_Y35_N20
\mode_LED_u1|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add3~10_combout\ = (\u_uart_rx|rx_Data_reg\(5) & (!\mode_LED_u1|Add3~9\)) # (!\u_uart_rx|rx_Data_reg\(5) & ((\mode_LED_u1|Add3~9\) # (GND)))
-- \mode_LED_u1|Add3~11\ = CARRY((!\mode_LED_u1|Add3~9\) # (!\u_uart_rx|rx_Data_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|rx_Data_reg\(5),
	datad => VCC,
	cin => \mode_LED_u1|Add3~9\,
	combout => \mode_LED_u1|Add3~10_combout\,
	cout => \mode_LED_u1|Add3~11\);

-- Location: LCCOMB_X39_Y35_N12
\mode_LED_u1|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add4~8_combout\ = (\mode_LED_u1|Add3~10_combout\ & (\mode_LED_u1|Add4~7\ $ (GND))) # (!\mode_LED_u1|Add3~10_combout\ & (!\mode_LED_u1|Add4~7\ & VCC))
-- \mode_LED_u1|Add4~9\ = CARRY((\mode_LED_u1|Add3~10_combout\ & !\mode_LED_u1|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mode_LED_u1|Add3~10_combout\,
	datad => VCC,
	cin => \mode_LED_u1|Add4~7\,
	combout => \mode_LED_u1|Add4~8_combout\,
	cout => \mode_LED_u1|Add4~9\);

-- Location: LCCOMB_X41_Y35_N22
\mode_LED_u1|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add1~10_combout\ = (\u_uart_rx|rx_Data_reg\(5) & (\mode_LED_u1|Add1~9\ & VCC)) # (!\u_uart_rx|rx_Data_reg\(5) & (!\mode_LED_u1|Add1~9\))
-- \mode_LED_u1|Add1~11\ = CARRY((!\u_uart_rx|rx_Data_reg\(5) & !\mode_LED_u1|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_reg\(5),
	datad => VCC,
	cin => \mode_LED_u1|Add1~9\,
	combout => \mode_LED_u1|Add1~10_combout\,
	cout => \mode_LED_u1|Add1~11\);

-- Location: LCCOMB_X42_Y35_N8
\mode_LED_u1|Add2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add2~17_combout\ = (\mode_LED_u1|Add1~10_combout\ & (\mode_LED_u1|Add2~14\ $ (GND))) # (!\mode_LED_u1|Add1~10_combout\ & (!\mode_LED_u1|Add2~14\ & VCC))
-- \mode_LED_u1|Add2~18\ = CARRY((\mode_LED_u1|Add1~10_combout\ & !\mode_LED_u1|Add2~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mode_LED_u1|Add1~10_combout\,
	datad => VCC,
	cin => \mode_LED_u1|Add2~14\,
	combout => \mode_LED_u1|Add2~17_combout\,
	cout => \mode_LED_u1|Add2~18\);

-- Location: LCCOMB_X43_Y35_N18
\mode_LED_u1|Add2~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add2~19_combout\ = (\mode_LED_u1|always0~2_combout\ & ((\u_uart_rx|rx_Data_reg\(5) & (!\mode_LED_u1|Add4~8_combout\)) # (!\u_uart_rx|rx_Data_reg\(5) & ((!\mode_LED_u1|Add2~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|always0~2_combout\,
	datab => \u_uart_rx|rx_Data_reg\(5),
	datac => \mode_LED_u1|Add4~8_combout\,
	datad => \mode_LED_u1|Add2~17_combout\,
	combout => \mode_LED_u1|Add2~19_combout\);

-- Location: LCCOMB_X43_Y35_N2
\mode_LED_u1|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add2~20_combout\ = (\mode_LED_u1|Add2~19_combout\) # (!\mode_LED_u1|always0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mode_LED_u1|always0~4_combout\,
	datad => \mode_LED_u1|Add2~19_combout\,
	combout => \mode_LED_u1|Add2~20_combout\);

-- Location: FF_X43_Y35_N3
\mode_LED_u1|WiFi_signal[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mode_LED_u1|Add2~20_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|WiFi_signal\(5));

-- Location: LCCOMB_X38_Y35_N22
\mode_LED_u1|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add3~12_combout\ = (\u_uart_rx|rx_Data_reg\(6) & (\mode_LED_u1|Add3~11\ $ (GND))) # (!\u_uart_rx|rx_Data_reg\(6) & (!\mode_LED_u1|Add3~11\ & VCC))
-- \mode_LED_u1|Add3~13\ = CARRY((\u_uart_rx|rx_Data_reg\(6) & !\mode_LED_u1|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uart_rx|rx_Data_reg\(6),
	datad => VCC,
	cin => \mode_LED_u1|Add3~11\,
	combout => \mode_LED_u1|Add3~12_combout\,
	cout => \mode_LED_u1|Add3~13\);

-- Location: LCCOMB_X39_Y35_N14
\mode_LED_u1|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add4~10_combout\ = (\mode_LED_u1|Add3~12_combout\ & (!\mode_LED_u1|Add4~9\)) # (!\mode_LED_u1|Add3~12_combout\ & ((\mode_LED_u1|Add4~9\) # (GND)))
-- \mode_LED_u1|Add4~11\ = CARRY((!\mode_LED_u1|Add4~9\) # (!\mode_LED_u1|Add3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mode_LED_u1|Add3~12_combout\,
	datad => VCC,
	cin => \mode_LED_u1|Add4~9\,
	combout => \mode_LED_u1|Add4~10_combout\,
	cout => \mode_LED_u1|Add4~11\);

-- Location: LCCOMB_X41_Y35_N24
\mode_LED_u1|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add1~12_combout\ = (\u_uart_rx|rx_Data_reg\(6) & (\mode_LED_u1|Add1~11\ $ (GND))) # (!\u_uart_rx|rx_Data_reg\(6) & (!\mode_LED_u1|Add1~11\ & VCC))
-- \mode_LED_u1|Add1~13\ = CARRY((\u_uart_rx|rx_Data_reg\(6) & !\mode_LED_u1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_reg\(6),
	datad => VCC,
	cin => \mode_LED_u1|Add1~11\,
	combout => \mode_LED_u1|Add1~12_combout\,
	cout => \mode_LED_u1|Add1~13\);

-- Location: LCCOMB_X42_Y35_N10
\mode_LED_u1|Add2~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add2~21_combout\ = (\mode_LED_u1|Add1~12_combout\ & (!\mode_LED_u1|Add2~18\)) # (!\mode_LED_u1|Add1~12_combout\ & ((\mode_LED_u1|Add2~18\) # (GND)))
-- \mode_LED_u1|Add2~22\ = CARRY((!\mode_LED_u1|Add2~18\) # (!\mode_LED_u1|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mode_LED_u1|Add1~12_combout\,
	datad => VCC,
	cin => \mode_LED_u1|Add2~18\,
	combout => \mode_LED_u1|Add2~21_combout\,
	cout => \mode_LED_u1|Add2~22\);

-- Location: LCCOMB_X39_Y35_N24
\mode_LED_u1|Add2~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add2~23_combout\ = (\mode_LED_u1|always0~2_combout\ & ((\u_uart_rx|rx_Data_reg\(5) & (!\mode_LED_u1|Add4~10_combout\)) # (!\u_uart_rx|rx_Data_reg\(5) & ((!\mode_LED_u1|Add2~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|always0~2_combout\,
	datab => \u_uart_rx|rx_Data_reg\(5),
	datac => \mode_LED_u1|Add4~10_combout\,
	datad => \mode_LED_u1|Add2~21_combout\,
	combout => \mode_LED_u1|Add2~23_combout\);

-- Location: LCCOMB_X39_Y35_N30
\mode_LED_u1|Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add2~24_combout\ = (\mode_LED_u1|Add2~23_combout\) # (!\mode_LED_u1|always0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mode_LED_u1|always0~4_combout\,
	datad => \mode_LED_u1|Add2~23_combout\,
	combout => \mode_LED_u1|Add2~24_combout\);

-- Location: FF_X39_Y35_N31
\mode_LED_u1|WiFi_signal[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mode_LED_u1|Add2~24_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|WiFi_signal\(6));

-- Location: LCCOMB_X38_Y35_N24
\mode_LED_u1|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add3~14_combout\ = (\u_uart_rx|rx_Data_reg\(7) & (\mode_LED_u1|Add3~13\ & VCC)) # (!\u_uart_rx|rx_Data_reg\(7) & (!\mode_LED_u1|Add3~13\))
-- \mode_LED_u1|Add3~15\ = CARRY((!\u_uart_rx|rx_Data_reg\(7) & !\mode_LED_u1|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_reg\(7),
	datad => VCC,
	cin => \mode_LED_u1|Add3~13\,
	combout => \mode_LED_u1|Add3~14_combout\,
	cout => \mode_LED_u1|Add3~15\);

-- Location: LCCOMB_X39_Y35_N16
\mode_LED_u1|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add4~12_combout\ = (\mode_LED_u1|Add3~14_combout\ & (\mode_LED_u1|Add4~11\ $ (GND))) # (!\mode_LED_u1|Add3~14_combout\ & (!\mode_LED_u1|Add4~11\ & VCC))
-- \mode_LED_u1|Add4~13\ = CARRY((\mode_LED_u1|Add3~14_combout\ & !\mode_LED_u1|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mode_LED_u1|Add3~14_combout\,
	datad => VCC,
	cin => \mode_LED_u1|Add4~11\,
	combout => \mode_LED_u1|Add4~12_combout\,
	cout => \mode_LED_u1|Add4~13\);

-- Location: LCCOMB_X41_Y35_N26
\mode_LED_u1|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add1~14_combout\ = (\u_uart_rx|rx_Data_reg\(7) & (\mode_LED_u1|Add1~13\ & VCC)) # (!\u_uart_rx|rx_Data_reg\(7) & (!\mode_LED_u1|Add1~13\))
-- \mode_LED_u1|Add1~15\ = CARRY((!\u_uart_rx|rx_Data_reg\(7) & !\mode_LED_u1|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uart_rx|rx_Data_reg\(7),
	datad => VCC,
	cin => \mode_LED_u1|Add1~13\,
	combout => \mode_LED_u1|Add1~14_combout\,
	cout => \mode_LED_u1|Add1~15\);

-- Location: LCCOMB_X42_Y35_N12
\mode_LED_u1|Add2~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add2~25_combout\ = (\mode_LED_u1|Add1~14_combout\ & (\mode_LED_u1|Add2~22\ $ (GND))) # (!\mode_LED_u1|Add1~14_combout\ & (!\mode_LED_u1|Add2~22\ & VCC))
-- \mode_LED_u1|Add2~26\ = CARRY((\mode_LED_u1|Add1~14_combout\ & !\mode_LED_u1|Add2~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|Add1~14_combout\,
	datad => VCC,
	cin => \mode_LED_u1|Add2~22\,
	combout => \mode_LED_u1|Add2~25_combout\,
	cout => \mode_LED_u1|Add2~26\);

-- Location: LCCOMB_X43_Y35_N20
\mode_LED_u1|Add2~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add2~27_combout\ = (\mode_LED_u1|always0~2_combout\ & ((\u_uart_rx|rx_Data_reg\(5) & (!\mode_LED_u1|Add4~12_combout\)) # (!\u_uart_rx|rx_Data_reg\(5) & ((!\mode_LED_u1|Add2~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|always0~2_combout\,
	datab => \u_uart_rx|rx_Data_reg\(5),
	datac => \mode_LED_u1|Add4~12_combout\,
	datad => \mode_LED_u1|Add2~25_combout\,
	combout => \mode_LED_u1|Add2~27_combout\);

-- Location: LCCOMB_X43_Y35_N0
\mode_LED_u1|Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add2~28_combout\ = (\mode_LED_u1|Add2~27_combout\) # (!\mode_LED_u1|always0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mode_LED_u1|always0~4_combout\,
	datad => \mode_LED_u1|Add2~27_combout\,
	combout => \mode_LED_u1|Add2~28_combout\);

-- Location: FF_X43_Y35_N1
\mode_LED_u1|WiFi_signal[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mode_LED_u1|Add2~28_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|WiFi_signal\(7));

-- Location: LCCOMB_X41_Y35_N28
\mode_LED_u1|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add1~16_combout\ = !\mode_LED_u1|Add1~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \mode_LED_u1|Add1~15\,
	combout => \mode_LED_u1|Add1~16_combout\);

-- Location: LCCOMB_X42_Y35_N14
\mode_LED_u1|Add2~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add2~29_combout\ = (\mode_LED_u1|Add1~16_combout\ & ((\mode_LED_u1|Add2~26\) # (GND))) # (!\mode_LED_u1|Add1~16_combout\ & (!\mode_LED_u1|Add2~26\))
-- \mode_LED_u1|Add2~30\ = CARRY((\mode_LED_u1|Add1~16_combout\) # (!\mode_LED_u1|Add2~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mode_LED_u1|Add1~16_combout\,
	datad => VCC,
	cin => \mode_LED_u1|Add2~26\,
	combout => \mode_LED_u1|Add2~29_combout\,
	cout => \mode_LED_u1|Add2~30\);

-- Location: LCCOMB_X38_Y35_N26
\mode_LED_u1|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add3~16_combout\ = !\mode_LED_u1|Add3~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \mode_LED_u1|Add3~15\,
	combout => \mode_LED_u1|Add3~16_combout\);

-- Location: LCCOMB_X39_Y35_N18
\mode_LED_u1|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add4~14_combout\ = (\mode_LED_u1|Add3~16_combout\ & ((\mode_LED_u1|Add4~13\) # (GND))) # (!\mode_LED_u1|Add3~16_combout\ & (!\mode_LED_u1|Add4~13\))
-- \mode_LED_u1|Add4~15\ = CARRY((\mode_LED_u1|Add3~16_combout\) # (!\mode_LED_u1|Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|Add3~16_combout\,
	datad => VCC,
	cin => \mode_LED_u1|Add4~13\,
	combout => \mode_LED_u1|Add4~14_combout\,
	cout => \mode_LED_u1|Add4~15\);

-- Location: LCCOMB_X39_Y35_N22
\mode_LED_u1|Add2~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add2~31_combout\ = (\mode_LED_u1|always0~2_combout\ & ((\u_uart_rx|rx_Data_reg\(5) & ((!\mode_LED_u1|Add4~14_combout\))) # (!\u_uart_rx|rx_Data_reg\(5) & (!\mode_LED_u1|Add2~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|always0~2_combout\,
	datab => \u_uart_rx|rx_Data_reg\(5),
	datac => \mode_LED_u1|Add2~29_combout\,
	datad => \mode_LED_u1|Add4~14_combout\,
	combout => \mode_LED_u1|Add2~31_combout\);

-- Location: LCCOMB_X39_Y35_N28
\mode_LED_u1|Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add2~32_combout\ = (\mode_LED_u1|Add2~31_combout\) # (!\mode_LED_u1|always0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|always0~4_combout\,
	datac => \mode_LED_u1|Add2~31_combout\,
	combout => \mode_LED_u1|Add2~32_combout\);

-- Location: FF_X39_Y35_N29
\mode_LED_u1|WiFi_signal[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mode_LED_u1|Add2~32_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|WiFi_signal\(8));

-- Location: LCCOMB_X39_Y35_N20
\mode_LED_u1|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add4~16_combout\ = \mode_LED_u1|Add3~16_combout\ $ (\mode_LED_u1|Add4~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|Add3~16_combout\,
	cin => \mode_LED_u1|Add4~15\,
	combout => \mode_LED_u1|Add4~16_combout\);

-- Location: LCCOMB_X42_Y35_N16
\mode_LED_u1|Add2~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add2~33_combout\ = \mode_LED_u1|Add2~30\ $ (\mode_LED_u1|Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \mode_LED_u1|Add1~16_combout\,
	cin => \mode_LED_u1|Add2~30\,
	combout => \mode_LED_u1|Add2~33_combout\);

-- Location: LCCOMB_X43_Y35_N10
\mode_LED_u1|Add2~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add2~35_combout\ = (\mode_LED_u1|Add2~33_combout\ & (!\u_uart_rx|rx_Data_reg\(5) & (\mode_LED_u1|always0~4_combout\ & \mode_LED_u1|always0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|Add2~33_combout\,
	datab => \u_uart_rx|rx_Data_reg\(5),
	datac => \mode_LED_u1|always0~4_combout\,
	datad => \mode_LED_u1|always0~2_combout\,
	combout => \mode_LED_u1|Add2~35_combout\);

-- Location: LCCOMB_X43_Y35_N6
\mode_LED_u1|Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|Add2~36_combout\ = (!\mode_LED_u1|Add2~35_combout\ & (((!\mode_LED_u1|Add4~16_combout\ & !\mode_LED_u1|always0~7_combout\)) # (!\mode_LED_u1|Add2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_LED_u1|Add4~16_combout\,
	datab => \mode_LED_u1|always0~7_combout\,
	datac => \mode_LED_u1|Add2~3_combout\,
	datad => \mode_LED_u1|Add2~35_combout\,
	combout => \mode_LED_u1|Add2~36_combout\);

-- Location: LCCOMB_X43_Y35_N30
\mode_LED_u1|WiFi_signal[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|WiFi_signal[9]~feeder_combout\ = \mode_LED_u1|Add2~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mode_LED_u1|Add2~36_combout\,
	combout => \mode_LED_u1|WiFi_signal[9]~feeder_combout\);

-- Location: FF_X43_Y35_N31
\mode_LED_u1|WiFi_signal[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mode_LED_u1|WiFi_signal[9]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|WiFi_signal\(9));

-- Location: LCCOMB_X43_Y35_N12
\mode_LED_u1|WiFi_signal[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|WiFi_signal[10]~feeder_combout\ = \mode_LED_u1|Add2~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mode_LED_u1|Add2~36_combout\,
	combout => \mode_LED_u1|WiFi_signal[10]~feeder_combout\);

-- Location: FF_X43_Y35_N13
\mode_LED_u1|WiFi_signal[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mode_LED_u1|WiFi_signal[10]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|WiFi_signal\(10));

-- Location: LCCOMB_X43_Y35_N14
\mode_LED_u1|WiFi_signal[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|WiFi_signal[11]~feeder_combout\ = \mode_LED_u1|Add2~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mode_LED_u1|Add2~36_combout\,
	combout => \mode_LED_u1|WiFi_signal[11]~feeder_combout\);

-- Location: FF_X43_Y35_N15
\mode_LED_u1|WiFi_signal[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mode_LED_u1|WiFi_signal[11]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|WiFi_signal\(11));

-- Location: LCCOMB_X43_Y35_N4
\mode_LED_u1|WiFi_signal[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|WiFi_signal[12]~feeder_combout\ = \mode_LED_u1|Add2~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mode_LED_u1|Add2~36_combout\,
	combout => \mode_LED_u1|WiFi_signal[12]~feeder_combout\);

-- Location: FF_X43_Y35_N5
\mode_LED_u1|WiFi_signal[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mode_LED_u1|WiFi_signal[12]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|WiFi_signal\(12));

-- Location: LCCOMB_X43_Y35_N26
\mode_LED_u1|WiFi_signal[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|WiFi_signal[13]~feeder_combout\ = \mode_LED_u1|Add2~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mode_LED_u1|Add2~36_combout\,
	combout => \mode_LED_u1|WiFi_signal[13]~feeder_combout\);

-- Location: FF_X43_Y35_N27
\mode_LED_u1|WiFi_signal[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mode_LED_u1|WiFi_signal[13]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|WiFi_signal\(13));

-- Location: LCCOMB_X43_Y35_N8
\mode_LED_u1|WiFi_signal[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mode_LED_u1|WiFi_signal[14]~feeder_combout\ = \mode_LED_u1|Add2~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mode_LED_u1|Add2~36_combout\,
	combout => \mode_LED_u1|WiFi_signal[14]~feeder_combout\);

-- Location: FF_X43_Y35_N9
\mode_LED_u1|WiFi_signal[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mode_LED_u1|WiFi_signal[14]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|WiFi_signal\(14));

-- Location: FF_X43_Y35_N7
\mode_LED_u1|WiFi_signal[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mode_LED_u1|Add2~36_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_uart_rx|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mode_LED_u1|WiFi_signal\(15));

ww_tx <= \tx~output_o\;

ww_LED(0) <= \LED[0]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(3) <= \LED[3]~output_o\;

ww_LED(4) <= \LED[4]~output_o\;

ww_LED(5) <= \LED[5]~output_o\;

ww_LED(6) <= \LED[6]~output_o\;

ww_LED(7) <= \LED[7]~output_o\;

ww_Server_WiFi_txd <= \Server_WiFi_txd~output_o\;

ww_RST_WiFi <= \RST_WiFi~output_o\;

ww_WiFi_signal(0) <= \WiFi_signal[0]~output_o\;

ww_WiFi_signal(1) <= \WiFi_signal[1]~output_o\;

ww_WiFi_signal(2) <= \WiFi_signal[2]~output_o\;

ww_WiFi_signal(3) <= \WiFi_signal[3]~output_o\;

ww_WiFi_signal(4) <= \WiFi_signal[4]~output_o\;

ww_WiFi_signal(5) <= \WiFi_signal[5]~output_o\;

ww_WiFi_signal(6) <= \WiFi_signal[6]~output_o\;

ww_WiFi_signal(7) <= \WiFi_signal[7]~output_o\;

ww_WiFi_signal(8) <= \WiFi_signal[8]~output_o\;

ww_WiFi_signal(9) <= \WiFi_signal[9]~output_o\;

ww_WiFi_signal(10) <= \WiFi_signal[10]~output_o\;

ww_WiFi_signal(11) <= \WiFi_signal[11]~output_o\;

ww_WiFi_signal(12) <= \WiFi_signal[12]~output_o\;

ww_WiFi_signal(13) <= \WiFi_signal[13]~output_o\;

ww_WiFi_signal(14) <= \WiFi_signal[14]~output_o\;

ww_WiFi_signal(15) <= \WiFi_signal[15]~output_o\;
END structure;


