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

-- DATE "08/21/2026 17:11:40"

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

ENTITY 	Joystick_top IS
    PORT (
	clk : IN std_logic;
	rst_n : IN std_logic;
	SCL : OUT std_logic;
	SDA : INOUT std_logic;
	ALRT : IN std_logic;
	SW : IN std_logic;
	x_axis : OUT std_logic_vector(15 DOWNTO 0);
	y_axis : OUT std_logic_vector(15 DOWNTO 0);
	button_state : OUT std_logic;
	DIN : OUT std_logic;
	seg_data : OUT std_logic_vector(15 DOWNTO 0);
	seg_com : OUT std_logic_vector(7 DOWNTO 0)
	);
END Joystick_top;

-- Design Ports Information
-- SCL	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALRT	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[0]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[1]	=>  Location: PIN_195,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[2]	=>  Location: PIN_224,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[3]	=>  Location: PIN_214,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[4]	=>  Location: PIN_218,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[5]	=>  Location: PIN_184,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[6]	=>  Location: PIN_219,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[7]	=>  Location: PIN_160,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[8]	=>  Location: PIN_185,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[9]	=>  Location: PIN_176,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[10]	=>  Location: PIN_177,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[11]	=>  Location: PIN_230,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[12]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[13]	=>  Location: PIN_196,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[14]	=>  Location: PIN_197,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[15]	=>  Location: PIN_200,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[0]	=>  Location: PIN_207,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[1]	=>  Location: PIN_186,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[2]	=>  Location: PIN_201,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[3]	=>  Location: PIN_95,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[4]	=>  Location: PIN_203,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[5]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[6]	=>  Location: PIN_221,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[7]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[8]	=>  Location: PIN_217,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[9]	=>  Location: PIN_216,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[10]	=>  Location: PIN_93,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[11]	=>  Location: PIN_94,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[12]	=>  Location: PIN_161,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[13]	=>  Location: PIN_202,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[14]	=>  Location: PIN_164,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[15]	=>  Location: PIN_169,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button_state	=>  Location: PIN_139,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_data[0]	=>  Location: PIN_231,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_data[1]	=>  Location: PIN_235,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_data[2]	=>  Location: PIN_239,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_data[3]	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_data[4]	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_data[5]	=>  Location: PIN_21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_data[6]	=>  Location: PIN_37,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_data[7]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_data[8]	=>  Location: PIN_166,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_data[9]	=>  Location: PIN_187,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_data[10]	=>  Location: PIN_189,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_data[11]	=>  Location: PIN_188,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_data[12]	=>  Location: PIN_223,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_data[13]	=>  Location: PIN_173,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_data[14]	=>  Location: PIN_171,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_data[15]	=>  Location: PIN_194,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_com[0]	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_com[1]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_com[2]	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_com[3]	=>  Location: PIN_18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_com[4]	=>  Location: PIN_9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_com[5]	=>  Location: PIN_240,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_com[6]	=>  Location: PIN_236,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_com[7]	=>  Location: PIN_232,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDA	=>  Location: PIN_118,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_149,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_145,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_SCL : std_logic;
SIGNAL ww_ALRT : std_logic;
SIGNAL ww_SW : std_logic;
SIGNAL ww_x_axis : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_y_axis : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_button_state : std_logic;
SIGNAL ww_DIN : std_logic;
SIGNAL ww_seg_data : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_seg_com : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_7seg|counter[10]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALRT~input_o\ : std_logic;
SIGNAL \SDA~output_o\ : std_logic;
SIGNAL \SCL~output_o\ : std_logic;
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
SIGNAL \DIN~output_o\ : std_logic;
SIGNAL \seg_data[0]~output_o\ : std_logic;
SIGNAL \seg_data[1]~output_o\ : std_logic;
SIGNAL \seg_data[2]~output_o\ : std_logic;
SIGNAL \seg_data[3]~output_o\ : std_logic;
SIGNAL \seg_data[4]~output_o\ : std_logic;
SIGNAL \seg_data[5]~output_o\ : std_logic;
SIGNAL \seg_data[6]~output_o\ : std_logic;
SIGNAL \seg_data[7]~output_o\ : std_logic;
SIGNAL \seg_data[8]~output_o\ : std_logic;
SIGNAL \seg_data[9]~output_o\ : std_logic;
SIGNAL \seg_data[10]~output_o\ : std_logic;
SIGNAL \seg_data[11]~output_o\ : std_logic;
SIGNAL \seg_data[12]~output_o\ : std_logic;
SIGNAL \seg_data[13]~output_o\ : std_logic;
SIGNAL \seg_data[14]~output_o\ : std_logic;
SIGNAL \seg_data[15]~output_o\ : std_logic;
SIGNAL \seg_com[0]~output_o\ : std_logic;
SIGNAL \seg_com[1]~output_o\ : std_logic;
SIGNAL \seg_com[2]~output_o\ : std_logic;
SIGNAL \seg_com[3]~output_o\ : std_logic;
SIGNAL \seg_com[4]~output_o\ : std_logic;
SIGNAL \seg_com[5]~output_o\ : std_logic;
SIGNAL \seg_com[6]~output_o\ : std_logic;
SIGNAL \seg_com[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \u_adc|i2c_start~1_combout\ : std_logic;
SIGNAL \SDA~input_o\ : std_logic;
SIGNAL \u_adc|u_i2c|Add0~0_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Add0~3\ : std_logic;
SIGNAL \u_adc|u_i2c|Add0~4_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|clk_cnt~4_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
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
SIGNAL \u_adc|i2c_done~0_combout\ : std_logic;
SIGNAL \u_adc|sub_step~14_combout\ : std_logic;
SIGNAL \u_adc|always2~0_combout\ : std_logic;
SIGNAL \u_adc|Selector22~2_combout\ : std_logic;
SIGNAL \u_adc|delay_cnt[0]~24_combout\ : std_logic;
SIGNAL \WS2812_u1|sys_mode.MODE_CLEAR~feeder_combout\ : std_logic;
SIGNAL \WS2812_u1|sys_mode.MODE_CLEAR~q\ : std_logic;
SIGNAL \u_adc|Selector20~0_combout\ : std_logic;
SIGNAL \u_adc|Selector20~1_combout\ : std_logic;
SIGNAL \u_adc|Selector20~2_combout\ : std_logic;
SIGNAL \u_adc|Selector20~3_combout\ : std_logic;
SIGNAL \u_adc|current_state.STATE_READ_CH0~q\ : std_logic;
SIGNAL \u_adc|Selector21~2_combout\ : std_logic;
SIGNAL \u_adc|Selector21~0_combout\ : std_logic;
SIGNAL \u_adc|Selector21~3_combout\ : std_logic;
SIGNAL \u_adc|Selector21~4_combout\ : std_logic;
SIGNAL \u_adc|Selector18~0_combout\ : std_logic;
SIGNAL \u_adc|current_state.STATE_WRITE_CH0~q\ : std_logic;
SIGNAL \u_adc|i2c_read~0_combout\ : std_logic;
SIGNAL \u_adc|Selector19~0_combout\ : std_logic;
SIGNAL \u_adc|Selector19~1_combout\ : std_logic;
SIGNAL \u_adc|Selector19~2_combout\ : std_logic;
SIGNAL \u_adc|current_state.STATE_WAIT_CH0~q\ : std_logic;
SIGNAL \u_adc|always1~7_combout\ : std_logic;
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
SIGNAL \u_adc|LessThan0~6_combout\ : std_logic;
SIGNAL \u_adc|LessThan0~4_combout\ : std_logic;
SIGNAL \u_adc|LessThan0~1_combout\ : std_logic;
SIGNAL \u_adc|LessThan0~2_combout\ : std_logic;
SIGNAL \u_adc|LessThan0~3_combout\ : std_logic;
SIGNAL \u_adc|LessThan0~5_combout\ : std_logic;
SIGNAL \u_adc|LessThan0~0_combout\ : std_logic;
SIGNAL \u_adc|LessThan0~7_combout\ : std_logic;
SIGNAL \u_adc|Selector22~3_combout\ : std_logic;
SIGNAL \u_adc|current_state.STATE_WAIT_CH1~q\ : std_logic;
SIGNAL \u_adc|Selector23~2_combout\ : std_logic;
SIGNAL \u_adc|current_state.STATE_READ_CH1~q\ : std_logic;
SIGNAL \u_adc|Selector21~1_combout\ : std_logic;
SIGNAL \u_adc|Selector21~5_combout\ : std_logic;
SIGNAL \u_adc|current_state.STATE_WRITE_CH1~q\ : std_logic;
SIGNAL \u_adc|sub_step[1]~12_combout\ : std_logic;
SIGNAL \u_adc|always1~8_combout\ : std_logic;
SIGNAL \u_adc|sub_step[1]~10_combout\ : std_logic;
SIGNAL \u_adc|sub_step[1]~11_combout\ : std_logic;
SIGNAL \u_adc|sub_step[1]~13_combout\ : std_logic;
SIGNAL \u_adc|Add1~1_combout\ : std_logic;
SIGNAL \u_adc|sub_step~16_combout\ : std_logic;
SIGNAL \u_adc|Equal2~0_combout\ : std_logic;
SIGNAL \u_adc|i2c_read~1_combout\ : std_logic;
SIGNAL \u_adc|always1~9_combout\ : std_logic;
SIGNAL \u_adc|i2c_start~2_combout\ : std_logic;
SIGNAL \u_adc|i2c_start~3_combout\ : std_logic;
SIGNAL \u_adc|Equal3~0_combout\ : std_logic;
SIGNAL \u_adc|Selector14~0_combout\ : std_logic;
SIGNAL \u_adc|i2c_start~4_combout\ : std_logic;
SIGNAL \u_adc|i2c_start~5_combout\ : std_logic;
SIGNAL \u_adc|i2c_start~q\ : std_logic;
SIGNAL \u_adc|u_i2c|shift_reg[0]~0_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|state.WRITE~feeder_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|state~22_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Equal3~0_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|state~24_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector12~0_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|bit_cnt[3]~0_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Add2~2_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Add2~1_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Equal4~0_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|bit_cnt[3]~1_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|bit_cnt[3]~2_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Add2~0_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|state~25_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|state~26_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|state.WRITE~q\ : std_logic;
SIGNAL \u_adc|u_i2c|state.IDLE~2_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|state.IDLE~q\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector1~0_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Add1~0_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Decoder0~0_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|state.RACK~feeder_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|state.RACK~q\ : std_logic;
SIGNAL \u_adc|u_i2c|ack_out~0_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|ack_out~q\ : std_logic;
SIGNAL \u_adc|joystick_x[12]~2_combout\ : std_logic;
SIGNAL \u_adc|Add1~0_combout\ : std_logic;
SIGNAL \u_adc|sub_step~15_combout\ : std_logic;
SIGNAL \u_adc|Selector1~0_combout\ : std_logic;
SIGNAL \u_adc|Selector4~0_combout\ : std_logic;
SIGNAL \u_adc|Selector4~1_combout\ : std_logic;
SIGNAL \u_adc|Selector0~0_combout\ : std_logic;
SIGNAL \u_adc|Selector0~1_combout\ : std_logic;
SIGNAL \u_adc|Selector4~2_combout\ : std_logic;
SIGNAL \u_adc|last_was_write~q\ : std_logic;
SIGNAL \u_adc|joystick_x[12]~0_combout\ : std_logic;
SIGNAL \u_adc|sub_step~17_combout\ : std_logic;
SIGNAL \u_adc|i2c_read~2_combout\ : std_logic;
SIGNAL \u_adc|i2c_read~3_combout\ : std_logic;
SIGNAL \u_adc|i2c_read~4_combout\ : std_logic;
SIGNAL \u_adc|i2c_read~q\ : std_logic;
SIGNAL \u_adc|i2c_stop~2_combout\ : std_logic;
SIGNAL \u_adc|i2c_stop~3_combout\ : std_logic;
SIGNAL \u_adc|i2c_stop~4_combout\ : std_logic;
SIGNAL \u_adc|i2c_stop~q\ : std_logic;
SIGNAL \u_adc|u_i2c|state~23_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|busy~0_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|busy~q\ : std_logic;
SIGNAL \u_adc|i2c_busy_d~q\ : std_logic;
SIGNAL \u_adc|i2c_cmd_ack~2_combout\ : std_logic;
SIGNAL \u_adc|i2c_cmd_ack~q\ : std_logic;
SIGNAL \u_adc|i2c_start~0_combout\ : std_logic;
SIGNAL \u_adc|WideOr6~0_combout\ : std_logic;
SIGNAL \u_adc|i2c_data_in[1]~0_combout\ : std_logic;
SIGNAL \u_adc|WideOr2~0_combout\ : std_logic;
SIGNAL \u_adc|i2c_write~0_combout\ : std_logic;
SIGNAL \u_adc|i2c_write~1_combout\ : std_logic;
SIGNAL \u_adc|i2c_write~q\ : std_logic;
SIGNAL \u_adc|u_i2c|state~27_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|state.READ~q\ : std_logic;
SIGNAL \u_adc|u_i2c|state.WACK~feeder_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|state.WACK~q\ : std_logic;
SIGNAL \u_adc|u_i2c|state~21_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|state.STOP~q\ : std_logic;
SIGNAL \u_adc|u_i2c|Equal1~0_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector13~6_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|state~28_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|state.START~q\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector13~7_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector13~8_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector13~5_combout\ : std_logic;
SIGNAL \u_adc|Equal1~0_combout\ : std_logic;
SIGNAL \u_adc|Selector2~0_combout\ : std_logic;
SIGNAL \u_adc|i2c_ack_in~0_combout\ : std_logic;
SIGNAL \u_adc|i2c_ack_in~q\ : std_logic;
SIGNAL \u_adc|Selector13~0_combout\ : std_logic;
SIGNAL \u_adc|Selector13~2_combout\ : std_logic;
SIGNAL \u_adc|Selector13~1_combout\ : std_logic;
SIGNAL \u_adc|Selector13~3_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|shift_reg[0]~1_combout\ : std_logic;
SIGNAL \u_adc|Selector12~0_combout\ : std_logic;
SIGNAL \u_adc|i2c_data_in[1]~1_combout\ : std_logic;
SIGNAL \u_adc|i2c_data_in[1]~2_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector13~1_combout\ : std_logic;
SIGNAL \u_adc|Selector7~0_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|shift_reg[6]~feeder_combout\ : std_logic;
SIGNAL \u_adc|Selector6~0_combout\ : std_logic;
SIGNAL \u_adc|Selector6~3_combout\ : std_logic;
SIGNAL \u_adc|Selector6~2_combout\ : std_logic;
SIGNAL \u_adc|Selector6~1_combout\ : std_logic;
SIGNAL \u_adc|Selector6~4_combout\ : std_logic;
SIGNAL \u_adc|Selector6~5_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Mux0~0_combout\ : std_logic;
SIGNAL \u_adc|Selector9~3_combout\ : std_logic;
SIGNAL \u_adc|Selector9~4_combout\ : std_logic;
SIGNAL \u_adc|Mux6~4_combout\ : std_logic;
SIGNAL \u_adc|Mux6~5_combout\ : std_logic;
SIGNAL \u_adc|Selector9~0_combout\ : std_logic;
SIGNAL \u_adc|Selector9~1_combout\ : std_logic;
SIGNAL \u_adc|Selector9~2_combout\ : std_logic;
SIGNAL \u_adc|Selector9~5_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector13~0_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector13~2_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector13~3_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector13~4_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector13~9_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|sda_out~q\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector15~0_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector15~1_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector15~2_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector15~3_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|sda_oe~q\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector14~3_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector14~1_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector14~0_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector14~2_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Selector14~4_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|scl~q\ : std_logic;
SIGNAL \u_adc|u_i2c|Decoder0~1_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|data_out[0]~0_combout\ : std_logic;
SIGNAL \u_adc|joystick_x[0]~1_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Decoder0~2_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|data_out[1]~1_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Decoder0~3_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|data_out[2]~2_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|data_out[3]~3_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Decoder0~4_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|data_out[4]~4_combout\ : std_logic;
SIGNAL \u_adc|joystick_x[4]~3_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|Decoder0~5_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|data_out[5]~5_combout\ : std_logic;
SIGNAL \u_adc|joystick_x[5]~4_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|data_out[6]~6_combout\ : std_logic;
SIGNAL \u_adc|joystick_x[6]~5_combout\ : std_logic;
SIGNAL \u_adc|u_i2c|data_out[7]~7_combout\ : std_logic;
SIGNAL \u_adc|joystick_x[7]~6_combout\ : std_logic;
SIGNAL \u_adc|data_high[0]~feeder_combout\ : std_logic;
SIGNAL \u_adc|data_high[0]~0_combout\ : std_logic;
SIGNAL \u_adc|data_high[0]~1_combout\ : std_logic;
SIGNAL \u_adc|joystick_x[8]~7_combout\ : std_logic;
SIGNAL \u_adc|data_high[1]~feeder_combout\ : std_logic;
SIGNAL \u_adc|joystick_x[9]~8_combout\ : std_logic;
SIGNAL \u_adc|data_high[2]~feeder_combout\ : std_logic;
SIGNAL \u_adc|joystick_x[10]~9_combout\ : std_logic;
SIGNAL \u_adc|data_high[3]~feeder_combout\ : std_logic;
SIGNAL \u_adc|joystick_x[11]~10_combout\ : std_logic;
SIGNAL \u_adc|data_high[4]~feeder_combout\ : std_logic;
SIGNAL \u_adc|joystick_x[12]~11_combout\ : std_logic;
SIGNAL \u_adc|joystick_x[13]~12_combout\ : std_logic;
SIGNAL \u_adc|data_high[6]~feeder_combout\ : std_logic;
SIGNAL \u_adc|joystick_x[14]~13_combout\ : std_logic;
SIGNAL \u_adc|joystick_x[14]~feeder_combout\ : std_logic;
SIGNAL \u_adc|joystick_y[0]~feeder_combout\ : std_logic;
SIGNAL \u_adc|joystick_y[0]~2_combout\ : std_logic;
SIGNAL \u_adc|joystick_y[1]~feeder_combout\ : std_logic;
SIGNAL \u_adc|joystick_y[3]~feeder_combout\ : std_logic;
SIGNAL \u_adc|joystick_y[4]~3_combout\ : std_logic;
SIGNAL \u_adc|joystick_y[5]~4_combout\ : std_logic;
SIGNAL \u_adc|joystick_y[6]~5_combout\ : std_logic;
SIGNAL \u_adc|joystick_y[7]~6_combout\ : std_logic;
SIGNAL \u_adc|joystick_y[8]~7_combout\ : std_logic;
SIGNAL \u_adc|joystick_y[9]~8_combout\ : std_logic;
SIGNAL \u_adc|joystick_y[10]~9_combout\ : std_logic;
SIGNAL \u_adc|joystick_y[11]~10_combout\ : std_logic;
SIGNAL \u_adc|joystick_y[12]~11_combout\ : std_logic;
SIGNAL \u_adc|joystick_y[13]~12_combout\ : std_logic;
SIGNAL \u_adc|joystick_y[14]~13_combout\ : std_logic;
SIGNAL \SW~input_o\ : std_logic;
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
SIGNAL \u_btn|sw_pressed~1_combout\ : std_logic;
SIGNAL \u_btn|sw_pressed~0_combout\ : std_logic;
SIGNAL \u_btn|sw_pressed~2_combout\ : std_logic;
SIGNAL \u_btn|cnt[15]~51\ : std_logic;
SIGNAL \u_btn|cnt[16]~52_combout\ : std_logic;
SIGNAL \u_btn|cnt[16]~53\ : std_logic;
SIGNAL \u_btn|cnt[17]~54_combout\ : std_logic;
SIGNAL \u_btn|cnt[17]~55\ : std_logic;
SIGNAL \u_btn|cnt[18]~56_combout\ : std_logic;
SIGNAL \u_btn|cnt[18]~57\ : std_logic;
SIGNAL \u_btn|cnt[19]~58_combout\ : std_logic;
SIGNAL \u_btn|sw_pressed~3_combout\ : std_logic;
SIGNAL \u_btn|sw_pressed~4_combout\ : std_logic;
SIGNAL \u_btn|sw_pressed~5_combout\ : std_logic;
SIGNAL \u_btn|sw_pressed~q\ : std_logic;
SIGNAL \WS2812_u1|Add7~0_combout\ : std_logic;
SIGNAL \WS2812_u1|led_idx[0]~6_combout\ : std_logic;
SIGNAL \WS2812_u1|led_idx[2]~12_combout\ : std_logic;
SIGNAL \WS2812_u1|Add7~7\ : std_logic;
SIGNAL \WS2812_u1|Add7~8_combout\ : std_logic;
SIGNAL \WS2812_u1|Selector11~0_combout\ : std_logic;
SIGNAL \WS2812_u1|Add7~9\ : std_logic;
SIGNAL \WS2812_u1|Add7~10_combout\ : std_logic;
SIGNAL \WS2812_u1|Selector10~0_combout\ : std_logic;
SIGNAL \WS2812_u1|Add7~11\ : std_logic;
SIGNAL \WS2812_u1|Add7~12_combout\ : std_logic;
SIGNAL \WS2812_u1|Selector9~0_combout\ : std_logic;
SIGNAL \WS2812_u1|Add7~13\ : std_logic;
SIGNAL \WS2812_u1|Add7~14_combout\ : std_logic;
SIGNAL \WS2812_u1|Selector8~0_combout\ : std_logic;
SIGNAL \WS2812_u1|Add7~15\ : std_logic;
SIGNAL \WS2812_u1|Add7~16_combout\ : std_logic;
SIGNAL \WS2812_u1|Selector7~0_combout\ : std_logic;
SIGNAL \WS2812_u1|Add7~17\ : std_logic;
SIGNAL \WS2812_u1|Add7~18_combout\ : std_logic;
SIGNAL \WS2812_u1|Selector6~0_combout\ : std_logic;
SIGNAL \WS2812_u1|Add7~19\ : std_logic;
SIGNAL \WS2812_u1|Add7~20_combout\ : std_logic;
SIGNAL \WS2812_u1|Selector5~0_combout\ : std_logic;
SIGNAL \WS2812_u1|Add7~21\ : std_logic;
SIGNAL \WS2812_u1|Add7~22_combout\ : std_logic;
SIGNAL \WS2812_u1|Selector4~0_combout\ : std_logic;
SIGNAL \WS2812_u1|LessThan11~1_combout\ : std_logic;
SIGNAL \WS2812_u1|Add7~23\ : std_logic;
SIGNAL \WS2812_u1|Add7~24_combout\ : std_logic;
SIGNAL \WS2812_u1|Selector3~0_combout\ : std_logic;
SIGNAL \WS2812_u1|Add7~25\ : std_logic;
SIGNAL \WS2812_u1|Add7~26_combout\ : std_logic;
SIGNAL \WS2812_u1|Selector2~0_combout\ : std_logic;
SIGNAL \WS2812_u1|Add7~27\ : std_logic;
SIGNAL \WS2812_u1|Add7~28_combout\ : std_logic;
SIGNAL \WS2812_u1|Selector1~1_combout\ : std_logic;
SIGNAL \WS2812_u1|Add7~29\ : std_logic;
SIGNAL \WS2812_u1|Add7~30_combout\ : std_logic;
SIGNAL \WS2812_u1|Selector0~0_combout\ : std_logic;
SIGNAL \WS2812_u1|LessThan11~0_combout\ : std_logic;
SIGNAL \WS2812_u1|LessThan11~2_combout\ : std_logic;
SIGNAL \WS2812_u1|LessThan11~4_combout\ : std_logic;
SIGNAL \WS2812_u1|Add8~0_combout\ : std_logic;
SIGNAL \WS2812_u1|Selector29~0_combout\ : std_logic;
SIGNAL \WS2812_u1|LessThan8~0_combout\ : std_logic;
SIGNAL \WS2812_u1|LessThan8~1_combout\ : std_logic;
SIGNAL \WS2812_u1|LessThan8~2_combout\ : std_logic;
SIGNAL \WS2812_u1|LessThan8~3_combout\ : std_logic;
SIGNAL \WS2812_u1|LessThan8~4_combout\ : std_logic;
SIGNAL \WS2812_u1|bit_idx[1]~0_combout\ : std_logic;
SIGNAL \WS2812_u1|Add8~1\ : std_logic;
SIGNAL \WS2812_u1|Add8~2_combout\ : std_logic;
SIGNAL \WS2812_u1|Selector28~0_combout\ : std_logic;
SIGNAL \WS2812_u1|Add8~3\ : std_logic;
SIGNAL \WS2812_u1|Add8~4_combout\ : std_logic;
SIGNAL \WS2812_u1|Selector27~0_combout\ : std_logic;
SIGNAL \WS2812_u1|Add8~5\ : std_logic;
SIGNAL \WS2812_u1|Add8~6_combout\ : std_logic;
SIGNAL \WS2812_u1|bit_idx[3]~1_combout\ : std_logic;
SIGNAL \WS2812_u1|Selector26~0_combout\ : std_logic;
SIGNAL \WS2812_u1|bit_idx[3]~2_combout\ : std_logic;
SIGNAL \WS2812_u1|Add8~7\ : std_logic;
SIGNAL \WS2812_u1|Add8~8_combout\ : std_logic;
SIGNAL \WS2812_u1|Selector25~0_combout\ : std_logic;
SIGNAL \WS2812_u1|Mux0~3_combout\ : std_logic;
SIGNAL \WS2812_u1|LessThan12~0_combout\ : std_logic;
SIGNAL \WS2812_u1|led_idx[2]~13_combout\ : std_logic;
SIGNAL \WS2812_u1|led_idx[2]~14_combout\ : std_logic;
SIGNAL \WS2812_u1|led_idx[0]~7\ : std_logic;
SIGNAL \WS2812_u1|led_idx[1]~8_combout\ : std_logic;
SIGNAL \WS2812_u1|led_idx[1]~9\ : std_logic;
SIGNAL \WS2812_u1|led_idx[2]~10_combout\ : std_logic;
SIGNAL \WS2812_u1|led_idx[2]~11\ : std_logic;
SIGNAL \WS2812_u1|led_idx[3]~15_combout\ : std_logic;
SIGNAL \WS2812_u1|led_idx[3]~16\ : std_logic;
SIGNAL \WS2812_u1|led_idx[4]~17_combout\ : std_logic;
SIGNAL \WS2812_u1|led_idx[4]~18\ : std_logic;
SIGNAL \WS2812_u1|led_idx[5]~19_combout\ : std_logic;
SIGNAL \WS2812_u1|LessThan13~0_combout\ : std_logic;
SIGNAL \WS2812_u1|led_idx[2]~22_combout\ : std_logic;
SIGNAL \WS2812_u1|Selector16~0_combout\ : std_logic;
SIGNAL \WS2812_u1|state.STATE_IDLE~q\ : std_logic;
SIGNAL \WS2812_u1|sys_mode_delay.MODE_CLEAR~q\ : std_logic;
SIGNAL \WS2812_u1|sys_mode_delay.MODE_CONTROL~q\ : std_logic;
SIGNAL \WS2812_u1|move_timer[0]~26_combout\ : std_logic;
SIGNAL \WS2812_u1|LessThan1~1_combout\ : std_logic;
SIGNAL \WS2812_u1|LessThan1~0_combout\ : std_logic;
SIGNAL \WS2812_u1|LessThan1~2_combout\ : std_logic;
SIGNAL \WS2812_u1|LessThan1~3_combout\ : std_logic;
SIGNAL \WS2812_u1|LessThan1~4_combout\ : std_logic;
SIGNAL \WS2812_u1|LessThan1~5_combout\ : std_logic;
SIGNAL \WS2812_u1|LessThan0~0_combout\ : std_logic;
SIGNAL \WS2812_u1|LessThan0~2_combout\ : std_logic;
SIGNAL \WS2812_u1|LessThan0~1_combout\ : std_logic;
SIGNAL \WS2812_u1|LessThan0~3_combout\ : std_logic;
SIGNAL \WS2812_u1|LessThan3~0_combout\ : std_logic;
SIGNAL \WS2812_u1|LessThan3~1_combout\ : std_logic;
SIGNAL \WS2812_u1|LessThan3~2_combout\ : std_logic;
SIGNAL \WS2812_u1|LessThan3~3_combout\ : std_logic;
SIGNAL \WS2812_u1|LessThan3~4_combout\ : std_logic;
SIGNAL \WS2812_u1|LessThan2~3_combout\ : std_logic;
SIGNAL \WS2812_u1|LessThan2~2_combout\ : std_logic;
SIGNAL \WS2812_u1|LessThan2~0_combout\ : std_logic;
SIGNAL \WS2812_u1|LessThan2~1_combout\ : std_logic;
SIGNAL \WS2812_u1|LessThan2~4_combout\ : std_logic;
SIGNAL \WS2812_u1|any_joy_active~combout\ : std_logic;
SIGNAL \WS2812_u1|move_timer[18]~63\ : std_logic;
SIGNAL \WS2812_u1|move_timer[19]~64_combout\ : std_logic;
SIGNAL \WS2812_u1|move_timer[19]~65\ : std_logic;
SIGNAL \WS2812_u1|move_timer[20]~66_combout\ : std_logic;
SIGNAL \WS2812_u1|move_timer[20]~67\ : std_logic;
SIGNAL \WS2812_u1|move_timer[21]~68_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \WS2812_u1|move_timer[21]~69\ : std_logic;
SIGNAL \WS2812_u1|move_timer[22]~70_combout\ : std_logic;
SIGNAL \WS2812_u1|move_timer[22]~71\ : std_logic;
SIGNAL \WS2812_u1|move_timer[23]~72_combout\ : std_logic;
SIGNAL \WS2812_u1|Equal0~6_combout\ : std_logic;
SIGNAL \WS2812_u1|Equal0~1_combout\ : std_logic;
SIGNAL \WS2812_u1|Equal0~0_combout\ : std_logic;
SIGNAL \WS2812_u1|Equal0~2_combout\ : std_logic;
SIGNAL \WS2812_u1|Equal0~3_combout\ : std_logic;
SIGNAL \WS2812_u1|Equal0~4_combout\ : std_logic;
SIGNAL \WS2812_u1|move_timer[17]~74_combout\ : std_logic;
SIGNAL \WS2812_u1|move_timer[0]~27\ : std_logic;
SIGNAL \WS2812_u1|move_timer[1]~28_combout\ : std_logic;
SIGNAL \WS2812_u1|move_timer[1]~29\ : std_logic;
SIGNAL \WS2812_u1|move_timer[2]~30_combout\ : std_logic;
SIGNAL \WS2812_u1|move_timer[2]~31\ : std_logic;
SIGNAL \WS2812_u1|move_timer[3]~32_combout\ : std_logic;
SIGNAL \WS2812_u1|move_timer[3]~33\ : std_logic;
SIGNAL \WS2812_u1|move_timer[4]~34_combout\ : std_logic;
SIGNAL \WS2812_u1|move_timer[4]~35\ : std_logic;
SIGNAL \WS2812_u1|move_timer[5]~36_combout\ : std_logic;
SIGNAL \WS2812_u1|move_timer[5]~37\ : std_logic;
SIGNAL \WS2812_u1|move_timer[6]~38_combout\ : std_logic;
SIGNAL \WS2812_u1|move_timer[6]~39\ : std_logic;
SIGNAL \WS2812_u1|move_timer[7]~40_combout\ : std_logic;
SIGNAL \WS2812_u1|move_timer[7]~41\ : std_logic;
SIGNAL \WS2812_u1|move_timer[8]~42_combout\ : std_logic;
SIGNAL \WS2812_u1|move_timer[8]~43\ : std_logic;
SIGNAL \WS2812_u1|move_timer[9]~44_combout\ : std_logic;
SIGNAL \WS2812_u1|move_timer[9]~45\ : std_logic;
SIGNAL \WS2812_u1|move_timer[10]~46_combout\ : std_logic;
SIGNAL \WS2812_u1|move_timer[10]~47\ : std_logic;
SIGNAL \WS2812_u1|move_timer[11]~48_combout\ : std_logic;
SIGNAL \WS2812_u1|move_timer[11]~49\ : std_logic;
SIGNAL \WS2812_u1|move_timer[12]~50_combout\ : std_logic;
SIGNAL \WS2812_u1|move_timer[12]~51\ : std_logic;
SIGNAL \WS2812_u1|move_timer[13]~52_combout\ : std_logic;
SIGNAL \WS2812_u1|move_timer[13]~53\ : std_logic;
SIGNAL \WS2812_u1|move_timer[14]~54_combout\ : std_logic;
SIGNAL \WS2812_u1|move_timer[14]~55\ : std_logic;
SIGNAL \WS2812_u1|move_timer[15]~56_combout\ : std_logic;
SIGNAL \WS2812_u1|move_timer[15]~57\ : std_logic;
SIGNAL \WS2812_u1|move_timer[16]~58_combout\ : std_logic;
SIGNAL \WS2812_u1|move_timer[16]~59\ : std_logic;
SIGNAL \WS2812_u1|move_timer[17]~60_combout\ : std_logic;
SIGNAL \WS2812_u1|move_timer[17]~61\ : std_logic;
SIGNAL \WS2812_u1|move_timer[18]~62_combout\ : std_logic;
SIGNAL \WS2812_u1|Equal0~5_combout\ : std_logic;
SIGNAL \WS2812_u1|move_pulse~2_combout\ : std_logic;
SIGNAL \WS2812_u1|move_pulse~q\ : std_logic;
SIGNAL \WS2812_u1|update_req~1_combout\ : std_logic;
SIGNAL \WS2812_u1|update_req~2_combout\ : std_logic;
SIGNAL \WS2812_u1|update_req~q\ : std_logic;
SIGNAL \WS2812_u1|always1~6_combout\ : std_logic;
SIGNAL \WS2812_u1|Selector17~0_combout\ : std_logic;
SIGNAL \WS2812_u1|state.STATE_RESET~q\ : std_logic;
SIGNAL \WS2812_u1|led_idx[2]~21_combout\ : std_logic;
SIGNAL \WS2812_u1|Selector18~0_combout\ : std_logic;
SIGNAL \WS2812_u1|state.STATE_SEND~q\ : std_logic;
SIGNAL \WS2812_u1|Selector1~0_combout\ : std_logic;
SIGNAL \WS2812_u1|Selector15~0_combout\ : std_logic;
SIGNAL \WS2812_u1|Add7~1\ : std_logic;
SIGNAL \WS2812_u1|Add7~2_combout\ : std_logic;
SIGNAL \WS2812_u1|Selector14~0_combout\ : std_logic;
SIGNAL \WS2812_u1|Add7~3\ : std_logic;
SIGNAL \WS2812_u1|Add7~4_combout\ : std_logic;
SIGNAL \WS2812_u1|Selector13~0_combout\ : std_logic;
SIGNAL \WS2812_u1|Add7~5\ : std_logic;
SIGNAL \WS2812_u1|Add7~6_combout\ : std_logic;
SIGNAL \WS2812_u1|Selector12~0_combout\ : std_logic;
SIGNAL \WS2812_u1|LessThan11~3_combout\ : std_logic;
SIGNAL \WS2812_u1|DIN~1_combout\ : std_logic;
SIGNAL \WS2812_u1|DIN~2_combout\ : std_logic;
SIGNAL \WS2812_u1|draw_mode.MODE_CONTROL~0_combout\ : std_logic;
SIGNAL \WS2812_u1|draw_mode.MODE_CONTROL~q\ : std_logic;
SIGNAL \WS2812_u1|ctrl_col~6_combout\ : std_logic;
SIGNAL \WS2812_u1|WideOr0~combout\ : std_logic;
SIGNAL \WS2812_u1|always1~7_combout\ : std_logic;
SIGNAL \WS2812_u1|ctrl_col~2_combout\ : std_logic;
SIGNAL \WS2812_u1|Add3~0_combout\ : std_logic;
SIGNAL \WS2812_u1|ctrl_col~5_combout\ : std_logic;
SIGNAL \WS2812_u1|ctrl_col[0]~3_combout\ : std_logic;
SIGNAL \WS2812_u1|ctrl_col~4_combout\ : std_logic;
SIGNAL \WS2812_u1|ctrl_col[0]~7_combout\ : std_logic;
SIGNAL \WS2812_u1|draw_col[0]~1_combout\ : std_logic;
SIGNAL \WS2812_u1|always2~1_combout\ : std_logic;
SIGNAL \WS2812_u1|always2~0_combout\ : std_logic;
SIGNAL \WS2812_u1|draw_col[1]~0_combout\ : std_logic;
SIGNAL \WS2812_u1|always2~2_combout\ : std_logic;
SIGNAL \WS2812_u1|ctrl_row~6_combout\ : std_logic;
SIGNAL \WS2812_u1|Add1~0_combout\ : std_logic;
SIGNAL \WS2812_u1|ctrl_row~5_combout\ : std_logic;
SIGNAL \WS2812_u1|always1~8_combout\ : std_logic;
SIGNAL \WS2812_u1|ctrl_row~2_combout\ : std_logic;
SIGNAL \WS2812_u1|ctrl_row[1]~3_combout\ : std_logic;
SIGNAL \WS2812_u1|ctrl_row~4_combout\ : std_logic;
SIGNAL \WS2812_u1|ctrl_row[1]~7_combout\ : std_logic;
SIGNAL \WS2812_u1|draw_row[0]~1_combout\ : std_logic;
SIGNAL \WS2812_u1|draw_row[0]~feeder_combout\ : std_logic;
SIGNAL \WS2812_u1|Mux0~1_combout\ : std_logic;
SIGNAL \WS2812_u1|Mux0~0_combout\ : std_logic;
SIGNAL \WS2812_u1|draw_row[1]~0_combout\ : std_logic;
SIGNAL \WS2812_u1|Mux0~2_combout\ : std_logic;
SIGNAL \WS2812_u1|DIN~0_combout\ : std_logic;
SIGNAL \WS2812_u1|DIN~3_combout\ : std_logic;
SIGNAL \WS2812_u1|DIN~q\ : std_logic;
SIGNAL \u_7seg|counter[0]~30_combout\ : std_logic;
SIGNAL \u_7seg|counter[1]~10_combout\ : std_logic;
SIGNAL \u_7seg|counter[1]~11\ : std_logic;
SIGNAL \u_7seg|counter[2]~12_combout\ : std_logic;
SIGNAL \u_7seg|counter[2]~13\ : std_logic;
SIGNAL \u_7seg|counter[3]~14_combout\ : std_logic;
SIGNAL \u_7seg|counter[3]~15\ : std_logic;
SIGNAL \u_7seg|counter[4]~16_combout\ : std_logic;
SIGNAL \u_7seg|counter[4]~17\ : std_logic;
SIGNAL \u_7seg|counter[5]~18_combout\ : std_logic;
SIGNAL \u_7seg|counter[5]~19\ : std_logic;
SIGNAL \u_7seg|counter[6]~20_combout\ : std_logic;
SIGNAL \u_7seg|counter[6]~21\ : std_logic;
SIGNAL \u_7seg|counter[7]~22_combout\ : std_logic;
SIGNAL \u_7seg|counter[7]~23\ : std_logic;
SIGNAL \u_7seg|counter[8]~24_combout\ : std_logic;
SIGNAL \u_7seg|counter[8]~25\ : std_logic;
SIGNAL \u_7seg|counter[9]~26_combout\ : std_logic;
SIGNAL \u_7seg|counter[9]~27\ : std_logic;
SIGNAL \u_7seg|counter[10]~28_combout\ : std_logic;
SIGNAL \u_7seg|counter[10]~clkctrl_outclk\ : std_logic;
SIGNAL \u_7seg|seg_com_num[0]~2_combout\ : std_logic;
SIGNAL \u_7seg|btn_z_r1~feeder_combout\ : std_logic;
SIGNAL \u_7seg|btn_z_r1~q\ : std_logic;
SIGNAL \u_7seg|btn_z_r2~q\ : std_logic;
SIGNAL \u_7seg|display_mode~0_combout\ : std_logic;
SIGNAL \u_7seg|display_mode~q\ : std_logic;
SIGNAL \u_7seg|seg_com_data[7][0]~q\ : std_logic;
SIGNAL \u_7seg|seg_com_data[0][7]~feeder_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[0][7]~q\ : std_logic;
SIGNAL \u_7seg|Mux42~4_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_num[1]~1_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_num[2]~0_combout\ : std_logic;
SIGNAL \u_7seg|current_val[14]~2_combout\ : std_logic;
SIGNAL \u_7seg|bcd~2_combout\ : std_logic;
SIGNAL \u_7seg|bcd~3_combout\ : std_logic;
SIGNAL \u_7seg|current_val[13]~1_combout\ : std_logic;
SIGNAL \u_7seg|current_val[15]~0_combout\ : std_logic;
SIGNAL \u_7seg|LessThan0~0_combout\ : std_logic;
SIGNAL \u_7seg|current_val[12]~3_combout\ : std_logic;
SIGNAL \u_7seg|LessThan1~0_combout\ : std_logic;
SIGNAL \u_7seg|current_val[11]~4_combout\ : std_logic;
SIGNAL \u_7seg|Add1~0_combout\ : std_logic;
SIGNAL \u_7seg|bcd~7_combout\ : std_logic;
SIGNAL \u_7seg|bcd~8_combout\ : std_logic;
SIGNAL \u_7seg|bcd~9_combout\ : std_logic;
SIGNAL \u_7seg|bcd~5_combout\ : std_logic;
SIGNAL \u_7seg|bcd~6_combout\ : std_logic;
SIGNAL \u_7seg|bcd~10_combout\ : std_logic;
SIGNAL \u_7seg|LessThan4~2_combout\ : std_logic;
SIGNAL \u_7seg|bcd~12_combout\ : std_logic;
SIGNAL \u_7seg|current_val[10]~5_combout\ : std_logic;
SIGNAL \u_7seg|bcd~13_combout\ : std_logic;
SIGNAL \u_7seg|bcd~11_combout\ : std_logic;
SIGNAL \u_7seg|bcd~14_combout\ : std_logic;
SIGNAL \u_7seg|bcd~4_combout\ : std_logic;
SIGNAL \u_7seg|bcd~23_combout\ : std_logic;
SIGNAL \u_7seg|bcd~15_combout\ : std_logic;
SIGNAL \u_7seg|bcd~16_combout\ : std_logic;
SIGNAL \u_7seg|bcd~17_combout\ : std_logic;
SIGNAL \u_7seg|current_val[9]~6_combout\ : std_logic;
SIGNAL \u_7seg|bcd~20_combout\ : std_logic;
SIGNAL \u_7seg|bcd~18_combout\ : std_logic;
SIGNAL \u_7seg|bcd~19_combout\ : std_logic;
SIGNAL \u_7seg|bcd~21_combout\ : std_logic;
SIGNAL \u_7seg|bcd~22_combout\ : std_logic;
SIGNAL \u_7seg|LessThan11~0_combout\ : std_logic;
SIGNAL \u_7seg|bcd~33_combout\ : std_logic;
SIGNAL \u_7seg|bcd~24_combout\ : std_logic;
SIGNAL \u_7seg|bcd~34_combout\ : std_logic;
SIGNAL \u_7seg|bcd~27_combout\ : std_logic;
SIGNAL \u_7seg|bcd~25_combout\ : std_logic;
SIGNAL \u_7seg|bcd~26_combout\ : std_logic;
SIGNAL \u_7seg|current_val[8]~7_combout\ : std_logic;
SIGNAL \u_7seg|bcd~28_combout\ : std_logic;
SIGNAL \u_7seg|bcd~29_combout\ : std_logic;
SIGNAL \u_7seg|bcd~30_combout\ : std_logic;
SIGNAL \u_7seg|bcd~31_combout\ : std_logic;
SIGNAL \u_7seg|bcd~32_combout\ : std_logic;
SIGNAL \u_7seg|bcd~58_combout\ : std_logic;
SIGNAL \u_7seg|bcd~37_combout\ : std_logic;
SIGNAL \u_7seg|bcd~35_combout\ : std_logic;
SIGNAL \u_7seg|current_val[7]~8_combout\ : std_logic;
SIGNAL \u_7seg|bcd~41_combout\ : std_logic;
SIGNAL \u_7seg|bcd~42_combout\ : std_logic;
SIGNAL \u_7seg|bcd~43_combout\ : std_logic;
SIGNAL \u_7seg|bcd~44_combout\ : std_logic;
SIGNAL \u_7seg|bcd~39_combout\ : std_logic;
SIGNAL \u_7seg|bcd~38_combout\ : std_logic;
SIGNAL \u_7seg|bcd~40_combout\ : std_logic;
SIGNAL \u_7seg|bcd~45_combout\ : std_logic;
SIGNAL \u_7seg|LessThan14~0_combout\ : std_logic;
SIGNAL \u_7seg|bcd~36_combout\ : std_logic;
SIGNAL \u_7seg|bcd~59_combout\ : std_logic;
SIGNAL \u_7seg|bcd~47_combout\ : std_logic;
SIGNAL \u_7seg|bcd~54_combout\ : std_logic;
SIGNAL \u_7seg|current_val[6]~9_combout\ : std_logic;
SIGNAL \u_7seg|bcd~53_combout\ : std_logic;
SIGNAL \u_7seg|bcd~52_combout\ : std_logic;
SIGNAL \u_7seg|bcd~55_combout\ : std_logic;
SIGNAL \u_7seg|bcd~51_combout\ : std_logic;
SIGNAL \u_7seg|bcd~49_combout\ : std_logic;
SIGNAL \u_7seg|bcd~50_combout\ : std_logic;
SIGNAL \u_7seg|bcd~56_combout\ : std_logic;
SIGNAL \u_7seg|bcd~46_combout\ : std_logic;
SIGNAL \u_7seg|bcd~48_combout\ : std_logic;
SIGNAL \u_7seg|bcd~57_combout\ : std_logic;
SIGNAL \u_7seg|bcd~60_combout\ : std_logic;
SIGNAL \u_7seg|bcd~62_combout\ : std_logic;
SIGNAL \u_7seg|bcd~61_combout\ : std_logic;
SIGNAL \u_7seg|bcd~64_combout\ : std_logic;
SIGNAL \u_7seg|bcd~67_combout\ : std_logic;
SIGNAL \u_7seg|bcd~69_combout\ : std_logic;
SIGNAL \u_7seg|current_val[5]~10_combout\ : std_logic;
SIGNAL \u_7seg|bcd~71_combout\ : std_logic;
SIGNAL \u_7seg|bcd~70_combout\ : std_logic;
SIGNAL \u_7seg|bcd~72_combout\ : std_logic;
SIGNAL \u_7seg|bcd~68_combout\ : std_logic;
SIGNAL \u_7seg|bcd~66_combout\ : std_logic;
SIGNAL \u_7seg|bcd~73_combout\ : std_logic;
SIGNAL \u_7seg|bcd~65_combout\ : std_logic;
SIGNAL \u_7seg|bcd~63_combout\ : std_logic;
SIGNAL \u_7seg|bcd~74_combout\ : std_logic;
SIGNAL \u_7seg|bcd~75_combout\ : std_logic;
SIGNAL \u_7seg|bcd~76_combout\ : std_logic;
SIGNAL \u_7seg|bcd~77_combout\ : std_logic;
SIGNAL \u_7seg|bcd~81_combout\ : std_logic;
SIGNAL \u_7seg|bcd~85_combout\ : std_logic;
SIGNAL \u_7seg|current_val[4]~11_combout\ : std_logic;
SIGNAL \u_7seg|bcd~84_combout\ : std_logic;
SIGNAL \u_7seg|bcd~86_combout\ : std_logic;
SIGNAL \u_7seg|bcd~87_combout\ : std_logic;
SIGNAL \u_7seg|bcd~83_combout\ : std_logic;
SIGNAL \u_7seg|bcd~82_combout\ : std_logic;
SIGNAL \u_7seg|bcd~88_combout\ : std_logic;
SIGNAL \u_7seg|bcd~78_combout\ : std_logic;
SIGNAL \u_7seg|bcd~79_combout\ : std_logic;
SIGNAL \u_7seg|bcd~80_combout\ : std_logic;
SIGNAL \u_7seg|bcd~89_combout\ : std_logic;
SIGNAL \u_7seg|bcd_val[16]~0_combout\ : std_logic;
SIGNAL \u_7seg|bcd_val[17]~1_combout\ : std_logic;
SIGNAL \u_7seg|bcd~90_combout\ : std_logic;
SIGNAL \u_7seg|bcd~91_combout\ : std_logic;
SIGNAL \u_7seg|bcd_val[17]~2_combout\ : std_logic;
SIGNAL \u_7seg|bcd_val[18]~3_combout\ : std_logic;
SIGNAL \u_7seg|bcd~92_combout\ : std_logic;
SIGNAL \u_7seg|bcd_val[19]~4_combout\ : std_logic;
SIGNAL \u_7seg|Mux6~0_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[4][0]~q\ : std_logic;
SIGNAL \u_7seg|Mux42~0_combout\ : std_logic;
SIGNAL \u_7seg|current_val[2]~13_combout\ : std_logic;
SIGNAL \u_7seg|bcd~96_combout\ : std_logic;
SIGNAL \u_7seg|current_val[3]~12_combout\ : std_logic;
SIGNAL \u_7seg|bcd~98_combout\ : std_logic;
SIGNAL \u_7seg|bcd~97_combout\ : std_logic;
SIGNAL \u_7seg|bcd~105_combout\ : std_logic;
SIGNAL \u_7seg|bcd~104_combout\ : std_logic;
SIGNAL \u_7seg|bcd~103_combout\ : std_logic;
SIGNAL \u_7seg|bcd~106_combout\ : std_logic;
SIGNAL \u_7seg|bcd~99_combout\ : std_logic;
SIGNAL \u_7seg|bcd~95_combout\ : std_logic;
SIGNAL \u_7seg|bcd~94_combout\ : std_logic;
SIGNAL \u_7seg|bcd~93_combout\ : std_logic;
SIGNAL \u_7seg|bcd~101_combout\ : std_logic;
SIGNAL \u_7seg|bcd~102_combout\ : std_logic;
SIGNAL \u_7seg|bcd~100_combout\ : std_logic;
SIGNAL \u_7seg|bcd_val[8]~5_combout\ : std_logic;
SIGNAL \u_7seg|bcd~108_combout\ : std_logic;
SIGNAL \u_7seg|bcd~110_combout\ : std_logic;
SIGNAL \u_7seg|bcd~107_combout\ : std_logic;
SIGNAL \u_7seg|bcd~109_combout\ : std_logic;
SIGNAL \u_7seg|bcd_val[10]~7_combout\ : std_logic;
SIGNAL \u_7seg|bcd_val[11]~8_combout\ : std_logic;
SIGNAL \u_7seg|bcd_val[9]~6_combout\ : std_logic;
SIGNAL \u_7seg|Mux20~0_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[2][0]~q\ : std_logic;
SIGNAL \u_7seg|bcd_val[13]~10_combout\ : std_logic;
SIGNAL \u_7seg|bcd_val[15]~12_combout\ : std_logic;
SIGNAL \u_7seg|bcd_val[14]~11_combout\ : std_logic;
SIGNAL \u_7seg|bcd_val[12]~9_combout\ : std_logic;
SIGNAL \u_7seg|Mux13~0_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[3][0]~q\ : std_logic;
SIGNAL \u_7seg|Mux42~1_combout\ : std_logic;
SIGNAL \u_7seg|bcd~112_combout\ : std_logic;
SIGNAL \u_7seg|current_val[1]~15_combout\ : std_logic;
SIGNAL \u_7seg|bcd~111_combout\ : std_logic;
SIGNAL \u_7seg|bcd~113_combout\ : std_logic;
SIGNAL \u_7seg|bcd_val[4]~16_combout\ : std_logic;
SIGNAL \u_7seg|bcd_val[6]~18_combout\ : std_logic;
SIGNAL \u_7seg|bcd_val[5]~17_combout\ : std_logic;
SIGNAL \u_7seg|bcd_val[7]~19_combout\ : std_logic;
SIGNAL \u_7seg|Mux27~0_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[1][0]~q\ : std_logic;
SIGNAL \u_7seg|current_val[0]~14_combout\ : std_logic;
SIGNAL \u_7seg|bcd_val[3]~15_combout\ : std_logic;
SIGNAL \u_7seg|bcd_val[2]~14_combout\ : std_logic;
SIGNAL \u_7seg|bcd_val[1]~13_combout\ : std_logic;
SIGNAL \u_7seg|Mux34~0_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[0][0]~q\ : std_logic;
SIGNAL \u_7seg|Mux42~2_combout\ : std_logic;
SIGNAL \u_7seg|Mux42~3_combout\ : std_logic;
SIGNAL \u_7seg|Mux42~5_combout\ : std_logic;
SIGNAL \u_7seg|Mux39~0_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[7][5]~1_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[7][5]~q\ : std_logic;
SIGNAL \u_7seg|Mux42~6_combout\ : std_logic;
SIGNAL \u_7seg|Mux5~0_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[4][1]~q\ : std_logic;
SIGNAL \u_7seg|Decoder0~0_combout\ : std_logic;
SIGNAL \u_7seg|Mux19~0_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[2][1]~q\ : std_logic;
SIGNAL \u_7seg|Mux12~0_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[3][1]~q\ : std_logic;
SIGNAL \u_7seg|Mux33~0_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[0][1]~q\ : std_logic;
SIGNAL \u_7seg|Mux26~0_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[1][1]~q\ : std_logic;
SIGNAL \u_7seg|Mux41~0_combout\ : std_logic;
SIGNAL \u_7seg|Mux41~1_combout\ : std_logic;
SIGNAL \u_7seg|Mux41~2_combout\ : std_logic;
SIGNAL \u_7seg|Mux41~3_combout\ : std_logic;
SIGNAL \u_7seg|seg_data[1]~feeder_combout\ : std_logic;
SIGNAL \u_7seg|Mux40~4_combout\ : std_logic;
SIGNAL \u_7seg|Mux40~8_combout\ : std_logic;
SIGNAL \u_7seg|Mux18~0_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[2][2]~q\ : std_logic;
SIGNAL \u_7seg|Mux11~0_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[3][2]~q\ : std_logic;
SIGNAL \u_7seg|Mux32~0_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[0][2]~q\ : std_logic;
SIGNAL \u_7seg|Mux25~0_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[1][2]~q\ : std_logic;
SIGNAL \u_7seg|Mux40~5_combout\ : std_logic;
SIGNAL \u_7seg|Mux40~6_combout\ : std_logic;
SIGNAL \u_7seg|Mux40~7_combout\ : std_logic;
SIGNAL \u_7seg|Mux42~7_combout\ : std_logic;
SIGNAL \u_7seg|Mux3~0_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[4][3]~q\ : std_logic;
SIGNAL \u_7seg|Mux39~3_combout\ : std_logic;
SIGNAL \u_7seg|Mux10~0_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[3][3]~q\ : std_logic;
SIGNAL \u_7seg|Mux17~0_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[2][3]~q\ : std_logic;
SIGNAL \u_7seg|Mux24~0_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[1][3]~q\ : std_logic;
SIGNAL \u_7seg|Mux31~0_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[0][3]~q\ : std_logic;
SIGNAL \u_7seg|Mux39~1_combout\ : std_logic;
SIGNAL \u_7seg|Mux39~2_combout\ : std_logic;
SIGNAL \u_7seg|Mux39~4_combout\ : std_logic;
SIGNAL \u_7seg|seg_data[3]~feeder_combout\ : std_logic;
SIGNAL \u_7seg|Mux2~0_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[4][4]~q\ : std_logic;
SIGNAL \u_7seg|Mux42~8_combout\ : std_logic;
SIGNAL \u_7seg|Mux23~0_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[1][4]~q\ : std_logic;
SIGNAL \u_7seg|Mux30~0_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[0][4]~q\ : std_logic;
SIGNAL \u_7seg|Mux42~10_combout\ : std_logic;
SIGNAL \u_7seg|Mux16~0_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[2][4]~q\ : std_logic;
SIGNAL \u_7seg|Mux9~0_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[3][4]~q\ : std_logic;
SIGNAL \u_7seg|Mux42~9_combout\ : std_logic;
SIGNAL \u_7seg|Mux38~0_combout\ : std_logic;
SIGNAL \u_7seg|Mux38~1_combout\ : std_logic;
SIGNAL \u_7seg|seg_data[4]~feeder_combout\ : std_logic;
SIGNAL \u_7seg|Mux1~0_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[4][5]~q\ : std_logic;
SIGNAL \u_7seg|Mux15~0_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[2][5]~q\ : std_logic;
SIGNAL \u_7seg|Mux8~0_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[3][5]~q\ : std_logic;
SIGNAL \u_7seg|Mux29~0_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[0][5]~q\ : std_logic;
SIGNAL \u_7seg|Mux22~0_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[1][5]~q\ : std_logic;
SIGNAL \u_7seg|Mux37~0_combout\ : std_logic;
SIGNAL \u_7seg|Mux37~1_combout\ : std_logic;
SIGNAL \u_7seg|Mux37~2_combout\ : std_logic;
SIGNAL \u_7seg|Mux37~3_combout\ : std_logic;
SIGNAL \u_7seg|seg_data[5]~feeder_combout\ : std_logic;
SIGNAL \u_7seg|Mux0~0_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[4][6]~q\ : std_logic;
SIGNAL \u_7seg|Mux36~2_combout\ : std_logic;
SIGNAL \u_7seg|Mux7~0_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[3][6]~q\ : std_logic;
SIGNAL \u_7seg|Mux14~0_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[2][6]~q\ : std_logic;
SIGNAL \u_7seg|Mux21~0_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[1][6]~q\ : std_logic;
SIGNAL \u_7seg|Mux28~0_combout\ : std_logic;
SIGNAL \u_7seg|seg_com_data[0][6]~q\ : std_logic;
SIGNAL \u_7seg|Mux36~0_combout\ : std_logic;
SIGNAL \u_7seg|Mux36~1_combout\ : std_logic;
SIGNAL \u_7seg|Mux36~3_combout\ : std_logic;
SIGNAL \u_7seg|seg_data[6]~feeder_combout\ : std_logic;
SIGNAL \u_7seg|seg_data[7]~0_combout\ : std_logic;
SIGNAL \u_7seg|seg_data[15]~1_combout\ : std_logic;
SIGNAL \u_7seg|Decoder0~1_combout\ : std_logic;
SIGNAL \u_7seg|Decoder0~2_combout\ : std_logic;
SIGNAL \u_7seg|Decoder0~3_combout\ : std_logic;
SIGNAL \u_7seg|Decoder0~4_combout\ : std_logic;
SIGNAL \u_7seg|Decoder0~5_combout\ : std_logic;
SIGNAL \u_7seg|Decoder0~6_combout\ : std_logic;
SIGNAL \u_7seg|Decoder0~7_combout\ : std_logic;
SIGNAL \u_7seg|Decoder0~8_combout\ : std_logic;
SIGNAL \WS2812_u1|move_timer\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \WS2812_u1|led_idx\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \WS2812_u1|draw_row\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \WS2812_u1|draw_col\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \WS2812_u1|ctrl_row\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \WS2812_u1|ctrl_col\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \WS2812_u1|clk_cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \WS2812_u1|bit_idx\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_adc|sub_step\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_adc|joystick_y\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_adc|joystick_x\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_adc|i2c_data_in\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_adc|delay_cnt\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \u_adc|data_high\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_btn|cnt\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \u_7seg|seg_com_num\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_adc|u_i2c|clk_cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_adc|u_i2c|shift_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_7seg|seg_com\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_adc|u_i2c|bit_cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_7seg|counter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \u_7seg|seg_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_adc|u_i2c|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_adc|u_i2c|phase\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_adc|u_i2c|ALT_INV_state~26_combout\ : std_logic;
SIGNAL \WS2812_u1|ALT_INV_state.STATE_SEND~q\ : std_logic;
SIGNAL \u_adc|u_i2c|ALT_INV_state.IDLE~q\ : std_logic;
SIGNAL \u_adc|ALT_INV_joystick_y\ : std_logic_vector(14 DOWNTO 4);
SIGNAL \u_adc|ALT_INV_joystick_x\ : std_logic_vector(14 DOWNTO 4);
SIGNAL \u_adc|u_i2c|ALT_INV_scl~q\ : std_logic;
SIGNAL \u_adc|u_i2c|ALT_INV_sda_oe~q\ : std_logic;
SIGNAL \u_adc|u_i2c|ALT_INV_sda_out~q\ : std_logic;
SIGNAL \u_adc|ALT_INV_sub_step[1]~13_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst_n <= rst_n;
SCL <= ww_SCL;
ww_ALRT <= ALRT;
ww_SW <= SW;
x_axis <= ww_x_axis;
y_axis <= ww_y_axis;
button_state <= ww_button_state;
DIN <= ww_DIN;
seg_data <= ww_seg_data;
seg_com <= ww_seg_com;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u_7seg|counter[10]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u_7seg|counter\(10));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\u_adc|u_i2c|ALT_INV_state~26_combout\ <= NOT \u_adc|u_i2c|state~26_combout\;
\WS2812_u1|ALT_INV_state.STATE_SEND~q\ <= NOT \WS2812_u1|state.STATE_SEND~q\;
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
\u_adc|u_i2c|ALT_INV_scl~q\ <= NOT \u_adc|u_i2c|scl~q\;
\u_adc|u_i2c|ALT_INV_sda_oe~q\ <= NOT \u_adc|u_i2c|sda_oe~q\;
\u_adc|u_i2c|ALT_INV_sda_out~q\ <= NOT \u_adc|u_i2c|sda_out~q\;
\u_adc|ALT_INV_sub_step[1]~13_combout\ <= NOT \u_adc|sub_step[1]~13_combout\;

-- Location: IOOBUF_X63_Y0_N2
\SDA~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|u_i2c|ALT_INV_sda_out~q\,
	oe => \u_adc|u_i2c|ALT_INV_sda_oe~q\,
	devoe => ww_devoe,
	o => \SDA~output_o\);

-- Location: IOOBUF_X67_Y3_N16
\SCL~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|u_i2c|ALT_INV_scl~q\,
	devoe => ww_devoe,
	o => \SCL~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\x_axis[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|joystick_x\(0),
	devoe => ww_devoe,
	o => \x_axis[0]~output_o\);

-- Location: IOOBUF_X50_Y43_N23
\x_axis[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|joystick_x\(1),
	devoe => ww_devoe,
	o => \x_axis[1]~output_o\);

-- Location: IOOBUF_X20_Y43_N2
\x_axis[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|joystick_x\(2),
	devoe => ww_devoe,
	o => \x_axis[2]~output_o\);

-- Location: IOOBUF_X29_Y43_N2
\x_axis[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|joystick_x\(3),
	devoe => ww_devoe,
	o => \x_axis[3]~output_o\);

-- Location: IOOBUF_X25_Y43_N2
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

-- Location: IOOBUF_X61_Y43_N16
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

-- Location: IOOBUF_X25_Y43_N9
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

-- Location: IOOBUF_X67_Y25_N16
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

-- Location: IOOBUF_X59_Y43_N9
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

-- Location: IOOBUF_X67_Y39_N9
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

-- Location: IOOBUF_X67_Y40_N23
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

-- Location: IOOBUF_X11_Y43_N16
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

-- Location: IOOBUF_X43_Y0_N2
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

-- Location: IOOBUF_X48_Y43_N9
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

-- Location: IOOBUF_X48_Y43_N16
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

-- Location: IOOBUF_X45_Y43_N2
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

-- Location: IOOBUF_X38_Y43_N30
\y_axis[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|joystick_y\(0),
	devoe => ww_devoe,
	o => \y_axis[0]~output_o\);

-- Location: IOOBUF_X59_Y43_N16
\y_axis[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|joystick_y\(1),
	devoe => ww_devoe,
	o => \y_axis[1]~output_o\);

-- Location: IOOBUF_X45_Y43_N9
\y_axis[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|joystick_y\(2),
	devoe => ww_devoe,
	o => \y_axis[2]~output_o\);

-- Location: IOOBUF_X41_Y0_N30
\y_axis[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_adc|joystick_y\(3),
	devoe => ww_devoe,
	o => \y_axis[3]~output_o\);

-- Location: IOOBUF_X41_Y43_N9
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

-- Location: IOOBUF_X43_Y0_N30
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

-- Location: IOOBUF_X25_Y43_N23
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

-- Location: IOOBUF_X45_Y0_N23
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

-- Location: IOOBUF_X27_Y43_N2
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

-- Location: IOOBUF_X29_Y43_N23
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

-- Location: IOOBUF_X38_Y0_N30
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

-- Location: IOOBUF_X38_Y0_N23
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

-- Location: IOOBUF_X67_Y26_N23
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

-- Location: IOOBUF_X45_Y43_N16
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

-- Location: IOOBUF_X67_Y27_N16
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

-- Location: IOOBUF_X67_Y31_N23
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

-- Location: IOOBUF_X67_Y10_N23
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

-- Location: IOOBUF_X29_Y0_N30
\DIN~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WS2812_u1|DIN~q\,
	devoe => ww_devoe,
	o => \DIN~output_o\);

-- Location: IOOBUF_X9_Y43_N2
\seg_data[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg|seg_data\(0),
	devoe => ww_devoe,
	o => \seg_data[0]~output_o\);

-- Location: IOOBUF_X5_Y43_N16
\seg_data[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg|seg_data\(1),
	devoe => ww_devoe,
	o => \seg_data[1]~output_o\);

-- Location: IOOBUF_X1_Y43_N16
\seg_data[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg|seg_data\(2),
	devoe => ww_devoe,
	o => \seg_data[2]~output_o\);

-- Location: IOOBUF_X0_Y40_N9
\seg_data[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg|seg_data\(3),
	devoe => ww_devoe,
	o => \seg_data[3]~output_o\);

-- Location: IOOBUF_X0_Y37_N16
\seg_data[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg|seg_data\(4),
	devoe => ww_devoe,
	o => \seg_data[4]~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\seg_data[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg|seg_data\(5),
	devoe => ww_devoe,
	o => \seg_data[5]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\seg_data[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg|seg_data\(6),
	devoe => ww_devoe,
	o => \seg_data[6]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\seg_data[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg|seg_data\(7),
	devoe => ww_devoe,
	o => \seg_data[7]~output_o\);

-- Location: IOOBUF_X67_Y28_N23
\seg_data[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg|seg_data\(8),
	devoe => ww_devoe,
	o => \seg_data[8]~output_o\);

-- Location: IOOBUF_X56_Y43_N16
\seg_data[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg|seg_data\(9),
	devoe => ww_devoe,
	o => \seg_data[9]~output_o\);

-- Location: IOOBUF_X54_Y43_N16
\seg_data[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg|seg_data\(10),
	devoe => ww_devoe,
	o => \seg_data[10]~output_o\);

-- Location: IOOBUF_X56_Y43_N23
\seg_data[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg|seg_data\(11),
	devoe => ww_devoe,
	o => \seg_data[11]~output_o\);

-- Location: IOOBUF_X22_Y43_N30
\seg_data[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg|seg_data\(12),
	devoe => ww_devoe,
	o => \seg_data[12]~output_o\);

-- Location: IOOBUF_X67_Y35_N2
\seg_data[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg|seg_data\(13),
	devoe => ww_devoe,
	o => \seg_data[13]~output_o\);

-- Location: IOOBUF_X67_Y34_N9
\seg_data[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg|seg_data\(14),
	devoe => ww_devoe,
	o => \seg_data[14]~output_o\);

-- Location: IOOBUF_X50_Y43_N2
\seg_data[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg|seg_data\(15),
	devoe => ww_devoe,
	o => \seg_data[15]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\seg_com[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg|seg_com\(0),
	devoe => ww_devoe,
	o => \seg_com[0]~output_o\);

-- Location: IOOBUF_X0_Y19_N9
\seg_com[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg|seg_com\(1),
	devoe => ww_devoe,
	o => \seg_com[1]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\seg_com[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg|seg_com\(2),
	devoe => ww_devoe,
	o => \seg_com[2]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\seg_com[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg|seg_com\(3),
	devoe => ww_devoe,
	o => \seg_com[3]~output_o\);

-- Location: IOOBUF_X0_Y38_N16
\seg_com[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg|seg_com\(4),
	devoe => ww_devoe,
	o => \seg_com[4]~output_o\);

-- Location: IOOBUF_X1_Y43_N23
\seg_com[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg|seg_com\(5),
	devoe => ww_devoe,
	o => \seg_com[5]~output_o\);

-- Location: IOOBUF_X3_Y43_N2
\seg_com[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg|seg_com\(6),
	devoe => ww_devoe,
	o => \seg_com[6]~output_o\);

-- Location: IOOBUF_X9_Y43_N9
\seg_com[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_7seg|seg_com\(7),
	devoe => ww_devoe,
	o => \seg_com[7]~output_o\);

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

-- Location: LCCOMB_X51_Y31_N16
\u_adc|i2c_start~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|i2c_start~1_combout\ = (\u_adc|i2c_busy_d~q\) # (!\u_adc|u_i2c|busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_adc|i2c_busy_d~q\,
	datad => \u_adc|u_i2c|busy~q\,
	combout => \u_adc|i2c_start~1_combout\);

-- Location: IOIBUF_X63_Y0_N1
\SDA~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SDA,
	o => \SDA~input_o\);

-- Location: LCCOMB_X51_Y29_N8
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

-- Location: LCCOMB_X51_Y29_N10
\u_adc|u_i2c|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Add0~2_combout\ = (\u_adc|u_i2c|clk_cnt\(1) & (!\u_adc|u_i2c|Add0~1\)) # (!\u_adc|u_i2c|clk_cnt\(1) & ((\u_adc|u_i2c|Add0~1\) # (GND)))
-- \u_adc|u_i2c|Add0~3\ = CARRY((!\u_adc|u_i2c|Add0~1\) # (!\u_adc|u_i2c|clk_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|clk_cnt\(1),
	datad => VCC,
	cin => \u_adc|u_i2c|Add0~1\,
	combout => \u_adc|u_i2c|Add0~2_combout\,
	cout => \u_adc|u_i2c|Add0~3\);

-- Location: LCCOMB_X51_Y29_N12
\u_adc|u_i2c|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Add0~4_combout\ = (\u_adc|u_i2c|clk_cnt\(2) & (\u_adc|u_i2c|Add0~3\ $ (GND))) # (!\u_adc|u_i2c|clk_cnt\(2) & (!\u_adc|u_i2c|Add0~3\ & VCC))
-- \u_adc|u_i2c|Add0~5\ = CARRY((\u_adc|u_i2c|clk_cnt\(2) & !\u_adc|u_i2c|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|u_i2c|clk_cnt\(2),
	datad => VCC,
	cin => \u_adc|u_i2c|Add0~3\,
	combout => \u_adc|u_i2c|Add0~4_combout\,
	cout => \u_adc|u_i2c|Add0~5\);

-- Location: LCCOMB_X51_Y29_N2
\u_adc|u_i2c|clk_cnt~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|clk_cnt~4_combout\ = (\u_adc|u_i2c|Add0~4_combout\ & ((!\u_adc|u_i2c|Equal0~1_combout\) # (!\u_adc|u_i2c|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|Equal0~0_combout\,
	datab => \u_adc|u_i2c|Add0~4_combout\,
	datac => \u_adc|u_i2c|Equal0~1_combout\,
	combout => \u_adc|u_i2c|clk_cnt~4_combout\);

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

-- Location: FF_X51_Y29_N3
\u_adc|u_i2c|clk_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|clk_cnt~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|clk_cnt\(2));

-- Location: LCCOMB_X51_Y29_N14
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

-- Location: LCCOMB_X51_Y29_N24
\u_adc|u_i2c|clk_cnt~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|clk_cnt~3_combout\ = (\u_adc|u_i2c|Add0~6_combout\ & ((!\u_adc|u_i2c|Equal0~0_combout\) # (!\u_adc|u_i2c|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|Equal0~1_combout\,
	datac => \u_adc|u_i2c|Add0~6_combout\,
	datad => \u_adc|u_i2c|Equal0~0_combout\,
	combout => \u_adc|u_i2c|clk_cnt~3_combout\);

-- Location: FF_X51_Y29_N25
\u_adc|u_i2c|clk_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|clk_cnt~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|clk_cnt\(3));

-- Location: LCCOMB_X51_Y29_N16
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

-- Location: LCCOMB_X51_Y29_N28
\u_adc|u_i2c|clk_cnt~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|clk_cnt~2_combout\ = (\u_adc|u_i2c|Add0~8_combout\ & ((!\u_adc|u_i2c|Equal0~1_combout\) # (!\u_adc|u_i2c|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|Equal0~0_combout\,
	datac => \u_adc|u_i2c|Equal0~1_combout\,
	datad => \u_adc|u_i2c|Add0~8_combout\,
	combout => \u_adc|u_i2c|clk_cnt~2_combout\);

-- Location: FF_X51_Y29_N29
\u_adc|u_i2c|clk_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|clk_cnt~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|clk_cnt\(4));

-- Location: LCCOMB_X51_Y29_N18
\u_adc|u_i2c|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Add0~10_combout\ = (\u_adc|u_i2c|clk_cnt\(5) & (!\u_adc|u_i2c|Add0~9\)) # (!\u_adc|u_i2c|clk_cnt\(5) & ((\u_adc|u_i2c|Add0~9\) # (GND)))
-- \u_adc|u_i2c|Add0~11\ = CARRY((!\u_adc|u_i2c|Add0~9\) # (!\u_adc|u_i2c|clk_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|clk_cnt\(5),
	datad => VCC,
	cin => \u_adc|u_i2c|Add0~9\,
	combout => \u_adc|u_i2c|Add0~10_combout\,
	cout => \u_adc|u_i2c|Add0~11\);

-- Location: LCCOMB_X51_Y29_N30
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

-- Location: FF_X51_Y29_N31
\u_adc|u_i2c|clk_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|clk_cnt~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|clk_cnt\(5));

-- Location: LCCOMB_X51_Y29_N20
\u_adc|u_i2c|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Add0~12_combout\ = (\u_adc|u_i2c|clk_cnt\(6) & (\u_adc|u_i2c|Add0~11\ $ (GND))) # (!\u_adc|u_i2c|clk_cnt\(6) & (!\u_adc|u_i2c|Add0~11\ & VCC))
-- \u_adc|u_i2c|Add0~13\ = CARRY((\u_adc|u_i2c|clk_cnt\(6) & !\u_adc|u_i2c|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|u_i2c|clk_cnt\(6),
	datad => VCC,
	cin => \u_adc|u_i2c|Add0~11\,
	combout => \u_adc|u_i2c|Add0~12_combout\,
	cout => \u_adc|u_i2c|Add0~13\);

-- Location: LCCOMB_X51_Y29_N0
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

-- Location: FF_X51_Y29_N1
\u_adc|u_i2c|clk_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|clk_cnt~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|clk_cnt\(6));

-- Location: LCCOMB_X51_Y29_N22
\u_adc|u_i2c|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Add0~14_combout\ = \u_adc|u_i2c|clk_cnt\(7) $ (\u_adc|u_i2c|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|clk_cnt\(7),
	cin => \u_adc|u_i2c|Add0~13\,
	combout => \u_adc|u_i2c|Add0~14_combout\);

-- Location: FF_X51_Y29_N23
\u_adc|u_i2c|clk_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|Add0~14_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|clk_cnt\(7));

-- Location: LCCOMB_X51_Y29_N6
\u_adc|u_i2c|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Equal0~0_combout\ = (\u_adc|u_i2c|clk_cnt\(5) & (\u_adc|u_i2c|clk_cnt\(4) & (!\u_adc|u_i2c|clk_cnt\(7) & \u_adc|u_i2c|clk_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|clk_cnt\(5),
	datab => \u_adc|u_i2c|clk_cnt\(4),
	datac => \u_adc|u_i2c|clk_cnt\(7),
	datad => \u_adc|u_i2c|clk_cnt\(6),
	combout => \u_adc|u_i2c|Equal0~0_combout\);

-- Location: LCCOMB_X51_Y29_N4
\u_adc|u_i2c|clk_cnt~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|clk_cnt~5_combout\ = (\u_adc|u_i2c|Add0~0_combout\ & ((!\u_adc|u_i2c|Equal0~0_combout\) # (!\u_adc|u_i2c|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|Equal0~1_combout\,
	datac => \u_adc|u_i2c|Add0~0_combout\,
	datad => \u_adc|u_i2c|Equal0~0_combout\,
	combout => \u_adc|u_i2c|clk_cnt~5_combout\);

-- Location: FF_X51_Y29_N5
\u_adc|u_i2c|clk_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|clk_cnt~5_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|clk_cnt\(0));

-- Location: FF_X51_Y29_N11
\u_adc|u_i2c|clk_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|Add0~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|clk_cnt\(1));

-- Location: LCCOMB_X51_Y29_N26
\u_adc|u_i2c|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Equal0~1_combout\ = (!\u_adc|u_i2c|clk_cnt\(1) & (\u_adc|u_i2c|clk_cnt\(2) & (!\u_adc|u_i2c|clk_cnt\(0) & \u_adc|u_i2c|clk_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|clk_cnt\(1),
	datab => \u_adc|u_i2c|clk_cnt\(2),
	datac => \u_adc|u_i2c|clk_cnt\(0),
	datad => \u_adc|u_i2c|clk_cnt\(3),
	combout => \u_adc|u_i2c|Equal0~1_combout\);

-- Location: LCCOMB_X51_Y31_N8
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

-- Location: FF_X51_Y31_N9
\u_adc|u_i2c|i2c_tick\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|Equal0~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|i2c_tick~q\);

-- Location: LCCOMB_X50_Y31_N6
\u_adc|i2c_done~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|i2c_done~0_combout\ = (!\u_adc|u_i2c|busy~q\ & \u_adc|i2c_busy_d~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|u_i2c|busy~q\,
	datac => \u_adc|i2c_busy_d~q\,
	combout => \u_adc|i2c_done~0_combout\);

-- Location: LCCOMB_X50_Y31_N30
\u_adc|sub_step~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|sub_step~14_combout\ = (\u_adc|i2c_done~0_combout\ & ((\u_adc|sub_step\(0) $ (\u_adc|sub_step\(1))) # (!\u_adc|joystick_x[12]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(0),
	datab => \u_adc|joystick_x[12]~2_combout\,
	datac => \u_adc|sub_step\(1),
	datad => \u_adc|i2c_done~0_combout\,
	combout => \u_adc|sub_step~14_combout\);

-- Location: LCCOMB_X49_Y30_N24
\u_adc|always2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|always2~0_combout\ = (\u_adc|sub_step\(3) & ((\u_adc|sub_step\(0) & (\u_adc|sub_step\(1) & \u_adc|sub_step\(2))) # (!\u_adc|sub_step\(0) & (!\u_adc|sub_step\(1) & !\u_adc|sub_step\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(3),
	datab => \u_adc|sub_step\(0),
	datac => \u_adc|sub_step\(1),
	datad => \u_adc|sub_step\(2),
	combout => \u_adc|always2~0_combout\);

-- Location: LCCOMB_X51_Y30_N6
\u_adc|Selector22~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector22~2_combout\ = (\u_adc|sub_step\(1) & (\u_adc|sub_step\(2) & (\u_adc|sub_step\(3) $ (!\u_adc|sub_step\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(3),
	datab => \u_adc|sub_step\(1),
	datac => \u_adc|sub_step\(0),
	datad => \u_adc|sub_step\(2),
	combout => \u_adc|Selector22~2_combout\);

-- Location: LCCOMB_X50_Y29_N8
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

-- Location: LCCOMB_X44_Y31_N8
\WS2812_u1|sys_mode.MODE_CLEAR~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|sys_mode.MODE_CLEAR~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \WS2812_u1|sys_mode.MODE_CLEAR~feeder_combout\);

-- Location: FF_X44_Y31_N9
\WS2812_u1|sys_mode.MODE_CLEAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|sys_mode.MODE_CLEAR~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|sys_mode.MODE_CLEAR~q\);

-- Location: LCCOMB_X49_Y30_N10
\u_adc|Selector20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector20~0_combout\ = (\u_adc|current_state.STATE_READ_CH0~q\ & \WS2812_u1|sys_mode.MODE_CLEAR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_adc|current_state.STATE_READ_CH0~q\,
	datad => \WS2812_u1|sys_mode.MODE_CLEAR~q\,
	combout => \u_adc|Selector20~0_combout\);

-- Location: LCCOMB_X50_Y30_N22
\u_adc|Selector20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector20~1_combout\ = ((!\u_adc|current_state.STATE_WRITE_CH1~q\ & !\u_adc|current_state.STATE_WRITE_CH0~q\)) # (!\u_adc|Selector22~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|current_state.STATE_WRITE_CH1~q\,
	datab => \u_adc|current_state.STATE_WRITE_CH0~q\,
	datad => \u_adc|Selector22~2_combout\,
	combout => \u_adc|Selector20~1_combout\);

-- Location: LCCOMB_X49_Y30_N26
\u_adc|Selector20~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector20~2_combout\ = (\u_adc|Selector20~0_combout\ & (((!\u_adc|always2~0_combout\ & \u_adc|Selector20~1_combout\)) # (!\u_adc|always1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector20~0_combout\,
	datab => \u_adc|always2~0_combout\,
	datac => \u_adc|always1~7_combout\,
	datad => \u_adc|Selector20~1_combout\,
	combout => \u_adc|Selector20~2_combout\);

-- Location: LCCOMB_X49_Y30_N28
\u_adc|Selector20~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector20~3_combout\ = (\u_adc|LessThan0~7_combout\ & (!\u_adc|current_state.STATE_WAIT_CH1~q\ & ((\u_adc|Selector20~2_combout\) # (\u_adc|current_state.STATE_WAIT_CH0~q\)))) # (!\u_adc|LessThan0~7_combout\ & (((\u_adc|Selector20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|current_state.STATE_WAIT_CH1~q\,
	datab => \u_adc|LessThan0~7_combout\,
	datac => \u_adc|Selector20~2_combout\,
	datad => \u_adc|current_state.STATE_WAIT_CH0~q\,
	combout => \u_adc|Selector20~3_combout\);

-- Location: FF_X49_Y30_N29
\u_adc|current_state.STATE_READ_CH0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|Selector20~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|current_state.STATE_READ_CH0~q\);

-- Location: LCCOMB_X51_Y30_N4
\u_adc|Selector21~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector21~2_combout\ = (\u_adc|current_state.STATE_READ_CH0~q\ & \u_adc|always2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_adc|current_state.STATE_READ_CH0~q\,
	datad => \u_adc|always2~0_combout\,
	combout => \u_adc|Selector21~2_combout\);

-- Location: LCCOMB_X51_Y30_N24
\u_adc|Selector21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector21~0_combout\ = (!\u_adc|current_state.STATE_READ_CH0~q\ & !\u_adc|current_state.STATE_READ_CH1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_adc|current_state.STATE_READ_CH0~q\,
	datad => \u_adc|current_state.STATE_READ_CH1~q\,
	combout => \u_adc|Selector21~0_combout\);

-- Location: LCCOMB_X50_Y30_N0
\u_adc|Selector21~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector21~3_combout\ = ((\u_adc|LessThan0~7_combout\ & ((\u_adc|current_state.STATE_WAIT_CH0~q\) # (\u_adc|current_state.STATE_WAIT_CH1~q\)))) # (!\u_adc|Selector20~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|current_state.STATE_WAIT_CH0~q\,
	datab => \u_adc|current_state.STATE_WAIT_CH1~q\,
	datac => \u_adc|Selector20~1_combout\,
	datad => \u_adc|LessThan0~7_combout\,
	combout => \u_adc|Selector21~3_combout\);

-- Location: LCCOMB_X50_Y30_N18
\u_adc|Selector21~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector21~4_combout\ = (\u_adc|Selector21~2_combout\) # (((\u_adc|Selector21~0_combout\ & \u_adc|Selector21~3_combout\)) # (!\WS2812_u1|sys_mode.MODE_CLEAR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector21~2_combout\,
	datab => \u_adc|Selector21~0_combout\,
	datac => \WS2812_u1|sys_mode.MODE_CLEAR~q\,
	datad => \u_adc|Selector21~3_combout\,
	combout => \u_adc|Selector21~4_combout\);

-- Location: LCCOMB_X50_Y30_N12
\u_adc|Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector18~0_combout\ = (\u_adc|Selector21~1_combout\) # (((\u_adc|current_state.STATE_WRITE_CH0~q\ & !\u_adc|Selector21~4_combout\)) # (!\WS2812_u1|sys_mode.MODE_CLEAR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector21~1_combout\,
	datab => \WS2812_u1|sys_mode.MODE_CLEAR~q\,
	datac => \u_adc|current_state.STATE_WRITE_CH0~q\,
	datad => \u_adc|Selector21~4_combout\,
	combout => \u_adc|Selector18~0_combout\);

-- Location: FF_X50_Y30_N13
\u_adc|current_state.STATE_WRITE_CH0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|Selector18~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|current_state.STATE_WRITE_CH0~q\);

-- Location: LCCOMB_X49_Y30_N6
\u_adc|i2c_read~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|i2c_read~0_combout\ = (!\u_adc|current_state.STATE_WRITE_CH1~q\ & !\u_adc|current_state.STATE_WRITE_CH0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|current_state.STATE_WRITE_CH1~q\,
	datac => \u_adc|current_state.STATE_WRITE_CH0~q\,
	combout => \u_adc|i2c_read~0_combout\);

-- Location: LCCOMB_X50_Y30_N24
\u_adc|Selector19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector19~0_combout\ = ((!\u_adc|Selector21~2_combout\ & (!\u_adc|Selector21~1_combout\ & !\u_adc|LessThan0~7_combout\))) # (!\u_adc|i2c_read~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector21~2_combout\,
	datab => \u_adc|i2c_read~0_combout\,
	datac => \u_adc|Selector21~1_combout\,
	datad => \u_adc|LessThan0~7_combout\,
	combout => \u_adc|Selector19~0_combout\);

-- Location: LCCOMB_X50_Y30_N10
\u_adc|Selector19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector19~1_combout\ = (\u_adc|current_state.STATE_WAIT_CH0~q\ & (\WS2812_u1|sys_mode.MODE_CLEAR~q\ & \u_adc|Selector19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|current_state.STATE_WAIT_CH0~q\,
	datac => \WS2812_u1|sys_mode.MODE_CLEAR~q\,
	datad => \u_adc|Selector19~0_combout\,
	combout => \u_adc|Selector19~1_combout\);

-- Location: LCCOMB_X50_Y30_N28
\u_adc|Selector19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector19~2_combout\ = (\u_adc|Selector22~2_combout\ & (!\u_adc|current_state.STATE_WRITE_CH1~q\ & ((\u_adc|current_state.STATE_WRITE_CH0~q\) # (\u_adc|Selector19~1_combout\)))) # (!\u_adc|Selector22~2_combout\ & 
-- (((\u_adc|Selector19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector22~2_combout\,
	datab => \u_adc|current_state.STATE_WRITE_CH1~q\,
	datac => \u_adc|current_state.STATE_WRITE_CH0~q\,
	datad => \u_adc|Selector19~1_combout\,
	combout => \u_adc|Selector19~2_combout\);

-- Location: FF_X50_Y30_N29
\u_adc|current_state.STATE_WAIT_CH0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|Selector19~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|current_state.STATE_WAIT_CH0~q\);

-- Location: LCCOMB_X50_Y30_N8
\u_adc|always1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|always1~7_combout\ = (!\u_adc|current_state.STATE_WAIT_CH1~q\ & !\u_adc|current_state.STATE_WAIT_CH0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|current_state.STATE_WAIT_CH1~q\,
	datad => \u_adc|current_state.STATE_WAIT_CH0~q\,
	combout => \u_adc|always1~7_combout\);

-- Location: FF_X50_Y29_N9
\u_adc|delay_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[0]~24_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(0));

-- Location: LCCOMB_X50_Y29_N10
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

-- Location: FF_X50_Y29_N11
\u_adc|delay_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[1]~26_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(1));

-- Location: LCCOMB_X50_Y29_N12
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

-- Location: FF_X50_Y29_N13
\u_adc|delay_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[2]~28_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(2));

-- Location: LCCOMB_X50_Y29_N14
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

-- Location: FF_X50_Y29_N15
\u_adc|delay_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[3]~30_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(3));

-- Location: LCCOMB_X50_Y29_N16
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

-- Location: FF_X50_Y29_N17
\u_adc|delay_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[4]~32_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(4));

-- Location: LCCOMB_X50_Y29_N18
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

-- Location: FF_X50_Y29_N19
\u_adc|delay_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[5]~34_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(5));

-- Location: LCCOMB_X50_Y29_N20
\u_adc|delay_cnt[6]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|delay_cnt[6]~36_combout\ = (\u_adc|delay_cnt\(6) & (\u_adc|delay_cnt[5]~35\ $ (GND))) # (!\u_adc|delay_cnt\(6) & (!\u_adc|delay_cnt[5]~35\ & VCC))
-- \u_adc|delay_cnt[6]~37\ = CARRY((\u_adc|delay_cnt\(6) & !\u_adc|delay_cnt[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|delay_cnt\(6),
	datad => VCC,
	cin => \u_adc|delay_cnt[5]~35\,
	combout => \u_adc|delay_cnt[6]~36_combout\,
	cout => \u_adc|delay_cnt[6]~37\);

-- Location: FF_X50_Y29_N21
\u_adc|delay_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[6]~36_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(6));

-- Location: LCCOMB_X50_Y29_N22
\u_adc|delay_cnt[7]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|delay_cnt[7]~38_combout\ = (\u_adc|delay_cnt\(7) & (!\u_adc|delay_cnt[6]~37\)) # (!\u_adc|delay_cnt\(7) & ((\u_adc|delay_cnt[6]~37\) # (GND)))
-- \u_adc|delay_cnt[7]~39\ = CARRY((!\u_adc|delay_cnt[6]~37\) # (!\u_adc|delay_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|delay_cnt\(7),
	datad => VCC,
	cin => \u_adc|delay_cnt[6]~37\,
	combout => \u_adc|delay_cnt[7]~38_combout\,
	cout => \u_adc|delay_cnt[7]~39\);

-- Location: FF_X50_Y29_N23
\u_adc|delay_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[7]~38_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(7));

-- Location: LCCOMB_X50_Y29_N24
\u_adc|delay_cnt[8]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|delay_cnt[8]~40_combout\ = (\u_adc|delay_cnt\(8) & (\u_adc|delay_cnt[7]~39\ $ (GND))) # (!\u_adc|delay_cnt\(8) & (!\u_adc|delay_cnt[7]~39\ & VCC))
-- \u_adc|delay_cnt[8]~41\ = CARRY((\u_adc|delay_cnt\(8) & !\u_adc|delay_cnt[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|delay_cnt\(8),
	datad => VCC,
	cin => \u_adc|delay_cnt[7]~39\,
	combout => \u_adc|delay_cnt[8]~40_combout\,
	cout => \u_adc|delay_cnt[8]~41\);

-- Location: FF_X50_Y29_N25
\u_adc|delay_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[8]~40_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(8));

-- Location: LCCOMB_X50_Y29_N26
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

-- Location: FF_X50_Y29_N27
\u_adc|delay_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[9]~42_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(9));

-- Location: LCCOMB_X50_Y29_N28
\u_adc|delay_cnt[10]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|delay_cnt[10]~44_combout\ = (\u_adc|delay_cnt\(10) & (\u_adc|delay_cnt[9]~43\ $ (GND))) # (!\u_adc|delay_cnt\(10) & (!\u_adc|delay_cnt[9]~43\ & VCC))
-- \u_adc|delay_cnt[10]~45\ = CARRY((\u_adc|delay_cnt\(10) & !\u_adc|delay_cnt[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|delay_cnt\(10),
	datad => VCC,
	cin => \u_adc|delay_cnt[9]~43\,
	combout => \u_adc|delay_cnt[10]~44_combout\,
	cout => \u_adc|delay_cnt[10]~45\);

-- Location: FF_X50_Y29_N29
\u_adc|delay_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[10]~44_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(10));

-- Location: LCCOMB_X50_Y29_N30
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

-- Location: FF_X50_Y29_N31
\u_adc|delay_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[11]~46_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(11));

-- Location: LCCOMB_X50_Y28_N0
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

-- Location: FF_X50_Y28_N1
\u_adc|delay_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[12]~48_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(12));

-- Location: LCCOMB_X50_Y28_N2
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

-- Location: FF_X50_Y28_N3
\u_adc|delay_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[13]~50_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(13));

-- Location: LCCOMB_X50_Y28_N4
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

-- Location: FF_X50_Y28_N5
\u_adc|delay_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[14]~52_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(14));

-- Location: LCCOMB_X50_Y28_N6
\u_adc|delay_cnt[15]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|delay_cnt[15]~54_combout\ = (\u_adc|delay_cnt\(15) & (!\u_adc|delay_cnt[14]~53\)) # (!\u_adc|delay_cnt\(15) & ((\u_adc|delay_cnt[14]~53\) # (GND)))
-- \u_adc|delay_cnt[15]~55\ = CARRY((!\u_adc|delay_cnt[14]~53\) # (!\u_adc|delay_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|delay_cnt\(15),
	datad => VCC,
	cin => \u_adc|delay_cnt[14]~53\,
	combout => \u_adc|delay_cnt[15]~54_combout\,
	cout => \u_adc|delay_cnt[15]~55\);

-- Location: FF_X50_Y28_N7
\u_adc|delay_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[15]~54_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(15));

-- Location: LCCOMB_X50_Y28_N8
\u_adc|delay_cnt[16]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|delay_cnt[16]~56_combout\ = (\u_adc|delay_cnt\(16) & (\u_adc|delay_cnt[15]~55\ $ (GND))) # (!\u_adc|delay_cnt\(16) & (!\u_adc|delay_cnt[15]~55\ & VCC))
-- \u_adc|delay_cnt[16]~57\ = CARRY((\u_adc|delay_cnt\(16) & !\u_adc|delay_cnt[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|delay_cnt\(16),
	datad => VCC,
	cin => \u_adc|delay_cnt[15]~55\,
	combout => \u_adc|delay_cnt[16]~56_combout\,
	cout => \u_adc|delay_cnt[16]~57\);

-- Location: FF_X50_Y28_N9
\u_adc|delay_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[16]~56_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(16));

-- Location: LCCOMB_X50_Y28_N10
\u_adc|delay_cnt[17]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|delay_cnt[17]~58_combout\ = (\u_adc|delay_cnt\(17) & (!\u_adc|delay_cnt[16]~57\)) # (!\u_adc|delay_cnt\(17) & ((\u_adc|delay_cnt[16]~57\) # (GND)))
-- \u_adc|delay_cnt[17]~59\ = CARRY((!\u_adc|delay_cnt[16]~57\) # (!\u_adc|delay_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|delay_cnt\(17),
	datad => VCC,
	cin => \u_adc|delay_cnt[16]~57\,
	combout => \u_adc|delay_cnt[17]~58_combout\,
	cout => \u_adc|delay_cnt[17]~59\);

-- Location: FF_X50_Y28_N11
\u_adc|delay_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[17]~58_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(17));

-- Location: LCCOMB_X50_Y28_N12
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

-- Location: FF_X50_Y28_N13
\u_adc|delay_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[18]~60_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(18));

-- Location: LCCOMB_X50_Y28_N14
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

-- Location: FF_X50_Y28_N15
\u_adc|delay_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[19]~62_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(19));

-- Location: LCCOMB_X50_Y28_N16
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

-- Location: FF_X50_Y28_N17
\u_adc|delay_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[20]~64_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(20));

-- Location: LCCOMB_X50_Y28_N18
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

-- Location: FF_X50_Y28_N19
\u_adc|delay_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[21]~66_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(21));

-- Location: LCCOMB_X50_Y28_N20
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

-- Location: FF_X50_Y28_N21
\u_adc|delay_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[22]~68_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(22));

-- Location: LCCOMB_X50_Y28_N22
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

-- Location: FF_X50_Y28_N23
\u_adc|delay_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|delay_cnt[23]~70_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_adc|always1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|delay_cnt\(23));

-- Location: LCCOMB_X50_Y28_N28
\u_adc|LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|LessThan0~6_combout\ = (\u_adc|delay_cnt\(17) & (\u_adc|delay_cnt\(18) & (\u_adc|delay_cnt\(16) & \u_adc|delay_cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|delay_cnt\(17),
	datab => \u_adc|delay_cnt\(18),
	datac => \u_adc|delay_cnt\(16),
	datad => \u_adc|delay_cnt\(15),
	combout => \u_adc|LessThan0~6_combout\);

-- Location: LCCOMB_X50_Y29_N2
\u_adc|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|LessThan0~4_combout\ = (\u_adc|delay_cnt\(11)) # ((\u_adc|delay_cnt\(12)) # ((\u_adc|delay_cnt\(9)) # (\u_adc|delay_cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|delay_cnt\(11),
	datab => \u_adc|delay_cnt\(12),
	datac => \u_adc|delay_cnt\(9),
	datad => \u_adc|delay_cnt\(10),
	combout => \u_adc|LessThan0~4_combout\);

-- Location: LCCOMB_X50_Y29_N4
\u_adc|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|LessThan0~1_combout\ = (\u_adc|delay_cnt\(2)) # ((\u_adc|delay_cnt\(3)) # ((\u_adc|delay_cnt\(0)) # (\u_adc|delay_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|delay_cnt\(2),
	datab => \u_adc|delay_cnt\(3),
	datac => \u_adc|delay_cnt\(0),
	datad => \u_adc|delay_cnt\(1),
	combout => \u_adc|LessThan0~1_combout\);

-- Location: LCCOMB_X50_Y29_N6
\u_adc|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|LessThan0~2_combout\ = (\u_adc|delay_cnt\(5) & ((\u_adc|delay_cnt\(4)) # (\u_adc|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|delay_cnt\(4),
	datac => \u_adc|LessThan0~1_combout\,
	datad => \u_adc|delay_cnt\(5),
	combout => \u_adc|LessThan0~2_combout\);

-- Location: LCCOMB_X50_Y29_N0
\u_adc|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|LessThan0~3_combout\ = (\u_adc|delay_cnt\(8) & ((\u_adc|LessThan0~2_combout\) # ((\u_adc|delay_cnt\(6)) # (\u_adc|delay_cnt\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|LessThan0~2_combout\,
	datab => \u_adc|delay_cnt\(6),
	datac => \u_adc|delay_cnt\(7),
	datad => \u_adc|delay_cnt\(8),
	combout => \u_adc|LessThan0~3_combout\);

-- Location: LCCOMB_X50_Y28_N30
\u_adc|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|LessThan0~5_combout\ = (\u_adc|delay_cnt\(14)) # ((\u_adc|delay_cnt\(13) & ((\u_adc|LessThan0~4_combout\) # (\u_adc|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|LessThan0~4_combout\,
	datab => \u_adc|delay_cnt\(13),
	datac => \u_adc|delay_cnt\(14),
	datad => \u_adc|LessThan0~3_combout\,
	combout => \u_adc|LessThan0~5_combout\);

-- Location: LCCOMB_X50_Y28_N24
\u_adc|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|LessThan0~0_combout\ = (\u_adc|delay_cnt\(22)) # ((\u_adc|delay_cnt\(21)) # ((\u_adc|delay_cnt\(19)) # (\u_adc|delay_cnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|delay_cnt\(22),
	datab => \u_adc|delay_cnt\(21),
	datac => \u_adc|delay_cnt\(19),
	datad => \u_adc|delay_cnt\(20),
	combout => \u_adc|LessThan0~0_combout\);

-- Location: LCCOMB_X50_Y28_N26
\u_adc|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|LessThan0~7_combout\ = (\u_adc|delay_cnt\(23)) # ((\u_adc|LessThan0~0_combout\) # ((\u_adc|LessThan0~6_combout\ & \u_adc|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|delay_cnt\(23),
	datab => \u_adc|LessThan0~6_combout\,
	datac => \u_adc|LessThan0~5_combout\,
	datad => \u_adc|LessThan0~0_combout\,
	combout => \u_adc|LessThan0~7_combout\);

-- Location: LCCOMB_X50_Y30_N2
\u_adc|Selector22~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector22~3_combout\ = (\u_adc|Selector22~2_combout\ & ((\u_adc|current_state.STATE_WRITE_CH1~q\) # ((\u_adc|current_state.STATE_WAIT_CH1~q\ & !\u_adc|LessThan0~7_combout\)))) # (!\u_adc|Selector22~2_combout\ & 
-- (\u_adc|current_state.STATE_WAIT_CH1~q\ & ((!\u_adc|LessThan0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector22~2_combout\,
	datab => \u_adc|current_state.STATE_WAIT_CH1~q\,
	datac => \u_adc|current_state.STATE_WRITE_CH1~q\,
	datad => \u_adc|LessThan0~7_combout\,
	combout => \u_adc|Selector22~3_combout\);

-- Location: FF_X50_Y30_N23
\u_adc|current_state.STATE_WAIT_CH1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_adc|Selector22~3_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|current_state.STATE_WAIT_CH1~q\);

-- Location: LCCOMB_X50_Y30_N26
\u_adc|Selector23~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector23~2_combout\ = (\u_adc|always2~0_combout\ & (\u_adc|current_state.STATE_WAIT_CH1~q\ & ((\u_adc|LessThan0~7_combout\)))) # (!\u_adc|always2~0_combout\ & ((\u_adc|current_state.STATE_READ_CH1~q\) # ((\u_adc|current_state.STATE_WAIT_CH1~q\ & 
-- \u_adc|LessThan0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|always2~0_combout\,
	datab => \u_adc|current_state.STATE_WAIT_CH1~q\,
	datac => \u_adc|current_state.STATE_READ_CH1~q\,
	datad => \u_adc|LessThan0~7_combout\,
	combout => \u_adc|Selector23~2_combout\);

-- Location: FF_X50_Y30_N9
\u_adc|current_state.STATE_READ_CH1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_adc|Selector23~2_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|current_state.STATE_READ_CH1~q\);

-- Location: LCCOMB_X50_Y30_N30
\u_adc|Selector21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector21~1_combout\ = (\u_adc|current_state.STATE_READ_CH1~q\ & \u_adc|always2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|current_state.STATE_READ_CH1~q\,
	datac => \u_adc|always2~0_combout\,
	combout => \u_adc|Selector21~1_combout\);

-- Location: LCCOMB_X50_Y30_N14
\u_adc|Selector21~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector21~5_combout\ = (!\u_adc|Selector21~1_combout\ & ((\u_adc|Selector21~4_combout\ & ((\u_adc|Selector21~2_combout\))) # (!\u_adc|Selector21~4_combout\ & (\u_adc|current_state.STATE_WRITE_CH1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector21~1_combout\,
	datab => \u_adc|Selector21~4_combout\,
	datac => \u_adc|current_state.STATE_WRITE_CH1~q\,
	datad => \u_adc|Selector21~2_combout\,
	combout => \u_adc|Selector21~5_combout\);

-- Location: FF_X50_Y30_N15
\u_adc|current_state.STATE_WRITE_CH1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|Selector21~5_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|current_state.STATE_WRITE_CH1~q\);

-- Location: LCCOMB_X50_Y30_N4
\u_adc|sub_step[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|sub_step[1]~12_combout\ = (\u_adc|current_state.STATE_WAIT_CH0~q\ & (\u_adc|Selector19~2_combout\ & (\u_adc|current_state.STATE_WRITE_CH0~q\ $ (!\u_adc|Selector18~0_combout\)))) # (!\u_adc|current_state.STATE_WAIT_CH0~q\ & 
-- (!\u_adc|Selector19~2_combout\ & (\u_adc|current_state.STATE_WRITE_CH0~q\ $ (!\u_adc|Selector18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|current_state.STATE_WAIT_CH0~q\,
	datab => \u_adc|Selector19~2_combout\,
	datac => \u_adc|current_state.STATE_WRITE_CH0~q\,
	datad => \u_adc|Selector18~0_combout\,
	combout => \u_adc|sub_step[1]~12_combout\);

-- Location: LCCOMB_X49_Y30_N16
\u_adc|always1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|always1~8_combout\ = \u_adc|current_state.STATE_READ_CH0~q\ $ (\u_adc|Selector20~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_adc|current_state.STATE_READ_CH0~q\,
	datad => \u_adc|Selector20~3_combout\,
	combout => \u_adc|always1~8_combout\);

-- Location: LCCOMB_X50_Y30_N16
\u_adc|sub_step[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|sub_step[1]~10_combout\ = (!\u_adc|i2c_done~0_combout\ & (\WS2812_u1|sys_mode.MODE_CLEAR~q\ & (\u_adc|current_state.STATE_WAIT_CH1~q\ $ (!\u_adc|Selector22~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|i2c_done~0_combout\,
	datab => \u_adc|current_state.STATE_WAIT_CH1~q\,
	datac => \WS2812_u1|sys_mode.MODE_CLEAR~q\,
	datad => \u_adc|Selector22~3_combout\,
	combout => \u_adc|sub_step[1]~10_combout\);

-- Location: LCCOMB_X50_Y30_N20
\u_adc|sub_step[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|sub_step[1]~11_combout\ = (!\u_adc|always1~8_combout\ & (\u_adc|sub_step[1]~10_combout\ & (\u_adc|current_state.STATE_READ_CH1~q\ $ (!\u_adc|Selector23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|always1~8_combout\,
	datab => \u_adc|current_state.STATE_READ_CH1~q\,
	datac => \u_adc|Selector23~2_combout\,
	datad => \u_adc|sub_step[1]~10_combout\,
	combout => \u_adc|sub_step[1]~11_combout\);

-- Location: LCCOMB_X50_Y30_N6
\u_adc|sub_step[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|sub_step[1]~13_combout\ = (\u_adc|sub_step[1]~12_combout\ & (\u_adc|sub_step[1]~11_combout\ & (\u_adc|current_state.STATE_WRITE_CH1~q\ $ (!\u_adc|Selector21~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|current_state.STATE_WRITE_CH1~q\,
	datab => \u_adc|Selector21~5_combout\,
	datac => \u_adc|sub_step[1]~12_combout\,
	datad => \u_adc|sub_step[1]~11_combout\,
	combout => \u_adc|sub_step[1]~13_combout\);

-- Location: FF_X50_Y31_N31
\u_adc|sub_step[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|sub_step~14_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|ALT_INV_sub_step[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|sub_step\(1));

-- Location: LCCOMB_X50_Y31_N10
\u_adc|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Add1~1_combout\ = \u_adc|sub_step\(3) $ (((\u_adc|sub_step\(0) & (\u_adc|sub_step\(1) & \u_adc|sub_step\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(3),
	datab => \u_adc|sub_step\(0),
	datac => \u_adc|sub_step\(1),
	datad => \u_adc|sub_step\(2),
	combout => \u_adc|Add1~1_combout\);

-- Location: LCCOMB_X50_Y31_N28
\u_adc|sub_step~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|sub_step~16_combout\ = (\u_adc|i2c_busy_d~q\ & (!\u_adc|u_i2c|busy~q\ & ((\u_adc|Add1~1_combout\) # (!\u_adc|joystick_x[12]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|i2c_busy_d~q\,
	datab => \u_adc|joystick_x[12]~2_combout\,
	datac => \u_adc|Add1~1_combout\,
	datad => \u_adc|u_i2c|busy~q\,
	combout => \u_adc|sub_step~16_combout\);

-- Location: FF_X50_Y31_N29
\u_adc|sub_step[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|sub_step~16_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|ALT_INV_sub_step[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|sub_step\(3));

-- Location: LCCOMB_X51_Y31_N28
\u_adc|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Equal2~0_combout\ = (((!\u_adc|sub_step\(2)) # (!\u_adc|sub_step\(1))) # (!\u_adc|sub_step\(3))) # (!\u_adc|sub_step\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(0),
	datab => \u_adc|sub_step\(3),
	datac => \u_adc|sub_step\(1),
	datad => \u_adc|sub_step\(2),
	combout => \u_adc|Equal2~0_combout\);

-- Location: LCCOMB_X51_Y31_N0
\u_adc|i2c_read~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|i2c_read~1_combout\ = (\u_adc|i2c_start~0_combout\ & (!\u_adc|i2c_start~q\ & (!\u_adc|i2c_write~q\ & \u_adc|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|i2c_start~0_combout\,
	datab => \u_adc|i2c_start~q\,
	datac => \u_adc|i2c_write~q\,
	datad => \u_adc|Equal2~0_combout\,
	combout => \u_adc|i2c_read~1_combout\);

-- Location: LCCOMB_X51_Y31_N6
\u_adc|always1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|always1~9_combout\ = ((\u_adc|i2c_start~q\) # (\u_adc|i2c_write~q\)) # (!\u_adc|i2c_start~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|i2c_start~0_combout\,
	datab => \u_adc|i2c_start~q\,
	datac => \u_adc|i2c_write~q\,
	combout => \u_adc|always1~9_combout\);

-- Location: LCCOMB_X50_Y31_N2
\u_adc|i2c_start~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|i2c_start~2_combout\ = (\u_adc|i2c_read~1_combout\) # ((\u_adc|always1~9_combout\ & ((\u_adc|i2c_busy_d~q\) # (!\u_adc|u_i2c|busy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|i2c_busy_d~q\,
	datab => \u_adc|i2c_read~1_combout\,
	datac => \u_adc|u_i2c|busy~q\,
	datad => \u_adc|always1~9_combout\,
	combout => \u_adc|i2c_start~2_combout\);

-- Location: LCCOMB_X51_Y30_N22
\u_adc|i2c_start~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|i2c_start~3_combout\ = (\u_adc|sub_step\(3)) # ((\u_adc|sub_step\(2)) # (\u_adc|sub_step\(1) $ (\u_adc|sub_step\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(3),
	datab => \u_adc|sub_step\(1),
	datac => \u_adc|sub_step\(0),
	datad => \u_adc|sub_step\(2),
	combout => \u_adc|i2c_start~3_combout\);

-- Location: LCCOMB_X51_Y30_N10
\u_adc|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Equal3~0_combout\ = (!\u_adc|sub_step\(0) & !\u_adc|sub_step\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|sub_step\(0),
	datac => \u_adc|sub_step\(1),
	combout => \u_adc|Equal3~0_combout\);

-- Location: LCCOMB_X51_Y30_N20
\u_adc|Selector14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector14~0_combout\ = (!\u_adc|sub_step\(3) & (!\u_adc|sub_step\(2) & (!\u_adc|i2c_read~0_combout\ & \u_adc|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(3),
	datab => \u_adc|sub_step\(2),
	datac => \u_adc|i2c_read~0_combout\,
	datad => \u_adc|Equal3~0_combout\,
	combout => \u_adc|Selector14~0_combout\);

-- Location: LCCOMB_X51_Y30_N0
\u_adc|i2c_start~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|i2c_start~4_combout\ = (\u_adc|i2c_start~0_combout\ & ((\u_adc|Selector14~0_combout\) # ((!\u_adc|i2c_start~3_combout\ & !\u_adc|Selector21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|i2c_start~3_combout\,
	datab => \u_adc|Selector14~0_combout\,
	datac => \u_adc|i2c_start~0_combout\,
	datad => \u_adc|Selector21~0_combout\,
	combout => \u_adc|i2c_start~4_combout\);

-- Location: LCCOMB_X51_Y31_N20
\u_adc|i2c_start~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|i2c_start~5_combout\ = (\u_adc|i2c_start~2_combout\ & ((\u_adc|i2c_start~q\) # ((!\u_adc|i2c_write~q\ & \u_adc|i2c_start~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|i2c_start~2_combout\,
	datab => \u_adc|i2c_write~q\,
	datac => \u_adc|i2c_start~q\,
	datad => \u_adc|i2c_start~4_combout\,
	combout => \u_adc|i2c_start~5_combout\);

-- Location: FF_X51_Y31_N21
\u_adc|i2c_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|i2c_start~5_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|i2c_start~q\);

-- Location: LCCOMB_X52_Y31_N12
\u_adc|u_i2c|shift_reg[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|shift_reg[0]~0_combout\ = (\u_adc|i2c_write~q\ & (!\u_adc|i2c_start~q\ & !\u_adc|u_i2c|state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|i2c_write~q\,
	datab => \u_adc|i2c_start~q\,
	datad => \u_adc|u_i2c|state.IDLE~q\,
	combout => \u_adc|u_i2c|shift_reg[0]~0_combout\);

-- Location: LCCOMB_X52_Y31_N6
\u_adc|u_i2c|state.WRITE~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|state.WRITE~feeder_combout\ = \u_adc|u_i2c|shift_reg[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|u_i2c|shift_reg[0]~0_combout\,
	combout => \u_adc|u_i2c|state.WRITE~feeder_combout\);

-- Location: LCCOMB_X49_Y31_N26
\u_adc|u_i2c|state~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|state~22_combout\ = (!\u_adc|u_i2c|state.WRITE~q\ & !\u_adc|u_i2c|state.READ~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_adc|u_i2c|state.WRITE~q\,
	datad => \u_adc|u_i2c|state.READ~q\,
	combout => \u_adc|u_i2c|state~22_combout\);

-- Location: LCCOMB_X53_Y31_N0
\u_adc|u_i2c|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Equal3~0_combout\ = (\u_adc|u_i2c|phase\(1) & \u_adc|u_i2c|phase\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|u_i2c|phase\(1),
	datac => \u_adc|u_i2c|phase\(0),
	combout => \u_adc|u_i2c|Equal3~0_combout\);

-- Location: LCCOMB_X49_Y31_N28
\u_adc|u_i2c|state~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|state~24_combout\ = (\u_adc|u_i2c|state~22_combout\ & ((\u_adc|u_i2c|state.IDLE~q\ & ((!\u_adc|u_i2c|Equal3~0_combout\))) # (!\u_adc|u_i2c|state.IDLE~q\ & (!\u_adc|u_i2c|state~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|state.IDLE~q\,
	datab => \u_adc|u_i2c|state~23_combout\,
	datac => \u_adc|u_i2c|state~22_combout\,
	datad => \u_adc|u_i2c|Equal3~0_combout\,
	combout => \u_adc|u_i2c|state~24_combout\);

-- Location: LCCOMB_X49_Y31_N6
\u_adc|u_i2c|Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector12~0_combout\ = (\u_adc|u_i2c|state.IDLE~q\ & !\u_adc|u_i2c|bit_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|state.IDLE~q\,
	datac => \u_adc|u_i2c|bit_cnt\(0),
	combout => \u_adc|u_i2c|Selector12~0_combout\);

-- Location: LCCOMB_X51_Y31_N22
\u_adc|u_i2c|bit_cnt[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|bit_cnt[3]~0_combout\ = (!\u_adc|i2c_start~q\ & (!\u_adc|u_i2c|state.IDLE~q\ & ((\u_adc|i2c_read~q\) # (\u_adc|i2c_write~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|i2c_read~q\,
	datab => \u_adc|i2c_start~q\,
	datac => \u_adc|i2c_write~q\,
	datad => \u_adc|u_i2c|state.IDLE~q\,
	combout => \u_adc|u_i2c|bit_cnt[3]~0_combout\);

-- Location: LCCOMB_X49_Y31_N4
\u_adc|u_i2c|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Add2~2_combout\ = \u_adc|u_i2c|bit_cnt\(1) $ (\u_adc|u_i2c|bit_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_adc|u_i2c|bit_cnt\(1),
	datad => \u_adc|u_i2c|bit_cnt\(0),
	combout => \u_adc|u_i2c|Add2~2_combout\);

-- Location: FF_X49_Y31_N5
\u_adc|u_i2c|bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|Add2~2_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_adc|u_i2c|ALT_INV_state.IDLE~q\,
	ena => \u_adc|u_i2c|bit_cnt[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|bit_cnt\(1));

-- Location: LCCOMB_X49_Y31_N2
\u_adc|u_i2c|Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Add2~1_combout\ = \u_adc|u_i2c|bit_cnt\(2) $ (((\u_adc|u_i2c|bit_cnt\(1) & \u_adc|u_i2c|bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|u_i2c|bit_cnt\(1),
	datac => \u_adc|u_i2c|bit_cnt\(2),
	datad => \u_adc|u_i2c|bit_cnt\(0),
	combout => \u_adc|u_i2c|Add2~1_combout\);

-- Location: FF_X49_Y31_N3
\u_adc|u_i2c|bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|Add2~1_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_adc|u_i2c|ALT_INV_state.IDLE~q\,
	ena => \u_adc|u_i2c|bit_cnt[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|bit_cnt\(2));

-- Location: LCCOMB_X49_Y31_N20
\u_adc|u_i2c|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Equal4~0_combout\ = (\u_adc|u_i2c|bit_cnt\(2) & (\u_adc|u_i2c|bit_cnt\(1) & \u_adc|u_i2c|bit_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|u_i2c|bit_cnt\(2),
	datac => \u_adc|u_i2c|bit_cnt\(1),
	datad => \u_adc|u_i2c|bit_cnt\(0),
	combout => \u_adc|u_i2c|Equal4~0_combout\);

-- Location: LCCOMB_X49_Y31_N12
\u_adc|u_i2c|bit_cnt[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|bit_cnt[3]~1_combout\ = (\u_adc|u_i2c|Equal3~0_combout\ & (!\u_adc|u_i2c|state~22_combout\ & ((\u_adc|u_i2c|bit_cnt\(3)) # (!\u_adc|u_i2c|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|Equal3~0_combout\,
	datab => \u_adc|u_i2c|bit_cnt\(3),
	datac => \u_adc|u_i2c|state~22_combout\,
	datad => \u_adc|u_i2c|Equal4~0_combout\,
	combout => \u_adc|u_i2c|bit_cnt[3]~1_combout\);

-- Location: LCCOMB_X49_Y31_N10
\u_adc|u_i2c|bit_cnt[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|bit_cnt[3]~2_combout\ = (\u_adc|u_i2c|i2c_tick~q\ & ((\u_adc|u_i2c|bit_cnt[3]~0_combout\) # (\u_adc|u_i2c|bit_cnt[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|i2c_tick~q\,
	datac => \u_adc|u_i2c|bit_cnt[3]~0_combout\,
	datad => \u_adc|u_i2c|bit_cnt[3]~1_combout\,
	combout => \u_adc|u_i2c|bit_cnt[3]~2_combout\);

-- Location: FF_X49_Y31_N7
\u_adc|u_i2c|bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|Selector12~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|u_i2c|bit_cnt[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|bit_cnt\(0));

-- Location: LCCOMB_X49_Y31_N16
\u_adc|u_i2c|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Add2~0_combout\ = \u_adc|u_i2c|bit_cnt\(3) $ (((\u_adc|u_i2c|bit_cnt\(0) & (\u_adc|u_i2c|bit_cnt\(1) & \u_adc|u_i2c|bit_cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|bit_cnt\(0),
	datab => \u_adc|u_i2c|bit_cnt\(1),
	datac => \u_adc|u_i2c|bit_cnt\(3),
	datad => \u_adc|u_i2c|bit_cnt\(2),
	combout => \u_adc|u_i2c|Add2~0_combout\);

-- Location: FF_X49_Y31_N17
\u_adc|u_i2c|bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|Add2~0_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_adc|u_i2c|ALT_INV_state.IDLE~q\,
	ena => \u_adc|u_i2c|bit_cnt[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|bit_cnt\(3));

-- Location: LCCOMB_X49_Y31_N22
\u_adc|u_i2c|state~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|state~25_combout\ = (!\u_adc|u_i2c|state~22_combout\ & (((\u_adc|u_i2c|bit_cnt\(3)) # (!\u_adc|u_i2c|Equal4~0_combout\)) # (!\u_adc|u_i2c|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|Equal3~0_combout\,
	datab => \u_adc|u_i2c|bit_cnt\(3),
	datac => \u_adc|u_i2c|state~22_combout\,
	datad => \u_adc|u_i2c|Equal4~0_combout\,
	combout => \u_adc|u_i2c|state~25_combout\);

-- Location: LCCOMB_X49_Y31_N24
\u_adc|u_i2c|state~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|state~26_combout\ = (\u_adc|u_i2c|state~24_combout\) # ((\u_adc|u_i2c|state~25_combout\) # (!\u_adc|u_i2c|i2c_tick~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|u_i2c|state~24_combout\,
	datac => \u_adc|u_i2c|state~25_combout\,
	datad => \u_adc|u_i2c|i2c_tick~q\,
	combout => \u_adc|u_i2c|state~26_combout\);

-- Location: FF_X52_Y31_N7
\u_adc|u_i2c|state.WRITE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|state.WRITE~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|u_i2c|ALT_INV_state~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|state.WRITE~q\);

-- Location: LCCOMB_X52_Y31_N2
\u_adc|u_i2c|state.IDLE~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|state.IDLE~2_combout\ = (\u_adc|u_i2c|state~26_combout\ & (((\u_adc|u_i2c|state.IDLE~q\)))) # (!\u_adc|u_i2c|state~26_combout\ & ((\u_adc|u_i2c|state.WRITE~q\) # ((\u_adc|u_i2c|state.READ~q\) # (!\u_adc|u_i2c|state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|state.WRITE~q\,
	datab => \u_adc|u_i2c|state~26_combout\,
	datac => \u_adc|u_i2c|state.IDLE~q\,
	datad => \u_adc|u_i2c|state.READ~q\,
	combout => \u_adc|u_i2c|state.IDLE~2_combout\);

-- Location: FF_X52_Y31_N3
\u_adc|u_i2c|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|state.IDLE~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|state.IDLE~q\);

-- Location: LCCOMB_X53_Y31_N8
\u_adc|u_i2c|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector1~0_combout\ = (!\u_adc|u_i2c|phase\(0) & \u_adc|u_i2c|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_adc|u_i2c|phase\(0),
	datad => \u_adc|u_i2c|state.IDLE~q\,
	combout => \u_adc|u_i2c|Selector1~0_combout\);

-- Location: FF_X53_Y31_N9
\u_adc|u_i2c|phase[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|Selector1~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|u_i2c|i2c_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|phase\(0));

-- Location: LCCOMB_X53_Y31_N16
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

-- Location: FF_X53_Y31_N17
\u_adc|u_i2c|phase[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|Add1~0_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_adc|u_i2c|ALT_INV_state.IDLE~q\,
	ena => \u_adc|u_i2c|i2c_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|phase\(1));

-- Location: LCCOMB_X53_Y31_N30
\u_adc|u_i2c|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Decoder0~0_combout\ = (\u_adc|u_i2c|i2c_tick~q\ & (\u_adc|u_i2c|phase\(1) & !\u_adc|u_i2c|phase\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|i2c_tick~q\,
	datab => \u_adc|u_i2c|phase\(1),
	datac => \u_adc|u_i2c|phase\(0),
	combout => \u_adc|u_i2c|Decoder0~0_combout\);

-- Location: LCCOMB_X52_Y31_N30
\u_adc|u_i2c|state.RACK~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|state.RACK~feeder_combout\ = \u_adc|u_i2c|state.WRITE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|u_i2c|state.WRITE~q\,
	combout => \u_adc|u_i2c|state.RACK~feeder_combout\);

-- Location: FF_X52_Y31_N31
\u_adc|u_i2c|state.RACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|state.RACK~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|u_i2c|ALT_INV_state~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|state.RACK~q\);

-- Location: LCCOMB_X51_Y31_N2
\u_adc|u_i2c|ack_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|ack_out~0_combout\ = (\u_adc|u_i2c|Decoder0~0_combout\ & ((\u_adc|u_i2c|state.RACK~q\ & (\SDA~input_o\)) # (!\u_adc|u_i2c|state.RACK~q\ & ((\u_adc|u_i2c|ack_out~q\))))) # (!\u_adc|u_i2c|Decoder0~0_combout\ & (((\u_adc|u_i2c|ack_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDA~input_o\,
	datab => \u_adc|u_i2c|Decoder0~0_combout\,
	datac => \u_adc|u_i2c|ack_out~q\,
	datad => \u_adc|u_i2c|state.RACK~q\,
	combout => \u_adc|u_i2c|ack_out~0_combout\);

-- Location: FF_X51_Y31_N3
\u_adc|u_i2c|ack_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|ack_out~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|ack_out~q\);

-- Location: LCCOMB_X50_Y31_N24
\u_adc|joystick_x[12]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_x[12]~2_combout\ = (!\u_adc|u_i2c|ack_out~q\) # (!\u_adc|last_was_write~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_adc|last_was_write~q\,
	datad => \u_adc|u_i2c|ack_out~q\,
	combout => \u_adc|joystick_x[12]~2_combout\);

-- Location: LCCOMB_X50_Y31_N14
\u_adc|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Add1~0_combout\ = \u_adc|sub_step\(2) $ (((\u_adc|sub_step\(1) & \u_adc|sub_step\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(1),
	datac => \u_adc|sub_step\(0),
	datad => \u_adc|sub_step\(2),
	combout => \u_adc|Add1~0_combout\);

-- Location: LCCOMB_X50_Y31_N20
\u_adc|sub_step~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|sub_step~15_combout\ = (\u_adc|i2c_busy_d~q\ & (!\u_adc|u_i2c|busy~q\ & ((\u_adc|Add1~0_combout\) # (!\u_adc|joystick_x[12]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|i2c_busy_d~q\,
	datab => \u_adc|joystick_x[12]~2_combout\,
	datac => \u_adc|Add1~0_combout\,
	datad => \u_adc|u_i2c|busy~q\,
	combout => \u_adc|sub_step~15_combout\);

-- Location: FF_X50_Y31_N21
\u_adc|sub_step[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|sub_step~15_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|ALT_INV_sub_step[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|sub_step\(2));

-- Location: LCCOMB_X48_Y30_N10
\u_adc|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector1~0_combout\ = (!\u_adc|sub_step\(3) & ((\u_adc|sub_step\(2) & (!\u_adc|sub_step\(0) & !\u_adc|sub_step\(1))) # (!\u_adc|sub_step\(2) & (\u_adc|sub_step\(0) $ (\u_adc|sub_step\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(2),
	datab => \u_adc|sub_step\(3),
	datac => \u_adc|sub_step\(0),
	datad => \u_adc|sub_step\(1),
	combout => \u_adc|Selector1~0_combout\);

-- Location: LCCOMB_X48_Y30_N12
\u_adc|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector4~0_combout\ = (!\u_adc|Selector21~0_combout\ & ((\u_adc|Selector1~0_combout\) # ((\u_adc|sub_step\(3) & \u_adc|last_was_write~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector1~0_combout\,
	datab => \u_adc|sub_step\(3),
	datac => \u_adc|last_was_write~q\,
	datad => \u_adc|Selector21~0_combout\,
	combout => \u_adc|Selector4~0_combout\);

-- Location: LCCOMB_X48_Y30_N6
\u_adc|Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector4~1_combout\ = (\u_adc|Selector4~0_combout\) # ((\u_adc|last_was_write~q\ & ((!\WS2812_u1|sys_mode.MODE_CLEAR~q\) # (!\u_adc|always1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector4~0_combout\,
	datab => \u_adc|always1~7_combout\,
	datac => \u_adc|last_was_write~q\,
	datad => \WS2812_u1|sys_mode.MODE_CLEAR~q\,
	combout => \u_adc|Selector4~1_combout\);

-- Location: LCCOMB_X48_Y30_N24
\u_adc|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector0~0_combout\ = (!\u_adc|sub_step\(3) & (\u_adc|sub_step\(2) $ (((\u_adc|sub_step\(0)) # (\u_adc|sub_step\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(2),
	datab => \u_adc|sub_step\(3),
	datac => \u_adc|sub_step\(0),
	datad => \u_adc|sub_step\(1),
	combout => \u_adc|Selector0~0_combout\);

-- Location: LCCOMB_X48_Y30_N26
\u_adc|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector0~1_combout\ = (\u_adc|last_was_write~q\ & ((\u_adc|sub_step\(3)) # ((\u_adc|sub_step\(2) & \u_adc|sub_step\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(2),
	datab => \u_adc|sub_step\(3),
	datac => \u_adc|last_was_write~q\,
	datad => \u_adc|sub_step\(1),
	combout => \u_adc|Selector0~1_combout\);

-- Location: LCCOMB_X48_Y30_N0
\u_adc|Selector4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector4~2_combout\ = (\u_adc|Selector4~1_combout\) # ((!\u_adc|i2c_read~0_combout\ & ((\u_adc|Selector0~0_combout\) # (\u_adc|Selector0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector4~1_combout\,
	datab => \u_adc|Selector0~0_combout\,
	datac => \u_adc|Selector0~1_combout\,
	datad => \u_adc|i2c_read~0_combout\,
	combout => \u_adc|Selector4~2_combout\);

-- Location: FF_X48_Y30_N1
\u_adc|last_was_write\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|Selector4~2_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|i2c_read~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|last_was_write~q\);

-- Location: LCCOMB_X50_Y31_N4
\u_adc|joystick_x[12]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_x[12]~0_combout\ = (\u_adc|i2c_busy_d~q\ & (!\u_adc|u_i2c|busy~q\ & ((!\u_adc|u_i2c|ack_out~q\) # (!\u_adc|last_was_write~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|i2c_busy_d~q\,
	datab => \u_adc|u_i2c|busy~q\,
	datac => \u_adc|last_was_write~q\,
	datad => \u_adc|u_i2c|ack_out~q\,
	combout => \u_adc|joystick_x[12]~0_combout\);

-- Location: LCCOMB_X50_Y31_N26
\u_adc|sub_step~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|sub_step~17_combout\ = (\u_adc|joystick_x[12]~0_combout\ & (((!\u_adc|sub_step\(0))))) # (!\u_adc|joystick_x[12]~0_combout\ & (\u_adc|i2c_busy_d~q\ & ((!\u_adc|u_i2c|busy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|i2c_busy_d~q\,
	datab => \u_adc|joystick_x[12]~0_combout\,
	datac => \u_adc|sub_step\(0),
	datad => \u_adc|u_i2c|busy~q\,
	combout => \u_adc|sub_step~17_combout\);

-- Location: FF_X50_Y31_N27
\u_adc|sub_step[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|sub_step~17_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|ALT_INV_sub_step[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|sub_step\(0));

-- Location: LCCOMB_X51_Y31_N18
\u_adc|i2c_read~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|i2c_read~2_combout\ = (!\u_adc|sub_step\(3) & (\u_adc|sub_step\(2) & (\u_adc|sub_step\(0) $ (\u_adc|sub_step\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(0),
	datab => \u_adc|sub_step\(3),
	datac => \u_adc|sub_step\(1),
	datad => \u_adc|sub_step\(2),
	combout => \u_adc|i2c_read~2_combout\);

-- Location: LCCOMB_X49_Y30_N0
\u_adc|i2c_read~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|i2c_read~3_combout\ = (\u_adc|i2c_read~0_combout\ & (\u_adc|always1~7_combout\ & (\u_adc|i2c_read~1_combout\ & \WS2812_u1|sys_mode.MODE_CLEAR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|i2c_read~0_combout\,
	datab => \u_adc|always1~7_combout\,
	datac => \u_adc|i2c_read~1_combout\,
	datad => \WS2812_u1|sys_mode.MODE_CLEAR~q\,
	combout => \u_adc|i2c_read~3_combout\);

-- Location: LCCOMB_X51_Y31_N26
\u_adc|i2c_read~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|i2c_read~4_combout\ = (\u_adc|i2c_start~1_combout\ & ((\u_adc|i2c_read~q\) # ((\u_adc|i2c_read~2_combout\ & \u_adc|i2c_read~3_combout\)))) # (!\u_adc|i2c_start~1_combout\ & (\u_adc|i2c_read~2_combout\ & ((\u_adc|i2c_read~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|i2c_start~1_combout\,
	datab => \u_adc|i2c_read~2_combout\,
	datac => \u_adc|i2c_read~q\,
	datad => \u_adc|i2c_read~3_combout\,
	combout => \u_adc|i2c_read~4_combout\);

-- Location: FF_X51_Y31_N27
\u_adc|i2c_read\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|i2c_read~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|i2c_read~q\);

-- Location: LCCOMB_X51_Y30_N30
\u_adc|i2c_stop~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|i2c_stop~2_combout\ = (\u_adc|sub_step\(3) & (\u_adc|sub_step\(1))) # (!\u_adc|sub_step\(3) & ((\u_adc|sub_step\(1) & ((!\u_adc|Selector21~0_combout\))) # (!\u_adc|sub_step\(1) & (!\u_adc|i2c_read~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(3),
	datab => \u_adc|sub_step\(1),
	datac => \u_adc|i2c_read~0_combout\,
	datad => \u_adc|Selector21~0_combout\,
	combout => \u_adc|i2c_stop~2_combout\);

-- Location: LCCOMB_X51_Y31_N12
\u_adc|i2c_stop~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|i2c_stop~3_combout\ = (\u_adc|sub_step\(0) & (\u_adc|sub_step\(2) & (\u_adc|i2c_stop~2_combout\ & !\u_adc|always1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(0),
	datab => \u_adc|sub_step\(2),
	datac => \u_adc|i2c_stop~2_combout\,
	datad => \u_adc|always1~9_combout\,
	combout => \u_adc|i2c_stop~3_combout\);

-- Location: LCCOMB_X51_Y31_N4
\u_adc|i2c_stop~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|i2c_stop~4_combout\ = (\u_adc|i2c_stop~3_combout\) # ((\u_adc|i2c_stop~q\ & ((\u_adc|i2c_busy_d~q\) # (!\u_adc|u_i2c|busy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|i2c_stop~3_combout\,
	datab => \u_adc|i2c_busy_d~q\,
	datac => \u_adc|i2c_stop~q\,
	datad => \u_adc|u_i2c|busy~q\,
	combout => \u_adc|i2c_stop~4_combout\);

-- Location: FF_X51_Y31_N5
\u_adc|i2c_stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|i2c_stop~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|i2c_stop~q\);

-- Location: LCCOMB_X51_Y31_N10
\u_adc|u_i2c|state~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|state~23_combout\ = (\u_adc|i2c_read~q\) # ((\u_adc|i2c_stop~q\) # ((\u_adc|i2c_write~q\) # (\u_adc|i2c_start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|i2c_read~q\,
	datab => \u_adc|i2c_stop~q\,
	datac => \u_adc|i2c_write~q\,
	datad => \u_adc|i2c_start~q\,
	combout => \u_adc|u_i2c|state~23_combout\);

-- Location: LCCOMB_X51_Y31_N24
\u_adc|u_i2c|busy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|busy~0_combout\ = (\u_adc|u_i2c|i2c_tick~q\ & ((\u_adc|u_i2c|state.IDLE~q\ & ((\u_adc|u_i2c|busy~q\))) # (!\u_adc|u_i2c|state.IDLE~q\ & (\u_adc|u_i2c|state~23_combout\)))) # (!\u_adc|u_i2c|i2c_tick~q\ & (((\u_adc|u_i2c|busy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|state~23_combout\,
	datab => \u_adc|u_i2c|i2c_tick~q\,
	datac => \u_adc|u_i2c|busy~q\,
	datad => \u_adc|u_i2c|state.IDLE~q\,
	combout => \u_adc|u_i2c|busy~0_combout\);

-- Location: FF_X51_Y31_N25
\u_adc|u_i2c|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|busy~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|busy~q\);

-- Location: FF_X50_Y31_N7
\u_adc|i2c_busy_d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_adc|u_i2c|busy~q\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|i2c_busy_d~q\);

-- Location: LCCOMB_X50_Y31_N0
\u_adc|i2c_cmd_ack~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|i2c_cmd_ack~2_combout\ = (\u_adc|sub_step[1]~13_combout\ & ((\u_adc|i2c_cmd_ack~q\) # ((!\u_adc|i2c_busy_d~q\ & \u_adc|u_i2c|busy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|i2c_busy_d~q\,
	datab => \u_adc|u_i2c|busy~q\,
	datac => \u_adc|i2c_cmd_ack~q\,
	datad => \u_adc|sub_step[1]~13_combout\,
	combout => \u_adc|i2c_cmd_ack~2_combout\);

-- Location: FF_X50_Y31_N1
\u_adc|i2c_cmd_ack\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|i2c_cmd_ack~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|i2c_cmd_ack~q\);

-- Location: LCCOMB_X51_Y31_N30
\u_adc|i2c_start~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|i2c_start~0_combout\ = (!\u_adc|i2c_cmd_ack~q\ & (!\u_adc|i2c_stop~q\ & (!\u_adc|i2c_read~q\ & !\u_adc|u_i2c|busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|i2c_cmd_ack~q\,
	datab => \u_adc|i2c_stop~q\,
	datac => \u_adc|i2c_read~q\,
	datad => \u_adc|u_i2c|busy~q\,
	combout => \u_adc|i2c_start~0_combout\);

-- Location: LCCOMB_X51_Y30_N28
\u_adc|WideOr6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|WideOr6~0_combout\ = (!\u_adc|sub_step\(3) & ((\u_adc|sub_step\(1) & (!\u_adc|sub_step\(0) & !\u_adc|sub_step\(2))) # (!\u_adc|sub_step\(1) & (\u_adc|sub_step\(0) $ (\u_adc|sub_step\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(3),
	datab => \u_adc|sub_step\(1),
	datac => \u_adc|sub_step\(0),
	datad => \u_adc|sub_step\(2),
	combout => \u_adc|WideOr6~0_combout\);

-- Location: LCCOMB_X51_Y30_N18
\u_adc|i2c_data_in[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|i2c_data_in[1]~0_combout\ = ((!\u_adc|current_state.STATE_READ_CH1~q\ & !\u_adc|current_state.STATE_READ_CH0~q\)) # (!\u_adc|WideOr6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|current_state.STATE_READ_CH1~q\,
	datac => \u_adc|current_state.STATE_READ_CH0~q\,
	datad => \u_adc|WideOr6~0_combout\,
	combout => \u_adc|i2c_data_in[1]~0_combout\);

-- Location: LCCOMB_X51_Y30_N2
\u_adc|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|WideOr2~0_combout\ = (!\u_adc|sub_step\(3) & (\u_adc|sub_step\(2) $ (((\u_adc|sub_step\(1)) # (\u_adc|sub_step\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(3),
	datab => \u_adc|sub_step\(1),
	datac => \u_adc|sub_step\(0),
	datad => \u_adc|sub_step\(2),
	combout => \u_adc|WideOr2~0_combout\);

-- Location: LCCOMB_X51_Y30_N12
\u_adc|i2c_write~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|i2c_write~0_combout\ = (\u_adc|i2c_start~0_combout\ & (((!\u_adc|i2c_read~0_combout\ & \u_adc|WideOr2~0_combout\)) # (!\u_adc|i2c_data_in[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|i2c_start~0_combout\,
	datab => \u_adc|i2c_data_in[1]~0_combout\,
	datac => \u_adc|i2c_read~0_combout\,
	datad => \u_adc|WideOr2~0_combout\,
	combout => \u_adc|i2c_write~0_combout\);

-- Location: LCCOMB_X51_Y31_N14
\u_adc|i2c_write~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|i2c_write~1_combout\ = (\u_adc|i2c_start~2_combout\ & ((\u_adc|i2c_write~q\) # ((\u_adc|i2c_write~0_combout\ & !\u_adc|i2c_start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|i2c_write~0_combout\,
	datab => \u_adc|i2c_start~q\,
	datac => \u_adc|i2c_write~q\,
	datad => \u_adc|i2c_start~2_combout\,
	combout => \u_adc|i2c_write~1_combout\);

-- Location: FF_X51_Y31_N15
\u_adc|i2c_write\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|i2c_write~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|i2c_write~q\);

-- Location: LCCOMB_X52_Y31_N4
\u_adc|u_i2c|state~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|state~27_combout\ = (!\u_adc|i2c_write~q\ & (!\u_adc|i2c_start~q\ & (\u_adc|i2c_read~q\ & !\u_adc|u_i2c|state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|i2c_write~q\,
	datab => \u_adc|i2c_start~q\,
	datac => \u_adc|i2c_read~q\,
	datad => \u_adc|u_i2c|state.IDLE~q\,
	combout => \u_adc|u_i2c|state~27_combout\);

-- Location: FF_X52_Y31_N5
\u_adc|u_i2c|state.READ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|state~27_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|u_i2c|ALT_INV_state~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|state.READ~q\);

-- Location: LCCOMB_X52_Y31_N20
\u_adc|u_i2c|state.WACK~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|state.WACK~feeder_combout\ = \u_adc|u_i2c|state.READ~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|u_i2c|state.READ~q\,
	combout => \u_adc|u_i2c|state.WACK~feeder_combout\);

-- Location: FF_X52_Y31_N21
\u_adc|u_i2c|state.WACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|state.WACK~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|u_i2c|ALT_INV_state~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|state.WACK~q\);

-- Location: LCCOMB_X52_Y31_N8
\u_adc|u_i2c|state~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|state~21_combout\ = (!\u_adc|i2c_write~q\ & (!\u_adc|i2c_start~q\ & (!\u_adc|i2c_read~q\ & !\u_adc|u_i2c|state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|i2c_write~q\,
	datab => \u_adc|i2c_start~q\,
	datac => \u_adc|i2c_read~q\,
	datad => \u_adc|u_i2c|state.IDLE~q\,
	combout => \u_adc|u_i2c|state~21_combout\);

-- Location: FF_X52_Y31_N9
\u_adc|u_i2c|state.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|state~21_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|u_i2c|ALT_INV_state~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|state.STOP~q\);

-- Location: LCCOMB_X53_Y31_N4
\u_adc|u_i2c|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Equal1~0_combout\ = (\u_adc|u_i2c|phase\(1)) # (\u_adc|u_i2c|phase\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|u_i2c|phase\(1),
	datac => \u_adc|u_i2c|phase\(0),
	combout => \u_adc|u_i2c|Equal1~0_combout\);

-- Location: LCCOMB_X52_Y31_N28
\u_adc|u_i2c|Selector13~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector13~6_combout\ = (\u_adc|u_i2c|Equal1~0_combout\ & ((\u_adc|u_i2c|state.WRITE~q\) # ((\u_adc|u_i2c|state.WACK~q\) # (\u_adc|u_i2c|state.STOP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|state.WRITE~q\,
	datab => \u_adc|u_i2c|state.WACK~q\,
	datac => \u_adc|u_i2c|state.STOP~q\,
	datad => \u_adc|u_i2c|Equal1~0_combout\,
	combout => \u_adc|u_i2c|Selector13~6_combout\);

-- Location: LCCOMB_X52_Y31_N24
\u_adc|u_i2c|state~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|state~28_combout\ = (\u_adc|i2c_start~q\ & !\u_adc|u_i2c|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|i2c_start~q\,
	datad => \u_adc|u_i2c|state.IDLE~q\,
	combout => \u_adc|u_i2c|state~28_combout\);

-- Location: FF_X52_Y31_N25
\u_adc|u_i2c|state.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|state~28_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|u_i2c|ALT_INV_state~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|state.START~q\);

-- Location: LCCOMB_X53_Y31_N6
\u_adc|u_i2c|Selector13~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector13~7_combout\ = ((\u_adc|u_i2c|state.START~q\ & ((\u_adc|u_i2c|phase\(1)) # (!\u_adc|u_i2c|phase\(0))))) # (!\u_adc|u_i2c|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|state.IDLE~q\,
	datab => \u_adc|u_i2c|state.START~q\,
	datac => \u_adc|u_i2c|phase\(0),
	datad => \u_adc|u_i2c|phase\(1),
	combout => \u_adc|u_i2c|Selector13~7_combout\);

-- Location: LCCOMB_X52_Y31_N10
\u_adc|u_i2c|Selector13~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector13~8_combout\ = (\u_adc|u_i2c|state.READ~q\) # ((\u_adc|u_i2c|Selector13~6_combout\) # ((\u_adc|u_i2c|state.RACK~q\) # (\u_adc|u_i2c|Selector13~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|state.READ~q\,
	datab => \u_adc|u_i2c|Selector13~6_combout\,
	datac => \u_adc|u_i2c|state.RACK~q\,
	datad => \u_adc|u_i2c|Selector13~7_combout\,
	combout => \u_adc|u_i2c|Selector13~8_combout\);

-- Location: LCCOMB_X53_Y31_N14
\u_adc|u_i2c|Selector13~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector13~5_combout\ = (\u_adc|u_i2c|phase\(0) & (\u_adc|u_i2c|phase\(1) & ((\u_adc|u_i2c|state.WACK~q\) # (\u_adc|u_i2c|state.RACK~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|state.WACK~q\,
	datab => \u_adc|u_i2c|state.RACK~q\,
	datac => \u_adc|u_i2c|phase\(0),
	datad => \u_adc|u_i2c|phase\(1),
	combout => \u_adc|u_i2c|Selector13~5_combout\);

-- Location: LCCOMB_X50_Y31_N16
\u_adc|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Equal1~0_combout\ = (!\u_adc|sub_step\(0) & (!\u_adc|sub_step\(3) & (\u_adc|sub_step\(1) & \u_adc|sub_step\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(0),
	datab => \u_adc|sub_step\(3),
	datac => \u_adc|sub_step\(1),
	datad => \u_adc|sub_step\(2),
	combout => \u_adc|Equal1~0_combout\);

-- Location: LCCOMB_X50_Y31_N22
\u_adc|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector2~0_combout\ = (\u_adc|sub_step\(3)) # ((\u_adc|sub_step\(0) $ (!\u_adc|sub_step\(1))) # (!\u_adc|sub_step\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(3),
	datab => \u_adc|sub_step\(0),
	datac => \u_adc|sub_step\(1),
	datad => \u_adc|sub_step\(2),
	combout => \u_adc|Selector2~0_combout\);

-- Location: LCCOMB_X50_Y31_N12
\u_adc|i2c_ack_in~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|i2c_ack_in~0_combout\ = (\u_adc|i2c_read~3_combout\ & ((\u_adc|Selector2~0_combout\ & ((\u_adc|i2c_ack_in~q\))) # (!\u_adc|Selector2~0_combout\ & (\u_adc|Equal1~0_combout\)))) # (!\u_adc|i2c_read~3_combout\ & (((\u_adc|i2c_ack_in~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|i2c_read~3_combout\,
	datab => \u_adc|Equal1~0_combout\,
	datac => \u_adc|i2c_ack_in~q\,
	datad => \u_adc|Selector2~0_combout\,
	combout => \u_adc|i2c_ack_in~0_combout\);

-- Location: FF_X50_Y31_N13
\u_adc|i2c_ack_in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|i2c_ack_in~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|i2c_ack_in~q\);

-- Location: LCCOMB_X49_Y30_N2
\u_adc|Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector13~0_combout\ = (\u_adc|i2c_data_in\(0) & (((\u_adc|current_state.STATE_WAIT_CH1~q\) # (\u_adc|current_state.STATE_WAIT_CH0~q\)) # (!\WS2812_u1|sys_mode.MODE_CLEAR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|sys_mode.MODE_CLEAR~q\,
	datab => \u_adc|i2c_data_in\(0),
	datac => \u_adc|current_state.STATE_WAIT_CH1~q\,
	datad => \u_adc|current_state.STATE_WAIT_CH0~q\,
	combout => \u_adc|Selector13~0_combout\);

-- Location: LCCOMB_X48_Y30_N20
\u_adc|Selector13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector13~2_combout\ = (\u_adc|Selector0~0_combout\ & ((\u_adc|sub_step\(1)) # ((!\u_adc|sub_step\(0))))) # (!\u_adc|Selector0~0_combout\ & (((\u_adc|i2c_data_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(1),
	datab => \u_adc|i2c_data_in\(0),
	datac => \u_adc|sub_step\(0),
	datad => \u_adc|Selector0~0_combout\,
	combout => \u_adc|Selector13~2_combout\);

-- Location: LCCOMB_X48_Y30_N30
\u_adc|Selector13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector13~1_combout\ = (!\u_adc|Selector21~0_combout\ & ((\u_adc|Selector1~0_combout\ & ((\u_adc|Equal3~0_combout\))) # (!\u_adc|Selector1~0_combout\ & (\u_adc|i2c_data_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector1~0_combout\,
	datab => \u_adc|i2c_data_in\(0),
	datac => \u_adc|Equal3~0_combout\,
	datad => \u_adc|Selector21~0_combout\,
	combout => \u_adc|Selector13~1_combout\);

-- Location: LCCOMB_X48_Y30_N18
\u_adc|Selector13~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector13~3_combout\ = (\u_adc|Selector13~0_combout\) # ((\u_adc|Selector13~1_combout\) # ((\u_adc|Selector13~2_combout\ & !\u_adc|i2c_read~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector13~0_combout\,
	datab => \u_adc|Selector13~2_combout\,
	datac => \u_adc|Selector13~1_combout\,
	datad => \u_adc|i2c_read~0_combout\,
	combout => \u_adc|Selector13~3_combout\);

-- Location: FF_X48_Y30_N19
\u_adc|i2c_data_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|Selector13~3_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|i2c_read~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|i2c_data_in\(0));

-- Location: LCCOMB_X49_Y31_N18
\u_adc|u_i2c|shift_reg[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|shift_reg[0]~1_combout\ = (\u_adc|u_i2c|i2c_tick~q\ & (\rst_n~input_o\ & \u_adc|u_i2c|shift_reg[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|i2c_tick~q\,
	datac => \rst_n~input_o\,
	datad => \u_adc|u_i2c|shift_reg[0]~0_combout\,
	combout => \u_adc|u_i2c|shift_reg[0]~1_combout\);

-- Location: FF_X48_Y31_N29
\u_adc|u_i2c|shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_adc|i2c_data_in\(0),
	sload => VCC,
	ena => \u_adc|u_i2c|shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|shift_reg\(0));

-- Location: LCCOMB_X51_Y30_N26
\u_adc|Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector12~0_combout\ = (!\u_adc|current_state.STATE_READ_CH1~q\ & (!\u_adc|current_state.STATE_READ_CH0~q\ & \u_adc|sub_step\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|current_state.STATE_READ_CH1~q\,
	datac => \u_adc|current_state.STATE_READ_CH0~q\,
	datad => \u_adc|sub_step\(2),
	combout => \u_adc|Selector12~0_combout\);

-- Location: LCCOMB_X51_Y30_N8
\u_adc|i2c_data_in[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|i2c_data_in[1]~1_combout\ = (\u_adc|sub_step\(3)) # ((\u_adc|i2c_read~0_combout\) # (\u_adc|sub_step\(2) $ (\u_adc|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(3),
	datab => \u_adc|sub_step\(2),
	datac => \u_adc|i2c_read~0_combout\,
	datad => \u_adc|Equal3~0_combout\,
	combout => \u_adc|i2c_data_in[1]~1_combout\);

-- Location: LCCOMB_X51_Y30_N14
\u_adc|i2c_data_in[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|i2c_data_in[1]~2_combout\ = (\u_adc|i2c_read~1_combout\ & ((!\u_adc|i2c_data_in[1]~1_combout\) # (!\u_adc|i2c_data_in[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|i2c_read~1_combout\,
	datab => \u_adc|i2c_data_in[1]~0_combout\,
	datac => \u_adc|i2c_data_in[1]~1_combout\,
	combout => \u_adc|i2c_data_in[1]~2_combout\);

-- Location: FF_X51_Y30_N27
\u_adc|i2c_data_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|Selector12~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|i2c_data_in[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|i2c_data_in\(1));

-- Location: FF_X48_Y31_N15
\u_adc|u_i2c|shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_adc|i2c_data_in\(1),
	sload => VCC,
	ena => \u_adc|u_i2c|shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|shift_reg\(1));

-- Location: LCCOMB_X48_Y31_N14
\u_adc|u_i2c|Selector13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector13~1_combout\ = (\u_adc|u_i2c|bit_cnt\(2) & ((\u_adc|u_i2c|bit_cnt\(0) & (\u_adc|u_i2c|shift_reg\(0))) # (!\u_adc|u_i2c|bit_cnt\(0) & ((\u_adc|u_i2c|shift_reg\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|bit_cnt\(2),
	datab => \u_adc|u_i2c|shift_reg\(0),
	datac => \u_adc|u_i2c|shift_reg\(1),
	datad => \u_adc|u_i2c|bit_cnt\(0),
	combout => \u_adc|u_i2c|Selector13~1_combout\);

-- Location: LCCOMB_X51_Y30_N16
\u_adc|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector7~0_combout\ = (\u_adc|Selector21~0_combout\ & (!\u_adc|sub_step\(2) & (\u_adc|sub_step\(1) & \u_adc|sub_step\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector21~0_combout\,
	datab => \u_adc|sub_step\(2),
	datac => \u_adc|sub_step\(1),
	datad => \u_adc|sub_step\(0),
	combout => \u_adc|Selector7~0_combout\);

-- Location: FF_X51_Y30_N17
\u_adc|i2c_data_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|Selector7~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|i2c_data_in[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|i2c_data_in\(6));

-- Location: LCCOMB_X48_Y31_N16
\u_adc|u_i2c|shift_reg[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|shift_reg[6]~feeder_combout\ = \u_adc|i2c_data_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|i2c_data_in\(6),
	combout => \u_adc|u_i2c|shift_reg[6]~feeder_combout\);

-- Location: FF_X48_Y31_N17
\u_adc|u_i2c|shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|shift_reg[6]~feeder_combout\,
	ena => \u_adc|u_i2c|shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|shift_reg\(6));

-- Location: LCCOMB_X49_Y30_N12
\u_adc|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector6~0_combout\ = (\u_adc|i2c_data_in\(7) & ((\u_adc|current_state.STATE_WAIT_CH0~q\) # ((\u_adc|current_state.STATE_WAIT_CH1~q\) # (!\WS2812_u1|sys_mode.MODE_CLEAR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|i2c_data_in\(7),
	datab => \u_adc|current_state.STATE_WAIT_CH0~q\,
	datac => \u_adc|current_state.STATE_WAIT_CH1~q\,
	datad => \WS2812_u1|sys_mode.MODE_CLEAR~q\,
	combout => \u_adc|Selector6~0_combout\);

-- Location: LCCOMB_X48_Y30_N16
\u_adc|Selector6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector6~3_combout\ = (\u_adc|sub_step\(1) & (!\u_adc|sub_step\(3) & !\u_adc|sub_step\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(1),
	datac => \u_adc|sub_step\(3),
	datad => \u_adc|sub_step\(2),
	combout => \u_adc|Selector6~3_combout\);

-- Location: LCCOMB_X49_Y30_N4
\u_adc|Selector6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector6~2_combout\ = (!\u_adc|sub_step\(3) & ((\u_adc|sub_step\(0) & ((!\u_adc|sub_step\(2)))) # (!\u_adc|sub_step\(0) & (!\u_adc|sub_step\(1) & \u_adc|sub_step\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(3),
	datab => \u_adc|sub_step\(0),
	datac => \u_adc|sub_step\(1),
	datad => \u_adc|sub_step\(2),
	combout => \u_adc|Selector6~2_combout\);

-- Location: LCCOMB_X49_Y30_N18
\u_adc|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector6~1_combout\ = (\u_adc|current_state.STATE_WRITE_CH1~q\) # (\u_adc|current_state.STATE_WRITE_CH0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|current_state.STATE_WRITE_CH1~q\,
	datac => \u_adc|current_state.STATE_WRITE_CH0~q\,
	combout => \u_adc|Selector6~1_combout\);

-- Location: LCCOMB_X49_Y30_N30
\u_adc|Selector6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector6~4_combout\ = (\u_adc|Selector6~3_combout\ & (\u_adc|Selector6~2_combout\ & ((\u_adc|i2c_data_in\(7)) # (\u_adc|Selector6~1_combout\)))) # (!\u_adc|Selector6~3_combout\ & ((\u_adc|Selector6~2_combout\) # ((\u_adc|i2c_data_in\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector6~3_combout\,
	datab => \u_adc|Selector6~2_combout\,
	datac => \u_adc|i2c_data_in\(7),
	datad => \u_adc|Selector6~1_combout\,
	combout => \u_adc|Selector6~4_combout\);

-- Location: LCCOMB_X49_Y30_N22
\u_adc|Selector6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector6~5_combout\ = (\u_adc|Selector6~0_combout\) # ((\u_adc|Selector6~4_combout\ & ((\u_adc|Selector6~1_combout\) # (!\u_adc|Selector21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector6~0_combout\,
	datab => \u_adc|Selector21~0_combout\,
	datac => \u_adc|Selector6~4_combout\,
	datad => \u_adc|Selector6~1_combout\,
	combout => \u_adc|Selector6~5_combout\);

-- Location: FF_X49_Y30_N23
\u_adc|i2c_data_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|Selector6~5_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|i2c_read~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|i2c_data_in\(7));

-- Location: FF_X48_Y31_N3
\u_adc|u_i2c|shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_adc|i2c_data_in\(7),
	sload => VCC,
	ena => \u_adc|u_i2c|shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|shift_reg\(7));

-- Location: LCCOMB_X48_Y31_N2
\u_adc|u_i2c|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Mux0~0_combout\ = (\u_adc|u_i2c|bit_cnt\(1) & (((\u_adc|u_i2c|bit_cnt\(0))))) # (!\u_adc|u_i2c|bit_cnt\(1) & ((\u_adc|u_i2c|bit_cnt\(0) & (\u_adc|u_i2c|shift_reg\(6))) # (!\u_adc|u_i2c|bit_cnt\(0) & ((\u_adc|u_i2c|shift_reg\(7))))))

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
	combout => \u_adc|u_i2c|Mux0~0_combout\);

-- Location: LCCOMB_X49_Y30_N14
\u_adc|Selector9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector9~3_combout\ = (!\u_adc|sub_step\(3) & ((\u_adc|current_state.STATE_WRITE_CH1~q\) # ((!\u_adc|sub_step\(1) & \u_adc|current_state.STATE_WRITE_CH0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(1),
	datab => \u_adc|current_state.STATE_WRITE_CH1~q\,
	datac => \u_adc|current_state.STATE_WRITE_CH0~q\,
	datad => \u_adc|sub_step\(3),
	combout => \u_adc|Selector9~3_combout\);

-- Location: LCCOMB_X49_Y30_N8
\u_adc|Selector9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector9~4_combout\ = (\u_adc|sub_step\(0) & (\u_adc|Selector9~3_combout\ & !\u_adc|sub_step\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(0),
	datac => \u_adc|Selector9~3_combout\,
	datad => \u_adc|sub_step\(2),
	combout => \u_adc|Selector9~4_combout\);

-- Location: LCCOMB_X48_Y30_N22
\u_adc|Mux6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Mux6~4_combout\ = (\u_adc|i2c_data_in\(4) & ((\u_adc|sub_step\(2)) # ((\u_adc|sub_step\(0)) # (!\u_adc|sub_step\(1))))) # (!\u_adc|i2c_data_in\(4) & (!\u_adc|sub_step\(1) & (\u_adc|sub_step\(2) $ (\u_adc|sub_step\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(2),
	datab => \u_adc|sub_step\(0),
	datac => \u_adc|i2c_data_in\(4),
	datad => \u_adc|sub_step\(1),
	combout => \u_adc|Mux6~4_combout\);

-- Location: LCCOMB_X48_Y30_N8
\u_adc|Mux6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Mux6~5_combout\ = (\u_adc|Mux6~4_combout\ & ((\u_adc|i2c_data_in\(4)) # ((!\u_adc|sub_step\(3) & !\u_adc|sub_step\(1))))) # (!\u_adc|Mux6~4_combout\ & (\u_adc|i2c_data_in\(4) & (\u_adc|sub_step\(3) & \u_adc|sub_step\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Mux6~4_combout\,
	datab => \u_adc|i2c_data_in\(4),
	datac => \u_adc|sub_step\(3),
	datad => \u_adc|sub_step\(1),
	combout => \u_adc|Mux6~5_combout\);

-- Location: LCCOMB_X48_Y30_N14
\u_adc|Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector9~0_combout\ = (\u_adc|sub_step\(3)) # ((\u_adc|sub_step\(0)) # (\u_adc|sub_step\(2) $ (!\u_adc|sub_step\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|sub_step\(2),
	datab => \u_adc|sub_step\(3),
	datac => \u_adc|sub_step\(0),
	datad => \u_adc|sub_step\(1),
	combout => \u_adc|Selector9~0_combout\);

-- Location: LCCOMB_X49_Y30_N20
\u_adc|Selector9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector9~1_combout\ = (\u_adc|Selector9~0_combout\ & ((\u_adc|current_state.STATE_WRITE_CH1~q\) # ((\u_adc|current_state.STATE_WRITE_CH0~q\ & !\u_adc|Selector0~0_combout\)))) # (!\u_adc|Selector9~0_combout\ & 
-- (\u_adc|current_state.STATE_WRITE_CH0~q\ & ((!\u_adc|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector9~0_combout\,
	datab => \u_adc|current_state.STATE_WRITE_CH0~q\,
	datac => \u_adc|current_state.STATE_WRITE_CH1~q\,
	datad => \u_adc|Selector0~0_combout\,
	combout => \u_adc|Selector9~1_combout\);

-- Location: LCCOMB_X48_Y30_N28
\u_adc|Selector9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector9~2_combout\ = (\u_adc|i2c_data_in\(4) & ((\u_adc|Selector9~1_combout\) # ((!\WS2812_u1|sys_mode.MODE_CLEAR~q\) # (!\u_adc|always1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector9~1_combout\,
	datab => \u_adc|i2c_data_in\(4),
	datac => \u_adc|always1~7_combout\,
	datad => \WS2812_u1|sys_mode.MODE_CLEAR~q\,
	combout => \u_adc|Selector9~2_combout\);

-- Location: LCCOMB_X48_Y30_N4
\u_adc|Selector9~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|Selector9~5_combout\ = (\u_adc|Selector9~4_combout\) # ((\u_adc|Selector9~2_combout\) # ((!\u_adc|Selector21~0_combout\ & \u_adc|Mux6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Selector21~0_combout\,
	datab => \u_adc|Selector9~4_combout\,
	datac => \u_adc|Mux6~5_combout\,
	datad => \u_adc|Selector9~2_combout\,
	combout => \u_adc|Selector9~5_combout\);

-- Location: FF_X48_Y30_N5
\u_adc|i2c_data_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|Selector9~5_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|i2c_read~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|i2c_data_in\(4));

-- Location: FF_X48_Y31_N13
\u_adc|u_i2c|shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_adc|i2c_data_in\(4),
	sload => VCC,
	ena => \u_adc|u_i2c|shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|shift_reg\(4));

-- Location: LCCOMB_X48_Y31_N12
\u_adc|u_i2c|Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector13~0_combout\ = (!\u_adc|u_i2c|bit_cnt\(2) & (\u_adc|u_i2c|Mux0~0_combout\ & ((\u_adc|u_i2c|shift_reg\(4)) # (!\u_adc|u_i2c|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|bit_cnt\(2),
	datab => \u_adc|u_i2c|Mux0~0_combout\,
	datac => \u_adc|u_i2c|shift_reg\(4),
	datad => \u_adc|u_i2c|bit_cnt\(1),
	combout => \u_adc|u_i2c|Selector13~0_combout\);

-- Location: LCCOMB_X49_Y31_N0
\u_adc|u_i2c|Selector13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector13~2_combout\ = (\u_adc|u_i2c|state.WRITE~q\ & ((\u_adc|u_i2c|Selector13~0_combout\) # ((\u_adc|u_i2c|Selector13~1_combout\ & \u_adc|u_i2c|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|Selector13~1_combout\,
	datab => \u_adc|u_i2c|bit_cnt\(1),
	datac => \u_adc|u_i2c|state.WRITE~q\,
	datad => \u_adc|u_i2c|Selector13~0_combout\,
	combout => \u_adc|u_i2c|Selector13~2_combout\);

-- Location: LCCOMB_X52_Y31_N18
\u_adc|u_i2c|Selector13~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector13~3_combout\ = (\u_adc|u_i2c|Selector13~2_combout\) # ((\u_adc|u_i2c|state.START~q\) # ((\u_adc|i2c_ack_in~q\ & \u_adc|u_i2c|state.WACK~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|i2c_ack_in~q\,
	datab => \u_adc|u_i2c|state.WACK~q\,
	datac => \u_adc|u_i2c|Selector13~2_combout\,
	datad => \u_adc|u_i2c|state.START~q\,
	combout => \u_adc|u_i2c|Selector13~3_combout\);

-- Location: LCCOMB_X53_Y31_N20
\u_adc|u_i2c|Selector13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector13~4_combout\ = (!\u_adc|u_i2c|phase\(0) & ((\u_adc|u_i2c|phase\(1) & (\u_adc|u_i2c|state.STOP~q\)) # (!\u_adc|u_i2c|phase\(1) & ((\u_adc|u_i2c|Selector13~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|state.STOP~q\,
	datab => \u_adc|u_i2c|Selector13~3_combout\,
	datac => \u_adc|u_i2c|phase\(0),
	datad => \u_adc|u_i2c|phase\(1),
	combout => \u_adc|u_i2c|Selector13~4_combout\);

-- Location: LCCOMB_X53_Y31_N28
\u_adc|u_i2c|Selector13~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector13~9_combout\ = (!\u_adc|u_i2c|Selector13~5_combout\ & (!\u_adc|u_i2c|Selector13~4_combout\ & ((\u_adc|u_i2c|sda_out~q\) # (!\u_adc|u_i2c|Selector13~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|Selector13~8_combout\,
	datab => \u_adc|u_i2c|Selector13~5_combout\,
	datac => \u_adc|u_i2c|sda_out~q\,
	datad => \u_adc|u_i2c|Selector13~4_combout\,
	combout => \u_adc|u_i2c|Selector13~9_combout\);

-- Location: FF_X53_Y31_N29
\u_adc|u_i2c|sda_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|Selector13~9_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|u_i2c|i2c_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|sda_out~q\);

-- Location: LCCOMB_X52_Y31_N16
\u_adc|u_i2c|Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector15~0_combout\ = ((\u_adc|u_i2c|Equal1~0_combout\ & ((\u_adc|u_i2c|state.READ~q\) # (\u_adc|u_i2c|state.RACK~q\)))) # (!\u_adc|u_i2c|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|state.READ~q\,
	datab => \u_adc|u_i2c|state.IDLE~q\,
	datac => \u_adc|u_i2c|state.RACK~q\,
	datad => \u_adc|u_i2c|Equal1~0_combout\,
	combout => \u_adc|u_i2c|Selector15~0_combout\);

-- Location: LCCOMB_X53_Y31_N12
\u_adc|u_i2c|Selector15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector15~1_combout\ = (\u_adc|u_i2c|sda_oe~q\ & (\u_adc|u_i2c|state.RACK~q\ & ((\u_adc|u_i2c|Equal3~0_combout\)))) # (!\u_adc|u_i2c|sda_oe~q\ & ((\u_adc|u_i2c|Selector15~0_combout\) # ((\u_adc|u_i2c|state.RACK~q\ & 
-- \u_adc|u_i2c|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|sda_oe~q\,
	datab => \u_adc|u_i2c|state.RACK~q\,
	datac => \u_adc|u_i2c|Selector15~0_combout\,
	datad => \u_adc|u_i2c|Equal3~0_combout\,
	combout => \u_adc|u_i2c|Selector15~1_combout\);

-- Location: LCCOMB_X52_Y31_N22
\u_adc|u_i2c|Selector15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector15~2_combout\ = (\u_adc|u_i2c|state.WRITE~q\) # ((\u_adc|u_i2c|state.WACK~q\) # ((\u_adc|u_i2c|state.STOP~q\) # (\u_adc|u_i2c|state.START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|state.WRITE~q\,
	datab => \u_adc|u_i2c|state.WACK~q\,
	datac => \u_adc|u_i2c|state.STOP~q\,
	datad => \u_adc|u_i2c|state.START~q\,
	combout => \u_adc|u_i2c|Selector15~2_combout\);

-- Location: LCCOMB_X53_Y31_N18
\u_adc|u_i2c|Selector15~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector15~3_combout\ = (!\u_adc|u_i2c|Selector15~1_combout\ & (((\u_adc|u_i2c|Equal1~0_combout\ & \u_adc|u_i2c|sda_oe~q\)) # (!\u_adc|u_i2c|Selector15~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|Selector15~1_combout\,
	datab => \u_adc|u_i2c|Equal1~0_combout\,
	datac => \u_adc|u_i2c|sda_oe~q\,
	datad => \u_adc|u_i2c|Selector15~2_combout\,
	combout => \u_adc|u_i2c|Selector15~3_combout\);

-- Location: FF_X53_Y31_N19
\u_adc|u_i2c|sda_oe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|Selector15~3_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|u_i2c|i2c_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|sda_oe~q\);

-- Location: LCCOMB_X53_Y31_N24
\u_adc|u_i2c|Selector14~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector14~3_combout\ = (\u_adc|u_i2c|state.START~q\ & ((\u_adc|u_i2c|scl~q\ & (!\u_adc|u_i2c|phase\(1) & !\u_adc|u_i2c|phase\(0))) # (!\u_adc|u_i2c|scl~q\ & ((!\u_adc|u_i2c|phase\(0)) # (!\u_adc|u_i2c|phase\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|scl~q\,
	datab => \u_adc|u_i2c|phase\(1),
	datac => \u_adc|u_i2c|phase\(0),
	datad => \u_adc|u_i2c|state.START~q\,
	combout => \u_adc|u_i2c|Selector14~3_combout\);

-- Location: LCCOMB_X52_Y31_N26
\u_adc|u_i2c|Selector14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector14~1_combout\ = (\u_adc|u_i2c|state.WRITE~q\) # ((\u_adc|u_i2c|state.WACK~q\) # ((\u_adc|u_i2c|state.RACK~q\) # (\u_adc|u_i2c|state.READ~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|state.WRITE~q\,
	datab => \u_adc|u_i2c|state.WACK~q\,
	datac => \u_adc|u_i2c|state.RACK~q\,
	datad => \u_adc|u_i2c|state.READ~q\,
	combout => \u_adc|u_i2c|Selector14~1_combout\);

-- Location: LCCOMB_X53_Y31_N26
\u_adc|u_i2c|Selector14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector14~0_combout\ = (\u_adc|u_i2c|phase\(1) & ((!\u_adc|u_i2c|scl~q\))) # (!\u_adc|u_i2c|phase\(1) & (\u_adc|u_i2c|phase\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|u_i2c|phase\(1),
	datac => \u_adc|u_i2c|phase\(0),
	datad => \u_adc|u_i2c|scl~q\,
	combout => \u_adc|u_i2c|Selector14~0_combout\);

-- Location: LCCOMB_X53_Y31_N10
\u_adc|u_i2c|Selector14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector14~2_combout\ = (\u_adc|u_i2c|Selector14~0_combout\ & ((\u_adc|u_i2c|state.STOP~q\) # ((\u_adc|u_i2c|Selector14~1_combout\ & !\u_adc|u_i2c|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|Selector14~1_combout\,
	datab => \u_adc|u_i2c|Equal3~0_combout\,
	datac => \u_adc|u_i2c|Selector14~0_combout\,
	datad => \u_adc|u_i2c|state.STOP~q\,
	combout => \u_adc|u_i2c|Selector14~2_combout\);

-- Location: LCCOMB_X53_Y31_N2
\u_adc|u_i2c|Selector14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Selector14~4_combout\ = (!\u_adc|u_i2c|Selector14~3_combout\ & (!\u_adc|u_i2c|Selector14~2_combout\ & ((\u_adc|u_i2c|state.IDLE~q\) # (\u_adc|u_i2c|scl~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|state.IDLE~q\,
	datab => \u_adc|u_i2c|Selector14~3_combout\,
	datac => \u_adc|u_i2c|scl~q\,
	datad => \u_adc|u_i2c|Selector14~2_combout\,
	combout => \u_adc|u_i2c|Selector14~4_combout\);

-- Location: FF_X53_Y31_N3
\u_adc|u_i2c|scl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|Selector14~4_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|u_i2c|i2c_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|scl~q\);

-- Location: LCCOMB_X49_Y31_N30
\u_adc|u_i2c|Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Decoder0~1_combout\ = (\u_adc|u_i2c|state.READ~q\ & (!\u_adc|u_i2c|bit_cnt\(3) & \u_adc|u_i2c|Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|state.READ~q\,
	datab => \u_adc|u_i2c|bit_cnt\(3),
	datad => \u_adc|u_i2c|Decoder0~0_combout\,
	combout => \u_adc|u_i2c|Decoder0~1_combout\);

-- Location: LCCOMB_X48_Y31_N20
\u_adc|u_i2c|data_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|data_out[0]~0_combout\ = (\u_adc|u_i2c|Decoder0~1_combout\ & ((\u_adc|u_i2c|Equal4~0_combout\ & ((\SDA~input_o\))) # (!\u_adc|u_i2c|Equal4~0_combout\ & (\u_adc|u_i2c|data_out\(0))))) # (!\u_adc|u_i2c|Decoder0~1_combout\ & 
-- (((\u_adc|u_i2c|data_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|Decoder0~1_combout\,
	datab => \u_adc|u_i2c|Equal4~0_combout\,
	datac => \u_adc|u_i2c|data_out\(0),
	datad => \SDA~input_o\,
	combout => \u_adc|u_i2c|data_out[0]~0_combout\);

-- Location: FF_X48_Y31_N21
\u_adc|u_i2c|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|data_out[0]~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|data_out\(0));

-- Location: LCCOMB_X51_Y34_N28
\u_adc|joystick_x[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_x[0]~1_combout\ = (\u_adc|Equal1~0_combout\ & (\u_adc|current_state.STATE_READ_CH0~q\ & \u_adc|joystick_x[12]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Equal1~0_combout\,
	datac => \u_adc|current_state.STATE_READ_CH0~q\,
	datad => \u_adc|joystick_x[12]~0_combout\,
	combout => \u_adc|joystick_x[0]~1_combout\);

-- Location: FF_X42_Y35_N17
\u_adc|joystick_x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_adc|u_i2c|data_out\(0),
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_adc|joystick_x[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_x\(0));

-- Location: LCCOMB_X48_Y31_N28
\u_adc|u_i2c|Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Decoder0~2_combout\ = (\u_adc|u_i2c|Decoder0~1_combout\ & (\u_adc|u_i2c|bit_cnt\(2) & !\u_adc|u_i2c|bit_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|Decoder0~1_combout\,
	datab => \u_adc|u_i2c|bit_cnt\(2),
	datad => \u_adc|u_i2c|bit_cnt\(0),
	combout => \u_adc|u_i2c|Decoder0~2_combout\);

-- Location: LCCOMB_X48_Y31_N22
\u_adc|u_i2c|data_out[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|data_out[1]~1_combout\ = (\u_adc|u_i2c|bit_cnt\(1) & ((\u_adc|u_i2c|Decoder0~2_combout\ & ((\SDA~input_o\))) # (!\u_adc|u_i2c|Decoder0~2_combout\ & (\u_adc|u_i2c|data_out\(1))))) # (!\u_adc|u_i2c|bit_cnt\(1) & (((\u_adc|u_i2c|data_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|bit_cnt\(1),
	datab => \u_adc|u_i2c|Decoder0~2_combout\,
	datac => \u_adc|u_i2c|data_out\(1),
	datad => \SDA~input_o\,
	combout => \u_adc|u_i2c|data_out[1]~1_combout\);

-- Location: FF_X48_Y31_N23
\u_adc|u_i2c|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|data_out[1]~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|data_out\(1));

-- Location: FF_X42_Y35_N7
\u_adc|joystick_x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_adc|u_i2c|data_out\(1),
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_adc|joystick_x[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_x\(1));

-- Location: LCCOMB_X48_Y31_N30
\u_adc|u_i2c|Decoder0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Decoder0~3_combout\ = (!\u_adc|u_i2c|bit_cnt\(1) & (\u_adc|u_i2c|Decoder0~1_combout\ & \u_adc|u_i2c|bit_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|bit_cnt\(1),
	datac => \u_adc|u_i2c|Decoder0~1_combout\,
	datad => \u_adc|u_i2c|bit_cnt\(0),
	combout => \u_adc|u_i2c|Decoder0~3_combout\);

-- Location: LCCOMB_X48_Y31_N0
\u_adc|u_i2c|data_out[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|data_out[2]~2_combout\ = (\u_adc|u_i2c|Decoder0~3_combout\ & ((\u_adc|u_i2c|bit_cnt\(2) & (\SDA~input_o\)) # (!\u_adc|u_i2c|bit_cnt\(2) & ((\u_adc|u_i2c|data_out\(2)))))) # (!\u_adc|u_i2c|Decoder0~3_combout\ & (((\u_adc|u_i2c|data_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|Decoder0~3_combout\,
	datab => \SDA~input_o\,
	datac => \u_adc|u_i2c|data_out\(2),
	datad => \u_adc|u_i2c|bit_cnt\(2),
	combout => \u_adc|u_i2c|data_out[2]~2_combout\);

-- Location: FF_X48_Y31_N1
\u_adc|u_i2c|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|data_out[2]~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|data_out\(2));

-- Location: FF_X42_Y35_N29
\u_adc|joystick_x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_adc|u_i2c|data_out\(2),
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_adc|joystick_x[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_x\(2));

-- Location: LCCOMB_X48_Y31_N18
\u_adc|u_i2c|data_out[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|data_out[3]~3_combout\ = (\u_adc|u_i2c|bit_cnt\(1) & (((\u_adc|u_i2c|data_out\(3))))) # (!\u_adc|u_i2c|bit_cnt\(1) & ((\u_adc|u_i2c|Decoder0~2_combout\ & ((\SDA~input_o\))) # (!\u_adc|u_i2c|Decoder0~2_combout\ & (\u_adc|u_i2c|data_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|bit_cnt\(1),
	datab => \u_adc|u_i2c|Decoder0~2_combout\,
	datac => \u_adc|u_i2c|data_out\(3),
	datad => \SDA~input_o\,
	combout => \u_adc|u_i2c|data_out[3]~3_combout\);

-- Location: FF_X48_Y31_N19
\u_adc|u_i2c|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|data_out[3]~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|data_out\(3));

-- Location: FF_X42_Y35_N19
\u_adc|joystick_x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_adc|u_i2c|data_out\(3),
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_adc|joystick_x[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_x\(3));

-- Location: LCCOMB_X48_Y31_N24
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

-- Location: LCCOMB_X48_Y31_N4
\u_adc|u_i2c|data_out[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|data_out[4]~4_combout\ = (\u_adc|u_i2c|Decoder0~1_combout\ & ((\u_adc|u_i2c|Decoder0~4_combout\ & (\SDA~input_o\)) # (!\u_adc|u_i2c|Decoder0~4_combout\ & ((\u_adc|u_i2c|data_out\(4)))))) # (!\u_adc|u_i2c|Decoder0~1_combout\ & 
-- (((\u_adc|u_i2c|data_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|Decoder0~1_combout\,
	datab => \SDA~input_o\,
	datac => \u_adc|u_i2c|data_out\(4),
	datad => \u_adc|u_i2c|Decoder0~4_combout\,
	combout => \u_adc|u_i2c|data_out[4]~4_combout\);

-- Location: FF_X48_Y31_N5
\u_adc|u_i2c|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|data_out[4]~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|data_out\(4));

-- Location: LCCOMB_X42_Y35_N20
\u_adc|joystick_x[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_x[4]~3_combout\ = !\u_adc|u_i2c|data_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|u_i2c|data_out\(4),
	combout => \u_adc|joystick_x[4]~3_combout\);

-- Location: FF_X42_Y35_N21
\u_adc|joystick_x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_x[4]~3_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|joystick_x[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_x\(4));

-- Location: LCCOMB_X48_Y31_N26
\u_adc|u_i2c|Decoder0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|Decoder0~5_combout\ = (!\u_adc|u_i2c|bit_cnt\(2) & (\u_adc|u_i2c|Decoder0~1_combout\ & !\u_adc|u_i2c|bit_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|bit_cnt\(2),
	datac => \u_adc|u_i2c|Decoder0~1_combout\,
	datad => \u_adc|u_i2c|bit_cnt\(0),
	combout => \u_adc|u_i2c|Decoder0~5_combout\);

-- Location: LCCOMB_X48_Y31_N10
\u_adc|u_i2c|data_out[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|data_out[5]~5_combout\ = (\u_adc|u_i2c|Decoder0~5_combout\ & ((\u_adc|u_i2c|bit_cnt\(1) & (\SDA~input_o\)) # (!\u_adc|u_i2c|bit_cnt\(1) & ((\u_adc|u_i2c|data_out\(5)))))) # (!\u_adc|u_i2c|Decoder0~5_combout\ & (((\u_adc|u_i2c|data_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|Decoder0~5_combout\,
	datab => \SDA~input_o\,
	datac => \u_adc|u_i2c|data_out\(5),
	datad => \u_adc|u_i2c|bit_cnt\(1),
	combout => \u_adc|u_i2c|data_out[5]~5_combout\);

-- Location: FF_X48_Y31_N11
\u_adc|u_i2c|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|data_out[5]~5_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|data_out\(5));

-- Location: LCCOMB_X42_Y35_N14
\u_adc|joystick_x[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_x[5]~4_combout\ = !\u_adc|u_i2c|data_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|u_i2c|data_out\(5),
	combout => \u_adc|joystick_x[5]~4_combout\);

-- Location: FF_X42_Y35_N15
\u_adc|joystick_x[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_x[5]~4_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|joystick_x[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_x\(5));

-- Location: LCCOMB_X48_Y31_N8
\u_adc|u_i2c|data_out[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|data_out[6]~6_combout\ = (\u_adc|u_i2c|Decoder0~3_combout\ & ((\u_adc|u_i2c|bit_cnt\(2) & ((\u_adc|u_i2c|data_out\(6)))) # (!\u_adc|u_i2c|bit_cnt\(2) & (\SDA~input_o\)))) # (!\u_adc|u_i2c|Decoder0~3_combout\ & (((\u_adc|u_i2c|data_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|Decoder0~3_combout\,
	datab => \SDA~input_o\,
	datac => \u_adc|u_i2c|data_out\(6),
	datad => \u_adc|u_i2c|bit_cnt\(2),
	combout => \u_adc|u_i2c|data_out[6]~6_combout\);

-- Location: FF_X48_Y31_N9
\u_adc|u_i2c|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|data_out[6]~6_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|data_out\(6));

-- Location: LCCOMB_X41_Y35_N6
\u_adc|joystick_x[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_x[6]~5_combout\ = !\u_adc|u_i2c|data_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|u_i2c|data_out\(6),
	combout => \u_adc|joystick_x[6]~5_combout\);

-- Location: FF_X42_Y35_N1
\u_adc|joystick_x[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_adc|joystick_x[6]~5_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_adc|joystick_x[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_x\(6));

-- Location: LCCOMB_X48_Y31_N6
\u_adc|u_i2c|data_out[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|u_i2c|data_out[7]~7_combout\ = (\u_adc|u_i2c|Decoder0~5_combout\ & ((\u_adc|u_i2c|bit_cnt\(1) & ((\u_adc|u_i2c|data_out\(7)))) # (!\u_adc|u_i2c|bit_cnt\(1) & (\SDA~input_o\)))) # (!\u_adc|u_i2c|Decoder0~5_combout\ & (((\u_adc|u_i2c|data_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|u_i2c|Decoder0~5_combout\,
	datab => \SDA~input_o\,
	datac => \u_adc|u_i2c|data_out\(7),
	datad => \u_adc|u_i2c|bit_cnt\(1),
	combout => \u_adc|u_i2c|data_out[7]~7_combout\);

-- Location: FF_X48_Y31_N7
\u_adc|u_i2c|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|u_i2c|data_out[7]~7_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|u_i2c|data_out\(7));

-- Location: LCCOMB_X41_Y34_N20
\u_adc|joystick_x[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_x[7]~6_combout\ = !\u_adc|u_i2c|data_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|u_i2c|data_out\(7),
	combout => \u_adc|joystick_x[7]~6_combout\);

-- Location: FF_X41_Y34_N21
\u_adc|joystick_x[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_x[7]~6_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|joystick_x[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_x\(7));

-- Location: LCCOMB_X41_Y35_N20
\u_adc|data_high[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|data_high[0]~feeder_combout\ = \u_adc|u_i2c|data_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_adc|u_i2c|data_out\(0),
	combout => \u_adc|data_high[0]~feeder_combout\);

-- Location: LCCOMB_X50_Y31_N18
\u_adc|data_high[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|data_high[0]~0_combout\ = (!\u_adc|sub_step\(3) & (\u_adc|sub_step\(2) & ((\u_adc|current_state.STATE_READ_CH0~q\) # (\u_adc|current_state.STATE_READ_CH1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|current_state.STATE_READ_CH0~q\,
	datab => \u_adc|sub_step\(3),
	datac => \u_adc|current_state.STATE_READ_CH1~q\,
	datad => \u_adc|sub_step\(2),
	combout => \u_adc|data_high[0]~0_combout\);

-- Location: LCCOMB_X50_Y31_N8
\u_adc|data_high[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|data_high[0]~1_combout\ = (\u_adc|data_high[0]~0_combout\ & (\u_adc|joystick_x[12]~0_combout\ & (!\u_adc|sub_step\(1) & \u_adc|sub_step\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|data_high[0]~0_combout\,
	datab => \u_adc|joystick_x[12]~0_combout\,
	datac => \u_adc|sub_step\(1),
	datad => \u_adc|sub_step\(0),
	combout => \u_adc|data_high[0]~1_combout\);

-- Location: FF_X41_Y35_N21
\u_adc|data_high[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|data_high[0]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|data_high[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|data_high\(0));

-- Location: LCCOMB_X42_Y35_N2
\u_adc|joystick_x[8]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_x[8]~7_combout\ = !\u_adc|data_high\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|data_high\(0),
	combout => \u_adc|joystick_x[8]~7_combout\);

-- Location: FF_X42_Y35_N3
\u_adc|joystick_x[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_x[8]~7_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|joystick_x[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_x\(8));

-- Location: LCCOMB_X41_Y35_N30
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

-- Location: FF_X41_Y35_N31
\u_adc|data_high[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|data_high[1]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|data_high[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|data_high\(1));

-- Location: LCCOMB_X41_Y34_N6
\u_adc|joystick_x[9]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_x[9]~8_combout\ = !\u_adc|data_high\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_adc|data_high\(1),
	combout => \u_adc|joystick_x[9]~8_combout\);

-- Location: FF_X41_Y34_N7
\u_adc|joystick_x[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_x[9]~8_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|joystick_x[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_x\(9));

-- Location: LCCOMB_X41_Y35_N24
\u_adc|data_high[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|data_high[2]~feeder_combout\ = \u_adc|u_i2c|data_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_adc|u_i2c|data_out\(2),
	combout => \u_adc|data_high[2]~feeder_combout\);

-- Location: FF_X41_Y35_N25
\u_adc|data_high[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|data_high[2]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|data_high[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|data_high\(2));

-- Location: LCCOMB_X41_Y34_N0
\u_adc|joystick_x[10]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_x[10]~9_combout\ = !\u_adc|data_high\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|data_high\(2),
	combout => \u_adc|joystick_x[10]~9_combout\);

-- Location: FF_X41_Y34_N1
\u_adc|joystick_x[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_x[10]~9_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|joystick_x[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_x\(10));

-- Location: LCCOMB_X41_Y35_N10
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

-- Location: FF_X41_Y35_N11
\u_adc|data_high[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|data_high[3]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|data_high[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|data_high\(3));

-- Location: LCCOMB_X41_Y34_N26
\u_adc|joystick_x[11]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_x[11]~10_combout\ = !\u_adc|data_high\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|data_high\(3),
	combout => \u_adc|joystick_x[11]~10_combout\);

-- Location: FF_X41_Y34_N27
\u_adc|joystick_x[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_x[11]~10_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|joystick_x[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_x\(11));

-- Location: LCCOMB_X41_Y35_N0
\u_adc|data_high[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|data_high[4]~feeder_combout\ = \u_adc|u_i2c|data_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_adc|u_i2c|data_out\(4),
	combout => \u_adc|data_high[4]~feeder_combout\);

-- Location: FF_X41_Y35_N1
\u_adc|data_high[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|data_high[4]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|data_high[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|data_high\(4));

-- Location: LCCOMB_X41_Y34_N24
\u_adc|joystick_x[12]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_x[12]~11_combout\ = !\u_adc|data_high\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|data_high\(4),
	combout => \u_adc|joystick_x[12]~11_combout\);

-- Location: FF_X41_Y34_N25
\u_adc|joystick_x[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_x[12]~11_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|joystick_x[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_x\(12));

-- Location: FF_X46_Y34_N25
\u_adc|data_high[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_adc|u_i2c|data_out\(5),
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_adc|data_high[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|data_high\(5));

-- Location: LCCOMB_X44_Y34_N12
\u_adc|joystick_x[13]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_x[13]~12_combout\ = !\u_adc|data_high\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|data_high\(5),
	combout => \u_adc|joystick_x[13]~12_combout\);

-- Location: FF_X44_Y34_N13
\u_adc|joystick_x[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_x[13]~12_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|joystick_x[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_x\(13));

-- Location: LCCOMB_X41_Y35_N26
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

-- Location: FF_X41_Y35_N27
\u_adc|data_high[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|data_high[6]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|data_high[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|data_high\(6));

-- Location: LCCOMB_X44_Y35_N30
\u_adc|joystick_x[14]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_x[14]~13_combout\ = !\u_adc|data_high\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|data_high\(6),
	combout => \u_adc|joystick_x[14]~13_combout\);

-- Location: LCCOMB_X44_Y34_N18
\u_adc|joystick_x[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_x[14]~feeder_combout\ = \u_adc|joystick_x[14]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_adc|joystick_x[14]~13_combout\,
	combout => \u_adc|joystick_x[14]~feeder_combout\);

-- Location: FF_X44_Y34_N19
\u_adc|joystick_x[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_x[14]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|joystick_x[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_x\(14));

-- Location: FF_X46_Y34_N27
\u_adc|data_high[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_adc|u_i2c|data_out\(7),
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_adc|data_high[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|data_high\(7));

-- Location: FF_X44_Y34_N5
\u_adc|joystick_x[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_adc|data_high\(7),
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_adc|joystick_x[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_x\(15));

-- Location: LCCOMB_X41_Y35_N12
\u_adc|joystick_y[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_y[0]~feeder_combout\ = \u_adc|u_i2c|data_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_adc|u_i2c|data_out\(0),
	combout => \u_adc|joystick_y[0]~feeder_combout\);

-- Location: LCCOMB_X51_Y34_N6
\u_adc|joystick_y[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_y[0]~2_combout\ = (\u_adc|Equal1~0_combout\ & (\u_adc|current_state.STATE_READ_CH1~q\ & (!\u_adc|current_state.STATE_READ_CH0~q\ & \u_adc|joystick_x[12]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|Equal1~0_combout\,
	datab => \u_adc|current_state.STATE_READ_CH1~q\,
	datac => \u_adc|current_state.STATE_READ_CH0~q\,
	datad => \u_adc|joystick_x[12]~0_combout\,
	combout => \u_adc|joystick_y[0]~2_combout\);

-- Location: FF_X41_Y35_N13
\u_adc|joystick_y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_y[0]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|joystick_y[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_y\(0));

-- Location: LCCOMB_X41_Y35_N14
\u_adc|joystick_y[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_y[1]~feeder_combout\ = \u_adc|u_i2c|data_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|u_i2c|data_out\(1),
	combout => \u_adc|joystick_y[1]~feeder_combout\);

-- Location: FF_X41_Y35_N15
\u_adc|joystick_y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_y[1]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|joystick_y[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_y\(1));

-- Location: FF_X41_Y35_N9
\u_adc|joystick_y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_adc|u_i2c|data_out\(2),
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_adc|joystick_y[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_y\(2));

-- Location: LCCOMB_X41_Y35_N18
\u_adc|joystick_y[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_y[3]~feeder_combout\ = \u_adc|u_i2c|data_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|u_i2c|data_out\(3),
	combout => \u_adc|joystick_y[3]~feeder_combout\);

-- Location: FF_X41_Y35_N19
\u_adc|joystick_y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_y[3]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|joystick_y[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_y\(3));

-- Location: LCCOMB_X41_Y35_N16
\u_adc|joystick_y[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_y[4]~3_combout\ = !\u_adc|u_i2c|data_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_adc|u_i2c|data_out\(4),
	combout => \u_adc|joystick_y[4]~3_combout\);

-- Location: FF_X41_Y35_N17
\u_adc|joystick_y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_y[4]~3_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|joystick_y[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_y\(4));

-- Location: LCCOMB_X42_Y35_N24
\u_adc|joystick_y[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_y[5]~4_combout\ = !\u_adc|u_i2c|data_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|u_i2c|data_out\(5),
	combout => \u_adc|joystick_y[5]~4_combout\);

-- Location: FF_X42_Y35_N25
\u_adc|joystick_y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_y[5]~4_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|joystick_y[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_y\(5));

-- Location: LCCOMB_X41_Y35_N22
\u_adc|joystick_y[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_y[6]~5_combout\ = !\u_adc|u_i2c|data_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|u_i2c|data_out\(6),
	combout => \u_adc|joystick_y[6]~5_combout\);

-- Location: FF_X41_Y35_N23
\u_adc|joystick_y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_y[6]~5_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|joystick_y[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_y\(6));

-- Location: LCCOMB_X41_Y34_N10
\u_adc|joystick_y[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_y[7]~6_combout\ = !\u_adc|u_i2c|data_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|u_i2c|data_out\(7),
	combout => \u_adc|joystick_y[7]~6_combout\);

-- Location: FF_X41_Y34_N11
\u_adc|joystick_y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_y[7]~6_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|joystick_y[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_y\(7));

-- Location: LCCOMB_X42_Y35_N10
\u_adc|joystick_y[8]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_y[8]~7_combout\ = !\u_adc|data_high\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|data_high\(0),
	combout => \u_adc|joystick_y[8]~7_combout\);

-- Location: FF_X42_Y35_N11
\u_adc|joystick_y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_y[8]~7_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|joystick_y[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_y\(8));

-- Location: LCCOMB_X41_Y34_N16
\u_adc|joystick_y[9]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_y[9]~8_combout\ = !\u_adc|data_high\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_adc|data_high\(1),
	combout => \u_adc|joystick_y[9]~8_combout\);

-- Location: FF_X41_Y34_N17
\u_adc|joystick_y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_y[9]~8_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|joystick_y[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_y\(9));

-- Location: LCCOMB_X41_Y34_N18
\u_adc|joystick_y[10]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_y[10]~9_combout\ = !\u_adc|data_high\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|data_high\(2),
	combout => \u_adc|joystick_y[10]~9_combout\);

-- Location: FF_X41_Y34_N19
\u_adc|joystick_y[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_y[10]~9_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|joystick_y[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_y\(10));

-- Location: LCCOMB_X41_Y34_N12
\u_adc|joystick_y[11]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_y[11]~10_combout\ = !\u_adc|data_high\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|data_high\(3),
	combout => \u_adc|joystick_y[11]~10_combout\);

-- Location: FF_X41_Y34_N13
\u_adc|joystick_y[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_y[11]~10_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|joystick_y[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_y\(11));

-- Location: LCCOMB_X41_Y35_N28
\u_adc|joystick_y[12]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_y[12]~11_combout\ = !\u_adc|data_high\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|data_high\(4),
	combout => \u_adc|joystick_y[12]~11_combout\);

-- Location: FF_X43_Y34_N29
\u_adc|joystick_y[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_adc|joystick_y[12]~11_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_adc|joystick_y[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_y\(12));

-- Location: LCCOMB_X44_Y34_N30
\u_adc|joystick_y[13]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_y[13]~12_combout\ = !\u_adc|data_high\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|data_high\(5),
	combout => \u_adc|joystick_y[13]~12_combout\);

-- Location: FF_X44_Y34_N31
\u_adc|joystick_y[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_adc|joystick_y[13]~12_combout\,
	clrn => \rst_n~input_o\,
	ena => \u_adc|joystick_y[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_y\(13));

-- Location: LCCOMB_X44_Y35_N4
\u_adc|joystick_y[14]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_adc|joystick_y[14]~13_combout\ = !\u_adc|data_high\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_adc|data_high\(6),
	combout => \u_adc|joystick_y[14]~13_combout\);

-- Location: FF_X43_Y34_N23
\u_adc|joystick_y[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_adc|joystick_y[14]~13_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_adc|joystick_y[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_y\(14));

-- Location: FF_X44_Y34_N29
\u_adc|joystick_y[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_adc|data_high\(7),
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \u_adc|joystick_y[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_adc|joystick_y\(15));

-- Location: IOIBUF_X61_Y0_N8
\SW~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW,
	o => \SW~input_o\);

-- Location: LCCOMB_X57_Y16_N22
\u_btn|sw_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|sw_reg~0_combout\ = !\SW~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~input_o\,
	combout => \u_btn|sw_reg~0_combout\);

-- Location: FF_X57_Y16_N23
\u_btn|sw_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|sw_reg~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|sw_reg~q\);

-- Location: LCCOMB_X57_Y17_N12
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

-- Location: LCCOMB_X57_Y16_N26
\u_btn|always0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|always0~0_combout\ = \u_btn|sw_reg~q\ $ (!\SW~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_btn|sw_reg~q\,
	datad => \SW~input_o\,
	combout => \u_btn|always0~0_combout\);

-- Location: FF_X57_Y17_N13
\u_btn|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[0]~20_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(0));

-- Location: LCCOMB_X57_Y17_N14
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

-- Location: FF_X57_Y17_N15
\u_btn|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[1]~22_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(1));

-- Location: LCCOMB_X57_Y17_N16
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

-- Location: FF_X57_Y17_N17
\u_btn|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[2]~24_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(2));

-- Location: LCCOMB_X57_Y17_N18
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

-- Location: FF_X57_Y17_N19
\u_btn|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[3]~26_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(3));

-- Location: LCCOMB_X57_Y17_N20
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

-- Location: FF_X57_Y17_N21
\u_btn|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[4]~28_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(4));

-- Location: LCCOMB_X57_Y17_N22
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

-- Location: FF_X57_Y17_N23
\u_btn|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[5]~30_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(5));

-- Location: LCCOMB_X57_Y17_N24
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

-- Location: FF_X57_Y17_N25
\u_btn|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[6]~32_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(6));

-- Location: LCCOMB_X57_Y17_N26
\u_btn|cnt[7]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|cnt[7]~34_combout\ = (\u_btn|cnt\(7) & (!\u_btn|cnt[6]~33\)) # (!\u_btn|cnt\(7) & ((\u_btn|cnt[6]~33\) # (GND)))
-- \u_btn|cnt[7]~35\ = CARRY((!\u_btn|cnt[6]~33\) # (!\u_btn|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_btn|cnt\(7),
	datad => VCC,
	cin => \u_btn|cnt[6]~33\,
	combout => \u_btn|cnt[7]~34_combout\,
	cout => \u_btn|cnt[7]~35\);

-- Location: FF_X57_Y17_N27
\u_btn|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[7]~34_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(7));

-- Location: LCCOMB_X57_Y17_N28
\u_btn|cnt[8]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|cnt[8]~36_combout\ = (\u_btn|cnt\(8) & (\u_btn|cnt[7]~35\ $ (GND))) # (!\u_btn|cnt\(8) & (!\u_btn|cnt[7]~35\ & VCC))
-- \u_btn|cnt[8]~37\ = CARRY((\u_btn|cnt\(8) & !\u_btn|cnt[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_btn|cnt\(8),
	datad => VCC,
	cin => \u_btn|cnt[7]~35\,
	combout => \u_btn|cnt[8]~36_combout\,
	cout => \u_btn|cnt[8]~37\);

-- Location: FF_X57_Y17_N29
\u_btn|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[8]~36_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(8));

-- Location: LCCOMB_X57_Y17_N30
\u_btn|cnt[9]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|cnt[9]~38_combout\ = (\u_btn|cnt\(9) & (!\u_btn|cnt[8]~37\)) # (!\u_btn|cnt\(9) & ((\u_btn|cnt[8]~37\) # (GND)))
-- \u_btn|cnt[9]~39\ = CARRY((!\u_btn|cnt[8]~37\) # (!\u_btn|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_btn|cnt\(9),
	datad => VCC,
	cin => \u_btn|cnt[8]~37\,
	combout => \u_btn|cnt[9]~38_combout\,
	cout => \u_btn|cnt[9]~39\);

-- Location: FF_X57_Y17_N31
\u_btn|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[9]~38_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(9));

-- Location: LCCOMB_X57_Y16_N0
\u_btn|cnt[10]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|cnt[10]~40_combout\ = (\u_btn|cnt\(10) & (\u_btn|cnt[9]~39\ $ (GND))) # (!\u_btn|cnt\(10) & (!\u_btn|cnt[9]~39\ & VCC))
-- \u_btn|cnt[10]~41\ = CARRY((\u_btn|cnt\(10) & !\u_btn|cnt[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_btn|cnt\(10),
	datad => VCC,
	cin => \u_btn|cnt[9]~39\,
	combout => \u_btn|cnt[10]~40_combout\,
	cout => \u_btn|cnt[10]~41\);

-- Location: FF_X57_Y16_N1
\u_btn|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[10]~40_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(10));

-- Location: LCCOMB_X57_Y16_N2
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

-- Location: FF_X57_Y16_N3
\u_btn|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[11]~42_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(11));

-- Location: LCCOMB_X57_Y16_N4
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

-- Location: FF_X57_Y16_N5
\u_btn|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[12]~44_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(12));

-- Location: LCCOMB_X57_Y16_N6
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

-- Location: FF_X57_Y16_N7
\u_btn|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[13]~46_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(13));

-- Location: LCCOMB_X57_Y16_N8
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

-- Location: FF_X57_Y16_N9
\u_btn|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[14]~48_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(14));

-- Location: LCCOMB_X57_Y16_N10
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

-- Location: FF_X57_Y16_N11
\u_btn|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[15]~50_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(15));

-- Location: LCCOMB_X56_Y16_N24
\u_btn|sw_pressed~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|sw_pressed~1_combout\ = (!\u_btn|cnt\(12) & (!\u_btn|cnt\(13) & (!\u_btn|cnt\(10) & !\u_btn|cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_btn|cnt\(12),
	datab => \u_btn|cnt\(13),
	datac => \u_btn|cnt\(10),
	datad => \u_btn|cnt\(11),
	combout => \u_btn|sw_pressed~1_combout\);

-- Location: LCCOMB_X57_Y17_N8
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

-- Location: LCCOMB_X57_Y16_N28
\u_btn|sw_pressed~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|sw_pressed~2_combout\ = (!\u_btn|cnt\(15) & (((\u_btn|sw_pressed~1_combout\ & \u_btn|sw_pressed~0_combout\)) # (!\u_btn|cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_btn|cnt\(15),
	datab => \u_btn|sw_pressed~1_combout\,
	datac => \u_btn|cnt\(14),
	datad => \u_btn|sw_pressed~0_combout\,
	combout => \u_btn|sw_pressed~2_combout\);

-- Location: LCCOMB_X57_Y16_N12
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

-- Location: FF_X57_Y16_N13
\u_btn|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[16]~52_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(16));

-- Location: LCCOMB_X57_Y16_N14
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

-- Location: FF_X57_Y16_N15
\u_btn|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[17]~54_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(17));

-- Location: LCCOMB_X57_Y16_N16
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

-- Location: FF_X57_Y16_N17
\u_btn|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[18]~56_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(18));

-- Location: LCCOMB_X57_Y16_N18
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

-- Location: FF_X57_Y16_N19
\u_btn|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|cnt[19]~58_combout\,
	clrn => \rst_n~input_o\,
	sclr => \u_btn|always0~0_combout\,
	ena => \u_btn|sw_pressed~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|cnt\(19));

-- Location: LCCOMB_X57_Y16_N30
\u_btn|sw_pressed~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|sw_pressed~3_combout\ = ((\u_btn|sw_reg~q\ $ (!\SW~input_o\)) # (!\u_btn|cnt\(17))) # (!\u_btn|cnt\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_btn|cnt\(16),
	datab => \u_btn|cnt\(17),
	datac => \u_btn|sw_reg~q\,
	datad => \SW~input_o\,
	combout => \u_btn|sw_pressed~3_combout\);

-- Location: LCCOMB_X57_Y16_N24
\u_btn|sw_pressed~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|sw_pressed~4_combout\ = (\u_btn|sw_pressed~2_combout\) # (((\u_btn|sw_pressed~3_combout\) # (!\u_btn|cnt\(18))) # (!\u_btn|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_btn|sw_pressed~2_combout\,
	datab => \u_btn|cnt\(19),
	datac => \u_btn|sw_pressed~3_combout\,
	datad => \u_btn|cnt\(18),
	combout => \u_btn|sw_pressed~4_combout\);

-- Location: LCCOMB_X57_Y16_N20
\u_btn|sw_pressed~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_btn|sw_pressed~5_combout\ = (\u_btn|sw_pressed~4_combout\ & ((\u_btn|sw_pressed~q\))) # (!\u_btn|sw_pressed~4_combout\ & (\u_btn|sw_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_btn|sw_reg~q\,
	datac => \u_btn|sw_pressed~q\,
	datad => \u_btn|sw_pressed~4_combout\,
	combout => \u_btn|sw_pressed~5_combout\);

-- Location: FF_X57_Y16_N21
\u_btn|sw_pressed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_btn|sw_pressed~5_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_btn|sw_pressed~q\);

-- Location: LCCOMB_X44_Y30_N0
\WS2812_u1|Add7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Add7~0_combout\ = \WS2812_u1|clk_cnt\(0) $ (VCC)
-- \WS2812_u1|Add7~1\ = CARRY(\WS2812_u1|clk_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|clk_cnt\(0),
	datad => VCC,
	combout => \WS2812_u1|Add7~0_combout\,
	cout => \WS2812_u1|Add7~1\);

-- Location: LCCOMB_X45_Y31_N0
\WS2812_u1|led_idx[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|led_idx[0]~6_combout\ = \WS2812_u1|led_idx\(0) $ (VCC)
-- \WS2812_u1|led_idx[0]~7\ = CARRY(\WS2812_u1|led_idx\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|led_idx\(0),
	datad => VCC,
	combout => \WS2812_u1|led_idx[0]~6_combout\,
	cout => \WS2812_u1|led_idx[0]~7\);

-- Location: LCCOMB_X45_Y31_N14
\WS2812_u1|led_idx[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|led_idx[2]~12_combout\ = ((\WS2812_u1|led_idx\(1) & (\WS2812_u1|led_idx\(2) & !\WS2812_u1|LessThan13~0_combout\))) # (!\WS2812_u1|state.STATE_SEND~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|state.STATE_SEND~q\,
	datab => \WS2812_u1|led_idx\(1),
	datac => \WS2812_u1|led_idx\(2),
	datad => \WS2812_u1|LessThan13~0_combout\,
	combout => \WS2812_u1|led_idx[2]~12_combout\);

-- Location: LCCOMB_X44_Y30_N6
\WS2812_u1|Add7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Add7~6_combout\ = (\WS2812_u1|clk_cnt\(3) & (!\WS2812_u1|Add7~5\)) # (!\WS2812_u1|clk_cnt\(3) & ((\WS2812_u1|Add7~5\) # (GND)))
-- \WS2812_u1|Add7~7\ = CARRY((!\WS2812_u1|Add7~5\) # (!\WS2812_u1|clk_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|clk_cnt\(3),
	datad => VCC,
	cin => \WS2812_u1|Add7~5\,
	combout => \WS2812_u1|Add7~6_combout\,
	cout => \WS2812_u1|Add7~7\);

-- Location: LCCOMB_X44_Y30_N8
\WS2812_u1|Add7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Add7~8_combout\ = (\WS2812_u1|clk_cnt\(4) & (\WS2812_u1|Add7~7\ $ (GND))) # (!\WS2812_u1|clk_cnt\(4) & (!\WS2812_u1|Add7~7\ & VCC))
-- \WS2812_u1|Add7~9\ = CARRY((\WS2812_u1|clk_cnt\(4) & !\WS2812_u1|Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|clk_cnt\(4),
	datad => VCC,
	cin => \WS2812_u1|Add7~7\,
	combout => \WS2812_u1|Add7~8_combout\,
	cout => \WS2812_u1|Add7~9\);

-- Location: LCCOMB_X43_Y30_N4
\WS2812_u1|Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Selector11~0_combout\ = (\WS2812_u1|Add7~8_combout\ & \WS2812_u1|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WS2812_u1|Add7~8_combout\,
	datad => \WS2812_u1|Selector1~0_combout\,
	combout => \WS2812_u1|Selector11~0_combout\);

-- Location: FF_X43_Y30_N5
\WS2812_u1|clk_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|Selector11~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|clk_cnt\(4));

-- Location: LCCOMB_X44_Y30_N10
\WS2812_u1|Add7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Add7~10_combout\ = (\WS2812_u1|clk_cnt\(5) & (!\WS2812_u1|Add7~9\)) # (!\WS2812_u1|clk_cnt\(5) & ((\WS2812_u1|Add7~9\) # (GND)))
-- \WS2812_u1|Add7~11\ = CARRY((!\WS2812_u1|Add7~9\) # (!\WS2812_u1|clk_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|clk_cnt\(5),
	datad => VCC,
	cin => \WS2812_u1|Add7~9\,
	combout => \WS2812_u1|Add7~10_combout\,
	cout => \WS2812_u1|Add7~11\);

-- Location: LCCOMB_X43_Y30_N20
\WS2812_u1|Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Selector10~0_combout\ = (\WS2812_u1|Add7~10_combout\ & \WS2812_u1|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WS2812_u1|Add7~10_combout\,
	datad => \WS2812_u1|Selector1~0_combout\,
	combout => \WS2812_u1|Selector10~0_combout\);

-- Location: FF_X43_Y30_N21
\WS2812_u1|clk_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|Selector10~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|clk_cnt\(5));

-- Location: LCCOMB_X44_Y30_N12
\WS2812_u1|Add7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Add7~12_combout\ = (\WS2812_u1|clk_cnt\(6) & (\WS2812_u1|Add7~11\ $ (GND))) # (!\WS2812_u1|clk_cnt\(6) & (!\WS2812_u1|Add7~11\ & VCC))
-- \WS2812_u1|Add7~13\ = CARRY((\WS2812_u1|clk_cnt\(6) & !\WS2812_u1|Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|clk_cnt\(6),
	datad => VCC,
	cin => \WS2812_u1|Add7~11\,
	combout => \WS2812_u1|Add7~12_combout\,
	cout => \WS2812_u1|Add7~13\);

-- Location: LCCOMB_X43_Y30_N10
\WS2812_u1|Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Selector9~0_combout\ = (\WS2812_u1|Add7~12_combout\ & \WS2812_u1|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WS2812_u1|Add7~12_combout\,
	datad => \WS2812_u1|Selector1~0_combout\,
	combout => \WS2812_u1|Selector9~0_combout\);

-- Location: FF_X43_Y30_N11
\WS2812_u1|clk_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|Selector9~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|clk_cnt\(6));

-- Location: LCCOMB_X44_Y30_N14
\WS2812_u1|Add7~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Add7~14_combout\ = (\WS2812_u1|clk_cnt\(7) & (!\WS2812_u1|Add7~13\)) # (!\WS2812_u1|clk_cnt\(7) & ((\WS2812_u1|Add7~13\) # (GND)))
-- \WS2812_u1|Add7~15\ = CARRY((!\WS2812_u1|Add7~13\) # (!\WS2812_u1|clk_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|clk_cnt\(7),
	datad => VCC,
	cin => \WS2812_u1|Add7~13\,
	combout => \WS2812_u1|Add7~14_combout\,
	cout => \WS2812_u1|Add7~15\);

-- Location: LCCOMB_X45_Y30_N12
\WS2812_u1|Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Selector8~0_combout\ = (\WS2812_u1|Add7~14_combout\ & \WS2812_u1|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|Add7~14_combout\,
	datad => \WS2812_u1|Selector1~0_combout\,
	combout => \WS2812_u1|Selector8~0_combout\);

-- Location: FF_X45_Y30_N13
\WS2812_u1|clk_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|Selector8~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|clk_cnt\(7));

-- Location: LCCOMB_X44_Y30_N16
\WS2812_u1|Add7~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Add7~16_combout\ = (\WS2812_u1|clk_cnt\(8) & (\WS2812_u1|Add7~15\ $ (GND))) # (!\WS2812_u1|clk_cnt\(8) & (!\WS2812_u1|Add7~15\ & VCC))
-- \WS2812_u1|Add7~17\ = CARRY((\WS2812_u1|clk_cnt\(8) & !\WS2812_u1|Add7~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|clk_cnt\(8),
	datad => VCC,
	cin => \WS2812_u1|Add7~15\,
	combout => \WS2812_u1|Add7~16_combout\,
	cout => \WS2812_u1|Add7~17\);

-- Location: LCCOMB_X45_Y30_N24
\WS2812_u1|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Selector7~0_combout\ = (\WS2812_u1|Add7~16_combout\ & \WS2812_u1|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WS2812_u1|Add7~16_combout\,
	datad => \WS2812_u1|Selector1~0_combout\,
	combout => \WS2812_u1|Selector7~0_combout\);

-- Location: FF_X45_Y30_N25
\WS2812_u1|clk_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|Selector7~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|clk_cnt\(8));

-- Location: LCCOMB_X44_Y30_N18
\WS2812_u1|Add7~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Add7~18_combout\ = (\WS2812_u1|clk_cnt\(9) & (!\WS2812_u1|Add7~17\)) # (!\WS2812_u1|clk_cnt\(9) & ((\WS2812_u1|Add7~17\) # (GND)))
-- \WS2812_u1|Add7~19\ = CARRY((!\WS2812_u1|Add7~17\) # (!\WS2812_u1|clk_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|clk_cnt\(9),
	datad => VCC,
	cin => \WS2812_u1|Add7~17\,
	combout => \WS2812_u1|Add7~18_combout\,
	cout => \WS2812_u1|Add7~19\);

-- Location: LCCOMB_X45_Y30_N6
\WS2812_u1|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Selector6~0_combout\ = (\WS2812_u1|Add7~18_combout\ & \WS2812_u1|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|Add7~18_combout\,
	datad => \WS2812_u1|Selector1~0_combout\,
	combout => \WS2812_u1|Selector6~0_combout\);

-- Location: FF_X45_Y30_N7
\WS2812_u1|clk_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|Selector6~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|clk_cnt\(9));

-- Location: LCCOMB_X44_Y30_N20
\WS2812_u1|Add7~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Add7~20_combout\ = (\WS2812_u1|clk_cnt\(10) & (\WS2812_u1|Add7~19\ $ (GND))) # (!\WS2812_u1|clk_cnt\(10) & (!\WS2812_u1|Add7~19\ & VCC))
-- \WS2812_u1|Add7~21\ = CARRY((\WS2812_u1|clk_cnt\(10) & !\WS2812_u1|Add7~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|clk_cnt\(10),
	datad => VCC,
	cin => \WS2812_u1|Add7~19\,
	combout => \WS2812_u1|Add7~20_combout\,
	cout => \WS2812_u1|Add7~21\);

-- Location: LCCOMB_X45_Y30_N8
\WS2812_u1|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Selector5~0_combout\ = (\WS2812_u1|Add7~20_combout\ & \WS2812_u1|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|Add7~20_combout\,
	datad => \WS2812_u1|Selector1~0_combout\,
	combout => \WS2812_u1|Selector5~0_combout\);

-- Location: FF_X45_Y30_N9
\WS2812_u1|clk_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|Selector5~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|clk_cnt\(10));

-- Location: LCCOMB_X44_Y30_N22
\WS2812_u1|Add7~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Add7~22_combout\ = (\WS2812_u1|clk_cnt\(11) & (!\WS2812_u1|Add7~21\)) # (!\WS2812_u1|clk_cnt\(11) & ((\WS2812_u1|Add7~21\) # (GND)))
-- \WS2812_u1|Add7~23\ = CARRY((!\WS2812_u1|Add7~21\) # (!\WS2812_u1|clk_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|clk_cnt\(11),
	datad => VCC,
	cin => \WS2812_u1|Add7~21\,
	combout => \WS2812_u1|Add7~22_combout\,
	cout => \WS2812_u1|Add7~23\);

-- Location: LCCOMB_X45_Y30_N2
\WS2812_u1|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Selector4~0_combout\ = (\WS2812_u1|Add7~22_combout\ & \WS2812_u1|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|Add7~22_combout\,
	datad => \WS2812_u1|Selector1~0_combout\,
	combout => \WS2812_u1|Selector4~0_combout\);

-- Location: FF_X45_Y30_N3
\WS2812_u1|clk_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|Selector4~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|clk_cnt\(11));

-- Location: LCCOMB_X45_Y30_N30
\WS2812_u1|LessThan11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|LessThan11~1_combout\ = (!\WS2812_u1|clk_cnt\(9) & (!\WS2812_u1|clk_cnt\(11) & (!\WS2812_u1|clk_cnt\(10) & !\WS2812_u1|clk_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|clk_cnt\(9),
	datab => \WS2812_u1|clk_cnt\(11),
	datac => \WS2812_u1|clk_cnt\(10),
	datad => \WS2812_u1|clk_cnt\(8),
	combout => \WS2812_u1|LessThan11~1_combout\);

-- Location: LCCOMB_X44_Y30_N24
\WS2812_u1|Add7~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Add7~24_combout\ = (\WS2812_u1|clk_cnt\(12) & (\WS2812_u1|Add7~23\ $ (GND))) # (!\WS2812_u1|clk_cnt\(12) & (!\WS2812_u1|Add7~23\ & VCC))
-- \WS2812_u1|Add7~25\ = CARRY((\WS2812_u1|clk_cnt\(12) & !\WS2812_u1|Add7~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|clk_cnt\(12),
	datad => VCC,
	cin => \WS2812_u1|Add7~23\,
	combout => \WS2812_u1|Add7~24_combout\,
	cout => \WS2812_u1|Add7~25\);

-- Location: LCCOMB_X45_Y30_N0
\WS2812_u1|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Selector3~0_combout\ = (\WS2812_u1|Add7~24_combout\ & \WS2812_u1|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WS2812_u1|Add7~24_combout\,
	datad => \WS2812_u1|Selector1~0_combout\,
	combout => \WS2812_u1|Selector3~0_combout\);

-- Location: FF_X45_Y30_N1
\WS2812_u1|clk_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|Selector3~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|clk_cnt\(12));

-- Location: LCCOMB_X44_Y30_N26
\WS2812_u1|Add7~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Add7~26_combout\ = (\WS2812_u1|clk_cnt\(13) & (!\WS2812_u1|Add7~25\)) # (!\WS2812_u1|clk_cnt\(13) & ((\WS2812_u1|Add7~25\) # (GND)))
-- \WS2812_u1|Add7~27\ = CARRY((!\WS2812_u1|Add7~25\) # (!\WS2812_u1|clk_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|clk_cnt\(13),
	datad => VCC,
	cin => \WS2812_u1|Add7~25\,
	combout => \WS2812_u1|Add7~26_combout\,
	cout => \WS2812_u1|Add7~27\);

-- Location: LCCOMB_X45_Y30_N18
\WS2812_u1|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Selector2~0_combout\ = (\WS2812_u1|Add7~26_combout\ & \WS2812_u1|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WS2812_u1|Add7~26_combout\,
	datad => \WS2812_u1|Selector1~0_combout\,
	combout => \WS2812_u1|Selector2~0_combout\);

-- Location: FF_X45_Y30_N19
\WS2812_u1|clk_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|Selector2~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|clk_cnt\(13));

-- Location: LCCOMB_X44_Y30_N28
\WS2812_u1|Add7~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Add7~28_combout\ = (\WS2812_u1|clk_cnt\(14) & (\WS2812_u1|Add7~27\ $ (GND))) # (!\WS2812_u1|clk_cnt\(14) & (!\WS2812_u1|Add7~27\ & VCC))
-- \WS2812_u1|Add7~29\ = CARRY((\WS2812_u1|clk_cnt\(14) & !\WS2812_u1|Add7~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|clk_cnt\(14),
	datad => VCC,
	cin => \WS2812_u1|Add7~27\,
	combout => \WS2812_u1|Add7~28_combout\,
	cout => \WS2812_u1|Add7~29\);

-- Location: LCCOMB_X45_Y30_N16
\WS2812_u1|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Selector1~1_combout\ = (\WS2812_u1|Add7~28_combout\ & \WS2812_u1|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|Add7~28_combout\,
	datad => \WS2812_u1|Selector1~0_combout\,
	combout => \WS2812_u1|Selector1~1_combout\);

-- Location: FF_X45_Y30_N17
\WS2812_u1|clk_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|Selector1~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|clk_cnt\(14));

-- Location: LCCOMB_X44_Y30_N30
\WS2812_u1|Add7~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Add7~30_combout\ = \WS2812_u1|Add7~29\ $ (\WS2812_u1|clk_cnt\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \WS2812_u1|clk_cnt\(15),
	cin => \WS2812_u1|Add7~29\,
	combout => \WS2812_u1|Add7~30_combout\);

-- Location: LCCOMB_X45_Y30_N26
\WS2812_u1|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Selector0~0_combout\ = (\WS2812_u1|Add7~30_combout\ & \WS2812_u1|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|Add7~30_combout\,
	datad => \WS2812_u1|Selector1~0_combout\,
	combout => \WS2812_u1|Selector0~0_combout\);

-- Location: FF_X45_Y30_N27
\WS2812_u1|clk_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|Selector0~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|clk_cnt\(15));

-- Location: LCCOMB_X45_Y30_N20
\WS2812_u1|LessThan11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|LessThan11~0_combout\ = (!\WS2812_u1|clk_cnt\(14) & (!\WS2812_u1|clk_cnt\(13) & (!\WS2812_u1|clk_cnt\(15) & !\WS2812_u1|clk_cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|clk_cnt\(14),
	datab => \WS2812_u1|clk_cnt\(13),
	datac => \WS2812_u1|clk_cnt\(15),
	datad => \WS2812_u1|clk_cnt\(12),
	combout => \WS2812_u1|LessThan11~0_combout\);

-- Location: LCCOMB_X45_Y30_N10
\WS2812_u1|LessThan11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|LessThan11~2_combout\ = (\WS2812_u1|LessThan11~1_combout\ & (\WS2812_u1|LessThan11~0_combout\ & (!\WS2812_u1|clk_cnt\(6) & !\WS2812_u1|clk_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|LessThan11~1_combout\,
	datab => \WS2812_u1|LessThan11~0_combout\,
	datac => \WS2812_u1|clk_cnt\(6),
	datad => \WS2812_u1|clk_cnt\(7),
	combout => \WS2812_u1|LessThan11~2_combout\);

-- Location: LCCOMB_X43_Y30_N30
\WS2812_u1|LessThan11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|LessThan11~4_combout\ = (\WS2812_u1|LessThan11~2_combout\ & ((\WS2812_u1|LessThan11~3_combout\) # ((!\WS2812_u1|clk_cnt\(4)) # (!\WS2812_u1|clk_cnt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|LessThan11~3_combout\,
	datab => \WS2812_u1|clk_cnt\(5),
	datac => \WS2812_u1|clk_cnt\(4),
	datad => \WS2812_u1|LessThan11~2_combout\,
	combout => \WS2812_u1|LessThan11~4_combout\);

-- Location: LCCOMB_X46_Y30_N16
\WS2812_u1|Add8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Add8~0_combout\ = \WS2812_u1|bit_idx\(0) $ (GND)
-- \WS2812_u1|Add8~1\ = CARRY(!\WS2812_u1|bit_idx\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|bit_idx\(0),
	datad => VCC,
	combout => \WS2812_u1|Add8~0_combout\,
	cout => \WS2812_u1|Add8~1\);

-- Location: LCCOMB_X46_Y30_N12
\WS2812_u1|Selector29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Selector29~0_combout\ = (!\WS2812_u1|Add8~0_combout\ & (\WS2812_u1|state.STATE_SEND~q\ & \WS2812_u1|LessThan12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|Add8~0_combout\,
	datac => \WS2812_u1|state.STATE_SEND~q\,
	datad => \WS2812_u1|LessThan12~0_combout\,
	combout => \WS2812_u1|Selector29~0_combout\);

-- Location: LCCOMB_X43_Y30_N24
\WS2812_u1|LessThan8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|LessThan8~0_combout\ = (!\WS2812_u1|clk_cnt\(6) & (((!\WS2812_u1|clk_cnt\(0)) # (!\WS2812_u1|clk_cnt\(1))) # (!\WS2812_u1|clk_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|clk_cnt\(6),
	datab => \WS2812_u1|clk_cnt\(2),
	datac => \WS2812_u1|clk_cnt\(1),
	datad => \WS2812_u1|clk_cnt\(0),
	combout => \WS2812_u1|LessThan8~0_combout\);

-- Location: LCCOMB_X43_Y30_N22
\WS2812_u1|LessThan8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|LessThan8~1_combout\ = (!\WS2812_u1|clk_cnt\(3) & (\WS2812_u1|LessThan8~0_combout\ & (!\WS2812_u1|clk_cnt\(4) & !\WS2812_u1|clk_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|clk_cnt\(3),
	datab => \WS2812_u1|LessThan8~0_combout\,
	datac => \WS2812_u1|clk_cnt\(4),
	datad => \WS2812_u1|clk_cnt\(5),
	combout => \WS2812_u1|LessThan8~1_combout\);

-- Location: LCCOMB_X45_Y30_N4
\WS2812_u1|LessThan8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|LessThan8~2_combout\ = (((\WS2812_u1|LessThan8~1_combout\) # (!\WS2812_u1|clk_cnt\(7))) # (!\WS2812_u1|clk_cnt\(8))) # (!\WS2812_u1|clk_cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|clk_cnt\(9),
	datab => \WS2812_u1|clk_cnt\(8),
	datac => \WS2812_u1|LessThan8~1_combout\,
	datad => \WS2812_u1|clk_cnt\(7),
	combout => \WS2812_u1|LessThan8~2_combout\);

-- Location: LCCOMB_X45_Y30_N14
\WS2812_u1|LessThan8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|LessThan8~3_combout\ = ((!\WS2812_u1|clk_cnt\(10) & (\WS2812_u1|LessThan8~2_combout\ & !\WS2812_u1|clk_cnt\(11)))) # (!\WS2812_u1|clk_cnt\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|clk_cnt\(10),
	datab => \WS2812_u1|clk_cnt\(12),
	datac => \WS2812_u1|LessThan8~2_combout\,
	datad => \WS2812_u1|clk_cnt\(11),
	combout => \WS2812_u1|LessThan8~3_combout\);

-- Location: LCCOMB_X45_Y30_N28
\WS2812_u1|LessThan8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|LessThan8~4_combout\ = (\WS2812_u1|clk_cnt\(15)) # ((\WS2812_u1|clk_cnt\(14)) # ((\WS2812_u1|clk_cnt\(13)) # (!\WS2812_u1|LessThan8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|clk_cnt\(15),
	datab => \WS2812_u1|clk_cnt\(14),
	datac => \WS2812_u1|LessThan8~3_combout\,
	datad => \WS2812_u1|clk_cnt\(13),
	combout => \WS2812_u1|LessThan8~4_combout\);

-- Location: LCCOMB_X46_Y30_N2
\WS2812_u1|bit_idx[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|bit_idx[1]~0_combout\ = (\WS2812_u1|state.STATE_SEND~q\ & (((\WS2812_u1|LessThan8~4_combout\ & \WS2812_u1|state.STATE_RESET~q\)) # (!\WS2812_u1|LessThan11~4_combout\))) # (!\WS2812_u1|state.STATE_SEND~q\ & (\WS2812_u1|LessThan8~4_combout\ & 
-- (\WS2812_u1|state.STATE_RESET~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|state.STATE_SEND~q\,
	datab => \WS2812_u1|LessThan8~4_combout\,
	datac => \WS2812_u1|state.STATE_RESET~q\,
	datad => \WS2812_u1|LessThan11~4_combout\,
	combout => \WS2812_u1|bit_idx[1]~0_combout\);

-- Location: FF_X46_Y30_N13
\WS2812_u1|bit_idx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|Selector29~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \WS2812_u1|bit_idx[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|bit_idx\(0));

-- Location: LCCOMB_X46_Y30_N18
\WS2812_u1|Add8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Add8~2_combout\ = (\WS2812_u1|bit_idx\(1) & (!\WS2812_u1|Add8~1\)) # (!\WS2812_u1|bit_idx\(1) & (\WS2812_u1|Add8~1\ & VCC))
-- \WS2812_u1|Add8~3\ = CARRY((\WS2812_u1|bit_idx\(1) & !\WS2812_u1|Add8~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|bit_idx\(1),
	datad => VCC,
	cin => \WS2812_u1|Add8~1\,
	combout => \WS2812_u1|Add8~2_combout\,
	cout => \WS2812_u1|Add8~3\);

-- Location: LCCOMB_X46_Y30_N4
\WS2812_u1|Selector28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Selector28~0_combout\ = (!\WS2812_u1|Add8~2_combout\ & (\WS2812_u1|state.STATE_SEND~q\ & \WS2812_u1|LessThan12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|Add8~2_combout\,
	datac => \WS2812_u1|state.STATE_SEND~q\,
	datad => \WS2812_u1|LessThan12~0_combout\,
	combout => \WS2812_u1|Selector28~0_combout\);

-- Location: FF_X46_Y30_N5
\WS2812_u1|bit_idx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|Selector28~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \WS2812_u1|bit_idx[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|bit_idx\(1));

-- Location: LCCOMB_X46_Y30_N20
\WS2812_u1|Add8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Add8~4_combout\ = (\WS2812_u1|bit_idx\(2) & (\WS2812_u1|Add8~3\ $ (GND))) # (!\WS2812_u1|bit_idx\(2) & ((GND) # (!\WS2812_u1|Add8~3\)))
-- \WS2812_u1|Add8~5\ = CARRY((!\WS2812_u1|Add8~3\) # (!\WS2812_u1|bit_idx\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|bit_idx\(2),
	datad => VCC,
	cin => \WS2812_u1|Add8~3\,
	combout => \WS2812_u1|Add8~4_combout\,
	cout => \WS2812_u1|Add8~5\);

-- Location: LCCOMB_X46_Y30_N14
\WS2812_u1|Selector27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Selector27~0_combout\ = (!\WS2812_u1|Add8~4_combout\ & (\WS2812_u1|state.STATE_SEND~q\ & \WS2812_u1|LessThan12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|Add8~4_combout\,
	datac => \WS2812_u1|state.STATE_SEND~q\,
	datad => \WS2812_u1|LessThan12~0_combout\,
	combout => \WS2812_u1|Selector27~0_combout\);

-- Location: FF_X46_Y30_N15
\WS2812_u1|bit_idx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|Selector27~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \WS2812_u1|bit_idx[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|bit_idx\(2));

-- Location: LCCOMB_X46_Y30_N22
\WS2812_u1|Add8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Add8~6_combout\ = (\WS2812_u1|bit_idx\(3) & (\WS2812_u1|Add8~5\ & VCC)) # (!\WS2812_u1|bit_idx\(3) & (!\WS2812_u1|Add8~5\))
-- \WS2812_u1|Add8~7\ = CARRY((!\WS2812_u1|bit_idx\(3) & !\WS2812_u1|Add8~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|bit_idx\(3),
	datad => VCC,
	cin => \WS2812_u1|Add8~5\,
	combout => \WS2812_u1|Add8~6_combout\,
	cout => \WS2812_u1|Add8~7\);

-- Location: LCCOMB_X46_Y30_N28
\WS2812_u1|bit_idx[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|bit_idx[3]~1_combout\ = (\WS2812_u1|state.STATE_SEND~q\ & \WS2812_u1|LessThan12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WS2812_u1|state.STATE_SEND~q\,
	datad => \WS2812_u1|LessThan12~0_combout\,
	combout => \WS2812_u1|bit_idx[3]~1_combout\);

-- Location: LCCOMB_X46_Y30_N10
\WS2812_u1|Selector26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Selector26~0_combout\ = (\WS2812_u1|state.STATE_SEND~q\ & (((!\WS2812_u1|LessThan11~4_combout\)))) # (!\WS2812_u1|state.STATE_SEND~q\ & (\WS2812_u1|LessThan8~4_combout\ & (\WS2812_u1|state.STATE_RESET~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|state.STATE_SEND~q\,
	datab => \WS2812_u1|LessThan8~4_combout\,
	datac => \WS2812_u1|state.STATE_RESET~q\,
	datad => \WS2812_u1|LessThan11~4_combout\,
	combout => \WS2812_u1|Selector26~0_combout\);

-- Location: LCCOMB_X46_Y30_N26
\WS2812_u1|bit_idx[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|bit_idx[3]~2_combout\ = (\WS2812_u1|Selector26~0_combout\ & (\WS2812_u1|Add8~6_combout\ & (\WS2812_u1|bit_idx[3]~1_combout\))) # (!\WS2812_u1|Selector26~0_combout\ & (((\WS2812_u1|bit_idx\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|Add8~6_combout\,
	datab => \WS2812_u1|bit_idx[3]~1_combout\,
	datac => \WS2812_u1|bit_idx\(3),
	datad => \WS2812_u1|Selector26~0_combout\,
	combout => \WS2812_u1|bit_idx[3]~2_combout\);

-- Location: FF_X46_Y30_N27
\WS2812_u1|bit_idx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|bit_idx[3]~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|bit_idx\(3));

-- Location: LCCOMB_X46_Y30_N24
\WS2812_u1|Add8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Add8~8_combout\ = \WS2812_u1|bit_idx\(4) $ (!\WS2812_u1|Add8~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|bit_idx\(4),
	cin => \WS2812_u1|Add8~7\,
	combout => \WS2812_u1|Add8~8_combout\);

-- Location: LCCOMB_X46_Y30_N8
\WS2812_u1|Selector25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Selector25~0_combout\ = (!\WS2812_u1|Add8~8_combout\ & (\WS2812_u1|state.STATE_SEND~q\ & \WS2812_u1|LessThan12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|Add8~8_combout\,
	datac => \WS2812_u1|state.STATE_SEND~q\,
	datad => \WS2812_u1|LessThan12~0_combout\,
	combout => \WS2812_u1|Selector25~0_combout\);

-- Location: FF_X46_Y30_N9
\WS2812_u1|bit_idx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|Selector25~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \WS2812_u1|bit_idx[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|bit_idx\(4));

-- Location: LCCOMB_X46_Y30_N0
\WS2812_u1|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Mux0~3_combout\ = (\WS2812_u1|bit_idx\(4) & !\WS2812_u1|bit_idx\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|bit_idx\(4),
	datac => \WS2812_u1|bit_idx\(3),
	combout => \WS2812_u1|Mux0~3_combout\);

-- Location: LCCOMB_X46_Y30_N6
\WS2812_u1|LessThan12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|LessThan12~0_combout\ = (((!\WS2812_u1|Mux0~3_combout\) # (!\WS2812_u1|bit_idx\(2))) # (!\WS2812_u1|bit_idx\(1))) # (!\WS2812_u1|bit_idx\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|bit_idx\(0),
	datab => \WS2812_u1|bit_idx\(1),
	datac => \WS2812_u1|bit_idx\(2),
	datad => \WS2812_u1|Mux0~3_combout\,
	combout => \WS2812_u1|LessThan12~0_combout\);

-- Location: LCCOMB_X45_Y30_N22
\WS2812_u1|led_idx[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|led_idx[2]~13_combout\ = (\WS2812_u1|state.STATE_SEND~q\ & (!\WS2812_u1|LessThan11~4_combout\ & !\WS2812_u1|LessThan12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|state.STATE_SEND~q\,
	datac => \WS2812_u1|LessThan11~4_combout\,
	datad => \WS2812_u1|LessThan12~0_combout\,
	combout => \WS2812_u1|led_idx[2]~13_combout\);

-- Location: LCCOMB_X45_Y31_N16
\WS2812_u1|led_idx[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|led_idx[2]~14_combout\ = (\WS2812_u1|led_idx[2]~13_combout\) # ((\WS2812_u1|state.STATE_RESET~q\ & \WS2812_u1|LessThan8~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|state.STATE_RESET~q\,
	datab => \WS2812_u1|led_idx[2]~13_combout\,
	datad => \WS2812_u1|LessThan8~4_combout\,
	combout => \WS2812_u1|led_idx[2]~14_combout\);

-- Location: FF_X45_Y31_N1
\WS2812_u1|led_idx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|led_idx[0]~6_combout\,
	clrn => \rst_n~input_o\,
	sclr => \WS2812_u1|led_idx[2]~12_combout\,
	ena => \WS2812_u1|led_idx[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|led_idx\(0));

-- Location: LCCOMB_X45_Y31_N2
\WS2812_u1|led_idx[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|led_idx[1]~8_combout\ = (\WS2812_u1|led_idx\(1) & (!\WS2812_u1|led_idx[0]~7\)) # (!\WS2812_u1|led_idx\(1) & ((\WS2812_u1|led_idx[0]~7\) # (GND)))
-- \WS2812_u1|led_idx[1]~9\ = CARRY((!\WS2812_u1|led_idx[0]~7\) # (!\WS2812_u1|led_idx\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|led_idx\(1),
	datad => VCC,
	cin => \WS2812_u1|led_idx[0]~7\,
	combout => \WS2812_u1|led_idx[1]~8_combout\,
	cout => \WS2812_u1|led_idx[1]~9\);

-- Location: FF_X45_Y31_N3
\WS2812_u1|led_idx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|led_idx[1]~8_combout\,
	clrn => \rst_n~input_o\,
	sclr => \WS2812_u1|led_idx[2]~12_combout\,
	ena => \WS2812_u1|led_idx[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|led_idx\(1));

-- Location: LCCOMB_X45_Y31_N4
\WS2812_u1|led_idx[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|led_idx[2]~10_combout\ = (\WS2812_u1|led_idx\(2) & (\WS2812_u1|led_idx[1]~9\ $ (GND))) # (!\WS2812_u1|led_idx\(2) & (!\WS2812_u1|led_idx[1]~9\ & VCC))
-- \WS2812_u1|led_idx[2]~11\ = CARRY((\WS2812_u1|led_idx\(2) & !\WS2812_u1|led_idx[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|led_idx\(2),
	datad => VCC,
	cin => \WS2812_u1|led_idx[1]~9\,
	combout => \WS2812_u1|led_idx[2]~10_combout\,
	cout => \WS2812_u1|led_idx[2]~11\);

-- Location: FF_X45_Y31_N5
\WS2812_u1|led_idx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|led_idx[2]~10_combout\,
	clrn => \rst_n~input_o\,
	sclr => \WS2812_u1|led_idx[2]~12_combout\,
	ena => \WS2812_u1|led_idx[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|led_idx\(2));

-- Location: LCCOMB_X45_Y31_N6
\WS2812_u1|led_idx[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|led_idx[3]~15_combout\ = (\WS2812_u1|led_idx\(3) & (!\WS2812_u1|led_idx[2]~11\)) # (!\WS2812_u1|led_idx\(3) & ((\WS2812_u1|led_idx[2]~11\) # (GND)))
-- \WS2812_u1|led_idx[3]~16\ = CARRY((!\WS2812_u1|led_idx[2]~11\) # (!\WS2812_u1|led_idx\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|led_idx\(3),
	datad => VCC,
	cin => \WS2812_u1|led_idx[2]~11\,
	combout => \WS2812_u1|led_idx[3]~15_combout\,
	cout => \WS2812_u1|led_idx[3]~16\);

-- Location: FF_X45_Y31_N7
\WS2812_u1|led_idx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|led_idx[3]~15_combout\,
	clrn => \rst_n~input_o\,
	sclr => \WS2812_u1|led_idx[2]~12_combout\,
	ena => \WS2812_u1|led_idx[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|led_idx\(3));

-- Location: LCCOMB_X45_Y31_N8
\WS2812_u1|led_idx[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|led_idx[4]~17_combout\ = (\WS2812_u1|led_idx\(4) & (\WS2812_u1|led_idx[3]~16\ $ (GND))) # (!\WS2812_u1|led_idx\(4) & (!\WS2812_u1|led_idx[3]~16\ & VCC))
-- \WS2812_u1|led_idx[4]~18\ = CARRY((\WS2812_u1|led_idx\(4) & !\WS2812_u1|led_idx[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|led_idx\(4),
	datad => VCC,
	cin => \WS2812_u1|led_idx[3]~16\,
	combout => \WS2812_u1|led_idx[4]~17_combout\,
	cout => \WS2812_u1|led_idx[4]~18\);

-- Location: FF_X45_Y31_N9
\WS2812_u1|led_idx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|led_idx[4]~17_combout\,
	clrn => \rst_n~input_o\,
	sclr => \WS2812_u1|led_idx[2]~12_combout\,
	ena => \WS2812_u1|led_idx[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|led_idx\(4));

-- Location: LCCOMB_X45_Y31_N10
\WS2812_u1|led_idx[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|led_idx[5]~19_combout\ = \WS2812_u1|led_idx[4]~18\ $ (\WS2812_u1|led_idx\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \WS2812_u1|led_idx\(5),
	cin => \WS2812_u1|led_idx[4]~18\,
	combout => \WS2812_u1|led_idx[5]~19_combout\);

-- Location: FF_X45_Y31_N11
\WS2812_u1|led_idx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|led_idx[5]~19_combout\,
	clrn => \rst_n~input_o\,
	sclr => \WS2812_u1|led_idx[2]~12_combout\,
	ena => \WS2812_u1|led_idx[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|led_idx\(5));

-- Location: LCCOMB_X45_Y31_N12
\WS2812_u1|LessThan13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|LessThan13~0_combout\ = (((!\WS2812_u1|led_idx\(5)) # (!\WS2812_u1|led_idx\(4))) # (!\WS2812_u1|led_idx\(0))) # (!\WS2812_u1|led_idx\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|led_idx\(3),
	datab => \WS2812_u1|led_idx\(0),
	datac => \WS2812_u1|led_idx\(4),
	datad => \WS2812_u1|led_idx\(5),
	combout => \WS2812_u1|LessThan13~0_combout\);

-- Location: LCCOMB_X45_Y31_N18
\WS2812_u1|led_idx[2]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|led_idx[2]~22_combout\ = (!\WS2812_u1|LessThan13~0_combout\ & (\WS2812_u1|led_idx[2]~13_combout\ & (\WS2812_u1|led_idx\(2) & \WS2812_u1|led_idx\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|LessThan13~0_combout\,
	datab => \WS2812_u1|led_idx[2]~13_combout\,
	datac => \WS2812_u1|led_idx\(2),
	datad => \WS2812_u1|led_idx\(1),
	combout => \WS2812_u1|led_idx[2]~22_combout\);

-- Location: LCCOMB_X44_Y31_N22
\WS2812_u1|Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Selector16~0_combout\ = (!\WS2812_u1|led_idx[2]~22_combout\ & ((\WS2812_u1|state.STATE_IDLE~q\) # (!\WS2812_u1|update_req~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|update_req~q\,
	datac => \WS2812_u1|state.STATE_IDLE~q\,
	datad => \WS2812_u1|led_idx[2]~22_combout\,
	combout => \WS2812_u1|Selector16~0_combout\);

-- Location: FF_X44_Y31_N23
\WS2812_u1|state.STATE_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|Selector16~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|state.STATE_IDLE~q\);

-- Location: FF_X42_Y31_N11
\WS2812_u1|sys_mode_delay.MODE_CLEAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \WS2812_u1|sys_mode.MODE_CLEAR~q\,
	sload => VCC,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|sys_mode_delay.MODE_CLEAR~q\);

-- Location: FF_X42_Y31_N9
\WS2812_u1|sys_mode_delay.MODE_CONTROL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \WS2812_u1|sys_mode.MODE_CLEAR~q\,
	sload => VCC,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|sys_mode_delay.MODE_CONTROL~q\);

-- Location: LCCOMB_X42_Y30_N8
\WS2812_u1|move_timer[0]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|move_timer[0]~26_combout\ = \WS2812_u1|move_timer\(0) $ (VCC)
-- \WS2812_u1|move_timer[0]~27\ = CARRY(\WS2812_u1|move_timer\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|move_timer\(0),
	datad => VCC,
	combout => \WS2812_u1|move_timer[0]~26_combout\,
	cout => \WS2812_u1|move_timer[0]~27\);

-- Location: LCCOMB_X41_Y35_N8
\WS2812_u1|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|LessThan1~1_combout\ = (\u_adc|joystick_y\(3) & ((\u_adc|joystick_y\(0)) # ((\u_adc|joystick_y\(1)) # (\u_adc|joystick_y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|joystick_y\(0),
	datab => \u_adc|joystick_y\(1),
	datac => \u_adc|joystick_y\(2),
	datad => \u_adc|joystick_y\(3),
	combout => \WS2812_u1|LessThan1~1_combout\);

-- Location: LCCOMB_X42_Y31_N18
\WS2812_u1|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|LessThan1~0_combout\ = (!\u_adc|joystick_y\(6) & (!\u_adc|joystick_y\(8) & (!\u_adc|joystick_y\(5) & !\u_adc|joystick_y\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|joystick_y\(6),
	datab => \u_adc|joystick_y\(8),
	datac => \u_adc|joystick_y\(5),
	datad => \u_adc|joystick_y\(7),
	combout => \WS2812_u1|LessThan1~0_combout\);

-- Location: LCCOMB_X42_Y31_N24
\WS2812_u1|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|LessThan1~2_combout\ = ((\WS2812_u1|LessThan1~0_combout\ & ((\WS2812_u1|LessThan1~1_combout\) # (!\u_adc|joystick_y\(4))))) # (!\u_adc|joystick_y\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|LessThan1~1_combout\,
	datab => \u_adc|joystick_y\(4),
	datac => \u_adc|joystick_y\(9),
	datad => \WS2812_u1|LessThan1~0_combout\,
	combout => \WS2812_u1|LessThan1~2_combout\);

-- Location: LCCOMB_X42_Y31_N22
\WS2812_u1|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|LessThan1~3_combout\ = (\u_adc|joystick_y\(13)) # ((\u_adc|joystick_y\(11) & ((\u_adc|joystick_y\(10)) # (!\WS2812_u1|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|joystick_y\(11),
	datab => \u_adc|joystick_y\(13),
	datac => \u_adc|joystick_y\(10),
	datad => \WS2812_u1|LessThan1~2_combout\,
	combout => \WS2812_u1|LessThan1~3_combout\);

-- Location: LCCOMB_X42_Y31_N12
\WS2812_u1|LessThan1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|LessThan1~4_combout\ = ((\u_adc|joystick_y\(15)) # ((!\WS2812_u1|LessThan1~3_combout\ & !\u_adc|joystick_y\(12)))) # (!\u_adc|joystick_y\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|LessThan1~3_combout\,
	datab => \u_adc|joystick_y\(12),
	datac => \u_adc|joystick_y\(14),
	datad => \u_adc|joystick_y\(15),
	combout => \WS2812_u1|LessThan1~4_combout\);

-- Location: LCCOMB_X42_Y31_N14
\WS2812_u1|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|LessThan1~5_combout\ = (!\u_adc|joystick_y\(6) & !\u_adc|joystick_y\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|joystick_y\(6),
	datac => \u_adc|joystick_y\(5),
	combout => \WS2812_u1|LessThan1~5_combout\);

-- Location: LCCOMB_X42_Y31_N28
\WS2812_u1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|LessThan0~0_combout\ = ((!\u_adc|joystick_y\(2) & (\u_adc|joystick_y\(4) & !\u_adc|joystick_y\(3)))) # (!\WS2812_u1|LessThan1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|joystick_y\(2),
	datab => \u_adc|joystick_y\(4),
	datac => \WS2812_u1|LessThan1~5_combout\,
	datad => \u_adc|joystick_y\(3),
	combout => \WS2812_u1|LessThan0~0_combout\);

-- Location: LCCOMB_X42_Y31_N4
\WS2812_u1|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|LessThan0~2_combout\ = (\u_adc|joystick_y\(10) & (\u_adc|joystick_y\(8) & (\u_adc|joystick_y\(9) & \u_adc|joystick_y\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|joystick_y\(10),
	datab => \u_adc|joystick_y\(8),
	datac => \u_adc|joystick_y\(9),
	datad => \u_adc|joystick_y\(11),
	combout => \WS2812_u1|LessThan0~2_combout\);

-- Location: LCCOMB_X42_Y31_N6
\WS2812_u1|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|LessThan0~1_combout\ = (\u_adc|joystick_y\(14) & (\u_adc|joystick_y\(13) & (\u_adc|joystick_y\(12) & !\u_adc|joystick_y\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|joystick_y\(14),
	datab => \u_adc|joystick_y\(13),
	datac => \u_adc|joystick_y\(12),
	datad => \u_adc|joystick_y\(15),
	combout => \WS2812_u1|LessThan0~1_combout\);

-- Location: LCCOMB_X42_Y31_N2
\WS2812_u1|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|LessThan0~3_combout\ = (\WS2812_u1|LessThan0~0_combout\ & (\u_adc|joystick_y\(7) & (\WS2812_u1|LessThan0~2_combout\ & \WS2812_u1|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|LessThan0~0_combout\,
	datab => \u_adc|joystick_y\(7),
	datac => \WS2812_u1|LessThan0~2_combout\,
	datad => \WS2812_u1|LessThan0~1_combout\,
	combout => \WS2812_u1|LessThan0~3_combout\);

-- Location: LCCOMB_X42_Y35_N22
\WS2812_u1|LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|LessThan3~0_combout\ = ((\u_adc|joystick_x\(2) & ((\u_adc|joystick_x\(1)) # (\u_adc|joystick_x\(0))))) # (!\u_adc|joystick_x\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|joystick_x\(1),
	datab => \u_adc|joystick_x\(6),
	datac => \u_adc|joystick_x\(0),
	datad => \u_adc|joystick_x\(2),
	combout => \WS2812_u1|LessThan3~0_combout\);

-- Location: LCCOMB_X42_Y35_N8
\WS2812_u1|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|LessThan3~1_combout\ = (\WS2812_u1|LessThan3~0_combout\) # ((\u_adc|joystick_x\(3)) # ((!\u_adc|joystick_x\(4)) # (!\u_adc|joystick_x\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|LessThan3~0_combout\,
	datab => \u_adc|joystick_x\(3),
	datac => \u_adc|joystick_x\(5),
	datad => \u_adc|joystick_x\(4),
	combout => \WS2812_u1|LessThan3~1_combout\);

-- Location: LCCOMB_X41_Y34_N2
\WS2812_u1|LessThan3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|LessThan3~2_combout\ = ((!\u_adc|joystick_x\(7) & (!\u_adc|joystick_x\(8) & \WS2812_u1|LessThan3~1_combout\))) # (!\u_adc|joystick_x\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|joystick_x\(9),
	datab => \u_adc|joystick_x\(7),
	datac => \u_adc|joystick_x\(8),
	datad => \WS2812_u1|LessThan3~1_combout\,
	combout => \WS2812_u1|LessThan3~2_combout\);

-- Location: LCCOMB_X41_Y34_N28
\WS2812_u1|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|LessThan3~3_combout\ = (\u_adc|joystick_x\(13)) # ((\u_adc|joystick_x\(11) & ((\u_adc|joystick_x\(10)) # (!\WS2812_u1|LessThan3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|joystick_x\(11),
	datab => \u_adc|joystick_x\(10),
	datac => \u_adc|joystick_x\(13),
	datad => \WS2812_u1|LessThan3~2_combout\,
	combout => \WS2812_u1|LessThan3~3_combout\);

-- Location: LCCOMB_X43_Y31_N0
\WS2812_u1|LessThan3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|LessThan3~4_combout\ = ((\u_adc|joystick_x\(15)) # ((!\u_adc|joystick_x\(12) & !\WS2812_u1|LessThan3~3_combout\))) # (!\u_adc|joystick_x\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|joystick_x\(12),
	datab => \u_adc|joystick_x\(14),
	datac => \WS2812_u1|LessThan3~3_combout\,
	datad => \u_adc|joystick_x\(15),
	combout => \WS2812_u1|LessThan3~4_combout\);

-- Location: LCCOMB_X41_Y34_N22
\WS2812_u1|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|LessThan2~3_combout\ = (\u_adc|joystick_x\(11) & (\u_adc|joystick_x\(10) & (\u_adc|joystick_x\(8) & \u_adc|joystick_x\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|joystick_x\(11),
	datab => \u_adc|joystick_x\(10),
	datac => \u_adc|joystick_x\(8),
	datad => \u_adc|joystick_x\(9),
	combout => \WS2812_u1|LessThan2~3_combout\);

-- Location: LCCOMB_X43_Y31_N12
\WS2812_u1|LessThan2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|LessThan2~2_combout\ = (\u_adc|joystick_x\(13) & (\u_adc|joystick_x\(14) & (\u_adc|joystick_x\(12) & !\u_adc|joystick_x\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|joystick_x\(13),
	datab => \u_adc|joystick_x\(14),
	datac => \u_adc|joystick_x\(12),
	datad => \u_adc|joystick_x\(15),
	combout => \WS2812_u1|LessThan2~2_combout\);

-- Location: LCCOMB_X42_Y35_N16
\WS2812_u1|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|LessThan2~0_combout\ = (!\u_adc|joystick_x\(3) & \u_adc|joystick_x\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|joystick_x\(3),
	datad => \u_adc|joystick_x\(4),
	combout => \WS2812_u1|LessThan2~0_combout\);

-- Location: LCCOMB_X42_Y35_N26
\WS2812_u1|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|LessThan2~1_combout\ = (\u_adc|joystick_x\(6)) # ((\u_adc|joystick_x\(5)) # ((!\u_adc|joystick_x\(2) & \WS2812_u1|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|joystick_x\(2),
	datab => \u_adc|joystick_x\(6),
	datac => \u_adc|joystick_x\(5),
	datad => \WS2812_u1|LessThan2~0_combout\,
	combout => \WS2812_u1|LessThan2~1_combout\);

-- Location: LCCOMB_X42_Y31_N0
\WS2812_u1|LessThan2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|LessThan2~4_combout\ = (\u_adc|joystick_x\(7) & (\WS2812_u1|LessThan2~3_combout\ & (\WS2812_u1|LessThan2~2_combout\ & \WS2812_u1|LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|joystick_x\(7),
	datab => \WS2812_u1|LessThan2~3_combout\,
	datac => \WS2812_u1|LessThan2~2_combout\,
	datad => \WS2812_u1|LessThan2~1_combout\,
	combout => \WS2812_u1|LessThan2~4_combout\);

-- Location: LCCOMB_X42_Y31_N20
\WS2812_u1|any_joy_active\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|any_joy_active~combout\ = (\WS2812_u1|LessThan1~4_combout\) # ((\WS2812_u1|LessThan0~3_combout\) # ((\WS2812_u1|LessThan3~4_combout\) # (\WS2812_u1|LessThan2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|LessThan1~4_combout\,
	datab => \WS2812_u1|LessThan0~3_combout\,
	datac => \WS2812_u1|LessThan3~4_combout\,
	datad => \WS2812_u1|LessThan2~4_combout\,
	combout => \WS2812_u1|any_joy_active~combout\);

-- Location: LCCOMB_X42_Y29_N12
\WS2812_u1|move_timer[18]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|move_timer[18]~62_combout\ = (\WS2812_u1|move_timer\(18) & ((GND) # (!\WS2812_u1|move_timer[17]~61\))) # (!\WS2812_u1|move_timer\(18) & (\WS2812_u1|move_timer[17]~61\ $ (GND)))
-- \WS2812_u1|move_timer[18]~63\ = CARRY((\WS2812_u1|move_timer\(18)) # (!\WS2812_u1|move_timer[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|move_timer\(18),
	datad => VCC,
	cin => \WS2812_u1|move_timer[17]~61\,
	combout => \WS2812_u1|move_timer[18]~62_combout\,
	cout => \WS2812_u1|move_timer[18]~63\);

-- Location: LCCOMB_X42_Y29_N14
\WS2812_u1|move_timer[19]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|move_timer[19]~64_combout\ = (\WS2812_u1|move_timer\(19) & (\WS2812_u1|move_timer[18]~63\ & VCC)) # (!\WS2812_u1|move_timer\(19) & (!\WS2812_u1|move_timer[18]~63\))
-- \WS2812_u1|move_timer[19]~65\ = CARRY((!\WS2812_u1|move_timer\(19) & !\WS2812_u1|move_timer[18]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|move_timer\(19),
	datad => VCC,
	cin => \WS2812_u1|move_timer[18]~63\,
	combout => \WS2812_u1|move_timer[19]~64_combout\,
	cout => \WS2812_u1|move_timer[19]~65\);

-- Location: FF_X42_Y29_N15
\WS2812_u1|move_timer[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|move_timer[19]~64_combout\,
	asdata => \WS2812_u1|any_joy_active~combout\,
	clrn => \rst_n~input_o\,
	sload => \WS2812_u1|move_timer[17]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|move_timer\(19));

-- Location: LCCOMB_X42_Y29_N16
\WS2812_u1|move_timer[20]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|move_timer[20]~66_combout\ = (\WS2812_u1|move_timer\(20) & ((GND) # (!\WS2812_u1|move_timer[19]~65\))) # (!\WS2812_u1|move_timer\(20) & (\WS2812_u1|move_timer[19]~65\ $ (GND)))
-- \WS2812_u1|move_timer[20]~67\ = CARRY((\WS2812_u1|move_timer\(20)) # (!\WS2812_u1|move_timer[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|move_timer\(20),
	datad => VCC,
	cin => \WS2812_u1|move_timer[19]~65\,
	combout => \WS2812_u1|move_timer[20]~66_combout\,
	cout => \WS2812_u1|move_timer[20]~67\);

-- Location: FF_X42_Y29_N17
\WS2812_u1|move_timer[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|move_timer[20]~66_combout\,
	asdata => \WS2812_u1|any_joy_active~combout\,
	clrn => \rst_n~input_o\,
	sload => \WS2812_u1|move_timer[17]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|move_timer\(20));

-- Location: LCCOMB_X42_Y29_N18
\WS2812_u1|move_timer[21]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|move_timer[21]~68_combout\ = (\WS2812_u1|move_timer\(21) & (\WS2812_u1|move_timer[20]~67\ & VCC)) # (!\WS2812_u1|move_timer\(21) & (!\WS2812_u1|move_timer[20]~67\))
-- \WS2812_u1|move_timer[21]~69\ = CARRY((!\WS2812_u1|move_timer\(21) & !\WS2812_u1|move_timer[20]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|move_timer\(21),
	datad => VCC,
	cin => \WS2812_u1|move_timer[20]~67\,
	combout => \WS2812_u1|move_timer[21]~68_combout\,
	cout => \WS2812_u1|move_timer[21]~69\);

-- Location: LCCOMB_X41_Y30_N16
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

-- Location: FF_X42_Y29_N19
\WS2812_u1|move_timer[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|move_timer[21]~68_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~input_o\,
	sload => \WS2812_u1|move_timer[17]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|move_timer\(21));

-- Location: LCCOMB_X42_Y29_N20
\WS2812_u1|move_timer[22]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|move_timer[22]~70_combout\ = (\WS2812_u1|move_timer\(22) & ((GND) # (!\WS2812_u1|move_timer[21]~69\))) # (!\WS2812_u1|move_timer\(22) & (\WS2812_u1|move_timer[21]~69\ $ (GND)))
-- \WS2812_u1|move_timer[22]~71\ = CARRY((\WS2812_u1|move_timer\(22)) # (!\WS2812_u1|move_timer[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|move_timer\(22),
	datad => VCC,
	cin => \WS2812_u1|move_timer[21]~69\,
	combout => \WS2812_u1|move_timer[22]~70_combout\,
	cout => \WS2812_u1|move_timer[22]~71\);

-- Location: FF_X42_Y29_N21
\WS2812_u1|move_timer[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|move_timer[22]~70_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~input_o\,
	sload => \WS2812_u1|move_timer[17]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|move_timer\(22));

-- Location: LCCOMB_X42_Y29_N22
\WS2812_u1|move_timer[23]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|move_timer[23]~72_combout\ = \WS2812_u1|move_timer\(23) $ (!\WS2812_u1|move_timer[22]~71\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|move_timer\(23),
	cin => \WS2812_u1|move_timer[22]~71\,
	combout => \WS2812_u1|move_timer[23]~72_combout\);

-- Location: FF_X42_Y29_N23
\WS2812_u1|move_timer[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|move_timer[23]~72_combout\,
	asdata => \WS2812_u1|any_joy_active~combout\,
	clrn => \rst_n~input_o\,
	sload => \WS2812_u1|move_timer[17]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|move_timer\(23));

-- Location: LCCOMB_X42_Y29_N28
\WS2812_u1|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Equal0~6_combout\ = (\WS2812_u1|move_timer\(20)) # ((\WS2812_u1|move_timer\(22)) # ((\WS2812_u1|move_timer\(23)) # (\WS2812_u1|move_timer\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|move_timer\(20),
	datab => \WS2812_u1|move_timer\(22),
	datac => \WS2812_u1|move_timer\(23),
	datad => \WS2812_u1|move_timer\(21),
	combout => \WS2812_u1|Equal0~6_combout\);

-- Location: LCCOMB_X42_Y30_N6
\WS2812_u1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Equal0~1_combout\ = (\WS2812_u1|move_timer\(5)) # ((\WS2812_u1|move_timer\(4)) # ((\WS2812_u1|move_timer\(7)) # (\WS2812_u1|move_timer\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|move_timer\(5),
	datab => \WS2812_u1|move_timer\(4),
	datac => \WS2812_u1|move_timer\(7),
	datad => \WS2812_u1|move_timer\(6),
	combout => \WS2812_u1|Equal0~1_combout\);

-- Location: LCCOMB_X42_Y30_N0
\WS2812_u1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Equal0~0_combout\ = (\WS2812_u1|move_timer\(1)) # ((\WS2812_u1|move_timer\(3)) # ((\WS2812_u1|move_timer\(0)) # (\WS2812_u1|move_timer\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|move_timer\(1),
	datab => \WS2812_u1|move_timer\(3),
	datac => \WS2812_u1|move_timer\(0),
	datad => \WS2812_u1|move_timer\(2),
	combout => \WS2812_u1|Equal0~0_combout\);

-- Location: LCCOMB_X42_Y30_N4
\WS2812_u1|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Equal0~2_combout\ = (\WS2812_u1|move_timer\(11)) # ((\WS2812_u1|move_timer\(10)) # ((\WS2812_u1|move_timer\(9)) # (\WS2812_u1|move_timer\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|move_timer\(11),
	datab => \WS2812_u1|move_timer\(10),
	datac => \WS2812_u1|move_timer\(9),
	datad => \WS2812_u1|move_timer\(8),
	combout => \WS2812_u1|Equal0~2_combout\);

-- Location: LCCOMB_X43_Y29_N0
\WS2812_u1|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Equal0~3_combout\ = (\WS2812_u1|move_timer\(12)) # ((\WS2812_u1|move_timer\(15)) # ((\WS2812_u1|move_timer\(14)) # (\WS2812_u1|move_timer\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|move_timer\(12),
	datab => \WS2812_u1|move_timer\(15),
	datac => \WS2812_u1|move_timer\(14),
	datad => \WS2812_u1|move_timer\(13),
	combout => \WS2812_u1|Equal0~3_combout\);

-- Location: LCCOMB_X42_Y30_N2
\WS2812_u1|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Equal0~4_combout\ = (\WS2812_u1|Equal0~1_combout\) # ((\WS2812_u1|Equal0~0_combout\) # ((\WS2812_u1|Equal0~2_combout\) # (\WS2812_u1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|Equal0~1_combout\,
	datab => \WS2812_u1|Equal0~0_combout\,
	datac => \WS2812_u1|Equal0~2_combout\,
	datad => \WS2812_u1|Equal0~3_combout\,
	combout => \WS2812_u1|Equal0~4_combout\);

-- Location: LCCOMB_X42_Y29_N26
\WS2812_u1|move_timer[17]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|move_timer[17]~74_combout\ = ((!\WS2812_u1|Equal0~5_combout\ & (!\WS2812_u1|Equal0~6_combout\ & !\WS2812_u1|Equal0~4_combout\))) # (!\WS2812_u1|any_joy_active~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|Equal0~5_combout\,
	datab => \WS2812_u1|Equal0~6_combout\,
	datac => \WS2812_u1|Equal0~4_combout\,
	datad => \WS2812_u1|any_joy_active~combout\,
	combout => \WS2812_u1|move_timer[17]~74_combout\);

-- Location: FF_X42_Y30_N9
\WS2812_u1|move_timer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|move_timer[0]~26_combout\,
	asdata => \WS2812_u1|any_joy_active~combout\,
	clrn => \rst_n~input_o\,
	sload => \WS2812_u1|move_timer[17]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|move_timer\(0));

-- Location: LCCOMB_X42_Y30_N10
\WS2812_u1|move_timer[1]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|move_timer[1]~28_combout\ = (\WS2812_u1|move_timer\(1) & (\WS2812_u1|move_timer[0]~27\ & VCC)) # (!\WS2812_u1|move_timer\(1) & (!\WS2812_u1|move_timer[0]~27\))
-- \WS2812_u1|move_timer[1]~29\ = CARRY((!\WS2812_u1|move_timer\(1) & !\WS2812_u1|move_timer[0]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|move_timer\(1),
	datad => VCC,
	cin => \WS2812_u1|move_timer[0]~27\,
	combout => \WS2812_u1|move_timer[1]~28_combout\,
	cout => \WS2812_u1|move_timer[1]~29\);

-- Location: FF_X42_Y30_N11
\WS2812_u1|move_timer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|move_timer[1]~28_combout\,
	asdata => \WS2812_u1|any_joy_active~combout\,
	clrn => \rst_n~input_o\,
	sload => \WS2812_u1|move_timer[17]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|move_timer\(1));

-- Location: LCCOMB_X42_Y30_N12
\WS2812_u1|move_timer[2]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|move_timer[2]~30_combout\ = (\WS2812_u1|move_timer\(2) & ((GND) # (!\WS2812_u1|move_timer[1]~29\))) # (!\WS2812_u1|move_timer\(2) & (\WS2812_u1|move_timer[1]~29\ $ (GND)))
-- \WS2812_u1|move_timer[2]~31\ = CARRY((\WS2812_u1|move_timer\(2)) # (!\WS2812_u1|move_timer[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|move_timer\(2),
	datad => VCC,
	cin => \WS2812_u1|move_timer[1]~29\,
	combout => \WS2812_u1|move_timer[2]~30_combout\,
	cout => \WS2812_u1|move_timer[2]~31\);

-- Location: FF_X42_Y30_N13
\WS2812_u1|move_timer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|move_timer[2]~30_combout\,
	asdata => \WS2812_u1|any_joy_active~combout\,
	clrn => \rst_n~input_o\,
	sload => \WS2812_u1|move_timer[17]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|move_timer\(2));

-- Location: LCCOMB_X42_Y30_N14
\WS2812_u1|move_timer[3]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|move_timer[3]~32_combout\ = (\WS2812_u1|move_timer\(3) & (\WS2812_u1|move_timer[2]~31\ & VCC)) # (!\WS2812_u1|move_timer\(3) & (!\WS2812_u1|move_timer[2]~31\))
-- \WS2812_u1|move_timer[3]~33\ = CARRY((!\WS2812_u1|move_timer\(3) & !\WS2812_u1|move_timer[2]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|move_timer\(3),
	datad => VCC,
	cin => \WS2812_u1|move_timer[2]~31\,
	combout => \WS2812_u1|move_timer[3]~32_combout\,
	cout => \WS2812_u1|move_timer[3]~33\);

-- Location: FF_X42_Y30_N15
\WS2812_u1|move_timer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|move_timer[3]~32_combout\,
	asdata => \WS2812_u1|any_joy_active~combout\,
	clrn => \rst_n~input_o\,
	sload => \WS2812_u1|move_timer[17]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|move_timer\(3));

-- Location: LCCOMB_X42_Y30_N16
\WS2812_u1|move_timer[4]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|move_timer[4]~34_combout\ = (\WS2812_u1|move_timer\(4) & ((GND) # (!\WS2812_u1|move_timer[3]~33\))) # (!\WS2812_u1|move_timer\(4) & (\WS2812_u1|move_timer[3]~33\ $ (GND)))
-- \WS2812_u1|move_timer[4]~35\ = CARRY((\WS2812_u1|move_timer\(4)) # (!\WS2812_u1|move_timer[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|move_timer\(4),
	datad => VCC,
	cin => \WS2812_u1|move_timer[3]~33\,
	combout => \WS2812_u1|move_timer[4]~34_combout\,
	cout => \WS2812_u1|move_timer[4]~35\);

-- Location: FF_X42_Y30_N17
\WS2812_u1|move_timer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|move_timer[4]~34_combout\,
	asdata => \WS2812_u1|any_joy_active~combout\,
	clrn => \rst_n~input_o\,
	sload => \WS2812_u1|move_timer[17]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|move_timer\(4));

-- Location: LCCOMB_X42_Y30_N18
\WS2812_u1|move_timer[5]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|move_timer[5]~36_combout\ = (\WS2812_u1|move_timer\(5) & (\WS2812_u1|move_timer[4]~35\ & VCC)) # (!\WS2812_u1|move_timer\(5) & (!\WS2812_u1|move_timer[4]~35\))
-- \WS2812_u1|move_timer[5]~37\ = CARRY((!\WS2812_u1|move_timer\(5) & !\WS2812_u1|move_timer[4]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|move_timer\(5),
	datad => VCC,
	cin => \WS2812_u1|move_timer[4]~35\,
	combout => \WS2812_u1|move_timer[5]~36_combout\,
	cout => \WS2812_u1|move_timer[5]~37\);

-- Location: FF_X42_Y30_N19
\WS2812_u1|move_timer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|move_timer[5]~36_combout\,
	asdata => \WS2812_u1|any_joy_active~combout\,
	clrn => \rst_n~input_o\,
	sload => \WS2812_u1|move_timer[17]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|move_timer\(5));

-- Location: LCCOMB_X42_Y30_N20
\WS2812_u1|move_timer[6]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|move_timer[6]~38_combout\ = (\WS2812_u1|move_timer\(6) & ((GND) # (!\WS2812_u1|move_timer[5]~37\))) # (!\WS2812_u1|move_timer\(6) & (\WS2812_u1|move_timer[5]~37\ $ (GND)))
-- \WS2812_u1|move_timer[6]~39\ = CARRY((\WS2812_u1|move_timer\(6)) # (!\WS2812_u1|move_timer[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|move_timer\(6),
	datad => VCC,
	cin => \WS2812_u1|move_timer[5]~37\,
	combout => \WS2812_u1|move_timer[6]~38_combout\,
	cout => \WS2812_u1|move_timer[6]~39\);

-- Location: FF_X42_Y30_N21
\WS2812_u1|move_timer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|move_timer[6]~38_combout\,
	asdata => \WS2812_u1|any_joy_active~combout\,
	clrn => \rst_n~input_o\,
	sload => \WS2812_u1|move_timer[17]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|move_timer\(6));

-- Location: LCCOMB_X42_Y30_N22
\WS2812_u1|move_timer[7]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|move_timer[7]~40_combout\ = (\WS2812_u1|move_timer\(7) & (\WS2812_u1|move_timer[6]~39\ & VCC)) # (!\WS2812_u1|move_timer\(7) & (!\WS2812_u1|move_timer[6]~39\))
-- \WS2812_u1|move_timer[7]~41\ = CARRY((!\WS2812_u1|move_timer\(7) & !\WS2812_u1|move_timer[6]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|move_timer\(7),
	datad => VCC,
	cin => \WS2812_u1|move_timer[6]~39\,
	combout => \WS2812_u1|move_timer[7]~40_combout\,
	cout => \WS2812_u1|move_timer[7]~41\);

-- Location: FF_X42_Y30_N23
\WS2812_u1|move_timer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|move_timer[7]~40_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~input_o\,
	sload => \WS2812_u1|move_timer[17]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|move_timer\(7));

-- Location: LCCOMB_X42_Y30_N24
\WS2812_u1|move_timer[8]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|move_timer[8]~42_combout\ = (\WS2812_u1|move_timer\(8) & ((GND) # (!\WS2812_u1|move_timer[7]~41\))) # (!\WS2812_u1|move_timer\(8) & (\WS2812_u1|move_timer[7]~41\ $ (GND)))
-- \WS2812_u1|move_timer[8]~43\ = CARRY((\WS2812_u1|move_timer\(8)) # (!\WS2812_u1|move_timer[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|move_timer\(8),
	datad => VCC,
	cin => \WS2812_u1|move_timer[7]~41\,
	combout => \WS2812_u1|move_timer[8]~42_combout\,
	cout => \WS2812_u1|move_timer[8]~43\);

-- Location: FF_X42_Y30_N25
\WS2812_u1|move_timer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|move_timer[8]~42_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~input_o\,
	sload => \WS2812_u1|move_timer[17]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|move_timer\(8));

-- Location: LCCOMB_X42_Y30_N26
\WS2812_u1|move_timer[9]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|move_timer[9]~44_combout\ = (\WS2812_u1|move_timer\(9) & (\WS2812_u1|move_timer[8]~43\ & VCC)) # (!\WS2812_u1|move_timer\(9) & (!\WS2812_u1|move_timer[8]~43\))
-- \WS2812_u1|move_timer[9]~45\ = CARRY((!\WS2812_u1|move_timer\(9) & !\WS2812_u1|move_timer[8]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|move_timer\(9),
	datad => VCC,
	cin => \WS2812_u1|move_timer[8]~43\,
	combout => \WS2812_u1|move_timer[9]~44_combout\,
	cout => \WS2812_u1|move_timer[9]~45\);

-- Location: FF_X42_Y30_N27
\WS2812_u1|move_timer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|move_timer[9]~44_combout\,
	asdata => \WS2812_u1|any_joy_active~combout\,
	clrn => \rst_n~input_o\,
	sload => \WS2812_u1|move_timer[17]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|move_timer\(9));

-- Location: LCCOMB_X42_Y30_N28
\WS2812_u1|move_timer[10]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|move_timer[10]~46_combout\ = (\WS2812_u1|move_timer\(10) & ((GND) # (!\WS2812_u1|move_timer[9]~45\))) # (!\WS2812_u1|move_timer\(10) & (\WS2812_u1|move_timer[9]~45\ $ (GND)))
-- \WS2812_u1|move_timer[10]~47\ = CARRY((\WS2812_u1|move_timer\(10)) # (!\WS2812_u1|move_timer[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|move_timer\(10),
	datad => VCC,
	cin => \WS2812_u1|move_timer[9]~45\,
	combout => \WS2812_u1|move_timer[10]~46_combout\,
	cout => \WS2812_u1|move_timer[10]~47\);

-- Location: FF_X42_Y30_N29
\WS2812_u1|move_timer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|move_timer[10]~46_combout\,
	asdata => \WS2812_u1|any_joy_active~combout\,
	clrn => \rst_n~input_o\,
	sload => \WS2812_u1|move_timer[17]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|move_timer\(10));

-- Location: LCCOMB_X42_Y30_N30
\WS2812_u1|move_timer[11]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|move_timer[11]~48_combout\ = (\WS2812_u1|move_timer\(11) & (\WS2812_u1|move_timer[10]~47\ & VCC)) # (!\WS2812_u1|move_timer\(11) & (!\WS2812_u1|move_timer[10]~47\))
-- \WS2812_u1|move_timer[11]~49\ = CARRY((!\WS2812_u1|move_timer\(11) & !\WS2812_u1|move_timer[10]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|move_timer\(11),
	datad => VCC,
	cin => \WS2812_u1|move_timer[10]~47\,
	combout => \WS2812_u1|move_timer[11]~48_combout\,
	cout => \WS2812_u1|move_timer[11]~49\);

-- Location: FF_X42_Y30_N31
\WS2812_u1|move_timer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|move_timer[11]~48_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~input_o\,
	sload => \WS2812_u1|move_timer[17]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|move_timer\(11));

-- Location: LCCOMB_X42_Y29_N0
\WS2812_u1|move_timer[12]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|move_timer[12]~50_combout\ = (\WS2812_u1|move_timer\(12) & ((GND) # (!\WS2812_u1|move_timer[11]~49\))) # (!\WS2812_u1|move_timer\(12) & (\WS2812_u1|move_timer[11]~49\ $ (GND)))
-- \WS2812_u1|move_timer[12]~51\ = CARRY((\WS2812_u1|move_timer\(12)) # (!\WS2812_u1|move_timer[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|move_timer\(12),
	datad => VCC,
	cin => \WS2812_u1|move_timer[11]~49\,
	combout => \WS2812_u1|move_timer[12]~50_combout\,
	cout => \WS2812_u1|move_timer[12]~51\);

-- Location: FF_X42_Y29_N1
\WS2812_u1|move_timer[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|move_timer[12]~50_combout\,
	asdata => \WS2812_u1|any_joy_active~combout\,
	clrn => \rst_n~input_o\,
	sload => \WS2812_u1|move_timer[17]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|move_timer\(12));

-- Location: LCCOMB_X42_Y29_N2
\WS2812_u1|move_timer[13]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|move_timer[13]~52_combout\ = (\WS2812_u1|move_timer\(13) & (\WS2812_u1|move_timer[12]~51\ & VCC)) # (!\WS2812_u1|move_timer\(13) & (!\WS2812_u1|move_timer[12]~51\))
-- \WS2812_u1|move_timer[13]~53\ = CARRY((!\WS2812_u1|move_timer\(13) & !\WS2812_u1|move_timer[12]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|move_timer\(13),
	datad => VCC,
	cin => \WS2812_u1|move_timer[12]~51\,
	combout => \WS2812_u1|move_timer[13]~52_combout\,
	cout => \WS2812_u1|move_timer[13]~53\);

-- Location: FF_X42_Y29_N3
\WS2812_u1|move_timer[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|move_timer[13]~52_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~input_o\,
	sload => \WS2812_u1|move_timer[17]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|move_timer\(13));

-- Location: LCCOMB_X42_Y29_N4
\WS2812_u1|move_timer[14]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|move_timer[14]~54_combout\ = (\WS2812_u1|move_timer\(14) & ((GND) # (!\WS2812_u1|move_timer[13]~53\))) # (!\WS2812_u1|move_timer\(14) & (\WS2812_u1|move_timer[13]~53\ $ (GND)))
-- \WS2812_u1|move_timer[14]~55\ = CARRY((\WS2812_u1|move_timer\(14)) # (!\WS2812_u1|move_timer[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|move_timer\(14),
	datad => VCC,
	cin => \WS2812_u1|move_timer[13]~53\,
	combout => \WS2812_u1|move_timer[14]~54_combout\,
	cout => \WS2812_u1|move_timer[14]~55\);

-- Location: FF_X42_Y29_N5
\WS2812_u1|move_timer[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|move_timer[14]~54_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~input_o\,
	sload => \WS2812_u1|move_timer[17]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|move_timer\(14));

-- Location: LCCOMB_X42_Y29_N6
\WS2812_u1|move_timer[15]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|move_timer[15]~56_combout\ = (\WS2812_u1|move_timer\(15) & (\WS2812_u1|move_timer[14]~55\ & VCC)) # (!\WS2812_u1|move_timer\(15) & (!\WS2812_u1|move_timer[14]~55\))
-- \WS2812_u1|move_timer[15]~57\ = CARRY((!\WS2812_u1|move_timer\(15) & !\WS2812_u1|move_timer[14]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|move_timer\(15),
	datad => VCC,
	cin => \WS2812_u1|move_timer[14]~55\,
	combout => \WS2812_u1|move_timer[15]~56_combout\,
	cout => \WS2812_u1|move_timer[15]~57\);

-- Location: FF_X42_Y29_N7
\WS2812_u1|move_timer[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|move_timer[15]~56_combout\,
	asdata => \WS2812_u1|any_joy_active~combout\,
	clrn => \rst_n~input_o\,
	sload => \WS2812_u1|move_timer[17]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|move_timer\(15));

-- Location: LCCOMB_X42_Y29_N8
\WS2812_u1|move_timer[16]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|move_timer[16]~58_combout\ = (\WS2812_u1|move_timer\(16) & ((GND) # (!\WS2812_u1|move_timer[15]~57\))) # (!\WS2812_u1|move_timer\(16) & (\WS2812_u1|move_timer[15]~57\ $ (GND)))
-- \WS2812_u1|move_timer[16]~59\ = CARRY((\WS2812_u1|move_timer\(16)) # (!\WS2812_u1|move_timer[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|move_timer\(16),
	datad => VCC,
	cin => \WS2812_u1|move_timer[15]~57\,
	combout => \WS2812_u1|move_timer[16]~58_combout\,
	cout => \WS2812_u1|move_timer[16]~59\);

-- Location: FF_X42_Y29_N9
\WS2812_u1|move_timer[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|move_timer[16]~58_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~input_o\,
	sload => \WS2812_u1|move_timer[17]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|move_timer\(16));

-- Location: LCCOMB_X42_Y29_N10
\WS2812_u1|move_timer[17]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|move_timer[17]~60_combout\ = (\WS2812_u1|move_timer\(17) & (\WS2812_u1|move_timer[16]~59\ & VCC)) # (!\WS2812_u1|move_timer\(17) & (!\WS2812_u1|move_timer[16]~59\))
-- \WS2812_u1|move_timer[17]~61\ = CARRY((!\WS2812_u1|move_timer\(17) & !\WS2812_u1|move_timer[16]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|move_timer\(17),
	datad => VCC,
	cin => \WS2812_u1|move_timer[16]~59\,
	combout => \WS2812_u1|move_timer[17]~60_combout\,
	cout => \WS2812_u1|move_timer[17]~61\);

-- Location: FF_X42_Y29_N11
\WS2812_u1|move_timer[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|move_timer[17]~60_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~input_o\,
	sload => \WS2812_u1|move_timer[17]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|move_timer\(17));

-- Location: FF_X42_Y29_N13
\WS2812_u1|move_timer[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|move_timer[18]~62_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~input_o\,
	sload => \WS2812_u1|move_timer[17]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|move_timer\(18));

-- Location: LCCOMB_X42_Y29_N30
\WS2812_u1|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Equal0~5_combout\ = (\WS2812_u1|move_timer\(18)) # ((\WS2812_u1|move_timer\(19)) # ((\WS2812_u1|move_timer\(16)) # (\WS2812_u1|move_timer\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|move_timer\(18),
	datab => \WS2812_u1|move_timer\(19),
	datac => \WS2812_u1|move_timer\(16),
	datad => \WS2812_u1|move_timer\(17),
	combout => \WS2812_u1|Equal0~5_combout\);

-- Location: LCCOMB_X42_Y29_N24
\WS2812_u1|move_pulse~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|move_pulse~2_combout\ = (!\WS2812_u1|Equal0~5_combout\ & (!\WS2812_u1|Equal0~6_combout\ & (!\WS2812_u1|Equal0~4_combout\ & \WS2812_u1|any_joy_active~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|Equal0~5_combout\,
	datab => \WS2812_u1|Equal0~6_combout\,
	datac => \WS2812_u1|Equal0~4_combout\,
	datad => \WS2812_u1|any_joy_active~combout\,
	combout => \WS2812_u1|move_pulse~2_combout\);

-- Location: FF_X42_Y29_N25
\WS2812_u1|move_pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|move_pulse~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|move_pulse~q\);

-- Location: LCCOMB_X43_Y31_N20
\WS2812_u1|update_req~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|update_req~1_combout\ = (\WS2812_u1|sys_mode_delay.MODE_CLEAR~q\ & (((\WS2812_u1|move_pulse~q\) # (!\WS2812_u1|sys_mode.MODE_CLEAR~q\)) # (!\WS2812_u1|sys_mode_delay.MODE_CONTROL~q\))) # (!\WS2812_u1|sys_mode_delay.MODE_CLEAR~q\ & 
-- ((\WS2812_u1|sys_mode_delay.MODE_CONTROL~q\) # ((\WS2812_u1|sys_mode.MODE_CLEAR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|sys_mode_delay.MODE_CLEAR~q\,
	datab => \WS2812_u1|sys_mode_delay.MODE_CONTROL~q\,
	datac => \WS2812_u1|sys_mode.MODE_CLEAR~q\,
	datad => \WS2812_u1|move_pulse~q\,
	combout => \WS2812_u1|update_req~1_combout\);

-- Location: LCCOMB_X44_Y31_N4
\WS2812_u1|update_req~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|update_req~2_combout\ = (\WS2812_u1|update_req~q\ & ((!\WS2812_u1|update_req~1_combout\))) # (!\WS2812_u1|update_req~q\ & (!\WS2812_u1|state.STATE_IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|state.STATE_IDLE~q\,
	datac => \WS2812_u1|update_req~q\,
	datad => \WS2812_u1|update_req~1_combout\,
	combout => \WS2812_u1|update_req~2_combout\);

-- Location: FF_X44_Y31_N5
\WS2812_u1|update_req\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|update_req~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|update_req~q\);

-- Location: LCCOMB_X44_Y31_N28
\WS2812_u1|always1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|always1~6_combout\ = (!\WS2812_u1|update_req~q\ & !\WS2812_u1|state.STATE_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|update_req~q\,
	datac => \WS2812_u1|state.STATE_IDLE~q\,
	combout => \WS2812_u1|always1~6_combout\);

-- Location: LCCOMB_X44_Y31_N30
\WS2812_u1|Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Selector17~0_combout\ = (!\WS2812_u1|led_idx[2]~22_combout\ & ((\WS2812_u1|state.STATE_RESET~q\ & ((!\WS2812_u1|LessThan8~4_combout\))) # (!\WS2812_u1|state.STATE_RESET~q\ & (\WS2812_u1|always1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|always1~6_combout\,
	datab => \WS2812_u1|LessThan8~4_combout\,
	datac => \WS2812_u1|state.STATE_RESET~q\,
	datad => \WS2812_u1|led_idx[2]~22_combout\,
	combout => \WS2812_u1|Selector17~0_combout\);

-- Location: FF_X44_Y31_N31
\WS2812_u1|state.STATE_RESET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|Selector17~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|state.STATE_RESET~q\);

-- Location: LCCOMB_X44_Y31_N26
\WS2812_u1|led_idx[2]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|led_idx[2]~21_combout\ = (!\WS2812_u1|LessThan8~4_combout\) # (!\WS2812_u1|state.STATE_RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WS2812_u1|state.STATE_RESET~q\,
	datad => \WS2812_u1|LessThan8~4_combout\,
	combout => \WS2812_u1|led_idx[2]~21_combout\);

-- Location: LCCOMB_X44_Y31_N2
\WS2812_u1|Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Selector18~0_combout\ = (!\WS2812_u1|led_idx[2]~22_combout\ & (((!\WS2812_u1|always1~6_combout\ & \WS2812_u1|state.STATE_SEND~q\)) # (!\WS2812_u1|led_idx[2]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|led_idx[2]~21_combout\,
	datab => \WS2812_u1|always1~6_combout\,
	datac => \WS2812_u1|state.STATE_SEND~q\,
	datad => \WS2812_u1|led_idx[2]~22_combout\,
	combout => \WS2812_u1|Selector18~0_combout\);

-- Location: FF_X44_Y31_N3
\WS2812_u1|state.STATE_SEND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|Selector18~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|state.STATE_SEND~q\);

-- Location: LCCOMB_X46_Y30_N30
\WS2812_u1|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Selector1~0_combout\ = (\WS2812_u1|state.STATE_SEND~q\ & ((\WS2812_u1|LessThan11~4_combout\) # ((!\WS2812_u1|LessThan8~4_combout\ & \WS2812_u1|state.STATE_RESET~q\)))) # (!\WS2812_u1|state.STATE_SEND~q\ & (!\WS2812_u1|LessThan8~4_combout\ & 
-- (\WS2812_u1|state.STATE_RESET~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|state.STATE_SEND~q\,
	datab => \WS2812_u1|LessThan8~4_combout\,
	datac => \WS2812_u1|state.STATE_RESET~q\,
	datad => \WS2812_u1|LessThan11~4_combout\,
	combout => \WS2812_u1|Selector1~0_combout\);

-- Location: LCCOMB_X43_Y30_N16
\WS2812_u1|Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Selector15~0_combout\ = (\WS2812_u1|Add7~0_combout\ & \WS2812_u1|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WS2812_u1|Add7~0_combout\,
	datad => \WS2812_u1|Selector1~0_combout\,
	combout => \WS2812_u1|Selector15~0_combout\);

-- Location: FF_X43_Y30_N17
\WS2812_u1|clk_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|Selector15~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|clk_cnt\(0));

-- Location: LCCOMB_X44_Y30_N2
\WS2812_u1|Add7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Add7~2_combout\ = (\WS2812_u1|clk_cnt\(1) & (!\WS2812_u1|Add7~1\)) # (!\WS2812_u1|clk_cnt\(1) & ((\WS2812_u1|Add7~1\) # (GND)))
-- \WS2812_u1|Add7~3\ = CARRY((!\WS2812_u1|Add7~1\) # (!\WS2812_u1|clk_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|clk_cnt\(1),
	datad => VCC,
	cin => \WS2812_u1|Add7~1\,
	combout => \WS2812_u1|Add7~2_combout\,
	cout => \WS2812_u1|Add7~3\);

-- Location: LCCOMB_X43_Y30_N14
\WS2812_u1|Selector14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Selector14~0_combout\ = (\WS2812_u1|Add7~2_combout\ & \WS2812_u1|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|Add7~2_combout\,
	datad => \WS2812_u1|Selector1~0_combout\,
	combout => \WS2812_u1|Selector14~0_combout\);

-- Location: FF_X43_Y30_N15
\WS2812_u1|clk_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|Selector14~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|clk_cnt\(1));

-- Location: LCCOMB_X44_Y30_N4
\WS2812_u1|Add7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Add7~4_combout\ = (\WS2812_u1|clk_cnt\(2) & (\WS2812_u1|Add7~3\ $ (GND))) # (!\WS2812_u1|clk_cnt\(2) & (!\WS2812_u1|Add7~3\ & VCC))
-- \WS2812_u1|Add7~5\ = CARRY((\WS2812_u1|clk_cnt\(2) & !\WS2812_u1|Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|clk_cnt\(2),
	datad => VCC,
	cin => \WS2812_u1|Add7~3\,
	combout => \WS2812_u1|Add7~4_combout\,
	cout => \WS2812_u1|Add7~5\);

-- Location: LCCOMB_X43_Y30_N28
\WS2812_u1|Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Selector13~0_combout\ = (\WS2812_u1|Add7~4_combout\ & \WS2812_u1|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|Add7~4_combout\,
	datad => \WS2812_u1|Selector1~0_combout\,
	combout => \WS2812_u1|Selector13~0_combout\);

-- Location: FF_X43_Y30_N29
\WS2812_u1|clk_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|Selector13~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|clk_cnt\(2));

-- Location: LCCOMB_X43_Y30_N6
\WS2812_u1|Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Selector12~0_combout\ = (\WS2812_u1|Add7~6_combout\ & \WS2812_u1|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|Add7~6_combout\,
	datad => \WS2812_u1|Selector1~0_combout\,
	combout => \WS2812_u1|Selector12~0_combout\);

-- Location: FF_X43_Y30_N7
\WS2812_u1|clk_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|Selector12~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|clk_cnt\(3));

-- Location: LCCOMB_X43_Y30_N26
\WS2812_u1|LessThan11~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|LessThan11~3_combout\ = (((!\WS2812_u1|clk_cnt\(1) & !\WS2812_u1|clk_cnt\(0))) # (!\WS2812_u1|clk_cnt\(2))) # (!\WS2812_u1|clk_cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|clk_cnt\(3),
	datab => \WS2812_u1|clk_cnt\(2),
	datac => \WS2812_u1|clk_cnt\(1),
	datad => \WS2812_u1|clk_cnt\(0),
	combout => \WS2812_u1|LessThan11~3_combout\);

-- Location: LCCOMB_X43_Y30_N2
\WS2812_u1|DIN~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|DIN~1_combout\ = (!\WS2812_u1|clk_cnt\(3) & (!\WS2812_u1|clk_cnt\(2) & (!\WS2812_u1|clk_cnt\(1) & !\WS2812_u1|clk_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|clk_cnt\(3),
	datab => \WS2812_u1|clk_cnt\(2),
	datac => \WS2812_u1|clk_cnt\(1),
	datad => \WS2812_u1|clk_cnt\(0),
	combout => \WS2812_u1|DIN~1_combout\);

-- Location: LCCOMB_X43_Y30_N12
\WS2812_u1|DIN~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|DIN~2_combout\ = (\WS2812_u1|clk_cnt\(5) & (\WS2812_u1|LessThan11~3_combout\ & (!\WS2812_u1|clk_cnt\(4)))) # (!\WS2812_u1|clk_cnt\(5) & (((\WS2812_u1|clk_cnt\(4) & !\WS2812_u1|DIN~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|LessThan11~3_combout\,
	datab => \WS2812_u1|clk_cnt\(5),
	datac => \WS2812_u1|clk_cnt\(4),
	datad => \WS2812_u1|DIN~1_combout\,
	combout => \WS2812_u1|DIN~2_combout\);

-- Location: LCCOMB_X44_Y31_N0
\WS2812_u1|draw_mode.MODE_CONTROL~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|draw_mode.MODE_CONTROL~0_combout\ = (\WS2812_u1|state.STATE_IDLE~q\ & (((\WS2812_u1|draw_mode.MODE_CONTROL~q\)))) # (!\WS2812_u1|state.STATE_IDLE~q\ & ((\WS2812_u1|update_req~q\ & (\WS2812_u1|draw_mode.MODE_CONTROL~q\)) # 
-- (!\WS2812_u1|update_req~q\ & ((\WS2812_u1|sys_mode.MODE_CLEAR~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|state.STATE_IDLE~q\,
	datab => \WS2812_u1|update_req~q\,
	datac => \WS2812_u1|draw_mode.MODE_CONTROL~q\,
	datad => \WS2812_u1|sys_mode.MODE_CLEAR~q\,
	combout => \WS2812_u1|draw_mode.MODE_CONTROL~0_combout\);

-- Location: FF_X44_Y31_N1
\WS2812_u1|draw_mode.MODE_CONTROL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|draw_mode.MODE_CONTROL~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|draw_mode.MODE_CONTROL~q\);

-- Location: LCCOMB_X43_Y31_N28
\WS2812_u1|ctrl_col~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|ctrl_col~6_combout\ = (!\WS2812_u1|ctrl_col\(0) & ((\WS2812_u1|sys_mode_delay.MODE_CLEAR~q\ & (\WS2812_u1|sys_mode.MODE_CLEAR~q\ & \WS2812_u1|sys_mode_delay.MODE_CONTROL~q\)) # (!\WS2812_u1|sys_mode_delay.MODE_CLEAR~q\ & 
-- (!\WS2812_u1|sys_mode.MODE_CLEAR~q\ & !\WS2812_u1|sys_mode_delay.MODE_CONTROL~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|sys_mode_delay.MODE_CLEAR~q\,
	datab => \WS2812_u1|sys_mode.MODE_CLEAR~q\,
	datac => \WS2812_u1|ctrl_col\(0),
	datad => \WS2812_u1|sys_mode_delay.MODE_CONTROL~q\,
	combout => \WS2812_u1|ctrl_col~6_combout\);

-- Location: LCCOMB_X42_Y31_N8
\WS2812_u1|WideOr0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|WideOr0~combout\ = (\WS2812_u1|sys_mode.MODE_CLEAR~q\ & ((!\WS2812_u1|sys_mode_delay.MODE_CLEAR~q\) # (!\WS2812_u1|sys_mode_delay.MODE_CONTROL~q\))) # (!\WS2812_u1|sys_mode.MODE_CLEAR~q\ & ((\WS2812_u1|sys_mode_delay.MODE_CONTROL~q\) # 
-- (\WS2812_u1|sys_mode_delay.MODE_CLEAR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|sys_mode.MODE_CLEAR~q\,
	datac => \WS2812_u1|sys_mode_delay.MODE_CONTROL~q\,
	datad => \WS2812_u1|sys_mode_delay.MODE_CLEAR~q\,
	combout => \WS2812_u1|WideOr0~combout\);

-- Location: LCCOMB_X43_Y31_N18
\WS2812_u1|always1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|always1~7_combout\ = (\WS2812_u1|LessThan3~4_combout\ & (((\WS2812_u1|ctrl_col\(2)) # (!\WS2812_u1|ctrl_col\(0))) # (!\WS2812_u1|ctrl_col\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|ctrl_col\(1),
	datab => \WS2812_u1|ctrl_col\(0),
	datac => \WS2812_u1|ctrl_col\(2),
	datad => \WS2812_u1|LessThan3~4_combout\,
	combout => \WS2812_u1|always1~7_combout\);

-- Location: LCCOMB_X43_Y31_N8
\WS2812_u1|ctrl_col~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|ctrl_col~2_combout\ = (!\WS2812_u1|WideOr0~combout\ & (\WS2812_u1|ctrl_col\(0) $ (\WS2812_u1|ctrl_col\(1) $ (!\WS2812_u1|always1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|WideOr0~combout\,
	datab => \WS2812_u1|ctrl_col\(0),
	datac => \WS2812_u1|ctrl_col\(1),
	datad => \WS2812_u1|always1~7_combout\,
	combout => \WS2812_u1|ctrl_col~2_combout\);

-- Location: FF_X43_Y31_N9
\WS2812_u1|ctrl_col[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|ctrl_col~2_combout\,
	clrn => \rst_n~input_o\,
	ena => \WS2812_u1|ctrl_col[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|ctrl_col\(1));

-- Location: LCCOMB_X43_Y31_N2
\WS2812_u1|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Add3~0_combout\ = (\WS2812_u1|ctrl_col\(1) & (\WS2812_u1|ctrl_col\(2) & ((!\WS2812_u1|ctrl_col\(0)) # (!\WS2812_u1|LessThan3~4_combout\)))) # (!\WS2812_u1|ctrl_col\(1) & (\WS2812_u1|ctrl_col\(2) $ (((!\WS2812_u1|LessThan3~4_combout\ & 
-- !\WS2812_u1|ctrl_col\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|ctrl_col\(1),
	datab => \WS2812_u1|LessThan3~4_combout\,
	datac => \WS2812_u1|ctrl_col\(2),
	datad => \WS2812_u1|ctrl_col\(0),
	combout => \WS2812_u1|Add3~0_combout\);

-- Location: LCCOMB_X43_Y31_N26
\WS2812_u1|ctrl_col~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|ctrl_col~5_combout\ = (!\WS2812_u1|WideOr0~combout\ & ((\WS2812_u1|ctrl_col~4_combout\ & (\WS2812_u1|Add3~0_combout\)) # (!\WS2812_u1|ctrl_col~4_combout\ & ((\WS2812_u1|ctrl_col\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|WideOr0~combout\,
	datab => \WS2812_u1|Add3~0_combout\,
	datac => \WS2812_u1|ctrl_col\(2),
	datad => \WS2812_u1|ctrl_col~4_combout\,
	combout => \WS2812_u1|ctrl_col~5_combout\);

-- Location: FF_X43_Y31_N27
\WS2812_u1|ctrl_col[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|ctrl_col~5_combout\,
	clrn => \rst_n~input_o\,
	ena => \WS2812_u1|sys_mode.MODE_CLEAR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|ctrl_col\(2));

-- Location: LCCOMB_X44_Y31_N12
\WS2812_u1|ctrl_col[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|ctrl_col[0]~3_combout\ = (\WS2812_u1|ctrl_col\(2) & !\WS2812_u1|ctrl_col\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WS2812_u1|ctrl_col\(2),
	datad => \WS2812_u1|ctrl_col\(1),
	combout => \WS2812_u1|ctrl_col[0]~3_combout\);

-- Location: LCCOMB_X43_Y31_N10
\WS2812_u1|ctrl_col~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|ctrl_col~4_combout\ = (\WS2812_u1|move_pulse~q\ & ((\WS2812_u1|always1~7_combout\) # ((\WS2812_u1|LessThan2~4_combout\ & !\WS2812_u1|ctrl_col[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|LessThan2~4_combout\,
	datab => \WS2812_u1|move_pulse~q\,
	datac => \WS2812_u1|ctrl_col[0]~3_combout\,
	datad => \WS2812_u1|always1~7_combout\,
	combout => \WS2812_u1|ctrl_col~4_combout\);

-- Location: LCCOMB_X43_Y31_N4
\WS2812_u1|ctrl_col[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|ctrl_col[0]~7_combout\ = (\WS2812_u1|sys_mode.MODE_CLEAR~q\ & (((\WS2812_u1|ctrl_col~4_combout\) # (!\WS2812_u1|sys_mode_delay.MODE_CONTROL~q\)) # (!\WS2812_u1|sys_mode_delay.MODE_CLEAR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|sys_mode_delay.MODE_CLEAR~q\,
	datab => \WS2812_u1|sys_mode_delay.MODE_CONTROL~q\,
	datac => \WS2812_u1|sys_mode.MODE_CLEAR~q\,
	datad => \WS2812_u1|ctrl_col~4_combout\,
	combout => \WS2812_u1|ctrl_col[0]~7_combout\);

-- Location: FF_X43_Y31_N29
\WS2812_u1|ctrl_col[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|ctrl_col~6_combout\,
	clrn => \rst_n~input_o\,
	ena => \WS2812_u1|ctrl_col[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|ctrl_col\(0));

-- Location: LCCOMB_X44_Y31_N24
\WS2812_u1|draw_col[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|draw_col[0]~1_combout\ = !\WS2812_u1|ctrl_col\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WS2812_u1|ctrl_col\(0),
	combout => \WS2812_u1|draw_col[0]~1_combout\);

-- Location: FF_X44_Y31_N25
\WS2812_u1|draw_col[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|draw_col[0]~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \WS2812_u1|always1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|draw_col\(0));

-- Location: LCCOMB_X45_Y31_N22
\WS2812_u1|always2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|always2~1_combout\ = (\WS2812_u1|draw_col\(0) & !\WS2812_u1|led_idx\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|draw_col\(0),
	datad => \WS2812_u1|led_idx\(0),
	combout => \WS2812_u1|always2~1_combout\);

-- Location: FF_X44_Y31_N11
\WS2812_u1|draw_col[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \WS2812_u1|ctrl_col\(2),
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \WS2812_u1|always1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|draw_col\(2));

-- Location: LCCOMB_X45_Y31_N20
\WS2812_u1|always2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|always2~0_combout\ = \WS2812_u1|led_idx\(2) $ (\WS2812_u1|draw_col\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WS2812_u1|led_idx\(2),
	datad => \WS2812_u1|draw_col\(2),
	combout => \WS2812_u1|always2~0_combout\);

-- Location: LCCOMB_X44_Y31_N16
\WS2812_u1|draw_col[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|draw_col[1]~0_combout\ = !\WS2812_u1|ctrl_col\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WS2812_u1|ctrl_col\(1),
	combout => \WS2812_u1|draw_col[1]~0_combout\);

-- Location: FF_X44_Y31_N17
\WS2812_u1|draw_col[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|draw_col[1]~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \WS2812_u1|always1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|draw_col\(1));

-- Location: LCCOMB_X45_Y31_N28
\WS2812_u1|always2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|always2~2_combout\ = (\WS2812_u1|always2~1_combout\ & ((\WS2812_u1|always2~0_combout\ & (\WS2812_u1|draw_col\(1) & !\WS2812_u1|led_idx\(1))) # (!\WS2812_u1|always2~0_combout\ & (!\WS2812_u1|draw_col\(1) & \WS2812_u1|led_idx\(1))))) # 
-- (!\WS2812_u1|always2~1_combout\ & (!\WS2812_u1|always2~0_combout\ & (\WS2812_u1|draw_col\(1) $ (!\WS2812_u1|led_idx\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|always2~1_combout\,
	datab => \WS2812_u1|always2~0_combout\,
	datac => \WS2812_u1|draw_col\(1),
	datad => \WS2812_u1|led_idx\(1),
	combout => \WS2812_u1|always2~2_combout\);

-- Location: LCCOMB_X42_Y31_N26
\WS2812_u1|ctrl_row~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|ctrl_row~6_combout\ = (!\WS2812_u1|ctrl_row\(0) & ((\WS2812_u1|sys_mode_delay.MODE_CLEAR~q\ & (\WS2812_u1|sys_mode.MODE_CLEAR~q\ & \WS2812_u1|sys_mode_delay.MODE_CONTROL~q\)) # (!\WS2812_u1|sys_mode_delay.MODE_CLEAR~q\ & 
-- (!\WS2812_u1|sys_mode.MODE_CLEAR~q\ & !\WS2812_u1|sys_mode_delay.MODE_CONTROL~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|sys_mode_delay.MODE_CLEAR~q\,
	datab => \WS2812_u1|sys_mode.MODE_CLEAR~q\,
	datac => \WS2812_u1|ctrl_row\(0),
	datad => \WS2812_u1|sys_mode_delay.MODE_CONTROL~q\,
	combout => \WS2812_u1|ctrl_row~6_combout\);

-- Location: LCCOMB_X43_Y31_N22
\WS2812_u1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Add1~0_combout\ = (\WS2812_u1|ctrl_row\(0) & (\WS2812_u1|ctrl_row\(2) & ((!\WS2812_u1|ctrl_row\(1)) # (!\WS2812_u1|LessThan1~4_combout\)))) # (!\WS2812_u1|ctrl_row\(0) & (\WS2812_u1|ctrl_row\(2) $ (((!\WS2812_u1|LessThan1~4_combout\ & 
-- !\WS2812_u1|ctrl_row\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|ctrl_row\(0),
	datab => \WS2812_u1|LessThan1~4_combout\,
	datac => \WS2812_u1|ctrl_row\(1),
	datad => \WS2812_u1|ctrl_row\(2),
	combout => \WS2812_u1|Add1~0_combout\);

-- Location: LCCOMB_X43_Y31_N6
\WS2812_u1|ctrl_row~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|ctrl_row~5_combout\ = (!\WS2812_u1|WideOr0~combout\ & ((\WS2812_u1|ctrl_row~4_combout\ & (\WS2812_u1|Add1~0_combout\)) # (!\WS2812_u1|ctrl_row~4_combout\ & ((\WS2812_u1|ctrl_row\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|Add1~0_combout\,
	datab => \WS2812_u1|ctrl_row~4_combout\,
	datac => \WS2812_u1|ctrl_row\(2),
	datad => \WS2812_u1|WideOr0~combout\,
	combout => \WS2812_u1|ctrl_row~5_combout\);

-- Location: FF_X43_Y31_N7
\WS2812_u1|ctrl_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|ctrl_row~5_combout\,
	clrn => \rst_n~input_o\,
	ena => \WS2812_u1|sys_mode.MODE_CLEAR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|ctrl_row\(2));

-- Location: LCCOMB_X43_Y31_N24
\WS2812_u1|always1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|always1~8_combout\ = (\WS2812_u1|LessThan1~4_combout\ & (((\WS2812_u1|ctrl_row\(2)) # (!\WS2812_u1|ctrl_row\(0))) # (!\WS2812_u1|ctrl_row\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|ctrl_row\(1),
	datab => \WS2812_u1|LessThan1~4_combout\,
	datac => \WS2812_u1|ctrl_row\(0),
	datad => \WS2812_u1|ctrl_row\(2),
	combout => \WS2812_u1|always1~8_combout\);

-- Location: LCCOMB_X42_Y31_N16
\WS2812_u1|ctrl_row~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|ctrl_row~2_combout\ = (!\WS2812_u1|WideOr0~combout\ & (\WS2812_u1|ctrl_row\(0) $ (\WS2812_u1|ctrl_row\(1) $ (!\WS2812_u1|always1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|ctrl_row\(0),
	datab => \WS2812_u1|WideOr0~combout\,
	datac => \WS2812_u1|ctrl_row\(1),
	datad => \WS2812_u1|always1~8_combout\,
	combout => \WS2812_u1|ctrl_row~2_combout\);

-- Location: FF_X42_Y31_N17
\WS2812_u1|ctrl_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|ctrl_row~2_combout\,
	clrn => \rst_n~input_o\,
	ena => \WS2812_u1|ctrl_row[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|ctrl_row\(1));

-- Location: LCCOMB_X43_Y31_N30
\WS2812_u1|ctrl_row[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|ctrl_row[1]~3_combout\ = (!\WS2812_u1|ctrl_row\(1) & \WS2812_u1|ctrl_row\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WS2812_u1|ctrl_row\(1),
	datad => \WS2812_u1|ctrl_row\(2),
	combout => \WS2812_u1|ctrl_row[1]~3_combout\);

-- Location: LCCOMB_X43_Y31_N16
\WS2812_u1|ctrl_row~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|ctrl_row~4_combout\ = (\WS2812_u1|move_pulse~q\ & ((\WS2812_u1|always1~8_combout\) # ((\WS2812_u1|LessThan0~3_combout\ & !\WS2812_u1|ctrl_row[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|LessThan0~3_combout\,
	datab => \WS2812_u1|move_pulse~q\,
	datac => \WS2812_u1|ctrl_row[1]~3_combout\,
	datad => \WS2812_u1|always1~8_combout\,
	combout => \WS2812_u1|ctrl_row~4_combout\);

-- Location: LCCOMB_X42_Y31_N30
\WS2812_u1|ctrl_row[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|ctrl_row[1]~7_combout\ = (\WS2812_u1|sys_mode.MODE_CLEAR~q\ & (((\WS2812_u1|ctrl_row~4_combout\) # (!\WS2812_u1|sys_mode_delay.MODE_CONTROL~q\)) # (!\WS2812_u1|sys_mode_delay.MODE_CLEAR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|sys_mode_delay.MODE_CLEAR~q\,
	datab => \WS2812_u1|sys_mode_delay.MODE_CONTROL~q\,
	datac => \WS2812_u1|sys_mode.MODE_CLEAR~q\,
	datad => \WS2812_u1|ctrl_row~4_combout\,
	combout => \WS2812_u1|ctrl_row[1]~7_combout\);

-- Location: FF_X42_Y31_N27
\WS2812_u1|ctrl_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|ctrl_row~6_combout\,
	clrn => \rst_n~input_o\,
	ena => \WS2812_u1|ctrl_row[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|ctrl_row\(0));

-- Location: LCCOMB_X43_Y31_N14
\WS2812_u1|draw_row[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|draw_row[0]~1_combout\ = !\WS2812_u1|ctrl_row\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WS2812_u1|ctrl_row\(0),
	combout => \WS2812_u1|draw_row[0]~1_combout\);

-- Location: LCCOMB_X44_Y31_N14
\WS2812_u1|draw_row[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|draw_row[0]~feeder_combout\ = \WS2812_u1|draw_row[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WS2812_u1|draw_row[0]~1_combout\,
	combout => \WS2812_u1|draw_row[0]~feeder_combout\);

-- Location: FF_X44_Y31_N15
\WS2812_u1|draw_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|draw_row[0]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \WS2812_u1|always1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|draw_row\(0));

-- Location: LCCOMB_X45_Y31_N26
\WS2812_u1|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Mux0~1_combout\ = (\WS2812_u1|draw_row\(0) & !\WS2812_u1|led_idx\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|draw_row\(0),
	datad => \WS2812_u1|led_idx\(3),
	combout => \WS2812_u1|Mux0~1_combout\);

-- Location: FF_X44_Y31_N21
\WS2812_u1|draw_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \WS2812_u1|ctrl_row\(2),
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \WS2812_u1|always1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|draw_row\(2));

-- Location: LCCOMB_X44_Y31_N20
\WS2812_u1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Mux0~0_combout\ = \WS2812_u1|led_idx\(5) $ (\WS2812_u1|draw_row\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WS2812_u1|led_idx\(5),
	datac => \WS2812_u1|draw_row\(2),
	combout => \WS2812_u1|Mux0~0_combout\);

-- Location: LCCOMB_X44_Y31_N18
\WS2812_u1|draw_row[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|draw_row[1]~0_combout\ = !\WS2812_u1|ctrl_row\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WS2812_u1|ctrl_row\(1),
	combout => \WS2812_u1|draw_row[1]~0_combout\);

-- Location: FF_X44_Y31_N19
\WS2812_u1|draw_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|draw_row[1]~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \WS2812_u1|always1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|draw_row\(1));

-- Location: LCCOMB_X45_Y31_N24
\WS2812_u1|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|Mux0~2_combout\ = (\WS2812_u1|Mux0~1_combout\ & ((\WS2812_u1|Mux0~0_combout\ & (!\WS2812_u1|led_idx\(4) & \WS2812_u1|draw_row\(1))) # (!\WS2812_u1|Mux0~0_combout\ & (\WS2812_u1|led_idx\(4) & !\WS2812_u1|draw_row\(1))))) # 
-- (!\WS2812_u1|Mux0~1_combout\ & (!\WS2812_u1|Mux0~0_combout\ & (\WS2812_u1|led_idx\(4) $ (!\WS2812_u1|draw_row\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|Mux0~1_combout\,
	datab => \WS2812_u1|Mux0~0_combout\,
	datac => \WS2812_u1|led_idx\(4),
	datad => \WS2812_u1|draw_row\(1),
	combout => \WS2812_u1|Mux0~2_combout\);

-- Location: LCCOMB_X45_Y31_N30
\WS2812_u1|DIN~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|DIN~0_combout\ = (\WS2812_u1|draw_mode.MODE_CONTROL~q\ & (\WS2812_u1|always2~2_combout\ & (\WS2812_u1|Mux0~3_combout\ & \WS2812_u1|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|draw_mode.MODE_CONTROL~q\,
	datab => \WS2812_u1|always2~2_combout\,
	datac => \WS2812_u1|Mux0~3_combout\,
	datad => \WS2812_u1|Mux0~2_combout\,
	combout => \WS2812_u1|DIN~0_combout\);

-- Location: LCCOMB_X43_Y30_N0
\WS2812_u1|DIN~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WS2812_u1|DIN~3_combout\ = (\WS2812_u1|LessThan11~2_combout\ & ((\WS2812_u1|DIN~2_combout\ & ((\WS2812_u1|DIN~0_combout\))) # (!\WS2812_u1|DIN~2_combout\ & (!\WS2812_u1|clk_cnt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WS2812_u1|DIN~2_combout\,
	datab => \WS2812_u1|clk_cnt\(5),
	datac => \WS2812_u1|DIN~0_combout\,
	datad => \WS2812_u1|LessThan11~2_combout\,
	combout => \WS2812_u1|DIN~3_combout\);

-- Location: FF_X43_Y30_N1
\WS2812_u1|DIN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WS2812_u1|DIN~3_combout\,
	clrn => \rst_n~input_o\,
	sclr => \WS2812_u1|ALT_INV_state.STATE_SEND~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WS2812_u1|DIN~q\);

-- Location: LCCOMB_X37_Y1_N26
\u_7seg|counter[0]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|counter[0]~30_combout\ = !\u_7seg|counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_7seg|counter\(0),
	combout => \u_7seg|counter[0]~30_combout\);

-- Location: FF_X37_Y1_N27
\u_7seg|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|counter[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|counter\(0));

-- Location: LCCOMB_X37_Y1_N4
\u_7seg|counter[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|counter[1]~10_combout\ = (\u_7seg|counter\(0) & (\u_7seg|counter\(1) $ (VCC))) # (!\u_7seg|counter\(0) & (\u_7seg|counter\(1) & VCC))
-- \u_7seg|counter[1]~11\ = CARRY((\u_7seg|counter\(0) & \u_7seg|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|counter\(0),
	datab => \u_7seg|counter\(1),
	datad => VCC,
	combout => \u_7seg|counter[1]~10_combout\,
	cout => \u_7seg|counter[1]~11\);

-- Location: FF_X37_Y1_N5
\u_7seg|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|counter[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|counter\(1));

-- Location: LCCOMB_X37_Y1_N6
\u_7seg|counter[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|counter[2]~12_combout\ = (\u_7seg|counter\(2) & (!\u_7seg|counter[1]~11\)) # (!\u_7seg|counter\(2) & ((\u_7seg|counter[1]~11\) # (GND)))
-- \u_7seg|counter[2]~13\ = CARRY((!\u_7seg|counter[1]~11\) # (!\u_7seg|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|counter\(2),
	datad => VCC,
	cin => \u_7seg|counter[1]~11\,
	combout => \u_7seg|counter[2]~12_combout\,
	cout => \u_7seg|counter[2]~13\);

-- Location: FF_X37_Y1_N7
\u_7seg|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|counter[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|counter\(2));

-- Location: LCCOMB_X37_Y1_N8
\u_7seg|counter[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|counter[3]~14_combout\ = (\u_7seg|counter\(3) & (\u_7seg|counter[2]~13\ $ (GND))) # (!\u_7seg|counter\(3) & (!\u_7seg|counter[2]~13\ & VCC))
-- \u_7seg|counter[3]~15\ = CARRY((\u_7seg|counter\(3) & !\u_7seg|counter[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_7seg|counter\(3),
	datad => VCC,
	cin => \u_7seg|counter[2]~13\,
	combout => \u_7seg|counter[3]~14_combout\,
	cout => \u_7seg|counter[3]~15\);

-- Location: FF_X37_Y1_N9
\u_7seg|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|counter[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|counter\(3));

-- Location: LCCOMB_X37_Y1_N10
\u_7seg|counter[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|counter[4]~16_combout\ = (\u_7seg|counter\(4) & (!\u_7seg|counter[3]~15\)) # (!\u_7seg|counter\(4) & ((\u_7seg|counter[3]~15\) # (GND)))
-- \u_7seg|counter[4]~17\ = CARRY((!\u_7seg|counter[3]~15\) # (!\u_7seg|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|counter\(4),
	datad => VCC,
	cin => \u_7seg|counter[3]~15\,
	combout => \u_7seg|counter[4]~16_combout\,
	cout => \u_7seg|counter[4]~17\);

-- Location: FF_X37_Y1_N11
\u_7seg|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|counter[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|counter\(4));

-- Location: LCCOMB_X37_Y1_N12
\u_7seg|counter[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|counter[5]~18_combout\ = (\u_7seg|counter\(5) & (\u_7seg|counter[4]~17\ $ (GND))) # (!\u_7seg|counter\(5) & (!\u_7seg|counter[4]~17\ & VCC))
-- \u_7seg|counter[5]~19\ = CARRY((\u_7seg|counter\(5) & !\u_7seg|counter[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|counter\(5),
	datad => VCC,
	cin => \u_7seg|counter[4]~17\,
	combout => \u_7seg|counter[5]~18_combout\,
	cout => \u_7seg|counter[5]~19\);

-- Location: FF_X37_Y1_N13
\u_7seg|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|counter[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|counter\(5));

-- Location: LCCOMB_X37_Y1_N14
\u_7seg|counter[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|counter[6]~20_combout\ = (\u_7seg|counter\(6) & (!\u_7seg|counter[5]~19\)) # (!\u_7seg|counter\(6) & ((\u_7seg|counter[5]~19\) # (GND)))
-- \u_7seg|counter[6]~21\ = CARRY((!\u_7seg|counter[5]~19\) # (!\u_7seg|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_7seg|counter\(6),
	datad => VCC,
	cin => \u_7seg|counter[5]~19\,
	combout => \u_7seg|counter[6]~20_combout\,
	cout => \u_7seg|counter[6]~21\);

-- Location: FF_X37_Y1_N15
\u_7seg|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|counter[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|counter\(6));

-- Location: LCCOMB_X37_Y1_N16
\u_7seg|counter[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|counter[7]~22_combout\ = (\u_7seg|counter\(7) & (\u_7seg|counter[6]~21\ $ (GND))) # (!\u_7seg|counter\(7) & (!\u_7seg|counter[6]~21\ & VCC))
-- \u_7seg|counter[7]~23\ = CARRY((\u_7seg|counter\(7) & !\u_7seg|counter[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_7seg|counter\(7),
	datad => VCC,
	cin => \u_7seg|counter[6]~21\,
	combout => \u_7seg|counter[7]~22_combout\,
	cout => \u_7seg|counter[7]~23\);

-- Location: FF_X37_Y1_N17
\u_7seg|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|counter[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|counter\(7));

-- Location: LCCOMB_X37_Y1_N18
\u_7seg|counter[8]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|counter[8]~24_combout\ = (\u_7seg|counter\(8) & (!\u_7seg|counter[7]~23\)) # (!\u_7seg|counter\(8) & ((\u_7seg|counter[7]~23\) # (GND)))
-- \u_7seg|counter[8]~25\ = CARRY((!\u_7seg|counter[7]~23\) # (!\u_7seg|counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_7seg|counter\(8),
	datad => VCC,
	cin => \u_7seg|counter[7]~23\,
	combout => \u_7seg|counter[8]~24_combout\,
	cout => \u_7seg|counter[8]~25\);

-- Location: FF_X37_Y1_N19
\u_7seg|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|counter[8]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|counter\(8));

-- Location: LCCOMB_X37_Y1_N20
\u_7seg|counter[9]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|counter[9]~26_combout\ = (\u_7seg|counter\(9) & (\u_7seg|counter[8]~25\ $ (GND))) # (!\u_7seg|counter\(9) & (!\u_7seg|counter[8]~25\ & VCC))
-- \u_7seg|counter[9]~27\ = CARRY((\u_7seg|counter\(9) & !\u_7seg|counter[8]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_7seg|counter\(9),
	datad => VCC,
	cin => \u_7seg|counter[8]~25\,
	combout => \u_7seg|counter[9]~26_combout\,
	cout => \u_7seg|counter[9]~27\);

-- Location: FF_X37_Y1_N21
\u_7seg|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|counter[9]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|counter\(9));

-- Location: LCCOMB_X37_Y1_N22
\u_7seg|counter[10]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|counter[10]~28_combout\ = \u_7seg|counter[9]~27\ $ (\u_7seg|counter\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_7seg|counter\(10),
	cin => \u_7seg|counter[9]~27\,
	combout => \u_7seg|counter[10]~28_combout\);

-- Location: FF_X37_Y1_N23
\u_7seg|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|counter[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|counter\(10));

-- Location: CLKCTRL_G15
\u_7seg|counter[10]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u_7seg|counter[10]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u_7seg|counter[10]~clkctrl_outclk\);

-- Location: LCCOMB_X51_Y35_N10
\u_7seg|seg_com_num[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|seg_com_num[0]~2_combout\ = !\u_7seg|seg_com_num\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_7seg|seg_com_num\(0),
	combout => \u_7seg|seg_com_num[0]~2_combout\);

-- Location: FF_X51_Y35_N11
\u_7seg|seg_com_num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_7seg|counter[10]~clkctrl_outclk\,
	d => \u_7seg|seg_com_num[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_num\(0));

-- Location: LCCOMB_X51_Y34_N26
\u_7seg|btn_z_r1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|btn_z_r1~feeder_combout\ = \u_btn|sw_pressed~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_btn|sw_pressed~q\,
	combout => \u_7seg|btn_z_r1~feeder_combout\);

-- Location: FF_X51_Y34_N27
\u_7seg|btn_z_r1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|btn_z_r1~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|btn_z_r1~q\);

-- Location: FF_X51_Y34_N5
\u_7seg|btn_z_r2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_7seg|btn_z_r1~q\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|btn_z_r2~q\);

-- Location: LCCOMB_X51_Y34_N4
\u_7seg|display_mode~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|display_mode~0_combout\ = \u_7seg|display_mode~q\ $ (((\u_7seg|btn_z_r1~q\ & !\u_7seg|btn_z_r2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|btn_z_r1~q\,
	datac => \u_7seg|btn_z_r2~q\,
	datad => \u_7seg|display_mode~q\,
	combout => \u_7seg|display_mode~0_combout\);

-- Location: FF_X43_Y34_N25
\u_7seg|display_mode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_7seg|display_mode~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|display_mode~q\);

-- Location: FF_X51_Y35_N31
\u_7seg|seg_com_data[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_7seg|display_mode~q\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[7][0]~q\);

-- Location: LCCOMB_X51_Y35_N12
\u_7seg|seg_com_data[0][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|seg_com_data[0][7]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u_7seg|seg_com_data[0][7]~feeder_combout\);

-- Location: FF_X51_Y35_N13
\u_7seg|seg_com_data[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|seg_com_data[0][7]~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[0][7]~q\);

-- Location: LCCOMB_X51_Y35_N30
\u_7seg|Mux42~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux42~4_combout\ = (\u_7seg|seg_com_num\(0) & (!\u_7seg|seg_com_data[7][0]~q\)) # (!\u_7seg|seg_com_num\(0) & ((!\u_7seg|seg_com_data[0][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_num\(0),
	datac => \u_7seg|seg_com_data[7][0]~q\,
	datad => \u_7seg|seg_com_data[0][7]~q\,
	combout => \u_7seg|Mux42~4_combout\);

-- Location: LCCOMB_X50_Y35_N12
\u_7seg|seg_com_num[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|seg_com_num[1]~1_combout\ = \u_7seg|seg_com_num\(0) $ (\u_7seg|seg_com_num\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_7seg|seg_com_num\(0),
	datac => \u_7seg|seg_com_num\(1),
	combout => \u_7seg|seg_com_num[1]~1_combout\);

-- Location: FF_X50_Y35_N13
\u_7seg|seg_com_num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_7seg|counter[10]~clkctrl_outclk\,
	d => \u_7seg|seg_com_num[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_num\(1));

-- Location: LCCOMB_X51_Y35_N18
\u_7seg|seg_com_num[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|seg_com_num[2]~0_combout\ = \u_7seg|seg_com_num\(2) $ (((\u_7seg|seg_com_num\(0) & \u_7seg|seg_com_num\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_num\(0),
	datac => \u_7seg|seg_com_num\(2),
	datad => \u_7seg|seg_com_num\(1),
	combout => \u_7seg|seg_com_num[2]~0_combout\);

-- Location: FF_X51_Y35_N19
\u_7seg|seg_com_num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_7seg|counter[10]~clkctrl_outclk\,
	d => \u_7seg|seg_com_num[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_num\(2));

-- Location: LCCOMB_X43_Y34_N6
\u_7seg|current_val[14]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|current_val[14]~2_combout\ = (\u_7seg|display_mode~q\ & ((!\u_adc|joystick_y\(14)))) # (!\u_7seg|display_mode~q\ & (!\u_adc|joystick_x\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|joystick_x\(14),
	datac => \u_7seg|display_mode~q\,
	datad => \u_adc|joystick_y\(14),
	combout => \u_7seg|current_val[14]~2_combout\);

-- Location: LCCOMB_X44_Y34_N28
\u_7seg|bcd~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~2_combout\ = (\u_7seg|display_mode~q\ & (((\u_adc|joystick_y\(15))))) # (!\u_7seg|display_mode~q\ & (\u_adc|joystick_x\(13) & (\u_adc|joystick_x\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|joystick_x\(13),
	datab => \u_adc|joystick_x\(15),
	datac => \u_adc|joystick_y\(15),
	datad => \u_7seg|display_mode~q\,
	combout => \u_7seg|bcd~2_combout\);

-- Location: LCCOMB_X43_Y34_N26
\u_7seg|bcd~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~3_combout\ = (!\u_7seg|current_val[14]~2_combout\ & (\u_7seg|bcd~2_combout\ & ((\u_adc|joystick_y\(13)) # (!\u_7seg|display_mode~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|joystick_y\(13),
	datab => \u_7seg|current_val[14]~2_combout\,
	datac => \u_7seg|display_mode~q\,
	datad => \u_7seg|bcd~2_combout\,
	combout => \u_7seg|bcd~3_combout\);

-- Location: LCCOMB_X44_Y34_N10
\u_7seg|current_val[13]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|current_val[13]~1_combout\ = (\u_7seg|display_mode~q\ & ((!\u_adc|joystick_y\(13)))) # (!\u_7seg|display_mode~q\ & (!\u_adc|joystick_x\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|joystick_x\(13),
	datac => \u_adc|joystick_y\(13),
	datad => \u_7seg|display_mode~q\,
	combout => \u_7seg|current_val[13]~1_combout\);

-- Location: LCCOMB_X43_Y34_N24
\u_7seg|current_val[15]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|current_val[15]~0_combout\ = (\u_7seg|display_mode~q\ & ((\u_adc|joystick_y\(15)))) # (!\u_7seg|display_mode~q\ & (\u_adc|joystick_x\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|joystick_x\(15),
	datac => \u_7seg|display_mode~q\,
	datad => \u_adc|joystick_y\(15),
	combout => \u_7seg|current_val[15]~0_combout\);

-- Location: LCCOMB_X44_Y34_N4
\u_7seg|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|LessThan0~0_combout\ = (\u_7seg|current_val[15]~0_combout\ & ((\u_7seg|current_val[13]~1_combout\) # (\u_7seg|current_val[14]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|current_val[13]~1_combout\,
	datab => \u_7seg|current_val[15]~0_combout\,
	datad => \u_7seg|current_val[14]~2_combout\,
	combout => \u_7seg|LessThan0~0_combout\);

-- Location: LCCOMB_X43_Y34_N28
\u_7seg|current_val[12]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|current_val[12]~3_combout\ = (\u_7seg|display_mode~q\ & (!\u_adc|joystick_y\(12))) # (!\u_7seg|display_mode~q\ & ((!\u_adc|joystick_x\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|display_mode~q\,
	datac => \u_adc|joystick_y\(12),
	datad => \u_adc|joystick_x\(12),
	combout => \u_7seg|current_val[12]~3_combout\);

-- Location: LCCOMB_X43_Y34_N0
\u_7seg|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|LessThan1~0_combout\ = ((\u_7seg|current_val[15]~0_combout\ & ((!\u_7seg|current_val[12]~3_combout\) # (!\u_7seg|current_val[13]~1_combout\))) # (!\u_7seg|current_val[15]~0_combout\ & (!\u_7seg|current_val[13]~1_combout\ & 
-- !\u_7seg|current_val[12]~3_combout\))) # (!\u_7seg|current_val[14]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|current_val[14]~2_combout\,
	datab => \u_7seg|current_val[15]~0_combout\,
	datac => \u_7seg|current_val[13]~1_combout\,
	datad => \u_7seg|current_val[12]~3_combout\,
	combout => \u_7seg|LessThan1~0_combout\);

-- Location: LCCOMB_X41_Y34_N30
\u_7seg|current_val[11]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|current_val[11]~4_combout\ = (\u_7seg|display_mode~q\ & ((!\u_adc|joystick_y\(11)))) # (!\u_7seg|display_mode~q\ & (!\u_adc|joystick_x\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|joystick_x\(11),
	datac => \u_7seg|display_mode~q\,
	datad => \u_adc|joystick_y\(11),
	combout => \u_7seg|current_val[11]~4_combout\);

-- Location: LCCOMB_X43_Y34_N18
\u_7seg|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Add1~0_combout\ = (\u_7seg|current_val[12]~3_combout\ & (((\u_7seg|current_val[15]~0_combout\ & !\u_7seg|current_val[13]~1_combout\)) # (!\u_7seg|current_val[14]~2_combout\))) # (!\u_7seg|current_val[12]~3_combout\ & 
-- (\u_7seg|current_val[14]~2_combout\ $ (((!\u_7seg|current_val[15]~0_combout\ & \u_7seg|current_val[13]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|current_val[14]~2_combout\,
	datab => \u_7seg|current_val[15]~0_combout\,
	datac => \u_7seg|current_val[13]~1_combout\,
	datad => \u_7seg|current_val[12]~3_combout\,
	combout => \u_7seg|Add1~0_combout\);

-- Location: LCCOMB_X43_Y34_N22
\u_7seg|bcd~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~7_combout\ = (\u_7seg|current_val[14]~2_combout\ & ((\u_7seg|current_val[13]~1_combout\) # (!\u_7seg|current_val[15]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|current_val[14]~2_combout\,
	datab => \u_7seg|current_val[13]~1_combout\,
	datad => \u_7seg|current_val[15]~0_combout\,
	combout => \u_7seg|bcd~7_combout\);

-- Location: LCCOMB_X43_Y34_N8
\u_7seg|bcd~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~8_combout\ = (\u_7seg|bcd~3_combout\ & (\u_7seg|Add1~0_combout\)) # (!\u_7seg|bcd~3_combout\ & ((\u_7seg|LessThan1~0_combout\ & ((\u_7seg|bcd~7_combout\))) # (!\u_7seg|LessThan1~0_combout\ & (\u_7seg|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~3_combout\,
	datab => \u_7seg|Add1~0_combout\,
	datac => \u_7seg|bcd~7_combout\,
	datad => \u_7seg|LessThan1~0_combout\,
	combout => \u_7seg|bcd~8_combout\);

-- Location: LCCOMB_X43_Y34_N14
\u_7seg|bcd~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~9_combout\ = \u_7seg|current_val[12]~3_combout\ $ (((!\u_7seg|bcd~3_combout\ & \u_7seg|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_7seg|current_val[12]~3_combout\,
	datac => \u_7seg|bcd~3_combout\,
	datad => \u_7seg|LessThan1~0_combout\,
	combout => \u_7seg|bcd~9_combout\);

-- Location: LCCOMB_X44_Y34_N16
\u_7seg|bcd~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~5_combout\ = (\u_7seg|current_val[13]~1_combout\ & ((!\u_7seg|current_val[15]~0_combout\))) # (!\u_7seg|current_val[13]~1_combout\ & (\u_7seg|current_val[14]~2_combout\ & \u_7seg|current_val[15]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|current_val[13]~1_combout\,
	datac => \u_7seg|current_val[14]~2_combout\,
	datad => \u_7seg|current_val[15]~0_combout\,
	combout => \u_7seg|bcd~5_combout\);

-- Location: LCCOMB_X43_Y34_N16
\u_7seg|bcd~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~6_combout\ = \u_7seg|bcd~5_combout\ $ (((!\u_7seg|current_val[12]~3_combout\ & ((\u_7seg|bcd~3_combout\) # (!\u_7seg|LessThan1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|LessThan1~0_combout\,
	datab => \u_7seg|current_val[12]~3_combout\,
	datac => \u_7seg|bcd~3_combout\,
	datad => \u_7seg|bcd~5_combout\,
	combout => \u_7seg|bcd~6_combout\);

-- Location: LCCOMB_X45_Y34_N16
\u_7seg|bcd~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~10_combout\ = \u_7seg|bcd~8_combout\ $ ((((!\u_7seg|current_val[11]~4_combout\ & \u_7seg|bcd~9_combout\)) # (!\u_7seg|bcd~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|current_val[11]~4_combout\,
	datab => \u_7seg|bcd~8_combout\,
	datac => \u_7seg|bcd~9_combout\,
	datad => \u_7seg|bcd~6_combout\,
	combout => \u_7seg|bcd~10_combout\);

-- Location: LCCOMB_X45_Y34_N6
\u_7seg|LessThan4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|LessThan4~2_combout\ = (\u_7seg|LessThan0~0_combout\ & ((\u_7seg|bcd~3_combout\ $ (!\u_7seg|LessThan1~0_combout\)) # (!\u_7seg|bcd~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~3_combout\,
	datab => \u_7seg|LessThan0~0_combout\,
	datac => \u_7seg|LessThan1~0_combout\,
	datad => \u_7seg|bcd~10_combout\,
	combout => \u_7seg|LessThan4~2_combout\);

-- Location: LCCOMB_X43_Y34_N30
\u_7seg|bcd~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~12_combout\ = (\u_7seg|bcd~6_combout\ & (!\u_7seg|current_val[11]~4_combout\ & (\u_7seg|bcd~9_combout\))) # (!\u_7seg|bcd~6_combout\ & (\u_7seg|bcd~8_combout\ & ((\u_7seg|current_val[11]~4_combout\) # (!\u_7seg|bcd~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|current_val[11]~4_combout\,
	datab => \u_7seg|bcd~9_combout\,
	datac => \u_7seg|bcd~8_combout\,
	datad => \u_7seg|bcd~6_combout\,
	combout => \u_7seg|bcd~12_combout\);

-- Location: LCCOMB_X41_Y34_N8
\u_7seg|current_val[10]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|current_val[10]~5_combout\ = (\u_7seg|display_mode~q\ & ((!\u_adc|joystick_y\(10)))) # (!\u_7seg|display_mode~q\ & (!\u_adc|joystick_x\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|joystick_x\(10),
	datac => \u_7seg|display_mode~q\,
	datad => \u_adc|joystick_y\(10),
	combout => \u_7seg|current_val[10]~5_combout\);

-- Location: LCCOMB_X43_Y34_N4
\u_7seg|bcd~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~13_combout\ = (\u_7seg|current_val[11]~4_combout\ & (((\u_7seg|bcd~8_combout\) # (\u_7seg|bcd~6_combout\)))) # (!\u_7seg|current_val[11]~4_combout\ & (!\u_7seg|bcd~8_combout\ & ((\u_7seg|bcd~9_combout\) # (!\u_7seg|bcd~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|current_val[11]~4_combout\,
	datab => \u_7seg|bcd~9_combout\,
	datac => \u_7seg|bcd~8_combout\,
	datad => \u_7seg|bcd~6_combout\,
	combout => \u_7seg|bcd~13_combout\);

-- Location: LCCOMB_X43_Y34_N20
\u_7seg|bcd~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~11_combout\ = (\u_7seg|current_val[11]~4_combout\ & (!\u_7seg|bcd~9_combout\)) # (!\u_7seg|current_val[11]~4_combout\ & ((\u_7seg|bcd~9_combout\ & (\u_7seg|bcd~8_combout\)) # (!\u_7seg|bcd~9_combout\ & (!\u_7seg|bcd~8_combout\ & 
-- !\u_7seg|bcd~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|current_val[11]~4_combout\,
	datab => \u_7seg|bcd~9_combout\,
	datac => \u_7seg|bcd~8_combout\,
	datad => \u_7seg|bcd~6_combout\,
	combout => \u_7seg|bcd~11_combout\);

-- Location: LCCOMB_X43_Y34_N2
\u_7seg|bcd~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~14_combout\ = \u_7seg|bcd~12_combout\ $ ((((!\u_7seg|current_val[10]~5_combout\ & \u_7seg|bcd~13_combout\)) # (!\u_7seg|bcd~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~12_combout\,
	datab => \u_7seg|current_val[10]~5_combout\,
	datac => \u_7seg|bcd~13_combout\,
	datad => \u_7seg|bcd~11_combout\,
	combout => \u_7seg|bcd~14_combout\);

-- Location: LCCOMB_X46_Y34_N20
\u_7seg|bcd~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~4_combout\ = \u_7seg|LessThan1~0_combout\ $ (!\u_7seg|bcd~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_7seg|LessThan1~0_combout\,
	datad => \u_7seg|bcd~3_combout\,
	combout => \u_7seg|bcd~4_combout\);

-- Location: LCCOMB_X46_Y34_N22
\u_7seg|bcd~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~23_combout\ = (\u_7seg|LessThan0~0_combout\ & ((\u_7seg|bcd~10_combout\ & ((\u_7seg|bcd~4_combout\))) # (!\u_7seg|bcd~10_combout\ & ((\u_7seg|bcd~14_combout\) # (!\u_7seg|bcd~4_combout\))))) # (!\u_7seg|LessThan0~0_combout\ & 
-- (((\u_7seg|bcd~14_combout\ & \u_7seg|bcd~10_combout\)) # (!\u_7seg|bcd~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~14_combout\,
	datab => \u_7seg|LessThan0~0_combout\,
	datac => \u_7seg|bcd~10_combout\,
	datad => \u_7seg|bcd~4_combout\,
	combout => \u_7seg|bcd~23_combout\);

-- Location: LCCOMB_X45_Y34_N26
\u_7seg|bcd~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~15_combout\ = (\u_7seg|LessThan0~0_combout\ & (\u_7seg|bcd~10_combout\ & ((\u_7seg|bcd~4_combout\) # (\u_7seg|bcd~14_combout\)))) # (!\u_7seg|LessThan0~0_combout\ & (!\u_7seg|bcd~10_combout\ & ((!\u_7seg|bcd~14_combout\) # 
-- (!\u_7seg|bcd~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~4_combout\,
	datab => \u_7seg|LessThan0~0_combout\,
	datac => \u_7seg|bcd~14_combout\,
	datad => \u_7seg|bcd~10_combout\,
	combout => \u_7seg|bcd~15_combout\);

-- Location: LCCOMB_X45_Y34_N4
\u_7seg|bcd~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~16_combout\ = (\u_7seg|bcd~4_combout\ & ((\u_7seg|LessThan0~0_combout\ & (!\u_7seg|bcd~14_combout\ & \u_7seg|bcd~10_combout\)) # (!\u_7seg|LessThan0~0_combout\ & (\u_7seg|bcd~14_combout\ & !\u_7seg|bcd~10_combout\)))) # 
-- (!\u_7seg|bcd~4_combout\ & (\u_7seg|bcd~14_combout\ $ (((!\u_7seg|bcd~10_combout\) # (!\u_7seg|LessThan0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~4_combout\,
	datab => \u_7seg|LessThan0~0_combout\,
	datac => \u_7seg|bcd~14_combout\,
	datad => \u_7seg|bcd~10_combout\,
	combout => \u_7seg|bcd~16_combout\);

-- Location: LCCOMB_X45_Y34_N30
\u_7seg|bcd~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~17_combout\ = (\u_7seg|bcd~4_combout\ & (\u_7seg|bcd~14_combout\ & (\u_7seg|LessThan0~0_combout\ $ (\u_7seg|bcd~10_combout\)))) # (!\u_7seg|bcd~4_combout\ & (\u_7seg|LessThan0~0_combout\ & (!\u_7seg|bcd~14_combout\ & \u_7seg|bcd~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~4_combout\,
	datab => \u_7seg|LessThan0~0_combout\,
	datac => \u_7seg|bcd~14_combout\,
	datad => \u_7seg|bcd~10_combout\,
	combout => \u_7seg|bcd~17_combout\);

-- Location: LCCOMB_X41_Y34_N14
\u_7seg|current_val[9]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|current_val[9]~6_combout\ = (\u_7seg|display_mode~q\ & ((!\u_adc|joystick_y\(9)))) # (!\u_7seg|display_mode~q\ & (!\u_adc|joystick_x\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|joystick_x\(9),
	datac => \u_7seg|display_mode~q\,
	datad => \u_adc|joystick_y\(9),
	combout => \u_7seg|current_val[9]~6_combout\);

-- Location: LCCOMB_X43_Y34_N10
\u_7seg|bcd~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~20_combout\ = (\u_7seg|current_val[10]~5_combout\ & (((\u_7seg|bcd~12_combout\) # (\u_7seg|bcd~11_combout\)))) # (!\u_7seg|current_val[10]~5_combout\ & (!\u_7seg|bcd~12_combout\ & ((\u_7seg|bcd~13_combout\) # (!\u_7seg|bcd~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|current_val[10]~5_combout\,
	datab => \u_7seg|bcd~13_combout\,
	datac => \u_7seg|bcd~12_combout\,
	datad => \u_7seg|bcd~11_combout\,
	combout => \u_7seg|bcd~20_combout\);

-- Location: LCCOMB_X43_Y34_N12
\u_7seg|bcd~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~18_combout\ = (\u_7seg|current_val[10]~5_combout\ & (!\u_7seg|bcd~13_combout\)) # (!\u_7seg|current_val[10]~5_combout\ & ((\u_7seg|bcd~13_combout\ & (\u_7seg|bcd~12_combout\)) # (!\u_7seg|bcd~13_combout\ & (!\u_7seg|bcd~12_combout\ & 
-- !\u_7seg|bcd~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|current_val[10]~5_combout\,
	datab => \u_7seg|bcd~13_combout\,
	datac => \u_7seg|bcd~12_combout\,
	datad => \u_7seg|bcd~11_combout\,
	combout => \u_7seg|bcd~18_combout\);

-- Location: LCCOMB_X42_Y34_N16
\u_7seg|bcd~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~19_combout\ = (\u_7seg|bcd~11_combout\ & (!\u_7seg|current_val[10]~5_combout\ & ((\u_7seg|bcd~13_combout\)))) # (!\u_7seg|bcd~11_combout\ & (\u_7seg|bcd~12_combout\ & ((\u_7seg|current_val[10]~5_combout\) # (!\u_7seg|bcd~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~11_combout\,
	datab => \u_7seg|current_val[10]~5_combout\,
	datac => \u_7seg|bcd~12_combout\,
	datad => \u_7seg|bcd~13_combout\,
	combout => \u_7seg|bcd~19_combout\);

-- Location: LCCOMB_X45_Y34_N0
\u_7seg|bcd~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~21_combout\ = \u_7seg|bcd~19_combout\ $ ((((!\u_7seg|current_val[9]~6_combout\ & \u_7seg|bcd~20_combout\)) # (!\u_7seg|bcd~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|current_val[9]~6_combout\,
	datab => \u_7seg|bcd~20_combout\,
	datac => \u_7seg|bcd~18_combout\,
	datad => \u_7seg|bcd~19_combout\,
	combout => \u_7seg|bcd~21_combout\);

-- Location: LCCOMB_X45_Y34_N18
\u_7seg|bcd~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~22_combout\ = \u_7seg|bcd~17_combout\ $ ((((!\u_7seg|bcd~16_combout\ & \u_7seg|bcd~21_combout\)) # (!\u_7seg|bcd~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~15_combout\,
	datab => \u_7seg|bcd~16_combout\,
	datac => \u_7seg|bcd~17_combout\,
	datad => \u_7seg|bcd~21_combout\,
	combout => \u_7seg|bcd~22_combout\);

-- Location: LCCOMB_X51_Y34_N20
\u_7seg|LessThan11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|LessThan11~0_combout\ = (\u_7seg|LessThan4~2_combout\ & ((!\u_7seg|bcd~22_combout\) # (!\u_7seg|bcd~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_7seg|LessThan4~2_combout\,
	datac => \u_7seg|bcd~23_combout\,
	datad => \u_7seg|bcd~22_combout\,
	combout => \u_7seg|LessThan11~0_combout\);

-- Location: LCCOMB_X45_Y34_N8
\u_7seg|bcd~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~33_combout\ = (!\u_7seg|bcd~23_combout\ & ((!\u_7seg|bcd~22_combout\) # (!\u_7seg|LessThan4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|LessThan4~2_combout\,
	datac => \u_7seg|bcd~23_combout\,
	datad => \u_7seg|bcd~22_combout\,
	combout => \u_7seg|bcd~33_combout\);

-- Location: LCCOMB_X46_Y34_N28
\u_7seg|bcd~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~24_combout\ = (\u_7seg|LessThan4~2_combout\ & (\u_7seg|bcd~23_combout\ & \u_7seg|bcd~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_7seg|LessThan4~2_combout\,
	datac => \u_7seg|bcd~23_combout\,
	datad => \u_7seg|bcd~22_combout\,
	combout => \u_7seg|bcd~24_combout\);

-- Location: LCCOMB_X45_Y34_N14
\u_7seg|bcd~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~34_combout\ = (\u_7seg|LessThan4~2_combout\ & (!\u_7seg|bcd~23_combout\ & \u_7seg|bcd~22_combout\)) # (!\u_7seg|LessThan4~2_combout\ & ((!\u_7seg|bcd~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|LessThan4~2_combout\,
	datac => \u_7seg|bcd~23_combout\,
	datad => \u_7seg|bcd~22_combout\,
	combout => \u_7seg|bcd~34_combout\);

-- Location: LCCOMB_X45_Y34_N12
\u_7seg|bcd~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~27_combout\ = (\u_7seg|bcd~15_combout\ & (((!\u_7seg|bcd~16_combout\ & \u_7seg|bcd~21_combout\)))) # (!\u_7seg|bcd~15_combout\ & (\u_7seg|bcd~17_combout\ & ((\u_7seg|bcd~16_combout\) # (!\u_7seg|bcd~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~15_combout\,
	datab => \u_7seg|bcd~17_combout\,
	datac => \u_7seg|bcd~16_combout\,
	datad => \u_7seg|bcd~21_combout\,
	combout => \u_7seg|bcd~27_combout\);

-- Location: LCCOMB_X45_Y34_N28
\u_7seg|bcd~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~25_combout\ = (\u_7seg|bcd~17_combout\ & (\u_7seg|bcd~16_combout\ $ (((\u_7seg|bcd~21_combout\))))) # (!\u_7seg|bcd~17_combout\ & (\u_7seg|bcd~16_combout\ & ((!\u_7seg|bcd~21_combout\) # (!\u_7seg|bcd~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~17_combout\,
	datab => \u_7seg|bcd~16_combout\,
	datac => \u_7seg|bcd~15_combout\,
	datad => \u_7seg|bcd~21_combout\,
	combout => \u_7seg|bcd~25_combout\);

-- Location: LCCOMB_X45_Y34_N22
\u_7seg|bcd~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~26_combout\ = (\u_7seg|bcd~17_combout\ & (((\u_7seg|bcd~21_combout\)))) # (!\u_7seg|bcd~17_combout\ & ((\u_7seg|bcd~15_combout\ & (\u_7seg|bcd~16_combout\ & \u_7seg|bcd~21_combout\)) # (!\u_7seg|bcd~15_combout\ & 
-- ((!\u_7seg|bcd~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~17_combout\,
	datab => \u_7seg|bcd~16_combout\,
	datac => \u_7seg|bcd~15_combout\,
	datad => \u_7seg|bcd~21_combout\,
	combout => \u_7seg|bcd~26_combout\);

-- Location: LCCOMB_X42_Y35_N12
\u_7seg|current_val[8]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|current_val[8]~7_combout\ = (\u_7seg|display_mode~q\ & (!\u_adc|joystick_y\(8))) # (!\u_7seg|display_mode~q\ & ((!\u_adc|joystick_x\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|joystick_y\(8),
	datab => \u_adc|joystick_x\(8),
	datad => \u_7seg|display_mode~q\,
	combout => \u_7seg|current_val[8]~7_combout\);

-- Location: LCCOMB_X42_Y34_N6
\u_7seg|bcd~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~28_combout\ = (\u_7seg|current_val[9]~6_combout\ & (((!\u_7seg|bcd~20_combout\)))) # (!\u_7seg|current_val[9]~6_combout\ & ((\u_7seg|bcd~20_combout\ & ((\u_7seg|bcd~19_combout\))) # (!\u_7seg|bcd~20_combout\ & (!\u_7seg|bcd~18_combout\ & 
-- !\u_7seg|bcd~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|current_val[9]~6_combout\,
	datab => \u_7seg|bcd~18_combout\,
	datac => \u_7seg|bcd~20_combout\,
	datad => \u_7seg|bcd~19_combout\,
	combout => \u_7seg|bcd~28_combout\);

-- Location: LCCOMB_X42_Y34_N20
\u_7seg|bcd~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~29_combout\ = (\u_7seg|bcd~18_combout\ & (!\u_7seg|current_val[9]~6_combout\ & (\u_7seg|bcd~20_combout\))) # (!\u_7seg|bcd~18_combout\ & (\u_7seg|bcd~19_combout\ & ((\u_7seg|current_val[9]~6_combout\) # (!\u_7seg|bcd~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|current_val[9]~6_combout\,
	datab => \u_7seg|bcd~18_combout\,
	datac => \u_7seg|bcd~20_combout\,
	datad => \u_7seg|bcd~19_combout\,
	combout => \u_7seg|bcd~29_combout\);

-- Location: LCCOMB_X42_Y34_N10
\u_7seg|bcd~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~30_combout\ = (\u_7seg|current_val[9]~6_combout\ & (((\u_7seg|bcd~18_combout\) # (\u_7seg|bcd~19_combout\)))) # (!\u_7seg|current_val[9]~6_combout\ & (!\u_7seg|bcd~19_combout\ & ((\u_7seg|bcd~20_combout\) # (!\u_7seg|bcd~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|current_val[9]~6_combout\,
	datab => \u_7seg|bcd~20_combout\,
	datac => \u_7seg|bcd~18_combout\,
	datad => \u_7seg|bcd~19_combout\,
	combout => \u_7seg|bcd~30_combout\);

-- Location: LCCOMB_X44_Y34_N22
\u_7seg|bcd~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~31_combout\ = \u_7seg|bcd~29_combout\ $ ((((!\u_7seg|current_val[8]~7_combout\ & \u_7seg|bcd~30_combout\)) # (!\u_7seg|bcd~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|current_val[8]~7_combout\,
	datab => \u_7seg|bcd~28_combout\,
	datac => \u_7seg|bcd~29_combout\,
	datad => \u_7seg|bcd~30_combout\,
	combout => \u_7seg|bcd~31_combout\);

-- Location: LCCOMB_X45_Y34_N2
\u_7seg|bcd~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~32_combout\ = \u_7seg|bcd~27_combout\ $ ((((!\u_7seg|bcd~26_combout\ & \u_7seg|bcd~31_combout\)) # (!\u_7seg|bcd~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~27_combout\,
	datab => \u_7seg|bcd~25_combout\,
	datac => \u_7seg|bcd~26_combout\,
	datad => \u_7seg|bcd~31_combout\,
	combout => \u_7seg|bcd~32_combout\);

-- Location: LCCOMB_X46_Y34_N14
\u_7seg|bcd~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~58_combout\ = \u_7seg|bcd~24_combout\ $ (((\u_7seg|bcd~33_combout\ & ((\u_7seg|bcd~34_combout\) # (!\u_7seg|bcd~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~33_combout\,
	datab => \u_7seg|bcd~24_combout\,
	datac => \u_7seg|bcd~34_combout\,
	datad => \u_7seg|bcd~32_combout\,
	combout => \u_7seg|bcd~58_combout\);

-- Location: LCCOMB_X49_Y34_N12
\u_7seg|bcd~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~37_combout\ = (\u_7seg|bcd~24_combout\ & (((\u_7seg|bcd~32_combout\)))) # (!\u_7seg|bcd~24_combout\ & ((\u_7seg|bcd~32_combout\ & (\u_7seg|bcd~34_combout\ & \u_7seg|bcd~33_combout\)) # (!\u_7seg|bcd~32_combout\ & 
-- ((!\u_7seg|bcd~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~24_combout\,
	datab => \u_7seg|bcd~34_combout\,
	datac => \u_7seg|bcd~32_combout\,
	datad => \u_7seg|bcd~33_combout\,
	combout => \u_7seg|bcd~37_combout\);

-- Location: LCCOMB_X45_Y34_N20
\u_7seg|bcd~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~35_combout\ = (\u_7seg|bcd~33_combout\ & (\u_7seg|bcd~32_combout\ & (!\u_7seg|bcd~34_combout\))) # (!\u_7seg|bcd~33_combout\ & (\u_7seg|bcd~24_combout\ & ((\u_7seg|bcd~34_combout\) # (!\u_7seg|bcd~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~33_combout\,
	datab => \u_7seg|bcd~32_combout\,
	datac => \u_7seg|bcd~34_combout\,
	datad => \u_7seg|bcd~24_combout\,
	combout => \u_7seg|bcd~35_combout\);

-- Location: LCCOMB_X41_Y34_N4
\u_7seg|current_val[7]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|current_val[7]~8_combout\ = (\u_7seg|display_mode~q\ & ((!\u_adc|joystick_y\(7)))) # (!\u_7seg|display_mode~q\ & (!\u_adc|joystick_x\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|joystick_x\(7),
	datac => \u_7seg|display_mode~q\,
	datad => \u_adc|joystick_y\(7),
	combout => \u_7seg|current_val[7]~8_combout\);

-- Location: LCCOMB_X42_Y34_N4
\u_7seg|bcd~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~41_combout\ = (\u_7seg|current_val[8]~7_combout\ & (((!\u_7seg|bcd~30_combout\)))) # (!\u_7seg|current_val[8]~7_combout\ & ((\u_7seg|bcd~29_combout\ & (\u_7seg|bcd~30_combout\)) # (!\u_7seg|bcd~29_combout\ & (!\u_7seg|bcd~30_combout\ & 
-- !\u_7seg|bcd~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|current_val[8]~7_combout\,
	datab => \u_7seg|bcd~29_combout\,
	datac => \u_7seg|bcd~30_combout\,
	datad => \u_7seg|bcd~28_combout\,
	combout => \u_7seg|bcd~41_combout\);

-- Location: LCCOMB_X42_Y34_N26
\u_7seg|bcd~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~42_combout\ = (\u_7seg|bcd~28_combout\ & (!\u_7seg|current_val[8]~7_combout\ & (\u_7seg|bcd~30_combout\))) # (!\u_7seg|bcd~28_combout\ & (\u_7seg|bcd~29_combout\ & ((\u_7seg|current_val[8]~7_combout\) # (!\u_7seg|bcd~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~28_combout\,
	datab => \u_7seg|current_val[8]~7_combout\,
	datac => \u_7seg|bcd~30_combout\,
	datad => \u_7seg|bcd~29_combout\,
	combout => \u_7seg|bcd~42_combout\);

-- Location: LCCOMB_X42_Y34_N24
\u_7seg|bcd~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~43_combout\ = (\u_7seg|bcd~29_combout\ & (((\u_7seg|current_val[8]~7_combout\)))) # (!\u_7seg|bcd~29_combout\ & ((\u_7seg|current_val[8]~7_combout\ & ((\u_7seg|bcd~28_combout\))) # (!\u_7seg|current_val[8]~7_combout\ & 
-- ((\u_7seg|bcd~30_combout\) # (!\u_7seg|bcd~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~30_combout\,
	datab => \u_7seg|bcd~29_combout\,
	datac => \u_7seg|current_val[8]~7_combout\,
	datad => \u_7seg|bcd~28_combout\,
	combout => \u_7seg|bcd~43_combout\);

-- Location: LCCOMB_X44_Y34_N26
\u_7seg|bcd~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~44_combout\ = \u_7seg|bcd~42_combout\ $ ((((!\u_7seg|current_val[7]~8_combout\ & \u_7seg|bcd~43_combout\)) # (!\u_7seg|bcd~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|current_val[7]~8_combout\,
	datab => \u_7seg|bcd~41_combout\,
	datac => \u_7seg|bcd~42_combout\,
	datad => \u_7seg|bcd~43_combout\,
	combout => \u_7seg|bcd~44_combout\);

-- Location: LCCOMB_X44_Y34_N14
\u_7seg|bcd~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~39_combout\ = (\u_7seg|bcd~31_combout\ & ((\u_7seg|bcd~27_combout\) # ((\u_7seg|bcd~26_combout\ & \u_7seg|bcd~25_combout\)))) # (!\u_7seg|bcd~31_combout\ & (((!\u_7seg|bcd~27_combout\ & !\u_7seg|bcd~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~31_combout\,
	datab => \u_7seg|bcd~26_combout\,
	datac => \u_7seg|bcd~27_combout\,
	datad => \u_7seg|bcd~25_combout\,
	combout => \u_7seg|bcd~39_combout\);

-- Location: LCCOMB_X44_Y34_N8
\u_7seg|bcd~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~38_combout\ = (\u_7seg|bcd~31_combout\ & ((\u_7seg|bcd~27_combout\ & ((!\u_7seg|bcd~26_combout\))) # (!\u_7seg|bcd~27_combout\ & (!\u_7seg|bcd~25_combout\ & \u_7seg|bcd~26_combout\)))) # (!\u_7seg|bcd~31_combout\ & 
-- (((\u_7seg|bcd~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~31_combout\,
	datab => \u_7seg|bcd~25_combout\,
	datac => \u_7seg|bcd~27_combout\,
	datad => \u_7seg|bcd~26_combout\,
	combout => \u_7seg|bcd~38_combout\);

-- Location: LCCOMB_X44_Y34_N20
\u_7seg|bcd~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~40_combout\ = (\u_7seg|bcd~25_combout\ & (\u_7seg|bcd~31_combout\ & (!\u_7seg|bcd~26_combout\))) # (!\u_7seg|bcd~25_combout\ & (\u_7seg|bcd~27_combout\ & ((\u_7seg|bcd~26_combout\) # (!\u_7seg|bcd~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~31_combout\,
	datab => \u_7seg|bcd~26_combout\,
	datac => \u_7seg|bcd~27_combout\,
	datad => \u_7seg|bcd~25_combout\,
	combout => \u_7seg|bcd~40_combout\);

-- Location: LCCOMB_X44_Y34_N24
\u_7seg|bcd~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~45_combout\ = \u_7seg|bcd~40_combout\ $ ((((\u_7seg|bcd~44_combout\ & !\u_7seg|bcd~39_combout\)) # (!\u_7seg|bcd~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~44_combout\,
	datab => \u_7seg|bcd~39_combout\,
	datac => \u_7seg|bcd~38_combout\,
	datad => \u_7seg|bcd~40_combout\,
	combout => \u_7seg|bcd~45_combout\);

-- Location: LCCOMB_X45_Y34_N10
\u_7seg|LessThan14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|LessThan14~0_combout\ = (!\u_7seg|bcd~24_combout\ & (((\u_7seg|bcd~32_combout\ & !\u_7seg|bcd~34_combout\)) # (!\u_7seg|bcd~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~33_combout\,
	datab => \u_7seg|bcd~32_combout\,
	datac => \u_7seg|bcd~34_combout\,
	datad => \u_7seg|bcd~24_combout\,
	combout => \u_7seg|LessThan14~0_combout\);

-- Location: LCCOMB_X45_Y34_N24
\u_7seg|bcd~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~36_combout\ = \u_7seg|bcd~34_combout\ $ (((\u_7seg|bcd~32_combout\ & !\u_7seg|LessThan14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_7seg|bcd~32_combout\,
	datac => \u_7seg|bcd~34_combout\,
	datad => \u_7seg|LessThan14~0_combout\,
	combout => \u_7seg|bcd~36_combout\);

-- Location: LCCOMB_X50_Y34_N4
\u_7seg|bcd~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~59_combout\ = \u_7seg|bcd~35_combout\ $ ((((!\u_7seg|bcd~37_combout\ & \u_7seg|bcd~45_combout\)) # (!\u_7seg|bcd~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~37_combout\,
	datab => \u_7seg|bcd~35_combout\,
	datac => \u_7seg|bcd~45_combout\,
	datad => \u_7seg|bcd~36_combout\,
	combout => \u_7seg|bcd~59_combout\);

-- Location: LCCOMB_X49_Y34_N8
\u_7seg|bcd~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~47_combout\ = (\u_7seg|bcd~45_combout\ & ((\u_7seg|bcd~35_combout\) # ((\u_7seg|bcd~37_combout\ & \u_7seg|bcd~36_combout\)))) # (!\u_7seg|bcd~45_combout\ & (((!\u_7seg|bcd~35_combout\ & !\u_7seg|bcd~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~37_combout\,
	datab => \u_7seg|bcd~45_combout\,
	datac => \u_7seg|bcd~35_combout\,
	datad => \u_7seg|bcd~36_combout\,
	combout => \u_7seg|bcd~47_combout\);

-- Location: LCCOMB_X42_Y34_N22
\u_7seg|bcd~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~54_combout\ = (\u_7seg|bcd~42_combout\ & (\u_7seg|current_val[7]~8_combout\)) # (!\u_7seg|bcd~42_combout\ & ((\u_7seg|current_val[7]~8_combout\ & (\u_7seg|bcd~41_combout\)) # (!\u_7seg|current_val[7]~8_combout\ & ((\u_7seg|bcd~43_combout\) # 
-- (!\u_7seg|bcd~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~42_combout\,
	datab => \u_7seg|current_val[7]~8_combout\,
	datac => \u_7seg|bcd~41_combout\,
	datad => \u_7seg|bcd~43_combout\,
	combout => \u_7seg|bcd~54_combout\);

-- Location: LCCOMB_X42_Y35_N30
\u_7seg|current_val[6]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|current_val[6]~9_combout\ = (\u_7seg|display_mode~q\ & (!\u_adc|joystick_y\(6))) # (!\u_7seg|display_mode~q\ & ((!\u_adc|joystick_x\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|display_mode~q\,
	datab => \u_adc|joystick_y\(6),
	datad => \u_adc|joystick_x\(6),
	combout => \u_7seg|current_val[6]~9_combout\);

-- Location: LCCOMB_X42_Y34_N12
\u_7seg|bcd~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~53_combout\ = (\u_7seg|bcd~41_combout\ & (((!\u_7seg|current_val[7]~8_combout\ & \u_7seg|bcd~43_combout\)))) # (!\u_7seg|bcd~41_combout\ & (\u_7seg|bcd~42_combout\ & ((\u_7seg|current_val[7]~8_combout\) # (!\u_7seg|bcd~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~42_combout\,
	datab => \u_7seg|current_val[7]~8_combout\,
	datac => \u_7seg|bcd~41_combout\,
	datad => \u_7seg|bcd~43_combout\,
	combout => \u_7seg|bcd~53_combout\);

-- Location: LCCOMB_X42_Y34_N14
\u_7seg|bcd~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~52_combout\ = (\u_7seg|current_val[7]~8_combout\ & (((!\u_7seg|bcd~43_combout\)))) # (!\u_7seg|current_val[7]~8_combout\ & ((\u_7seg|bcd~42_combout\ & ((\u_7seg|bcd~43_combout\))) # (!\u_7seg|bcd~42_combout\ & (!\u_7seg|bcd~41_combout\ & 
-- !\u_7seg|bcd~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|current_val[7]~8_combout\,
	datab => \u_7seg|bcd~41_combout\,
	datac => \u_7seg|bcd~42_combout\,
	datad => \u_7seg|bcd~43_combout\,
	combout => \u_7seg|bcd~52_combout\);

-- Location: LCCOMB_X48_Y34_N12
\u_7seg|bcd~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~55_combout\ = \u_7seg|bcd~53_combout\ $ ((((\u_7seg|bcd~54_combout\ & !\u_7seg|current_val[6]~9_combout\)) # (!\u_7seg|bcd~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~54_combout\,
	datab => \u_7seg|current_val[6]~9_combout\,
	datac => \u_7seg|bcd~53_combout\,
	datad => \u_7seg|bcd~52_combout\,
	combout => \u_7seg|bcd~55_combout\);

-- Location: LCCOMB_X44_Y34_N6
\u_7seg|bcd~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~51_combout\ = (\u_7seg|bcd~38_combout\ & (\u_7seg|bcd~44_combout\ & (!\u_7seg|bcd~39_combout\))) # (!\u_7seg|bcd~38_combout\ & (\u_7seg|bcd~40_combout\ & ((\u_7seg|bcd~39_combout\) # (!\u_7seg|bcd~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~44_combout\,
	datab => \u_7seg|bcd~38_combout\,
	datac => \u_7seg|bcd~39_combout\,
	datad => \u_7seg|bcd~40_combout\,
	combout => \u_7seg|bcd~51_combout\);

-- Location: LCCOMB_X44_Y34_N2
\u_7seg|bcd~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~49_combout\ = (\u_7seg|bcd~44_combout\ & ((\u_7seg|bcd~39_combout\ & (!\u_7seg|bcd~38_combout\ & !\u_7seg|bcd~40_combout\)) # (!\u_7seg|bcd~39_combout\ & ((\u_7seg|bcd~40_combout\))))) # (!\u_7seg|bcd~44_combout\ & 
-- (((\u_7seg|bcd~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~44_combout\,
	datab => \u_7seg|bcd~38_combout\,
	datac => \u_7seg|bcd~39_combout\,
	datad => \u_7seg|bcd~40_combout\,
	combout => \u_7seg|bcd~49_combout\);

-- Location: LCCOMB_X44_Y34_N0
\u_7seg|bcd~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~50_combout\ = (\u_7seg|bcd~44_combout\ & ((\u_7seg|bcd~40_combout\) # ((\u_7seg|bcd~38_combout\ & \u_7seg|bcd~39_combout\)))) # (!\u_7seg|bcd~44_combout\ & (!\u_7seg|bcd~38_combout\ & ((!\u_7seg|bcd~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~44_combout\,
	datab => \u_7seg|bcd~38_combout\,
	datac => \u_7seg|bcd~39_combout\,
	datad => \u_7seg|bcd~40_combout\,
	combout => \u_7seg|bcd~50_combout\);

-- Location: LCCOMB_X48_Y34_N6
\u_7seg|bcd~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~56_combout\ = \u_7seg|bcd~51_combout\ $ ((((\u_7seg|bcd~55_combout\ & !\u_7seg|bcd~50_combout\)) # (!\u_7seg|bcd~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~55_combout\,
	datab => \u_7seg|bcd~51_combout\,
	datac => \u_7seg|bcd~49_combout\,
	datad => \u_7seg|bcd~50_combout\,
	combout => \u_7seg|bcd~56_combout\);

-- Location: LCCOMB_X49_Y34_N26
\u_7seg|bcd~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~46_combout\ = (\u_7seg|bcd~35_combout\ & (\u_7seg|bcd~45_combout\ $ ((\u_7seg|bcd~37_combout\)))) # (!\u_7seg|bcd~35_combout\ & (\u_7seg|bcd~37_combout\ & ((!\u_7seg|bcd~36_combout\) # (!\u_7seg|bcd~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~35_combout\,
	datab => \u_7seg|bcd~45_combout\,
	datac => \u_7seg|bcd~37_combout\,
	datad => \u_7seg|bcd~36_combout\,
	combout => \u_7seg|bcd~46_combout\);

-- Location: LCCOMB_X49_Y34_N2
\u_7seg|bcd~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~48_combout\ = (\u_7seg|bcd~36_combout\ & (!\u_7seg|bcd~37_combout\ & (\u_7seg|bcd~45_combout\))) # (!\u_7seg|bcd~36_combout\ & (\u_7seg|bcd~35_combout\ & ((\u_7seg|bcd~37_combout\) # (!\u_7seg|bcd~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~37_combout\,
	datab => \u_7seg|bcd~45_combout\,
	datac => \u_7seg|bcd~35_combout\,
	datad => \u_7seg|bcd~36_combout\,
	combout => \u_7seg|bcd~48_combout\);

-- Location: LCCOMB_X50_Y34_N10
\u_7seg|bcd~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~57_combout\ = \u_7seg|bcd~48_combout\ $ ((((!\u_7seg|bcd~47_combout\ & \u_7seg|bcd~56_combout\)) # (!\u_7seg|bcd~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~47_combout\,
	datab => \u_7seg|bcd~56_combout\,
	datac => \u_7seg|bcd~46_combout\,
	datad => \u_7seg|bcd~48_combout\,
	combout => \u_7seg|bcd~57_combout\);

-- Location: LCCOMB_X50_Y34_N30
\u_7seg|bcd~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~60_combout\ = (\u_7seg|bcd~58_combout\ & (\u_7seg|bcd~57_combout\ & (\u_7seg|LessThan11~0_combout\ $ (\u_7seg|bcd~59_combout\)))) # (!\u_7seg|bcd~58_combout\ & (\u_7seg|LessThan11~0_combout\ & (\u_7seg|bcd~59_combout\ & 
-- !\u_7seg|bcd~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|LessThan11~0_combout\,
	datab => \u_7seg|bcd~58_combout\,
	datac => \u_7seg|bcd~59_combout\,
	datad => \u_7seg|bcd~57_combout\,
	combout => \u_7seg|bcd~60_combout\);

-- Location: LCCOMB_X50_Y34_N2
\u_7seg|bcd~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~62_combout\ = (\u_7seg|bcd~58_combout\ & ((\u_7seg|LessThan11~0_combout\ & (\u_7seg|bcd~59_combout\ & !\u_7seg|bcd~57_combout\)) # (!\u_7seg|LessThan11~0_combout\ & (!\u_7seg|bcd~59_combout\ & \u_7seg|bcd~57_combout\)))) # 
-- (!\u_7seg|bcd~58_combout\ & (\u_7seg|bcd~57_combout\ $ (((!\u_7seg|bcd~59_combout\) # (!\u_7seg|LessThan11~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|LessThan11~0_combout\,
	datab => \u_7seg|bcd~58_combout\,
	datac => \u_7seg|bcd~59_combout\,
	datad => \u_7seg|bcd~57_combout\,
	combout => \u_7seg|bcd~62_combout\);

-- Location: LCCOMB_X50_Y34_N8
\u_7seg|bcd~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~61_combout\ = (\u_7seg|LessThan11~0_combout\ & (\u_7seg|bcd~59_combout\ & ((\u_7seg|bcd~58_combout\) # (\u_7seg|bcd~57_combout\)))) # (!\u_7seg|LessThan11~0_combout\ & (!\u_7seg|bcd~59_combout\ & ((!\u_7seg|bcd~57_combout\) # 
-- (!\u_7seg|bcd~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|LessThan11~0_combout\,
	datab => \u_7seg|bcd~58_combout\,
	datac => \u_7seg|bcd~59_combout\,
	datad => \u_7seg|bcd~57_combout\,
	combout => \u_7seg|bcd~61_combout\);

-- Location: LCCOMB_X49_Y34_N10
\u_7seg|bcd~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~64_combout\ = (\u_7seg|bcd~46_combout\ & (\u_7seg|bcd~56_combout\ & ((\u_7seg|bcd~47_combout\) # (\u_7seg|bcd~48_combout\)))) # (!\u_7seg|bcd~46_combout\ & (\u_7seg|bcd~56_combout\ $ (((!\u_7seg|bcd~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~46_combout\,
	datab => \u_7seg|bcd~56_combout\,
	datac => \u_7seg|bcd~47_combout\,
	datad => \u_7seg|bcd~48_combout\,
	combout => \u_7seg|bcd~64_combout\);

-- Location: LCCOMB_X48_Y34_N22
\u_7seg|bcd~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~67_combout\ = (\u_7seg|bcd~55_combout\ & ((\u_7seg|bcd~51_combout\) # ((\u_7seg|bcd~49_combout\ & \u_7seg|bcd~50_combout\)))) # (!\u_7seg|bcd~55_combout\ & (!\u_7seg|bcd~51_combout\ & (!\u_7seg|bcd~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~55_combout\,
	datab => \u_7seg|bcd~51_combout\,
	datac => \u_7seg|bcd~49_combout\,
	datad => \u_7seg|bcd~50_combout\,
	combout => \u_7seg|bcd~67_combout\);

-- Location: LCCOMB_X42_Y34_N28
\u_7seg|bcd~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~69_combout\ = (\u_7seg|current_val[6]~9_combout\ & (((!\u_7seg|bcd~54_combout\)))) # (!\u_7seg|current_val[6]~9_combout\ & ((\u_7seg|bcd~54_combout\ & ((\u_7seg|bcd~53_combout\))) # (!\u_7seg|bcd~54_combout\ & (!\u_7seg|bcd~52_combout\ & 
-- !\u_7seg|bcd~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|current_val[6]~9_combout\,
	datab => \u_7seg|bcd~52_combout\,
	datac => \u_7seg|bcd~54_combout\,
	datad => \u_7seg|bcd~53_combout\,
	combout => \u_7seg|bcd~69_combout\);

-- Location: LCCOMB_X42_Y35_N4
\u_7seg|current_val[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|current_val[5]~10_combout\ = (\u_7seg|display_mode~q\ & ((!\u_adc|joystick_y\(5)))) # (!\u_7seg|display_mode~q\ & (!\u_adc|joystick_x\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|display_mode~q\,
	datab => \u_adc|joystick_x\(5),
	datad => \u_adc|joystick_y\(5),
	combout => \u_7seg|current_val[5]~10_combout\);

-- Location: LCCOMB_X42_Y34_N8
\u_7seg|bcd~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~71_combout\ = (\u_7seg|current_val[6]~9_combout\ & (((\u_7seg|bcd~52_combout\) # (\u_7seg|bcd~53_combout\)))) # (!\u_7seg|current_val[6]~9_combout\ & (!\u_7seg|bcd~53_combout\ & ((\u_7seg|bcd~54_combout\) # (!\u_7seg|bcd~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~54_combout\,
	datab => \u_7seg|current_val[6]~9_combout\,
	datac => \u_7seg|bcd~52_combout\,
	datad => \u_7seg|bcd~53_combout\,
	combout => \u_7seg|bcd~71_combout\);

-- Location: LCCOMB_X42_Y34_N30
\u_7seg|bcd~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~70_combout\ = (\u_7seg|bcd~52_combout\ & (\u_7seg|bcd~54_combout\ & (!\u_7seg|current_val[6]~9_combout\))) # (!\u_7seg|bcd~52_combout\ & (\u_7seg|bcd~53_combout\ & ((\u_7seg|current_val[6]~9_combout\) # (!\u_7seg|bcd~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~54_combout\,
	datab => \u_7seg|current_val[6]~9_combout\,
	datac => \u_7seg|bcd~52_combout\,
	datad => \u_7seg|bcd~53_combout\,
	combout => \u_7seg|bcd~70_combout\);

-- Location: LCCOMB_X48_Y34_N10
\u_7seg|bcd~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~72_combout\ = \u_7seg|bcd~70_combout\ $ ((((!\u_7seg|current_val[5]~10_combout\ & \u_7seg|bcd~71_combout\)) # (!\u_7seg|bcd~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~69_combout\,
	datab => \u_7seg|current_val[5]~10_combout\,
	datac => \u_7seg|bcd~71_combout\,
	datad => \u_7seg|bcd~70_combout\,
	combout => \u_7seg|bcd~72_combout\);

-- Location: LCCOMB_X48_Y34_N8
\u_7seg|bcd~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~68_combout\ = (\u_7seg|bcd~49_combout\ & (\u_7seg|bcd~55_combout\ & ((!\u_7seg|bcd~50_combout\)))) # (!\u_7seg|bcd~49_combout\ & (\u_7seg|bcd~51_combout\ & ((\u_7seg|bcd~50_combout\) # (!\u_7seg|bcd~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~55_combout\,
	datab => \u_7seg|bcd~51_combout\,
	datac => \u_7seg|bcd~49_combout\,
	datad => \u_7seg|bcd~50_combout\,
	combout => \u_7seg|bcd~68_combout\);

-- Location: LCCOMB_X48_Y34_N20
\u_7seg|bcd~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~66_combout\ = (\u_7seg|bcd~55_combout\ & ((\u_7seg|bcd~51_combout\ & ((!\u_7seg|bcd~50_combout\))) # (!\u_7seg|bcd~51_combout\ & (!\u_7seg|bcd~49_combout\ & \u_7seg|bcd~50_combout\)))) # (!\u_7seg|bcd~55_combout\ & 
-- (((\u_7seg|bcd~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~55_combout\,
	datab => \u_7seg|bcd~49_combout\,
	datac => \u_7seg|bcd~51_combout\,
	datad => \u_7seg|bcd~50_combout\,
	combout => \u_7seg|bcd~66_combout\);

-- Location: LCCOMB_X48_Y34_N16
\u_7seg|bcd~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~73_combout\ = \u_7seg|bcd~68_combout\ $ ((((!\u_7seg|bcd~67_combout\ & \u_7seg|bcd~72_combout\)) # (!\u_7seg|bcd~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~67_combout\,
	datab => \u_7seg|bcd~72_combout\,
	datac => \u_7seg|bcd~68_combout\,
	datad => \u_7seg|bcd~66_combout\,
	combout => \u_7seg|bcd~73_combout\);

-- Location: LCCOMB_X49_Y34_N16
\u_7seg|bcd~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~65_combout\ = (\u_7seg|bcd~46_combout\ & (\u_7seg|bcd~56_combout\ & (!\u_7seg|bcd~47_combout\))) # (!\u_7seg|bcd~46_combout\ & (\u_7seg|bcd~48_combout\ & ((\u_7seg|bcd~47_combout\) # (!\u_7seg|bcd~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~46_combout\,
	datab => \u_7seg|bcd~56_combout\,
	datac => \u_7seg|bcd~47_combout\,
	datad => \u_7seg|bcd~48_combout\,
	combout => \u_7seg|bcd~65_combout\);

-- Location: LCCOMB_X49_Y34_N24
\u_7seg|bcd~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~63_combout\ = (\u_7seg|bcd~56_combout\ & ((\u_7seg|bcd~47_combout\ & (!\u_7seg|bcd~46_combout\ & !\u_7seg|bcd~48_combout\)) # (!\u_7seg|bcd~47_combout\ & ((\u_7seg|bcd~48_combout\))))) # (!\u_7seg|bcd~56_combout\ & 
-- (((\u_7seg|bcd~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~46_combout\,
	datab => \u_7seg|bcd~56_combout\,
	datac => \u_7seg|bcd~47_combout\,
	datad => \u_7seg|bcd~48_combout\,
	combout => \u_7seg|bcd~63_combout\);

-- Location: LCCOMB_X50_Y34_N12
\u_7seg|bcd~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~74_combout\ = \u_7seg|bcd~65_combout\ $ ((((!\u_7seg|bcd~64_combout\ & \u_7seg|bcd~73_combout\)) # (!\u_7seg|bcd~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~64_combout\,
	datab => \u_7seg|bcd~73_combout\,
	datac => \u_7seg|bcd~65_combout\,
	datad => \u_7seg|bcd~63_combout\,
	combout => \u_7seg|bcd~74_combout\);

-- Location: LCCOMB_X50_Y34_N22
\u_7seg|bcd~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~75_combout\ = (\u_7seg|bcd~60_combout\ & (\u_7seg|bcd~62_combout\ $ (((\u_7seg|bcd~74_combout\))))) # (!\u_7seg|bcd~60_combout\ & (\u_7seg|bcd~62_combout\ & ((!\u_7seg|bcd~74_combout\) # (!\u_7seg|bcd~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~60_combout\,
	datab => \u_7seg|bcd~62_combout\,
	datac => \u_7seg|bcd~61_combout\,
	datad => \u_7seg|bcd~74_combout\,
	combout => \u_7seg|bcd~75_combout\);

-- Location: LCCOMB_X50_Y34_N28
\u_7seg|bcd~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~76_combout\ = (\u_7seg|bcd~60_combout\ & (((\u_7seg|bcd~74_combout\)))) # (!\u_7seg|bcd~60_combout\ & ((\u_7seg|bcd~61_combout\ & (\u_7seg|bcd~62_combout\ & \u_7seg|bcd~74_combout\)) # (!\u_7seg|bcd~61_combout\ & 
-- ((!\u_7seg|bcd~74_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~60_combout\,
	datab => \u_7seg|bcd~62_combout\,
	datac => \u_7seg|bcd~61_combout\,
	datad => \u_7seg|bcd~74_combout\,
	combout => \u_7seg|bcd~76_combout\);

-- Location: LCCOMB_X50_Y34_N26
\u_7seg|bcd~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~77_combout\ = (\u_7seg|bcd~61_combout\ & (((!\u_7seg|bcd~62_combout\ & \u_7seg|bcd~74_combout\)))) # (!\u_7seg|bcd~61_combout\ & (\u_7seg|bcd~60_combout\ & ((\u_7seg|bcd~62_combout\) # (!\u_7seg|bcd~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~60_combout\,
	datab => \u_7seg|bcd~62_combout\,
	datac => \u_7seg|bcd~61_combout\,
	datad => \u_7seg|bcd~74_combout\,
	combout => \u_7seg|bcd~77_combout\);

-- Location: LCCOMB_X48_Y34_N30
\u_7seg|bcd~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~81_combout\ = (\u_7seg|bcd~72_combout\ & ((\u_7seg|bcd~68_combout\ & (!\u_7seg|bcd~67_combout\)) # (!\u_7seg|bcd~68_combout\ & (\u_7seg|bcd~67_combout\ & !\u_7seg|bcd~66_combout\)))) # (!\u_7seg|bcd~72_combout\ & (((\u_7seg|bcd~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~72_combout\,
	datab => \u_7seg|bcd~68_combout\,
	datac => \u_7seg|bcd~67_combout\,
	datad => \u_7seg|bcd~66_combout\,
	combout => \u_7seg|bcd~81_combout\);

-- Location: LCCOMB_X42_Y34_N0
\u_7seg|bcd~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~85_combout\ = (\u_7seg|bcd~69_combout\ & (((!\u_7seg|current_val[5]~10_combout\ & \u_7seg|bcd~71_combout\)))) # (!\u_7seg|bcd~69_combout\ & (\u_7seg|bcd~70_combout\ & ((\u_7seg|current_val[5]~10_combout\) # (!\u_7seg|bcd~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~70_combout\,
	datab => \u_7seg|current_val[5]~10_combout\,
	datac => \u_7seg|bcd~71_combout\,
	datad => \u_7seg|bcd~69_combout\,
	combout => \u_7seg|bcd~85_combout\);

-- Location: LCCOMB_X42_Y35_N0
\u_7seg|current_val[4]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|current_val[4]~11_combout\ = (\u_7seg|display_mode~q\ & (!\u_adc|joystick_y\(4))) # (!\u_7seg|display_mode~q\ & ((!\u_adc|joystick_x\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|joystick_y\(4),
	datab => \u_7seg|display_mode~q\,
	datad => \u_adc|joystick_x\(4),
	combout => \u_7seg|current_val[4]~11_combout\);

-- Location: LCCOMB_X42_Y34_N18
\u_7seg|bcd~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~84_combout\ = (\u_7seg|bcd~70_combout\ & (\u_7seg|current_val[5]~10_combout\ $ ((\u_7seg|bcd~71_combout\)))) # (!\u_7seg|bcd~70_combout\ & (!\u_7seg|bcd~71_combout\ & ((\u_7seg|current_val[5]~10_combout\) # (!\u_7seg|bcd~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~70_combout\,
	datab => \u_7seg|current_val[5]~10_combout\,
	datac => \u_7seg|bcd~71_combout\,
	datad => \u_7seg|bcd~69_combout\,
	combout => \u_7seg|bcd~84_combout\);

-- Location: LCCOMB_X42_Y34_N2
\u_7seg|bcd~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~86_combout\ = (\u_7seg|bcd~70_combout\ & (\u_7seg|current_val[5]~10_combout\)) # (!\u_7seg|bcd~70_combout\ & ((\u_7seg|current_val[5]~10_combout\ & ((\u_7seg|bcd~69_combout\))) # (!\u_7seg|current_val[5]~10_combout\ & 
-- ((\u_7seg|bcd~71_combout\) # (!\u_7seg|bcd~69_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~70_combout\,
	datab => \u_7seg|current_val[5]~10_combout\,
	datac => \u_7seg|bcd~71_combout\,
	datad => \u_7seg|bcd~69_combout\,
	combout => \u_7seg|bcd~86_combout\);

-- Location: LCCOMB_X48_Y34_N4
\u_7seg|bcd~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~87_combout\ = \u_7seg|bcd~85_combout\ $ ((((!\u_7seg|current_val[4]~11_combout\ & \u_7seg|bcd~86_combout\)) # (!\u_7seg|bcd~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~85_combout\,
	datab => \u_7seg|current_val[4]~11_combout\,
	datac => \u_7seg|bcd~84_combout\,
	datad => \u_7seg|bcd~86_combout\,
	combout => \u_7seg|bcd~87_combout\);

-- Location: LCCOMB_X48_Y34_N14
\u_7seg|bcd~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~83_combout\ = (\u_7seg|bcd~66_combout\ & (\u_7seg|bcd~72_combout\ & ((!\u_7seg|bcd~67_combout\)))) # (!\u_7seg|bcd~66_combout\ & (\u_7seg|bcd~68_combout\ & ((\u_7seg|bcd~67_combout\) # (!\u_7seg|bcd~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~72_combout\,
	datab => \u_7seg|bcd~68_combout\,
	datac => \u_7seg|bcd~67_combout\,
	datad => \u_7seg|bcd~66_combout\,
	combout => \u_7seg|bcd~83_combout\);

-- Location: LCCOMB_X48_Y34_N24
\u_7seg|bcd~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~82_combout\ = (\u_7seg|bcd~72_combout\ & ((\u_7seg|bcd~68_combout\) # ((\u_7seg|bcd~67_combout\ & \u_7seg|bcd~66_combout\)))) # (!\u_7seg|bcd~72_combout\ & (!\u_7seg|bcd~68_combout\ & ((!\u_7seg|bcd~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~72_combout\,
	datab => \u_7seg|bcd~68_combout\,
	datac => \u_7seg|bcd~67_combout\,
	datad => \u_7seg|bcd~66_combout\,
	combout => \u_7seg|bcd~82_combout\);

-- Location: LCCOMB_X48_Y34_N18
\u_7seg|bcd~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~88_combout\ = \u_7seg|bcd~83_combout\ $ ((((\u_7seg|bcd~87_combout\ & !\u_7seg|bcd~82_combout\)) # (!\u_7seg|bcd~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~81_combout\,
	datab => \u_7seg|bcd~87_combout\,
	datac => \u_7seg|bcd~83_combout\,
	datad => \u_7seg|bcd~82_combout\,
	combout => \u_7seg|bcd~88_combout\);

-- Location: LCCOMB_X49_Y34_N6
\u_7seg|bcd~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~78_combout\ = (\u_7seg|bcd~73_combout\ & ((\u_7seg|bcd~65_combout\ & ((!\u_7seg|bcd~64_combout\))) # (!\u_7seg|bcd~65_combout\ & (!\u_7seg|bcd~63_combout\ & \u_7seg|bcd~64_combout\)))) # (!\u_7seg|bcd~73_combout\ & 
-- (((\u_7seg|bcd~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~73_combout\,
	datab => \u_7seg|bcd~65_combout\,
	datac => \u_7seg|bcd~63_combout\,
	datad => \u_7seg|bcd~64_combout\,
	combout => \u_7seg|bcd~78_combout\);

-- Location: LCCOMB_X49_Y34_N4
\u_7seg|bcd~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~79_combout\ = (\u_7seg|bcd~73_combout\ & ((\u_7seg|bcd~65_combout\) # ((\u_7seg|bcd~63_combout\ & \u_7seg|bcd~64_combout\)))) # (!\u_7seg|bcd~73_combout\ & (!\u_7seg|bcd~65_combout\ & (!\u_7seg|bcd~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~73_combout\,
	datab => \u_7seg|bcd~65_combout\,
	datac => \u_7seg|bcd~63_combout\,
	datad => \u_7seg|bcd~64_combout\,
	combout => \u_7seg|bcd~79_combout\);

-- Location: LCCOMB_X49_Y34_N22
\u_7seg|bcd~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~80_combout\ = (\u_7seg|bcd~63_combout\ & (!\u_7seg|bcd~64_combout\ & ((\u_7seg|bcd~73_combout\)))) # (!\u_7seg|bcd~63_combout\ & (\u_7seg|bcd~65_combout\ & ((\u_7seg|bcd~64_combout\) # (!\u_7seg|bcd~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~64_combout\,
	datab => \u_7seg|bcd~65_combout\,
	datac => \u_7seg|bcd~73_combout\,
	datad => \u_7seg|bcd~63_combout\,
	combout => \u_7seg|bcd~80_combout\);

-- Location: LCCOMB_X50_Y34_N20
\u_7seg|bcd~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~89_combout\ = \u_7seg|bcd~80_combout\ $ ((((\u_7seg|bcd~88_combout\ & !\u_7seg|bcd~79_combout\)) # (!\u_7seg|bcd~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~88_combout\,
	datab => \u_7seg|bcd~78_combout\,
	datac => \u_7seg|bcd~79_combout\,
	datad => \u_7seg|bcd~80_combout\,
	combout => \u_7seg|bcd~89_combout\);

-- Location: LCCOMB_X50_Y34_N18
\u_7seg|bcd_val[16]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd_val[16]~0_combout\ = \u_7seg|bcd~77_combout\ $ ((((!\u_7seg|bcd~76_combout\ & \u_7seg|bcd~89_combout\)) # (!\u_7seg|bcd~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~75_combout\,
	datab => \u_7seg|bcd~76_combout\,
	datac => \u_7seg|bcd~77_combout\,
	datad => \u_7seg|bcd~89_combout\,
	combout => \u_7seg|bcd_val[16]~0_combout\);

-- Location: LCCOMB_X46_Y34_N6
\u_7seg|bcd_val[17]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd_val[17]~1_combout\ = (\u_7seg|LessThan11~0_combout\ & ((\u_7seg|bcd~58_combout\) # (!\u_7seg|bcd~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_7seg|LessThan11~0_combout\,
	datac => \u_7seg|bcd~58_combout\,
	datad => \u_7seg|bcd~59_combout\,
	combout => \u_7seg|bcd_val[17]~1_combout\);

-- Location: LCCOMB_X46_Y34_N8
\u_7seg|bcd~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~90_combout\ = (\u_7seg|bcd~59_combout\ & ((\u_7seg|LessThan11~0_combout\ & (\u_7seg|bcd~58_combout\)) # (!\u_7seg|LessThan11~0_combout\ & ((\u_7seg|bcd~57_combout\) # (!\u_7seg|bcd~58_combout\))))) # (!\u_7seg|bcd~59_combout\ & 
-- (((\u_7seg|LessThan11~0_combout\ & \u_7seg|bcd~57_combout\)) # (!\u_7seg|bcd~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~59_combout\,
	datab => \u_7seg|LessThan11~0_combout\,
	datac => \u_7seg|bcd~58_combout\,
	datad => \u_7seg|bcd~57_combout\,
	combout => \u_7seg|bcd~90_combout\);

-- Location: LCCOMB_X50_Y34_N24
\u_7seg|bcd~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~91_combout\ = \u_7seg|bcd~60_combout\ $ ((((!\u_7seg|bcd~62_combout\ & \u_7seg|bcd~74_combout\)) # (!\u_7seg|bcd~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~60_combout\,
	datab => \u_7seg|bcd~62_combout\,
	datac => \u_7seg|bcd~61_combout\,
	datad => \u_7seg|bcd~74_combout\,
	combout => \u_7seg|bcd~91_combout\);

-- Location: LCCOMB_X46_Y34_N4
\u_7seg|bcd_val[17]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd_val[17]~2_combout\ = (\u_7seg|bcd_val[17]~1_combout\ & ((\u_7seg|bcd~90_combout\) # (!\u_7seg|bcd~91_combout\))) # (!\u_7seg|bcd_val[17]~1_combout\ & ((\u_7seg|bcd~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd_val[17]~1_combout\,
	datac => \u_7seg|bcd~90_combout\,
	datad => \u_7seg|bcd~91_combout\,
	combout => \u_7seg|bcd_val[17]~2_combout\);

-- Location: LCCOMB_X46_Y34_N26
\u_7seg|bcd_val[18]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd_val[18]~3_combout\ = (!\u_7seg|bcd~90_combout\ & ((!\u_7seg|bcd~91_combout\) # (!\u_7seg|bcd_val[17]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd_val[17]~1_combout\,
	datab => \u_7seg|bcd~90_combout\,
	datad => \u_7seg|bcd~91_combout\,
	combout => \u_7seg|bcd_val[18]~3_combout\);

-- Location: LCCOMB_X46_Y34_N24
\u_7seg|bcd~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~92_combout\ = (\u_7seg|bcd~58_combout\) # (!\u_7seg|bcd~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_7seg|bcd~58_combout\,
	datad => \u_7seg|bcd~59_combout\,
	combout => \u_7seg|bcd~92_combout\);

-- Location: LCCOMB_X46_Y34_N2
\u_7seg|bcd_val[19]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd_val[19]~4_combout\ = (\u_7seg|LessThan11~0_combout\ & (\u_7seg|bcd~92_combout\ & (\u_7seg|bcd~90_combout\ & \u_7seg|bcd~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|LessThan11~0_combout\,
	datab => \u_7seg|bcd~92_combout\,
	datac => \u_7seg|bcd~90_combout\,
	datad => \u_7seg|bcd~91_combout\,
	combout => \u_7seg|bcd_val[19]~4_combout\);

-- Location: LCCOMB_X46_Y34_N12
\u_7seg|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux6~0_combout\ = (\u_7seg|bcd_val[17]~2_combout\ & (!\u_7seg|bcd_val[19]~4_combout\ & (\u_7seg|bcd_val[16]~0_combout\ $ (!\u_7seg|bcd_val[18]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd_val[16]~0_combout\,
	datab => \u_7seg|bcd_val[17]~2_combout\,
	datac => \u_7seg|bcd_val[18]~3_combout\,
	datad => \u_7seg|bcd_val[19]~4_combout\,
	combout => \u_7seg|Mux6~0_combout\);

-- Location: FF_X46_Y34_N13
\u_7seg|seg_com_data[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|Mux6~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[4][0]~q\);

-- Location: LCCOMB_X51_Y35_N14
\u_7seg|Mux42~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux42~0_combout\ = (\u_7seg|seg_com_num\(0) & (!\u_7seg|seg_com_data[0][7]~q\)) # (!\u_7seg|seg_com_num\(0) & ((!\u_7seg|seg_com_data[4][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_num\(0),
	datab => \u_7seg|seg_com_data[0][7]~q\,
	datad => \u_7seg|seg_com_data[4][0]~q\,
	combout => \u_7seg|Mux42~0_combout\);

-- Location: LCCOMB_X42_Y35_N18
\u_7seg|current_val[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|current_val[2]~13_combout\ = (\u_7seg|display_mode~q\ & (\u_adc|joystick_y\(2))) # (!\u_7seg|display_mode~q\ & ((\u_adc|joystick_x\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|joystick_y\(2),
	datab => \u_7seg|display_mode~q\,
	datad => \u_adc|joystick_x\(2),
	combout => \u_7seg|current_val[2]~13_combout\);

-- Location: LCCOMB_X43_Y35_N10
\u_7seg|bcd~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~96_combout\ = (\u_7seg|bcd~85_combout\ & (\u_7seg|current_val[4]~11_combout\ $ (((\u_7seg|bcd~86_combout\))))) # (!\u_7seg|bcd~85_combout\ & (!\u_7seg|bcd~86_combout\ & ((\u_7seg|current_val[4]~11_combout\) # (!\u_7seg|bcd~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~85_combout\,
	datab => \u_7seg|current_val[4]~11_combout\,
	datac => \u_7seg|bcd~84_combout\,
	datad => \u_7seg|bcd~86_combout\,
	combout => \u_7seg|bcd~96_combout\);

-- Location: LCCOMB_X41_Y35_N4
\u_7seg|current_val[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|current_val[3]~12_combout\ = (\u_7seg|display_mode~q\ & (\u_adc|joystick_y\(3))) # (!\u_7seg|display_mode~q\ & ((\u_adc|joystick_x\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_adc|joystick_y\(3),
	datac => \u_7seg|display_mode~q\,
	datad => \u_adc|joystick_x\(3),
	combout => \u_7seg|current_val[3]~12_combout\);

-- Location: LCCOMB_X43_Y35_N30
\u_7seg|bcd~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~98_combout\ = (\u_7seg|bcd~85_combout\ & (\u_7seg|current_val[4]~11_combout\)) # (!\u_7seg|bcd~85_combout\ & ((\u_7seg|current_val[4]~11_combout\ & (\u_7seg|bcd~84_combout\)) # (!\u_7seg|current_val[4]~11_combout\ & ((\u_7seg|bcd~86_combout\) 
-- # (!\u_7seg|bcd~84_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~85_combout\,
	datab => \u_7seg|current_val[4]~11_combout\,
	datac => \u_7seg|bcd~84_combout\,
	datad => \u_7seg|bcd~86_combout\,
	combout => \u_7seg|bcd~98_combout\);

-- Location: LCCOMB_X43_Y35_N20
\u_7seg|bcd~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~97_combout\ = (\u_7seg|bcd~84_combout\ & (!\u_7seg|current_val[4]~11_combout\ & (\u_7seg|bcd~86_combout\))) # (!\u_7seg|bcd~84_combout\ & (\u_7seg|bcd~85_combout\ & ((\u_7seg|current_val[4]~11_combout\) # (!\u_7seg|bcd~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|current_val[4]~11_combout\,
	datab => \u_7seg|bcd~86_combout\,
	datac => \u_7seg|bcd~84_combout\,
	datad => \u_7seg|bcd~85_combout\,
	combout => \u_7seg|bcd~97_combout\);

-- Location: LCCOMB_X43_Y35_N28
\u_7seg|bcd~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~105_combout\ = (\u_7seg|bcd~96_combout\ & ((\u_7seg|current_val[3]~12_combout\) # ((\u_7seg|bcd~98_combout\ & !\u_7seg|bcd~97_combout\)))) # (!\u_7seg|bcd~96_combout\ & (\u_7seg|current_val[3]~12_combout\ $ (((!\u_7seg|bcd~97_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~96_combout\,
	datab => \u_7seg|current_val[3]~12_combout\,
	datac => \u_7seg|bcd~98_combout\,
	datad => \u_7seg|bcd~97_combout\,
	combout => \u_7seg|bcd~105_combout\);

-- Location: LCCOMB_X43_Y35_N26
\u_7seg|bcd~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~104_combout\ = (\u_7seg|bcd~96_combout\ & (!\u_7seg|current_val[3]~12_combout\ & (\u_7seg|bcd~98_combout\))) # (!\u_7seg|bcd~96_combout\ & (\u_7seg|bcd~97_combout\ & ((\u_7seg|current_val[3]~12_combout\) # (!\u_7seg|bcd~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~96_combout\,
	datab => \u_7seg|current_val[3]~12_combout\,
	datac => \u_7seg|bcd~98_combout\,
	datad => \u_7seg|bcd~97_combout\,
	combout => \u_7seg|bcd~104_combout\);

-- Location: LCCOMB_X43_Y35_N0
\u_7seg|bcd~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~103_combout\ = (\u_7seg|current_val[3]~12_combout\ & (((!\u_7seg|bcd~98_combout\)))) # (!\u_7seg|current_val[3]~12_combout\ & ((\u_7seg|bcd~98_combout\ & ((\u_7seg|bcd~97_combout\))) # (!\u_7seg|bcd~98_combout\ & (!\u_7seg|bcd~96_combout\ & 
-- !\u_7seg|bcd~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~96_combout\,
	datab => \u_7seg|current_val[3]~12_combout\,
	datac => \u_7seg|bcd~98_combout\,
	datad => \u_7seg|bcd~97_combout\,
	combout => \u_7seg|bcd~103_combout\);

-- Location: LCCOMB_X43_Y35_N14
\u_7seg|bcd~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~106_combout\ = \u_7seg|bcd~104_combout\ $ ((((!\u_7seg|current_val[2]~13_combout\ & \u_7seg|bcd~105_combout\)) # (!\u_7seg|bcd~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|current_val[2]~13_combout\,
	datab => \u_7seg|bcd~105_combout\,
	datac => \u_7seg|bcd~104_combout\,
	datad => \u_7seg|bcd~103_combout\,
	combout => \u_7seg|bcd~106_combout\);

-- Location: LCCOMB_X48_Y35_N30
\u_7seg|bcd~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~99_combout\ = \u_7seg|bcd~97_combout\ $ ((((\u_7seg|bcd~98_combout\ & !\u_7seg|current_val[3]~12_combout\)) # (!\u_7seg|bcd~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~98_combout\,
	datab => \u_7seg|current_val[3]~12_combout\,
	datac => \u_7seg|bcd~97_combout\,
	datad => \u_7seg|bcd~96_combout\,
	combout => \u_7seg|bcd~99_combout\);

-- Location: LCCOMB_X48_Y34_N0
\u_7seg|bcd~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~95_combout\ = (\u_7seg|bcd~81_combout\ & (\u_7seg|bcd~87_combout\ & ((\u_7seg|bcd~83_combout\) # (\u_7seg|bcd~82_combout\)))) # (!\u_7seg|bcd~81_combout\ & (\u_7seg|bcd~87_combout\ $ ((!\u_7seg|bcd~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~81_combout\,
	datab => \u_7seg|bcd~87_combout\,
	datac => \u_7seg|bcd~83_combout\,
	datad => \u_7seg|bcd~82_combout\,
	combout => \u_7seg|bcd~95_combout\);

-- Location: LCCOMB_X48_Y34_N2
\u_7seg|bcd~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~94_combout\ = (\u_7seg|bcd~87_combout\ & ((\u_7seg|bcd~83_combout\ & ((!\u_7seg|bcd~82_combout\))) # (!\u_7seg|bcd~83_combout\ & (!\u_7seg|bcd~81_combout\ & \u_7seg|bcd~82_combout\)))) # (!\u_7seg|bcd~87_combout\ & 
-- (((\u_7seg|bcd~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~81_combout\,
	datab => \u_7seg|bcd~87_combout\,
	datac => \u_7seg|bcd~83_combout\,
	datad => \u_7seg|bcd~82_combout\,
	combout => \u_7seg|bcd~94_combout\);

-- Location: LCCOMB_X48_Y34_N28
\u_7seg|bcd~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~93_combout\ = (\u_7seg|bcd~81_combout\ & (\u_7seg|bcd~87_combout\ & ((!\u_7seg|bcd~82_combout\)))) # (!\u_7seg|bcd~81_combout\ & (\u_7seg|bcd~83_combout\ & ((\u_7seg|bcd~82_combout\) # (!\u_7seg|bcd~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~81_combout\,
	datab => \u_7seg|bcd~87_combout\,
	datac => \u_7seg|bcd~83_combout\,
	datad => \u_7seg|bcd~82_combout\,
	combout => \u_7seg|bcd~93_combout\);

-- Location: LCCOMB_X48_Y35_N18
\u_7seg|bcd~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~101_combout\ = (\u_7seg|bcd~99_combout\ & ((\u_7seg|bcd~93_combout\) # ((\u_7seg|bcd~95_combout\ & \u_7seg|bcd~94_combout\)))) # (!\u_7seg|bcd~99_combout\ & (((!\u_7seg|bcd~94_combout\ & !\u_7seg|bcd~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~99_combout\,
	datab => \u_7seg|bcd~95_combout\,
	datac => \u_7seg|bcd~94_combout\,
	datad => \u_7seg|bcd~93_combout\,
	combout => \u_7seg|bcd~101_combout\);

-- Location: LCCOMB_X48_Y35_N8
\u_7seg|bcd~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~102_combout\ = (\u_7seg|bcd~94_combout\ & (\u_7seg|bcd~99_combout\ & (!\u_7seg|bcd~95_combout\))) # (!\u_7seg|bcd~94_combout\ & (\u_7seg|bcd~93_combout\ & ((\u_7seg|bcd~95_combout\) # (!\u_7seg|bcd~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~99_combout\,
	datab => \u_7seg|bcd~95_combout\,
	datac => \u_7seg|bcd~94_combout\,
	datad => \u_7seg|bcd~93_combout\,
	combout => \u_7seg|bcd~102_combout\);

-- Location: LCCOMB_X48_Y35_N20
\u_7seg|bcd~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~100_combout\ = (\u_7seg|bcd~99_combout\ & ((\u_7seg|bcd~95_combout\ & (!\u_7seg|bcd~94_combout\ & !\u_7seg|bcd~93_combout\)) # (!\u_7seg|bcd~95_combout\ & ((\u_7seg|bcd~93_combout\))))) # (!\u_7seg|bcd~99_combout\ & (\u_7seg|bcd~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~99_combout\,
	datab => \u_7seg|bcd~95_combout\,
	datac => \u_7seg|bcd~94_combout\,
	datad => \u_7seg|bcd~93_combout\,
	combout => \u_7seg|bcd~100_combout\);

-- Location: LCCOMB_X48_Y35_N26
\u_7seg|bcd_val[8]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd_val[8]~5_combout\ = \u_7seg|bcd~102_combout\ $ ((((\u_7seg|bcd~106_combout\ & !\u_7seg|bcd~101_combout\)) # (!\u_7seg|bcd~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~106_combout\,
	datab => \u_7seg|bcd~101_combout\,
	datac => \u_7seg|bcd~102_combout\,
	datad => \u_7seg|bcd~100_combout\,
	combout => \u_7seg|bcd_val[8]~5_combout\);

-- Location: LCCOMB_X49_Y34_N20
\u_7seg|bcd~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~108_combout\ = (\u_7seg|bcd~78_combout\ & (((\u_7seg|bcd~88_combout\ & !\u_7seg|bcd~79_combout\)))) # (!\u_7seg|bcd~78_combout\ & (\u_7seg|bcd~80_combout\ & ((\u_7seg|bcd~79_combout\) # (!\u_7seg|bcd~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~80_combout\,
	datab => \u_7seg|bcd~88_combout\,
	datac => \u_7seg|bcd~79_combout\,
	datad => \u_7seg|bcd~78_combout\,
	combout => \u_7seg|bcd~108_combout\);

-- Location: LCCOMB_X49_Y34_N28
\u_7seg|bcd~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~110_combout\ = (\u_7seg|bcd~88_combout\ & ((\u_7seg|bcd~80_combout\ & ((!\u_7seg|bcd~79_combout\))) # (!\u_7seg|bcd~80_combout\ & (!\u_7seg|bcd~78_combout\ & \u_7seg|bcd~79_combout\)))) # (!\u_7seg|bcd~88_combout\ & 
-- (((\u_7seg|bcd~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~78_combout\,
	datab => \u_7seg|bcd~88_combout\,
	datac => \u_7seg|bcd~80_combout\,
	datad => \u_7seg|bcd~79_combout\,
	combout => \u_7seg|bcd~110_combout\);

-- Location: LCCOMB_X48_Y34_N26
\u_7seg|bcd~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~107_combout\ = \u_7seg|bcd~93_combout\ $ ((((\u_7seg|bcd~99_combout\ & !\u_7seg|bcd~95_combout\)) # (!\u_7seg|bcd~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~99_combout\,
	datab => \u_7seg|bcd~95_combout\,
	datac => \u_7seg|bcd~94_combout\,
	datad => \u_7seg|bcd~93_combout\,
	combout => \u_7seg|bcd~107_combout\);

-- Location: LCCOMB_X49_Y34_N14
\u_7seg|bcd~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~109_combout\ = (\u_7seg|bcd~80_combout\ & (\u_7seg|bcd~88_combout\)) # (!\u_7seg|bcd~80_combout\ & ((\u_7seg|bcd~88_combout\ & (\u_7seg|bcd~79_combout\ & \u_7seg|bcd~78_combout\)) # (!\u_7seg|bcd~88_combout\ & ((!\u_7seg|bcd~78_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~80_combout\,
	datab => \u_7seg|bcd~88_combout\,
	datac => \u_7seg|bcd~79_combout\,
	datad => \u_7seg|bcd~78_combout\,
	combout => \u_7seg|bcd~109_combout\);

-- Location: LCCOMB_X49_Y34_N0
\u_7seg|bcd_val[10]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd_val[10]~7_combout\ = (\u_7seg|bcd~108_combout\ & ((\u_7seg|bcd~107_combout\ $ (\u_7seg|bcd~109_combout\)))) # (!\u_7seg|bcd~108_combout\ & (\u_7seg|bcd~109_combout\ & ((!\u_7seg|bcd~107_combout\) # (!\u_7seg|bcd~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~108_combout\,
	datab => \u_7seg|bcd~110_combout\,
	datac => \u_7seg|bcd~107_combout\,
	datad => \u_7seg|bcd~109_combout\,
	combout => \u_7seg|bcd_val[10]~7_combout\);

-- Location: LCCOMB_X49_Y34_N18
\u_7seg|bcd_val[11]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd_val[11]~8_combout\ = (\u_7seg|bcd~110_combout\ & (((!\u_7seg|bcd~109_combout\ & \u_7seg|bcd~107_combout\)))) # (!\u_7seg|bcd~110_combout\ & (\u_7seg|bcd~108_combout\ & ((\u_7seg|bcd~109_combout\) # (!\u_7seg|bcd~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~108_combout\,
	datab => \u_7seg|bcd~109_combout\,
	datac => \u_7seg|bcd~107_combout\,
	datad => \u_7seg|bcd~110_combout\,
	combout => \u_7seg|bcd_val[11]~8_combout\);

-- Location: LCCOMB_X49_Y34_N30
\u_7seg|bcd_val[9]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd_val[9]~6_combout\ = (\u_7seg|bcd~107_combout\ & ((\u_7seg|bcd~108_combout\) # ((\u_7seg|bcd~109_combout\ & \u_7seg|bcd~110_combout\)))) # (!\u_7seg|bcd~107_combout\ & (!\u_7seg|bcd~108_combout\ & ((!\u_7seg|bcd~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~107_combout\,
	datab => \u_7seg|bcd~108_combout\,
	datac => \u_7seg|bcd~109_combout\,
	datad => \u_7seg|bcd~110_combout\,
	combout => \u_7seg|bcd_val[9]~6_combout\);

-- Location: LCCOMB_X49_Y35_N20
\u_7seg|Mux20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux20~0_combout\ = (\u_7seg|bcd_val[10]~7_combout\ & (!\u_7seg|bcd_val[9]~6_combout\ & (\u_7seg|bcd_val[8]~5_combout\ $ (\u_7seg|bcd_val[11]~8_combout\)))) # (!\u_7seg|bcd_val[10]~7_combout\ & (!\u_7seg|bcd_val[8]~5_combout\ & 
-- (\u_7seg|bcd_val[11]~8_combout\ $ (!\u_7seg|bcd_val[9]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd_val[8]~5_combout\,
	datab => \u_7seg|bcd_val[10]~7_combout\,
	datac => \u_7seg|bcd_val[11]~8_combout\,
	datad => \u_7seg|bcd_val[9]~6_combout\,
	combout => \u_7seg|Mux20~0_combout\);

-- Location: FF_X49_Y35_N21
\u_7seg|seg_com_data[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|Mux20~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[2][0]~q\);

-- Location: LCCOMB_X50_Y34_N14
\u_7seg|bcd_val[13]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd_val[13]~10_combout\ = (\u_7seg|bcd~77_combout\ & (\u_7seg|bcd~89_combout\)) # (!\u_7seg|bcd~77_combout\ & ((\u_7seg|bcd~89_combout\ & (\u_7seg|bcd~75_combout\ & \u_7seg|bcd~76_combout\)) # (!\u_7seg|bcd~89_combout\ & 
-- (!\u_7seg|bcd~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~77_combout\,
	datab => \u_7seg|bcd~89_combout\,
	datac => \u_7seg|bcd~75_combout\,
	datad => \u_7seg|bcd~76_combout\,
	combout => \u_7seg|bcd_val[13]~10_combout\);

-- Location: LCCOMB_X50_Y34_N6
\u_7seg|bcd_val[15]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd_val[15]~12_combout\ = (\u_7seg|bcd~75_combout\ & (((\u_7seg|bcd~89_combout\ & !\u_7seg|bcd~76_combout\)))) # (!\u_7seg|bcd~75_combout\ & (\u_7seg|bcd~77_combout\ & ((\u_7seg|bcd~76_combout\) # (!\u_7seg|bcd~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~77_combout\,
	datab => \u_7seg|bcd~89_combout\,
	datac => \u_7seg|bcd~75_combout\,
	datad => \u_7seg|bcd~76_combout\,
	combout => \u_7seg|bcd_val[15]~12_combout\);

-- Location: LCCOMB_X50_Y34_N16
\u_7seg|bcd_val[14]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd_val[14]~11_combout\ = (\u_7seg|bcd~77_combout\ & (\u_7seg|bcd~89_combout\ $ (((\u_7seg|bcd~76_combout\))))) # (!\u_7seg|bcd~77_combout\ & (\u_7seg|bcd~76_combout\ & ((!\u_7seg|bcd~75_combout\) # (!\u_7seg|bcd~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~77_combout\,
	datab => \u_7seg|bcd~89_combout\,
	datac => \u_7seg|bcd~75_combout\,
	datad => \u_7seg|bcd~76_combout\,
	combout => \u_7seg|bcd_val[14]~11_combout\);

-- Location: LCCOMB_X51_Y34_N16
\u_7seg|bcd_val[12]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd_val[12]~9_combout\ = \u_7seg|bcd~108_combout\ $ ((((\u_7seg|bcd~107_combout\ & !\u_7seg|bcd~109_combout\)) # (!\u_7seg|bcd~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~110_combout\,
	datab => \u_7seg|bcd~107_combout\,
	datac => \u_7seg|bcd~109_combout\,
	datad => \u_7seg|bcd~108_combout\,
	combout => \u_7seg|bcd_val[12]~9_combout\);

-- Location: LCCOMB_X51_Y34_N14
\u_7seg|Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux13~0_combout\ = (\u_7seg|bcd_val[15]~12_combout\ & (!\u_7seg|bcd_val[12]~9_combout\ & (\u_7seg|bcd_val[13]~10_combout\ $ (\u_7seg|bcd_val[14]~11_combout\)))) # (!\u_7seg|bcd_val[15]~12_combout\ & (!\u_7seg|bcd_val[13]~10_combout\ & 
-- (\u_7seg|bcd_val[14]~11_combout\ $ (!\u_7seg|bcd_val[12]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd_val[13]~10_combout\,
	datab => \u_7seg|bcd_val[15]~12_combout\,
	datac => \u_7seg|bcd_val[14]~11_combout\,
	datad => \u_7seg|bcd_val[12]~9_combout\,
	combout => \u_7seg|Mux13~0_combout\);

-- Location: FF_X51_Y34_N15
\u_7seg|seg_com_data[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|Mux13~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[3][0]~q\);

-- Location: LCCOMB_X51_Y35_N8
\u_7seg|Mux42~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux42~1_combout\ = (\u_7seg|seg_com_num\(0) & ((!\u_7seg|seg_com_data[3][0]~q\))) # (!\u_7seg|seg_com_num\(0) & (!\u_7seg|seg_com_data[2][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_num\(0),
	datac => \u_7seg|seg_com_data[2][0]~q\,
	datad => \u_7seg|seg_com_data[3][0]~q\,
	combout => \u_7seg|Mux42~1_combout\);

-- Location: LCCOMB_X43_Y35_N6
\u_7seg|bcd~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~112_combout\ = (\u_7seg|current_val[2]~13_combout\ & (((\u_7seg|bcd~104_combout\) # (\u_7seg|bcd~103_combout\)))) # (!\u_7seg|current_val[2]~13_combout\ & (!\u_7seg|bcd~104_combout\ & ((\u_7seg|bcd~105_combout\) # 
-- (!\u_7seg|bcd~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|current_val[2]~13_combout\,
	datab => \u_7seg|bcd~105_combout\,
	datac => \u_7seg|bcd~104_combout\,
	datad => \u_7seg|bcd~103_combout\,
	combout => \u_7seg|bcd~112_combout\);

-- Location: LCCOMB_X42_Y35_N28
\u_7seg|current_val[1]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|current_val[1]~15_combout\ = (\u_7seg|display_mode~q\ & (\u_adc|joystick_y\(1))) # (!\u_7seg|display_mode~q\ & ((\u_adc|joystick_x\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|joystick_y\(1),
	datab => \u_7seg|display_mode~q\,
	datad => \u_adc|joystick_x\(1),
	combout => \u_7seg|current_val[1]~15_combout\);

-- Location: LCCOMB_X43_Y35_N12
\u_7seg|bcd~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~111_combout\ = (\u_7seg|current_val[2]~13_combout\ & (!\u_7seg|bcd~105_combout\)) # (!\u_7seg|current_val[2]~13_combout\ & ((\u_7seg|bcd~105_combout\ & (\u_7seg|bcd~104_combout\)) # (!\u_7seg|bcd~105_combout\ & (!\u_7seg|bcd~104_combout\ & 
-- !\u_7seg|bcd~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|current_val[2]~13_combout\,
	datab => \u_7seg|bcd~105_combout\,
	datac => \u_7seg|bcd~104_combout\,
	datad => \u_7seg|bcd~103_combout\,
	combout => \u_7seg|bcd~111_combout\);

-- Location: LCCOMB_X43_Y35_N4
\u_7seg|bcd~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd~113_combout\ = (\u_7seg|bcd~103_combout\ & (!\u_7seg|current_val[2]~13_combout\ & (\u_7seg|bcd~105_combout\))) # (!\u_7seg|bcd~103_combout\ & (\u_7seg|bcd~104_combout\ & ((\u_7seg|current_val[2]~13_combout\) # (!\u_7seg|bcd~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|current_val[2]~13_combout\,
	datab => \u_7seg|bcd~105_combout\,
	datac => \u_7seg|bcd~104_combout\,
	datad => \u_7seg|bcd~103_combout\,
	combout => \u_7seg|bcd~113_combout\);

-- Location: LCCOMB_X48_Y35_N12
\u_7seg|bcd_val[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd_val[4]~16_combout\ = \u_7seg|bcd~113_combout\ $ ((((\u_7seg|bcd~112_combout\ & !\u_7seg|current_val[1]~15_combout\)) # (!\u_7seg|bcd~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~112_combout\,
	datab => \u_7seg|current_val[1]~15_combout\,
	datac => \u_7seg|bcd~111_combout\,
	datad => \u_7seg|bcd~113_combout\,
	combout => \u_7seg|bcd_val[4]~16_combout\);

-- Location: LCCOMB_X48_Y35_N4
\u_7seg|bcd_val[6]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd_val[6]~18_combout\ = (\u_7seg|bcd~106_combout\ & ((\u_7seg|bcd~101_combout\ & (!\u_7seg|bcd~100_combout\ & !\u_7seg|bcd~102_combout\)) # (!\u_7seg|bcd~101_combout\ & ((\u_7seg|bcd~102_combout\))))) # (!\u_7seg|bcd~106_combout\ & 
-- (\u_7seg|bcd~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~106_combout\,
	datab => \u_7seg|bcd~101_combout\,
	datac => \u_7seg|bcd~100_combout\,
	datad => \u_7seg|bcd~102_combout\,
	combout => \u_7seg|bcd_val[6]~18_combout\);

-- Location: LCCOMB_X48_Y35_N14
\u_7seg|bcd_val[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd_val[5]~17_combout\ = (\u_7seg|bcd~106_combout\ & ((\u_7seg|bcd~102_combout\) # ((\u_7seg|bcd~101_combout\ & \u_7seg|bcd~100_combout\)))) # (!\u_7seg|bcd~106_combout\ & (((!\u_7seg|bcd~102_combout\ & !\u_7seg|bcd~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~106_combout\,
	datab => \u_7seg|bcd~101_combout\,
	datac => \u_7seg|bcd~102_combout\,
	datad => \u_7seg|bcd~100_combout\,
	combout => \u_7seg|bcd_val[5]~17_combout\);

-- Location: LCCOMB_X48_Y35_N6
\u_7seg|bcd_val[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd_val[7]~19_combout\ = (\u_7seg|bcd~100_combout\ & (\u_7seg|bcd~106_combout\ & (!\u_7seg|bcd~101_combout\))) # (!\u_7seg|bcd~100_combout\ & (\u_7seg|bcd~102_combout\ & ((\u_7seg|bcd~101_combout\) # (!\u_7seg|bcd~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~106_combout\,
	datab => \u_7seg|bcd~101_combout\,
	datac => \u_7seg|bcd~102_combout\,
	datad => \u_7seg|bcd~100_combout\,
	combout => \u_7seg|bcd_val[7]~19_combout\);

-- Location: LCCOMB_X48_Y35_N28
\u_7seg|Mux27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux27~0_combout\ = (\u_7seg|bcd_val[6]~18_combout\ & (!\u_7seg|bcd_val[5]~17_combout\ & (\u_7seg|bcd_val[4]~16_combout\ $ (\u_7seg|bcd_val[7]~19_combout\)))) # (!\u_7seg|bcd_val[6]~18_combout\ & (!\u_7seg|bcd_val[4]~16_combout\ & 
-- (\u_7seg|bcd_val[5]~17_combout\ $ (!\u_7seg|bcd_val[7]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd_val[4]~16_combout\,
	datab => \u_7seg|bcd_val[6]~18_combout\,
	datac => \u_7seg|bcd_val[5]~17_combout\,
	datad => \u_7seg|bcd_val[7]~19_combout\,
	combout => \u_7seg|Mux27~0_combout\);

-- Location: FF_X48_Y35_N29
\u_7seg|seg_com_data[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|Mux27~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[1][0]~q\);

-- Location: LCCOMB_X42_Y35_N6
\u_7seg|current_val[0]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|current_val[0]~14_combout\ = (\u_7seg|display_mode~q\ & ((\u_adc|joystick_y\(0)))) # (!\u_7seg|display_mode~q\ & (\u_adc|joystick_x\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_adc|joystick_x\(0),
	datab => \u_7seg|display_mode~q\,
	datad => \u_adc|joystick_y\(0),
	combout => \u_7seg|current_val[0]~14_combout\);

-- Location: LCCOMB_X43_Y35_N18
\u_7seg|bcd_val[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd_val[3]~15_combout\ = (\u_7seg|bcd~111_combout\ & (\u_7seg|bcd~112_combout\ & (!\u_7seg|current_val[1]~15_combout\))) # (!\u_7seg|bcd~111_combout\ & (\u_7seg|bcd~113_combout\ & ((\u_7seg|current_val[1]~15_combout\) # 
-- (!\u_7seg|bcd~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~112_combout\,
	datab => \u_7seg|current_val[1]~15_combout\,
	datac => \u_7seg|bcd~113_combout\,
	datad => \u_7seg|bcd~111_combout\,
	combout => \u_7seg|bcd_val[3]~15_combout\);

-- Location: LCCOMB_X43_Y35_N8
\u_7seg|bcd_val[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd_val[2]~14_combout\ = (\u_7seg|bcd~112_combout\ & (!\u_7seg|current_val[1]~15_combout\ & (\u_7seg|bcd~113_combout\))) # (!\u_7seg|bcd~112_combout\ & ((\u_7seg|current_val[1]~15_combout\) # ((!\u_7seg|bcd~113_combout\ & 
-- !\u_7seg|bcd~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~112_combout\,
	datab => \u_7seg|current_val[1]~15_combout\,
	datac => \u_7seg|bcd~113_combout\,
	datad => \u_7seg|bcd~111_combout\,
	combout => \u_7seg|bcd_val[2]~14_combout\);

-- Location: LCCOMB_X43_Y35_N2
\u_7seg|bcd_val[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|bcd_val[1]~13_combout\ = (\u_7seg|current_val[1]~15_combout\ & (((\u_7seg|bcd~113_combout\) # (\u_7seg|bcd~111_combout\)))) # (!\u_7seg|current_val[1]~15_combout\ & (!\u_7seg|bcd~113_combout\ & ((\u_7seg|bcd~112_combout\) # 
-- (!\u_7seg|bcd~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd~112_combout\,
	datab => \u_7seg|current_val[1]~15_combout\,
	datac => \u_7seg|bcd~113_combout\,
	datad => \u_7seg|bcd~111_combout\,
	combout => \u_7seg|bcd_val[1]~13_combout\);

-- Location: LCCOMB_X43_Y35_N16
\u_7seg|Mux34~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux34~0_combout\ = (\u_7seg|bcd_val[3]~15_combout\ & (\u_7seg|current_val[0]~14_combout\ & (\u_7seg|bcd_val[2]~14_combout\ $ (!\u_7seg|bcd_val[1]~13_combout\)))) # (!\u_7seg|bcd_val[3]~15_combout\ & (\u_7seg|bcd_val[1]~13_combout\ & 
-- (\u_7seg|current_val[0]~14_combout\ $ (\u_7seg|bcd_val[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|current_val[0]~14_combout\,
	datab => \u_7seg|bcd_val[3]~15_combout\,
	datac => \u_7seg|bcd_val[2]~14_combout\,
	datad => \u_7seg|bcd_val[1]~13_combout\,
	combout => \u_7seg|Mux34~0_combout\);

-- Location: FF_X43_Y35_N17
\u_7seg|seg_com_data[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|Mux34~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[0][0]~q\);

-- Location: LCCOMB_X51_Y35_N6
\u_7seg|Mux42~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux42~2_combout\ = (\u_7seg|seg_com_num\(0) & (!\u_7seg|seg_com_data[1][0]~q\)) # (!\u_7seg|seg_com_num\(0) & ((!\u_7seg|seg_com_data[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_num\(0),
	datac => \u_7seg|seg_com_data[1][0]~q\,
	datad => \u_7seg|seg_com_data[0][0]~q\,
	combout => \u_7seg|Mux42~2_combout\);

-- Location: LCCOMB_X51_Y35_N16
\u_7seg|Mux42~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux42~3_combout\ = (\u_7seg|seg_com_num\(1) & ((\u_7seg|seg_com_num\(2)) # ((\u_7seg|Mux42~1_combout\)))) # (!\u_7seg|seg_com_num\(1) & (!\u_7seg|seg_com_num\(2) & ((\u_7seg|Mux42~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_num\(1),
	datab => \u_7seg|seg_com_num\(2),
	datac => \u_7seg|Mux42~1_combout\,
	datad => \u_7seg|Mux42~2_combout\,
	combout => \u_7seg|Mux42~3_combout\);

-- Location: LCCOMB_X51_Y35_N4
\u_7seg|Mux42~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux42~5_combout\ = (\u_7seg|seg_com_num\(2) & ((\u_7seg|Mux42~3_combout\ & (\u_7seg|Mux42~4_combout\)) # (!\u_7seg|Mux42~3_combout\ & ((\u_7seg|Mux42~0_combout\))))) # (!\u_7seg|seg_com_num\(2) & (((\u_7seg|Mux42~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|Mux42~4_combout\,
	datab => \u_7seg|seg_com_num\(2),
	datac => \u_7seg|Mux42~0_combout\,
	datad => \u_7seg|Mux42~3_combout\,
	combout => \u_7seg|Mux42~5_combout\);

-- Location: FF_X51_Y35_N25
\u_7seg|seg_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_7seg|counter[10]~clkctrl_outclk\,
	asdata => \u_7seg|Mux42~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_data\(0));

-- Location: LCCOMB_X50_Y35_N14
\u_7seg|Mux39~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux39~0_combout\ = (\u_7seg|seg_com_num\(2) & ((\u_7seg|seg_com_num\(1)) # (\u_7seg|seg_com_num\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_num\(1),
	datac => \u_7seg|seg_com_num\(0),
	datad => \u_7seg|seg_com_num\(2),
	combout => \u_7seg|Mux39~0_combout\);

-- Location: LCCOMB_X51_Y35_N24
\u_7seg|seg_com_data[7][5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|seg_com_data[7][5]~1_combout\ = !\u_7seg|display_mode~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_7seg|display_mode~q\,
	combout => \u_7seg|seg_com_data[7][5]~1_combout\);

-- Location: FF_X51_Y35_N21
\u_7seg|seg_com_data[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u_7seg|seg_com_data[7][5]~1_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[7][5]~q\);

-- Location: LCCOMB_X51_Y35_N20
\u_7seg|Mux42~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux42~6_combout\ = (\u_7seg|seg_com_num\(0) & (!\u_7seg|seg_com_data[7][5]~q\)) # (!\u_7seg|seg_com_num\(0) & ((!\u_7seg|seg_com_data[0][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_num\(0),
	datac => \u_7seg|seg_com_data[7][5]~q\,
	datad => \u_7seg|seg_com_data[0][7]~q\,
	combout => \u_7seg|Mux42~6_combout\);

-- Location: LCCOMB_X46_Y34_N30
\u_7seg|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux5~0_combout\ = (\u_7seg|bcd_val[18]~3_combout\ & (\u_7seg|bcd_val[16]~0_combout\ $ (\u_7seg|bcd_val[17]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd_val[16]~0_combout\,
	datac => \u_7seg|bcd_val[17]~2_combout\,
	datad => \u_7seg|bcd_val[18]~3_combout\,
	combout => \u_7seg|Mux5~0_combout\);

-- Location: FF_X46_Y34_N31
\u_7seg|seg_com_data[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|Mux5~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[4][1]~q\);

-- Location: LCCOMB_X50_Y35_N22
\u_7seg|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Decoder0~0_combout\ = (!\u_7seg|seg_com_num\(1) & \u_7seg|seg_com_num\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_num\(1),
	datad => \u_7seg|seg_com_num\(2),
	combout => \u_7seg|Decoder0~0_combout\);

-- Location: LCCOMB_X49_Y35_N30
\u_7seg|Mux19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux19~0_combout\ = (\u_7seg|bcd_val[11]~8_combout\ & ((\u_7seg|bcd_val[8]~5_combout\ & (\u_7seg|bcd_val[10]~7_combout\)) # (!\u_7seg|bcd_val[8]~5_combout\ & ((\u_7seg|bcd_val[9]~6_combout\))))) # (!\u_7seg|bcd_val[11]~8_combout\ & 
-- (\u_7seg|bcd_val[10]~7_combout\ & (\u_7seg|bcd_val[8]~5_combout\ $ (!\u_7seg|bcd_val[9]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd_val[8]~5_combout\,
	datab => \u_7seg|bcd_val[10]~7_combout\,
	datac => \u_7seg|bcd_val[11]~8_combout\,
	datad => \u_7seg|bcd_val[9]~6_combout\,
	combout => \u_7seg|Mux19~0_combout\);

-- Location: FF_X49_Y35_N31
\u_7seg|seg_com_data[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|Mux19~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[2][1]~q\);

-- Location: LCCOMB_X51_Y34_N22
\u_7seg|Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux12~0_combout\ = (\u_7seg|bcd_val[13]~10_combout\ & ((\u_7seg|bcd_val[12]~9_combout\ & ((\u_7seg|bcd_val[14]~11_combout\))) # (!\u_7seg|bcd_val[12]~9_combout\ & (\u_7seg|bcd_val[15]~12_combout\)))) # (!\u_7seg|bcd_val[13]~10_combout\ & 
-- (\u_7seg|bcd_val[14]~11_combout\ & (\u_7seg|bcd_val[15]~12_combout\ $ (!\u_7seg|bcd_val[12]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd_val[13]~10_combout\,
	datab => \u_7seg|bcd_val[15]~12_combout\,
	datac => \u_7seg|bcd_val[14]~11_combout\,
	datad => \u_7seg|bcd_val[12]~9_combout\,
	combout => \u_7seg|Mux12~0_combout\);

-- Location: FF_X51_Y34_N23
\u_7seg|seg_com_data[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|Mux12~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[3][1]~q\);

-- Location: LCCOMB_X50_Y35_N4
\u_7seg|Mux33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux33~0_combout\ = (\u_7seg|bcd_val[3]~15_combout\ & ((\u_7seg|current_val[0]~14_combout\ & (!\u_7seg|bcd_val[1]~13_combout\)) # (!\u_7seg|current_val[0]~14_combout\ & ((\u_7seg|bcd_val[2]~14_combout\))))) # (!\u_7seg|bcd_val[3]~15_combout\ & 
-- (\u_7seg|bcd_val[2]~14_combout\ & (\u_7seg|current_val[0]~14_combout\ $ (!\u_7seg|bcd_val[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd_val[3]~15_combout\,
	datab => \u_7seg|current_val[0]~14_combout\,
	datac => \u_7seg|bcd_val[1]~13_combout\,
	datad => \u_7seg|bcd_val[2]~14_combout\,
	combout => \u_7seg|Mux33~0_combout\);

-- Location: FF_X50_Y35_N5
\u_7seg|seg_com_data[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|Mux33~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[0][1]~q\);

-- Location: LCCOMB_X48_Y35_N22
\u_7seg|Mux26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux26~0_combout\ = (\u_7seg|bcd_val[5]~17_combout\ & ((\u_7seg|bcd_val[4]~16_combout\ & (\u_7seg|bcd_val[6]~18_combout\)) # (!\u_7seg|bcd_val[4]~16_combout\ & ((\u_7seg|bcd_val[7]~19_combout\))))) # (!\u_7seg|bcd_val[5]~17_combout\ & 
-- (\u_7seg|bcd_val[6]~18_combout\ & (\u_7seg|bcd_val[4]~16_combout\ $ (!\u_7seg|bcd_val[7]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd_val[4]~16_combout\,
	datab => \u_7seg|bcd_val[6]~18_combout\,
	datac => \u_7seg|bcd_val[5]~17_combout\,
	datad => \u_7seg|bcd_val[7]~19_combout\,
	combout => \u_7seg|Mux26~0_combout\);

-- Location: FF_X48_Y35_N23
\u_7seg|seg_com_data[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|Mux26~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[1][1]~q\);

-- Location: LCCOMB_X50_Y35_N6
\u_7seg|Mux41~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux41~0_combout\ = (\u_7seg|seg_com_num\(1) & (((\u_7seg|seg_com_num\(0))))) # (!\u_7seg|seg_com_num\(1) & ((\u_7seg|seg_com_num\(0) & ((!\u_7seg|seg_com_data[1][1]~q\))) # (!\u_7seg|seg_com_num\(0) & (!\u_7seg|seg_com_data[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_num\(1),
	datab => \u_7seg|seg_com_data[0][1]~q\,
	datac => \u_7seg|seg_com_num\(0),
	datad => \u_7seg|seg_com_data[1][1]~q\,
	combout => \u_7seg|Mux41~0_combout\);

-- Location: LCCOMB_X50_Y35_N24
\u_7seg|Mux41~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux41~1_combout\ = (\u_7seg|seg_com_num\(1) & ((\u_7seg|Mux41~0_combout\ & ((!\u_7seg|seg_com_data[3][1]~q\))) # (!\u_7seg|Mux41~0_combout\ & (!\u_7seg|seg_com_data[2][1]~q\)))) # (!\u_7seg|seg_com_num\(1) & (((\u_7seg|Mux41~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_num\(1),
	datab => \u_7seg|seg_com_data[2][1]~q\,
	datac => \u_7seg|seg_com_data[3][1]~q\,
	datad => \u_7seg|Mux41~0_combout\,
	combout => \u_7seg|Mux41~1_combout\);

-- Location: LCCOMB_X50_Y35_N16
\u_7seg|Mux41~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux41~2_combout\ = (\u_7seg|Decoder0~0_combout\ & (!\u_7seg|seg_com_data[4][1]~q\ & (!\u_7seg|Mux39~0_combout\))) # (!\u_7seg|Decoder0~0_combout\ & (((\u_7seg|Mux39~0_combout\) # (\u_7seg|Mux41~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_data[4][1]~q\,
	datab => \u_7seg|Decoder0~0_combout\,
	datac => \u_7seg|Mux39~0_combout\,
	datad => \u_7seg|Mux41~1_combout\,
	combout => \u_7seg|Mux41~2_combout\);

-- Location: LCCOMB_X50_Y35_N0
\u_7seg|Mux41~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux41~3_combout\ = (\u_7seg|Mux39~0_combout\ & ((\u_7seg|Mux41~2_combout\ & ((\u_7seg|Mux42~6_combout\))) # (!\u_7seg|Mux41~2_combout\ & (!\u_7seg|seg_com_data[0][7]~q\)))) # (!\u_7seg|Mux39~0_combout\ & (((\u_7seg|Mux41~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|Mux39~0_combout\,
	datab => \u_7seg|seg_com_data[0][7]~q\,
	datac => \u_7seg|Mux42~6_combout\,
	datad => \u_7seg|Mux41~2_combout\,
	combout => \u_7seg|Mux41~3_combout\);

-- Location: LCCOMB_X50_Y35_N8
\u_7seg|seg_data[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|seg_data[1]~feeder_combout\ = \u_7seg|Mux41~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_7seg|Mux41~3_combout\,
	combout => \u_7seg|seg_data[1]~feeder_combout\);

-- Location: FF_X50_Y35_N9
\u_7seg|seg_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_7seg|counter[10]~clkctrl_outclk\,
	d => \u_7seg|seg_data[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_data\(1));

-- Location: LCCOMB_X51_Y35_N26
\u_7seg|Mux40~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux40~4_combout\ = (!\u_7seg|seg_com_num\(1) & (\u_7seg|seg_com_num\(2) & ((!\u_7seg|seg_com_data[0][7]~q\) # (!\u_7seg|seg_com_num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_num\(1),
	datab => \u_7seg|seg_com_num\(2),
	datac => \u_7seg|seg_com_num\(0),
	datad => \u_7seg|seg_com_data[0][7]~q\,
	combout => \u_7seg|Mux40~4_combout\);

-- Location: LCCOMB_X51_Y35_N2
\u_7seg|Mux40~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux40~8_combout\ = (\u_7seg|seg_com_num\(1) & (\u_7seg|seg_com_num\(2) & \u_7seg|Mux42~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_num\(1),
	datab => \u_7seg|seg_com_num\(2),
	datad => \u_7seg|Mux42~6_combout\,
	combout => \u_7seg|Mux40~8_combout\);

-- Location: LCCOMB_X49_Y35_N12
\u_7seg|Mux18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux18~0_combout\ = (\u_7seg|bcd_val[10]~7_combout\ & (\u_7seg|bcd_val[11]~8_combout\ & ((\u_7seg|bcd_val[8]~5_combout\) # (\u_7seg|bcd_val[9]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd_val[8]~5_combout\,
	datab => \u_7seg|bcd_val[10]~7_combout\,
	datac => \u_7seg|bcd_val[11]~8_combout\,
	datad => \u_7seg|bcd_val[9]~6_combout\,
	combout => \u_7seg|Mux18~0_combout\);

-- Location: FF_X49_Y35_N13
\u_7seg|seg_com_data[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|Mux18~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[2][2]~q\);

-- Location: LCCOMB_X51_Y34_N0
\u_7seg|Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux11~0_combout\ = (\u_7seg|bcd_val[15]~12_combout\ & (\u_7seg|bcd_val[14]~11_combout\ & ((\u_7seg|bcd_val[13]~10_combout\) # (\u_7seg|bcd_val[12]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd_val[13]~10_combout\,
	datab => \u_7seg|bcd_val[15]~12_combout\,
	datac => \u_7seg|bcd_val[14]~11_combout\,
	datad => \u_7seg|bcd_val[12]~9_combout\,
	combout => \u_7seg|Mux11~0_combout\);

-- Location: FF_X51_Y34_N1
\u_7seg|seg_com_data[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|Mux11~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[3][2]~q\);

-- Location: LCCOMB_X49_Y35_N22
\u_7seg|Mux32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux32~0_combout\ = (\u_7seg|bcd_val[3]~15_combout\ & (\u_7seg|bcd_val[2]~14_combout\ & ((!\u_7seg|bcd_val[1]~13_combout\) # (!\u_7seg|current_val[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|current_val[0]~14_combout\,
	datab => \u_7seg|bcd_val[3]~15_combout\,
	datac => \u_7seg|bcd_val[1]~13_combout\,
	datad => \u_7seg|bcd_val[2]~14_combout\,
	combout => \u_7seg|Mux32~0_combout\);

-- Location: FF_X49_Y35_N23
\u_7seg|seg_com_data[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|Mux32~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[0][2]~q\);

-- Location: LCCOMB_X48_Y35_N0
\u_7seg|Mux25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux25~0_combout\ = (\u_7seg|bcd_val[6]~18_combout\ & (\u_7seg|bcd_val[7]~19_combout\ & ((\u_7seg|bcd_val[4]~16_combout\) # (\u_7seg|bcd_val[5]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd_val[4]~16_combout\,
	datab => \u_7seg|bcd_val[5]~17_combout\,
	datac => \u_7seg|bcd_val[6]~18_combout\,
	datad => \u_7seg|bcd_val[7]~19_combout\,
	combout => \u_7seg|Mux25~0_combout\);

-- Location: FF_X48_Y35_N1
\u_7seg|seg_com_data[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|Mux25~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[1][2]~q\);

-- Location: LCCOMB_X49_Y35_N0
\u_7seg|Mux40~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux40~5_combout\ = (\u_7seg|seg_com_num\(1) & (((\u_7seg|seg_com_num\(0))))) # (!\u_7seg|seg_com_num\(1) & ((\u_7seg|seg_com_num\(0) & ((!\u_7seg|seg_com_data[1][2]~q\))) # (!\u_7seg|seg_com_num\(0) & (!\u_7seg|seg_com_data[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_data[0][2]~q\,
	datab => \u_7seg|seg_com_num\(1),
	datac => \u_7seg|seg_com_data[1][2]~q\,
	datad => \u_7seg|seg_com_num\(0),
	combout => \u_7seg|Mux40~5_combout\);

-- Location: LCCOMB_X49_Y35_N14
\u_7seg|Mux40~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux40~6_combout\ = (\u_7seg|seg_com_num\(1) & ((\u_7seg|Mux40~5_combout\ & ((!\u_7seg|seg_com_data[3][2]~q\))) # (!\u_7seg|Mux40~5_combout\ & (!\u_7seg|seg_com_data[2][2]~q\)))) # (!\u_7seg|seg_com_num\(1) & (((\u_7seg|Mux40~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_data[2][2]~q\,
	datab => \u_7seg|seg_com_data[3][2]~q\,
	datac => \u_7seg|seg_com_num\(1),
	datad => \u_7seg|Mux40~5_combout\,
	combout => \u_7seg|Mux40~6_combout\);

-- Location: LCCOMB_X51_Y35_N22
\u_7seg|Mux40~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux40~7_combout\ = (\u_7seg|Mux40~4_combout\) # ((\u_7seg|Mux40~8_combout\) # ((!\u_7seg|Mux39~0_combout\ & \u_7seg|Mux40~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|Mux40~4_combout\,
	datab => \u_7seg|Mux40~8_combout\,
	datac => \u_7seg|Mux39~0_combout\,
	datad => \u_7seg|Mux40~6_combout\,
	combout => \u_7seg|Mux40~7_combout\);

-- Location: FF_X51_Y35_N15
\u_7seg|seg_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_7seg|counter[10]~clkctrl_outclk\,
	asdata => \u_7seg|Mux40~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_data\(2));

-- Location: LCCOMB_X51_Y35_N28
\u_7seg|Mux42~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux42~7_combout\ = (\u_7seg|seg_com_num\(0)) # (!\u_7seg|seg_com_data[0][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_num\(0),
	datad => \u_7seg|seg_com_data[0][7]~q\,
	combout => \u_7seg|Mux42~7_combout\);

-- Location: LCCOMB_X46_Y34_N0
\u_7seg|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux3~0_combout\ = (!\u_7seg|bcd_val[19]~4_combout\ & ((\u_7seg|bcd_val[16]~0_combout\ & (\u_7seg|bcd_val[17]~2_combout\ & \u_7seg|bcd_val[18]~3_combout\)) # (!\u_7seg|bcd_val[16]~0_combout\ & (\u_7seg|bcd_val[17]~2_combout\ $ 
-- (\u_7seg|bcd_val[18]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd_val[16]~0_combout\,
	datab => \u_7seg|bcd_val[17]~2_combout\,
	datac => \u_7seg|bcd_val[18]~3_combout\,
	datad => \u_7seg|bcd_val[19]~4_combout\,
	combout => \u_7seg|Mux3~0_combout\);

-- Location: FF_X46_Y34_N1
\u_7seg|seg_com_data[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|Mux3~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[4][3]~q\);

-- Location: LCCOMB_X49_Y35_N26
\u_7seg|Mux39~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux39~3_combout\ = (\u_7seg|Mux39~0_combout\ & (((!\u_7seg|Decoder0~0_combout\)) # (!\u_7seg|seg_com_data[0][7]~q\))) # (!\u_7seg|Mux39~0_combout\ & (((!\u_7seg|seg_com_data[4][3]~q\ & \u_7seg|Decoder0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_data[0][7]~q\,
	datab => \u_7seg|seg_com_data[4][3]~q\,
	datac => \u_7seg|Mux39~0_combout\,
	datad => \u_7seg|Decoder0~0_combout\,
	combout => \u_7seg|Mux39~3_combout\);

-- Location: LCCOMB_X51_Y34_N8
\u_7seg|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux10~0_combout\ = (\u_7seg|bcd_val[13]~10_combout\ & ((\u_7seg|bcd_val[14]~11_combout\ & ((!\u_7seg|bcd_val[12]~9_combout\))) # (!\u_7seg|bcd_val[14]~11_combout\ & (\u_7seg|bcd_val[15]~12_combout\ & \u_7seg|bcd_val[12]~9_combout\)))) # 
-- (!\u_7seg|bcd_val[13]~10_combout\ & (!\u_7seg|bcd_val[15]~12_combout\ & (\u_7seg|bcd_val[14]~11_combout\ $ (!\u_7seg|bcd_val[12]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd_val[13]~10_combout\,
	datab => \u_7seg|bcd_val[15]~12_combout\,
	datac => \u_7seg|bcd_val[14]~11_combout\,
	datad => \u_7seg|bcd_val[12]~9_combout\,
	combout => \u_7seg|Mux10~0_combout\);

-- Location: FF_X51_Y34_N9
\u_7seg|seg_com_data[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|Mux10~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[3][3]~q\);

-- Location: LCCOMB_X49_Y35_N8
\u_7seg|Mux17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux17~0_combout\ = (\u_7seg|bcd_val[9]~6_combout\ & ((\u_7seg|bcd_val[8]~5_combout\ & (!\u_7seg|bcd_val[10]~7_combout\ & \u_7seg|bcd_val[11]~8_combout\)) # (!\u_7seg|bcd_val[8]~5_combout\ & (\u_7seg|bcd_val[10]~7_combout\)))) # 
-- (!\u_7seg|bcd_val[9]~6_combout\ & (!\u_7seg|bcd_val[11]~8_combout\ & (\u_7seg|bcd_val[8]~5_combout\ $ (!\u_7seg|bcd_val[10]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd_val[8]~5_combout\,
	datab => \u_7seg|bcd_val[10]~7_combout\,
	datac => \u_7seg|bcd_val[11]~8_combout\,
	datad => \u_7seg|bcd_val[9]~6_combout\,
	combout => \u_7seg|Mux17~0_combout\);

-- Location: FF_X49_Y35_N9
\u_7seg|seg_com_data[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|Mux17~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[2][3]~q\);

-- Location: LCCOMB_X48_Y35_N2
\u_7seg|Mux24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux24~0_combout\ = (\u_7seg|bcd_val[5]~17_combout\ & ((\u_7seg|bcd_val[4]~16_combout\ & (!\u_7seg|bcd_val[6]~18_combout\ & \u_7seg|bcd_val[7]~19_combout\)) # (!\u_7seg|bcd_val[4]~16_combout\ & (\u_7seg|bcd_val[6]~18_combout\)))) # 
-- (!\u_7seg|bcd_val[5]~17_combout\ & (!\u_7seg|bcd_val[7]~19_combout\ & (\u_7seg|bcd_val[4]~16_combout\ $ (!\u_7seg|bcd_val[6]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd_val[4]~16_combout\,
	datab => \u_7seg|bcd_val[5]~17_combout\,
	datac => \u_7seg|bcd_val[6]~18_combout\,
	datad => \u_7seg|bcd_val[7]~19_combout\,
	combout => \u_7seg|Mux24~0_combout\);

-- Location: FF_X48_Y35_N3
\u_7seg|seg_com_data[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|Mux24~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[1][3]~q\);

-- Location: LCCOMB_X44_Y35_N16
\u_7seg|Mux31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux31~0_combout\ = (\u_7seg|bcd_val[1]~13_combout\ & (!\u_7seg|bcd_val[3]~15_combout\ & (\u_7seg|bcd_val[2]~14_combout\ $ (\u_7seg|current_val[0]~14_combout\)))) # (!\u_7seg|bcd_val[1]~13_combout\ & ((\u_7seg|bcd_val[2]~14_combout\ & 
-- ((\u_7seg|current_val[0]~14_combout\))) # (!\u_7seg|bcd_val[2]~14_combout\ & (\u_7seg|bcd_val[3]~15_combout\ & !\u_7seg|current_val[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd_val[2]~14_combout\,
	datab => \u_7seg|bcd_val[3]~15_combout\,
	datac => \u_7seg|current_val[0]~14_combout\,
	datad => \u_7seg|bcd_val[1]~13_combout\,
	combout => \u_7seg|Mux31~0_combout\);

-- Location: FF_X44_Y35_N17
\u_7seg|seg_com_data[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|Mux31~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[0][3]~q\);

-- Location: LCCOMB_X49_Y35_N2
\u_7seg|Mux39~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux39~1_combout\ = (\u_7seg|seg_com_num\(0) & (((\u_7seg|seg_com_num\(1))) # (!\u_7seg|seg_com_data[1][3]~q\))) # (!\u_7seg|seg_com_num\(0) & (((!\u_7seg|seg_com_num\(1) & !\u_7seg|seg_com_data[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_num\(0),
	datab => \u_7seg|seg_com_data[1][3]~q\,
	datac => \u_7seg|seg_com_num\(1),
	datad => \u_7seg|seg_com_data[0][3]~q\,
	combout => \u_7seg|Mux39~1_combout\);

-- Location: LCCOMB_X49_Y35_N24
\u_7seg|Mux39~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux39~2_combout\ = (\u_7seg|seg_com_num\(1) & ((\u_7seg|Mux39~1_combout\ & (!\u_7seg|seg_com_data[3][3]~q\)) # (!\u_7seg|Mux39~1_combout\ & ((!\u_7seg|seg_com_data[2][3]~q\))))) # (!\u_7seg|seg_com_num\(1) & (((\u_7seg|Mux39~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_data[3][3]~q\,
	datab => \u_7seg|seg_com_data[2][3]~q\,
	datac => \u_7seg|seg_com_num\(1),
	datad => \u_7seg|Mux39~1_combout\,
	combout => \u_7seg|Mux39~2_combout\);

-- Location: LCCOMB_X49_Y35_N18
\u_7seg|Mux39~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux39~4_combout\ = (\u_7seg|Decoder0~0_combout\ & (((\u_7seg|Mux39~3_combout\)))) # (!\u_7seg|Decoder0~0_combout\ & ((\u_7seg|Mux39~3_combout\ & (\u_7seg|Mux42~7_combout\)) # (!\u_7seg|Mux39~3_combout\ & ((\u_7seg|Mux39~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|Mux42~7_combout\,
	datab => \u_7seg|Decoder0~0_combout\,
	datac => \u_7seg|Mux39~3_combout\,
	datad => \u_7seg|Mux39~2_combout\,
	combout => \u_7seg|Mux39~4_combout\);

-- Location: LCCOMB_X49_Y35_N16
\u_7seg|seg_data[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|seg_data[3]~feeder_combout\ = \u_7seg|Mux39~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_7seg|Mux39~4_combout\,
	combout => \u_7seg|seg_data[3]~feeder_combout\);

-- Location: FF_X49_Y35_N17
\u_7seg|seg_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_7seg|counter[10]~clkctrl_outclk\,
	d => \u_7seg|seg_data[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_data\(3));

-- Location: LCCOMB_X46_Y34_N10
\u_7seg|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux2~0_combout\ = (\u_7seg|bcd_val[17]~2_combout\ $ (!\u_7seg|bcd_val[18]~3_combout\)) # (!\u_7seg|bcd_val[16]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd_val[16]~0_combout\,
	datac => \u_7seg|bcd_val[17]~2_combout\,
	datad => \u_7seg|bcd_val[18]~3_combout\,
	combout => \u_7seg|Mux2~0_combout\);

-- Location: FF_X46_Y34_N11
\u_7seg|seg_com_data[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|Mux2~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[4][4]~q\);

-- Location: LCCOMB_X46_Y35_N22
\u_7seg|Mux42~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux42~8_combout\ = (\u_7seg|seg_com_num\(0) & ((!\u_7seg|seg_com_data[0][7]~q\))) # (!\u_7seg|seg_com_num\(0) & (!\u_7seg|seg_com_data[4][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_7seg|seg_com_num\(0),
	datac => \u_7seg|seg_com_data[4][4]~q\,
	datad => \u_7seg|seg_com_data[0][7]~q\,
	combout => \u_7seg|Mux42~8_combout\);

-- Location: LCCOMB_X48_Y35_N24
\u_7seg|Mux23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux23~0_combout\ = (\u_7seg|bcd_val[5]~17_combout\ & ((\u_7seg|bcd_val[4]~16_combout\ & (!\u_7seg|bcd_val[6]~18_combout\)) # (!\u_7seg|bcd_val[4]~16_combout\ & ((!\u_7seg|bcd_val[7]~19_combout\))))) # (!\u_7seg|bcd_val[5]~17_combout\ & 
-- ((\u_7seg|bcd_val[6]~18_combout\ & ((!\u_7seg|bcd_val[7]~19_combout\))) # (!\u_7seg|bcd_val[6]~18_combout\ & (!\u_7seg|bcd_val[4]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd_val[4]~16_combout\,
	datab => \u_7seg|bcd_val[6]~18_combout\,
	datac => \u_7seg|bcd_val[5]~17_combout\,
	datad => \u_7seg|bcd_val[7]~19_combout\,
	combout => \u_7seg|Mux23~0_combout\);

-- Location: FF_X48_Y35_N25
\u_7seg|seg_com_data[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|Mux23~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[1][4]~q\);

-- Location: LCCOMB_X43_Y35_N22
\u_7seg|Mux30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux30~0_combout\ = (\u_7seg|bcd_val[3]~15_combout\ & (!\u_7seg|bcd_val[2]~14_combout\ & (\u_7seg|current_val[0]~14_combout\ $ (!\u_7seg|bcd_val[1]~13_combout\)))) # (!\u_7seg|bcd_val[3]~15_combout\ & ((\u_7seg|current_val[0]~14_combout\) # 
-- (\u_7seg|bcd_val[2]~14_combout\ $ (!\u_7seg|bcd_val[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|current_val[0]~14_combout\,
	datab => \u_7seg|bcd_val[3]~15_combout\,
	datac => \u_7seg|bcd_val[2]~14_combout\,
	datad => \u_7seg|bcd_val[1]~13_combout\,
	combout => \u_7seg|Mux30~0_combout\);

-- Location: FF_X43_Y35_N23
\u_7seg|seg_com_data[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|Mux30~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[0][4]~q\);

-- Location: LCCOMB_X46_Y35_N26
\u_7seg|Mux42~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux42~10_combout\ = (\u_7seg|seg_com_num\(0) & (!\u_7seg|seg_com_data[1][4]~q\)) # (!\u_7seg|seg_com_num\(0) & ((!\u_7seg|seg_com_data[0][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_data[1][4]~q\,
	datac => \u_7seg|seg_com_num\(0),
	datad => \u_7seg|seg_com_data[0][4]~q\,
	combout => \u_7seg|Mux42~10_combout\);

-- Location: LCCOMB_X49_Y35_N28
\u_7seg|Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux16~0_combout\ = (\u_7seg|bcd_val[11]~8_combout\ & (!\u_7seg|bcd_val[10]~7_combout\ & (\u_7seg|bcd_val[8]~5_combout\ $ (!\u_7seg|bcd_val[9]~6_combout\)))) # (!\u_7seg|bcd_val[11]~8_combout\ & ((\u_7seg|bcd_val[10]~7_combout\ $ 
-- (\u_7seg|bcd_val[9]~6_combout\)) # (!\u_7seg|bcd_val[8]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd_val[8]~5_combout\,
	datab => \u_7seg|bcd_val[10]~7_combout\,
	datac => \u_7seg|bcd_val[11]~8_combout\,
	datad => \u_7seg|bcd_val[9]~6_combout\,
	combout => \u_7seg|Mux16~0_combout\);

-- Location: FF_X49_Y35_N29
\u_7seg|seg_com_data[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|Mux16~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[2][4]~q\);

-- Location: LCCOMB_X50_Y34_N0
\u_7seg|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux9~0_combout\ = (\u_7seg|bcd_val[15]~12_combout\ & (!\u_7seg|bcd_val[14]~11_combout\ & (\u_7seg|bcd_val[13]~10_combout\ $ (!\u_7seg|bcd_val[12]~9_combout\)))) # (!\u_7seg|bcd_val[15]~12_combout\ & ((\u_7seg|bcd_val[14]~11_combout\ $ 
-- (\u_7seg|bcd_val[13]~10_combout\)) # (!\u_7seg|bcd_val[12]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd_val[15]~12_combout\,
	datab => \u_7seg|bcd_val[14]~11_combout\,
	datac => \u_7seg|bcd_val[13]~10_combout\,
	datad => \u_7seg|bcd_val[12]~9_combout\,
	combout => \u_7seg|Mux9~0_combout\);

-- Location: FF_X50_Y34_N1
\u_7seg|seg_com_data[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|Mux9~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[3][4]~q\);

-- Location: LCCOMB_X46_Y35_N20
\u_7seg|Mux42~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux42~9_combout\ = (\u_7seg|seg_com_num\(0) & ((!\u_7seg|seg_com_data[3][4]~q\))) # (!\u_7seg|seg_com_num\(0) & (!\u_7seg|seg_com_data[2][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_data[2][4]~q\,
	datac => \u_7seg|seg_com_num\(0),
	datad => \u_7seg|seg_com_data[3][4]~q\,
	combout => \u_7seg|Mux42~9_combout\);

-- Location: LCCOMB_X46_Y35_N28
\u_7seg|Mux38~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux38~0_combout\ = (\u_7seg|seg_com_num\(2) & (\u_7seg|seg_com_num\(1))) # (!\u_7seg|seg_com_num\(2) & ((\u_7seg|seg_com_num\(1) & ((\u_7seg|Mux42~9_combout\))) # (!\u_7seg|seg_com_num\(1) & (\u_7seg|Mux42~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_num\(2),
	datab => \u_7seg|seg_com_num\(1),
	datac => \u_7seg|Mux42~10_combout\,
	datad => \u_7seg|Mux42~9_combout\,
	combout => \u_7seg|Mux38~0_combout\);

-- Location: LCCOMB_X46_Y35_N0
\u_7seg|Mux38~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux38~1_combout\ = (\u_7seg|seg_com_num\(2) & ((\u_7seg|Mux38~0_combout\ & (!\u_7seg|seg_com_data[0][7]~q\)) # (!\u_7seg|Mux38~0_combout\ & ((\u_7seg|Mux42~8_combout\))))) # (!\u_7seg|seg_com_num\(2) & (((\u_7seg|Mux38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_num\(2),
	datab => \u_7seg|seg_com_data[0][7]~q\,
	datac => \u_7seg|Mux42~8_combout\,
	datad => \u_7seg|Mux38~0_combout\,
	combout => \u_7seg|Mux38~1_combout\);

-- Location: LCCOMB_X46_Y35_N24
\u_7seg|seg_data[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|seg_data[4]~feeder_combout\ = \u_7seg|Mux38~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_7seg|Mux38~1_combout\,
	combout => \u_7seg|seg_data[4]~feeder_combout\);

-- Location: FF_X46_Y35_N25
\u_7seg|seg_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_7seg|counter[10]~clkctrl_outclk\,
	d => \u_7seg|seg_data[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_data\(4));

-- Location: LCCOMB_X46_Y34_N16
\u_7seg|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux1~0_combout\ = (!\u_7seg|bcd_val[19]~4_combout\ & ((\u_7seg|bcd_val[18]~3_combout\ & (!\u_7seg|bcd_val[16]~0_combout\ & !\u_7seg|bcd_val[17]~2_combout\)) # (!\u_7seg|bcd_val[18]~3_combout\ & ((!\u_7seg|bcd_val[17]~2_combout\) # 
-- (!\u_7seg|bcd_val[16]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd_val[18]~3_combout\,
	datab => \u_7seg|bcd_val[16]~0_combout\,
	datac => \u_7seg|bcd_val[17]~2_combout\,
	datad => \u_7seg|bcd_val[19]~4_combout\,
	combout => \u_7seg|Mux1~0_combout\);

-- Location: FF_X46_Y34_N17
\u_7seg|seg_com_data[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|Mux1~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[4][5]~q\);

-- Location: LCCOMB_X49_Y35_N6
\u_7seg|Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux15~0_combout\ = (\u_7seg|bcd_val[8]~5_combout\ & (!\u_7seg|bcd_val[10]~7_combout\ & (!\u_7seg|bcd_val[11]~8_combout\ & \u_7seg|bcd_val[9]~6_combout\))) # (!\u_7seg|bcd_val[8]~5_combout\ & (\u_7seg|bcd_val[11]~8_combout\ $ 
-- (((\u_7seg|bcd_val[9]~6_combout\) # (!\u_7seg|bcd_val[10]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd_val[8]~5_combout\,
	datab => \u_7seg|bcd_val[10]~7_combout\,
	datac => \u_7seg|bcd_val[11]~8_combout\,
	datad => \u_7seg|bcd_val[9]~6_combout\,
	combout => \u_7seg|Mux15~0_combout\);

-- Location: FF_X49_Y35_N7
\u_7seg|seg_com_data[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|Mux15~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[2][5]~q\);

-- Location: LCCOMB_X51_Y34_N24
\u_7seg|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux8~0_combout\ = (\u_7seg|bcd_val[13]~10_combout\ & (!\u_7seg|bcd_val[15]~12_combout\ & ((!\u_7seg|bcd_val[12]~9_combout\) # (!\u_7seg|bcd_val[14]~11_combout\)))) # (!\u_7seg|bcd_val[13]~10_combout\ & (!\u_7seg|bcd_val[12]~9_combout\ & 
-- (\u_7seg|bcd_val[15]~12_combout\ $ (!\u_7seg|bcd_val[14]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd_val[13]~10_combout\,
	datab => \u_7seg|bcd_val[15]~12_combout\,
	datac => \u_7seg|bcd_val[14]~11_combout\,
	datad => \u_7seg|bcd_val[12]~9_combout\,
	combout => \u_7seg|Mux8~0_combout\);

-- Location: FF_X51_Y34_N25
\u_7seg|seg_com_data[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|Mux8~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[3][5]~q\);

-- Location: LCCOMB_X50_Y35_N30
\u_7seg|Mux29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux29~0_combout\ = (\u_7seg|current_val[0]~14_combout\ & (\u_7seg|bcd_val[3]~15_combout\ $ (((!\u_7seg|bcd_val[2]~14_combout\) # (!\u_7seg|bcd_val[1]~13_combout\))))) # (!\u_7seg|current_val[0]~14_combout\ & (!\u_7seg|bcd_val[3]~15_combout\ & 
-- (!\u_7seg|bcd_val[1]~13_combout\ & !\u_7seg|bcd_val[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd_val[3]~15_combout\,
	datab => \u_7seg|current_val[0]~14_combout\,
	datac => \u_7seg|bcd_val[1]~13_combout\,
	datad => \u_7seg|bcd_val[2]~14_combout\,
	combout => \u_7seg|Mux29~0_combout\);

-- Location: FF_X50_Y35_N31
\u_7seg|seg_com_data[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|Mux29~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[0][5]~q\);

-- Location: LCCOMB_X48_Y35_N10
\u_7seg|Mux22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux22~0_combout\ = (\u_7seg|bcd_val[4]~16_combout\ & (!\u_7seg|bcd_val[7]~19_combout\ & (!\u_7seg|bcd_val[6]~18_combout\ & \u_7seg|bcd_val[5]~17_combout\))) # (!\u_7seg|bcd_val[4]~16_combout\ & (\u_7seg|bcd_val[7]~19_combout\ $ 
-- (((\u_7seg|bcd_val[5]~17_combout\) # (!\u_7seg|bcd_val[6]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd_val[7]~19_combout\,
	datab => \u_7seg|bcd_val[4]~16_combout\,
	datac => \u_7seg|bcd_val[6]~18_combout\,
	datad => \u_7seg|bcd_val[5]~17_combout\,
	combout => \u_7seg|Mux22~0_combout\);

-- Location: FF_X48_Y35_N11
\u_7seg|seg_com_data[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|Mux22~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[1][5]~q\);

-- Location: LCCOMB_X50_Y35_N28
\u_7seg|Mux37~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux37~0_combout\ = (\u_7seg|seg_com_num\(1) & (\u_7seg|seg_com_num\(0))) # (!\u_7seg|seg_com_num\(1) & ((\u_7seg|seg_com_num\(0) & ((!\u_7seg|seg_com_data[1][5]~q\))) # (!\u_7seg|seg_com_num\(0) & (!\u_7seg|seg_com_data[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_num\(1),
	datab => \u_7seg|seg_com_num\(0),
	datac => \u_7seg|seg_com_data[0][5]~q\,
	datad => \u_7seg|seg_com_data[1][5]~q\,
	combout => \u_7seg|Mux37~0_combout\);

-- Location: LCCOMB_X50_Y35_N2
\u_7seg|Mux37~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux37~1_combout\ = (\u_7seg|seg_com_num\(1) & ((\u_7seg|Mux37~0_combout\ & ((!\u_7seg|seg_com_data[3][5]~q\))) # (!\u_7seg|Mux37~0_combout\ & (!\u_7seg|seg_com_data[2][5]~q\)))) # (!\u_7seg|seg_com_num\(1) & (((\u_7seg|Mux37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_num\(1),
	datab => \u_7seg|seg_com_data[2][5]~q\,
	datac => \u_7seg|seg_com_data[3][5]~q\,
	datad => \u_7seg|Mux37~0_combout\,
	combout => \u_7seg|Mux37~1_combout\);

-- Location: LCCOMB_X50_Y35_N20
\u_7seg|Mux37~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux37~2_combout\ = (\u_7seg|Decoder0~0_combout\ & (!\u_7seg|seg_com_data[4][5]~q\ & (!\u_7seg|Mux39~0_combout\))) # (!\u_7seg|Decoder0~0_combout\ & (((\u_7seg|Mux39~0_combout\) # (\u_7seg|Mux37~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_data[4][5]~q\,
	datab => \u_7seg|Decoder0~0_combout\,
	datac => \u_7seg|Mux39~0_combout\,
	datad => \u_7seg|Mux37~1_combout\,
	combout => \u_7seg|Mux37~2_combout\);

-- Location: LCCOMB_X50_Y35_N10
\u_7seg|Mux37~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux37~3_combout\ = (\u_7seg|Mux39~0_combout\ & ((\u_7seg|Mux37~2_combout\ & ((\u_7seg|Mux42~6_combout\))) # (!\u_7seg|Mux37~2_combout\ & (!\u_7seg|seg_com_data[0][7]~q\)))) # (!\u_7seg|Mux39~0_combout\ & (((\u_7seg|Mux37~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|Mux39~0_combout\,
	datab => \u_7seg|seg_com_data[0][7]~q\,
	datac => \u_7seg|Mux42~6_combout\,
	datad => \u_7seg|Mux37~2_combout\,
	combout => \u_7seg|Mux37~3_combout\);

-- Location: LCCOMB_X50_Y35_N18
\u_7seg|seg_data[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|seg_data[5]~feeder_combout\ = \u_7seg|Mux37~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_7seg|Mux37~3_combout\,
	combout => \u_7seg|seg_data[5]~feeder_combout\);

-- Location: FF_X50_Y35_N19
\u_7seg|seg_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_7seg|counter[10]~clkctrl_outclk\,
	d => \u_7seg|seg_data[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_data\(5));

-- Location: LCCOMB_X46_Y34_N18
\u_7seg|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux0~0_combout\ = (!\u_7seg|bcd_val[19]~4_combout\ & ((\u_7seg|bcd_val[17]~2_combout\ & ((!\u_7seg|bcd_val[18]~3_combout\))) # (!\u_7seg|bcd_val[17]~2_combout\ & (!\u_7seg|bcd_val[16]~0_combout\ & \u_7seg|bcd_val[18]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd_val[16]~0_combout\,
	datab => \u_7seg|bcd_val[17]~2_combout\,
	datac => \u_7seg|bcd_val[18]~3_combout\,
	datad => \u_7seg|bcd_val[19]~4_combout\,
	combout => \u_7seg|Mux0~0_combout\);

-- Location: FF_X46_Y34_N19
\u_7seg|seg_com_data[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|Mux0~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[4][6]~q\);

-- Location: LCCOMB_X50_Y35_N26
\u_7seg|Mux36~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux36~2_combout\ = (\u_7seg|Mux39~0_combout\ & (((!\u_7seg|Decoder0~0_combout\)) # (!\u_7seg|seg_com_data[0][7]~q\))) # (!\u_7seg|Mux39~0_combout\ & (((\u_7seg|Decoder0~0_combout\ & !\u_7seg|seg_com_data[4][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_data[0][7]~q\,
	datab => \u_7seg|Mux39~0_combout\,
	datac => \u_7seg|Decoder0~0_combout\,
	datad => \u_7seg|seg_com_data[4][6]~q\,
	combout => \u_7seg|Mux36~2_combout\);

-- Location: LCCOMB_X51_Y34_N30
\u_7seg|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux7~0_combout\ = (\u_7seg|bcd_val[12]~9_combout\ & (!\u_7seg|bcd_val[13]~10_combout\ & (\u_7seg|bcd_val[15]~12_combout\ $ (!\u_7seg|bcd_val[14]~11_combout\)))) # (!\u_7seg|bcd_val[12]~9_combout\ & (!\u_7seg|bcd_val[15]~12_combout\ & 
-- (\u_7seg|bcd_val[13]~10_combout\ $ (!\u_7seg|bcd_val[14]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd_val[13]~10_combout\,
	datab => \u_7seg|bcd_val[15]~12_combout\,
	datac => \u_7seg|bcd_val[14]~11_combout\,
	datad => \u_7seg|bcd_val[12]~9_combout\,
	combout => \u_7seg|Mux7~0_combout\);

-- Location: FF_X51_Y34_N31
\u_7seg|seg_com_data[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|Mux7~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[3][6]~q\);

-- Location: LCCOMB_X49_Y35_N4
\u_7seg|Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux14~0_combout\ = (\u_7seg|bcd_val[8]~5_combout\ & (!\u_7seg|bcd_val[9]~6_combout\ & (\u_7seg|bcd_val[10]~7_combout\ $ (!\u_7seg|bcd_val[11]~8_combout\)))) # (!\u_7seg|bcd_val[8]~5_combout\ & (!\u_7seg|bcd_val[11]~8_combout\ & 
-- (\u_7seg|bcd_val[10]~7_combout\ $ (!\u_7seg|bcd_val[9]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd_val[8]~5_combout\,
	datab => \u_7seg|bcd_val[10]~7_combout\,
	datac => \u_7seg|bcd_val[11]~8_combout\,
	datad => \u_7seg|bcd_val[9]~6_combout\,
	combout => \u_7seg|Mux14~0_combout\);

-- Location: FF_X49_Y35_N5
\u_7seg|seg_com_data[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|Mux14~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[2][6]~q\);

-- Location: LCCOMB_X48_Y35_N16
\u_7seg|Mux21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux21~0_combout\ = (\u_7seg|bcd_val[4]~16_combout\ & (!\u_7seg|bcd_val[5]~17_combout\ & (\u_7seg|bcd_val[6]~18_combout\ $ (!\u_7seg|bcd_val[7]~19_combout\)))) # (!\u_7seg|bcd_val[4]~16_combout\ & (!\u_7seg|bcd_val[7]~19_combout\ & 
-- (\u_7seg|bcd_val[6]~18_combout\ $ (!\u_7seg|bcd_val[5]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|bcd_val[4]~16_combout\,
	datab => \u_7seg|bcd_val[6]~18_combout\,
	datac => \u_7seg|bcd_val[5]~17_combout\,
	datad => \u_7seg|bcd_val[7]~19_combout\,
	combout => \u_7seg|Mux21~0_combout\);

-- Location: FF_X48_Y35_N17
\u_7seg|seg_com_data[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|Mux21~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[1][6]~q\);

-- Location: LCCOMB_X43_Y35_N24
\u_7seg|Mux28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux28~0_combout\ = (\u_7seg|current_val[0]~14_combout\ & (!\u_7seg|bcd_val[3]~15_combout\ & (\u_7seg|bcd_val[2]~14_combout\ $ (\u_7seg|bcd_val[1]~13_combout\)))) # (!\u_7seg|current_val[0]~14_combout\ & (\u_7seg|bcd_val[1]~13_combout\ & 
-- (\u_7seg|bcd_val[3]~15_combout\ $ (!\u_7seg|bcd_val[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|current_val[0]~14_combout\,
	datab => \u_7seg|bcd_val[3]~15_combout\,
	datac => \u_7seg|bcd_val[2]~14_combout\,
	datad => \u_7seg|bcd_val[1]~13_combout\,
	combout => \u_7seg|Mux28~0_combout\);

-- Location: FF_X43_Y35_N25
\u_7seg|seg_com_data[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_7seg|Mux28~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com_data[0][6]~q\);

-- Location: LCCOMB_X51_Y34_N10
\u_7seg|Mux36~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux36~0_combout\ = (\u_7seg|seg_com_num\(0) & ((\u_7seg|seg_com_num\(1)) # ((!\u_7seg|seg_com_data[1][6]~q\)))) # (!\u_7seg|seg_com_num\(0) & (!\u_7seg|seg_com_num\(1) & ((!\u_7seg|seg_com_data[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_num\(0),
	datab => \u_7seg|seg_com_num\(1),
	datac => \u_7seg|seg_com_data[1][6]~q\,
	datad => \u_7seg|seg_com_data[0][6]~q\,
	combout => \u_7seg|Mux36~0_combout\);

-- Location: LCCOMB_X51_Y34_N2
\u_7seg|Mux36~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux36~1_combout\ = (\u_7seg|seg_com_num\(1) & ((\u_7seg|Mux36~0_combout\ & (!\u_7seg|seg_com_data[3][6]~q\)) # (!\u_7seg|Mux36~0_combout\ & ((!\u_7seg|seg_com_data[2][6]~q\))))) # (!\u_7seg|seg_com_num\(1) & (((\u_7seg|Mux36~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_data[3][6]~q\,
	datab => \u_7seg|seg_com_num\(1),
	datac => \u_7seg|seg_com_data[2][6]~q\,
	datad => \u_7seg|Mux36~0_combout\,
	combout => \u_7seg|Mux36~1_combout\);

-- Location: LCCOMB_X51_Y34_N18
\u_7seg|Mux36~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Mux36~3_combout\ = (\u_7seg|Decoder0~0_combout\ & (((\u_7seg|Mux36~2_combout\)))) # (!\u_7seg|Decoder0~0_combout\ & ((\u_7seg|Mux36~2_combout\ & (\u_7seg|Mux42~7_combout\)) # (!\u_7seg|Mux36~2_combout\ & ((\u_7seg|Mux36~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|Decoder0~0_combout\,
	datab => \u_7seg|Mux42~7_combout\,
	datac => \u_7seg|Mux36~2_combout\,
	datad => \u_7seg|Mux36~1_combout\,
	combout => \u_7seg|Mux36~3_combout\);

-- Location: LCCOMB_X51_Y34_N12
\u_7seg|seg_data[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|seg_data[6]~feeder_combout\ = \u_7seg|Mux36~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_7seg|Mux36~3_combout\,
	combout => \u_7seg|seg_data[6]~feeder_combout\);

-- Location: FF_X51_Y34_N13
\u_7seg|seg_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_7seg|counter[10]~clkctrl_outclk\,
	d => \u_7seg|seg_data[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_data\(6));

-- Location: LCCOMB_X46_Y35_N18
\u_7seg|seg_data[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|seg_data[7]~0_combout\ = !\u_7seg|seg_com_data[0][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_7seg|seg_com_data[0][7]~q\,
	combout => \u_7seg|seg_data[7]~0_combout\);

-- Location: FF_X46_Y35_N19
\u_7seg|seg_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_7seg|counter[10]~clkctrl_outclk\,
	d => \u_7seg|seg_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_data\(7));

-- Location: FF_X51_Y35_N5
\u_7seg|seg_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_7seg|counter[10]~clkctrl_outclk\,
	d => \u_7seg|Mux42~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_data\(8));

-- Location: FF_X50_Y35_N1
\u_7seg|seg_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_7seg|counter[10]~clkctrl_outclk\,
	d => \u_7seg|Mux41~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_data\(9));

-- Location: FF_X51_Y35_N23
\u_7seg|seg_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_7seg|counter[10]~clkctrl_outclk\,
	d => \u_7seg|Mux40~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_data\(10));

-- Location: FF_X49_Y35_N19
\u_7seg|seg_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_7seg|counter[10]~clkctrl_outclk\,
	d => \u_7seg|Mux39~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_data\(11));

-- Location: FF_X46_Y35_N1
\u_7seg|seg_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_7seg|counter[10]~clkctrl_outclk\,
	d => \u_7seg|Mux38~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_data\(12));

-- Location: FF_X50_Y35_N11
\u_7seg|seg_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_7seg|counter[10]~clkctrl_outclk\,
	d => \u_7seg|Mux37~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_data\(13));

-- Location: FF_X51_Y34_N19
\u_7seg|seg_data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_7seg|counter[10]~clkctrl_outclk\,
	d => \u_7seg|Mux36~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_data\(14));

-- Location: LCCOMB_X51_Y35_N0
\u_7seg|seg_data[15]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|seg_data[15]~1_combout\ = !\u_7seg|seg_com_data[0][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_7seg|seg_com_data[0][7]~q\,
	combout => \u_7seg|seg_data[15]~1_combout\);

-- Location: FF_X51_Y35_N1
\u_7seg|seg_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_7seg|counter[10]~clkctrl_outclk\,
	d => \u_7seg|seg_data[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_data\(15));

-- Location: LCCOMB_X46_Y35_N14
\u_7seg|Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Decoder0~1_combout\ = (\u_7seg|seg_com_num\(2)) # ((\u_7seg|seg_com_num\(0)) # (\u_7seg|seg_com_num\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_num\(2),
	datac => \u_7seg|seg_com_num\(0),
	datad => \u_7seg|seg_com_num\(1),
	combout => \u_7seg|Decoder0~1_combout\);

-- Location: FF_X46_Y35_N15
\u_7seg|seg_com[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_7seg|counter[10]~clkctrl_outclk\,
	d => \u_7seg|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com\(0));

-- Location: LCCOMB_X46_Y35_N4
\u_7seg|Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Decoder0~2_combout\ = (\u_7seg|seg_com_num\(2)) # ((\u_7seg|seg_com_num\(1)) # (!\u_7seg|seg_com_num\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_num\(2),
	datac => \u_7seg|seg_com_num\(0),
	datad => \u_7seg|seg_com_num\(1),
	combout => \u_7seg|Decoder0~2_combout\);

-- Location: FF_X46_Y35_N5
\u_7seg|seg_com[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_7seg|counter[10]~clkctrl_outclk\,
	d => \u_7seg|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com\(1));

-- Location: LCCOMB_X46_Y35_N30
\u_7seg|Decoder0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Decoder0~3_combout\ = (\u_7seg|seg_com_num\(2)) # ((\u_7seg|seg_com_num\(0)) # (!\u_7seg|seg_com_num\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_num\(2),
	datac => \u_7seg|seg_com_num\(0),
	datad => \u_7seg|seg_com_num\(1),
	combout => \u_7seg|Decoder0~3_combout\);

-- Location: FF_X46_Y35_N31
\u_7seg|seg_com[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_7seg|counter[10]~clkctrl_outclk\,
	d => \u_7seg|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com\(2));

-- Location: LCCOMB_X46_Y35_N16
\u_7seg|Decoder0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Decoder0~4_combout\ = (\u_7seg|seg_com_num\(2)) # ((!\u_7seg|seg_com_num\(1)) # (!\u_7seg|seg_com_num\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_num\(2),
	datac => \u_7seg|seg_com_num\(0),
	datad => \u_7seg|seg_com_num\(1),
	combout => \u_7seg|Decoder0~4_combout\);

-- Location: FF_X46_Y35_N17
\u_7seg|seg_com[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_7seg|counter[10]~clkctrl_outclk\,
	d => \u_7seg|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com\(3));

-- Location: LCCOMB_X46_Y35_N10
\u_7seg|Decoder0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Decoder0~5_combout\ = ((\u_7seg|seg_com_num\(0)) # (\u_7seg|seg_com_num\(1))) # (!\u_7seg|seg_com_num\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_num\(2),
	datac => \u_7seg|seg_com_num\(0),
	datad => \u_7seg|seg_com_num\(1),
	combout => \u_7seg|Decoder0~5_combout\);

-- Location: FF_X46_Y35_N11
\u_7seg|seg_com[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_7seg|counter[10]~clkctrl_outclk\,
	d => \u_7seg|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com\(4));

-- Location: LCCOMB_X46_Y35_N12
\u_7seg|Decoder0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Decoder0~6_combout\ = ((\u_7seg|seg_com_num\(1)) # (!\u_7seg|seg_com_num\(0))) # (!\u_7seg|seg_com_num\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_num\(2),
	datac => \u_7seg|seg_com_num\(0),
	datad => \u_7seg|seg_com_num\(1),
	combout => \u_7seg|Decoder0~6_combout\);

-- Location: FF_X46_Y35_N13
\u_7seg|seg_com[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_7seg|counter[10]~clkctrl_outclk\,
	d => \u_7seg|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com\(5));

-- Location: LCCOMB_X46_Y35_N2
\u_7seg|Decoder0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Decoder0~7_combout\ = ((\u_7seg|seg_com_num\(0)) # (!\u_7seg|seg_com_num\(1))) # (!\u_7seg|seg_com_num\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_num\(2),
	datac => \u_7seg|seg_com_num\(0),
	datad => \u_7seg|seg_com_num\(1),
	combout => \u_7seg|Decoder0~7_combout\);

-- Location: FF_X46_Y35_N3
\u_7seg|seg_com[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_7seg|counter[10]~clkctrl_outclk\,
	d => \u_7seg|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com\(6));

-- Location: LCCOMB_X46_Y35_N8
\u_7seg|Decoder0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_7seg|Decoder0~8_combout\ = ((!\u_7seg|seg_com_num\(1)) # (!\u_7seg|seg_com_num\(0))) # (!\u_7seg|seg_com_num\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_7seg|seg_com_num\(2),
	datac => \u_7seg|seg_com_num\(0),
	datad => \u_7seg|seg_com_num\(1),
	combout => \u_7seg|Decoder0~8_combout\);

-- Location: FF_X46_Y35_N9
\u_7seg|seg_com[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_7seg|counter[10]~clkctrl_outclk\,
	d => \u_7seg|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_7seg|seg_com\(7));

-- Location: IOIBUF_X59_Y0_N29
\ALRT~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALRT,
	o => \ALRT~input_o\);

ww_SCL <= \SCL~output_o\;

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

ww_DIN <= \DIN~output_o\;

ww_seg_data(0) <= \seg_data[0]~output_o\;

ww_seg_data(1) <= \seg_data[1]~output_o\;

ww_seg_data(2) <= \seg_data[2]~output_o\;

ww_seg_data(3) <= \seg_data[3]~output_o\;

ww_seg_data(4) <= \seg_data[4]~output_o\;

ww_seg_data(5) <= \seg_data[5]~output_o\;

ww_seg_data(6) <= \seg_data[6]~output_o\;

ww_seg_data(7) <= \seg_data[7]~output_o\;

ww_seg_data(8) <= \seg_data[8]~output_o\;

ww_seg_data(9) <= \seg_data[9]~output_o\;

ww_seg_data(10) <= \seg_data[10]~output_o\;

ww_seg_data(11) <= \seg_data[11]~output_o\;

ww_seg_data(12) <= \seg_data[12]~output_o\;

ww_seg_data(13) <= \seg_data[13]~output_o\;

ww_seg_data(14) <= \seg_data[14]~output_o\;

ww_seg_data(15) <= \seg_data[15]~output_o\;

ww_seg_com(0) <= \seg_com[0]~output_o\;

ww_seg_com(1) <= \seg_com[1]~output_o\;

ww_seg_com(2) <= \seg_com[2]~output_o\;

ww_seg_com(3) <= \seg_com[3]~output_o\;

ww_seg_com(4) <= \seg_com[4]~output_o\;

ww_seg_com(5) <= \seg_com[5]~output_o\;

ww_seg_com(6) <= \seg_com[6]~output_o\;

ww_seg_com(7) <= \seg_com[7]~output_o\;

SDA <= \SDA~output_o\;
END structure;


