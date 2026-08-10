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

-- DATE "07/30/2026 11:02:37"

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

ENTITY 	LED_Matrix_8x8 IS
    PORT (
	clk : IN std_logic;
	rst_n : IN std_logic;
	switch_8bit : IN std_logic_vector(7 DOWNTO 0);
	PB : IN std_logic_vector(3 DOWNTO 0);
	x_axis : IN std_logic_vector(15 DOWNTO 0);
	y_axis : IN std_logic_vector(15 DOWNTO 0);
	stop : IN std_logic;
	DIN : OUT std_logic
	);
END LED_Matrix_8x8;

-- Design Ports Information
-- switch_8bit[2]	=>  Location: PIN_81,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_8bit[3]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_8bit[4]	=>  Location: PIN_82,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_8bit[5]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_8bit[6]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_8bit[7]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB[2]	=>  Location: PIN_214,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB[3]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_149,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_145,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_8bit[1]	=>  Location: PIN_78,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_8bit[0]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB[0]	=>  Location: PIN_185,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB[1]	=>  Location: PIN_164,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[12]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[15]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[13]	=>  Location: PIN_166,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[14]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[3]	=>  Location: PIN_92,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[4]	=>  Location: PIN_184,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[5]	=>  Location: PIN_173,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[6]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[9]	=>  Location: PIN_161,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[7]	=>  Location: PIN_183,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[8]	=>  Location: PIN_160,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[10]	=>  Location: PIN_176,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[11]	=>  Location: PIN_159,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[0]	=>  Location: PIN_169,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[1]	=>  Location: PIN_171,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_axis[2]	=>  Location: PIN_177,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[12]	=>  Location: PIN_194,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[15]	=>  Location: PIN_195,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[13]	=>  Location: PIN_187,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[14]	=>  Location: PIN_207,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[3]	=>  Location: PIN_202,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[4]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[5]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[6]	=>  Location: PIN_196,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[9]	=>  Location: PIN_197,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[7]	=>  Location: PIN_189,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[8]	=>  Location: PIN_188,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[10]	=>  Location: PIN_216,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[11]	=>  Location: PIN_186,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[0]	=>  Location: PIN_201,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[1]	=>  Location: PIN_200,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_axis[2]	=>  Location: PIN_203,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stop	=>  Location: PIN_146,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LED_Matrix_8x8 IS
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
SIGNAL ww_switch_8bit : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_PB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_x_axis : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_y_axis : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_stop : std_logic;
SIGNAL ww_DIN : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \switch_8bit[2]~input_o\ : std_logic;
SIGNAL \switch_8bit[3]~input_o\ : std_logic;
SIGNAL \switch_8bit[4]~input_o\ : std_logic;
SIGNAL \switch_8bit[5]~input_o\ : std_logic;
SIGNAL \switch_8bit[6]~input_o\ : std_logic;
SIGNAL \switch_8bit[7]~input_o\ : std_logic;
SIGNAL \PB[2]~input_o\ : std_logic;
SIGNAL \PB[3]~input_o\ : std_logic;
SIGNAL \DIN~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add11~0_combout\ : std_logic;
SIGNAL \y_axis[12]~input_o\ : std_logic;
SIGNAL \y_axis[15]~input_o\ : std_logic;
SIGNAL \y_axis[14]~input_o\ : std_logic;
SIGNAL \y_axis[13]~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \y_axis[7]~input_o\ : std_logic;
SIGNAL \y_axis[8]~input_o\ : std_logic;
SIGNAL \y_axis[5]~input_o\ : std_logic;
SIGNAL \y_axis[6]~input_o\ : std_logic;
SIGNAL \y_axis[4]~input_o\ : std_logic;
SIGNAL \y_axis[3]~input_o\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \y_axis[9]~input_o\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \y_axis[10]~input_o\ : std_logic;
SIGNAL \y_axis[11]~input_o\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \joy_up_r1~q\ : std_logic;
SIGNAL \joy_up_r2~feeder_combout\ : std_logic;
SIGNAL \joy_up_r2~q\ : std_logic;
SIGNAL \btn_up_pos~0_combout\ : std_logic;
SIGNAL \joy_down_level~4_combout\ : std_logic;
SIGNAL \y_axis[1]~input_o\ : std_logic;
SIGNAL \y_axis[0]~input_o\ : std_logic;
SIGNAL \y_axis[2]~input_o\ : std_logic;
SIGNAL \joy_down_level~1_combout\ : std_logic;
SIGNAL \joy_down_level~2_combout\ : std_logic;
SIGNAL \joy_down_level~0_combout\ : std_logic;
SIGNAL \joy_down_level~3_combout\ : std_logic;
SIGNAL \joy_down_level~5_combout\ : std_logic;
SIGNAL \joy_down_level~6_combout\ : std_logic;
SIGNAL \joy_down_level~7_combout\ : std_logic;
SIGNAL \joy_down_level~8_combout\ : std_logic;
SIGNAL \joy_down_r1~feeder_combout\ : std_logic;
SIGNAL \joy_down_r1~q\ : std_logic;
SIGNAL \joy_down_r2~feeder_combout\ : std_logic;
SIGNAL \joy_down_r2~q\ : std_logic;
SIGNAL \btn_down_pos~0_combout\ : std_logic;
SIGNAL \x_axis[7]~input_o\ : std_logic;
SIGNAL \x_axis[8]~input_o\ : std_logic;
SIGNAL \x_axis[9]~input_o\ : std_logic;
SIGNAL \x_axis[11]~input_o\ : std_logic;
SIGNAL \x_axis[10]~input_o\ : std_logic;
SIGNAL \joy_right_level~0_combout\ : std_logic;
SIGNAL \x_axis[4]~input_o\ : std_logic;
SIGNAL \x_axis[1]~input_o\ : std_logic;
SIGNAL \x_axis[0]~input_o\ : std_logic;
SIGNAL \x_axis[3]~input_o\ : std_logic;
SIGNAL \x_axis[2]~input_o\ : std_logic;
SIGNAL \joy_right_level~1_combout\ : std_logic;
SIGNAL \x_axis[6]~input_o\ : std_logic;
SIGNAL \x_axis[5]~input_o\ : std_logic;
SIGNAL \joy_right_level~2_combout\ : std_logic;
SIGNAL \joy_right_level~3_combout\ : std_logic;
SIGNAL \joy_right_level~6_combout\ : std_logic;
SIGNAL \joy_right_level~5_combout\ : std_logic;
SIGNAL \joy_right_level~7_combout\ : std_logic;
SIGNAL \x_axis[12]~input_o\ : std_logic;
SIGNAL \x_axis[15]~input_o\ : std_logic;
SIGNAL \x_axis[14]~input_o\ : std_logic;
SIGNAL \x_axis[13]~input_o\ : std_logic;
SIGNAL \joy_right_level~4_combout\ : std_logic;
SIGNAL \joy_right_level~8_combout\ : std_logic;
SIGNAL \joy_right_r1~q\ : std_logic;
SIGNAL \joy_right_r2~q\ : std_logic;
SIGNAL \btn_right_pos~0_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan3~3_combout\ : std_logic;
SIGNAL \joy_left_r1~q\ : std_logic;
SIGNAL \joy_left_r2~q\ : std_logic;
SIGNAL \btn_left_pos~0_combout\ : std_logic;
SIGNAL \always2~7_combout\ : std_logic;
SIGNAL \switch_8bit[0]~input_o\ : std_logic;
SIGNAL \switch_8bit[1]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \PB[0]~input_o\ : std_logic;
SIGNAL \PB[1]~input_o\ : std_logic;
SIGNAL \PB_buffer~0_combout\ : std_logic;
SIGNAL \timer_cnt[0]~24_combout\ : std_logic;
SIGNAL \timer_cnt[15]~26_combout\ : std_logic;
SIGNAL \timer_cnt[15]~27_combout\ : std_logic;
SIGNAL \timer_cnt[0]~25\ : std_logic;
SIGNAL \timer_cnt[1]~28_combout\ : std_logic;
SIGNAL \timer_cnt[1]~29\ : std_logic;
SIGNAL \timer_cnt[2]~30_combout\ : std_logic;
SIGNAL \timer_cnt[2]~31\ : std_logic;
SIGNAL \timer_cnt[3]~32_combout\ : std_logic;
SIGNAL \timer_cnt[3]~33\ : std_logic;
SIGNAL \timer_cnt[4]~34_combout\ : std_logic;
SIGNAL \timer_cnt[4]~35\ : std_logic;
SIGNAL \timer_cnt[5]~36_combout\ : std_logic;
SIGNAL \timer_cnt[5]~37\ : std_logic;
SIGNAL \timer_cnt[6]~38_combout\ : std_logic;
SIGNAL \timer_cnt[6]~39\ : std_logic;
SIGNAL \timer_cnt[7]~40_combout\ : std_logic;
SIGNAL \timer_cnt[7]~41\ : std_logic;
SIGNAL \timer_cnt[8]~42_combout\ : std_logic;
SIGNAL \timer_cnt[8]~43\ : std_logic;
SIGNAL \timer_cnt[9]~44_combout\ : std_logic;
SIGNAL \timer_cnt[9]~45\ : std_logic;
SIGNAL \timer_cnt[10]~46_combout\ : std_logic;
SIGNAL \timer_cnt[10]~feeder_combout\ : std_logic;
SIGNAL \timer_cnt[10]~47\ : std_logic;
SIGNAL \timer_cnt[11]~48_combout\ : std_logic;
SIGNAL \timer_cnt[11]~49\ : std_logic;
SIGNAL \timer_cnt[12]~50_combout\ : std_logic;
SIGNAL \timer_cnt[12]~51\ : std_logic;
SIGNAL \timer_cnt[13]~52_combout\ : std_logic;
SIGNAL \timer_cnt[13]~53\ : std_logic;
SIGNAL \timer_cnt[14]~54_combout\ : std_logic;
SIGNAL \timer_cnt[14]~55\ : std_logic;
SIGNAL \timer_cnt[15]~56_combout\ : std_logic;
SIGNAL \timer_cnt[15]~57\ : std_logic;
SIGNAL \timer_cnt[16]~58_combout\ : std_logic;
SIGNAL \timer_cnt[16]~59\ : std_logic;
SIGNAL \timer_cnt[17]~60_combout\ : std_logic;
SIGNAL \timer_cnt[17]~61\ : std_logic;
SIGNAL \timer_cnt[18]~62_combout\ : std_logic;
SIGNAL \timer_cnt[18]~63\ : std_logic;
SIGNAL \timer_cnt[19]~64_combout\ : std_logic;
SIGNAL \timer_cnt[19]~65\ : std_logic;
SIGNAL \timer_cnt[20]~66_combout\ : std_logic;
SIGNAL \timer_cnt[20]~67\ : std_logic;
SIGNAL \timer_cnt[21]~68_combout\ : std_logic;
SIGNAL \timer_cnt[21]~69\ : std_logic;
SIGNAL \timer_cnt[22]~70_combout\ : std_logic;
SIGNAL \timer_cnt[22]~71\ : std_logic;
SIGNAL \timer_cnt[23]~72_combout\ : std_logic;
SIGNAL \LessThan6~6_combout\ : std_logic;
SIGNAL \LessThan6~7_combout\ : std_logic;
SIGNAL \LessThan6~2_combout\ : std_logic;
SIGNAL \LessThan6~8_combout\ : std_logic;
SIGNAL \LessThan6~3_combout\ : std_logic;
SIGNAL \LessThan6~5_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \LessThan6~1_combout\ : std_logic;
SIGNAL \LessThan6~4_combout\ : std_logic;
SIGNAL \LessThan6~9_combout\ : std_logic;
SIGNAL \col~6_combout\ : std_logic;
SIGNAL \col[0]~1_combout\ : std_logic;
SIGNAL \col[0]~5_combout\ : std_logic;
SIGNAL \col~0_combout\ : std_logic;
SIGNAL \col~2_combout\ : std_logic;
SIGNAL \col~3_combout\ : std_logic;
SIGNAL \col~4_combout\ : std_logic;
SIGNAL \sys_mode~9_combout\ : std_logic;
SIGNAL \row~3_combout\ : std_logic;
SIGNAL \row[0]~1_combout\ : std_logic;
SIGNAL \sys_mode~11_combout\ : std_logic;
SIGNAL \row~0_combout\ : std_logic;
SIGNAL \row~2_combout\ : std_logic;
SIGNAL \ctrl_col~2_combout\ : std_logic;
SIGNAL \ctrl_col~7_combout\ : std_logic;
SIGNAL \sys_mode~12_combout\ : std_logic;
SIGNAL \sys_mode.MODE_CLEAR~q\ : std_logic;
SIGNAL \always2~6_combout\ : std_logic;
SIGNAL \ctrl_col[0]~3_combout\ : std_logic;
SIGNAL \ctrl_col[0]~4_combout\ : std_logic;
SIGNAL \sys_mode~10_combout\ : std_logic;
SIGNAL \sys_mode.MODE_ANIMATION~q\ : std_logic;
SIGNAL \stop~input_o\ : std_logic;
SIGNAL \stop_reg~0_combout\ : std_logic;
SIGNAL \stop_reg~q\ : std_logic;
SIGNAL \sys_mode.MODE_CONTROL~0_combout\ : std_logic;
SIGNAL \sys_mode.MODE_CONTROL~q\ : std_logic;
SIGNAL \update_req~0_combout\ : std_logic;
SIGNAL \sys_mode_delay.MODE_CLEAR~feeder_combout\ : std_logic;
SIGNAL \sys_mode_delay.MODE_CLEAR~q\ : std_logic;
SIGNAL \sys_mode_delay.MODE_ANIMATION~feeder_combout\ : std_logic;
SIGNAL \sys_mode_delay.MODE_ANIMATION~q\ : std_logic;
SIGNAL \sys_mode_delay.MODE_CONTROL~q\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \update_req~1_combout\ : std_logic;
SIGNAL \led_idx[0]~8_combout\ : std_logic;
SIGNAL \led_idx[4]~17\ : std_logic;
SIGNAL \led_idx[5]~18_combout\ : std_logic;
SIGNAL \Add11~1\ : std_logic;
SIGNAL \Add11~2_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Add11~3\ : std_logic;
SIGNAL \Add11~4_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Add11~5\ : std_logic;
SIGNAL \Add11~6_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Add11~7\ : std_logic;
SIGNAL \Add11~8_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Add11~9\ : std_logic;
SIGNAL \Add11~10_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Add11~11\ : std_logic;
SIGNAL \Add11~12_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Add11~13\ : std_logic;
SIGNAL \Add11~14_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Add11~15\ : std_logic;
SIGNAL \Add11~16_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Add11~17\ : std_logic;
SIGNAL \Add11~18_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Add11~19\ : std_logic;
SIGNAL \Add11~20_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Add11~21\ : std_logic;
SIGNAL \Add11~22_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Add11~23\ : std_logic;
SIGNAL \Add11~24_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Add11~25\ : std_logic;
SIGNAL \Add11~26_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Add11~27\ : std_logic;
SIGNAL \Add11~28_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Add11~29\ : std_logic;
SIGNAL \Add11~30_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \LessThan13~0_combout\ : std_logic;
SIGNAL \LessThan13~1_combout\ : std_logic;
SIGNAL \LessThan13~2_combout\ : std_logic;
SIGNAL \LessThan13~3_combout\ : std_logic;
SIGNAL \LessThan13~4_combout\ : std_logic;
SIGNAL \bit_idx[4]~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \state.STATE_SEND~q\ : std_logic;
SIGNAL \LessThan16~0_combout\ : std_logic;
SIGNAL \LessThan16~1_combout\ : std_logic;
SIGNAL \LessThan16~2_combout\ : std_logic;
SIGNAL \LessThan16~4_combout\ : std_logic;
SIGNAL \Add12~0_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \bit_idx[4]~1_combout\ : std_logic;
SIGNAL \Add12~1\ : std_logic;
SIGNAL \Add12~2_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Add12~3\ : std_logic;
SIGNAL \Add12~4_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Add12~5\ : std_logic;
SIGNAL \Add12~6_combout\ : std_logic;
SIGNAL \bit_idx[3]~2_combout\ : std_logic;
SIGNAL \bit_idx[3]~3_combout\ : std_logic;
SIGNAL \bit_idx[3]~4_combout\ : std_logic;
SIGNAL \Add12~7\ : std_logic;
SIGNAL \Add12~8_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \LessThan17~0_combout\ : std_logic;
SIGNAL \led_idx[4]~21_combout\ : std_logic;
SIGNAL \led_idx[4]~23_combout\ : std_logic;
SIGNAL \LessThan18~0_combout\ : std_logic;
SIGNAL \led_idx[4]~20_combout\ : std_logic;
SIGNAL \led_idx[0]~9\ : std_logic;
SIGNAL \led_idx[1]~10_combout\ : std_logic;
SIGNAL \led_idx[1]~11\ : std_logic;
SIGNAL \led_idx[2]~12_combout\ : std_logic;
SIGNAL \led_idx[2]~13\ : std_logic;
SIGNAL \led_idx[3]~14_combout\ : std_logic;
SIGNAL \led_idx[3]~15\ : std_logic;
SIGNAL \led_idx[4]~16_combout\ : std_logic;
SIGNAL \led_idx[4]~22_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \state.STATE_IDLE~q\ : std_logic;
SIGNAL \update_req~2_combout\ : std_logic;
SIGNAL \update_req~q\ : std_logic;
SIGNAL \always2~5_combout\ : std_logic;
SIGNAL \Selector17~2_combout\ : std_logic;
SIGNAL \state.STATE_RESET~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \LessThan16~3_combout\ : std_logic;
SIGNAL \DIN~0_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \draw_mode.MODE_ANIMATION~q\ : std_logic;
SIGNAL \draw_mode.MODE_CONTROL~q\ : std_logic;
SIGNAL \ctrl_row~12_combout\ : std_logic;
SIGNAL \ctrl_row[1]~4_combout\ : std_logic;
SIGNAL \ctrl_row[1]~5_combout\ : std_logic;
SIGNAL \ctrl_row[1]~6_combout\ : std_logic;
SIGNAL \ctrl_col[0]~5_combout\ : std_logic;
SIGNAL \ctrl_row[1]~7_combout\ : std_logic;
SIGNAL \always2~8_combout\ : std_logic;
SIGNAL \ctrl_row~3_combout\ : std_logic;
SIGNAL \ctrl_row[1]~2_combout\ : std_logic;
SIGNAL \ctrl_row~13_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \ctrl_col~6_combout\ : std_logic;
SIGNAL \ctrl_row~8_combout\ : std_logic;
SIGNAL \ctrl_row~9_combout\ : std_logic;
SIGNAL \ctrl_row~10_combout\ : std_logic;
SIGNAL \ctrl_row~11_combout\ : std_logic;
SIGNAL \draw_row~1_combout\ : std_logic;
SIGNAL \draw_row~0_combout\ : std_logic;
SIGNAL \draw_row~2_combout\ : std_logic;
SIGNAL \current_color[15]~8_combout\ : std_logic;
SIGNAL \current_color[15]~9_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \always2~9_combout\ : std_logic;
SIGNAL \ctrl_col[0]~8_combout\ : std_logic;
SIGNAL \ctrl_col~14_combout\ : std_logic;
SIGNAL \ctrl_col[0]~10_combout\ : std_logic;
SIGNAL \ctrl_col[0]~11_combout\ : std_logic;
SIGNAL \ctrl_col~15_combout\ : std_logic;
SIGNAL \ctrl_col~9_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \ctrl_col~12_combout\ : std_logic;
SIGNAL \ctrl_col~13_combout\ : std_logic;
SIGNAL \draw_col~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \draw_col~2_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \draw_col~0_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \current_color[15]~6_combout\ : std_logic;
SIGNAL \current_color[15]~7_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \current_color[15]~4_combout\ : std_logic;
SIGNAL \current_color[15]~3_combout\ : std_logic;
SIGNAL \current_color[15]~5_combout\ : std_logic;
SIGNAL \current_color[15]~10_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \DIN~1_combout\ : std_logic;
SIGNAL \DIN~2_combout\ : std_logic;
SIGNAL \DIN~reg0_q\ : std_logic;
SIGNAL timer_cnt : std_logic_vector(23 DOWNTO 0);
SIGNAL row : std_logic_vector(2 DOWNTO 0);
SIGNAL led_idx : std_logic_vector(5 DOWNTO 0);
SIGNAL draw_row : std_logic_vector(2 DOWNTO 0);
SIGNAL draw_col : std_logic_vector(2 DOWNTO 0);
SIGNAL ctrl_row : std_logic_vector(2 DOWNTO 0);
SIGNAL ctrl_col : std_logic_vector(2 DOWNTO 0);
SIGNAL col : std_logic_vector(2 DOWNTO 0);
SIGNAL clk_cnt : std_logic_vector(15 DOWNTO 0);
SIGNAL bit_idx : std_logic_vector(4 DOWNTO 0);
SIGNAL PB_buffer : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_state.STATE_SEND~q\ : std_logic;
SIGNAL \ALT_INV_rst_n~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst_n <= rst_n;
ww_switch_8bit <= switch_8bit;
ww_PB <= PB;
ww_x_axis <= x_axis;
ww_y_axis <= y_axis;
ww_stop <= stop;
DIN <= ww_DIN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_state.STATE_SEND~q\ <= NOT \state.STATE_SEND~q\;
\ALT_INV_rst_n~input_o\ <= NOT \rst_n~input_o\;

-- Location: IOOBUF_X29_Y0_N30
\DIN~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DIN~reg0_q\,
	devoe => ww_devoe,
	o => \DIN~output_o\);

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

-- Location: LCCOMB_X52_Y28_N0
\Add11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~0_combout\ = clk_cnt(0) $ (VCC)
-- \Add11~1\ = CARRY(clk_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(0),
	datad => VCC,
	combout => \Add11~0_combout\,
	cout => \Add11~1\);

-- Location: IOIBUF_X50_Y43_N1
\y_axis[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_axis(12),
	o => \y_axis[12]~input_o\);

-- Location: IOIBUF_X50_Y43_N22
\y_axis[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_axis(15),
	o => \y_axis[15]~input_o\);

-- Location: IOIBUF_X38_Y43_N29
\y_axis[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_axis(14),
	o => \y_axis[14]~input_o\);

-- Location: IOIBUF_X56_Y43_N15
\y_axis[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_axis(13),
	o => \y_axis[13]~input_o\);

-- Location: LCCOMB_X56_Y29_N12
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!\y_axis[12]~input_o\ & (!\y_axis[15]~input_o\ & (!\y_axis[14]~input_o\ & !\y_axis[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_axis[12]~input_o\,
	datab => \y_axis[15]~input_o\,
	datac => \y_axis[14]~input_o\,
	datad => \y_axis[13]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: IOIBUF_X54_Y43_N15
\y_axis[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_axis(7),
	o => \y_axis[7]~input_o\);

-- Location: IOIBUF_X56_Y43_N22
\y_axis[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_axis(8),
	o => \y_axis[8]~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\y_axis[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_axis(5),
	o => \y_axis[5]~input_o\);

-- Location: IOIBUF_X48_Y43_N8
\y_axis[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_axis(6),
	o => \y_axis[6]~input_o\);

-- Location: IOIBUF_X0_Y21_N15
\y_axis[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_axis(4),
	o => \y_axis[4]~input_o\);

-- Location: IOIBUF_X45_Y43_N15
\y_axis[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_axis(3),
	o => \y_axis[3]~input_o\);

-- Location: LCCOMB_X56_Y29_N22
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!\y_axis[6]~input_o\ & (((!\y_axis[3]~input_o\) # (!\y_axis[4]~input_o\)) # (!\y_axis[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_axis[5]~input_o\,
	datab => \y_axis[6]~input_o\,
	datac => \y_axis[4]~input_o\,
	datad => \y_axis[3]~input_o\,
	combout => \LessThan0~1_combout\);

-- Location: IOIBUF_X48_Y43_N15
\y_axis[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_axis(9),
	o => \y_axis[9]~input_o\);

-- Location: LCCOMB_X56_Y29_N28
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (((\LessThan0~1_combout\) # (!\y_axis[9]~input_o\)) # (!\y_axis[8]~input_o\)) # (!\y_axis[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_axis[7]~input_o\,
	datab => \y_axis[8]~input_o\,
	datac => \LessThan0~1_combout\,
	datad => \y_axis[9]~input_o\,
	combout => \LessThan0~2_combout\);

-- Location: IOIBUF_X29_Y43_N22
\y_axis[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_axis(10),
	o => \y_axis[10]~input_o\);

-- Location: IOIBUF_X59_Y43_N15
\y_axis[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_axis(11),
	o => \y_axis[11]~input_o\);

-- Location: LCCOMB_X56_Y29_N18
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\LessThan0~0_combout\ & (((\LessThan0~2_combout\ & !\y_axis[10]~input_o\)) # (!\y_axis[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \LessThan0~2_combout\,
	datac => \y_axis[10]~input_o\,
	datad => \y_axis[11]~input_o\,
	combout => \LessThan0~3_combout\);

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

-- Location: FF_X59_Y27_N23
joy_up_r1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \LessThan0~3_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \joy_up_r1~q\);

-- Location: LCCOMB_X59_Y27_N28
\joy_up_r2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \joy_up_r2~feeder_combout\ = \joy_up_r1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \joy_up_r1~q\,
	combout => \joy_up_r2~feeder_combout\);

-- Location: FF_X59_Y27_N29
joy_up_r2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \joy_up_r2~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \joy_up_r2~q\);

-- Location: LCCOMB_X59_Y27_N30
\btn_up_pos~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_up_pos~0_combout\ = (\joy_up_r1~q\ & !\joy_up_r2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \joy_up_r1~q\,
	datad => \joy_up_r2~q\,
	combout => \btn_up_pos~0_combout\);

-- Location: LCCOMB_X56_Y29_N10
\joy_down_level~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \joy_down_level~4_combout\ = (\y_axis[12]~input_o\) # ((\y_axis[15]~input_o\) # ((!\y_axis[13]~input_o\) # (!\y_axis[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_axis[12]~input_o\,
	datab => \y_axis[15]~input_o\,
	datac => \y_axis[14]~input_o\,
	datad => \y_axis[13]~input_o\,
	combout => \joy_down_level~4_combout\);

-- Location: IOIBUF_X45_Y43_N1
\y_axis[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_axis(1),
	o => \y_axis[1]~input_o\);

-- Location: IOIBUF_X45_Y43_N8
\y_axis[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_axis(0),
	o => \y_axis[0]~input_o\);

-- Location: IOIBUF_X41_Y43_N8
\y_axis[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_axis(2),
	o => \y_axis[2]~input_o\);

-- Location: LCCOMB_X45_Y42_N4
\joy_down_level~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \joy_down_level~1_combout\ = ((!\y_axis[1]~input_o\ & (!\y_axis[0]~input_o\ & !\y_axis[2]~input_o\))) # (!\y_axis[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_axis[1]~input_o\,
	datab => \y_axis[0]~input_o\,
	datac => \y_axis[2]~input_o\,
	datad => \y_axis[3]~input_o\,
	combout => \joy_down_level~1_combout\);

-- Location: LCCOMB_X56_Y29_N2
\joy_down_level~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \joy_down_level~2_combout\ = (!\y_axis[6]~input_o\ & (((\joy_down_level~1_combout\ & !\y_axis[4]~input_o\)) # (!\y_axis[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_axis[5]~input_o\,
	datab => \joy_down_level~1_combout\,
	datac => \y_axis[4]~input_o\,
	datad => \y_axis[6]~input_o\,
	combout => \joy_down_level~2_combout\);

-- Location: LCCOMB_X56_Y29_N0
\joy_down_level~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \joy_down_level~0_combout\ = (!\y_axis[9]~input_o\ & (!\y_axis[10]~input_o\ & !\y_axis[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_axis[9]~input_o\,
	datac => \y_axis[10]~input_o\,
	datad => \y_axis[11]~input_o\,
	combout => \joy_down_level~0_combout\);

-- Location: LCCOMB_X56_Y29_N16
\joy_down_level~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \joy_down_level~3_combout\ = (\joy_down_level~0_combout\ & (((\joy_down_level~2_combout\) # (!\y_axis[8]~input_o\)) # (!\y_axis[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_axis[7]~input_o\,
	datab => \joy_down_level~2_combout\,
	datac => \y_axis[8]~input_o\,
	datad => \joy_down_level~0_combout\,
	combout => \joy_down_level~3_combout\);

-- Location: LCCOMB_X56_Y29_N20
\joy_down_level~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \joy_down_level~5_combout\ = (\y_axis[5]~input_o\ & (\y_axis[6]~input_o\ & (\y_axis[4]~input_o\ & \y_axis[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_axis[5]~input_o\,
	datab => \y_axis[6]~input_o\,
	datac => \y_axis[4]~input_o\,
	datad => \y_axis[3]~input_o\,
	combout => \joy_down_level~5_combout\);

-- Location: LCCOMB_X56_Y29_N6
\joy_down_level~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \joy_down_level~6_combout\ = (!\y_axis[10]~input_o\ & !\y_axis[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y_axis[10]~input_o\,
	datad => \y_axis[9]~input_o\,
	combout => \joy_down_level~6_combout\);

-- Location: LCCOMB_X56_Y29_N4
\joy_down_level~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \joy_down_level~7_combout\ = ((\y_axis[8]~input_o\ & ((\y_axis[7]~input_o\) # (\joy_down_level~5_combout\)))) # (!\joy_down_level~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_axis[7]~input_o\,
	datab => \joy_down_level~5_combout\,
	datac => \y_axis[8]~input_o\,
	datad => \joy_down_level~6_combout\,
	combout => \joy_down_level~7_combout\);

-- Location: LCCOMB_X56_Y29_N26
\joy_down_level~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \joy_down_level~8_combout\ = (!\joy_down_level~4_combout\ & (!\joy_down_level~3_combout\ & ((!\y_axis[11]~input_o\) # (!\joy_down_level~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \joy_down_level~4_combout\,
	datab => \joy_down_level~3_combout\,
	datac => \joy_down_level~7_combout\,
	datad => \y_axis[11]~input_o\,
	combout => \joy_down_level~8_combout\);

-- Location: LCCOMB_X60_Y26_N12
\joy_down_r1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \joy_down_r1~feeder_combout\ = \joy_down_level~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \joy_down_level~8_combout\,
	combout => \joy_down_r1~feeder_combout\);

-- Location: FF_X60_Y26_N13
joy_down_r1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \joy_down_r1~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \joy_down_r1~q\);

-- Location: LCCOMB_X60_Y26_N22
\joy_down_r2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \joy_down_r2~feeder_combout\ = \joy_down_r1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \joy_down_r1~q\,
	combout => \joy_down_r2~feeder_combout\);

-- Location: FF_X60_Y26_N23
joy_down_r2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \joy_down_r2~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \joy_down_r2~q\);

-- Location: LCCOMB_X60_Y26_N8
\btn_down_pos~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_down_pos~0_combout\ = (!\joy_down_r2~q\ & \joy_down_r1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \joy_down_r2~q\,
	datad => \joy_down_r1~q\,
	combout => \btn_down_pos~0_combout\);

-- Location: IOIBUF_X63_Y43_N29
\x_axis[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_axis(7),
	o => \x_axis[7]~input_o\);

-- Location: IOIBUF_X67_Y25_N15
\x_axis[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_axis(8),
	o => \x_axis[8]~input_o\);

-- Location: IOIBUF_X67_Y26_N22
\x_axis[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_axis(9),
	o => \x_axis[9]~input_o\);

-- Location: IOIBUF_X67_Y25_N22
\x_axis[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_axis(11),
	o => \x_axis[11]~input_o\);

-- Location: IOIBUF_X67_Y39_N8
\x_axis[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_axis(10),
	o => \x_axis[10]~input_o\);

-- Location: LCCOMB_X63_Y27_N4
\joy_right_level~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \joy_right_level~0_combout\ = (!\x_axis[9]~input_o\ & (!\x_axis[11]~input_o\ & !\x_axis[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_axis[9]~input_o\,
	datac => \x_axis[11]~input_o\,
	datad => \x_axis[10]~input_o\,
	combout => \joy_right_level~0_combout\);

-- Location: IOIBUF_X61_Y43_N15
\x_axis[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_axis(4),
	o => \x_axis[4]~input_o\);

-- Location: IOIBUF_X67_Y34_N8
\x_axis[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_axis(1),
	o => \x_axis[1]~input_o\);

-- Location: IOIBUF_X67_Y31_N22
\x_axis[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_axis(0),
	o => \x_axis[0]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\x_axis[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_axis(3),
	o => \x_axis[3]~input_o\);

-- Location: IOIBUF_X67_Y40_N22
\x_axis[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_axis(2),
	o => \x_axis[2]~input_o\);

-- Location: LCCOMB_X63_Y27_N18
\joy_right_level~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \joy_right_level~1_combout\ = ((!\x_axis[1]~input_o\ & (!\x_axis[0]~input_o\ & !\x_axis[2]~input_o\))) # (!\x_axis[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_axis[1]~input_o\,
	datab => \x_axis[0]~input_o\,
	datac => \x_axis[3]~input_o\,
	datad => \x_axis[2]~input_o\,
	combout => \joy_right_level~1_combout\);

-- Location: IOIBUF_X67_Y18_N22
\x_axis[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_axis(6),
	o => \x_axis[6]~input_o\);

-- Location: IOIBUF_X67_Y35_N1
\x_axis[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_axis(5),
	o => \x_axis[5]~input_o\);

-- Location: LCCOMB_X63_Y27_N20
\joy_right_level~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \joy_right_level~2_combout\ = (!\x_axis[6]~input_o\ & (((!\x_axis[4]~input_o\ & \joy_right_level~1_combout\)) # (!\x_axis[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_axis[4]~input_o\,
	datab => \joy_right_level~1_combout\,
	datac => \x_axis[6]~input_o\,
	datad => \x_axis[5]~input_o\,
	combout => \joy_right_level~2_combout\);

-- Location: LCCOMB_X63_Y27_N6
\joy_right_level~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \joy_right_level~3_combout\ = (\joy_right_level~0_combout\ & (((\joy_right_level~2_combout\) # (!\x_axis[8]~input_o\)) # (!\x_axis[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_axis[7]~input_o\,
	datab => \x_axis[8]~input_o\,
	datac => \joy_right_level~0_combout\,
	datad => \joy_right_level~2_combout\,
	combout => \joy_right_level~3_combout\);

-- Location: LCCOMB_X63_Y27_N24
\joy_right_level~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \joy_right_level~6_combout\ = (!\x_axis[9]~input_o\ & !\x_axis[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x_axis[9]~input_o\,
	datad => \x_axis[10]~input_o\,
	combout => \joy_right_level~6_combout\);

-- Location: LCCOMB_X63_Y27_N30
\joy_right_level~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \joy_right_level~5_combout\ = (\x_axis[4]~input_o\ & (\x_axis[3]~input_o\ & (\x_axis[6]~input_o\ & \x_axis[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_axis[4]~input_o\,
	datab => \x_axis[3]~input_o\,
	datac => \x_axis[6]~input_o\,
	datad => \x_axis[5]~input_o\,
	combout => \joy_right_level~5_combout\);

-- Location: LCCOMB_X63_Y27_N14
\joy_right_level~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \joy_right_level~7_combout\ = ((\x_axis[8]~input_o\ & ((\x_axis[7]~input_o\) # (\joy_right_level~5_combout\)))) # (!\joy_right_level~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_axis[7]~input_o\,
	datab => \joy_right_level~6_combout\,
	datac => \joy_right_level~5_combout\,
	datad => \x_axis[8]~input_o\,
	combout => \joy_right_level~7_combout\);

-- Location: IOIBUF_X36_Y0_N22
\x_axis[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_axis(12),
	o => \x_axis[12]~input_o\);

-- Location: IOIBUF_X36_Y0_N15
\x_axis[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_axis(15),
	o => \x_axis[15]~input_o\);

-- Location: IOIBUF_X36_Y0_N8
\x_axis[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_axis(14),
	o => \x_axis[14]~input_o\);

-- Location: IOIBUF_X67_Y28_N22
\x_axis[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_axis(13),
	o => \x_axis[13]~input_o\);

-- Location: LCCOMB_X63_Y27_N16
\joy_right_level~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \joy_right_level~4_combout\ = (\x_axis[12]~input_o\) # ((\x_axis[15]~input_o\) # ((!\x_axis[13]~input_o\) # (!\x_axis[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_axis[12]~input_o\,
	datab => \x_axis[15]~input_o\,
	datac => \x_axis[14]~input_o\,
	datad => \x_axis[13]~input_o\,
	combout => \joy_right_level~4_combout\);

-- Location: LCCOMB_X63_Y27_N12
\joy_right_level~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \joy_right_level~8_combout\ = (!\joy_right_level~3_combout\ & (!\joy_right_level~4_combout\ & ((!\x_axis[11]~input_o\) # (!\joy_right_level~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \joy_right_level~3_combout\,
	datab => \joy_right_level~7_combout\,
	datac => \x_axis[11]~input_o\,
	datad => \joy_right_level~4_combout\,
	combout => \joy_right_level~8_combout\);

-- Location: FF_X63_Y27_N13
joy_right_r1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \joy_right_level~8_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \joy_right_r1~q\);

-- Location: FF_X63_Y27_N27
joy_right_r2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \joy_right_r1~q\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \joy_right_r2~q\);

-- Location: LCCOMB_X63_Y27_N26
\btn_right_pos~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_right_pos~0_combout\ = (!\joy_right_r2~q\ & \joy_right_r1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \joy_right_r2~q\,
	datad => \joy_right_r1~q\,
	combout => \btn_right_pos~0_combout\);

-- Location: LCCOMB_X63_Y27_N10
\LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (!\x_axis[6]~input_o\ & (((!\x_axis[5]~input_o\) # (!\x_axis[3]~input_o\)) # (!\x_axis[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_axis[4]~input_o\,
	datab => \x_axis[3]~input_o\,
	datac => \x_axis[6]~input_o\,
	datad => \x_axis[5]~input_o\,
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X63_Y27_N28
\LessThan3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = (((\LessThan3~1_combout\) # (!\x_axis[9]~input_o\)) # (!\x_axis[8]~input_o\)) # (!\x_axis[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_axis[7]~input_o\,
	datab => \x_axis[8]~input_o\,
	datac => \x_axis[9]~input_o\,
	datad => \LessThan3~1_combout\,
	combout => \LessThan3~2_combout\);

-- Location: LCCOMB_X63_Y27_N8
\LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (!\x_axis[12]~input_o\ & (!\x_axis[15]~input_o\ & (!\x_axis[14]~input_o\ & !\x_axis[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_axis[12]~input_o\,
	datab => \x_axis[15]~input_o\,
	datac => \x_axis[14]~input_o\,
	datad => \x_axis[13]~input_o\,
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X63_Y27_N22
\LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~3_combout\ = (\LessThan3~0_combout\ & (((\LessThan3~2_combout\ & !\x_axis[10]~input_o\)) # (!\x_axis[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x_axis[11]~input_o\,
	datab => \LessThan3~2_combout\,
	datac => \LessThan3~0_combout\,
	datad => \x_axis[10]~input_o\,
	combout => \LessThan3~3_combout\);

-- Location: FF_X60_Y28_N13
joy_left_r1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \LessThan3~3_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \joy_left_r1~q\);

-- Location: FF_X60_Y28_N31
joy_left_r2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \joy_left_r1~q\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \joy_left_r2~q\);

-- Location: LCCOMB_X60_Y28_N30
\btn_left_pos~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \btn_left_pos~0_combout\ = (!\joy_left_r2~q\ & \joy_left_r1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \joy_left_r2~q\,
	datad => \joy_left_r1~q\,
	combout => \btn_left_pos~0_combout\);

-- Location: LCCOMB_X59_Y27_N12
\always2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always2~7_combout\ = (\btn_up_pos~0_combout\) # ((\btn_down_pos~0_combout\) # ((\btn_right_pos~0_combout\) # (\btn_left_pos~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn_up_pos~0_combout\,
	datab => \btn_down_pos~0_combout\,
	datac => \btn_right_pos~0_combout\,
	datad => \btn_left_pos~0_combout\,
	combout => \always2~7_combout\);

-- Location: IOIBUF_X9_Y0_N22
\switch_8bit[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_8bit(0),
	o => \switch_8bit[0]~input_o\);

-- Location: IOIBUF_X20_Y0_N15
\switch_8bit[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_8bit(1),
	o => \switch_8bit[1]~input_o\);

-- Location: LCCOMB_X57_Y27_N16
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\switch_8bit[1]~input_o\ & !\switch_8bit[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_8bit[1]~input_o\,
	datac => \switch_8bit[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X59_Y43_N8
\PB[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB(0),
	o => \PB[0]~input_o\);

-- Location: IOIBUF_X67_Y27_N15
\PB[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB(1),
	o => \PB[1]~input_o\);

-- Location: LCCOMB_X57_Y27_N28
\PB_buffer~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PB_buffer~0_combout\ = (\PB[0]~input_o\) # ((PB_buffer(0) & !\PB[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PB[0]~input_o\,
	datac => PB_buffer(0),
	datad => \PB[1]~input_o\,
	combout => \PB_buffer~0_combout\);

-- Location: FF_X57_Y27_N29
\PB_buffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PB_buffer~0_combout\,
	sclr => \ALT_INV_rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PB_buffer(0));

-- Location: LCCOMB_X62_Y28_N8
\timer_cnt[0]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[0]~24_combout\ = timer_cnt(0) $ (VCC)
-- \timer_cnt[0]~25\ = CARRY(timer_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(0),
	datad => VCC,
	combout => \timer_cnt[0]~24_combout\,
	cout => \timer_cnt[0]~25\);

-- Location: LCCOMB_X61_Y27_N18
\timer_cnt[15]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[15]~26_combout\ = (!\LessThan6~9_combout\) # (!\sys_mode.MODE_ANIMATION~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_mode.MODE_ANIMATION~q\,
	datac => \LessThan6~9_combout\,
	combout => \timer_cnt[15]~26_combout\);

-- Location: LCCOMB_X57_Y27_N30
\timer_cnt[15]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[15]~27_combout\ = (\switch_8bit[0]~input_o\) # ((\sys_mode.MODE_ANIMATION~q\) # (!\switch_8bit[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_8bit[0]~input_o\,
	datac => \sys_mode.MODE_ANIMATION~q\,
	datad => \switch_8bit[1]~input_o\,
	combout => \timer_cnt[15]~27_combout\);

-- Location: FF_X62_Y28_N9
\timer_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[0]~24_combout\,
	clrn => \rst_n~input_o\,
	sclr => \timer_cnt[15]~26_combout\,
	ena => \timer_cnt[15]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(0));

-- Location: LCCOMB_X62_Y28_N10
\timer_cnt[1]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[1]~28_combout\ = (timer_cnt(1) & (!\timer_cnt[0]~25\)) # (!timer_cnt(1) & ((\timer_cnt[0]~25\) # (GND)))
-- \timer_cnt[1]~29\ = CARRY((!\timer_cnt[0]~25\) # (!timer_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_cnt(1),
	datad => VCC,
	cin => \timer_cnt[0]~25\,
	combout => \timer_cnt[1]~28_combout\,
	cout => \timer_cnt[1]~29\);

-- Location: FF_X62_Y28_N11
\timer_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[1]~28_combout\,
	clrn => \rst_n~input_o\,
	sclr => \timer_cnt[15]~26_combout\,
	ena => \timer_cnt[15]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(1));

-- Location: LCCOMB_X62_Y28_N12
\timer_cnt[2]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[2]~30_combout\ = (timer_cnt(2) & (\timer_cnt[1]~29\ $ (GND))) # (!timer_cnt(2) & (!\timer_cnt[1]~29\ & VCC))
-- \timer_cnt[2]~31\ = CARRY((timer_cnt(2) & !\timer_cnt[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(2),
	datad => VCC,
	cin => \timer_cnt[1]~29\,
	combout => \timer_cnt[2]~30_combout\,
	cout => \timer_cnt[2]~31\);

-- Location: FF_X62_Y28_N13
\timer_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[2]~30_combout\,
	clrn => \rst_n~input_o\,
	sclr => \timer_cnt[15]~26_combout\,
	ena => \timer_cnt[15]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(2));

-- Location: LCCOMB_X62_Y28_N14
\timer_cnt[3]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[3]~32_combout\ = (timer_cnt(3) & (!\timer_cnt[2]~31\)) # (!timer_cnt(3) & ((\timer_cnt[2]~31\) # (GND)))
-- \timer_cnt[3]~33\ = CARRY((!\timer_cnt[2]~31\) # (!timer_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(3),
	datad => VCC,
	cin => \timer_cnt[2]~31\,
	combout => \timer_cnt[3]~32_combout\,
	cout => \timer_cnt[3]~33\);

-- Location: FF_X62_Y28_N15
\timer_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[3]~32_combout\,
	clrn => \rst_n~input_o\,
	sclr => \timer_cnt[15]~26_combout\,
	ena => \timer_cnt[15]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(3));

-- Location: LCCOMB_X62_Y28_N16
\timer_cnt[4]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[4]~34_combout\ = (timer_cnt(4) & (\timer_cnt[3]~33\ $ (GND))) # (!timer_cnt(4) & (!\timer_cnt[3]~33\ & VCC))
-- \timer_cnt[4]~35\ = CARRY((timer_cnt(4) & !\timer_cnt[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_cnt(4),
	datad => VCC,
	cin => \timer_cnt[3]~33\,
	combout => \timer_cnt[4]~34_combout\,
	cout => \timer_cnt[4]~35\);

-- Location: FF_X62_Y28_N17
\timer_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[4]~34_combout\,
	clrn => \rst_n~input_o\,
	sclr => \timer_cnt[15]~26_combout\,
	ena => \timer_cnt[15]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(4));

-- Location: LCCOMB_X62_Y28_N18
\timer_cnt[5]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[5]~36_combout\ = (timer_cnt(5) & (!\timer_cnt[4]~35\)) # (!timer_cnt(5) & ((\timer_cnt[4]~35\) # (GND)))
-- \timer_cnt[5]~37\ = CARRY((!\timer_cnt[4]~35\) # (!timer_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(5),
	datad => VCC,
	cin => \timer_cnt[4]~35\,
	combout => \timer_cnt[5]~36_combout\,
	cout => \timer_cnt[5]~37\);

-- Location: FF_X62_Y28_N19
\timer_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[5]~36_combout\,
	clrn => \rst_n~input_o\,
	sclr => \timer_cnt[15]~26_combout\,
	ena => \timer_cnt[15]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(5));

-- Location: LCCOMB_X62_Y28_N20
\timer_cnt[6]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[6]~38_combout\ = (timer_cnt(6) & (\timer_cnt[5]~37\ $ (GND))) # (!timer_cnt(6) & (!\timer_cnt[5]~37\ & VCC))
-- \timer_cnt[6]~39\ = CARRY((timer_cnt(6) & !\timer_cnt[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_cnt(6),
	datad => VCC,
	cin => \timer_cnt[5]~37\,
	combout => \timer_cnt[6]~38_combout\,
	cout => \timer_cnt[6]~39\);

-- Location: FF_X62_Y28_N21
\timer_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[6]~38_combout\,
	clrn => \rst_n~input_o\,
	sclr => \timer_cnt[15]~26_combout\,
	ena => \timer_cnt[15]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(6));

-- Location: LCCOMB_X62_Y28_N22
\timer_cnt[7]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[7]~40_combout\ = (timer_cnt(7) & (!\timer_cnt[6]~39\)) # (!timer_cnt(7) & ((\timer_cnt[6]~39\) # (GND)))
-- \timer_cnt[7]~41\ = CARRY((!\timer_cnt[6]~39\) # (!timer_cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(7),
	datad => VCC,
	cin => \timer_cnt[6]~39\,
	combout => \timer_cnt[7]~40_combout\,
	cout => \timer_cnt[7]~41\);

-- Location: FF_X62_Y28_N23
\timer_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[7]~40_combout\,
	clrn => \rst_n~input_o\,
	sclr => \timer_cnt[15]~26_combout\,
	ena => \timer_cnt[15]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(7));

-- Location: LCCOMB_X62_Y28_N24
\timer_cnt[8]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[8]~42_combout\ = (timer_cnt(8) & (\timer_cnt[7]~41\ $ (GND))) # (!timer_cnt(8) & (!\timer_cnt[7]~41\ & VCC))
-- \timer_cnt[8]~43\ = CARRY((timer_cnt(8) & !\timer_cnt[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_cnt(8),
	datad => VCC,
	cin => \timer_cnt[7]~41\,
	combout => \timer_cnt[8]~42_combout\,
	cout => \timer_cnt[8]~43\);

-- Location: FF_X62_Y28_N25
\timer_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[8]~42_combout\,
	clrn => \rst_n~input_o\,
	sclr => \timer_cnt[15]~26_combout\,
	ena => \timer_cnt[15]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(8));

-- Location: LCCOMB_X62_Y28_N26
\timer_cnt[9]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[9]~44_combout\ = (timer_cnt(9) & (!\timer_cnt[8]~43\)) # (!timer_cnt(9) & ((\timer_cnt[8]~43\) # (GND)))
-- \timer_cnt[9]~45\ = CARRY((!\timer_cnt[8]~43\) # (!timer_cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(9),
	datad => VCC,
	cin => \timer_cnt[8]~43\,
	combout => \timer_cnt[9]~44_combout\,
	cout => \timer_cnt[9]~45\);

-- Location: FF_X62_Y28_N27
\timer_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[9]~44_combout\,
	clrn => \rst_n~input_o\,
	sclr => \timer_cnt[15]~26_combout\,
	ena => \timer_cnt[15]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(9));

-- Location: LCCOMB_X62_Y28_N28
\timer_cnt[10]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[10]~46_combout\ = (timer_cnt(10) & (\timer_cnt[9]~45\ $ (GND))) # (!timer_cnt(10) & (!\timer_cnt[9]~45\ & VCC))
-- \timer_cnt[10]~47\ = CARRY((timer_cnt(10) & !\timer_cnt[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_cnt(10),
	datad => VCC,
	cin => \timer_cnt[9]~45\,
	combout => \timer_cnt[10]~46_combout\,
	cout => \timer_cnt[10]~47\);

-- Location: LCCOMB_X62_Y27_N24
\timer_cnt[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[10]~feeder_combout\ = \timer_cnt[10]~46_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \timer_cnt[10]~46_combout\,
	combout => \timer_cnt[10]~feeder_combout\);

-- Location: FF_X62_Y27_N25
\timer_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[10]~feeder_combout\,
	clrn => \rst_n~input_o\,
	sclr => \timer_cnt[15]~26_combout\,
	ena => \timer_cnt[15]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(10));

-- Location: LCCOMB_X62_Y28_N30
\timer_cnt[11]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[11]~48_combout\ = (timer_cnt(11) & (!\timer_cnt[10]~47\)) # (!timer_cnt(11) & ((\timer_cnt[10]~47\) # (GND)))
-- \timer_cnt[11]~49\ = CARRY((!\timer_cnt[10]~47\) # (!timer_cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(11),
	datad => VCC,
	cin => \timer_cnt[10]~47\,
	combout => \timer_cnt[11]~48_combout\,
	cout => \timer_cnt[11]~49\);

-- Location: FF_X62_Y28_N31
\timer_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[11]~48_combout\,
	clrn => \rst_n~input_o\,
	sclr => \timer_cnt[15]~26_combout\,
	ena => \timer_cnt[15]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(11));

-- Location: LCCOMB_X62_Y27_N0
\timer_cnt[12]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[12]~50_combout\ = (timer_cnt(12) & (\timer_cnt[11]~49\ $ (GND))) # (!timer_cnt(12) & (!\timer_cnt[11]~49\ & VCC))
-- \timer_cnt[12]~51\ = CARRY((timer_cnt(12) & !\timer_cnt[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_cnt(12),
	datad => VCC,
	cin => \timer_cnt[11]~49\,
	combout => \timer_cnt[12]~50_combout\,
	cout => \timer_cnt[12]~51\);

-- Location: FF_X62_Y27_N1
\timer_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[12]~50_combout\,
	clrn => \rst_n~input_o\,
	sclr => \timer_cnt[15]~26_combout\,
	ena => \timer_cnt[15]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(12));

-- Location: LCCOMB_X62_Y27_N2
\timer_cnt[13]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[13]~52_combout\ = (timer_cnt(13) & (!\timer_cnt[12]~51\)) # (!timer_cnt(13) & ((\timer_cnt[12]~51\) # (GND)))
-- \timer_cnt[13]~53\ = CARRY((!\timer_cnt[12]~51\) # (!timer_cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(13),
	datad => VCC,
	cin => \timer_cnt[12]~51\,
	combout => \timer_cnt[13]~52_combout\,
	cout => \timer_cnt[13]~53\);

-- Location: FF_X62_Y27_N3
\timer_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[13]~52_combout\,
	clrn => \rst_n~input_o\,
	sclr => \timer_cnt[15]~26_combout\,
	ena => \timer_cnt[15]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(13));

-- Location: LCCOMB_X62_Y27_N4
\timer_cnt[14]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[14]~54_combout\ = (timer_cnt(14) & (\timer_cnt[13]~53\ $ (GND))) # (!timer_cnt(14) & (!\timer_cnt[13]~53\ & VCC))
-- \timer_cnt[14]~55\ = CARRY((timer_cnt(14) & !\timer_cnt[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_cnt(14),
	datad => VCC,
	cin => \timer_cnt[13]~53\,
	combout => \timer_cnt[14]~54_combout\,
	cout => \timer_cnt[14]~55\);

-- Location: FF_X62_Y27_N5
\timer_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[14]~54_combout\,
	clrn => \rst_n~input_o\,
	sclr => \timer_cnt[15]~26_combout\,
	ena => \timer_cnt[15]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(14));

-- Location: LCCOMB_X62_Y27_N6
\timer_cnt[15]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[15]~56_combout\ = (timer_cnt(15) & (!\timer_cnt[14]~55\)) # (!timer_cnt(15) & ((\timer_cnt[14]~55\) # (GND)))
-- \timer_cnt[15]~57\ = CARRY((!\timer_cnt[14]~55\) # (!timer_cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_cnt(15),
	datad => VCC,
	cin => \timer_cnt[14]~55\,
	combout => \timer_cnt[15]~56_combout\,
	cout => \timer_cnt[15]~57\);

-- Location: FF_X62_Y27_N7
\timer_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[15]~56_combout\,
	clrn => \rst_n~input_o\,
	sclr => \timer_cnt[15]~26_combout\,
	ena => \timer_cnt[15]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(15));

-- Location: LCCOMB_X62_Y27_N8
\timer_cnt[16]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[16]~58_combout\ = (timer_cnt(16) & (\timer_cnt[15]~57\ $ (GND))) # (!timer_cnt(16) & (!\timer_cnt[15]~57\ & VCC))
-- \timer_cnt[16]~59\ = CARRY((timer_cnt(16) & !\timer_cnt[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(16),
	datad => VCC,
	cin => \timer_cnt[15]~57\,
	combout => \timer_cnt[16]~58_combout\,
	cout => \timer_cnt[16]~59\);

-- Location: FF_X62_Y27_N9
\timer_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[16]~58_combout\,
	clrn => \rst_n~input_o\,
	sclr => \timer_cnt[15]~26_combout\,
	ena => \timer_cnt[15]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(16));

-- Location: LCCOMB_X62_Y27_N10
\timer_cnt[17]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[17]~60_combout\ = (timer_cnt(17) & (!\timer_cnt[16]~59\)) # (!timer_cnt(17) & ((\timer_cnt[16]~59\) # (GND)))
-- \timer_cnt[17]~61\ = CARRY((!\timer_cnt[16]~59\) # (!timer_cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_cnt(17),
	datad => VCC,
	cin => \timer_cnt[16]~59\,
	combout => \timer_cnt[17]~60_combout\,
	cout => \timer_cnt[17]~61\);

-- Location: FF_X62_Y27_N11
\timer_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[17]~60_combout\,
	clrn => \rst_n~input_o\,
	sclr => \timer_cnt[15]~26_combout\,
	ena => \timer_cnt[15]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(17));

-- Location: LCCOMB_X62_Y27_N12
\timer_cnt[18]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[18]~62_combout\ = (timer_cnt(18) & (\timer_cnt[17]~61\ $ (GND))) # (!timer_cnt(18) & (!\timer_cnt[17]~61\ & VCC))
-- \timer_cnt[18]~63\ = CARRY((timer_cnt(18) & !\timer_cnt[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(18),
	datad => VCC,
	cin => \timer_cnt[17]~61\,
	combout => \timer_cnt[18]~62_combout\,
	cout => \timer_cnt[18]~63\);

-- Location: FF_X62_Y27_N13
\timer_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[18]~62_combout\,
	clrn => \rst_n~input_o\,
	sclr => \timer_cnt[15]~26_combout\,
	ena => \timer_cnt[15]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(18));

-- Location: LCCOMB_X62_Y27_N14
\timer_cnt[19]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[19]~64_combout\ = (timer_cnt(19) & (!\timer_cnt[18]~63\)) # (!timer_cnt(19) & ((\timer_cnt[18]~63\) # (GND)))
-- \timer_cnt[19]~65\ = CARRY((!\timer_cnt[18]~63\) # (!timer_cnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(19),
	datad => VCC,
	cin => \timer_cnt[18]~63\,
	combout => \timer_cnt[19]~64_combout\,
	cout => \timer_cnt[19]~65\);

-- Location: FF_X62_Y27_N15
\timer_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[19]~64_combout\,
	clrn => \rst_n~input_o\,
	sclr => \timer_cnt[15]~26_combout\,
	ena => \timer_cnt[15]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(19));

-- Location: LCCOMB_X62_Y27_N16
\timer_cnt[20]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[20]~66_combout\ = (timer_cnt(20) & (\timer_cnt[19]~65\ $ (GND))) # (!timer_cnt(20) & (!\timer_cnt[19]~65\ & VCC))
-- \timer_cnt[20]~67\ = CARRY((timer_cnt(20) & !\timer_cnt[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(20),
	datad => VCC,
	cin => \timer_cnt[19]~65\,
	combout => \timer_cnt[20]~66_combout\,
	cout => \timer_cnt[20]~67\);

-- Location: FF_X62_Y27_N17
\timer_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[20]~66_combout\,
	clrn => \rst_n~input_o\,
	sclr => \timer_cnt[15]~26_combout\,
	ena => \timer_cnt[15]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(20));

-- Location: LCCOMB_X62_Y27_N18
\timer_cnt[21]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[21]~68_combout\ = (timer_cnt(21) & (!\timer_cnt[20]~67\)) # (!timer_cnt(21) & ((\timer_cnt[20]~67\) # (GND)))
-- \timer_cnt[21]~69\ = CARRY((!\timer_cnt[20]~67\) # (!timer_cnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_cnt(21),
	datad => VCC,
	cin => \timer_cnt[20]~67\,
	combout => \timer_cnt[21]~68_combout\,
	cout => \timer_cnt[21]~69\);

-- Location: FF_X62_Y27_N19
\timer_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[21]~68_combout\,
	clrn => \rst_n~input_o\,
	sclr => \timer_cnt[15]~26_combout\,
	ena => \timer_cnt[15]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(21));

-- Location: LCCOMB_X62_Y27_N20
\timer_cnt[22]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[22]~70_combout\ = (timer_cnt(22) & (\timer_cnt[21]~69\ $ (GND))) # (!timer_cnt(22) & (!\timer_cnt[21]~69\ & VCC))
-- \timer_cnt[22]~71\ = CARRY((timer_cnt(22) & !\timer_cnt[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_cnt(22),
	datad => VCC,
	cin => \timer_cnt[21]~69\,
	combout => \timer_cnt[22]~70_combout\,
	cout => \timer_cnt[22]~71\);

-- Location: FF_X62_Y27_N21
\timer_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[22]~70_combout\,
	clrn => \rst_n~input_o\,
	sclr => \timer_cnt[15]~26_combout\,
	ena => \timer_cnt[15]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(22));

-- Location: LCCOMB_X62_Y27_N22
\timer_cnt[23]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[23]~72_combout\ = timer_cnt(23) $ (\timer_cnt[22]~71\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(23),
	cin => \timer_cnt[22]~71\,
	combout => \timer_cnt[23]~72_combout\);

-- Location: FF_X62_Y27_N23
\timer_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[23]~72_combout\,
	clrn => \rst_n~input_o\,
	sclr => \timer_cnt[15]~26_combout\,
	ena => \timer_cnt[15]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(23));

-- Location: LCCOMB_X62_Y27_N28
\LessThan6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~6_combout\ = ((!timer_cnt(18) & (!timer_cnt(20) & !timer_cnt(19)))) # (!timer_cnt(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(18),
	datab => timer_cnt(20),
	datac => timer_cnt(19),
	datad => timer_cnt(21),
	combout => \LessThan6~6_combout\);

-- Location: LCCOMB_X61_Y27_N10
\LessThan6~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~7_combout\ = ((\LessThan6~6_combout\) # (!timer_cnt(22))) # (!timer_cnt(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => timer_cnt(23),
	datac => timer_cnt(22),
	datad => \LessThan6~6_combout\,
	combout => \LessThan6~7_combout\);

-- Location: LCCOMB_X62_Y27_N30
\LessThan6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~2_combout\ = (!timer_cnt(19) & (!timer_cnt(20) & (!timer_cnt(16) & !timer_cnt(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(19),
	datab => timer_cnt(20),
	datac => timer_cnt(16),
	datad => timer_cnt(17),
	combout => \LessThan6~2_combout\);

-- Location: LCCOMB_X62_Y27_N26
\LessThan6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~8_combout\ = (\LessThan6~2_combout\ & (((!timer_cnt(15)) # (!timer_cnt(14))) # (!timer_cnt(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(13),
	datab => timer_cnt(14),
	datac => \LessThan6~2_combout\,
	datad => timer_cnt(15),
	combout => \LessThan6~8_combout\);

-- Location: LCCOMB_X61_Y27_N4
\LessThan6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~3_combout\ = (!timer_cnt(11) & (!timer_cnt(9) & (!timer_cnt(12) & !timer_cnt(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(11),
	datab => timer_cnt(9),
	datac => timer_cnt(12),
	datad => timer_cnt(10),
	combout => \LessThan6~3_combout\);

-- Location: LCCOMB_X61_Y27_N8
\LessThan6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~5_combout\ = (\LessThan6~3_combout\ & (\LessThan6~2_combout\ & ((!timer_cnt(8)) # (!timer_cnt(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(7),
	datab => timer_cnt(8),
	datac => \LessThan6~3_combout\,
	datad => \LessThan6~2_combout\,
	combout => \LessThan6~5_combout\);

-- Location: LCCOMB_X62_Y28_N0
\LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (((!timer_cnt(2)) # (!timer_cnt(3))) # (!timer_cnt(0))) # (!timer_cnt(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(1),
	datab => timer_cnt(0),
	datac => timer_cnt(3),
	datad => timer_cnt(2),
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X62_Y28_N2
\LessThan6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~1_combout\ = ((\LessThan6~0_combout\) # (!timer_cnt(5))) # (!timer_cnt(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => timer_cnt(4),
	datac => timer_cnt(5),
	datad => \LessThan6~0_combout\,
	combout => \LessThan6~1_combout\);

-- Location: LCCOMB_X61_Y27_N2
\LessThan6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~4_combout\ = (!timer_cnt(6) & (\LessThan6~3_combout\ & (\LessThan6~1_combout\ & \LessThan6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(6),
	datab => \LessThan6~3_combout\,
	datac => \LessThan6~1_combout\,
	datad => \LessThan6~2_combout\,
	combout => \LessThan6~4_combout\);

-- Location: LCCOMB_X61_Y27_N22
\LessThan6~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~9_combout\ = (\LessThan6~7_combout\) # ((\LessThan6~8_combout\) # ((\LessThan6~5_combout\) # (\LessThan6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~7_combout\,
	datab => \LessThan6~8_combout\,
	datac => \LessThan6~5_combout\,
	datad => \LessThan6~4_combout\,
	combout => \LessThan6~9_combout\);

-- Location: LCCOMB_X57_Y27_N20
\col~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \col~6_combout\ = (\sys_mode.MODE_ANIMATION~q\ & (!col(0) & !\LessThan6~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_mode.MODE_ANIMATION~q\,
	datac => col(0),
	datad => \LessThan6~9_combout\,
	combout => \col~6_combout\);

-- Location: LCCOMB_X57_Y27_N24
\col[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \col[0]~1_combout\ = (!\switch_8bit[0]~input_o\ & (\switch_8bit[1]~input_o\ & ((\sys_mode.MODE_CLEAR~q\) # (!PB_buffer(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_8bit[0]~input_o\,
	datab => \switch_8bit[1]~input_o\,
	datac => \sys_mode.MODE_CLEAR~q\,
	datad => PB_buffer(0),
	combout => \col[0]~1_combout\);

-- Location: LCCOMB_X57_Y27_N8
\col[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \col[0]~5_combout\ = ((\sys_mode.MODE_ANIMATION~q\ & !\LessThan6~9_combout\)) # (!\col[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \col[0]~1_combout\,
	datac => \sys_mode.MODE_ANIMATION~q\,
	datad => \LessThan6~9_combout\,
	combout => \col[0]~5_combout\);

-- Location: FF_X57_Y27_N21
\col[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \col~6_combout\,
	clrn => \rst_n~input_o\,
	ena => \col[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => col(0));

-- Location: LCCOMB_X57_Y27_N18
\col~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \col~0_combout\ = (\sys_mode.MODE_ANIMATION~q\ & !\LessThan6~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sys_mode.MODE_ANIMATION~q\,
	datad => \LessThan6~9_combout\,
	combout => \col~0_combout\);

-- Location: LCCOMB_X57_Y27_N2
\col~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \col~2_combout\ = (col(1) & ((\col~0_combout\ & (col(0))) # (!\col~0_combout\ & ((!\col[0]~1_combout\))))) # (!col(1) & (((!\col~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => col(1),
	datab => col(0),
	datac => \col[0]~1_combout\,
	datad => \col~0_combout\,
	combout => \col~2_combout\);

-- Location: LCCOMB_X57_Y27_N6
\col~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \col~3_combout\ = (!\col~2_combout\ & ((col(1)) # ((!col(2) & col(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => col(2),
	datab => col(0),
	datac => col(1),
	datad => \col~2_combout\,
	combout => \col~3_combout\);

-- Location: FF_X57_Y27_N7
\col[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \col~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => col(1));

-- Location: LCCOMB_X57_Y27_N4
\col~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \col~4_combout\ = (\col~0_combout\ & (col(2) $ (((!col(1) & col(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => col(1),
	datab => col(0),
	datac => col(2),
	datad => \col~0_combout\,
	combout => \col~4_combout\);

-- Location: FF_X57_Y27_N5
\col[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \col~4_combout\,
	clrn => \rst_n~input_o\,
	ena => \col[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => col(2));

-- Location: LCCOMB_X57_Y27_N10
\sys_mode~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_mode~9_combout\ = (col(0) & (col(2) & !col(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => col(0),
	datac => col(2),
	datad => col(1),
	combout => \sys_mode~9_combout\);

-- Location: LCCOMB_X56_Y27_N24
\row~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \row~3_combout\ = (\sys_mode.MODE_ANIMATION~q\ & (\sys_mode~9_combout\ & (!row(0) & !\LessThan6~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_mode.MODE_ANIMATION~q\,
	datab => \sys_mode~9_combout\,
	datac => row(0),
	datad => \LessThan6~9_combout\,
	combout => \row~3_combout\);

-- Location: LCCOMB_X56_Y27_N28
\row[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \row[0]~1_combout\ = ((\sys_mode.MODE_ANIMATION~q\ & (\sys_mode~9_combout\ & !\LessThan6~9_combout\))) # (!\col[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_mode.MODE_ANIMATION~q\,
	datab => \col[0]~1_combout\,
	datac => \sys_mode~9_combout\,
	datad => \LessThan6~9_combout\,
	combout => \row[0]~1_combout\);

-- Location: FF_X56_Y27_N25
\row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \row~3_combout\,
	clrn => \rst_n~input_o\,
	ena => \row[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row(0));

-- Location: LCCOMB_X56_Y27_N6
\sys_mode~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_mode~11_combout\ = (\sys_mode.MODE_ANIMATION~q\ & (\sys_mode~9_combout\ & !\LessThan6~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_mode.MODE_ANIMATION~q\,
	datac => \sys_mode~9_combout\,
	datad => \LessThan6~9_combout\,
	combout => \sys_mode~11_combout\);

-- Location: LCCOMB_X56_Y27_N30
\row~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \row~0_combout\ = (\sys_mode~11_combout\ & (row(0) $ (row(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => row(0),
	datac => row(1),
	datad => \sys_mode~11_combout\,
	combout => \row~0_combout\);

-- Location: FF_X56_Y27_N31
\row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \row~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \row[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row(1));

-- Location: LCCOMB_X56_Y27_N14
\row~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \row~2_combout\ = (\sys_mode~11_combout\ & (row(2) $ (((row(1) & row(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => row(1),
	datab => row(0),
	datac => row(2),
	datad => \sys_mode~11_combout\,
	combout => \row~2_combout\);

-- Location: FF_X56_Y27_N15
\row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \row~2_combout\,
	clrn => \rst_n~input_o\,
	ena => \row[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row(2));

-- Location: LCCOMB_X56_Y27_N16
\ctrl_col~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctrl_col~2_combout\ = (row(1) & (row(2) & row(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => row(1),
	datac => row(2),
	datad => row(0),
	combout => \ctrl_col~2_combout\);

-- Location: LCCOMB_X61_Y27_N20
\ctrl_col~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctrl_col~7_combout\ = (\sys_mode.MODE_ANIMATION~q\ & (\ctrl_col~2_combout\ & (!\LessThan6~9_combout\ & \sys_mode~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_mode.MODE_ANIMATION~q\,
	datab => \ctrl_col~2_combout\,
	datac => \LessThan6~9_combout\,
	datad => \sys_mode~9_combout\,
	combout => \ctrl_col~7_combout\);

-- Location: LCCOMB_X61_Y27_N24
\sys_mode~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_mode~12_combout\ = (\ctrl_col~7_combout\) # ((\Equal0~0_combout\ & ((PB_buffer(0)) # (\sys_mode.MODE_CLEAR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => PB_buffer(0),
	datac => \sys_mode.MODE_CLEAR~q\,
	datad => \ctrl_col~7_combout\,
	combout => \sys_mode~12_combout\);

-- Location: FF_X61_Y27_N25
\sys_mode.MODE_CLEAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sys_mode~12_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_mode.MODE_CLEAR~q\);

-- Location: LCCOMB_X57_Y27_N12
\always2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always2~6_combout\ = (!\switch_8bit[0]~input_o\ & (\switch_8bit[1]~input_o\ & (!\sys_mode.MODE_CLEAR~q\ & PB_buffer(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_8bit[0]~input_o\,
	datab => \switch_8bit[1]~input_o\,
	datac => \sys_mode.MODE_CLEAR~q\,
	datad => PB_buffer(0),
	combout => \always2~6_combout\);

-- Location: LCCOMB_X61_Y27_N0
\ctrl_col[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctrl_col[0]~3_combout\ = ((\LessThan6~8_combout\) # (!\sys_mode~9_combout\)) # (!\ctrl_col~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_col~2_combout\,
	datac => \sys_mode~9_combout\,
	datad => \LessThan6~8_combout\,
	combout => \ctrl_col[0]~3_combout\);

-- Location: LCCOMB_X61_Y27_N26
\ctrl_col[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctrl_col[0]~4_combout\ = (\LessThan6~7_combout\) # ((\LessThan6~4_combout\) # ((\LessThan6~5_combout\) # (\ctrl_col[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~7_combout\,
	datab => \LessThan6~4_combout\,
	datac => \LessThan6~5_combout\,
	datad => \ctrl_col[0]~3_combout\,
	combout => \ctrl_col[0]~4_combout\);

-- Location: LCCOMB_X57_Y27_N26
\sys_mode~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_mode~10_combout\ = (\Equal0~0_combout\ & ((\sys_mode.MODE_ANIMATION~q\ & ((\ctrl_col[0]~4_combout\))) # (!\sys_mode.MODE_ANIMATION~q\ & (\always2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~6_combout\,
	datab => \Equal0~0_combout\,
	datac => \sys_mode.MODE_ANIMATION~q\,
	datad => \ctrl_col[0]~4_combout\,
	combout => \sys_mode~10_combout\);

-- Location: FF_X57_Y27_N27
\sys_mode.MODE_ANIMATION\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sys_mode~10_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_mode.MODE_ANIMATION~q\);

-- Location: IOIBUF_X67_Y19_N8
\stop~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stop,
	o => \stop~input_o\);

-- Location: LCCOMB_X59_Y27_N26
\stop_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stop_reg~0_combout\ = (\stop_reg~q\) # (\stop~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stop_reg~q\,
	datad => \stop~input_o\,
	combout => \stop_reg~0_combout\);

-- Location: FF_X59_Y27_N27
stop_reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stop_reg~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stop_reg~q\);

-- Location: LCCOMB_X59_Y27_N8
\sys_mode.MODE_CONTROL~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_mode.MODE_CONTROL~0_combout\ = (\ctrl_col~7_combout\) # ((\col[0]~1_combout\ & \sys_mode.MODE_CONTROL~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \col[0]~1_combout\,
	datac => \sys_mode.MODE_CONTROL~q\,
	datad => \ctrl_col~7_combout\,
	combout => \sys_mode.MODE_CONTROL~0_combout\);

-- Location: FF_X59_Y27_N9
\sys_mode.MODE_CONTROL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sys_mode.MODE_CONTROL~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_mode.MODE_CONTROL~q\);

-- Location: LCCOMB_X59_Y27_N22
\update_req~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \update_req~0_combout\ = (!\stop_reg~q\ & \sys_mode.MODE_CONTROL~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop_reg~q\,
	datab => \sys_mode.MODE_CONTROL~q\,
	combout => \update_req~0_combout\);

-- Location: LCCOMB_X59_Y27_N24
\sys_mode_delay.MODE_CLEAR~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_mode_delay.MODE_CLEAR~feeder_combout\ = \sys_mode.MODE_CLEAR~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sys_mode.MODE_CLEAR~q\,
	combout => \sys_mode_delay.MODE_CLEAR~feeder_combout\);

-- Location: FF_X59_Y27_N25
\sys_mode_delay.MODE_CLEAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sys_mode_delay.MODE_CLEAR~feeder_combout\,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_mode_delay.MODE_CLEAR~q\);

-- Location: LCCOMB_X59_Y27_N20
\sys_mode_delay.MODE_ANIMATION~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_mode_delay.MODE_ANIMATION~feeder_combout\ = \sys_mode.MODE_ANIMATION~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sys_mode.MODE_ANIMATION~q\,
	combout => \sys_mode_delay.MODE_ANIMATION~feeder_combout\);

-- Location: FF_X59_Y27_N21
\sys_mode_delay.MODE_ANIMATION\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sys_mode_delay.MODE_ANIMATION~feeder_combout\,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_mode_delay.MODE_ANIMATION~q\);

-- Location: FF_X59_Y27_N7
\sys_mode_delay.MODE_CONTROL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sys_mode.MODE_CONTROL~q\,
	sload => VCC,
	ena => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_mode_delay.MODE_CONTROL~q\);

-- Location: LCCOMB_X59_Y27_N6
\WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\sys_mode_delay.MODE_ANIMATION~q\ & ((\sys_mode.MODE_CONTROL~q\ $ (\sys_mode_delay.MODE_CONTROL~q\)) # (!\sys_mode.MODE_ANIMATION~q\))) # (!\sys_mode_delay.MODE_ANIMATION~q\ & ((\sys_mode.MODE_ANIMATION~q\) # 
-- (\sys_mode.MODE_CONTROL~q\ $ (\sys_mode_delay.MODE_CONTROL~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_mode_delay.MODE_ANIMATION~q\,
	datab => \sys_mode.MODE_CONTROL~q\,
	datac => \sys_mode_delay.MODE_CONTROL~q\,
	datad => \sys_mode.MODE_ANIMATION~q\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X59_Y27_N18
WideOr0 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = (\WideOr0~0_combout\) # (\sys_mode_delay.MODE_CLEAR~q\ $ (\sys_mode.MODE_CLEAR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sys_mode_delay.MODE_CLEAR~q\,
	datac => \sys_mode.MODE_CLEAR~q\,
	datad => \WideOr0~0_combout\,
	combout => \WideOr0~combout\);

-- Location: LCCOMB_X59_Y27_N16
\update_req~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \update_req~1_combout\ = (\WideOr0~combout\) # ((\always2~7_combout\ & (!\sys_mode.MODE_ANIMATION~q\ & \update_req~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~7_combout\,
	datab => \sys_mode.MODE_ANIMATION~q\,
	datac => \update_req~0_combout\,
	datad => \WideOr0~combout\,
	combout => \update_req~1_combout\);

-- Location: LCCOMB_X55_Y28_N14
\led_idx[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_idx[0]~8_combout\ = led_idx(0) $ (VCC)
-- \led_idx[0]~9\ = CARRY(led_idx(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => led_idx(0),
	datad => VCC,
	combout => \led_idx[0]~8_combout\,
	cout => \led_idx[0]~9\);

-- Location: LCCOMB_X55_Y28_N22
\led_idx[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_idx[4]~16_combout\ = (led_idx(4) & (\led_idx[3]~15\ $ (GND))) # (!led_idx(4) & (!\led_idx[3]~15\ & VCC))
-- \led_idx[4]~17\ = CARRY((led_idx(4) & !\led_idx[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_idx(4),
	datad => VCC,
	cin => \led_idx[3]~15\,
	combout => \led_idx[4]~16_combout\,
	cout => \led_idx[4]~17\);

-- Location: LCCOMB_X55_Y28_N24
\led_idx[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_idx[5]~18_combout\ = \led_idx[4]~17\ $ (led_idx(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => led_idx(5),
	cin => \led_idx[4]~17\,
	combout => \led_idx[5]~18_combout\);

-- Location: LCCOMB_X52_Y28_N2
\Add11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~2_combout\ = (clk_cnt(1) & (!\Add11~1\)) # (!clk_cnt(1) & ((\Add11~1\) # (GND)))
-- \Add11~3\ = CARRY((!\Add11~1\) # (!clk_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(1),
	datad => VCC,
	cin => \Add11~1\,
	combout => \Add11~2_combout\,
	cout => \Add11~3\);

-- Location: LCCOMB_X54_Y28_N30
\Selector14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\Add11~2_combout\ & \Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add11~2_combout\,
	datad => \Selector1~0_combout\,
	combout => \Selector14~0_combout\);

-- Location: FF_X54_Y28_N31
\clk_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector14~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(1));

-- Location: LCCOMB_X52_Y28_N4
\Add11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~4_combout\ = (clk_cnt(2) & (\Add11~3\ $ (GND))) # (!clk_cnt(2) & (!\Add11~3\ & VCC))
-- \Add11~5\ = CARRY((clk_cnt(2) & !\Add11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(2),
	datad => VCC,
	cin => \Add11~3\,
	combout => \Add11~4_combout\,
	cout => \Add11~5\);

-- Location: LCCOMB_X54_Y28_N28
\Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\Add11~4_combout\ & \Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add11~4_combout\,
	datad => \Selector1~0_combout\,
	combout => \Selector13~0_combout\);

-- Location: FF_X54_Y28_N29
\clk_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector13~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(2));

-- Location: LCCOMB_X52_Y28_N6
\Add11~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~6_combout\ = (clk_cnt(3) & (!\Add11~5\)) # (!clk_cnt(3) & ((\Add11~5\) # (GND)))
-- \Add11~7\ = CARRY((!\Add11~5\) # (!clk_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(3),
	datad => VCC,
	cin => \Add11~5\,
	combout => \Add11~6_combout\,
	cout => \Add11~7\);

-- Location: LCCOMB_X54_Y28_N18
\Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\Add11~6_combout\ & \Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~6_combout\,
	datad => \Selector1~0_combout\,
	combout => \Selector12~0_combout\);

-- Location: FF_X54_Y28_N19
\clk_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector12~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(3));

-- Location: LCCOMB_X52_Y28_N8
\Add11~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~8_combout\ = (clk_cnt(4) & (\Add11~7\ $ (GND))) # (!clk_cnt(4) & (!\Add11~7\ & VCC))
-- \Add11~9\ = CARRY((clk_cnt(4) & !\Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(4),
	datad => VCC,
	cin => \Add11~7\,
	combout => \Add11~8_combout\,
	cout => \Add11~9\);

-- Location: LCCOMB_X54_Y28_N22
\Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\Add11~8_combout\ & \Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add11~8_combout\,
	datad => \Selector1~0_combout\,
	combout => \Selector11~0_combout\);

-- Location: FF_X54_Y28_N23
\clk_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector11~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(4));

-- Location: LCCOMB_X52_Y28_N10
\Add11~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~10_combout\ = (clk_cnt(5) & (!\Add11~9\)) # (!clk_cnt(5) & ((\Add11~9\) # (GND)))
-- \Add11~11\ = CARRY((!\Add11~9\) # (!clk_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(5),
	datad => VCC,
	cin => \Add11~9\,
	combout => \Add11~10_combout\,
	cout => \Add11~11\);

-- Location: LCCOMB_X54_Y28_N8
\Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\Add11~10_combout\ & \Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add11~10_combout\,
	datad => \Selector1~0_combout\,
	combout => \Selector10~0_combout\);

-- Location: FF_X54_Y28_N9
\clk_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector10~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(5));

-- Location: LCCOMB_X52_Y28_N12
\Add11~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~12_combout\ = (clk_cnt(6) & (\Add11~11\ $ (GND))) # (!clk_cnt(6) & (!\Add11~11\ & VCC))
-- \Add11~13\ = CARRY((clk_cnt(6) & !\Add11~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(6),
	datad => VCC,
	cin => \Add11~11\,
	combout => \Add11~12_combout\,
	cout => \Add11~13\);

-- Location: LCCOMB_X54_Y28_N14
\Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\Add11~12_combout\ & \Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add11~12_combout\,
	datad => \Selector1~0_combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X54_Y28_N15
\clk_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(6));

-- Location: LCCOMB_X52_Y28_N14
\Add11~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~14_combout\ = (clk_cnt(7) & (!\Add11~13\)) # (!clk_cnt(7) & ((\Add11~13\) # (GND)))
-- \Add11~15\ = CARRY((!\Add11~13\) # (!clk_cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(7),
	datad => VCC,
	cin => \Add11~13\,
	combout => \Add11~14_combout\,
	cout => \Add11~15\);

-- Location: LCCOMB_X53_Y28_N0
\Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\Add11~14_combout\ & \Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~14_combout\,
	datac => \Selector1~0_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X53_Y28_N1
\clk_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(7));

-- Location: LCCOMB_X52_Y28_N16
\Add11~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~16_combout\ = (clk_cnt(8) & (\Add11~15\ $ (GND))) # (!clk_cnt(8) & (!\Add11~15\ & VCC))
-- \Add11~17\ = CARRY((clk_cnt(8) & !\Add11~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(8),
	datad => VCC,
	cin => \Add11~15\,
	combout => \Add11~16_combout\,
	cout => \Add11~17\);

-- Location: LCCOMB_X53_Y28_N24
\Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\Add11~16_combout\ & \Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~16_combout\,
	datac => \Selector1~0_combout\,
	combout => \Selector7~0_combout\);

-- Location: FF_X53_Y28_N25
\clk_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(8));

-- Location: LCCOMB_X52_Y28_N18
\Add11~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~18_combout\ = (clk_cnt(9) & (!\Add11~17\)) # (!clk_cnt(9) & ((\Add11~17\) # (GND)))
-- \Add11~19\ = CARRY((!\Add11~17\) # (!clk_cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(9),
	datad => VCC,
	cin => \Add11~17\,
	combout => \Add11~18_combout\,
	cout => \Add11~19\);

-- Location: LCCOMB_X53_Y28_N14
\Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\Add11~18_combout\ & \Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add11~18_combout\,
	datac => \Selector1~0_combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X53_Y28_N15
\clk_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(9));

-- Location: LCCOMB_X52_Y28_N20
\Add11~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~20_combout\ = (clk_cnt(10) & (\Add11~19\ $ (GND))) # (!clk_cnt(10) & (!\Add11~19\ & VCC))
-- \Add11~21\ = CARRY((clk_cnt(10) & !\Add11~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(10),
	datad => VCC,
	cin => \Add11~19\,
	combout => \Add11~20_combout\,
	cout => \Add11~21\);

-- Location: LCCOMB_X53_Y28_N28
\Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\Add11~20_combout\ & \Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add11~20_combout\,
	datac => \Selector1~0_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X53_Y28_N29
\clk_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(10));

-- Location: LCCOMB_X52_Y28_N22
\Add11~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~22_combout\ = (clk_cnt(11) & (!\Add11~21\)) # (!clk_cnt(11) & ((\Add11~21\) # (GND)))
-- \Add11~23\ = CARRY((!\Add11~21\) # (!clk_cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(11),
	datad => VCC,
	cin => \Add11~21\,
	combout => \Add11~22_combout\,
	cout => \Add11~23\);

-- Location: LCCOMB_X53_Y28_N22
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Add11~22_combout\ & \Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add11~22_combout\,
	datac => \Selector1~0_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X53_Y28_N23
\clk_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(11));

-- Location: LCCOMB_X52_Y28_N24
\Add11~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~24_combout\ = (clk_cnt(12) & (\Add11~23\ $ (GND))) # (!clk_cnt(12) & (!\Add11~23\ & VCC))
-- \Add11~25\ = CARRY((clk_cnt(12) & !\Add11~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(12),
	datad => VCC,
	cin => \Add11~23\,
	combout => \Add11~24_combout\,
	cout => \Add11~25\);

-- Location: LCCOMB_X53_Y28_N4
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\Add11~24_combout\ & \Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add11~24_combout\,
	datac => \Selector1~0_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X53_Y28_N5
\clk_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(12));

-- Location: LCCOMB_X52_Y28_N26
\Add11~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~26_combout\ = (clk_cnt(13) & (!\Add11~25\)) # (!clk_cnt(13) & ((\Add11~25\) # (GND)))
-- \Add11~27\ = CARRY((!\Add11~25\) # (!clk_cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(13),
	datad => VCC,
	cin => \Add11~25\,
	combout => \Add11~26_combout\,
	cout => \Add11~27\);

-- Location: LCCOMB_X53_Y28_N26
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\Selector1~0_combout\ & \Add11~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector1~0_combout\,
	datac => \Add11~26_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X53_Y28_N27
\clk_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(13));

-- Location: LCCOMB_X52_Y28_N28
\Add11~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~28_combout\ = (clk_cnt(14) & (\Add11~27\ $ (GND))) # (!clk_cnt(14) & (!\Add11~27\ & VCC))
-- \Add11~29\ = CARRY((clk_cnt(14) & !\Add11~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(14),
	datad => VCC,
	cin => \Add11~27\,
	combout => \Add11~28_combout\,
	cout => \Add11~29\);

-- Location: LCCOMB_X53_Y28_N20
\Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\ & \Add11~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector1~0_combout\,
	datad => \Add11~28_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X53_Y28_N21
\clk_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(14));

-- Location: LCCOMB_X52_Y28_N30
\Add11~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add11~30_combout\ = \Add11~29\ $ (clk_cnt(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => clk_cnt(15),
	cin => \Add11~29\,
	combout => \Add11~30_combout\);

-- Location: LCCOMB_X53_Y28_N18
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\Selector1~0_combout\ & \Add11~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector1~0_combout\,
	datad => \Add11~30_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X53_Y28_N19
\clk_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(15));

-- Location: LCCOMB_X54_Y28_N0
\LessThan13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan13~0_combout\ = (clk_cnt(6)) # ((clk_cnt(1) & (clk_cnt(0) & clk_cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(1),
	datab => clk_cnt(0),
	datac => clk_cnt(6),
	datad => clk_cnt(2),
	combout => \LessThan13~0_combout\);

-- Location: LCCOMB_X54_Y28_N6
\LessThan13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan13~1_combout\ = (clk_cnt(4)) # ((clk_cnt(3)) # ((clk_cnt(5)) # (\LessThan13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(4),
	datab => clk_cnt(3),
	datac => clk_cnt(5),
	datad => \LessThan13~0_combout\,
	combout => \LessThan13~1_combout\);

-- Location: LCCOMB_X54_Y28_N12
\LessThan13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan13~2_combout\ = (clk_cnt(9) & (clk_cnt(8) & (clk_cnt(7) & \LessThan13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(9),
	datab => clk_cnt(8),
	datac => clk_cnt(7),
	datad => \LessThan13~1_combout\,
	combout => \LessThan13~2_combout\);

-- Location: LCCOMB_X54_Y28_N2
\LessThan13~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan13~3_combout\ = (clk_cnt(12) & ((clk_cnt(11)) # ((clk_cnt(10)) # (\LessThan13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(11),
	datab => clk_cnt(10),
	datac => clk_cnt(12),
	datad => \LessThan13~2_combout\,
	combout => \LessThan13~3_combout\);

-- Location: LCCOMB_X54_Y28_N4
\LessThan13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan13~4_combout\ = (clk_cnt(13)) # ((clk_cnt(14)) # ((clk_cnt(15)) # (\LessThan13~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(13),
	datab => clk_cnt(14),
	datac => clk_cnt(15),
	datad => \LessThan13~3_combout\,
	combout => \LessThan13~4_combout\);

-- Location: LCCOMB_X57_Y28_N22
\bit_idx[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_idx[4]~0_combout\ = (!\LessThan13~4_combout\) # (!\state.STATE_RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_RESET~q\,
	datac => \LessThan13~4_combout\,
	combout => \bit_idx[4]~0_combout\);

-- Location: LCCOMB_X57_Y28_N20
\Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (!\led_idx[4]~22_combout\ & (((!\always2~5_combout\ & \state.STATE_SEND~q\)) # (!\bit_idx[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_idx[4]~0_combout\,
	datab => \always2~5_combout\,
	datac => \state.STATE_SEND~q\,
	datad => \led_idx[4]~22_combout\,
	combout => \Selector18~0_combout\);

-- Location: FF_X57_Y28_N21
\state.STATE_SEND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector18~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STATE_SEND~q\);

-- Location: LCCOMB_X53_Y28_N16
\LessThan16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan16~0_combout\ = (!clk_cnt(13) & (!clk_cnt(14) & (!clk_cnt(12) & !clk_cnt(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(13),
	datab => clk_cnt(14),
	datac => clk_cnt(12),
	datad => clk_cnt(15),
	combout => \LessThan16~0_combout\);

-- Location: LCCOMB_X53_Y28_N30
\LessThan16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan16~1_combout\ = (!clk_cnt(11) & (!clk_cnt(8) & (!clk_cnt(9) & !clk_cnt(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(11),
	datab => clk_cnt(8),
	datac => clk_cnt(9),
	datad => clk_cnt(10),
	combout => \LessThan16~1_combout\);

-- Location: LCCOMB_X54_Y28_N20
\LessThan16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan16~2_combout\ = (!clk_cnt(7) & (!clk_cnt(6) & (\LessThan16~0_combout\ & \LessThan16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(7),
	datab => clk_cnt(6),
	datac => \LessThan16~0_combout\,
	datad => \LessThan16~1_combout\,
	combout => \LessThan16~2_combout\);

-- Location: LCCOMB_X55_Y28_N12
\LessThan16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan16~4_combout\ = (\LessThan16~2_combout\ & (((\LessThan16~3_combout\) # (!clk_cnt(4))) # (!clk_cnt(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(5),
	datab => clk_cnt(4),
	datac => \LessThan16~3_combout\,
	datad => \LessThan16~2_combout\,
	combout => \LessThan16~4_combout\);

-- Location: LCCOMB_X57_Y28_N10
\Add12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~0_combout\ = bit_idx(0) $ (GND)
-- \Add12~1\ = CARRY(!bit_idx(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_idx(0),
	datad => VCC,
	combout => \Add12~0_combout\,
	cout => \Add12~1\);

-- Location: LCCOMB_X57_Y28_N4
\Selector29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (!\Add12~0_combout\ & (\state.STATE_SEND~q\ & ((\LessThan17~0_combout\) # (!bit_idx(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~0_combout\,
	datab => \LessThan17~0_combout\,
	datac => bit_idx(0),
	datad => \state.STATE_SEND~q\,
	combout => \Selector29~0_combout\);

-- Location: LCCOMB_X57_Y28_N2
\bit_idx[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_idx[4]~1_combout\ = (\state.STATE_RESET~q\ & ((\LessThan13~4_combout\) # ((\state.STATE_SEND~q\ & !\LessThan16~4_combout\)))) # (!\state.STATE_RESET~q\ & (\state.STATE_SEND~q\ & ((!\LessThan16~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_RESET~q\,
	datab => \state.STATE_SEND~q\,
	datac => \LessThan13~4_combout\,
	datad => \LessThan16~4_combout\,
	combout => \bit_idx[4]~1_combout\);

-- Location: FF_X57_Y28_N5
\bit_idx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector29~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \bit_idx[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(0));

-- Location: LCCOMB_X57_Y28_N12
\Add12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~2_combout\ = (bit_idx(1) & (!\Add12~1\)) # (!bit_idx(1) & (\Add12~1\ & VCC))
-- \Add12~3\ = CARRY((bit_idx(1) & !\Add12~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_idx(1),
	datad => VCC,
	cin => \Add12~1\,
	combout => \Add12~2_combout\,
	cout => \Add12~3\);

-- Location: LCCOMB_X57_Y28_N26
\Selector28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (!\Add12~2_combout\ & (\state.STATE_SEND~q\ & ((\LessThan17~0_combout\) # (!bit_idx(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~2_combout\,
	datab => \LessThan17~0_combout\,
	datac => bit_idx(0),
	datad => \state.STATE_SEND~q\,
	combout => \Selector28~0_combout\);

-- Location: FF_X57_Y28_N27
\bit_idx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector28~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \bit_idx[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(1));

-- Location: LCCOMB_X57_Y28_N14
\Add12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~4_combout\ = (bit_idx(2) & (\Add12~3\ $ (GND))) # (!bit_idx(2) & ((GND) # (!\Add12~3\)))
-- \Add12~5\ = CARRY((!\Add12~3\) # (!bit_idx(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_idx(2),
	datad => VCC,
	cin => \Add12~3\,
	combout => \Add12~4_combout\,
	cout => \Add12~5\);

-- Location: LCCOMB_X57_Y28_N8
\Selector27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (!\Add12~4_combout\ & (\state.STATE_SEND~q\ & ((\LessThan17~0_combout\) # (!bit_idx(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_idx(0),
	datab => \LessThan17~0_combout\,
	datac => \Add12~4_combout\,
	datad => \state.STATE_SEND~q\,
	combout => \Selector27~0_combout\);

-- Location: FF_X57_Y28_N9
\bit_idx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector27~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \bit_idx[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(2));

-- Location: LCCOMB_X57_Y28_N16
\Add12~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~6_combout\ = (bit_idx(3) & (\Add12~5\ & VCC)) # (!bit_idx(3) & (!\Add12~5\))
-- \Add12~7\ = CARRY((!bit_idx(3) & !\Add12~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_idx(3),
	datad => VCC,
	cin => \Add12~5\,
	combout => \Add12~6_combout\,
	cout => \Add12~7\);

-- Location: LCCOMB_X57_Y28_N0
\bit_idx[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_idx[3]~2_combout\ = (\Add12~6_combout\ & ((\LessThan17~0_combout\) # (!bit_idx(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan17~0_combout\,
	datac => bit_idx(0),
	datad => \Add12~6_combout\,
	combout => \bit_idx[3]~2_combout\);

-- Location: LCCOMB_X57_Y28_N6
\bit_idx[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_idx[3]~3_combout\ = (\state.STATE_SEND~q\ & ((\LessThan16~4_combout\ & (bit_idx(3))) # (!\LessThan16~4_combout\ & ((\bit_idx[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_idx(3),
	datab => \state.STATE_SEND~q\,
	datac => \LessThan16~4_combout\,
	datad => \bit_idx[3]~2_combout\,
	combout => \bit_idx[3]~3_combout\);

-- Location: LCCOMB_X57_Y28_N30
\bit_idx[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_idx[3]~4_combout\ = (\bit_idx[3]~3_combout\) # ((!\state.STATE_SEND~q\ & (bit_idx(3) & \bit_idx[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_idx[3]~3_combout\,
	datab => \state.STATE_SEND~q\,
	datac => bit_idx(3),
	datad => \bit_idx[4]~0_combout\,
	combout => \bit_idx[3]~4_combout\);

-- Location: FF_X57_Y28_N31
\bit_idx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bit_idx[3]~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(3));

-- Location: LCCOMB_X57_Y28_N18
\Add12~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add12~8_combout\ = \Add12~7\ $ (!bit_idx(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => bit_idx(4),
	cin => \Add12~7\,
	combout => \Add12~8_combout\);

-- Location: LCCOMB_X57_Y28_N28
\Selector25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\state.STATE_SEND~q\ & (!\Add12~8_combout\ & ((\LessThan17~0_combout\) # (!bit_idx(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan17~0_combout\,
	datab => \state.STATE_SEND~q\,
	datac => bit_idx(0),
	datad => \Add12~8_combout\,
	combout => \Selector25~0_combout\);

-- Location: FF_X57_Y28_N29
\bit_idx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector25~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \bit_idx[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(4));

-- Location: LCCOMB_X57_Y28_N24
\LessThan17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan17~0_combout\ = (bit_idx(3)) # (((!bit_idx(4)) # (!bit_idx(1))) # (!bit_idx(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_idx(3),
	datab => bit_idx(2),
	datac => bit_idx(1),
	datad => bit_idx(4),
	combout => \LessThan17~0_combout\);

-- Location: LCCOMB_X55_Y28_N28
\led_idx[4]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_idx[4]~21_combout\ = (!\LessThan17~0_combout\ & (\state.STATE_SEND~q\ & (bit_idx(0) & !\LessThan16~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan17~0_combout\,
	datab => \state.STATE_SEND~q\,
	datac => bit_idx(0),
	datad => \LessThan16~4_combout\,
	combout => \led_idx[4]~21_combout\);

-- Location: LCCOMB_X55_Y28_N8
\led_idx[4]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_idx[4]~23_combout\ = (\led_idx[4]~21_combout\) # ((\state.STATE_RESET~q\ & \LessThan13~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.STATE_RESET~q\,
	datac => \LessThan13~4_combout\,
	datad => \led_idx[4]~21_combout\,
	combout => \led_idx[4]~23_combout\);

-- Location: FF_X55_Y28_N25
\led_idx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_idx[5]~18_combout\,
	clrn => \rst_n~input_o\,
	sclr => \led_idx[4]~20_combout\,
	ena => \led_idx[4]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_idx(5));

-- Location: LCCOMB_X55_Y28_N4
\LessThan18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan18~0_combout\ = (((!led_idx(3)) # (!led_idx(0))) # (!led_idx(1))) # (!led_idx(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_idx(2),
	datab => led_idx(1),
	datac => led_idx(0),
	datad => led_idx(3),
	combout => \LessThan18~0_combout\);

-- Location: LCCOMB_X55_Y28_N26
\led_idx[4]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_idx[4]~20_combout\ = ((led_idx(4) & (led_idx(5) & !\LessThan18~0_combout\))) # (!\state.STATE_SEND~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_idx(4),
	datab => led_idx(5),
	datac => \LessThan18~0_combout\,
	datad => \state.STATE_SEND~q\,
	combout => \led_idx[4]~20_combout\);

-- Location: FF_X55_Y28_N15
\led_idx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_idx[0]~8_combout\,
	clrn => \rst_n~input_o\,
	sclr => \led_idx[4]~20_combout\,
	ena => \led_idx[4]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_idx(0));

-- Location: LCCOMB_X55_Y28_N16
\led_idx[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_idx[1]~10_combout\ = (led_idx(1) & (!\led_idx[0]~9\)) # (!led_idx(1) & ((\led_idx[0]~9\) # (GND)))
-- \led_idx[1]~11\ = CARRY((!\led_idx[0]~9\) # (!led_idx(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_idx(1),
	datad => VCC,
	cin => \led_idx[0]~9\,
	combout => \led_idx[1]~10_combout\,
	cout => \led_idx[1]~11\);

-- Location: FF_X55_Y28_N17
\led_idx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_idx[1]~10_combout\,
	clrn => \rst_n~input_o\,
	sclr => \led_idx[4]~20_combout\,
	ena => \led_idx[4]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_idx(1));

-- Location: LCCOMB_X55_Y28_N18
\led_idx[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_idx[2]~12_combout\ = (led_idx(2) & (\led_idx[1]~11\ $ (GND))) # (!led_idx(2) & (!\led_idx[1]~11\ & VCC))
-- \led_idx[2]~13\ = CARRY((led_idx(2) & !\led_idx[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_idx(2),
	datad => VCC,
	cin => \led_idx[1]~11\,
	combout => \led_idx[2]~12_combout\,
	cout => \led_idx[2]~13\);

-- Location: FF_X55_Y28_N19
\led_idx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_idx[2]~12_combout\,
	clrn => \rst_n~input_o\,
	sclr => \led_idx[4]~20_combout\,
	ena => \led_idx[4]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_idx(2));

-- Location: LCCOMB_X55_Y28_N20
\led_idx[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_idx[3]~14_combout\ = (led_idx(3) & (!\led_idx[2]~13\)) # (!led_idx(3) & ((\led_idx[2]~13\) # (GND)))
-- \led_idx[3]~15\ = CARRY((!\led_idx[2]~13\) # (!led_idx(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_idx(3),
	datad => VCC,
	cin => \led_idx[2]~13\,
	combout => \led_idx[3]~14_combout\,
	cout => \led_idx[3]~15\);

-- Location: FF_X55_Y28_N21
\led_idx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_idx[3]~14_combout\,
	clrn => \rst_n~input_o\,
	sclr => \led_idx[4]~20_combout\,
	ena => \led_idx[4]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_idx(3));

-- Location: FF_X55_Y28_N23
\led_idx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_idx[4]~16_combout\,
	clrn => \rst_n~input_o\,
	sclr => \led_idx[4]~20_combout\,
	ena => \led_idx[4]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_idx(4));

-- Location: LCCOMB_X55_Y28_N10
\led_idx[4]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_idx[4]~22_combout\ = (led_idx(4) & (led_idx(5) & (!\LessThan18~0_combout\ & \led_idx[4]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_idx(4),
	datab => led_idx(5),
	datac => \LessThan18~0_combout\,
	datad => \led_idx[4]~21_combout\,
	combout => \led_idx[4]~22_combout\);

-- Location: LCCOMB_X55_Y28_N0
\Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (!\led_idx[4]~22_combout\ & ((\state.STATE_IDLE~q\) # (!\update_req~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \update_req~q\,
	datac => \state.STATE_IDLE~q\,
	datad => \led_idx[4]~22_combout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X55_Y28_N1
\state.STATE_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector16~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STATE_IDLE~q\);

-- Location: LCCOMB_X57_Y27_N0
\update_req~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \update_req~2_combout\ = (\update_req~q\ & (!\update_req~1_combout\ & ((!\col~0_combout\)))) # (!\update_req~q\ & (((!\state.STATE_IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \update_req~1_combout\,
	datab => \state.STATE_IDLE~q\,
	datac => \update_req~q\,
	datad => \col~0_combout\,
	combout => \update_req~2_combout\);

-- Location: FF_X57_Y27_N1
update_req : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \update_req~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \update_req~q\);

-- Location: LCCOMB_X55_Y28_N30
\always2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always2~5_combout\ = (!\update_req~q\ & !\state.STATE_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \update_req~q\,
	datad => \state.STATE_IDLE~q\,
	combout => \always2~5_combout\);

-- Location: LCCOMB_X55_Y28_N2
\Selector17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector17~2_combout\ = (!\led_idx[4]~22_combout\ & ((\state.STATE_RESET~q\ & ((!\LessThan13~4_combout\))) # (!\state.STATE_RESET~q\ & (\always2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~5_combout\,
	datab => \LessThan13~4_combout\,
	datac => \state.STATE_RESET~q\,
	datad => \led_idx[4]~22_combout\,
	combout => \Selector17~2_combout\);

-- Location: FF_X55_Y28_N3
\state.STATE_RESET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector17~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STATE_RESET~q\);

-- Location: LCCOMB_X54_Y28_N10
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state.STATE_RESET~q\ & (((\state.STATE_SEND~q\ & \LessThan16~4_combout\)) # (!\LessThan13~4_combout\))) # (!\state.STATE_RESET~q\ & (\state.STATE_SEND~q\ & ((\LessThan16~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_RESET~q\,
	datab => \state.STATE_SEND~q\,
	datac => \LessThan13~4_combout\,
	datad => \LessThan16~4_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X54_Y28_N24
\Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\Add11~0_combout\ & \Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add11~0_combout\,
	datad => \Selector1~0_combout\,
	combout => \Selector15~0_combout\);

-- Location: FF_X54_Y28_N25
\clk_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector15~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(0));

-- Location: LCCOMB_X54_Y28_N26
\LessThan16~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan16~3_combout\ = (((!clk_cnt(0) & !clk_cnt(1))) # (!clk_cnt(2))) # (!clk_cnt(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(0),
	datab => clk_cnt(3),
	datac => clk_cnt(1),
	datad => clk_cnt(2),
	combout => \LessThan16~3_combout\);

-- Location: LCCOMB_X53_Y28_N10
\DIN~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIN~0_combout\ = (!clk_cnt(3) & (!clk_cnt(0) & (!clk_cnt(1) & !clk_cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(3),
	datab => clk_cnt(0),
	datac => clk_cnt(1),
	datad => clk_cnt(2),
	combout => \DIN~0_combout\);

-- Location: LCCOMB_X56_Y28_N8
\Mux0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (bit_idx(3) & bit_idx(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_idx(3),
	datad => bit_idx(4),
	combout => \Mux0~5_combout\);

-- Location: FF_X56_Y28_N5
\draw_mode.MODE_ANIMATION\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sys_mode.MODE_ANIMATION~q\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \always2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \draw_mode.MODE_ANIMATION~q\);

-- Location: FF_X56_Y28_N27
\draw_mode.MODE_CONTROL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sys_mode.MODE_CONTROL~q\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \always2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \draw_mode.MODE_CONTROL~q\);

-- Location: LCCOMB_X60_Y27_N30
\ctrl_row~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctrl_row~12_combout\ = (\update_req~0_combout\ & (!\WideOr0~combout\ & (!ctrl_row(0) & !\ctrl_row[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \update_req~0_combout\,
	datab => \WideOr0~combout\,
	datac => ctrl_row(0),
	datad => \ctrl_row[1]~2_combout\,
	combout => \ctrl_row~12_combout\);

-- Location: LCCOMB_X60_Y27_N12
\ctrl_row[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctrl_row[1]~4_combout\ = ((!\ctrl_col~2_combout\) # (!\sys_mode~9_combout\)) # (!\sys_mode.MODE_ANIMATION~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sys_mode.MODE_ANIMATION~q\,
	datac => \sys_mode~9_combout\,
	datad => \ctrl_col~2_combout\,
	combout => \ctrl_row[1]~4_combout\);

-- Location: LCCOMB_X60_Y27_N18
\ctrl_row[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctrl_row[1]~5_combout\ = (\Equal0~0_combout\ & ((\ctrl_row[1]~4_combout\) # ((\LessThan6~9_combout\) # (!\WideOr0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_row[1]~4_combout\,
	datab => \WideOr0~combout\,
	datac => \Equal0~0_combout\,
	datad => \LessThan6~9_combout\,
	combout => \ctrl_row[1]~5_combout\);

-- Location: LCCOMB_X60_Y27_N4
\ctrl_row[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctrl_row[1]~6_combout\ = (!\sys_mode.MODE_ANIMATION~q\ & (!\WideOr0~combout\ & ((\stop_reg~q\) # (\ctrl_row[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_mode.MODE_ANIMATION~q\,
	datab => \WideOr0~combout\,
	datac => \stop_reg~q\,
	datad => \ctrl_row[1]~2_combout\,
	combout => \ctrl_row[1]~6_combout\);

-- Location: LCCOMB_X60_Y27_N10
\ctrl_col[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctrl_col[0]~5_combout\ = (\sys_mode.MODE_ANIMATION~q\ & ((\WideOr0~combout\ & (\sys_mode.MODE_CONTROL~q\)) # (!\WideOr0~combout\ & ((!\ctrl_col[0]~4_combout\))))) # (!\sys_mode.MODE_ANIMATION~q\ & (((\sys_mode.MODE_CONTROL~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_mode.MODE_ANIMATION~q\,
	datab => \WideOr0~combout\,
	datac => \sys_mode.MODE_CONTROL~q\,
	datad => \ctrl_col[0]~4_combout\,
	combout => \ctrl_col[0]~5_combout\);

-- Location: LCCOMB_X60_Y27_N20
\ctrl_row[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctrl_row[1]~7_combout\ = ((!\ctrl_row[1]~6_combout\ & \ctrl_col[0]~5_combout\)) # (!\ctrl_row[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl_row[1]~5_combout\,
	datac => \ctrl_row[1]~6_combout\,
	datad => \ctrl_col[0]~5_combout\,
	combout => \ctrl_row[1]~7_combout\);

-- Location: FF_X60_Y27_N31
\ctrl_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctrl_row~12_combout\,
	clrn => \rst_n~input_o\,
	ena => \ctrl_row[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ctrl_row(0));

-- Location: LCCOMB_X60_Y26_N18
\always2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always2~8_combout\ = (\btn_down_pos~0_combout\ & (((ctrl_row(2)) # (!ctrl_row(1))) # (!ctrl_row(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ctrl_row(0),
	datab => \btn_down_pos~0_combout\,
	datac => ctrl_row(1),
	datad => ctrl_row(2),
	combout => \always2~8_combout\);

-- Location: LCCOMB_X60_Y27_N28
\ctrl_row~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctrl_row~3_combout\ = (\ctrl_row~13_combout\ & (ctrl_row(0) $ (\always2~8_combout\ $ (!ctrl_row(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ctrl_row(0),
	datab => \always2~8_combout\,
	datac => ctrl_row(1),
	datad => \ctrl_row~13_combout\,
	combout => \ctrl_row~3_combout\);

-- Location: FF_X60_Y27_N29
\ctrl_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctrl_row~3_combout\,
	clrn => \rst_n~input_o\,
	ena => \ctrl_row[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ctrl_row(1));

-- Location: LCCOMB_X60_Y26_N0
\ctrl_row[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctrl_row[1]~2_combout\ = (!\always2~8_combout\ & (((ctrl_row(2) & !ctrl_row(1))) # (!\btn_up_pos~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ctrl_row(2),
	datab => \btn_up_pos~0_combout\,
	datac => ctrl_row(1),
	datad => \always2~8_combout\,
	combout => \ctrl_row[1]~2_combout\);

-- Location: LCCOMB_X60_Y27_N24
\ctrl_row~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctrl_row~13_combout\ = (\sys_mode.MODE_CONTROL~q\ & (!\WideOr0~combout\ & (!\stop_reg~q\ & !\ctrl_row[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_mode.MODE_CONTROL~q\,
	datab => \WideOr0~combout\,
	datac => \stop_reg~q\,
	datad => \ctrl_row[1]~2_combout\,
	combout => \ctrl_row~13_combout\);

-- Location: LCCOMB_X60_Y26_N26
\Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (ctrl_row(0) & (ctrl_row(2) & ((!ctrl_row(1)) # (!\btn_down_pos~0_combout\)))) # (!ctrl_row(0) & (ctrl_row(2) $ (((!\btn_down_pos~0_combout\ & !ctrl_row(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ctrl_row(0),
	datab => \btn_down_pos~0_combout\,
	datac => ctrl_row(1),
	datad => ctrl_row(2),
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X59_Y27_N14
\ctrl_col~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctrl_col~6_combout\ = (\Equal0~0_combout\ & (!\WideOr0~0_combout\ & (\sys_mode_delay.MODE_CLEAR~q\ $ (!\sys_mode.MODE_CLEAR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \sys_mode_delay.MODE_CLEAR~q\,
	datac => \sys_mode.MODE_CLEAR~q\,
	datad => \WideOr0~0_combout\,
	combout => \ctrl_col~6_combout\);

-- Location: LCCOMB_X61_Y27_N28
\ctrl_row~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctrl_row~8_combout\ = (\ctrl_col~6_combout\ & (ctrl_row(2) & ((\ctrl_row[1]~2_combout\) # (!\update_req~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_col~6_combout\,
	datab => ctrl_row(2),
	datac => \ctrl_row[1]~2_combout\,
	datad => \update_req~0_combout\,
	combout => \ctrl_row~8_combout\);

-- Location: LCCOMB_X61_Y27_N16
\ctrl_row~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctrl_row~9_combout\ = (\ctrl_row~8_combout\) # ((\ctrl_row~13_combout\ & \Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_row~13_combout\,
	datac => \Add3~0_combout\,
	datad => \ctrl_row~8_combout\,
	combout => \ctrl_row~9_combout\);

-- Location: LCCOMB_X61_Y27_N14
\ctrl_row~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctrl_row~10_combout\ = ((\WideOr0~combout\ & (\sys_mode.MODE_CONTROL~q\)) # (!\WideOr0~combout\ & ((!\sys_mode.MODE_ANIMATION~q\)))) # (!\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_mode.MODE_CONTROL~q\,
	datab => \Equal0~0_combout\,
	datac => \sys_mode.MODE_ANIMATION~q\,
	datad => \WideOr0~combout\,
	combout => \ctrl_row~10_combout\);

-- Location: LCCOMB_X61_Y27_N6
\ctrl_row~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctrl_row~11_combout\ = (\ctrl_row~10_combout\) # ((\WideOr0~combout\ & ((\ctrl_col~7_combout\))) # (!\WideOr0~combout\ & (!\ctrl_col[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_col[0]~4_combout\,
	datab => \WideOr0~combout\,
	datac => \ctrl_row~10_combout\,
	datad => \ctrl_col~7_combout\,
	combout => \ctrl_row~11_combout\);

-- Location: FF_X61_Y27_N17
\ctrl_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctrl_row~9_combout\,
	clrn => \rst_n~input_o\,
	sclr => \sys_mode.MODE_ANIMATION~q\,
	ena => \ctrl_row~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ctrl_row(2));

-- Location: LCCOMB_X56_Y27_N12
\draw_row~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_row~1_combout\ = (\sys_mode.MODE_ANIMATION~q\ & ((row(2)))) # (!\sys_mode.MODE_ANIMATION~q\ & (ctrl_row(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ctrl_row(2),
	datab => row(2),
	datac => \sys_mode.MODE_ANIMATION~q\,
	combout => \draw_row~1_combout\);

-- Location: FF_X56_Y27_N13
\draw_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \draw_row~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \always2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => draw_row(2));

-- Location: LCCOMB_X56_Y27_N20
\draw_row~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_row~0_combout\ = (\sys_mode.MODE_ANIMATION~q\ & (row(1))) # (!\sys_mode.MODE_ANIMATION~q\ & ((!ctrl_row(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => row(1),
	datac => \sys_mode.MODE_ANIMATION~q\,
	datad => ctrl_row(1),
	combout => \draw_row~0_combout\);

-- Location: FF_X56_Y28_N31
\draw_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \draw_row~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \always2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => draw_row(1));

-- Location: LCCOMB_X56_Y27_N8
\draw_row~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_row~2_combout\ = (\sys_mode.MODE_ANIMATION~q\ & (row(0))) # (!\sys_mode.MODE_ANIMATION~q\ & ((!ctrl_row(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_mode.MODE_ANIMATION~q\,
	datab => row(0),
	datad => ctrl_row(0),
	combout => \draw_row~2_combout\);

-- Location: FF_X56_Y27_N9
\draw_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \draw_row~2_combout\,
	clrn => \rst_n~input_o\,
	ena => \always2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => draw_row(0));

-- Location: LCCOMB_X56_Y28_N28
\current_color[15]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_color[15]~8_combout\ = (draw_row(1) & (led_idx(4) & (led_idx(3) $ (!draw_row(0))))) # (!draw_row(1) & (!led_idx(4) & (led_idx(3) $ (!draw_row(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => draw_row(1),
	datab => led_idx(3),
	datac => draw_row(0),
	datad => led_idx(4),
	combout => \current_color[15]~8_combout\);

-- Location: LCCOMB_X56_Y28_N6
\current_color[15]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_color[15]~9_combout\ = (\current_color[15]~8_combout\ & (draw_row(2) $ (!led_idx(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => draw_row(2),
	datab => led_idx(5),
	datad => \current_color[15]~8_combout\,
	combout => \current_color[15]~9_combout\);

-- Location: LCCOMB_X56_Y28_N26
\Mux0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (\Mux0~5_combout\ & ((\draw_mode.MODE_ANIMATION~q\ & ((\current_color[15]~9_combout\))) # (!\draw_mode.MODE_ANIMATION~q\ & (\draw_mode.MODE_CONTROL~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~5_combout\,
	datab => \draw_mode.MODE_ANIMATION~q\,
	datac => \draw_mode.MODE_CONTROL~q\,
	datad => \current_color[15]~9_combout\,
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X60_Y27_N2
\always2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always2~9_combout\ = (\btn_right_pos~0_combout\ & ((ctrl_col(2)) # ((!ctrl_col(0)) # (!ctrl_col(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ctrl_col(2),
	datab => ctrl_col(1),
	datac => \btn_right_pos~0_combout\,
	datad => ctrl_col(0),
	combout => \always2~9_combout\);

-- Location: LCCOMB_X60_Y27_N16
\ctrl_col[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctrl_col[0]~8_combout\ = (!\always2~9_combout\ & (((ctrl_col(2) & !ctrl_col(1))) # (!\btn_left_pos~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ctrl_col(2),
	datab => ctrl_col(1),
	datac => \btn_left_pos~0_combout\,
	datad => \always2~9_combout\,
	combout => \ctrl_col[0]~8_combout\);

-- Location: LCCOMB_X60_Y27_N6
\ctrl_col~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctrl_col~14_combout\ = (\update_req~0_combout\ & (!\WideOr0~combout\ & (!ctrl_col(0) & !\ctrl_col[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \update_req~0_combout\,
	datab => \WideOr0~combout\,
	datac => ctrl_col(0),
	datad => \ctrl_col[0]~8_combout\,
	combout => \ctrl_col~14_combout\);

-- Location: LCCOMB_X60_Y27_N26
\ctrl_col[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctrl_col[0]~10_combout\ = (!\sys_mode.MODE_ANIMATION~q\ & (!\WideOr0~combout\ & ((\stop_reg~q\) # (\ctrl_col[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_mode.MODE_ANIMATION~q\,
	datab => \WideOr0~combout\,
	datac => \stop_reg~q\,
	datad => \ctrl_col[0]~8_combout\,
	combout => \ctrl_col[0]~10_combout\);

-- Location: LCCOMB_X60_Y27_N0
\ctrl_col[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctrl_col[0]~11_combout\ = ((!\ctrl_col[0]~10_combout\ & \ctrl_col[0]~5_combout\)) # (!\ctrl_row[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl_row[1]~5_combout\,
	datac => \ctrl_col[0]~10_combout\,
	datad => \ctrl_col[0]~5_combout\,
	combout => \ctrl_col[0]~11_combout\);

-- Location: FF_X60_Y27_N7
\ctrl_col[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctrl_col~14_combout\,
	clrn => \rst_n~input_o\,
	ena => \ctrl_col[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ctrl_col(0));

-- Location: LCCOMB_X60_Y27_N14
\ctrl_col~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctrl_col~15_combout\ = (\sys_mode.MODE_CONTROL~q\ & (!\WideOr0~combout\ & (!\stop_reg~q\ & !\ctrl_col[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_mode.MODE_CONTROL~q\,
	datab => \WideOr0~combout\,
	datac => \stop_reg~q\,
	datad => \ctrl_col[0]~8_combout\,
	combout => \ctrl_col~15_combout\);

-- Location: LCCOMB_X60_Y27_N8
\ctrl_col~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctrl_col~9_combout\ = (\ctrl_col~15_combout\ & (ctrl_col(0) $ (\always2~9_combout\ $ (!ctrl_col(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ctrl_col(0),
	datab => \always2~9_combout\,
	datac => ctrl_col(1),
	datad => \ctrl_col~15_combout\,
	combout => \ctrl_col~9_combout\);

-- Location: FF_X60_Y27_N9
\ctrl_col[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctrl_col~9_combout\,
	clrn => \rst_n~input_o\,
	ena => \ctrl_col[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ctrl_col(1));

-- Location: LCCOMB_X60_Y27_N22
\Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = (ctrl_col(1) & (ctrl_col(2) & ((!ctrl_col(0)) # (!\btn_right_pos~0_combout\)))) # (!ctrl_col(1) & (ctrl_col(2) $ (((!\btn_right_pos~0_combout\ & !ctrl_col(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ctrl_col(2),
	datab => ctrl_col(1),
	datac => \btn_right_pos~0_combout\,
	datad => ctrl_col(0),
	combout => \Add5~0_combout\);

-- Location: LCCOMB_X61_Y27_N12
\ctrl_col~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctrl_col~12_combout\ = (ctrl_col(2) & (\ctrl_col~6_combout\ & ((\ctrl_col[0]~8_combout\) # (!\update_req~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ctrl_col(2),
	datab => \update_req~0_combout\,
	datac => \ctrl_col[0]~8_combout\,
	datad => \ctrl_col~6_combout\,
	combout => \ctrl_col~12_combout\);

-- Location: LCCOMB_X61_Y27_N30
\ctrl_col~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctrl_col~13_combout\ = (\ctrl_col~12_combout\) # ((\Add5~0_combout\ & \ctrl_col~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~0_combout\,
	datac => \ctrl_col~12_combout\,
	datad => \ctrl_col~15_combout\,
	combout => \ctrl_col~13_combout\);

-- Location: FF_X61_Y27_N31
\ctrl_col[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctrl_col~13_combout\,
	clrn => \rst_n~input_o\,
	sclr => \sys_mode.MODE_ANIMATION~q\,
	ena => \ctrl_row~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ctrl_col(2));

-- Location: LCCOMB_X57_Y27_N14
\draw_col~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_col~1_combout\ = (\sys_mode.MODE_ANIMATION~q\ & (col(2))) # (!\sys_mode.MODE_ANIMATION~q\ & ((ctrl_col(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => col(2),
	datac => \sys_mode.MODE_ANIMATION~q\,
	datad => ctrl_col(2),
	combout => \draw_col~1_combout\);

-- Location: FF_X56_Y28_N7
\draw_col[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \draw_col~1_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \always2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => draw_col(2));

-- Location: LCCOMB_X56_Y28_N30
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = draw_col(2) $ (led_idx(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => draw_col(2),
	datad => led_idx(2),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X57_Y27_N22
\draw_col~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_col~2_combout\ = (\sys_mode.MODE_ANIMATION~q\ & (col(0))) # (!\sys_mode.MODE_ANIMATION~q\ & ((!ctrl_col(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => col(0),
	datac => \sys_mode.MODE_ANIMATION~q\,
	datad => ctrl_col(0),
	combout => \draw_col~2_combout\);

-- Location: FF_X56_Y28_N9
\draw_col[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \draw_col~2_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \always2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => draw_col(0));

-- Location: LCCOMB_X56_Y28_N20
\Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (led_idx(0) & (led_idx(1) & (draw_col(0) $ (!bit_idx(4))))) # (!led_idx(0) & ((draw_col(0) & (!led_idx(1) & !bit_idx(4))) # (!draw_col(0) & (led_idx(1) & bit_idx(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_idx(0),
	datab => draw_col(0),
	datac => led_idx(1),
	datad => bit_idx(4),
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X56_Y27_N22
\draw_col~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_col~0_combout\ = (\sys_mode.MODE_ANIMATION~q\ & (!col(1))) # (!\sys_mode.MODE_ANIMATION~q\ & ((!ctrl_col(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => col(1),
	datac => \sys_mode.MODE_ANIMATION~q\,
	datad => ctrl_col(1),
	combout => \draw_col~0_combout\);

-- Location: FF_X56_Y28_N1
\draw_col[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \draw_col~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \always2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => draw_col(1));

-- Location: LCCOMB_X56_Y28_N10
\Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (led_idx(0) & (draw_col(0) $ (((!bit_idx(4)))))) # (!led_idx(0) & ((draw_col(0) & (led_idx(1) & !bit_idx(4))) # (!draw_col(0) & ((bit_idx(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_idx(0),
	datab => draw_col(0),
	datac => led_idx(1),
	datad => bit_idx(4),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X56_Y28_N0
\Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Mux0~1_combout\ & (!draw_col(1) & (\Mux0~0_combout\ $ (!\Mux0~2_combout\)))) # (!\Mux0~1_combout\ & (!\Mux0~0_combout\ & (draw_col(1) & \Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux0~1_combout\,
	datac => draw_col(1),
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X56_Y28_N4
\Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (!bit_idx(3) & (\draw_mode.MODE_ANIMATION~q\ & \current_color[15]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_idx(3),
	datac => \draw_mode.MODE_ANIMATION~q\,
	datad => \current_color[15]~9_combout\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X56_Y28_N2
\current_color[15]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_color[15]~6_combout\ = (draw_col(0) & ((led_idx(2) $ (draw_col(2))) # (!led_idx(0)))) # (!draw_col(0) & ((led_idx(0)) # (led_idx(2) $ (draw_col(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => draw_col(0),
	datab => led_idx(2),
	datac => draw_col(2),
	datad => led_idx(0),
	combout => \current_color[15]~6_combout\);

-- Location: LCCOMB_X56_Y28_N12
\current_color[15]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_color[15]~7_combout\ = (!\current_color[15]~6_combout\ & (draw_col(1) $ (!led_idx(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => draw_col(1),
	datac => led_idx(1),
	datad => \current_color[15]~6_combout\,
	combout => \current_color[15]~7_combout\);

-- Location: LCCOMB_X56_Y28_N16
\Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = draw_col(2) $ (led_idx(2) $ (((draw_col(1) & draw_col(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => draw_col(1),
	datab => draw_col(0),
	datac => draw_col(2),
	datad => led_idx(2),
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X56_Y28_N22
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = draw_col(1) $ (led_idx(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => draw_col(1),
	datac => led_idx(1),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X56_Y28_N14
\Equal6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (!\Equal6~0_combout\ & ((draw_col(0) & (\Equal2~0_combout\ & !led_idx(0))) # (!draw_col(0) & (!\Equal2~0_combout\ & led_idx(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => draw_col(0),
	datab => \Equal6~0_combout\,
	datac => \Equal2~0_combout\,
	datad => led_idx(0),
	combout => \Equal6~1_combout\);

-- Location: LCCOMB_X56_Y27_N26
\current_color[15]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_color[15]~4_combout\ = (draw_row(0) & !led_idx(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => draw_row(0),
	datad => led_idx(3),
	combout => \current_color[15]~4_combout\);

-- Location: LCCOMB_X56_Y27_N18
\current_color[15]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_color[15]~3_combout\ = led_idx(5) $ (draw_row(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => led_idx(5),
	datad => draw_row(2),
	combout => \current_color[15]~3_combout\);

-- Location: LCCOMB_X56_Y27_N0
\current_color[15]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_color[15]~5_combout\ = (draw_row(1) & ((led_idx(4) & ((\current_color[15]~4_combout\) # (\current_color[15]~3_combout\))) # (!led_idx(4) & ((!\current_color[15]~3_combout\) # (!\current_color[15]~4_combout\))))) # (!draw_row(1) & 
-- ((\current_color[15]~3_combout\) # (led_idx(4) $ (\current_color[15]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => draw_row(1),
	datab => led_idx(4),
	datac => \current_color[15]~4_combout\,
	datad => \current_color[15]~3_combout\,
	combout => \current_color[15]~5_combout\);

-- Location: LCCOMB_X56_Y28_N18
\current_color[15]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_color[15]~10_combout\ = (\draw_mode.MODE_ANIMATION~q\ & (\current_color[15]~7_combout\)) # (!\draw_mode.MODE_ANIMATION~q\ & (!\current_color[15]~5_combout\ & ((\current_color[15]~7_combout\) # (\Equal6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_color[15]~7_combout\,
	datab => \draw_mode.MODE_ANIMATION~q\,
	datac => \Equal6~1_combout\,
	datad => \current_color[15]~5_combout\,
	combout => \current_color[15]~10_combout\);

-- Location: LCCOMB_X56_Y28_N24
\Mux0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (\Mux0~6_combout\ & ((\current_color[15]~10_combout\) # ((\Mux0~3_combout\ & \Mux0~4_combout\)))) # (!\Mux0~6_combout\ & (\Mux0~3_combout\ & (\Mux0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~6_combout\,
	datab => \Mux0~3_combout\,
	datac => \Mux0~4_combout\,
	datad => \current_color[15]~10_combout\,
	combout => \Mux0~7_combout\);

-- Location: LCCOMB_X55_Y28_N6
\DIN~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIN~1_combout\ = (clk_cnt(5) & (!clk_cnt(4) & ((\Mux0~7_combout\)))) # (!clk_cnt(5) & (((\DIN~0_combout\) # (\Mux0~7_combout\)) # (!clk_cnt(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(5),
	datab => clk_cnt(4),
	datac => \DIN~0_combout\,
	datad => \Mux0~7_combout\,
	combout => \DIN~1_combout\);

-- Location: LCCOMB_X54_Y28_N16
\DIN~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIN~2_combout\ = (\LessThan16~2_combout\ & (\DIN~1_combout\ & ((\LessThan16~3_combout\) # (!clk_cnt(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan16~3_combout\,
	datab => \LessThan16~2_combout\,
	datac => clk_cnt(5),
	datad => \DIN~1_combout\,
	combout => \DIN~2_combout\);

-- Location: FF_X54_Y28_N17
\DIN~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DIN~2_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.STATE_SEND~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIN~reg0_q\);

-- Location: IOIBUF_X22_Y0_N8
\switch_8bit[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_8bit(2),
	o => \switch_8bit[2]~input_o\);

-- Location: IOIBUF_X27_Y0_N1
\switch_8bit[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_8bit(3),
	o => \switch_8bit[3]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\switch_8bit[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_8bit(4),
	o => \switch_8bit[4]~input_o\);

-- Location: IOIBUF_X22_Y0_N15
\switch_8bit[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_8bit(5),
	o => \switch_8bit[5]~input_o\);

-- Location: IOIBUF_X20_Y0_N22
\switch_8bit[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_8bit(6),
	o => \switch_8bit[6]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\switch_8bit[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_8bit(7),
	o => \switch_8bit[7]~input_o\);

-- Location: IOIBUF_X29_Y43_N1
\PB[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB(2),
	o => \PB[2]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\PB[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB(3),
	o => \PB[3]~input_o\);

ww_DIN <= \DIN~output_o\;
END structure;


