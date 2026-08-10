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

-- DATE "07/20/2026 09:05:21"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
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

ENTITY 	Joystick_top IS
    PORT (
	clk : IN std_logic;
	rst_n : IN std_logic;
	j10_scl : BUFFER std_logic;
	j10_sda : BUFFER std_logic;
	j10_alrt : IN std_logic;
	j11_sw : IN std_logic;
	x_axis : BUFFER std_logic_vector(15 DOWNTO 0);
	y_axis : BUFFER std_logic_vector(15 DOWNTO 0);
	button_state : BUFFER std_logic
	);
END Joystick_top;

-- Design Ports Information
-- j10_scl	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- j10_alrt	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[3]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[5]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[6]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[7]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[8]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[9]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[10]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[11]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[12]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[13]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[14]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[15]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[1]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[2]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[3]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[5]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[6]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[7]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[8]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[9]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[10]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[11]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[12]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[13]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[14]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[15]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button_state	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- j10_sda	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- j11_sw	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Joystick_top IS
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
SIGNAL ww_j10_scl : std_logic;
SIGNAL ww_j10_sda : std_logic;
SIGNAL ww_j10_alrt : std_logic;
SIGNAL ww_j11_sw : std_logic;
SIGNAL ww_x_axis : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_y_axis : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_button_state : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \j10_alrt~input_o\ : std_logic;
SIGNAL \j10_sda~output_o\ : std_logic;
SIGNAL \j10_scl~output_o\ : std_logic;
SIGNAL \x_axis[0]~output_o\ : std_logic;
SIGNAL \x_axis[1]~output_o\ : std_logic;
SIGNAL \x_axis[2]~output_o\ : std_logic;
SIGNAL \x_axis[3]~output_o\ : std_logic;
SIGNAL \x_axis[4]~output_o\ : std_logic;
SIGNAL \x_axis[5]~output_o\ : std_logic;
SIGNAL \x_axis[6]~output_o\ : std_logic;
SIGNAL \x_axis[7]~output_o\ : std_logic;
SIGNAL \x_axis[8]~output_o\ : std_logic;
SIGNAL \x_axis[9]~output_o\ : std_logic;
SIGNAL \x_axis[10]~output_o\ : std_logic;
SIGNAL \x_axis[11]~output_o\ : std_logic;
SIGNAL \x_axis[12]~output_o\ : std_logic;
SIGNAL \x_axis[13]~output_o\ : std_logic;
SIGNAL \x_axis[14]~output_o\ : std_logic;
SIGNAL \x_axis[15]~output_o\ : std_logic;
SIGNAL \y_axis[0]~output_o\ : std_logic;
SIGNAL \y_axis[1]~output_o\ : std_logic;
SIGNAL \y_axis[2]~output_o\ : std_logic;
SIGNAL \y_axis[3]~output_o\ : std_logic;
SIGNAL \y_axis[4]~output_o\ : std_logic;
SIGNAL \y_axis[5]~output_o\ : std_logic;
SIGNAL \y_axis[6]~output_o\ : std_logic;
SIGNAL \y_axis[7]~output_o\ : std_logic;
SIGNAL \y_axis[8]~output_o\ : std_logic;
SIGNAL \y_axis[9]~output_o\ : std_logic;
SIGNAL \y_axis[10]~output_o\ : std_logic;
SIGNAL \y_axis[11]~output_o\ : std_logic;
SIGNAL \y_axis[12]~output_o\ : std_logic;
SIGNAL \y_axis[13]~output_o\ : std_logic;
SIGNAL \y_axis[14]~output_o\ : std_logic;
SIGNAL \y_axis[15]~output_o\ : std_logic;
SIGNAL \button_state~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \u_adc|Selector12~1_combout\ : std_logic;
SIGNAL \u_adc|current_state.STATE_IDLE~feeder_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \u_adc|current_state.STATE_IDLE~q\ : std_logic;
SIGNAL \u_adc|current_state.STATE_WRITE_CH0~q\ : std_logic;
SIGNAL \u_adc|Selector12~6_combout\ : std_logic;
SIGNAL \u_adc|Selector12~7_combout\ : std_logic;
SIGNAL \u_adc|current_state.STATE_WRITE_CH1~q\ : std_logic;
SIGNAL \u_adc|sub_step~0_combout\ : std_logic;
SIGNAL \u_adc|always1~10_combout\ : std_logic;
SIGNAL \u_adc|i2c_busy_d~q\ : std_logic;
SIGNAL \u_adc|i2c_ready~combout\ : std_logic;
SIGNAL \u_adc|Selector18~0_combout\ : std_logic;
SIGNAL \u_adc|Decoder0~0_combout\ : std_logic;
SIGNAL \u_adc|Selector16~0_combout\ : std_logic;
SIGNAL \u_adc|Selector16~1_combout\ : std_logic;
SIGNAL \u_adc|Selector16~2_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|shift_reg[0]~0_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Add0~0_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Add0~3\ : std_logic;
SIGNAL \u_adc|u_i2c|Add0~4_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|clk_cnt~4_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Add0~5\ : std_logic;
SIGNAL \u_adc|u_i2c|Add0~6_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|clk_cnt~3_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Add0~7\ : std_logic;
SIGNAL \u_adc|u_i2c|Add0~8_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|clk_cnt~2_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Add0~9\ : std_logic;
SIGNAL \u_adc|u_i2c|Add0~10_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|clk_cnt~1_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Add0~11\ : std_logic;
SIGNAL \u_adc|u_i2c|Add0~12_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|clk_cnt~0_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Add0~13\ : std_logic;
SIGNAL \u_adc|u_i2c|Add0~14_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Equal0~0_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|clk_cnt~5_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Add0~1\ : std_logic;
SIGNAL \u_adc|u_i2c|Add0~2_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Equal0~1_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Equal0~2_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|i2c_tick~q\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector15~0_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|shift_reg[0]~1_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector4~0_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Add1~0_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|state~26_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|bit_cnt[3]~5_combout\ : std_logic;
SIGNAL \u_adc|WideOr5~0_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|state~27_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|bit_cnt[3]~4_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Add2~1_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Add2~0_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Add2~2_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Equal4~0_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Equal3~0_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|state~29_combout\ : std_logic;
SIGNAL \u_adc|Selector20~0_combout\ : std_logic;
SIGNAL \u_adc|Selector15~0_combout\ : std_logic;
SIGNAL \u_adc|Equal1~1_combout\ : std_logic;
SIGNAL \u_adc|Equal0~0_combout\ : std_logic;
SIGNAL \u_adc|Selector15~1_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|state~28_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|state~33_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|state~30_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|state.WRITE~q\ : std_logic;
SIGNAL \u_adc|u_i2c|state.IDLE~2_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|state.IDLE~q\ : std_logic;
SIGNAL \u_adc|u_i2c|busy~0_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|busy~q\ : std_logic;
SIGNAL \u_adc|sub_step[0]~1_combout\ : std_logic;
SIGNAL \u_adc|Selector10~0_combout\ : std_logic;
SIGNAL \u_adc|Selector10~1_combout\ : std_logic;
SIGNAL \u_adc|Selector10~2_combout\ : std_logic;
SIGNAL \u_adc|Selector13~2_combout\ : std_logic;
SIGNAL \u_adc|delay_cnt[0]~24_combout\ : std_logic;
SIGNAL \u_adc|delay_cnt[5]~35\ : std_logic;
SIGNAL \u_adc|delay_cnt[6]~36_combout\ : std_logic;
SIGNAL \u_adc|delay_cnt[6]~37\ : std_logic;
SIGNAL \u_adc|delay_cnt[7]~38_combout\ : std_logic;
SIGNAL \u_adc|delay_cnt[7]~39\ : std_logic;
SIGNAL \u_adc|delay_cnt[8]~40_combout\ : std_logic;
SIGNAL \u_adc|delay_cnt[8]~41\ : std_logic;
SIGNAL \u_adc|delay_cnt[9]~42_combout\ : std_logic;
SIGNAL \u_adc|delay_cnt[9]~43\ : std_logic;
SIGNAL \u_adc|delay_cnt[10]~44_combout\ : std_logic;
SIGNAL \u_adc|delay_cnt[10]~45\ : std_logic;
SIGNAL \u_adc|delay_cnt[11]~46_combout\ : std_logic;
SIGNAL \u_adc|delay_cnt[11]~47\ : std_logic;
SIGNAL \u_adc|delay_cnt[12]~48_combout\ : std_logic;
SIGNAL \u_adc|delay_cnt[12]~49\ : std_logic;
SIGNAL \u_adc|delay_cnt[13]~50_combout\ : std_logic;
SIGNAL \u_adc|delay_cnt[13]~51\ : std_logic;
SIGNAL \u_adc|delay_cnt[14]~52_combout\ : std_logic;
SIGNAL \u_adc|delay_cnt[14]~53\ : std_logic;
SIGNAL \u_adc|delay_cnt[15]~54_combout\ : std_logic;
SIGNAL \u_adc|delay_cnt[15]~55\ : std_logic;
SIGNAL \u_adc|delay_cnt[16]~56_combout\ : std_logic;
SIGNAL \u_adc|delay_cnt[16]~57\ : std_logic;
SIGNAL \u_adc|delay_cnt[17]~58_combout\ : std_logic;
SIGNAL \u_adc|delay_cnt[17]~59\ : std_logic;
SIGNAL \u_adc|delay_cnt[18]~60_combout\ : std_logic;
SIGNAL \u_adc|delay_cnt[18]~61\ : std_logic;
SIGNAL \u_adc|delay_cnt[19]~62_combout\ : std_logic;
SIGNAL \u_adc|delay_cnt[19]~63\ : std_logic;
SIGNAL \u_adc|delay_cnt[20]~64_combout\ : std_logic;
SIGNAL \u_adc|delay_cnt[20]~65\ : std_logic;
SIGNAL \u_adc|delay_cnt[21]~66_combout\ : std_logic;
SIGNAL \u_adc|delay_cnt[21]~67\ : std_logic;
SIGNAL \u_adc|delay_cnt[22]~68_combout\ : std_logic;
SIGNAL \u_adc|delay_cnt[22]~69\ : std_logic;
SIGNAL \u_adc|delay_cnt[23]~70_combout\ : std_logic;
SIGNAL \u_adc|LessThan0~0_combout\ : std_logic;
SIGNAL \u_adc|Selector13~3_combout\ : std_logic;
SIGNAL \u_adc|LessThan0~1_combout\ : std_logic;
SIGNAL \u_adc|LessThan0~5_combout\ : std_logic;
SIGNAL \u_adc|LessThan0~6_combout\ : std_logic;
SIGNAL \u_adc|LessThan0~7_combout\ : std_logic;
SIGNAL \u_adc|Selector13~4_combout\ : std_logic;
SIGNAL \u_adc|current_state.STATE_WAIT_CH1~q\ : std_logic;
SIGNAL \u_adc|always1~9_combout\ : std_logic;
SIGNAL \u_adc|delay_cnt[0]~25\ : std_logic;
SIGNAL \u_adc|delay_cnt[1]~26_combout\ : std_logic;
SIGNAL \u_adc|delay_cnt[1]~27\ : std_logic;
SIGNAL \u_adc|delay_cnt[2]~28_combout\ : std_logic;
SIGNAL \u_adc|delay_cnt[2]~29\ : std_logic;
SIGNAL \u_adc|delay_cnt[3]~30_combout\ : std_logic;
SIGNAL \u_adc|delay_cnt[3]~31\ : std_logic;
SIGNAL \u_adc|delay_cnt[4]~32_combout\ : std_logic;
SIGNAL \u_adc|delay_cnt[4]~33\ : std_logic;
SIGNAL \u_adc|delay_cnt[5]~34_combout\ : std_logic;
SIGNAL \u_adc|LessThan0~3_combout\ : std_logic;
SIGNAL \u_adc|LessThan0~2_combout\ : std_logic;
SIGNAL \u_adc|LessThan0~4_combout\ : std_logic;
SIGNAL \u_adc|LessThan0~8_combout\ : std_logic;
SIGNAL \u_adc|Selector10~3_combout\ : std_logic;
SIGNAL \u_adc|current_state.STATE_WAIT_CH0~q\ : std_logic;
SIGNAL \u_adc|WideOr0~1_combout\ : std_logic;
SIGNAL \u_adc|WideOr0~0_combout\ : std_logic;
SIGNAL \u_adc|WideOr0~2_combout\ : std_logic;
SIGNAL \u_adc|sub_step[0]~2_combout\ : std_logic;
SIGNAL \u_adc|Add1~0_combout\ : std_logic;
SIGNAL \u_adc|sub_step~4_combout\ : std_logic;
SIGNAL \u_adc|Equal1~0_combout\ : std_logic;
SIGNAL \u_adc|Selector11~0_combout\ : std_logic;
SIGNAL \u_adc|Selector11~1_combout\ : std_logic;
SIGNAL \u_adc|Selector11~2_combout\ : std_logic;
SIGNAL \u_adc|current_state.STATE_READ_CH0~q\ : std_logic;
SIGNAL \u_adc|Selector12~3_combout\ : std_logic;
SIGNAL \u_adc|Selector12~2_combout\ : std_logic;
SIGNAL \u_adc|Selector12~4_combout\ : std_logic;
SIGNAL \u_adc|Selector12~5_combout\ : std_logic;
SIGNAL \u_adc|Selector9~0_combout\ : std_logic;
SIGNAL \u_adc|WideOr0~3_combout\ : std_logic;
SIGNAL \u_adc|sub_step~5_combout\ : std_logic;
SIGNAL \u_adc|sub_step~3_combout\ : std_logic;
SIGNAL \u_adc|Decoder0~1_combout\ : std_logic;
SIGNAL \u_adc|Selector14~2_combout\ : std_logic;
SIGNAL \u_adc|current_state.STATE_READ_CH1~q\ : std_logic;
SIGNAL \u_adc|Selector12~0_combout\ : std_logic;
SIGNAL \u_adc|Selector22~0_combout\ : std_logic;
SIGNAL \u_adc|WideOr4~0_combout\ : std_logic;
SIGNAL \u_adc|Selector22~1_combout\ : std_logic;
SIGNAL \u_adc|Selector23~4_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|state~31_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|state.READ~q\ : std_logic;
SIGNAL \u_adc|u_i2c|state.WACK~q\ : std_logic;
SIGNAL \u_adc|u_i2c|state.RACK~q\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector0~0_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|state~32_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|state.START~q\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector1~6_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|state~25_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|state.STOP~q\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector1~7_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector1~4_combout\ : std_logic;
SIGNAL \u_adc|Selector19~0_combout\ : std_logic;
SIGNAL \u_adc|Selector19~1_combout\ : std_logic;
SIGNAL \u_adc|WideOr3~0_combout\ : std_logic;
SIGNAL \u_adc|Selector19~2_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|shift_reg[0]~2_combout\ : std_logic;
SIGNAL \u_adc|Selector18~1_combout\ : std_logic;
SIGNAL \u_adc|Selector17~0_combout\ : std_logic;
SIGNAL \u_adc|Selector17~1_combout\ : std_logic;
SIGNAL \u_adc|Selector17~2_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector1~0_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector1~1_combout\ : std_logic;
SIGNAL \u_adc|Selector21~1_combout\ : std_logic;
SIGNAL \u_adc|Selector21~0_combout\ : std_logic;
SIGNAL \u_adc|Selector21~2_combout\ : std_logic;
SIGNAL \u_adc|Selector20~1_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector1~2_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector1~3_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector1~5_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector1~8_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|sda_out~q\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector2~0_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector2~1_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector2~2_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|sda_oe~q\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector0~2_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector0~1_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector0~3_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|scl~q\ : std_logic;
SIGNAL \u_adc|u_i2c|Equal4~1_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Decoder0~0_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Decoder0~1_combout\ : std_logic;
SIGNAL \j10_sda~input_o\ : std_logic;
SIGNAL \u_adc|u_i2c|data_out[0]~0_combout\ : std_logic;
SIGNAL \u_adc|joystick_x[0]~0_combout\ : std_logic;
SIGNAL \u_adc|always1~7_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Decoder0~2_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|data_out[1]~1_combout\ : std_logic;
SIGNAL \u_adc|joystick_x[1]~1_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Decoder0~3_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|data_out[2]~2_combout\ : std_logic;
SIGNAL \u_adc|joystick_x[2]~2_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|data_out[3]~3_combout\ : std_logic;
SIGNAL \u_adc|joystick_x[3]~3_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Decoder0~4_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|data_out[4]~4_combout\ : std_logic;
SIGNAL \u_adc|joystick_x[4]~4_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Decoder0~5_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|data_out[5]~5_combout\ : std_logic;
SIGNAL \u_adc|joystick_x[5]~5_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|data_out[6]~6_combout\ : std_logic;
SIGNAL \u_adc|joystick_x[6]~6_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|data_out[7]~7_combout\ : std_logic;
SIGNAL \u_adc|joystick_x[7]~7_combout\ : std_logic;
SIGNAL \u_adc|data_high[0]~0_combout\ : std_logic;
SIGNAL \u_adc|joystick_x[8]~8_combout\ : std_logic;
SIGNAL \u_adc|data_high[1]~feeder_combout\ : std_logic;
SIGNAL \u_adc|joystick_x[9]~9_combout\ : std_logic;
SIGNAL \u_adc|joystick_x[10]~10_combout\ : std_logic;
SIGNAL \u_adc|data_high[3]~feeder_combout\ : std_logic;
SIGNAL \u_adc|joystick_x[11]~11_combout\ : std_logic;
SIGNAL \u_adc|data_high[4]~feeder_combout\ : std_logic;
SIGNAL \u_adc|joystick_x[12]~12_combout\ : std_logic;
SIGNAL \u_adc|data_high[5]~feeder_combout\ : std_logic;
SIGNAL \u_adc|joystick_x[13]~13_combout\ : std_logic;
SIGNAL \u_adc|data_high[6]~feeder_combout\ : std_logic;
SIGNAL \u_adc|joystick_x[14]~14_combout\ : std_logic;
SIGNAL \u_adc|joystick_x[15]~feeder_combout\ : std_logic;
SIGNAL \u_adc|joystick_y[0]~0_combout\ : std_logic;
SIGNAL \u_adc|always1~8_combout\ : std_logic;
SIGNAL \u_adc|joystick_y[1]~1_combout\ : std_logic;
SIGNAL \u_adc|joystick_y[2]~2_combout\ : std_logic;
SIGNAL \u_adc|joystick_y[3]~3_combout\ : std_logic;
SIGNAL \u_adc|joystick_y[4]~4_combout\ : std_logic;
SIGNAL \u_adc|joystick_y[5]~5_combout\ : std_logic;
SIGNAL \u_adc|joystick_y[6]~6_combout\ : std_logic;
SIGNAL \u_adc|joystick_y[7]~7_combout\ : std_logic;
SIGNAL \u_adc|joystick_y[8]~8_combout\ : std_logic;
SIGNAL \u_adc|joystick_y[9]~9_combout\ : std_logic;
SIGNAL \u_adc|joystick_y[10]~10_combout\ : std_logic;
SIGNAL \u_adc|joystick_y[11]~11_combout\ : std_logic;
SIGNAL \u_adc|joystick_y[12]~12_combout\ : std_logic;
SIGNAL \u_adc|joystick_y[13]~13_combout\ : std_logic;
SIGNAL \u_adc|joystick_y[14]~14_combout\ : std_logic;
SIGNAL \u_adc|joystick_y[15]~feeder_combout\ : std_logic;
SIGNAL \j11_sw~input_o\ : std_logic;
SIGNAL \u_btn|sw_reg~0_combout\ : std_logic;
SIGNAL \u_btn|sw_reg~q\ : std_logic;
SIGNAL \u_btn|cnt[0]~20_combout\ : std_logic;
SIGNAL \u_btn|always0~0_combout\ : std_logic;
SIGNAL \u_btn|cnt[0]~21\ : std_logic;
SIGNAL \u_btn|cnt[1]~22_combout\ : std_logic;
SIGNAL \u_btn|cnt[1]~23\ : std_logic;
SIGNAL \u_btn|cnt[2]~24_combout\ : std_logic;
SIGNAL \u_btn|cnt[2]~25\ : std_logic;
SIGNAL \u_btn|cnt[3]~26_combout\ : std_logic;
SIGNAL \u_btn|cnt[3]~27\ : std_logic;
SIGNAL \u_btn|cnt[4]~28_combout\ : std_logic;
SIGNAL \u_btn|cnt[4]~29\ : std_logic;
SIGNAL \u_btn|cnt[5]~30_combout\ : std_logic;
SIGNAL \u_btn|cnt[5]~31\ : std_logic;
SIGNAL \u_btn|cnt[6]~32_combout\ : std_logic;
SIGNAL \u_btn|cnt[6]~33\ : std_logic;
SIGNAL \u_btn|cnt[7]~34_combout\ : std_logic;
SIGNAL \u_btn|cnt[7]~35\ : std_logic;
SIGNAL \u_btn|cnt[8]~36_combout\ : std_logic;
SIGNAL \u_btn|cnt[8]~37\ : std_logic;
SIGNAL \u_btn|cnt[9]~38_combout\ : std_logic;
SIGNAL \u_btn|cnt[9]~39\ : std_logic;
SIGNAL \u_btn|cnt[10]~40_combout\ : std_logic;
SIGNAL \u_btn|cnt[10]~41\ : std_logic;
SIGNAL \u_btn|cnt[11]~42_combout\ : std_logic;
SIGNAL \u_btn|cnt[11]~43\ : std_logic;
SIGNAL \u_btn|cnt[12]~44_combout\ : std_logic;
SIGNAL \u_btn|cnt[12]~45\ : std_logic;
SIGNAL \u_btn|cnt[13]~46_combout\ : std_logic;
SIGNAL \u_btn|cnt[13]~47\ : std_logic;
SIGNAL \u_btn|cnt[14]~48_combout\ : std_logic;
SIGNAL \u_btn|cnt[14]~49\ : std_logic;
SIGNAL \u_btn|cnt[15]~50_combout\ : std_logic;
SIGNAL \u_btn|cnt[15]~51\ : std_logic;
SIGNAL \u_btn|cnt[16]~52_combout\ : std_logic;
SIGNAL \u_btn|cnt[16]~53\ : std_logic;
SIGNAL \u_btn|cnt[17]~54_combout\ : std_logic;
SIGNAL \u_btn|cnt[17]~55\ : std_logic;
SIGNAL \u_btn|cnt[18]~56_combout\ : std_logic;
SIGNAL \u_btn|cnt[18]~57\ : std_logic;
SIGNAL \u_btn|cnt[19]~58_combout\ : std_logic;
SIGNAL \u_btn|sw_pressed~3_combout\ : std_logic;
SIGNAL \u_btn|sw_pressed~1_combout\ : std_logic;
SIGNAL \u_btn|sw_pressed~0_combout\ : std_logic;
SIGNAL \u_btn|sw_pressed~2_combout\ : std_logic;
SIGNAL \u_btn|sw_pressed~4_combout\ : std_logic;
SIGNAL \u_btn|sw_pressed~5_combout\ : std_logic;
SIGNAL \u_btn|sw_pressed~q\ : std_logic;
SIGNAL \u_adc|u_i2c|shift_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_adc|u_i2c|phase\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_adc|u_i2c|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_adc|u_i2c|clk_cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_adc|u_i2c|bit_cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_btn|cnt\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \u_adc|joystick_x\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_adc|delay_cnt\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \u_adc|joystick_y\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_adc|sub_step\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_adc|data_high\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_adc|u_i2c|ALT_INV_state.IDLE~q\ : std_logic;
SIGNAL \u_adc|ALT_INV_joystick_y\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \u_adc|ALT_INV_joystick_x\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \u_adc|u_i2c|ALT_INV_sda_oe~q\ : std_logic;
SIGNAL \u_adc|u_i2c|ALT_INV_sda_out~q\ : std_logic;
SIGNAL \u_adc|u_i2c|ALT_INV_state~30_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|ALT_INV_scl~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst_n <= rst_n;
j10_scl <= ww_j10_scl;
j10_sda <= ww_j10_sda;
ww_j10_alrt <= j10_alrt;
ww_j11_sw <= j11_sw;
x_axis <= ww_x_axis;
y_axis <= ww_y_axis;
button_state <= ww_button_state;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rst_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst_n~input_o\);
\u_adc|u_i2c|ALT_INV_state.IDLE~q\ <= NOT \u_adc|u_i2c|state.IDLE~q\;
\u_adc|ALT_INV_joystick_y\(14) <= NOT \u_adc|joystick_y\(14);
\u_adc|ALT_INV_joystick_y\(13) <= NOT \u_adc|joystick_y\(13);
\u_adc|ALT_INV_joystick_y\(12) <= NOT \u_adc|joystick_y\(12);
\u_adc|ALT_INV_joystick_y\(11) <= NOT \u_adc|joystick_y\(11);
\u_adc|ALT_INV_joystick_y\(10) <= NOT \u_adc|joystick_y\(10);
\u_adc|ALT_INV_joystick_y\(9) <= NOT \u_adc|joystick_y\(9);
\u_adc|ALT_INV_joystick_y\(8) <= NOT \u_adc|joystick_y\(8);
\u_adc|ALT_INV_joystick_y\(7) <= NOT \u_adc|joystick_y\(7);
\u_adc|ALT_INV_joystick_y\(6) <= NOT \u_adc|joystick_y\(6);
\u_adc|ALT_INV_joystick_y\(5) <= NOT \u_adc|joystick_y\(5);
\u_adc|ALT_INV_joystick_y\(4) <= NOT \u_adc|joystick_y\(4);
\u_adc|ALT_INV_joystick_y\(3) <= NOT \u_adc|joystick_y\(3);
\u_adc|ALT_INV_joystick_y\(2) <= NOT \u_adc|joystick_y\(2);
\u_adc|ALT_INV_joystick_y\(1) <= NOT \u_adc|joystick_y\(1);
\u_adc|ALT_INV_joystick_y\(0) <= NOT \u_adc|joystick_y\(0);
\u_adc|ALT_INV_joystick_x\(14) <= NOT \u_adc|joystick_x\(14);
\u_adc|ALT_INV_joystick_x\(13) <= NOT \u_adc|joystick_x\(13);
\u_adc|ALT_INV_joystick_x\(12) <= NOT \u_adc|joystick_x\(12);
\u_adc|ALT_INV_joystick_x\(11) <= NOT \u_adc|joystick_x\(11);
\u_adc|ALT_INV_joystick_x\(10) <= NOT \u_adc|joystick_x\(10);
\u_adc|ALT_INV_joystick_x\(9) <= NOT \u_adc|joystick_x\(9);
\u_adc|ALT_INV_joystick_x\(8) <= NOT \u_adc|joystick_x\(8);
\u_adc|ALT_INV_joystick_x\(7) <= NOT \u_adc|joystick_x\(7);
\u_adc|ALT_INV_joystick_x\(6) <= NOT \u_adc|joystick_x\(6);
\u_adc|ALT_INV_joystick_x\(5) <= NOT \u_adc|joystick_x\(5);
\u_adc|ALT_INV_joystick_x\(4) <= NOT \u_adc|joystick_x\(4);
\u_adc|ALT_INV_joystick_x\(3) <= NOT \u_adc|joystick_x\(3);
\u_adc|ALT_INV_joystick_x\(2) <= NOT \u_adc|joystick_x\(2);
\u_adc|ALT_INV_joystick_x\(1) <= NOT \u_adc|joystick_x\(1);
\u_adc|u_i2c|ALT_INV_sda_oe~q\ <= NOT \u_adc|u_i2c|sda_oe~q\;
\u_adc|u_i2c|ALT_INV_sda_out~q\ <= NOT \u_adc|u_i2c|sda_out~q\;
\u_adc|u_i2c|ALT_INV_state~30_combout\ <= NOT \u_adc|u_i2c|state~30_combout\;
\u_adc|ALT_INV_joystick_x\(0) <= NOT \u_adc|joystick_x\(0);
\u_adc|u_i2c|ALT_INV_scl~q\ <= NOT \u_adc|u_i2c|scl~q\;

-- Location: IOOBUF_X34_Y19_N16
\j10_sda~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|u_i2c|ALT_INV_sda_out~q\,
	oe => \u_adc|u_i2c|ALT_INV_sda_oe~q\,
	devoe => ww_devoe,
	o => \j10_sda~output_o\);

-- Location: IOOBUF_X25_Y24_N9
\j10_scl~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|u_i2c|ALT_INV_scl~q\,
	devoe => ww_devoe,
	o => \j10_scl~output_o\);

-- Location: IOOBUF_X25_Y24_N2
\x_axis[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|ALT_INV_joystick_x\(0),
	devoe => ww_devoe,
	o => \x_axis[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N23
\x_axis[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|ALT_INV_joystick_x\(1),
	devoe => ww_devoe,
	o => \x_axis[1]~output_o\);

-- Location: IOOBUF_X30_Y24_N9
\x_axis[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|ALT_INV_joystick_x\(2),
	devoe => ww_devoe,
	o => \x_axis[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\x_axis[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|ALT_INV_joystick_x\(3),
	devoe => ww_devoe,
	o => \x_axis[3]~output_o\);

-- Location: IOOBUF_X25_Y24_N16
\x_axis[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|ALT_INV_joystick_x\(4),
	devoe => ww_devoe,
	o => \x_axis[4]~output_o\);

-- Location: IOOBUF_X34_Y20_N16
\x_axis[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|ALT_INV_joystick_x\(5),
	devoe => ww_devoe,
	o => \x_axis[5]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\x_axis[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|ALT_INV_joystick_x\(6),
	devoe => ww_devoe,
	o => \x_axis[6]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\x_axis[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|ALT_INV_joystick_x\(7),
	devoe => ww_devoe,
	o => \x_axis[7]~output_o\);

-- Location: IOOBUF_X25_Y24_N23
\x_axis[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|ALT_INV_joystick_x\(8),
	devoe => ww_devoe,
	o => \x_axis[8]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\x_axis[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|ALT_INV_joystick_x\(9),
	devoe => ww_devoe,
	o => \x_axis[9]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\x_axis[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|ALT_INV_joystick_x\(10),
	devoe => ww_devoe,
	o => \x_axis[10]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\x_axis[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|ALT_INV_joystick_x\(11),
	devoe => ww_devoe,
	o => \x_axis[11]~output_o\);

-- Location: IOOBUF_X34_Y20_N2
\x_axis[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|ALT_INV_joystick_x\(12),
	devoe => ww_devoe,
	o => \x_axis[12]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\x_axis[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|ALT_INV_joystick_x\(13),
	devoe => ww_devoe,
	o => \x_axis[13]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\x_axis[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|ALT_INV_joystick_x\(14),
	devoe => ww_devoe,
	o => \x_axis[14]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\x_axis[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|joystick_x\(15),
	devoe => ww_devoe,
	o => \x_axis[15]~output_o\);

-- Location: IOOBUF_X32_Y24_N9
\y_axis[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|ALT_INV_joystick_y\(0),
	devoe => ww_devoe,
	o => \y_axis[0]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\y_axis[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|ALT_INV_joystick_y\(1),
	devoe => ww_devoe,
	o => \y_axis[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N9
\y_axis[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|ALT_INV_joystick_y\(2),
	devoe => ww_devoe,
	o => \y_axis[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\y_axis[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|ALT_INV_joystick_y\(3),
	devoe => ww_devoe,
	o => \y_axis[3]~output_o\);

-- Location: IOOBUF_X13_Y24_N2
\y_axis[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|ALT_INV_joystick_y\(4),
	devoe => ww_devoe,
	o => \y_axis[4]~output_o\);

-- Location: IOOBUF_X13_Y24_N9
\y_axis[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|ALT_INV_joystick_y\(5),
	devoe => ww_devoe,
	o => \y_axis[5]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\y_axis[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|ALT_INV_joystick_y\(6),
	devoe => ww_devoe,
	o => \y_axis[6]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\y_axis[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|ALT_INV_joystick_y\(7),
	devoe => ww_devoe,
	o => \y_axis[7]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\y_axis[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|ALT_INV_joystick_y\(8),
	devoe => ww_devoe,
	o => \y_axis[8]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\y_axis[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|ALT_INV_joystick_y\(9),
	devoe => ww_devoe,
	o => \y_axis[9]~output_o\);

-- Location: IOOBUF_X21_Y24_N2
\y_axis[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|ALT_INV_joystick_y\(10),
	devoe => ww_devoe,
	o => \y_axis[10]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\y_axis[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|ALT_INV_joystick_y\(11),
	devoe => ww_devoe,
	o => \y_axis[11]~output_o\);

-- Location: IOOBUF_X32_Y24_N23
\y_axis[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|ALT_INV_joystick_y\(12),
	devoe => ww_devoe,
	o => \y_axis[12]~output_o\);

-- Location: IOOBUF_X21_Y24_N9
\y_axis[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|ALT_INV_joystick_y\(13),
	devoe => ww_devoe,
	o => \y_axis[13]~output_o\);

-- Location: IOOBUF_X32_Y24_N16
\y_axis[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|ALT_INV_joystick_y\(14),
	devoe => ww_devoe,
	o => \y_axis[14]~output_o\);

-- Location: IOOBUF_X21_Y24_N16
\y_axis[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|joystick_y\(15),
	devoe => ww_devoe,
	o => \y_axis[15]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\button_state~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_btn|sw_pressed~q\,
	devoe => ww_devoe,
	o => \button_state~output_o\);

-- Location: IOIBUF_X0_Y11_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X25_Y18_N28
\u_adc|Selector12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector12~1_combout\ = (\u_adc|Decoder0~1_combout\ & \u_adc|current_state.STATE_READ_CH1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_adc|Decoder0~1_combout\,
	datad => \u_adc|current_state.STATE_READ_CH1~q\,
	combout => \u_adc|Selector12~1_combout\);

-- Location: LCCOMB_X24_Y18_N18
\u_adc|current_state.STATE_IDLE~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|current_state.STATE_IDLE~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u_adc|current_state.STATE_IDLE~feeder_combout\);

-- Location: IOIBUF_X0_Y11_N8
\rst_n~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: CLKCTRL_G2
\rst_n~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst_n~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst_n~inputclkctrl_outclk\);

-- Location: FF_X24_Y18_N19
\u_adc|current_state.STATE_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|current_state.STATE_IDLE~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|current_state.STATE_IDLE~q\);

-- Location: FF_X23_Y18_N7
\u_adc|current_state.STATE_WRITE_CH0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|Selector9~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|current_state.STATE_WRITE_CH0~q\);

-- Location: LCCOMB_X24_Y18_N10
\u_adc|Selector12~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector12~6_combout\ = (\u_adc|current_state.STATE_READ_CH0~q\ & \u_adc|Decoder0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|current_state.STATE_READ_CH0~q\,
	datad => \u_adc|Decoder0~1_combout\,
	combout => \u_adc|Selector12~6_combout\);

-- Location: LCCOMB_X24_Y18_N0
\u_adc|Selector12~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector12~7_combout\ = (!\u_adc|Selector12~1_combout\ & ((\u_adc|Selector12~5_combout\ & (\u_adc|Selector12~6_combout\)) # (!\u_adc|Selector12~5_combout\ & ((\u_adc|current_state.STATE_WRITE_CH1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector12~6_combout\,
	datab => \u_adc|Selector12~1_combout\,
	datac => \u_adc|current_state.STATE_WRITE_CH1~q\,
	datad => \u_adc|Selector12~5_combout\,
	combout => \u_adc|Selector12~7_combout\);

-- Location: FF_X24_Y18_N1
\u_adc|current_state.STATE_WRITE_CH1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|Selector12~7_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|current_state.STATE_WRITE_CH1~q\);

-- Location: LCCOMB_X23_Y18_N22
\u_adc|sub_step~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|sub_step~0_combout\ = (!\u_adc|WideOr0~3_combout\ & (\u_adc|sub_step\(2) $ (((\u_adc|sub_step\(0) & \u_adc|sub_step\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(0),
	datab => \u_adc|sub_step\(1),
	datac => \u_adc|sub_step\(2),
	datad => \u_adc|WideOr0~3_combout\,
	combout => \u_adc|sub_step~0_combout\);

-- Location: LCCOMB_X23_Y18_N26
\u_adc|always1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|always1~10_combout\ = (\u_adc|Selector12~1_combout\ & (\u_adc|current_state.STATE_WRITE_CH1~q\)) # (!\u_adc|Selector12~1_combout\ & (\u_adc|Selector12~5_combout\ & (\u_adc|current_state.STATE_WRITE_CH1~q\ $ (\u_adc|Selector12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector12~1_combout\,
	datab => \u_adc|current_state.STATE_WRITE_CH1~q\,
	datac => \u_adc|Selector12~6_combout\,
	datad => \u_adc|Selector12~5_combout\,
	combout => \u_adc|always1~10_combout\);

-- Location: FF_X24_Y21_N5
\u_adc|i2c_busy_d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_adc|u_i2c|busy~q\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|i2c_busy_d~q\);

-- Location: LCCOMB_X24_Y21_N12
\u_adc|i2c_ready\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|i2c_ready~combout\ = (\u_adc|i2c_busy_d~q\) # (\u_adc|u_i2c|busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|i2c_busy_d~q\,
	datac => \u_adc|u_i2c|busy~q\,
	combout => \u_adc|i2c_ready~combout\);

-- Location: LCCOMB_X24_Y19_N10
\u_adc|Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector18~0_combout\ = (!\u_adc|sub_step\(3) & (!\u_adc|i2c_ready~combout\ & ((\u_adc|current_state.STATE_WRITE_CH0~q\) # (\u_adc|current_state.STATE_WRITE_CH1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|current_state.STATE_WRITE_CH0~q\,
	datab => \u_adc|current_state.STATE_WRITE_CH1~q\,
	datac => \u_adc|sub_step\(3),
	datad => \u_adc|i2c_ready~combout\,
	combout => \u_adc|Selector18~0_combout\);

-- Location: LCCOMB_X24_Y19_N4
\u_adc|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Decoder0~0_combout\ = (!\u_adc|sub_step\(1) & !\u_adc|sub_step\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_adc|sub_step\(1),
	datad => \u_adc|sub_step\(0),
	combout => \u_adc|Decoder0~0_combout\);

-- Location: LCCOMB_X24_Y19_N18
\u_adc|Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector16~0_combout\ = (\u_adc|sub_step\(0) & (!\u_adc|sub_step\(1) & !\u_adc|sub_step\(2))) # (!\u_adc|sub_step\(0) & (\u_adc|sub_step\(1) $ (\u_adc|sub_step\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(0),
	datac => \u_adc|sub_step\(1),
	datad => \u_adc|sub_step\(2),
	combout => \u_adc|Selector16~0_combout\);

-- Location: LCCOMB_X24_Y19_N0
\u_adc|Selector16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector16~1_combout\ = (!\u_adc|Selector12~0_combout\ & (\u_adc|Selector16~0_combout\ & (!\u_adc|sub_step\(3) & !\u_adc|i2c_ready~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector12~0_combout\,
	datab => \u_adc|Selector16~0_combout\,
	datac => \u_adc|sub_step\(3),
	datad => \u_adc|i2c_ready~combout\,
	combout => \u_adc|Selector16~1_combout\);

-- Location: LCCOMB_X24_Y19_N24
\u_adc|Selector16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector16~2_combout\ = (\u_adc|Selector16~1_combout\) # ((\u_adc|Selector18~0_combout\ & (\u_adc|sub_step\(2) $ (!\u_adc|Decoder0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector18~0_combout\,
	datab => \u_adc|sub_step\(2),
	datac => \u_adc|Decoder0~0_combout\,
	datad => \u_adc|Selector16~1_combout\,
	combout => \u_adc|Selector16~2_combout\);

-- Location: LCCOMB_X25_Y19_N14
\u_adc|u_i2c|shift_reg[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|shift_reg[0]~0_combout\ = (!\u_adc|Selector22~1_combout\ & (!\u_adc|u_i2c|state.IDLE~q\ & \u_adc|Selector16~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector22~1_combout\,
	datab => \u_adc|u_i2c|state.IDLE~q\,
	datad => \u_adc|Selector16~2_combout\,
	combout => \u_adc|u_i2c|shift_reg[0]~0_combout\);

-- Location: LCCOMB_X28_Y20_N0
\u_adc|u_i2c|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Add0~0_combout\ = \u_adc|u_i2c|clk_cnt\(0) $ (VCC)
-- \u_adc|u_i2c|Add0~1\ = CARRY(\u_adc|u_i2c|clk_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|u_i2c|clk_cnt\(0),
	datad => VCC,
	combout => \u_adc|u_i2c|Add0~0_combout\,
	cout => \u_adc|u_i2c|Add0~1\);

-- Location: LCCOMB_X28_Y20_N2
\u_adc|u_i2c|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Add0~2_combout\ = (\u_adc|u_i2c|clk_cnt\(1) & (!\u_adc|u_i2c|Add0~1\)) # (!\u_adc|u_i2c|clk_cnt\(1) & ((\u_adc|u_i2c|Add0~1\) # (GND)))
-- \u_adc|u_i2c|Add0~3\ = CARRY((!\u_adc|u_i2c|Add0~1\) # (!\u_adc|u_i2c|clk_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|u_i2c|clk_cnt\(1),
	datad => VCC,
	cin => \u_adc|u_i2c|Add0~1\,
	combout => \u_adc|u_i2c|Add0~2_combout\,
	cout => \u_adc|u_i2c|Add0~3\);

-- Location: LCCOMB_X28_Y20_N4
\u_adc|u_i2c|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Add0~4_combout\ = (\u_adc|u_i2c|clk_cnt\(2) & (\u_adc|u_i2c|Add0~3\ $ (GND))) # (!\u_adc|u_i2c|clk_cnt\(2) & (!\u_adc|u_i2c|Add0~3\ & VCC))
-- \u_adc|u_i2c|Add0~5\ = CARRY((\u_adc|u_i2c|clk_cnt\(2) & !\u_adc|u_i2c|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|clk_cnt\(2),
	datad => VCC,
	cin => \u_adc|u_i2c|Add0~3\,
	combout => \u_adc|u_i2c|Add0~4_combout\,
	cout => \u_adc|u_i2c|Add0~5\);

-- Location: LCCOMB_X28_Y20_N26
\u_adc|u_i2c|clk_cnt~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|clk_cnt~4_combout\ = (\u_adc|u_i2c|Add0~4_combout\ & ((!\u_adc|u_i2c|Equal0~0_combout\) # (!\u_adc|u_i2c|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|Equal0~1_combout\,
	datac => \u_adc|u_i2c|Add0~4_combout\,
	datad => \u_adc|u_i2c|Equal0~0_combout\,
	combout => \u_adc|u_i2c|clk_cnt~4_combout\);

-- Location: FF_X28_Y20_N27
\u_adc|u_i2c|clk_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|clk_cnt~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|clk_cnt\(2));

-- Location: LCCOMB_X28_Y20_N6
\u_adc|u_i2c|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Add0~6_combout\ = (\u_adc|u_i2c|clk_cnt\(3) & (!\u_adc|u_i2c|Add0~5\)) # (!\u_adc|u_i2c|clk_cnt\(3) & ((\u_adc|u_i2c|Add0~5\) # (GND)))
-- \u_adc|u_i2c|Add0~7\ = CARRY((!\u_adc|u_i2c|Add0~5\) # (!\u_adc|u_i2c|clk_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|u_i2c|clk_cnt\(3),
	datad => VCC,
	cin => \u_adc|u_i2c|Add0~5\,
	combout => \u_adc|u_i2c|Add0~6_combout\,
	cout => \u_adc|u_i2c|Add0~7\);

-- Location: LCCOMB_X28_Y20_N16
\u_adc|u_i2c|clk_cnt~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|clk_cnt~3_combout\ = (\u_adc|u_i2c|Add0~6_combout\ & ((!\u_adc|u_i2c|Equal0~1_combout\) # (!\u_adc|u_i2c|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|Equal0~0_combout\,
	datac => \u_adc|u_i2c|Equal0~1_combout\,
	datad => \u_adc|u_i2c|Add0~6_combout\,
	combout => \u_adc|u_i2c|clk_cnt~3_combout\);

-- Location: FF_X28_Y20_N17
\u_adc|u_i2c|clk_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|clk_cnt~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|clk_cnt\(3));

-- Location: LCCOMB_X28_Y20_N8
\u_adc|u_i2c|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Add0~8_combout\ = (\u_adc|u_i2c|clk_cnt\(4) & (\u_adc|u_i2c|Add0~7\ $ (GND))) # (!\u_adc|u_i2c|clk_cnt\(4) & (!\u_adc|u_i2c|Add0~7\ & VCC))
-- \u_adc|u_i2c|Add0~9\ = CARRY((\u_adc|u_i2c|clk_cnt\(4) & !\u_adc|u_i2c|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|u_i2c|clk_cnt\(4),
	datad => VCC,
	cin => \u_adc|u_i2c|Add0~7\,
	combout => \u_adc|u_i2c|Add0~8_combout\,
	cout => \u_adc|u_i2c|Add0~9\);

-- Location: LCCOMB_X28_Y20_N18
\u_adc|u_i2c|clk_cnt~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|clk_cnt~2_combout\ = (\u_adc|u_i2c|Add0~8_combout\ & ((!\u_adc|u_i2c|Equal0~0_combout\) # (!\u_adc|u_i2c|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|Equal0~1_combout\,
	datac => \u_adc|u_i2c|Add0~8_combout\,
	datad => \u_adc|u_i2c|Equal0~0_combout\,
	combout => \u_adc|u_i2c|clk_cnt~2_combout\);

-- Location: FF_X28_Y20_N19
\u_adc|u_i2c|clk_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|clk_cnt~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|clk_cnt\(4));

-- Location: LCCOMB_X28_Y20_N10
\u_adc|u_i2c|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Add0~10_combout\ = (\u_adc|u_i2c|clk_cnt\(5) & (!\u_adc|u_i2c|Add0~9\)) # (!\u_adc|u_i2c|clk_cnt\(5) & ((\u_adc|u_i2c|Add0~9\) # (GND)))
-- \u_adc|u_i2c|Add0~11\ = CARRY((!\u_adc|u_i2c|Add0~9\) # (!\u_adc|u_i2c|clk_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|u_i2c|clk_cnt\(5),
	datad => VCC,
	cin => \u_adc|u_i2c|Add0~9\,
	combout => \u_adc|u_i2c|Add0~10_combout\,
	cout => \u_adc|u_i2c|Add0~11\);

-- Location: LCCOMB_X28_Y20_N24
\u_adc|u_i2c|clk_cnt~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|clk_cnt~1_combout\ = (\u_adc|u_i2c|Add0~10_combout\ & ((!\u_adc|u_i2c|Equal0~1_combout\) # (!\u_adc|u_i2c|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|Equal0~0_combout\,
	datac => \u_adc|u_i2c|Equal0~1_combout\,
	datad => \u_adc|u_i2c|Add0~10_combout\,
	combout => \u_adc|u_i2c|clk_cnt~1_combout\);

-- Location: FF_X28_Y20_N25
\u_adc|u_i2c|clk_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|clk_cnt~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|clk_cnt\(5));

-- Location: LCCOMB_X28_Y20_N12
\u_adc|u_i2c|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Add0~12_combout\ = (\u_adc|u_i2c|clk_cnt\(6) & (\u_adc|u_i2c|Add0~11\ $ (GND))) # (!\u_adc|u_i2c|clk_cnt\(6) & (!\u_adc|u_i2c|Add0~11\ & VCC))
-- \u_adc|u_i2c|Add0~13\ = CARRY((\u_adc|u_i2c|clk_cnt\(6) & !\u_adc|u_i2c|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|clk_cnt\(6),
	datad => VCC,
	cin => \u_adc|u_i2c|Add0~11\,
	combout => \u_adc|u_i2c|Add0~12_combout\,
	cout => \u_adc|u_i2c|Add0~13\);

-- Location: LCCOMB_X28_Y20_N22
\u_adc|u_i2c|clk_cnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|clk_cnt~0_combout\ = (\u_adc|u_i2c|Add0~12_combout\ & ((!\u_adc|u_i2c|Equal0~1_combout\) # (!\u_adc|u_i2c|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|Equal0~0_combout\,
	datac => \u_adc|u_i2c|Equal0~1_combout\,
	datad => \u_adc|u_i2c|Add0~12_combout\,
	combout => \u_adc|u_i2c|clk_cnt~0_combout\);

-- Location: FF_X28_Y20_N23
\u_adc|u_i2c|clk_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|clk_cnt~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|clk_cnt\(6));

-- Location: LCCOMB_X28_Y20_N14
\u_adc|u_i2c|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Add0~14_combout\ = \u_adc|u_i2c|clk_cnt\(7) $ (\u_adc|u_i2c|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|u_i2c|clk_cnt\(7),
	cin => \u_adc|u_i2c|Add0~13\,
	combout => \u_adc|u_i2c|Add0~14_combout\);

-- Location: FF_X28_Y20_N15
\u_adc|u_i2c|clk_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|Add0~14_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|clk_cnt\(7));

-- Location: LCCOMB_X29_Y20_N4
\u_adc|u_i2c|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Equal0~0_combout\ = (!\u_adc|u_i2c|clk_cnt\(7) & (\u_adc|u_i2c|clk_cnt\(6) & (\u_adc|u_i2c|clk_cnt\(5) & \u_adc|u_i2c|clk_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|clk_cnt\(7),
	datab => \u_adc|u_i2c|clk_cnt\(6),
	datac => \u_adc|u_i2c|clk_cnt\(5),
	datad => \u_adc|u_i2c|clk_cnt\(4),
	combout => \u_adc|u_i2c|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y20_N20
\u_adc|u_i2c|clk_cnt~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|clk_cnt~5_combout\ = (\u_adc|u_i2c|Add0~0_combout\ & ((!\u_adc|u_i2c|Equal0~0_combout\) # (!\u_adc|u_i2c|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|u_i2c|Add0~0_combout\,
	datac => \u_adc|u_i2c|Equal0~1_combout\,
	datad => \u_adc|u_i2c|Equal0~0_combout\,
	combout => \u_adc|u_i2c|clk_cnt~5_combout\);

-- Location: FF_X28_Y20_N21
\u_adc|u_i2c|clk_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|clk_cnt~5_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|clk_cnt\(0));

-- Location: FF_X28_Y20_N3
\u_adc|u_i2c|clk_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|Add0~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|clk_cnt\(1));

-- Location: LCCOMB_X28_Y20_N30
\u_adc|u_i2c|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Equal0~1_combout\ = (!\u_adc|u_i2c|clk_cnt\(1) & (!\u_adc|u_i2c|clk_cnt\(0) & (\u_adc|u_i2c|clk_cnt\(2) & \u_adc|u_i2c|clk_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|clk_cnt\(1),
	datab => \u_adc|u_i2c|clk_cnt\(0),
	datac => \u_adc|u_i2c|clk_cnt\(2),
	datad => \u_adc|u_i2c|clk_cnt\(3),
	combout => \u_adc|u_i2c|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y20_N28
\u_adc|u_i2c|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Equal0~2_combout\ = (\u_adc|u_i2c|Equal0~1_combout\ & \u_adc|u_i2c|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_adc|u_i2c|Equal0~1_combout\,
	datad => \u_adc|u_i2c|Equal0~0_combout\,
	combout => \u_adc|u_i2c|Equal0~2_combout\);

-- Location: FF_X28_Y20_N29
\u_adc|u_i2c|i2c_tick\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|Equal0~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|i2c_tick~q\);

-- Location: LCCOMB_X26_Y19_N24
\u_adc|u_i2c|Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector15~0_combout\ = (\u_adc|u_i2c|state.IDLE~q\ & !\u_adc|u_i2c|bit_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|state.IDLE~q\,
	datac => \u_adc|u_i2c|bit_cnt\(0),
	combout => \u_adc|u_i2c|Selector15~0_combout\);

-- Location: LCCOMB_X24_Y19_N22
\u_adc|u_i2c|shift_reg[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|shift_reg[0]~1_combout\ = (!\u_adc|Selector22~1_combout\ & !\u_adc|u_i2c|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_adc|Selector22~1_combout\,
	datad => \u_adc|u_i2c|state.IDLE~q\,
	combout => \u_adc|u_i2c|shift_reg[0]~1_combout\);

-- Location: LCCOMB_X26_Y19_N14
\u_adc|u_i2c|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector4~0_combout\ = (\u_adc|u_i2c|state.IDLE~q\ & !\u_adc|u_i2c|phase\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|state.IDLE~q\,
	datac => \u_adc|u_i2c|phase\(0),
	combout => \u_adc|u_i2c|Selector4~0_combout\);

-- Location: FF_X26_Y19_N15
\u_adc|u_i2c|phase[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|Selector4~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|u_i2c|i2c_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|phase\(0));

-- Location: LCCOMB_X26_Y19_N4
\u_adc|u_i2c|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Add1~0_combout\ = \u_adc|u_i2c|phase\(0) $ (\u_adc|u_i2c|phase\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|u_i2c|phase\(0),
	datac => \u_adc|u_i2c|phase\(1),
	combout => \u_adc|u_i2c|Add1~0_combout\);

-- Location: FF_X26_Y19_N5
\u_adc|u_i2c|phase[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|Add1~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_adc|u_i2c|ALT_INV_state.IDLE~q\,
	ena => \u_adc|u_i2c|i2c_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|phase\(1));

-- Location: LCCOMB_X25_Y19_N20
\u_adc|u_i2c|state~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|state~26_combout\ = (!\u_adc|u_i2c|state.WRITE~q\ & !\u_adc|u_i2c|state.READ~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|u_i2c|state.WRITE~q\,
	datad => \u_adc|u_i2c|state.READ~q\,
	combout => \u_adc|u_i2c|state~26_combout\);

-- Location: LCCOMB_X25_Y19_N8
\u_adc|u_i2c|bit_cnt[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|bit_cnt[3]~5_combout\ = (\u_adc|u_i2c|phase\(1) & (!\u_adc|u_i2c|state~26_combout\ & (\u_adc|u_i2c|phase\(0) & !\u_adc|u_i2c|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|phase\(1),
	datab => \u_adc|u_i2c|state~26_combout\,
	datac => \u_adc|u_i2c|phase\(0),
	datad => \u_adc|u_i2c|Equal4~0_combout\,
	combout => \u_adc|u_i2c|bit_cnt[3]~5_combout\);

-- Location: LCCOMB_X23_Y19_N16
\u_adc|WideOr5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|WideOr5~0_combout\ = (!\u_adc|sub_step\(3) & (\u_adc|sub_step\(2) & (\u_adc|sub_step\(1) $ (\u_adc|sub_step\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(1),
	datab => \u_adc|sub_step\(3),
	datac => \u_adc|sub_step\(0),
	datad => \u_adc|sub_step\(2),
	combout => \u_adc|WideOr5~0_combout\);

-- Location: LCCOMB_X24_Y19_N6
\u_adc|u_i2c|state~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|state~27_combout\ = (!\u_adc|Selector16~2_combout\ & ((\u_adc|Selector12~0_combout\) # ((\u_adc|i2c_ready~combout\) # (!\u_adc|WideOr5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector12~0_combout\,
	datab => \u_adc|i2c_ready~combout\,
	datac => \u_adc|WideOr5~0_combout\,
	datad => \u_adc|Selector16~2_combout\,
	combout => \u_adc|u_i2c|state~27_combout\);

-- Location: LCCOMB_X24_Y19_N20
\u_adc|u_i2c|bit_cnt[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|bit_cnt[3]~4_combout\ = (\u_adc|u_i2c|i2c_tick~q\ & ((\u_adc|u_i2c|bit_cnt[3]~5_combout\) # ((\u_adc|u_i2c|shift_reg[0]~1_combout\ & !\u_adc|u_i2c|state~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|shift_reg[0]~1_combout\,
	datab => \u_adc|u_i2c|i2c_tick~q\,
	datac => \u_adc|u_i2c|bit_cnt[3]~5_combout\,
	datad => \u_adc|u_i2c|state~27_combout\,
	combout => \u_adc|u_i2c|bit_cnt[3]~4_combout\);

-- Location: FF_X26_Y19_N25
\u_adc|u_i2c|bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|Selector15~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|u_i2c|bit_cnt[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|bit_cnt\(0));

-- Location: LCCOMB_X23_Y19_N30
\u_adc|u_i2c|Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Add2~1_combout\ = \u_adc|u_i2c|bit_cnt\(1) $ (\u_adc|u_i2c|bit_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_adc|u_i2c|bit_cnt\(1),
	datad => \u_adc|u_i2c|bit_cnt\(0),
	combout => \u_adc|u_i2c|Add2~1_combout\);

-- Location: FF_X23_Y19_N31
\u_adc|u_i2c|bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|Add2~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_adc|u_i2c|ALT_INV_state.IDLE~q\,
	ena => \u_adc|u_i2c|bit_cnt[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|bit_cnt\(1));

-- Location: LCCOMB_X23_Y19_N24
\u_adc|u_i2c|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Add2~0_combout\ = \u_adc|u_i2c|bit_cnt\(2) $ (((\u_adc|u_i2c|bit_cnt\(1) & \u_adc|u_i2c|bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|bit_cnt\(1),
	datac => \u_adc|u_i2c|bit_cnt\(2),
	datad => \u_adc|u_i2c|bit_cnt\(0),
	combout => \u_adc|u_i2c|Add2~0_combout\);

-- Location: FF_X23_Y19_N25
\u_adc|u_i2c|bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|Add2~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_adc|u_i2c|ALT_INV_state.IDLE~q\,
	ena => \u_adc|u_i2c|bit_cnt[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|bit_cnt\(2));

-- Location: LCCOMB_X23_Y19_N0
\u_adc|u_i2c|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Add2~2_combout\ = \u_adc|u_i2c|bit_cnt\(3) $ (((\u_adc|u_i2c|bit_cnt\(1) & (\u_adc|u_i2c|bit_cnt\(2) & \u_adc|u_i2c|bit_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|bit_cnt\(1),
	datab => \u_adc|u_i2c|bit_cnt\(2),
	datac => \u_adc|u_i2c|bit_cnt\(3),
	datad => \u_adc|u_i2c|bit_cnt\(0),
	combout => \u_adc|u_i2c|Add2~2_combout\);

-- Location: FF_X23_Y19_N1
\u_adc|u_i2c|bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|Add2~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_adc|u_i2c|ALT_INV_state.IDLE~q\,
	ena => \u_adc|u_i2c|bit_cnt[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|bit_cnt\(3));

-- Location: LCCOMB_X25_Y19_N28
\u_adc|u_i2c|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Equal4~0_combout\ = (\u_adc|u_i2c|bit_cnt\(1) & (\u_adc|u_i2c|bit_cnt\(2) & (!\u_adc|u_i2c|bit_cnt\(3) & \u_adc|u_i2c|bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|bit_cnt\(1),
	datab => \u_adc|u_i2c|bit_cnt\(2),
	datac => \u_adc|u_i2c|bit_cnt\(3),
	datad => \u_adc|u_i2c|bit_cnt\(0),
	combout => \u_adc|u_i2c|Equal4~0_combout\);

-- Location: LCCOMB_X25_Y19_N30
\u_adc|u_i2c|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Equal3~0_combout\ = (\u_adc|u_i2c|phase\(0) & \u_adc|u_i2c|phase\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_adc|u_i2c|phase\(0),
	datad => \u_adc|u_i2c|phase\(1),
	combout => \u_adc|u_i2c|Equal3~0_combout\);

-- Location: LCCOMB_X25_Y19_N10
\u_adc|u_i2c|state~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|state~29_combout\ = (\u_adc|u_i2c|i2c_tick~q\ & ((\u_adc|u_i2c|state~26_combout\) # ((\u_adc|u_i2c|Equal4~0_combout\ & \u_adc|u_i2c|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|i2c_tick~q\,
	datab => \u_adc|u_i2c|Equal4~0_combout\,
	datac => \u_adc|u_i2c|Equal3~0_combout\,
	datad => \u_adc|u_i2c|state~26_combout\,
	combout => \u_adc|u_i2c|state~29_combout\);

-- Location: LCCOMB_X23_Y19_N14
\u_adc|Selector20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector20~0_combout\ = (!\u_adc|current_state.STATE_WRITE_CH0~q\ & !\u_adc|current_state.STATE_WRITE_CH1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_adc|current_state.STATE_WRITE_CH0~q\,
	datad => \u_adc|current_state.STATE_WRITE_CH1~q\,
	combout => \u_adc|Selector20~0_combout\);

-- Location: LCCOMB_X23_Y19_N6
\u_adc|Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector15~0_combout\ = (\u_adc|sub_step\(0) & (!\u_adc|sub_step\(3) & ((\u_adc|current_state.STATE_READ_CH1~q\) # (\u_adc|current_state.STATE_READ_CH0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|current_state.STATE_READ_CH1~q\,
	datab => \u_adc|sub_step\(0),
	datac => \u_adc|sub_step\(3),
	datad => \u_adc|current_state.STATE_READ_CH0~q\,
	combout => \u_adc|Selector15~0_combout\);

-- Location: LCCOMB_X22_Y19_N20
\u_adc|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Equal1~1_combout\ = (\u_adc|sub_step\(2) & \u_adc|sub_step\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|sub_step\(2),
	datad => \u_adc|sub_step\(1),
	combout => \u_adc|Equal1~1_combout\);

-- Location: LCCOMB_X24_Y19_N2
\u_adc|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Equal0~0_combout\ = (\u_adc|sub_step\(0) & (!\u_adc|sub_step\(3) & (!\u_adc|sub_step\(1) & \u_adc|sub_step\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(0),
	datab => \u_adc|sub_step\(3),
	datac => \u_adc|sub_step\(1),
	datad => \u_adc|sub_step\(2),
	combout => \u_adc|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y19_N28
\u_adc|Selector15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector15~1_combout\ = (\u_adc|Selector20~0_combout\ & (\u_adc|Selector15~0_combout\ & (\u_adc|Equal1~1_combout\))) # (!\u_adc|Selector20~0_combout\ & ((\u_adc|Equal0~0_combout\) # ((\u_adc|Selector15~0_combout\ & \u_adc|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector20~0_combout\,
	datab => \u_adc|Selector15~0_combout\,
	datac => \u_adc|Equal1~1_combout\,
	datad => \u_adc|Equal0~0_combout\,
	combout => \u_adc|Selector15~1_combout\);

-- Location: LCCOMB_X24_Y19_N16
\u_adc|u_i2c|state~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|state~28_combout\ = ((\u_adc|Selector22~1_combout\) # ((!\u_adc|i2c_ready~combout\ & \u_adc|Selector15~1_combout\))) # (!\u_adc|u_i2c|state~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|state~27_combout\,
	datab => \u_adc|i2c_ready~combout\,
	datac => \u_adc|Selector22~1_combout\,
	datad => \u_adc|Selector15~1_combout\,
	combout => \u_adc|u_i2c|state~28_combout\);

-- Location: LCCOMB_X25_Y19_N6
\u_adc|u_i2c|state~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|state~33_combout\ = (!\u_adc|u_i2c|state.WRITE~q\ & (!\u_adc|u_i2c|state.READ~q\ & ((!\u_adc|u_i2c|state.IDLE~q\) # (!\u_adc|u_i2c|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|Equal3~0_combout\,
	datab => \u_adc|u_i2c|state.IDLE~q\,
	datac => \u_adc|u_i2c|state.WRITE~q\,
	datad => \u_adc|u_i2c|state.READ~q\,
	combout => \u_adc|u_i2c|state~33_combout\);

-- Location: LCCOMB_X25_Y19_N24
\u_adc|u_i2c|state~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|state~30_combout\ = ((\u_adc|u_i2c|state~33_combout\ & ((\u_adc|u_i2c|state.IDLE~q\) # (!\u_adc|u_i2c|state~28_combout\)))) # (!\u_adc|u_i2c|state~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|state~29_combout\,
	datab => \u_adc|u_i2c|state.IDLE~q\,
	datac => \u_adc|u_i2c|state~28_combout\,
	datad => \u_adc|u_i2c|state~33_combout\,
	combout => \u_adc|u_i2c|state~30_combout\);

-- Location: FF_X25_Y19_N15
\u_adc|u_i2c|state.WRITE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|shift_reg[0]~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|u_i2c|ALT_INV_state~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|state.WRITE~q\);

-- Location: LCCOMB_X25_Y19_N16
\u_adc|u_i2c|state.IDLE~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|state.IDLE~2_combout\ = (\u_adc|u_i2c|state.IDLE~q\ & ((\u_adc|u_i2c|state.READ~q\) # ((\u_adc|u_i2c|state.WRITE~q\) # (\u_adc|u_i2c|state~30_combout\)))) # (!\u_adc|u_i2c|state.IDLE~q\ & (((!\u_adc|u_i2c|state~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|state.READ~q\,
	datab => \u_adc|u_i2c|state.WRITE~q\,
	datac => \u_adc|u_i2c|state.IDLE~q\,
	datad => \u_adc|u_i2c|state~30_combout\,
	combout => \u_adc|u_i2c|state.IDLE~2_combout\);

-- Location: FF_X25_Y19_N17
\u_adc|u_i2c|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|state.IDLE~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|state.IDLE~q\);

-- Location: LCCOMB_X24_Y21_N26
\u_adc|u_i2c|busy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|busy~0_combout\ = (\u_adc|u_i2c|state.IDLE~q\ & (((\u_adc|u_i2c|busy~q\)))) # (!\u_adc|u_i2c|state.IDLE~q\ & ((\u_adc|u_i2c|i2c_tick~q\ & (\u_adc|u_i2c|state~28_combout\)) # (!\u_adc|u_i2c|i2c_tick~q\ & ((\u_adc|u_i2c|busy~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|state.IDLE~q\,
	datab => \u_adc|u_i2c|state~28_combout\,
	datac => \u_adc|u_i2c|busy~q\,
	datad => \u_adc|u_i2c|i2c_tick~q\,
	combout => \u_adc|u_i2c|busy~0_combout\);

-- Location: FF_X24_Y21_N27
\u_adc|u_i2c|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|busy~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|busy~q\);

-- Location: LCCOMB_X23_Y18_N8
\u_adc|sub_step[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|sub_step[0]~1_combout\ = (\u_adc|u_i2c|busy~q\ & (\u_adc|current_state.STATE_WRITE_CH0~q\ $ (((!\u_adc|Selector9~0_combout\))))) # (!\u_adc|u_i2c|busy~q\ & (!\u_adc|i2c_busy_d~q\ & (\u_adc|current_state.STATE_WRITE_CH0~q\ $ 
-- (!\u_adc|Selector9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|current_state.STATE_WRITE_CH0~q\,
	datab => \u_adc|u_i2c|busy~q\,
	datac => \u_adc|i2c_busy_d~q\,
	datad => \u_adc|Selector9~0_combout\,
	combout => \u_adc|sub_step[0]~1_combout\);

-- Location: LCCOMB_X24_Y18_N24
\u_adc|Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector10~0_combout\ = (\u_adc|current_state.STATE_WAIT_CH0~q\ & \u_adc|current_state.STATE_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|current_state.STATE_WAIT_CH0~q\,
	datad => \u_adc|current_state.STATE_IDLE~q\,
	combout => \u_adc|Selector10~0_combout\);

-- Location: LCCOMB_X24_Y18_N2
\u_adc|Selector10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector10~1_combout\ = (\u_adc|current_state.STATE_WRITE_CH0~q\ & (((\u_adc|Equal1~0_combout\) # (\u_adc|Selector10~0_combout\)))) # (!\u_adc|current_state.STATE_WRITE_CH0~q\ & (\u_adc|current_state.STATE_WRITE_CH1~q\ & 
-- ((\u_adc|Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|current_state.STATE_WRITE_CH0~q\,
	datab => \u_adc|current_state.STATE_WRITE_CH1~q\,
	datac => \u_adc|Equal1~0_combout\,
	datad => \u_adc|Selector10~0_combout\,
	combout => \u_adc|Selector10~1_combout\);

-- Location: LCCOMB_X24_Y18_N12
\u_adc|Selector10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector10~2_combout\ = (\u_adc|Selector10~0_combout\ & (((!\u_adc|current_state.STATE_READ_CH1~q\ & !\u_adc|current_state.STATE_READ_CH0~q\)) # (!\u_adc|Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|current_state.STATE_READ_CH1~q\,
	datab => \u_adc|Decoder0~1_combout\,
	datac => \u_adc|current_state.STATE_READ_CH0~q\,
	datad => \u_adc|Selector10~0_combout\,
	combout => \u_adc|Selector10~2_combout\);

-- Location: LCCOMB_X24_Y18_N14
\u_adc|Selector13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector13~2_combout\ = (\u_adc|Equal1~0_combout\ & \u_adc|current_state.STATE_WRITE_CH1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_adc|Equal1~0_combout\,
	datad => \u_adc|current_state.STATE_WRITE_CH1~q\,
	combout => \u_adc|Selector13~2_combout\);

-- Location: LCCOMB_X22_Y18_N8
\u_adc|delay_cnt[0]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|delay_cnt[0]~24_combout\ = \u_adc|delay_cnt\(0) $ (VCC)
-- \u_adc|delay_cnt[0]~25\ = CARRY(\u_adc|delay_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|delay_cnt\(0),
	datad => VCC,
	combout => \u_adc|delay_cnt[0]~24_combout\,
	cout => \u_adc|delay_cnt[0]~25\);

-- Location: LCCOMB_X22_Y18_N18
\u_adc|delay_cnt[5]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|delay_cnt[5]~34_combout\ = (\u_adc|delay_cnt\(5) & (!\u_adc|delay_cnt[4]~33\)) # (!\u_adc|delay_cnt\(5) & ((\u_adc|delay_cnt[4]~33\) # (GND)))
-- \u_adc|delay_cnt[5]~35\ = CARRY((!\u_adc|delay_cnt[4]~33\) # (!\u_adc|delay_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|delay_cnt\(5),
	datad => VCC,
	cin => \u_adc|delay_cnt[4]~33\,
	combout => \u_adc|delay_cnt[5]~34_combout\,
	cout => \u_adc|delay_cnt[5]~35\);

-- Location: LCCOMB_X22_Y18_N20
\u_adc|delay_cnt[6]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|delay_cnt[6]~36_combout\ = (\u_adc|delay_cnt\(6) & (\u_adc|delay_cnt[5]~35\ $ (GND))) # (!\u_adc|delay_cnt\(6) & (!\u_adc|delay_cnt[5]~35\ & VCC))
-- \u_adc|delay_cnt[6]~37\ = CARRY((\u_adc|delay_cnt\(6) & !\u_adc|delay_cnt[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|delay_cnt\(6),
	datad => VCC,
	cin => \u_adc|delay_cnt[5]~35\,
	combout => \u_adc|delay_cnt[6]~36_combout\,
	cout => \u_adc|delay_cnt[6]~37\);

-- Location: FF_X22_Y18_N21
\u_adc|delay_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[6]~36_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_adc|always1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(6));

-- Location: LCCOMB_X22_Y18_N22
\u_adc|delay_cnt[7]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|delay_cnt[7]~38_combout\ = (\u_adc|delay_cnt\(7) & (!\u_adc|delay_cnt[6]~37\)) # (!\u_adc|delay_cnt\(7) & ((\u_adc|delay_cnt[6]~37\) # (GND)))
-- \u_adc|delay_cnt[7]~39\ = CARRY((!\u_adc|delay_cnt[6]~37\) # (!\u_adc|delay_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|delay_cnt\(7),
	datad => VCC,
	cin => \u_adc|delay_cnt[6]~37\,
	combout => \u_adc|delay_cnt[7]~38_combout\,
	cout => \u_adc|delay_cnt[7]~39\);

-- Location: FF_X22_Y18_N23
\u_adc|delay_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[7]~38_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_adc|always1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(7));

-- Location: LCCOMB_X22_Y18_N24
\u_adc|delay_cnt[8]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|delay_cnt[8]~40_combout\ = (\u_adc|delay_cnt\(8) & (\u_adc|delay_cnt[7]~39\ $ (GND))) # (!\u_adc|delay_cnt\(8) & (!\u_adc|delay_cnt[7]~39\ & VCC))
-- \u_adc|delay_cnt[8]~41\ = CARRY((\u_adc|delay_cnt\(8) & !\u_adc|delay_cnt[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|delay_cnt\(8),
	datad => VCC,
	cin => \u_adc|delay_cnt[7]~39\,
	combout => \u_adc|delay_cnt[8]~40_combout\,
	cout => \u_adc|delay_cnt[8]~41\);

-- Location: FF_X22_Y18_N25
\u_adc|delay_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[8]~40_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_adc|always1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(8));

-- Location: LCCOMB_X22_Y18_N26
\u_adc|delay_cnt[9]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|delay_cnt[9]~42_combout\ = (\u_adc|delay_cnt\(9) & (!\u_adc|delay_cnt[8]~41\)) # (!\u_adc|delay_cnt\(9) & ((\u_adc|delay_cnt[8]~41\) # (GND)))
-- \u_adc|delay_cnt[9]~43\ = CARRY((!\u_adc|delay_cnt[8]~41\) # (!\u_adc|delay_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|delay_cnt\(9),
	datad => VCC,
	cin => \u_adc|delay_cnt[8]~41\,
	combout => \u_adc|delay_cnt[9]~42_combout\,
	cout => \u_adc|delay_cnt[9]~43\);

-- Location: FF_X22_Y18_N27
\u_adc|delay_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[9]~42_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_adc|always1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(9));

-- Location: LCCOMB_X22_Y18_N28
\u_adc|delay_cnt[10]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|delay_cnt[10]~44_combout\ = (\u_adc|delay_cnt\(10) & (\u_adc|delay_cnt[9]~43\ $ (GND))) # (!\u_adc|delay_cnt\(10) & (!\u_adc|delay_cnt[9]~43\ & VCC))
-- \u_adc|delay_cnt[10]~45\ = CARRY((\u_adc|delay_cnt\(10) & !\u_adc|delay_cnt[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|delay_cnt\(10),
	datad => VCC,
	cin => \u_adc|delay_cnt[9]~43\,
	combout => \u_adc|delay_cnt[10]~44_combout\,
	cout => \u_adc|delay_cnt[10]~45\);

-- Location: FF_X22_Y18_N29
\u_adc|delay_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[10]~44_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_adc|always1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(10));

-- Location: LCCOMB_X22_Y18_N30
\u_adc|delay_cnt[11]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|delay_cnt[11]~46_combout\ = (\u_adc|delay_cnt\(11) & (!\u_adc|delay_cnt[10]~45\)) # (!\u_adc|delay_cnt\(11) & ((\u_adc|delay_cnt[10]~45\) # (GND)))
-- \u_adc|delay_cnt[11]~47\ = CARRY((!\u_adc|delay_cnt[10]~45\) # (!\u_adc|delay_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|delay_cnt\(11),
	datad => VCC,
	cin => \u_adc|delay_cnt[10]~45\,
	combout => \u_adc|delay_cnt[11]~46_combout\,
	cout => \u_adc|delay_cnt[11]~47\);

-- Location: FF_X22_Y18_N31
\u_adc|delay_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[11]~46_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_adc|always1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(11));

-- Location: LCCOMB_X22_Y17_N0
\u_adc|delay_cnt[12]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|delay_cnt[12]~48_combout\ = (\u_adc|delay_cnt\(12) & (\u_adc|delay_cnt[11]~47\ $ (GND))) # (!\u_adc|delay_cnt\(12) & (!\u_adc|delay_cnt[11]~47\ & VCC))
-- \u_adc|delay_cnt[12]~49\ = CARRY((\u_adc|delay_cnt\(12) & !\u_adc|delay_cnt[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|delay_cnt\(12),
	datad => VCC,
	cin => \u_adc|delay_cnt[11]~47\,
	combout => \u_adc|delay_cnt[12]~48_combout\,
	cout => \u_adc|delay_cnt[12]~49\);

-- Location: FF_X22_Y17_N1
\u_adc|delay_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[12]~48_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_adc|always1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(12));

-- Location: LCCOMB_X22_Y17_N2
\u_adc|delay_cnt[13]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|delay_cnt[13]~50_combout\ = (\u_adc|delay_cnt\(13) & (!\u_adc|delay_cnt[12]~49\)) # (!\u_adc|delay_cnt\(13) & ((\u_adc|delay_cnt[12]~49\) # (GND)))
-- \u_adc|delay_cnt[13]~51\ = CARRY((!\u_adc|delay_cnt[12]~49\) # (!\u_adc|delay_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|delay_cnt\(13),
	datad => VCC,
	cin => \u_adc|delay_cnt[12]~49\,
	combout => \u_adc|delay_cnt[13]~50_combout\,
	cout => \u_adc|delay_cnt[13]~51\);

-- Location: FF_X22_Y17_N3
\u_adc|delay_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[13]~50_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_adc|always1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(13));

-- Location: LCCOMB_X22_Y17_N4
\u_adc|delay_cnt[14]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|delay_cnt[14]~52_combout\ = (\u_adc|delay_cnt\(14) & (\u_adc|delay_cnt[13]~51\ $ (GND))) # (!\u_adc|delay_cnt\(14) & (!\u_adc|delay_cnt[13]~51\ & VCC))
-- \u_adc|delay_cnt[14]~53\ = CARRY((\u_adc|delay_cnt\(14) & !\u_adc|delay_cnt[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|delay_cnt\(14),
	datad => VCC,
	cin => \u_adc|delay_cnt[13]~51\,
	combout => \u_adc|delay_cnt[14]~52_combout\,
	cout => \u_adc|delay_cnt[14]~53\);

-- Location: FF_X22_Y17_N5
\u_adc|delay_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[14]~52_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_adc|always1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(14));

-- Location: LCCOMB_X22_Y17_N6
\u_adc|delay_cnt[15]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|delay_cnt[15]~54_combout\ = (\u_adc|delay_cnt\(15) & (!\u_adc|delay_cnt[14]~53\)) # (!\u_adc|delay_cnt\(15) & ((\u_adc|delay_cnt[14]~53\) # (GND)))
-- \u_adc|delay_cnt[15]~55\ = CARRY((!\u_adc|delay_cnt[14]~53\) # (!\u_adc|delay_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|delay_cnt\(15),
	datad => VCC,
	cin => \u_adc|delay_cnt[14]~53\,
	combout => \u_adc|delay_cnt[15]~54_combout\,
	cout => \u_adc|delay_cnt[15]~55\);

-- Location: FF_X22_Y17_N7
\u_adc|delay_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[15]~54_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_adc|always1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(15));

-- Location: LCCOMB_X22_Y17_N8
\u_adc|delay_cnt[16]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|delay_cnt[16]~56_combout\ = (\u_adc|delay_cnt\(16) & (\u_adc|delay_cnt[15]~55\ $ (GND))) # (!\u_adc|delay_cnt\(16) & (!\u_adc|delay_cnt[15]~55\ & VCC))
-- \u_adc|delay_cnt[16]~57\ = CARRY((\u_adc|delay_cnt\(16) & !\u_adc|delay_cnt[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|delay_cnt\(16),
	datad => VCC,
	cin => \u_adc|delay_cnt[15]~55\,
	combout => \u_adc|delay_cnt[16]~56_combout\,
	cout => \u_adc|delay_cnt[16]~57\);

-- Location: FF_X22_Y17_N9
\u_adc|delay_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[16]~56_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_adc|always1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(16));

-- Location: LCCOMB_X22_Y17_N10
\u_adc|delay_cnt[17]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|delay_cnt[17]~58_combout\ = (\u_adc|delay_cnt\(17) & (!\u_adc|delay_cnt[16]~57\)) # (!\u_adc|delay_cnt\(17) & ((\u_adc|delay_cnt[16]~57\) # (GND)))
-- \u_adc|delay_cnt[17]~59\ = CARRY((!\u_adc|delay_cnt[16]~57\) # (!\u_adc|delay_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|delay_cnt\(17),
	datad => VCC,
	cin => \u_adc|delay_cnt[16]~57\,
	combout => \u_adc|delay_cnt[17]~58_combout\,
	cout => \u_adc|delay_cnt[17]~59\);

-- Location: FF_X22_Y17_N11
\u_adc|delay_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[17]~58_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_adc|always1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(17));

-- Location: LCCOMB_X22_Y17_N12
\u_adc|delay_cnt[18]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|delay_cnt[18]~60_combout\ = (\u_adc|delay_cnt\(18) & (\u_adc|delay_cnt[17]~59\ $ (GND))) # (!\u_adc|delay_cnt\(18) & (!\u_adc|delay_cnt[17]~59\ & VCC))
-- \u_adc|delay_cnt[18]~61\ = CARRY((\u_adc|delay_cnt\(18) & !\u_adc|delay_cnt[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|delay_cnt\(18),
	datad => VCC,
	cin => \u_adc|delay_cnt[17]~59\,
	combout => \u_adc|delay_cnt[18]~60_combout\,
	cout => \u_adc|delay_cnt[18]~61\);

-- Location: FF_X22_Y17_N13
\u_adc|delay_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[18]~60_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_adc|always1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(18));

-- Location: LCCOMB_X22_Y17_N14
\u_adc|delay_cnt[19]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|delay_cnt[19]~62_combout\ = (\u_adc|delay_cnt\(19) & (!\u_adc|delay_cnt[18]~61\)) # (!\u_adc|delay_cnt\(19) & ((\u_adc|delay_cnt[18]~61\) # (GND)))
-- \u_adc|delay_cnt[19]~63\ = CARRY((!\u_adc|delay_cnt[18]~61\) # (!\u_adc|delay_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|delay_cnt\(19),
	datad => VCC,
	cin => \u_adc|delay_cnt[18]~61\,
	combout => \u_adc|delay_cnt[19]~62_combout\,
	cout => \u_adc|delay_cnt[19]~63\);

-- Location: FF_X22_Y17_N15
\u_adc|delay_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[19]~62_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_adc|always1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(19));

-- Location: LCCOMB_X22_Y17_N16
\u_adc|delay_cnt[20]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|delay_cnt[20]~64_combout\ = (\u_adc|delay_cnt\(20) & (\u_adc|delay_cnt[19]~63\ $ (GND))) # (!\u_adc|delay_cnt\(20) & (!\u_adc|delay_cnt[19]~63\ & VCC))
-- \u_adc|delay_cnt[20]~65\ = CARRY((\u_adc|delay_cnt\(20) & !\u_adc|delay_cnt[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|delay_cnt\(20),
	datad => VCC,
	cin => \u_adc|delay_cnt[19]~63\,
	combout => \u_adc|delay_cnt[20]~64_combout\,
	cout => \u_adc|delay_cnt[20]~65\);

-- Location: FF_X22_Y17_N17
\u_adc|delay_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[20]~64_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_adc|always1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(20));

-- Location: LCCOMB_X22_Y17_N18
\u_adc|delay_cnt[21]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|delay_cnt[21]~66_combout\ = (\u_adc|delay_cnt\(21) & (!\u_adc|delay_cnt[20]~65\)) # (!\u_adc|delay_cnt\(21) & ((\u_adc|delay_cnt[20]~65\) # (GND)))
-- \u_adc|delay_cnt[21]~67\ = CARRY((!\u_adc|delay_cnt[20]~65\) # (!\u_adc|delay_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|delay_cnt\(21),
	datad => VCC,
	cin => \u_adc|delay_cnt[20]~65\,
	combout => \u_adc|delay_cnt[21]~66_combout\,
	cout => \u_adc|delay_cnt[21]~67\);

-- Location: FF_X22_Y17_N19
\u_adc|delay_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[21]~66_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_adc|always1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(21));

-- Location: LCCOMB_X22_Y17_N20
\u_adc|delay_cnt[22]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|delay_cnt[22]~68_combout\ = (\u_adc|delay_cnt\(22) & (\u_adc|delay_cnt[21]~67\ $ (GND))) # (!\u_adc|delay_cnt\(22) & (!\u_adc|delay_cnt[21]~67\ & VCC))
-- \u_adc|delay_cnt[22]~69\ = CARRY((\u_adc|delay_cnt\(22) & !\u_adc|delay_cnt[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|delay_cnt\(22),
	datad => VCC,
	cin => \u_adc|delay_cnt[21]~67\,
	combout => \u_adc|delay_cnt[22]~68_combout\,
	cout => \u_adc|delay_cnt[22]~69\);

-- Location: FF_X22_Y17_N21
\u_adc|delay_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[22]~68_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_adc|always1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(22));

-- Location: LCCOMB_X22_Y17_N22
\u_adc|delay_cnt[23]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|delay_cnt[23]~70_combout\ = \u_adc|delay_cnt\(23) $ (\u_adc|delay_cnt[22]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|delay_cnt\(23),
	cin => \u_adc|delay_cnt[22]~69\,
	combout => \u_adc|delay_cnt[23]~70_combout\);

-- Location: FF_X22_Y17_N23
\u_adc|delay_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[23]~70_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_adc|always1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(23));

-- Location: LCCOMB_X23_Y17_N0
\u_adc|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|LessThan0~0_combout\ = (\u_adc|delay_cnt\(20)) # ((\u_adc|delay_cnt\(22)) # ((\u_adc|delay_cnt\(19)) # (\u_adc|delay_cnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|delay_cnt\(20),
	datab => \u_adc|delay_cnt\(22),
	datac => \u_adc|delay_cnt\(19),
	datad => \u_adc|delay_cnt\(21),
	combout => \u_adc|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y17_N26
\u_adc|Selector13~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector13~3_combout\ = (!\u_adc|delay_cnt\(23) & (\u_adc|current_state.STATE_WAIT_CH1~q\ & !\u_adc|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|delay_cnt\(23),
	datac => \u_adc|current_state.STATE_WAIT_CH1~q\,
	datad => \u_adc|LessThan0~0_combout\,
	combout => \u_adc|Selector13~3_combout\);

-- Location: LCCOMB_X22_Y17_N24
\u_adc|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|LessThan0~1_combout\ = (\u_adc|delay_cnt\(15) & (\u_adc|delay_cnt\(16) & (\u_adc|delay_cnt\(17) & \u_adc|delay_cnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|delay_cnt\(15),
	datab => \u_adc|delay_cnt\(16),
	datac => \u_adc|delay_cnt\(17),
	datad => \u_adc|delay_cnt\(18),
	combout => \u_adc|LessThan0~1_combout\);

-- Location: LCCOMB_X22_Y18_N0
\u_adc|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|LessThan0~5_combout\ = (\u_adc|delay_cnt\(10)) # ((\u_adc|delay_cnt\(8) & ((\u_adc|delay_cnt\(7)) # (\u_adc|delay_cnt\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|delay_cnt\(7),
	datab => \u_adc|delay_cnt\(6),
	datac => \u_adc|delay_cnt\(10),
	datad => \u_adc|delay_cnt\(8),
	combout => \u_adc|LessThan0~5_combout\);

-- Location: LCCOMB_X22_Y17_N28
\u_adc|LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|LessThan0~6_combout\ = (\u_adc|delay_cnt\(11)) # ((\u_adc|delay_cnt\(12)) # ((\u_adc|delay_cnt\(9)) # (\u_adc|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|delay_cnt\(11),
	datab => \u_adc|delay_cnt\(12),
	datac => \u_adc|delay_cnt\(9),
	datad => \u_adc|LessThan0~5_combout\,
	combout => \u_adc|LessThan0~6_combout\);

-- Location: LCCOMB_X22_Y17_N26
\u_adc|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|LessThan0~7_combout\ = (\u_adc|LessThan0~1_combout\ & ((\u_adc|delay_cnt\(14)) # ((\u_adc|delay_cnt\(13) & \u_adc|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|LessThan0~1_combout\,
	datab => \u_adc|delay_cnt\(13),
	datac => \u_adc|delay_cnt\(14),
	datad => \u_adc|LessThan0~6_combout\,
	combout => \u_adc|LessThan0~7_combout\);

-- Location: LCCOMB_X23_Y18_N12
\u_adc|Selector13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector13~4_combout\ = (\u_adc|Selector13~2_combout\) # ((\u_adc|Selector13~3_combout\ & (!\u_adc|LessThan0~7_combout\ & !\u_adc|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector13~3_combout\,
	datab => \u_adc|Selector13~2_combout\,
	datac => \u_adc|LessThan0~7_combout\,
	datad => \u_adc|LessThan0~4_combout\,
	combout => \u_adc|Selector13~4_combout\);

-- Location: FF_X23_Y18_N13
\u_adc|current_state.STATE_WAIT_CH1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|Selector13~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|current_state.STATE_WAIT_CH1~q\);

-- Location: LCCOMB_X24_Y18_N4
\u_adc|always1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|always1~9_combout\ = (!\u_adc|current_state.STATE_WAIT_CH1~q\ & !\u_adc|current_state.STATE_WAIT_CH0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|current_state.STATE_WAIT_CH1~q\,
	datad => \u_adc|current_state.STATE_WAIT_CH0~q\,
	combout => \u_adc|always1~9_combout\);

-- Location: FF_X22_Y18_N9
\u_adc|delay_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[0]~24_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_adc|always1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(0));

-- Location: LCCOMB_X22_Y18_N10
\u_adc|delay_cnt[1]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|delay_cnt[1]~26_combout\ = (\u_adc|delay_cnt\(1) & (!\u_adc|delay_cnt[0]~25\)) # (!\u_adc|delay_cnt\(1) & ((\u_adc|delay_cnt[0]~25\) # (GND)))
-- \u_adc|delay_cnt[1]~27\ = CARRY((!\u_adc|delay_cnt[0]~25\) # (!\u_adc|delay_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|delay_cnt\(1),
	datad => VCC,
	cin => \u_adc|delay_cnt[0]~25\,
	combout => \u_adc|delay_cnt[1]~26_combout\,
	cout => \u_adc|delay_cnt[1]~27\);

-- Location: FF_X22_Y18_N11
\u_adc|delay_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[1]~26_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_adc|always1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(1));

-- Location: LCCOMB_X22_Y18_N12
\u_adc|delay_cnt[2]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|delay_cnt[2]~28_combout\ = (\u_adc|delay_cnt\(2) & (\u_adc|delay_cnt[1]~27\ $ (GND))) # (!\u_adc|delay_cnt\(2) & (!\u_adc|delay_cnt[1]~27\ & VCC))
-- \u_adc|delay_cnt[2]~29\ = CARRY((\u_adc|delay_cnt\(2) & !\u_adc|delay_cnt[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|delay_cnt\(2),
	datad => VCC,
	cin => \u_adc|delay_cnt[1]~27\,
	combout => \u_adc|delay_cnt[2]~28_combout\,
	cout => \u_adc|delay_cnt[2]~29\);

-- Location: FF_X22_Y18_N13
\u_adc|delay_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[2]~28_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_adc|always1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(2));

-- Location: LCCOMB_X22_Y18_N14
\u_adc|delay_cnt[3]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|delay_cnt[3]~30_combout\ = (\u_adc|delay_cnt\(3) & (!\u_adc|delay_cnt[2]~29\)) # (!\u_adc|delay_cnt\(3) & ((\u_adc|delay_cnt[2]~29\) # (GND)))
-- \u_adc|delay_cnt[3]~31\ = CARRY((!\u_adc|delay_cnt[2]~29\) # (!\u_adc|delay_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|delay_cnt\(3),
	datad => VCC,
	cin => \u_adc|delay_cnt[2]~29\,
	combout => \u_adc|delay_cnt[3]~30_combout\,
	cout => \u_adc|delay_cnt[3]~31\);

-- Location: FF_X22_Y18_N15
\u_adc|delay_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[3]~30_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_adc|always1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(3));

-- Location: LCCOMB_X22_Y18_N16
\u_adc|delay_cnt[4]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|delay_cnt[4]~32_combout\ = (\u_adc|delay_cnt\(4) & (\u_adc|delay_cnt[3]~31\ $ (GND))) # (!\u_adc|delay_cnt\(4) & (!\u_adc|delay_cnt[3]~31\ & VCC))
-- \u_adc|delay_cnt[4]~33\ = CARRY((\u_adc|delay_cnt\(4) & !\u_adc|delay_cnt[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|delay_cnt\(4),
	datad => VCC,
	cin => \u_adc|delay_cnt[3]~31\,
	combout => \u_adc|delay_cnt[4]~32_combout\,
	cout => \u_adc|delay_cnt[4]~33\);

-- Location: FF_X22_Y18_N17
\u_adc|delay_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[4]~32_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_adc|always1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(4));

-- Location: FF_X22_Y18_N19
\u_adc|delay_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[5]~34_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_adc|always1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(5));

-- Location: LCCOMB_X22_Y18_N4
\u_adc|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|LessThan0~3_combout\ = (\u_adc|delay_cnt\(1)) # ((\u_adc|delay_cnt\(3)) # ((\u_adc|delay_cnt\(0)) # (\u_adc|delay_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|delay_cnt\(1),
	datab => \u_adc|delay_cnt\(3),
	datac => \u_adc|delay_cnt\(0),
	datad => \u_adc|delay_cnt\(2),
	combout => \u_adc|LessThan0~3_combout\);

-- Location: LCCOMB_X22_Y17_N30
\u_adc|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|LessThan0~2_combout\ = (\u_adc|delay_cnt\(13) & (\u_adc|delay_cnt\(8) & \u_adc|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|delay_cnt\(13),
	datac => \u_adc|delay_cnt\(8),
	datad => \u_adc|LessThan0~1_combout\,
	combout => \u_adc|LessThan0~2_combout\);

-- Location: LCCOMB_X22_Y18_N6
\u_adc|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|LessThan0~4_combout\ = (\u_adc|delay_cnt\(5) & (\u_adc|LessThan0~2_combout\ & ((\u_adc|delay_cnt\(4)) # (\u_adc|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|delay_cnt\(5),
	datab => \u_adc|delay_cnt\(4),
	datac => \u_adc|LessThan0~3_combout\,
	datad => \u_adc|LessThan0~2_combout\,
	combout => \u_adc|LessThan0~4_combout\);

-- Location: LCCOMB_X22_Y18_N2
\u_adc|LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|LessThan0~8_combout\ = (\u_adc|LessThan0~4_combout\) # ((\u_adc|LessThan0~0_combout\) # ((\u_adc|delay_cnt\(23)) # (\u_adc|LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|LessThan0~4_combout\,
	datab => \u_adc|LessThan0~0_combout\,
	datac => \u_adc|delay_cnt\(23),
	datad => \u_adc|LessThan0~7_combout\,
	combout => \u_adc|LessThan0~8_combout\);

-- Location: LCCOMB_X23_Y18_N2
\u_adc|Selector10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector10~3_combout\ = (!\u_adc|Selector13~2_combout\ & ((\u_adc|Selector10~1_combout\) # ((\u_adc|Selector10~2_combout\ & !\u_adc|LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector10~1_combout\,
	datab => \u_adc|Selector10~2_combout\,
	datac => \u_adc|Selector13~2_combout\,
	datad => \u_adc|LessThan0~8_combout\,
	combout => \u_adc|Selector10~3_combout\);

-- Location: FF_X23_Y18_N3
\u_adc|current_state.STATE_WAIT_CH0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|Selector10~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|current_state.STATE_WAIT_CH0~q\);

-- Location: LCCOMB_X23_Y18_N10
\u_adc|WideOr0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|WideOr0~1_combout\ = (\u_adc|current_state.STATE_WAIT_CH0~q\ $ (\u_adc|Selector10~3_combout\)) # (!\u_adc|current_state.STATE_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|current_state.STATE_IDLE~q\,
	datac => \u_adc|current_state.STATE_WAIT_CH0~q\,
	datad => \u_adc|Selector10~3_combout\,
	combout => \u_adc|WideOr0~1_combout\);

-- Location: LCCOMB_X23_Y18_N4
\u_adc|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|WideOr0~0_combout\ = (\u_adc|Selector13~4_combout\ & ((\u_adc|current_state.STATE_READ_CH0~q\ $ (\u_adc|Selector11~2_combout\)) # (!\u_adc|current_state.STATE_WAIT_CH1~q\))) # (!\u_adc|Selector13~4_combout\ & 
-- ((\u_adc|current_state.STATE_WAIT_CH1~q\) # (\u_adc|current_state.STATE_READ_CH0~q\ $ (\u_adc|Selector11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector13~4_combout\,
	datab => \u_adc|current_state.STATE_READ_CH0~q\,
	datac => \u_adc|current_state.STATE_WAIT_CH1~q\,
	datad => \u_adc|Selector11~2_combout\,
	combout => \u_adc|WideOr0~0_combout\);

-- Location: LCCOMB_X23_Y18_N24
\u_adc|WideOr0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|WideOr0~2_combout\ = (\u_adc|WideOr0~1_combout\) # ((\u_adc|WideOr0~0_combout\) # (\u_adc|current_state.STATE_READ_CH1~q\ $ (\u_adc|Selector14~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|WideOr0~1_combout\,
	datab => \u_adc|current_state.STATE_READ_CH1~q\,
	datac => \u_adc|WideOr0~0_combout\,
	datad => \u_adc|Selector14~2_combout\,
	combout => \u_adc|WideOr0~2_combout\);

-- Location: LCCOMB_X23_Y18_N14
\u_adc|sub_step[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|sub_step[0]~2_combout\ = (\u_adc|always1~10_combout\) # ((\u_adc|WideOr0~2_combout\) # (!\u_adc|sub_step[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|always1~10_combout\,
	datac => \u_adc|sub_step[0]~1_combout\,
	datad => \u_adc|WideOr0~2_combout\,
	combout => \u_adc|sub_step[0]~2_combout\);

-- Location: FF_X23_Y18_N23
\u_adc|sub_step[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|sub_step~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|sub_step[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|sub_step\(2));

-- Location: LCCOMB_X22_Y19_N30
\u_adc|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Add1~0_combout\ = \u_adc|sub_step\(3) $ (((\u_adc|sub_step\(0) & (\u_adc|sub_step\(1) & \u_adc|sub_step\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(0),
	datab => \u_adc|sub_step\(3),
	datac => \u_adc|sub_step\(1),
	datad => \u_adc|sub_step\(2),
	combout => \u_adc|Add1~0_combout\);

-- Location: LCCOMB_X23_Y18_N30
\u_adc|sub_step~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|sub_step~4_combout\ = (\u_adc|Add1~0_combout\ & !\u_adc|WideOr0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_adc|Add1~0_combout\,
	datad => \u_adc|WideOr0~3_combout\,
	combout => \u_adc|sub_step~4_combout\);

-- Location: FF_X23_Y18_N31
\u_adc|sub_step[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|sub_step~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|sub_step[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|sub_step\(3));

-- Location: LCCOMB_X24_Y18_N8
\u_adc|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Equal1~0_combout\ = (\u_adc|sub_step\(1) & (!\u_adc|sub_step\(3) & (!\u_adc|sub_step\(0) & \u_adc|sub_step\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(1),
	datab => \u_adc|sub_step\(3),
	datac => \u_adc|sub_step\(0),
	datad => \u_adc|sub_step\(2),
	combout => \u_adc|Equal1~0_combout\);

-- Location: LCCOMB_X24_Y18_N22
\u_adc|Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector11~0_combout\ = (!\u_adc|Decoder0~1_combout\ & (((!\u_adc|current_state.STATE_WRITE_CH0~q\ & !\u_adc|current_state.STATE_WRITE_CH1~q\)) # (!\u_adc|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|current_state.STATE_WRITE_CH0~q\,
	datab => \u_adc|current_state.STATE_WRITE_CH1~q\,
	datac => \u_adc|Equal1~0_combout\,
	datad => \u_adc|Decoder0~1_combout\,
	combout => \u_adc|Selector11~0_combout\);

-- Location: LCCOMB_X24_Y18_N6
\u_adc|Selector11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector11~1_combout\ = (\u_adc|current_state.STATE_READ_CH0~q\ & (\u_adc|current_state.STATE_IDLE~q\ & ((\u_adc|Selector11~0_combout\) # (!\u_adc|always1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|current_state.STATE_READ_CH0~q\,
	datab => \u_adc|current_state.STATE_IDLE~q\,
	datac => \u_adc|Selector11~0_combout\,
	datad => \u_adc|always1~9_combout\,
	combout => \u_adc|Selector11~1_combout\);

-- Location: LCCOMB_X23_Y18_N16
\u_adc|Selector11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector11~2_combout\ = (\u_adc|LessThan0~8_combout\ & (!\u_adc|current_state.STATE_WAIT_CH1~q\ & ((\u_adc|Selector11~1_combout\) # (\u_adc|current_state.STATE_WAIT_CH0~q\)))) # (!\u_adc|LessThan0~8_combout\ & (\u_adc|Selector11~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector11~1_combout\,
	datab => \u_adc|current_state.STATE_WAIT_CH1~q\,
	datac => \u_adc|current_state.STATE_WAIT_CH0~q\,
	datad => \u_adc|LessThan0~8_combout\,
	combout => \u_adc|Selector11~2_combout\);

-- Location: FF_X23_Y18_N17
\u_adc|current_state.STATE_READ_CH0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|Selector11~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|current_state.STATE_READ_CH0~q\);

-- Location: LCCOMB_X24_Y18_N30
\u_adc|Selector12~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector12~3_combout\ = ((\u_adc|Decoder0~1_combout\ & \u_adc|current_state.STATE_READ_CH0~q\)) # (!\u_adc|current_state.STATE_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|Decoder0~1_combout\,
	datac => \u_adc|current_state.STATE_READ_CH0~q\,
	datad => \u_adc|current_state.STATE_IDLE~q\,
	combout => \u_adc|Selector12~3_combout\);

-- Location: LCCOMB_X24_Y18_N28
\u_adc|Selector12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector12~2_combout\ = ((\u_adc|Equal1~0_combout\ & ((\u_adc|current_state.STATE_WRITE_CH0~q\) # (\u_adc|current_state.STATE_WRITE_CH1~q\)))) # (!\u_adc|current_state.STATE_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|current_state.STATE_WRITE_CH0~q\,
	datab => \u_adc|current_state.STATE_WRITE_CH1~q\,
	datac => \u_adc|Equal1~0_combout\,
	datad => \u_adc|current_state.STATE_IDLE~q\,
	combout => \u_adc|Selector12~2_combout\);

-- Location: LCCOMB_X24_Y18_N20
\u_adc|Selector12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector12~4_combout\ = (\u_adc|Selector12~0_combout\ & ((\u_adc|current_state.STATE_WAIT_CH0~q\) # ((\u_adc|current_state.STATE_WAIT_CH1~q\) # (\u_adc|Selector12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|current_state.STATE_WAIT_CH0~q\,
	datab => \u_adc|current_state.STATE_WAIT_CH1~q\,
	datac => \u_adc|Selector12~0_combout\,
	datad => \u_adc|Selector12~2_combout\,
	combout => \u_adc|Selector12~4_combout\);

-- Location: LCCOMB_X23_Y18_N28
\u_adc|Selector12~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector12~5_combout\ = (\u_adc|Selector12~3_combout\) # ((\u_adc|Selector12~4_combout\ & ((\u_adc|Selector12~2_combout\) # (\u_adc|LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector12~3_combout\,
	datab => \u_adc|Selector12~2_combout\,
	datac => \u_adc|Selector12~4_combout\,
	datad => \u_adc|LessThan0~8_combout\,
	combout => \u_adc|Selector12~5_combout\);

-- Location: LCCOMB_X23_Y18_N6
\u_adc|Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector9~0_combout\ = (\u_adc|Selector12~1_combout\) # ((\u_adc|Selector12~5_combout\ & (!\u_adc|current_state.STATE_IDLE~q\)) # (!\u_adc|Selector12~5_combout\ & ((\u_adc|current_state.STATE_WRITE_CH0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector12~1_combout\,
	datab => \u_adc|current_state.STATE_IDLE~q\,
	datac => \u_adc|current_state.STATE_WRITE_CH0~q\,
	datad => \u_adc|Selector12~5_combout\,
	combout => \u_adc|Selector9~0_combout\);

-- Location: LCCOMB_X23_Y18_N18
\u_adc|WideOr0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|WideOr0~3_combout\ = (\u_adc|always1~10_combout\) # ((\u_adc|WideOr0~2_combout\) # (\u_adc|Selector9~0_combout\ $ (\u_adc|current_state.STATE_WRITE_CH0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector9~0_combout\,
	datab => \u_adc|current_state.STATE_WRITE_CH0~q\,
	datac => \u_adc|always1~10_combout\,
	datad => \u_adc|WideOr0~2_combout\,
	combout => \u_adc|WideOr0~3_combout\);

-- Location: LCCOMB_X23_Y18_N20
\u_adc|sub_step~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|sub_step~5_combout\ = (!\u_adc|sub_step\(0) & !\u_adc|WideOr0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_adc|sub_step\(0),
	datad => \u_adc|WideOr0~3_combout\,
	combout => \u_adc|sub_step~5_combout\);

-- Location: FF_X23_Y18_N21
\u_adc|sub_step[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|sub_step~5_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|sub_step[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|sub_step\(0));

-- Location: LCCOMB_X23_Y18_N0
\u_adc|sub_step~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|sub_step~3_combout\ = (!\u_adc|WideOr0~3_combout\ & (\u_adc|sub_step\(0) $ (\u_adc|sub_step\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(0),
	datac => \u_adc|sub_step\(1),
	datad => \u_adc|WideOr0~3_combout\,
	combout => \u_adc|sub_step~3_combout\);

-- Location: FF_X23_Y18_N1
\u_adc|sub_step[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|sub_step~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|sub_step[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|sub_step\(1));

-- Location: LCCOMB_X24_Y18_N16
\u_adc|Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Decoder0~1_combout\ = (!\u_adc|sub_step\(1) & (\u_adc|sub_step\(3) & (!\u_adc|sub_step\(0) & !\u_adc|sub_step\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(1),
	datab => \u_adc|sub_step\(3),
	datac => \u_adc|sub_step\(0),
	datad => \u_adc|sub_step\(2),
	combout => \u_adc|Decoder0~1_combout\);

-- Location: LCCOMB_X24_Y18_N26
\u_adc|Selector14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector14~2_combout\ = (\u_adc|current_state.STATE_READ_CH1~q\ & (((\u_adc|current_state.STATE_WAIT_CH1~q\ & \u_adc|LessThan0~8_combout\)) # (!\u_adc|Decoder0~1_combout\))) # (!\u_adc|current_state.STATE_READ_CH1~q\ & 
-- (((\u_adc|current_state.STATE_WAIT_CH1~q\ & \u_adc|LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|current_state.STATE_READ_CH1~q\,
	datab => \u_adc|Decoder0~1_combout\,
	datac => \u_adc|current_state.STATE_WAIT_CH1~q\,
	datad => \u_adc|LessThan0~8_combout\,
	combout => \u_adc|Selector14~2_combout\);

-- Location: FF_X24_Y18_N11
\u_adc|current_state.STATE_READ_CH1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_adc|Selector14~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|current_state.STATE_READ_CH1~q\);

-- Location: LCCOMB_X24_Y19_N30
\u_adc|Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector12~0_combout\ = (!\u_adc|current_state.STATE_READ_CH1~q\ & !\u_adc|current_state.STATE_READ_CH0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_adc|current_state.STATE_READ_CH1~q\,
	datad => \u_adc|current_state.STATE_READ_CH0~q\,
	combout => \u_adc|Selector12~0_combout\);

-- Location: LCCOMB_X24_Y19_N14
\u_adc|Selector22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector22~0_combout\ = (!\u_adc|sub_step\(2) & (\u_adc|Decoder0~0_combout\ & (!\u_adc|sub_step\(3) & !\u_adc|Selector20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(2),
	datab => \u_adc|Decoder0~0_combout\,
	datac => \u_adc|sub_step\(3),
	datad => \u_adc|Selector20~0_combout\,
	combout => \u_adc|Selector22~0_combout\);

-- Location: LCCOMB_X24_Y19_N12
\u_adc|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|WideOr4~0_combout\ = (\u_adc|sub_step\(3)) # ((\u_adc|sub_step\(2)) # (\u_adc|sub_step\(0) $ (\u_adc|sub_step\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(0),
	datab => \u_adc|sub_step\(3),
	datac => \u_adc|sub_step\(1),
	datad => \u_adc|sub_step\(2),
	combout => \u_adc|WideOr4~0_combout\);

-- Location: LCCOMB_X24_Y19_N8
\u_adc|Selector22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector22~1_combout\ = (!\u_adc|i2c_ready~combout\ & ((\u_adc|Selector22~0_combout\) # ((!\u_adc|Selector12~0_combout\ & !\u_adc|WideOr4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector12~0_combout\,
	datab => \u_adc|i2c_ready~combout\,
	datac => \u_adc|Selector22~0_combout\,
	datad => \u_adc|WideOr4~0_combout\,
	combout => \u_adc|Selector22~1_combout\);

-- Location: LCCOMB_X24_Y19_N26
\u_adc|Selector23~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector23~4_combout\ = (!\u_adc|i2c_busy_d~q\ & (!\u_adc|Selector12~0_combout\ & (\u_adc|WideOr5~0_combout\ & !\u_adc|u_i2c|busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|i2c_busy_d~q\,
	datab => \u_adc|Selector12~0_combout\,
	datac => \u_adc|WideOr5~0_combout\,
	datad => \u_adc|u_i2c|busy~q\,
	combout => \u_adc|Selector23~4_combout\);

-- Location: LCCOMB_X25_Y19_N12
\u_adc|u_i2c|state~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|state~31_combout\ = (!\u_adc|Selector22~1_combout\ & (!\u_adc|u_i2c|state.IDLE~q\ & (\u_adc|Selector23~4_combout\ & !\u_adc|Selector16~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector22~1_combout\,
	datab => \u_adc|u_i2c|state.IDLE~q\,
	datac => \u_adc|Selector23~4_combout\,
	datad => \u_adc|Selector16~2_combout\,
	combout => \u_adc|u_i2c|state~31_combout\);

-- Location: FF_X25_Y19_N13
\u_adc|u_i2c|state.READ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|state~31_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|u_i2c|ALT_INV_state~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|state.READ~q\);

-- Location: FF_X25_Y19_N21
\u_adc|u_i2c|state.WACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_adc|u_i2c|state.READ~q\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_adc|u_i2c|ALT_INV_state~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|state.WACK~q\);

-- Location: FF_X25_Y19_N7
\u_adc|u_i2c|state.RACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_adc|u_i2c|state.WRITE~q\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_adc|u_i2c|ALT_INV_state~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|state.RACK~q\);

-- Location: LCCOMB_X26_Y19_N12
\u_adc|u_i2c|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector0~0_combout\ = (!\u_adc|u_i2c|state.READ~q\ & (!\u_adc|u_i2c|state.WACK~q\ & (!\u_adc|u_i2c|state.RACK~q\ & !\u_adc|u_i2c|state.WRITE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|state.READ~q\,
	datab => \u_adc|u_i2c|state.WACK~q\,
	datac => \u_adc|u_i2c|state.RACK~q\,
	datad => \u_adc|u_i2c|state.WRITE~q\,
	combout => \u_adc|u_i2c|Selector0~0_combout\);

-- Location: LCCOMB_X25_Y19_N22
\u_adc|u_i2c|state~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|state~32_combout\ = (!\u_adc|u_i2c|state.IDLE~q\ & \u_adc|Selector22~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|u_i2c|state.IDLE~q\,
	datad => \u_adc|Selector22~1_combout\,
	combout => \u_adc|u_i2c|state~32_combout\);

-- Location: FF_X25_Y19_N23
\u_adc|u_i2c|state.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|state~32_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|u_i2c|ALT_INV_state~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|state.START~q\);

-- Location: LCCOMB_X26_Y19_N2
\u_adc|u_i2c|Selector1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector1~6_combout\ = (!\u_adc|u_i2c|sda_out~q\ & ((\u_adc|u_i2c|phase\(1)) # ((\u_adc|u_i2c|phase\(0) & !\u_adc|u_i2c|state.START~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|sda_out~q\,
	datab => \u_adc|u_i2c|phase\(0),
	datac => \u_adc|u_i2c|phase\(1),
	datad => \u_adc|u_i2c|state.START~q\,
	combout => \u_adc|u_i2c|Selector1~6_combout\);

-- Location: LCCOMB_X25_Y19_N4
\u_adc|u_i2c|state~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|state~25_combout\ = (!\u_adc|Selector22~1_combout\ & (!\u_adc|u_i2c|state.IDLE~q\ & (!\u_adc|Selector23~4_combout\ & !\u_adc|Selector16~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector22~1_combout\,
	datab => \u_adc|u_i2c|state.IDLE~q\,
	datac => \u_adc|Selector23~4_combout\,
	datad => \u_adc|Selector16~2_combout\,
	combout => \u_adc|u_i2c|state~25_combout\);

-- Location: FF_X25_Y19_N5
\u_adc|u_i2c|state.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|state~25_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|u_i2c|ALT_INV_state~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|state.STOP~q\);

-- Location: LCCOMB_X26_Y19_N8
\u_adc|u_i2c|Selector1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector1~7_combout\ = (!\u_adc|u_i2c|state.START~q\ & (((!\u_adc|u_i2c|phase\(0) & \u_adc|u_i2c|phase\(1))) # (!\u_adc|u_i2c|state.STOP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|phase\(0),
	datab => \u_adc|u_i2c|phase\(1),
	datac => \u_adc|u_i2c|state.STOP~q\,
	datad => \u_adc|u_i2c|state.START~q\,
	combout => \u_adc|u_i2c|Selector1~7_combout\);

-- Location: LCCOMB_X26_Y19_N30
\u_adc|u_i2c|Selector1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector1~4_combout\ = ((!\u_adc|u_i2c|state.READ~q\ & (!\u_adc|u_i2c|state.RACK~q\ & !\u_adc|u_i2c|phase\(1)))) # (!\u_adc|u_i2c|sda_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|state.READ~q\,
	datab => \u_adc|u_i2c|state.RACK~q\,
	datac => \u_adc|u_i2c|phase\(1),
	datad => \u_adc|u_i2c|sda_out~q\,
	combout => \u_adc|u_i2c|Selector1~4_combout\);

-- Location: LCCOMB_X22_Y19_N16
\u_adc|Selector19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector19~0_combout\ = (!\u_adc|sub_step\(2) & ((\u_adc|current_state.STATE_WRITE_CH1~q\) # ((!\u_adc|sub_step\(1) & \u_adc|current_state.STATE_WRITE_CH0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(1),
	datab => \u_adc|current_state.STATE_WRITE_CH0~q\,
	datac => \u_adc|sub_step\(2),
	datad => \u_adc|current_state.STATE_WRITE_CH1~q\,
	combout => \u_adc|Selector19~0_combout\);

-- Location: LCCOMB_X22_Y19_N22
\u_adc|Selector19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector19~1_combout\ = (\u_adc|Selector19~0_combout\ & (!\u_adc|sub_step\(3) & \u_adc|sub_step\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|Selector19~0_combout\,
	datac => \u_adc|sub_step\(3),
	datad => \u_adc|sub_step\(0),
	combout => \u_adc|Selector19~1_combout\);

-- Location: LCCOMB_X22_Y19_N12
\u_adc|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|WideOr3~0_combout\ = (!\u_adc|sub_step\(1) & (!\u_adc|sub_step\(3) & (\u_adc|sub_step\(2) $ (\u_adc|sub_step\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(2),
	datab => \u_adc|sub_step\(1),
	datac => \u_adc|sub_step\(3),
	datad => \u_adc|sub_step\(0),
	combout => \u_adc|WideOr3~0_combout\);

-- Location: LCCOMB_X23_Y19_N20
\u_adc|Selector19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector19~2_combout\ = (!\u_adc|i2c_ready~combout\ & ((\u_adc|Selector19~1_combout\) # ((!\u_adc|Selector12~0_combout\ & \u_adc|WideOr3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|i2c_ready~combout\,
	datab => \u_adc|Selector19~1_combout\,
	datac => \u_adc|Selector12~0_combout\,
	datad => \u_adc|WideOr3~0_combout\,
	combout => \u_adc|Selector19~2_combout\);

-- Location: LCCOMB_X23_Y19_N28
\u_adc|u_i2c|shift_reg[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|shift_reg[0]~2_combout\ = (\rst_n~input_o\ & (\u_adc|Selector16~2_combout\ & (\u_adc|u_i2c|i2c_tick~q\ & \u_adc|u_i2c|shift_reg[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~input_o\,
	datab => \u_adc|Selector16~2_combout\,
	datac => \u_adc|u_i2c|i2c_tick~q\,
	datad => \u_adc|u_i2c|shift_reg[0]~1_combout\,
	combout => \u_adc|u_i2c|shift_reg[0]~2_combout\);

-- Location: FF_X23_Y19_N21
\u_adc|u_i2c|shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|Selector19~2_combout\,
	ena => \u_adc|u_i2c|shift_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|shift_reg\(4));

-- Location: LCCOMB_X23_Y19_N2
\u_adc|Selector18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector18~1_combout\ = (\u_adc|sub_step\(1) & (\u_adc|sub_step\(0) & (\u_adc|Selector18~0_combout\ & !\u_adc|sub_step\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(1),
	datab => \u_adc|sub_step\(0),
	datac => \u_adc|Selector18~0_combout\,
	datad => \u_adc|sub_step\(2),
	combout => \u_adc|Selector18~1_combout\);

-- Location: FF_X23_Y19_N3
\u_adc|u_i2c|shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|Selector18~1_combout\,
	ena => \u_adc|u_i2c|shift_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|shift_reg\(6));

-- Location: LCCOMB_X22_Y19_N14
\u_adc|Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector17~0_combout\ = (!\u_adc|sub_step\(3) & ((\u_adc|current_state.STATE_WRITE_CH0~q\) # (\u_adc|current_state.STATE_WRITE_CH1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|sub_step\(3),
	datac => \u_adc|current_state.STATE_WRITE_CH0~q\,
	datad => \u_adc|current_state.STATE_WRITE_CH1~q\,
	combout => \u_adc|Selector17~0_combout\);

-- Location: LCCOMB_X22_Y19_N24
\u_adc|Selector17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector17~1_combout\ = (!\u_adc|sub_step\(1) & (\u_adc|Selector17~0_combout\ & (\u_adc|sub_step\(2) $ (\u_adc|sub_step\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(2),
	datab => \u_adc|sub_step\(1),
	datac => \u_adc|Selector17~0_combout\,
	datad => \u_adc|sub_step\(0),
	combout => \u_adc|Selector17~1_combout\);

-- Location: LCCOMB_X23_Y19_N4
\u_adc|Selector17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector17~2_combout\ = (!\u_adc|i2c_ready~combout\ & ((\u_adc|Selector17~1_combout\) # ((!\u_adc|Selector12~0_combout\ & \u_adc|WideOr3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector12~0_combout\,
	datab => \u_adc|Selector17~1_combout\,
	datac => \u_adc|i2c_ready~combout\,
	datad => \u_adc|WideOr3~0_combout\,
	combout => \u_adc|Selector17~2_combout\);

-- Location: FF_X23_Y19_N5
\u_adc|u_i2c|shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|Selector17~2_combout\,
	ena => \u_adc|u_i2c|shift_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|shift_reg\(7));

-- Location: LCCOMB_X23_Y19_N26
\u_adc|u_i2c|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector1~0_combout\ = (\u_adc|u_i2c|bit_cnt\(1) & (((\u_adc|u_i2c|bit_cnt\(0))))) # (!\u_adc|u_i2c|bit_cnt\(1) & ((\u_adc|u_i2c|bit_cnt\(0) & (\u_adc|u_i2c|shift_reg\(6))) # (!\u_adc|u_i2c|bit_cnt\(0) & ((\u_adc|u_i2c|shift_reg\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|bit_cnt\(1),
	datab => \u_adc|u_i2c|shift_reg\(6),
	datac => \u_adc|u_i2c|shift_reg\(7),
	datad => \u_adc|u_i2c|bit_cnt\(0),
	combout => \u_adc|u_i2c|Selector1~0_combout\);

-- Location: LCCOMB_X23_Y19_N12
\u_adc|u_i2c|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector1~1_combout\ = (\u_adc|u_i2c|Selector1~0_combout\ & (!\u_adc|u_i2c|bit_cnt\(2) & ((\u_adc|u_i2c|shift_reg\(4)) # (!\u_adc|u_i2c|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|bit_cnt\(1),
	datab => \u_adc|u_i2c|shift_reg\(4),
	datac => \u_adc|u_i2c|Selector1~0_combout\,
	datad => \u_adc|u_i2c|bit_cnt\(2),
	combout => \u_adc|u_i2c|Selector1~1_combout\);

-- Location: LCCOMB_X22_Y19_N2
\u_adc|Selector21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector21~1_combout\ = (!\u_adc|sub_step\(2) & (\u_adc|sub_step\(1) & ((\u_adc|current_state.STATE_WRITE_CH0~q\) # (\u_adc|current_state.STATE_WRITE_CH1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(2),
	datab => \u_adc|current_state.STATE_WRITE_CH0~q\,
	datac => \u_adc|sub_step\(1),
	datad => \u_adc|current_state.STATE_WRITE_CH1~q\,
	combout => \u_adc|Selector21~1_combout\);

-- Location: LCCOMB_X23_Y19_N18
\u_adc|Selector21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector21~0_combout\ = (\u_adc|Decoder0~0_combout\ & (\u_adc|sub_step\(2) & ((!\u_adc|Selector12~0_combout\) # (!\u_adc|Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Decoder0~0_combout\,
	datab => \u_adc|Selector20~0_combout\,
	datac => \u_adc|Selector12~0_combout\,
	datad => \u_adc|sub_step\(2),
	combout => \u_adc|Selector21~0_combout\);

-- Location: LCCOMB_X23_Y19_N10
\u_adc|Selector21~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector21~2_combout\ = (!\u_adc|sub_step\(3) & (!\u_adc|i2c_ready~combout\ & ((\u_adc|Selector21~1_combout\) # (\u_adc|Selector21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector21~1_combout\,
	datab => \u_adc|sub_step\(3),
	datac => \u_adc|i2c_ready~combout\,
	datad => \u_adc|Selector21~0_combout\,
	combout => \u_adc|Selector21~2_combout\);

-- Location: FF_X23_Y19_N11
\u_adc|u_i2c|shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|Selector21~2_combout\,
	ena => \u_adc|u_i2c|shift_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|shift_reg\(0));

-- Location: LCCOMB_X23_Y19_N8
\u_adc|Selector20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector20~1_combout\ = (\u_adc|Selector18~0_combout\ & ((\u_adc|sub_step\(1) & (\u_adc|sub_step\(0) & !\u_adc|sub_step\(2))) # (!\u_adc|sub_step\(1) & (!\u_adc|sub_step\(0) & \u_adc|sub_step\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(1),
	datab => \u_adc|sub_step\(0),
	datac => \u_adc|Selector18~0_combout\,
	datad => \u_adc|sub_step\(2),
	combout => \u_adc|Selector20~1_combout\);

-- Location: FF_X23_Y19_N9
\u_adc|u_i2c|shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|Selector20~1_combout\,
	ena => \u_adc|u_i2c|shift_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|shift_reg\(1));

-- Location: LCCOMB_X23_Y19_N22
\u_adc|u_i2c|Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector1~2_combout\ = (\u_adc|u_i2c|bit_cnt\(2) & ((\u_adc|u_i2c|bit_cnt\(0) & (\u_adc|u_i2c|shift_reg\(0))) # (!\u_adc|u_i2c|bit_cnt\(0) & ((\u_adc|u_i2c|shift_reg\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|shift_reg\(0),
	datab => \u_adc|u_i2c|bit_cnt\(2),
	datac => \u_adc|u_i2c|shift_reg\(1),
	datad => \u_adc|u_i2c|bit_cnt\(0),
	combout => \u_adc|u_i2c|Selector1~2_combout\);

-- Location: LCCOMB_X25_Y19_N18
\u_adc|u_i2c|Selector1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector1~3_combout\ = ((\u_adc|u_i2c|Selector1~1_combout\) # ((\u_adc|u_i2c|bit_cnt\(1) & \u_adc|u_i2c|Selector1~2_combout\))) # (!\u_adc|u_i2c|state.WRITE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|bit_cnt\(1),
	datab => \u_adc|u_i2c|state.WRITE~q\,
	datac => \u_adc|u_i2c|Selector1~1_combout\,
	datad => \u_adc|u_i2c|Selector1~2_combout\,
	combout => \u_adc|u_i2c|Selector1~3_combout\);

-- Location: LCCOMB_X26_Y19_N0
\u_adc|u_i2c|Selector1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector1~5_combout\ = (\u_adc|u_i2c|Selector1~4_combout\ & (!\u_adc|u_i2c|state.STOP~q\ & (!\u_adc|u_i2c|phase\(0) & \u_adc|u_i2c|Selector1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|Selector1~4_combout\,
	datab => \u_adc|u_i2c|state.STOP~q\,
	datac => \u_adc|u_i2c|phase\(0),
	datad => \u_adc|u_i2c|Selector1~3_combout\,
	combout => \u_adc|u_i2c|Selector1~5_combout\);

-- Location: LCCOMB_X26_Y19_N6
\u_adc|u_i2c|Selector1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector1~8_combout\ = (!\u_adc|u_i2c|Selector1~6_combout\ & (!\u_adc|u_i2c|Selector1~5_combout\ & ((!\u_adc|u_i2c|Selector1~7_combout\) # (!\u_adc|u_i2c|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|Selector0~0_combout\,
	datab => \u_adc|u_i2c|Selector1~6_combout\,
	datac => \u_adc|u_i2c|Selector1~7_combout\,
	datad => \u_adc|u_i2c|Selector1~5_combout\,
	combout => \u_adc|u_i2c|Selector1~8_combout\);

-- Location: FF_X26_Y19_N7
\u_adc|u_i2c|sda_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|Selector1~8_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|u_i2c|i2c_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|sda_out~q\);

-- Location: LCCOMB_X26_Y19_N22
\u_adc|u_i2c|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector2~0_combout\ = (!\u_adc|u_i2c|state.WRITE~q\ & (!\u_adc|u_i2c|state.WACK~q\ & (!\u_adc|u_i2c|state.STOP~q\ & !\u_adc|u_i2c|state.START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|state.WRITE~q\,
	datab => \u_adc|u_i2c|state.WACK~q\,
	datac => \u_adc|u_i2c|state.STOP~q\,
	datad => \u_adc|u_i2c|state.START~q\,
	combout => \u_adc|u_i2c|Selector2~0_combout\);

-- Location: LCCOMB_X26_Y19_N28
\u_adc|u_i2c|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector2~1_combout\ = (\u_adc|u_i2c|Selector2~0_combout\ & (!\u_adc|u_i2c|sda_oe~q\ & ((\u_adc|u_i2c|phase\(1)) # (\u_adc|u_i2c|phase\(0))))) # (!\u_adc|u_i2c|Selector2~0_combout\ & ((\u_adc|u_i2c|phase\(1)) # ((\u_adc|u_i2c|phase\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|Selector2~0_combout\,
	datab => \u_adc|u_i2c|phase\(1),
	datac => \u_adc|u_i2c|phase\(0),
	datad => \u_adc|u_i2c|sda_oe~q\,
	combout => \u_adc|u_i2c|Selector2~1_combout\);

-- Location: LCCOMB_X26_Y19_N16
\u_adc|u_i2c|Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector2~2_combout\ = (\u_adc|u_i2c|Selector2~1_combout\ & (((\u_adc|u_i2c|sda_oe~q\)))) # (!\u_adc|u_i2c|Selector2~1_combout\ & ((\u_adc|u_i2c|state.READ~q\) # ((\u_adc|u_i2c|state.RACK~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|state.READ~q\,
	datab => \u_adc|u_i2c|state.RACK~q\,
	datac => \u_adc|u_i2c|sda_oe~q\,
	datad => \u_adc|u_i2c|Selector2~1_combout\,
	combout => \u_adc|u_i2c|Selector2~2_combout\);

-- Location: FF_X26_Y19_N17
\u_adc|u_i2c|sda_oe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|Selector2~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|u_i2c|i2c_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|sda_oe~q\);

-- Location: LCCOMB_X26_Y19_N26
\u_adc|u_i2c|Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector0~2_combout\ = (\u_adc|u_i2c|scl~q\ & (\u_adc|u_i2c|state.START~q\ & ((\u_adc|u_i2c|phase\(0)) # (\u_adc|u_i2c|phase\(1))))) # (!\u_adc|u_i2c|scl~q\ & (\u_adc|u_i2c|phase\(0) & (\u_adc|u_i2c|phase\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|scl~q\,
	datab => \u_adc|u_i2c|phase\(0),
	datac => \u_adc|u_i2c|phase\(1),
	datad => \u_adc|u_i2c|state.START~q\,
	combout => \u_adc|u_i2c|Selector0~2_combout\);

-- Location: LCCOMB_X26_Y19_N20
\u_adc|u_i2c|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector0~1_combout\ = (\u_adc|u_i2c|phase\(1) & ((\u_adc|u_i2c|state.START~q\) # ((!\u_adc|u_i2c|scl~q\ & !\u_adc|u_i2c|phase\(0))))) # (!\u_adc|u_i2c|phase\(1) & (((\u_adc|u_i2c|phase\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|scl~q\,
	datab => \u_adc|u_i2c|phase\(0),
	datac => \u_adc|u_i2c|phase\(1),
	datad => \u_adc|u_i2c|state.START~q\,
	combout => \u_adc|u_i2c|Selector0~1_combout\);

-- Location: LCCOMB_X26_Y19_N10
\u_adc|u_i2c|Selector0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector0~3_combout\ = (\u_adc|u_i2c|Selector0~1_combout\ & (\u_adc|u_i2c|Selector0~2_combout\)) # (!\u_adc|u_i2c|Selector0~1_combout\ & (((!\u_adc|u_i2c|Selector0~2_combout\ & \u_adc|u_i2c|state.STOP~q\)) # 
-- (!\u_adc|u_i2c|Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|Selector0~2_combout\,
	datab => \u_adc|u_i2c|Selector0~1_combout\,
	datac => \u_adc|u_i2c|state.STOP~q\,
	datad => \u_adc|u_i2c|Selector0~0_combout\,
	combout => \u_adc|u_i2c|Selector0~3_combout\);

-- Location: FF_X26_Y19_N11
\u_adc|u_i2c|scl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|Selector0~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|u_i2c|i2c_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|scl~q\);

-- Location: LCCOMB_X24_Y21_N10
\u_adc|u_i2c|Equal4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Equal4~1_combout\ = (\u_adc|u_i2c|bit_cnt\(0) & (\u_adc|u_i2c|bit_cnt\(2) & \u_adc|u_i2c|bit_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|bit_cnt\(0),
	datab => \u_adc|u_i2c|bit_cnt\(2),
	datad => \u_adc|u_i2c|bit_cnt\(1),
	combout => \u_adc|u_i2c|Equal4~1_combout\);

-- Location: LCCOMB_X25_Y19_N26
\u_adc|u_i2c|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Decoder0~0_combout\ = (!\u_adc|u_i2c|phase\(0) & \u_adc|u_i2c|phase\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_adc|u_i2c|phase\(0),
	datad => \u_adc|u_i2c|phase\(1),
	combout => \u_adc|u_i2c|Decoder0~0_combout\);

-- Location: LCCOMB_X25_Y19_N0
\u_adc|u_i2c|Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Decoder0~1_combout\ = (\u_adc|u_i2c|state.READ~q\ & (!\u_adc|u_i2c|bit_cnt\(3) & (\u_adc|u_i2c|Decoder0~0_combout\ & \u_adc|u_i2c|i2c_tick~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|state.READ~q\,
	datab => \u_adc|u_i2c|bit_cnt\(3),
	datac => \u_adc|u_i2c|Decoder0~0_combout\,
	datad => \u_adc|u_i2c|i2c_tick~q\,
	combout => \u_adc|u_i2c|Decoder0~1_combout\);

-- Location: IOIBUF_X34_Y19_N15
\j10_sda~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_j10_sda,
	o => \j10_sda~input_o\);

-- Location: LCCOMB_X24_Y21_N14
\u_adc|u_i2c|data_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|data_out[0]~0_combout\ = (\u_adc|u_i2c|Equal4~1_combout\ & ((\u_adc|u_i2c|Decoder0~1_combout\ & ((\j10_sda~input_o\))) # (!\u_adc|u_i2c|Decoder0~1_combout\ & (\u_adc|u_i2c|data_out\(0))))) # (!\u_adc|u_i2c|Equal4~1_combout\ & 
-- (((\u_adc|u_i2c|data_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|Equal4~1_combout\,
	datab => \u_adc|u_i2c|Decoder0~1_combout\,
	datac => \u_adc|u_i2c|data_out\(0),
	datad => \j10_sda~input_o\,
	combout => \u_adc|u_i2c|data_out[0]~0_combout\);

-- Location: FF_X24_Y21_N15
\u_adc|u_i2c|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|data_out[0]~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|data_out\(0));

-- Location: LCCOMB_X25_Y21_N0
\u_adc|joystick_x[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_x[0]~0_combout\ = !\u_adc|u_i2c|data_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|u_i2c|data_out\(0),
	combout => \u_adc|joystick_x[0]~0_combout\);

-- Location: LCCOMB_X24_Y21_N4
\u_adc|always1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|always1~7_combout\ = (!\u_adc|u_i2c|busy~q\ & (\u_adc|current_state.STATE_READ_CH0~q\ & (\u_adc|i2c_busy_d~q\ & \u_adc|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|busy~q\,
	datab => \u_adc|current_state.STATE_READ_CH0~q\,
	datac => \u_adc|i2c_busy_d~q\,
	datad => \u_adc|Equal1~0_combout\,
	combout => \u_adc|always1~7_combout\);

-- Location: FF_X25_Y21_N1
\u_adc|joystick_x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_x[0]~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_x\(0));

-- Location: LCCOMB_X24_Y20_N4
\u_adc|u_i2c|Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Decoder0~2_combout\ = (!\u_adc|u_i2c|bit_cnt\(0) & (\u_adc|u_i2c|bit_cnt\(2) & \u_adc|u_i2c|Decoder0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|bit_cnt\(0),
	datac => \u_adc|u_i2c|bit_cnt\(2),
	datad => \u_adc|u_i2c|Decoder0~1_combout\,
	combout => \u_adc|u_i2c|Decoder0~2_combout\);

-- Location: LCCOMB_X23_Y20_N0
\u_adc|u_i2c|data_out[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|data_out[1]~1_combout\ = (\u_adc|u_i2c|bit_cnt\(1) & ((\u_adc|u_i2c|Decoder0~2_combout\ & (\j10_sda~input_o\)) # (!\u_adc|u_i2c|Decoder0~2_combout\ & ((\u_adc|u_i2c|data_out\(1)))))) # (!\u_adc|u_i2c|bit_cnt\(1) & 
-- (((\u_adc|u_i2c|data_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|bit_cnt\(1),
	datab => \j10_sda~input_o\,
	datac => \u_adc|u_i2c|data_out\(1),
	datad => \u_adc|u_i2c|Decoder0~2_combout\,
	combout => \u_adc|u_i2c|data_out[1]~1_combout\);

-- Location: FF_X23_Y20_N1
\u_adc|u_i2c|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|data_out[1]~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|data_out\(1));

-- Location: LCCOMB_X23_Y21_N20
\u_adc|joystick_x[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_x[1]~1_combout\ = !\u_adc|u_i2c|data_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|u_i2c|data_out\(1),
	combout => \u_adc|joystick_x[1]~1_combout\);

-- Location: FF_X23_Y21_N21
\u_adc|joystick_x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_x[1]~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_x\(1));

-- Location: LCCOMB_X24_Y21_N0
\u_adc|u_i2c|Decoder0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Decoder0~3_combout\ = (!\u_adc|u_i2c|bit_cnt\(1) & (\u_adc|u_i2c|Decoder0~1_combout\ & \u_adc|u_i2c|bit_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|u_i2c|bit_cnt\(1),
	datac => \u_adc|u_i2c|Decoder0~1_combout\,
	datad => \u_adc|u_i2c|bit_cnt\(0),
	combout => \u_adc|u_i2c|Decoder0~3_combout\);

-- Location: LCCOMB_X24_Y21_N24
\u_adc|u_i2c|data_out[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|data_out[2]~2_combout\ = (\u_adc|u_i2c|bit_cnt\(2) & ((\u_adc|u_i2c|Decoder0~3_combout\ & (\j10_sda~input_o\)) # (!\u_adc|u_i2c|Decoder0~3_combout\ & ((\u_adc|u_i2c|data_out\(2)))))) # (!\u_adc|u_i2c|bit_cnt\(2) & 
-- (((\u_adc|u_i2c|data_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j10_sda~input_o\,
	datab => \u_adc|u_i2c|bit_cnt\(2),
	datac => \u_adc|u_i2c|data_out\(2),
	datad => \u_adc|u_i2c|Decoder0~3_combout\,
	combout => \u_adc|u_i2c|data_out[2]~2_combout\);

-- Location: FF_X24_Y21_N25
\u_adc|u_i2c|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|data_out[2]~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|data_out\(2));

-- Location: LCCOMB_X23_Y21_N10
\u_adc|joystick_x[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_x[2]~2_combout\ = !\u_adc|u_i2c|data_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_adc|u_i2c|data_out\(2),
	combout => \u_adc|joystick_x[2]~2_combout\);

-- Location: FF_X23_Y21_N11
\u_adc|joystick_x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_x[2]~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_x\(2));

-- Location: LCCOMB_X23_Y20_N2
\u_adc|u_i2c|data_out[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|data_out[3]~3_combout\ = (\u_adc|u_i2c|bit_cnt\(1) & (((\u_adc|u_i2c|data_out\(3))))) # (!\u_adc|u_i2c|bit_cnt\(1) & ((\u_adc|u_i2c|Decoder0~2_combout\ & (\j10_sda~input_o\)) # (!\u_adc|u_i2c|Decoder0~2_combout\ & 
-- ((\u_adc|u_i2c|data_out\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|bit_cnt\(1),
	datab => \j10_sda~input_o\,
	datac => \u_adc|u_i2c|data_out\(3),
	datad => \u_adc|u_i2c|Decoder0~2_combout\,
	combout => \u_adc|u_i2c|data_out[3]~3_combout\);

-- Location: FF_X23_Y20_N3
\u_adc|u_i2c|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|data_out[3]~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|data_out\(3));

-- Location: LCCOMB_X23_Y21_N0
\u_adc|joystick_x[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_x[3]~3_combout\ = !\u_adc|u_i2c|data_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|u_i2c|data_out\(3),
	combout => \u_adc|joystick_x[3]~3_combout\);

-- Location: FF_X23_Y21_N1
\u_adc|joystick_x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_x[3]~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_x\(3));

-- Location: LCCOMB_X25_Y21_N2
\u_adc|u_i2c|Decoder0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Decoder0~4_combout\ = (\u_adc|u_i2c|bit_cnt\(1) & (!\u_adc|u_i2c|bit_cnt\(2) & \u_adc|u_i2c|bit_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|bit_cnt\(1),
	datac => \u_adc|u_i2c|bit_cnt\(2),
	datad => \u_adc|u_i2c|bit_cnt\(0),
	combout => \u_adc|u_i2c|Decoder0~4_combout\);

-- Location: LCCOMB_X24_Y21_N16
\u_adc|u_i2c|data_out[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|data_out[4]~4_combout\ = (\u_adc|u_i2c|Decoder0~1_combout\ & ((\u_adc|u_i2c|Decoder0~4_combout\ & (\j10_sda~input_o\)) # (!\u_adc|u_i2c|Decoder0~4_combout\ & ((\u_adc|u_i2c|data_out\(4)))))) # (!\u_adc|u_i2c|Decoder0~1_combout\ & 
-- (((\u_adc|u_i2c|data_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j10_sda~input_o\,
	datab => \u_adc|u_i2c|Decoder0~1_combout\,
	datac => \u_adc|u_i2c|data_out\(4),
	datad => \u_adc|u_i2c|Decoder0~4_combout\,
	combout => \u_adc|u_i2c|data_out[4]~4_combout\);

-- Location: FF_X24_Y21_N17
\u_adc|u_i2c|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|data_out[4]~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|data_out\(4));

-- Location: LCCOMB_X25_Y21_N22
\u_adc|joystick_x[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_x[4]~4_combout\ = !\u_adc|u_i2c|data_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_adc|u_i2c|data_out\(4),
	combout => \u_adc|joystick_x[4]~4_combout\);

-- Location: FF_X25_Y21_N23
\u_adc|joystick_x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_x[4]~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_x\(4));

-- Location: LCCOMB_X24_Y21_N22
\u_adc|u_i2c|Decoder0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Decoder0~5_combout\ = (!\u_adc|u_i2c|bit_cnt\(2) & (\u_adc|u_i2c|Decoder0~1_combout\ & !\u_adc|u_i2c|bit_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|u_i2c|bit_cnt\(2),
	datac => \u_adc|u_i2c|Decoder0~1_combout\,
	datad => \u_adc|u_i2c|bit_cnt\(0),
	combout => \u_adc|u_i2c|Decoder0~5_combout\);

-- Location: LCCOMB_X24_Y21_N28
\u_adc|u_i2c|data_out[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|data_out[5]~5_combout\ = (\u_adc|u_i2c|Decoder0~5_combout\ & ((\u_adc|u_i2c|bit_cnt\(1) & ((\j10_sda~input_o\))) # (!\u_adc|u_i2c|bit_cnt\(1) & (\u_adc|u_i2c|data_out\(5))))) # (!\u_adc|u_i2c|Decoder0~5_combout\ & 
-- (((\u_adc|u_i2c|data_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|Decoder0~5_combout\,
	datab => \u_adc|u_i2c|bit_cnt\(1),
	datac => \u_adc|u_i2c|data_out\(5),
	datad => \j10_sda~input_o\,
	combout => \u_adc|u_i2c|data_out[5]~5_combout\);

-- Location: FF_X24_Y21_N29
\u_adc|u_i2c|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|data_out[5]~5_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|data_out\(5));

-- Location: LCCOMB_X25_Y21_N16
\u_adc|joystick_x[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_x[5]~5_combout\ = !\u_adc|u_i2c|data_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|u_i2c|data_out\(5),
	combout => \u_adc|joystick_x[5]~5_combout\);

-- Location: FF_X25_Y21_N17
\u_adc|joystick_x[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_x[5]~5_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_x\(5));

-- Location: LCCOMB_X24_Y21_N2
\u_adc|u_i2c|data_out[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|data_out[6]~6_combout\ = (\u_adc|u_i2c|bit_cnt\(2) & (((\u_adc|u_i2c|data_out\(6))))) # (!\u_adc|u_i2c|bit_cnt\(2) & ((\u_adc|u_i2c|Decoder0~3_combout\ & (\j10_sda~input_o\)) # (!\u_adc|u_i2c|Decoder0~3_combout\ & 
-- ((\u_adc|u_i2c|data_out\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j10_sda~input_o\,
	datab => \u_adc|u_i2c|bit_cnt\(2),
	datac => \u_adc|u_i2c|data_out\(6),
	datad => \u_adc|u_i2c|Decoder0~3_combout\,
	combout => \u_adc|u_i2c|data_out[6]~6_combout\);

-- Location: FF_X24_Y21_N3
\u_adc|u_i2c|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|data_out[6]~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|data_out\(6));

-- Location: LCCOMB_X25_Y21_N26
\u_adc|joystick_x[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_x[6]~6_combout\ = !\u_adc|u_i2c|data_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|u_i2c|data_out\(6),
	combout => \u_adc|joystick_x[6]~6_combout\);

-- Location: FF_X25_Y21_N27
\u_adc|joystick_x[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_x[6]~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_x\(6));

-- Location: LCCOMB_X24_Y21_N20
\u_adc|u_i2c|data_out[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|data_out[7]~7_combout\ = (\u_adc|u_i2c|Decoder0~5_combout\ & ((\u_adc|u_i2c|bit_cnt\(1) & (\u_adc|u_i2c|data_out\(7))) # (!\u_adc|u_i2c|bit_cnt\(1) & ((\j10_sda~input_o\))))) # (!\u_adc|u_i2c|Decoder0~5_combout\ & 
-- (((\u_adc|u_i2c|data_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|Decoder0~5_combout\,
	datab => \u_adc|u_i2c|bit_cnt\(1),
	datac => \u_adc|u_i2c|data_out\(7),
	datad => \j10_sda~input_o\,
	combout => \u_adc|u_i2c|data_out[7]~7_combout\);

-- Location: FF_X24_Y21_N21
\u_adc|u_i2c|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|data_out[7]~7_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|data_out\(7));

-- Location: LCCOMB_X23_Y21_N2
\u_adc|joystick_x[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_x[7]~7_combout\ = !\u_adc|u_i2c|data_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_adc|u_i2c|data_out\(7),
	combout => \u_adc|joystick_x[7]~7_combout\);

-- Location: FF_X23_Y21_N3
\u_adc|joystick_x[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_x[7]~7_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_x\(7));

-- Location: LCCOMB_X24_Y21_N6
\u_adc|data_high[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|data_high[0]~0_combout\ = (!\u_adc|u_i2c|busy~q\ & (\u_adc|Equal0~0_combout\ & (\u_adc|i2c_busy_d~q\ & !\u_adc|Selector12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|busy~q\,
	datab => \u_adc|Equal0~0_combout\,
	datac => \u_adc|i2c_busy_d~q\,
	datad => \u_adc|Selector12~0_combout\,
	combout => \u_adc|data_high[0]~0_combout\);

-- Location: FF_X24_Y21_N11
\u_adc|data_high[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_adc|u_i2c|data_out\(0),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_adc|data_high[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|data_high\(0));

-- Location: LCCOMB_X25_Y21_N24
\u_adc|joystick_x[8]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_x[8]~8_combout\ = !\u_adc|data_high\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|data_high\(0),
	combout => \u_adc|joystick_x[8]~8_combout\);

-- Location: FF_X25_Y21_N25
\u_adc|joystick_x[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_x[8]~8_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_x\(8));

-- Location: LCCOMB_X23_Y21_N4
\u_adc|data_high[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|data_high[1]~feeder_combout\ = \u_adc|u_i2c|data_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|u_i2c|data_out\(1),
	combout => \u_adc|data_high[1]~feeder_combout\);

-- Location: FF_X23_Y21_N5
\u_adc|data_high[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|data_high[1]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|data_high[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|data_high\(1));

-- Location: LCCOMB_X23_Y21_N28
\u_adc|joystick_x[9]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_x[9]~9_combout\ = !\u_adc|data_high\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_adc|data_high\(1),
	combout => \u_adc|joystick_x[9]~9_combout\);

-- Location: FF_X23_Y21_N29
\u_adc|joystick_x[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_x[9]~9_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_x\(9));

-- Location: FF_X23_Y21_N7
\u_adc|data_high[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_adc|u_i2c|data_out\(2),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_adc|data_high[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|data_high\(2));

-- Location: LCCOMB_X23_Y21_N18
\u_adc|joystick_x[10]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_x[10]~10_combout\ = !\u_adc|data_high\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|data_high\(2),
	combout => \u_adc|joystick_x[10]~10_combout\);

-- Location: FF_X23_Y21_N19
\u_adc|joystick_x[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_x[10]~10_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_x\(10));

-- Location: LCCOMB_X23_Y21_N16
\u_adc|data_high[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|data_high[3]~feeder_combout\ = \u_adc|u_i2c|data_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|u_i2c|data_out\(3),
	combout => \u_adc|data_high[3]~feeder_combout\);

-- Location: FF_X23_Y21_N17
\u_adc|data_high[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|data_high[3]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|data_high[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|data_high\(3));

-- Location: LCCOMB_X23_Y21_N8
\u_adc|joystick_x[11]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_x[11]~11_combout\ = !\u_adc|data_high\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|data_high\(3),
	combout => \u_adc|joystick_x[11]~11_combout\);

-- Location: FF_X23_Y21_N9
\u_adc|joystick_x[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_x[11]~11_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_x\(11));

-- Location: LCCOMB_X24_Y21_N18
\u_adc|data_high[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|data_high[4]~feeder_combout\ = \u_adc|u_i2c|data_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|u_i2c|data_out\(4),
	combout => \u_adc|data_high[4]~feeder_combout\);

-- Location: FF_X24_Y21_N19
\u_adc|data_high[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|data_high[4]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|data_high[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|data_high\(4));

-- Location: LCCOMB_X25_Y21_N30
\u_adc|joystick_x[12]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_x[12]~12_combout\ = !\u_adc|data_high\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|data_high\(4),
	combout => \u_adc|joystick_x[12]~12_combout\);

-- Location: FF_X25_Y21_N31
\u_adc|joystick_x[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_x[12]~12_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_x\(12));

-- Location: LCCOMB_X23_Y21_N22
\u_adc|data_high[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|data_high[5]~feeder_combout\ = \u_adc|u_i2c|data_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|u_i2c|data_out\(5),
	combout => \u_adc|data_high[5]~feeder_combout\);

-- Location: FF_X23_Y21_N23
\u_adc|data_high[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|data_high[5]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|data_high[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|data_high\(5));

-- Location: LCCOMB_X23_Y21_N26
\u_adc|joystick_x[13]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_x[13]~13_combout\ = !\u_adc|data_high\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_adc|data_high\(5),
	combout => \u_adc|joystick_x[13]~13_combout\);

-- Location: FF_X23_Y21_N27
\u_adc|joystick_x[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_x[13]~13_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_x\(13));

-- Location: LCCOMB_X24_Y21_N30
\u_adc|data_high[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|data_high[6]~feeder_combout\ = \u_adc|u_i2c|data_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|u_i2c|data_out\(6),
	combout => \u_adc|data_high[6]~feeder_combout\);

-- Location: FF_X24_Y21_N31
\u_adc|data_high[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|data_high[6]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|data_high[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|data_high\(6));

-- Location: LCCOMB_X23_Y21_N12
\u_adc|joystick_x[14]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_x[14]~14_combout\ = !\u_adc|data_high\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|data_high\(6),
	combout => \u_adc|joystick_x[14]~14_combout\);

-- Location: FF_X23_Y21_N13
\u_adc|joystick_x[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_x[14]~14_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_x\(14));

-- Location: FF_X23_Y21_N25
\u_adc|data_high[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_adc|u_i2c|data_out\(7),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \u_adc|data_high[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|data_high\(7));

-- Location: LCCOMB_X23_Y21_N14
\u_adc|joystick_x[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_x[15]~feeder_combout\ = \u_adc|data_high\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|data_high\(7),
	combout => \u_adc|joystick_x[15]~feeder_combout\);

-- Location: FF_X23_Y21_N15
\u_adc|joystick_x[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_x[15]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_x\(15));

-- Location: LCCOMB_X25_Y21_N28
\u_adc|joystick_y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_y[0]~0_combout\ = !\u_adc|u_i2c|data_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|u_i2c|data_out\(0),
	combout => \u_adc|joystick_y[0]~0_combout\);

-- Location: LCCOMB_X24_Y21_N8
\u_adc|always1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|always1~8_combout\ = (!\u_adc|u_i2c|busy~q\ & (\u_adc|current_state.STATE_READ_CH1~q\ & (\u_adc|i2c_busy_d~q\ & \u_adc|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|busy~q\,
	datab => \u_adc|current_state.STATE_READ_CH1~q\,
	datac => \u_adc|i2c_busy_d~q\,
	datad => \u_adc|Equal1~0_combout\,
	combout => \u_adc|always1~8_combout\);

-- Location: FF_X25_Y21_N29
\u_adc|joystick_y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_y[0]~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|always1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_y\(0));

-- Location: LCCOMB_X22_Y21_N8
\u_adc|joystick_y[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_y[1]~1_combout\ = !\u_adc|u_i2c|data_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|u_i2c|data_out\(1),
	combout => \u_adc|joystick_y[1]~1_combout\);

-- Location: FF_X22_Y21_N9
\u_adc|joystick_y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_y[1]~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|always1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_y\(1));

-- Location: LCCOMB_X22_Y21_N26
\u_adc|joystick_y[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_y[2]~2_combout\ = !\u_adc|u_i2c|data_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|u_i2c|data_out\(2),
	combout => \u_adc|joystick_y[2]~2_combout\);

-- Location: FF_X22_Y21_N27
\u_adc|joystick_y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_y[2]~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|always1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_y\(2));

-- Location: LCCOMB_X22_Y21_N16
\u_adc|joystick_y[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_y[3]~3_combout\ = !\u_adc|u_i2c|data_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|u_i2c|data_out\(3),
	combout => \u_adc|joystick_y[3]~3_combout\);

-- Location: FF_X22_Y21_N17
\u_adc|joystick_y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_y[3]~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|always1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_y\(3));

-- Location: LCCOMB_X22_Y21_N22
\u_adc|joystick_y[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_y[4]~4_combout\ = !\u_adc|u_i2c|data_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|u_i2c|data_out\(4),
	combout => \u_adc|joystick_y[4]~4_combout\);

-- Location: FF_X22_Y21_N23
\u_adc|joystick_y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_y[4]~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|always1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_y\(4));

-- Location: LCCOMB_X22_Y21_N20
\u_adc|joystick_y[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_y[5]~5_combout\ = !\u_adc|u_i2c|data_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_adc|u_i2c|data_out\(5),
	combout => \u_adc|joystick_y[5]~5_combout\);

-- Location: FF_X22_Y21_N21
\u_adc|joystick_y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_y[5]~5_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|always1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_y\(5));

-- Location: LCCOMB_X25_Y21_N10
\u_adc|joystick_y[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_y[6]~6_combout\ = !\u_adc|u_i2c|data_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|u_i2c|data_out\(6),
	combout => \u_adc|joystick_y[6]~6_combout\);

-- Location: FF_X25_Y21_N11
\u_adc|joystick_y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_y[6]~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|always1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_y\(6));

-- Location: LCCOMB_X22_Y21_N10
\u_adc|joystick_y[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_y[7]~7_combout\ = !\u_adc|u_i2c|data_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|u_i2c|data_out\(7),
	combout => \u_adc|joystick_y[7]~7_combout\);

-- Location: FF_X22_Y21_N11
\u_adc|joystick_y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_y[7]~7_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|always1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_y\(7));

-- Location: LCCOMB_X25_Y21_N20
\u_adc|joystick_y[8]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_y[8]~8_combout\ = !\u_adc|data_high\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|data_high\(0),
	combout => \u_adc|joystick_y[8]~8_combout\);

-- Location: FF_X25_Y21_N21
\u_adc|joystick_y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_y[8]~8_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|always1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_y\(8));

-- Location: LCCOMB_X22_Y21_N24
\u_adc|joystick_y[9]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_y[9]~9_combout\ = !\u_adc|data_high\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|data_high\(1),
	combout => \u_adc|joystick_y[9]~9_combout\);

-- Location: FF_X22_Y21_N25
\u_adc|joystick_y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_y[9]~9_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|always1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_y\(9));

-- Location: LCCOMB_X22_Y21_N18
\u_adc|joystick_y[10]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_y[10]~10_combout\ = !\u_adc|data_high\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|data_high\(2),
	combout => \u_adc|joystick_y[10]~10_combout\);

-- Location: FF_X22_Y21_N19
\u_adc|joystick_y[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_y[10]~10_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|always1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_y\(10));

-- Location: LCCOMB_X22_Y21_N28
\u_adc|joystick_y[11]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_y[11]~11_combout\ = !\u_adc|data_high\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|data_high\(3),
	combout => \u_adc|joystick_y[11]~11_combout\);

-- Location: FF_X22_Y21_N29
\u_adc|joystick_y[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_y[11]~11_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|always1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_y\(11));

-- Location: LCCOMB_X25_Y21_N6
\u_adc|joystick_y[12]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_y[12]~12_combout\ = !\u_adc|data_high\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|data_high\(4),
	combout => \u_adc|joystick_y[12]~12_combout\);

-- Location: FF_X25_Y21_N7
\u_adc|joystick_y[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_y[12]~12_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|always1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_y\(12));

-- Location: LCCOMB_X22_Y21_N2
\u_adc|joystick_y[13]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_y[13]~13_combout\ = !\u_adc|data_high\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|data_high\(5),
	combout => \u_adc|joystick_y[13]~13_combout\);

-- Location: FF_X22_Y21_N3
\u_adc|joystick_y[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_y[13]~13_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|always1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_y\(13));

-- Location: LCCOMB_X25_Y21_N12
\u_adc|joystick_y[14]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_y[14]~14_combout\ = !\u_adc|data_high\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|data_high\(6),
	combout => \u_adc|joystick_y[14]~14_combout\);

-- Location: FF_X25_Y21_N13
\u_adc|joystick_y[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_y[14]~14_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|always1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_y\(14));

-- Location: LCCOMB_X22_Y21_N0
\u_adc|joystick_y[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_y[15]~feeder_combout\ = \u_adc|data_high\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|data_high\(7),
	combout => \u_adc|joystick_y[15]~feeder_combout\);

-- Location: FF_X22_Y21_N1
\u_adc|joystick_y[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_y[15]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \u_adc|always1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_y\(15));

-- Location: IOIBUF_X3_Y24_N15
\j11_sw~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_j11_sw,
	o => \j11_sw~input_o\);

-- Location: LCCOMB_X2_Y21_N28
\u_btn|sw_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|sw_reg~0_combout\ = !\j11_sw~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \j11_sw~input_o\,
	combout => \u_btn|sw_reg~0_combout\);

-- Location: FF_X2_Y21_N29
\u_btn|sw_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|sw_reg~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|sw_reg~q\);

-- Location: LCCOMB_X2_Y22_N12
\u_btn|cnt[0]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|cnt[0]~20_combout\ = \u_btn|cnt\(0) $ (VCC)
-- \u_btn|cnt[0]~21\ = CARRY(\u_btn|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_btn|cnt\(0),
	datad => VCC,
	combout => \u_btn|cnt[0]~20_combout\,
	cout => \u_btn|cnt[0]~21\);

-- Location: LCCOMB_X2_Y21_N26
\u_btn|always0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|always0~0_combout\ = \j11_sw~input_o\ $ (!\u_btn|sw_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \j11_sw~input_o\,
	datad => \u_btn|sw_reg~q\,
	combout => \u_btn|always0~0_combout\);

-- Location: FF_X2_Y22_N13
\u_btn|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[0]~20_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(0));

-- Location: LCCOMB_X2_Y22_N14
\u_btn|cnt[1]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|cnt[1]~22_combout\ = (\u_btn|cnt\(1) & (!\u_btn|cnt[0]~21\)) # (!\u_btn|cnt\(1) & ((\u_btn|cnt[0]~21\) # (GND)))
-- \u_btn|cnt[1]~23\ = CARRY((!\u_btn|cnt[0]~21\) # (!\u_btn|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_btn|cnt\(1),
	datad => VCC,
	cin => \u_btn|cnt[0]~21\,
	combout => \u_btn|cnt[1]~22_combout\,
	cout => \u_btn|cnt[1]~23\);

-- Location: FF_X2_Y22_N15
\u_btn|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[1]~22_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(1));

-- Location: LCCOMB_X2_Y22_N16
\u_btn|cnt[2]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|cnt[2]~24_combout\ = (\u_btn|cnt\(2) & (\u_btn|cnt[1]~23\ $ (GND))) # (!\u_btn|cnt\(2) & (!\u_btn|cnt[1]~23\ & VCC))
-- \u_btn|cnt[2]~25\ = CARRY((\u_btn|cnt\(2) & !\u_btn|cnt[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_btn|cnt\(2),
	datad => VCC,
	cin => \u_btn|cnt[1]~23\,
	combout => \u_btn|cnt[2]~24_combout\,
	cout => \u_btn|cnt[2]~25\);

-- Location: FF_X2_Y22_N17
\u_btn|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[2]~24_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(2));

-- Location: LCCOMB_X2_Y22_N18
\u_btn|cnt[3]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|cnt[3]~26_combout\ = (\u_btn|cnt\(3) & (!\u_btn|cnt[2]~25\)) # (!\u_btn|cnt\(3) & ((\u_btn|cnt[2]~25\) # (GND)))
-- \u_btn|cnt[3]~27\ = CARRY((!\u_btn|cnt[2]~25\) # (!\u_btn|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_btn|cnt\(3),
	datad => VCC,
	cin => \u_btn|cnt[2]~25\,
	combout => \u_btn|cnt[3]~26_combout\,
	cout => \u_btn|cnt[3]~27\);

-- Location: FF_X2_Y22_N19
\u_btn|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[3]~26_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(3));

-- Location: LCCOMB_X2_Y22_N20
\u_btn|cnt[4]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|cnt[4]~28_combout\ = (\u_btn|cnt\(4) & (\u_btn|cnt[3]~27\ $ (GND))) # (!\u_btn|cnt\(4) & (!\u_btn|cnt[3]~27\ & VCC))
-- \u_btn|cnt[4]~29\ = CARRY((\u_btn|cnt\(4) & !\u_btn|cnt[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_btn|cnt\(4),
	datad => VCC,
	cin => \u_btn|cnt[3]~27\,
	combout => \u_btn|cnt[4]~28_combout\,
	cout => \u_btn|cnt[4]~29\);

-- Location: FF_X2_Y22_N21
\u_btn|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[4]~28_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(4));

-- Location: LCCOMB_X2_Y22_N22
\u_btn|cnt[5]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|cnt[5]~30_combout\ = (\u_btn|cnt\(5) & (!\u_btn|cnt[4]~29\)) # (!\u_btn|cnt\(5) & ((\u_btn|cnt[4]~29\) # (GND)))
-- \u_btn|cnt[5]~31\ = CARRY((!\u_btn|cnt[4]~29\) # (!\u_btn|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_btn|cnt\(5),
	datad => VCC,
	cin => \u_btn|cnt[4]~29\,
	combout => \u_btn|cnt[5]~30_combout\,
	cout => \u_btn|cnt[5]~31\);

-- Location: FF_X2_Y22_N23
\u_btn|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[5]~30_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(5));

-- Location: LCCOMB_X2_Y22_N24
\u_btn|cnt[6]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|cnt[6]~32_combout\ = (\u_btn|cnt\(6) & (\u_btn|cnt[5]~31\ $ (GND))) # (!\u_btn|cnt\(6) & (!\u_btn|cnt[5]~31\ & VCC))
-- \u_btn|cnt[6]~33\ = CARRY((\u_btn|cnt\(6) & !\u_btn|cnt[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_btn|cnt\(6),
	datad => VCC,
	cin => \u_btn|cnt[5]~31\,
	combout => \u_btn|cnt[6]~32_combout\,
	cout => \u_btn|cnt[6]~33\);

-- Location: FF_X2_Y22_N25
\u_btn|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[6]~32_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(6));

-- Location: LCCOMB_X2_Y22_N26
\u_btn|cnt[7]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|cnt[7]~34_combout\ = (\u_btn|cnt\(7) & (!\u_btn|cnt[6]~33\)) # (!\u_btn|cnt\(7) & ((\u_btn|cnt[6]~33\) # (GND)))
-- \u_btn|cnt[7]~35\ = CARRY((!\u_btn|cnt[6]~33\) # (!\u_btn|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_btn|cnt\(7),
	datad => VCC,
	cin => \u_btn|cnt[6]~33\,
	combout => \u_btn|cnt[7]~34_combout\,
	cout => \u_btn|cnt[7]~35\);

-- Location: FF_X2_Y22_N27
\u_btn|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[7]~34_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(7));

-- Location: LCCOMB_X2_Y22_N28
\u_btn|cnt[8]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|cnt[8]~36_combout\ = (\u_btn|cnt\(8) & (\u_btn|cnt[7]~35\ $ (GND))) # (!\u_btn|cnt\(8) & (!\u_btn|cnt[7]~35\ & VCC))
-- \u_btn|cnt[8]~37\ = CARRY((\u_btn|cnt\(8) & !\u_btn|cnt[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_btn|cnt\(8),
	datad => VCC,
	cin => \u_btn|cnt[7]~35\,
	combout => \u_btn|cnt[8]~36_combout\,
	cout => \u_btn|cnt[8]~37\);

-- Location: FF_X2_Y22_N29
\u_btn|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[8]~36_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(8));

-- Location: LCCOMB_X2_Y22_N30
\u_btn|cnt[9]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|cnt[9]~38_combout\ = (\u_btn|cnt\(9) & (!\u_btn|cnt[8]~37\)) # (!\u_btn|cnt\(9) & ((\u_btn|cnt[8]~37\) # (GND)))
-- \u_btn|cnt[9]~39\ = CARRY((!\u_btn|cnt[8]~37\) # (!\u_btn|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_btn|cnt\(9),
	datad => VCC,
	cin => \u_btn|cnt[8]~37\,
	combout => \u_btn|cnt[9]~38_combout\,
	cout => \u_btn|cnt[9]~39\);

-- Location: FF_X2_Y22_N31
\u_btn|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[9]~38_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(9));

-- Location: LCCOMB_X2_Y21_N0
\u_btn|cnt[10]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|cnt[10]~40_combout\ = (\u_btn|cnt\(10) & (\u_btn|cnt[9]~39\ $ (GND))) # (!\u_btn|cnt\(10) & (!\u_btn|cnt[9]~39\ & VCC))
-- \u_btn|cnt[10]~41\ = CARRY((\u_btn|cnt\(10) & !\u_btn|cnt[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_btn|cnt\(10),
	datad => VCC,
	cin => \u_btn|cnt[9]~39\,
	combout => \u_btn|cnt[10]~40_combout\,
	cout => \u_btn|cnt[10]~41\);

-- Location: FF_X2_Y21_N1
\u_btn|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[10]~40_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(10));

-- Location: LCCOMB_X2_Y21_N2
\u_btn|cnt[11]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|cnt[11]~42_combout\ = (\u_btn|cnt\(11) & (!\u_btn|cnt[10]~41\)) # (!\u_btn|cnt\(11) & ((\u_btn|cnt[10]~41\) # (GND)))
-- \u_btn|cnt[11]~43\ = CARRY((!\u_btn|cnt[10]~41\) # (!\u_btn|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_btn|cnt\(11),
	datad => VCC,
	cin => \u_btn|cnt[10]~41\,
	combout => \u_btn|cnt[11]~42_combout\,
	cout => \u_btn|cnt[11]~43\);

-- Location: FF_X2_Y21_N3
\u_btn|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[11]~42_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(11));

-- Location: LCCOMB_X2_Y21_N4
\u_btn|cnt[12]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|cnt[12]~44_combout\ = (\u_btn|cnt\(12) & (\u_btn|cnt[11]~43\ $ (GND))) # (!\u_btn|cnt\(12) & (!\u_btn|cnt[11]~43\ & VCC))
-- \u_btn|cnt[12]~45\ = CARRY((\u_btn|cnt\(12) & !\u_btn|cnt[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_btn|cnt\(12),
	datad => VCC,
	cin => \u_btn|cnt[11]~43\,
	combout => \u_btn|cnt[12]~44_combout\,
	cout => \u_btn|cnt[12]~45\);

-- Location: FF_X2_Y21_N5
\u_btn|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[12]~44_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(12));

-- Location: LCCOMB_X2_Y21_N6
\u_btn|cnt[13]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|cnt[13]~46_combout\ = (\u_btn|cnt\(13) & (!\u_btn|cnt[12]~45\)) # (!\u_btn|cnt\(13) & ((\u_btn|cnt[12]~45\) # (GND)))
-- \u_btn|cnt[13]~47\ = CARRY((!\u_btn|cnt[12]~45\) # (!\u_btn|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_btn|cnt\(13),
	datad => VCC,
	cin => \u_btn|cnt[12]~45\,
	combout => \u_btn|cnt[13]~46_combout\,
	cout => \u_btn|cnt[13]~47\);

-- Location: FF_X2_Y21_N7
\u_btn|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[13]~46_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(13));

-- Location: LCCOMB_X2_Y21_N8
\u_btn|cnt[14]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|cnt[14]~48_combout\ = (\u_btn|cnt\(14) & (\u_btn|cnt[13]~47\ $ (GND))) # (!\u_btn|cnt\(14) & (!\u_btn|cnt[13]~47\ & VCC))
-- \u_btn|cnt[14]~49\ = CARRY((\u_btn|cnt\(14) & !\u_btn|cnt[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_btn|cnt\(14),
	datad => VCC,
	cin => \u_btn|cnt[13]~47\,
	combout => \u_btn|cnt[14]~48_combout\,
	cout => \u_btn|cnt[14]~49\);

-- Location: FF_X2_Y21_N9
\u_btn|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[14]~48_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(14));

-- Location: LCCOMB_X2_Y21_N10
\u_btn|cnt[15]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|cnt[15]~50_combout\ = (\u_btn|cnt\(15) & (!\u_btn|cnt[14]~49\)) # (!\u_btn|cnt\(15) & ((\u_btn|cnt[14]~49\) # (GND)))
-- \u_btn|cnt[15]~51\ = CARRY((!\u_btn|cnt[14]~49\) # (!\u_btn|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_btn|cnt\(15),
	datad => VCC,
	cin => \u_btn|cnt[14]~49\,
	combout => \u_btn|cnt[15]~50_combout\,
	cout => \u_btn|cnt[15]~51\);

-- Location: FF_X2_Y21_N11
\u_btn|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[15]~50_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(15));

-- Location: LCCOMB_X2_Y21_N12
\u_btn|cnt[16]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|cnt[16]~52_combout\ = (\u_btn|cnt\(16) & (\u_btn|cnt[15]~51\ $ (GND))) # (!\u_btn|cnt\(16) & (!\u_btn|cnt[15]~51\ & VCC))
-- \u_btn|cnt[16]~53\ = CARRY((\u_btn|cnt\(16) & !\u_btn|cnt[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_btn|cnt\(16),
	datad => VCC,
	cin => \u_btn|cnt[15]~51\,
	combout => \u_btn|cnt[16]~52_combout\,
	cout => \u_btn|cnt[16]~53\);

-- Location: FF_X2_Y21_N13
\u_btn|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[16]~52_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(16));

-- Location: LCCOMB_X2_Y21_N14
\u_btn|cnt[17]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|cnt[17]~54_combout\ = (\u_btn|cnt\(17) & (!\u_btn|cnt[16]~53\)) # (!\u_btn|cnt\(17) & ((\u_btn|cnt[16]~53\) # (GND)))
-- \u_btn|cnt[17]~55\ = CARRY((!\u_btn|cnt[16]~53\) # (!\u_btn|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_btn|cnt\(17),
	datad => VCC,
	cin => \u_btn|cnt[16]~53\,
	combout => \u_btn|cnt[17]~54_combout\,
	cout => \u_btn|cnt[17]~55\);

-- Location: FF_X2_Y21_N15
\u_btn|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[17]~54_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(17));

-- Location: LCCOMB_X2_Y21_N16
\u_btn|cnt[18]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|cnt[18]~56_combout\ = (\u_btn|cnt\(18) & (\u_btn|cnt[17]~55\ $ (GND))) # (!\u_btn|cnt\(18) & (!\u_btn|cnt[17]~55\ & VCC))
-- \u_btn|cnt[18]~57\ = CARRY((\u_btn|cnt\(18) & !\u_btn|cnt[17]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_btn|cnt\(18),
	datad => VCC,
	cin => \u_btn|cnt[17]~55\,
	combout => \u_btn|cnt[18]~56_combout\,
	cout => \u_btn|cnt[18]~57\);

-- Location: FF_X2_Y21_N17
\u_btn|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[18]~56_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(18));

-- Location: LCCOMB_X2_Y21_N18
\u_btn|cnt[19]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|cnt[19]~58_combout\ = \u_btn|cnt[18]~57\ $ (\u_btn|cnt\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_btn|cnt\(19),
	cin => \u_btn|cnt[18]~57\,
	combout => \u_btn|cnt[19]~58_combout\);

-- Location: FF_X2_Y21_N19
\u_btn|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[19]~58_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(19));

-- Location: LCCOMB_X2_Y21_N22
\u_btn|sw_pressed~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|sw_pressed~3_combout\ = ((\j11_sw~input_o\ $ (!\u_btn|sw_reg~q\)) # (!\u_btn|cnt\(17))) # (!\u_btn|cnt\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_btn|cnt\(16),
	datab => \j11_sw~input_o\,
	datac => \u_btn|cnt\(17),
	datad => \u_btn|sw_reg~q\,
	combout => \u_btn|sw_pressed~3_combout\);

-- Location: LCCOMB_X2_Y21_N30
\u_btn|sw_pressed~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|sw_pressed~1_combout\ = (!\u_btn|cnt\(13) & (!\u_btn|cnt\(11) & (!\u_btn|cnt\(12) & !\u_btn|cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_btn|cnt\(13),
	datab => \u_btn|cnt\(11),
	datac => \u_btn|cnt\(12),
	datad => \u_btn|cnt\(10),
	combout => \u_btn|sw_pressed~1_combout\);

-- Location: LCCOMB_X2_Y22_N8
\u_btn|sw_pressed~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|sw_pressed~0_combout\ = ((!\u_btn|cnt\(7) & (!\u_btn|cnt\(6) & !\u_btn|cnt\(8)))) # (!\u_btn|cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_btn|cnt\(7),
	datab => \u_btn|cnt\(6),
	datac => \u_btn|cnt\(9),
	datad => \u_btn|cnt\(8),
	combout => \u_btn|sw_pressed~0_combout\);

-- Location: LCCOMB_X2_Y21_N20
\u_btn|sw_pressed~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|sw_pressed~2_combout\ = (!\u_btn|cnt\(15) & (((\u_btn|sw_pressed~1_combout\ & \u_btn|sw_pressed~0_combout\)) # (!\u_btn|cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_btn|cnt\(15),
	datab => \u_btn|cnt\(14),
	datac => \u_btn|sw_pressed~1_combout\,
	datad => \u_btn|sw_pressed~0_combout\,
	combout => \u_btn|sw_pressed~2_combout\);

-- Location: LCCOMB_X2_Y21_N24
\u_btn|sw_pressed~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|sw_pressed~4_combout\ = (((\u_btn|sw_pressed~3_combout\) # (\u_btn|sw_pressed~2_combout\)) # (!\u_btn|cnt\(19))) # (!\u_btn|cnt\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_btn|cnt\(18),
	datab => \u_btn|cnt\(19),
	datac => \u_btn|sw_pressed~3_combout\,
	datad => \u_btn|sw_pressed~2_combout\,
	combout => \u_btn|sw_pressed~4_combout\);

-- Location: LCCOMB_X1_Y21_N16
\u_btn|sw_pressed~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|sw_pressed~5_combout\ = (\u_btn|sw_pressed~4_combout\ & ((\u_btn|sw_pressed~q\))) # (!\u_btn|sw_pressed~4_combout\ & (\u_btn|sw_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_btn|sw_reg~q\,
	datac => \u_btn|sw_pressed~q\,
	datad => \u_btn|sw_pressed~4_combout\,
	combout => \u_btn|sw_pressed~5_combout\);

-- Location: FF_X1_Y21_N17
\u_btn|sw_pressed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|sw_pressed~5_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|sw_pressed~q\);

-- Location: IOIBUF_X1_Y0_N22
\j10_alrt~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_j10_alrt,
	o => \j10_alrt~input_o\);

ww_j10_scl <= \j10_scl~output_o\;

ww_x_axis(0) <= \x_axis[0]~output_o\;

ww_x_axis(1) <= \x_axis[1]~output_o\;

ww_x_axis(2) <= \x_axis[2]~output_o\;

ww_x_axis(3) <= \x_axis[3]~output_o\;

ww_x_axis(4) <= \x_axis[4]~output_o\;

ww_x_axis(5) <= \x_axis[5]~output_o\;

ww_x_axis(6) <= \x_axis[6]~output_o\;

ww_x_axis(7) <= \x_axis[7]~output_o\;

ww_x_axis(8) <= \x_axis[8]~output_o\;

ww_x_axis(9) <= \x_axis[9]~output_o\;

ww_x_axis(10) <= \x_axis[10]~output_o\;

ww_x_axis(11) <= \x_axis[11]~output_o\;

ww_x_axis(12) <= \x_axis[12]~output_o\;

ww_x_axis(13) <= \x_axis[13]~output_o\;

ww_x_axis(14) <= \x_axis[14]~output_o\;

ww_x_axis(15) <= \x_axis[15]~output_o\;

ww_y_axis(0) <= \y_axis[0]~output_o\;

ww_y_axis(1) <= \y_axis[1]~output_o\;

ww_y_axis(2) <= \y_axis[2]~output_o\;

ww_y_axis(3) <= \y_axis[3]~output_o\;

ww_y_axis(4) <= \y_axis[4]~output_o\;

ww_y_axis(5) <= \y_axis[5]~output_o\;

ww_y_axis(6) <= \y_axis[6]~output_o\;

ww_y_axis(7) <= \y_axis[7]~output_o\;

ww_y_axis(8) <= \y_axis[8]~output_o\;

ww_y_axis(9) <= \y_axis[9]~output_o\;

ww_y_axis(10) <= \y_axis[10]~output_o\;

ww_y_axis(11) <= \y_axis[11]~output_o\;

ww_y_axis(12) <= \y_axis[12]~output_o\;

ww_y_axis(13) <= \y_axis[13]~output_o\;

ww_y_axis(14) <= \y_axis[14]~output_o\;

ww_y_axis(15) <= \y_axis[15]~output_o\;

ww_button_state <= \button_state~output_o\;

ww_j10_sda <= \j10_sda~output_o\;
END structure;


