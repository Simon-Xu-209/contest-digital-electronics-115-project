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

-- DATE "07/12/2026 13:58:15"

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

ENTITY 	seven_segment_display IS
    PORT (
	ck : IN std_logic;
	rst_n : IN std_logic;
	switch_8bit : IN std_logic_vector(7 DOWNTO 0);
	column : IN std_logic_vector(2 DOWNTO 0);
	row : OUT std_logic_vector(2 DOWNTO 0);
	WiFi_signal : IN std_logic_vector(15 DOWNTO 0);
	seg_data : OUT std_logic_vector(15 DOWNTO 0);
	seg_com : OUT std_logic_vector(7 DOWNTO 0)
	);
END seven_segment_display;

-- Design Ports Information
-- column[2]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[0]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[1]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[2]	=>  Location: PIN_82,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiFi_signal[0]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiFi_signal[1]	=>  Location: PIN_92,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiFi_signal[2]	=>  Location: PIN_95,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiFi_signal[3]	=>  Location: PIN_219,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiFi_signal[4]	=>  Location: PIN_198,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiFi_signal[5]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiFi_signal[6]	=>  Location: PIN_173,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiFi_signal[7]	=>  Location: PIN_240,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiFi_signal[8]	=>  Location: PIN_160,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiFi_signal[9]	=>  Location: PIN_171,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiFi_signal[10]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiFi_signal[11]	=>  Location: PIN_216,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiFi_signal[12]	=>  Location: PIN_222,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiFi_signal[13]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiFi_signal[14]	=>  Location: PIN_18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WiFi_signal[15]	=>  Location: PIN_224,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_data[0]	=>  Location: PIN_20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_data[1]	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_data[2]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_data[3]	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_data[4]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_data[5]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_data[6]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_data[7]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_data[8]	=>  Location: PIN_19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_data[9]	=>  Location: PIN_21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_data[10]	=>  Location: PIN_37,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_data[11]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_data[12]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_data[13]	=>  Location: PIN_45,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_data[14]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_data[15]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_com[0]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_com[1]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_com[2]	=>  Location: PIN_63,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_com[3]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_com[4]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_com[5]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_com[6]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_com[7]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ck	=>  Location: PIN_149,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_145,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_8bit[0]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_8bit[1]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_8bit[2]	=>  Location: PIN_118,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_8bit[3]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_8bit[4]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_8bit[5]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_8bit[6]	=>  Location: PIN_108,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_8bit[7]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[1]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[0]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF seven_segment_display IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ck : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_switch_8bit : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_column : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_row : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_WiFi_signal : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_seg_data : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_seg_com : std_logic_vector(7 DOWNTO 0);
SIGNAL \rtl~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Counter[10]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ck~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \column[2]~input_o\ : std_logic;
SIGNAL \WiFi_signal[0]~input_o\ : std_logic;
SIGNAL \WiFi_signal[1]~input_o\ : std_logic;
SIGNAL \WiFi_signal[2]~input_o\ : std_logic;
SIGNAL \WiFi_signal[3]~input_o\ : std_logic;
SIGNAL \WiFi_signal[4]~input_o\ : std_logic;
SIGNAL \WiFi_signal[5]~input_o\ : std_logic;
SIGNAL \WiFi_signal[6]~input_o\ : std_logic;
SIGNAL \WiFi_signal[7]~input_o\ : std_logic;
SIGNAL \WiFi_signal[8]~input_o\ : std_logic;
SIGNAL \WiFi_signal[9]~input_o\ : std_logic;
SIGNAL \WiFi_signal[10]~input_o\ : std_logic;
SIGNAL \WiFi_signal[11]~input_o\ : std_logic;
SIGNAL \WiFi_signal[12]~input_o\ : std_logic;
SIGNAL \WiFi_signal[13]~input_o\ : std_logic;
SIGNAL \WiFi_signal[14]~input_o\ : std_logic;
SIGNAL \WiFi_signal[15]~input_o\ : std_logic;
SIGNAL \row[0]~output_o\ : std_logic;
SIGNAL \row[1]~output_o\ : std_logic;
SIGNAL \row[2]~output_o\ : std_logic;
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
SIGNAL \ck~input_o\ : std_logic;
SIGNAL \ck~inputclkctrl_outclk\ : std_logic;
SIGNAL \keyboard_2x2_u1|clk_cnt[0]~16_combout\ : std_logic;
SIGNAL \keyboard_2x2_u1|clk_cnt[8]~33\ : std_logic;
SIGNAL \keyboard_2x2_u1|clk_cnt[9]~34_combout\ : std_logic;
SIGNAL \keyboard_2x2_u1|clk_cnt[9]~35\ : std_logic;
SIGNAL \keyboard_2x2_u1|clk_cnt[10]~36_combout\ : std_logic;
SIGNAL \keyboard_2x2_u1|clk_cnt[10]~37\ : std_logic;
SIGNAL \keyboard_2x2_u1|clk_cnt[11]~38_combout\ : std_logic;
SIGNAL \keyboard_2x2_u1|clk_cnt[11]~39\ : std_logic;
SIGNAL \keyboard_2x2_u1|clk_cnt[12]~40_combout\ : std_logic;
SIGNAL \keyboard_2x2_u1|clk_cnt[12]~41\ : std_logic;
SIGNAL \keyboard_2x2_u1|clk_cnt[13]~42_combout\ : std_logic;
SIGNAL \keyboard_2x2_u1|clk_cnt[13]~43\ : std_logic;
SIGNAL \keyboard_2x2_u1|clk_cnt[14]~44_combout\ : std_logic;
SIGNAL \keyboard_2x2_u1|clk_cnt[14]~45\ : std_logic;
SIGNAL \keyboard_2x2_u1|clk_cnt[15]~46_combout\ : std_logic;
SIGNAL \keyboard_2x2_u1|Equal0~0_combout\ : std_logic;
SIGNAL \keyboard_2x2_u1|LessThan0~0_combout\ : std_logic;
SIGNAL \keyboard_2x2_u1|LessThan0~1_combout\ : std_logic;
SIGNAL \keyboard_2x2_u1|LessThan0~2_combout\ : std_logic;
SIGNAL \keyboard_2x2_u1|clk_cnt[0]~17\ : std_logic;
SIGNAL \keyboard_2x2_u1|clk_cnt[1]~18_combout\ : std_logic;
SIGNAL \keyboard_2x2_u1|clk_cnt[1]~19\ : std_logic;
SIGNAL \keyboard_2x2_u1|clk_cnt[2]~20_combout\ : std_logic;
SIGNAL \keyboard_2x2_u1|clk_cnt[2]~21\ : std_logic;
SIGNAL \keyboard_2x2_u1|clk_cnt[3]~22_combout\ : std_logic;
SIGNAL \keyboard_2x2_u1|clk_cnt[3]~23\ : std_logic;
SIGNAL \keyboard_2x2_u1|clk_cnt[4]~24_combout\ : std_logic;
SIGNAL \keyboard_2x2_u1|clk_cnt[4]~25\ : std_logic;
SIGNAL \keyboard_2x2_u1|clk_cnt[5]~26_combout\ : std_logic;
SIGNAL \keyboard_2x2_u1|clk_cnt[5]~27\ : std_logic;
SIGNAL \keyboard_2x2_u1|clk_cnt[6]~28_combout\ : std_logic;
SIGNAL \keyboard_2x2_u1|clk_cnt[6]~29\ : std_logic;
SIGNAL \keyboard_2x2_u1|clk_cnt[7]~30_combout\ : std_logic;
SIGNAL \keyboard_2x2_u1|clk_cnt[7]~31\ : std_logic;
SIGNAL \keyboard_2x2_u1|clk_cnt[8]~32_combout\ : std_logic;
SIGNAL \keyboard_2x2_u1|Equal0~1_combout\ : std_logic;
SIGNAL \keyboard_2x2_u1|Equal0~3_combout\ : std_logic;
SIGNAL \keyboard_2x2_u1|Equal0~2_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \rtl~0clkctrl_outclk\ : std_logic;
SIGNAL \keyboard_2x2_u1|row[1]~0_combout\ : std_logic;
SIGNAL \Counter[0]~30_combout\ : std_logic;
SIGNAL \Counter[1]~10_combout\ : std_logic;
SIGNAL \Counter[1]~11\ : std_logic;
SIGNAL \Counter[2]~12_combout\ : std_logic;
SIGNAL \Counter[2]~13\ : std_logic;
SIGNAL \Counter[3]~14_combout\ : std_logic;
SIGNAL \Counter[3]~15\ : std_logic;
SIGNAL \Counter[4]~16_combout\ : std_logic;
SIGNAL \Counter[4]~17\ : std_logic;
SIGNAL \Counter[5]~18_combout\ : std_logic;
SIGNAL \Counter[5]~19\ : std_logic;
SIGNAL \Counter[6]~20_combout\ : std_logic;
SIGNAL \Counter[6]~21\ : std_logic;
SIGNAL \Counter[7]~22_combout\ : std_logic;
SIGNAL \Counter[7]~23\ : std_logic;
SIGNAL \Counter[8]~24_combout\ : std_logic;
SIGNAL \Counter[8]~25\ : std_logic;
SIGNAL \Counter[9]~26_combout\ : std_logic;
SIGNAL \Counter[9]~27\ : std_logic;
SIGNAL \Counter[10]~28_combout\ : std_logic;
SIGNAL \Counter[10]~clkctrl_outclk\ : std_logic;
SIGNAL \column[1]~input_o\ : std_logic;
SIGNAL \keyboard_2x2_u1|KEY_buffer[0]~0_combout\ : std_logic;
SIGNAL \keyboard_2x2_u1|KEY[0]~feeder_combout\ : std_logic;
SIGNAL \KEY_buffer[0]~feeder_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \keyboard_2x2_u1|KEY_buffer[2]~2_combout\ : std_logic;
SIGNAL \keyboard_2x2_u1|KEY[2]~feeder_combout\ : std_logic;
SIGNAL \column[0]~input_o\ : std_logic;
SIGNAL \keyboard_2x2_u1|KEY_buffer[3]~1_combout\ : std_logic;
SIGNAL \keyboard_2x2_u1|KEY_buffer[1]~3_combout\ : std_logic;
SIGNAL \keyboard_2x2_u1|KEY[1]~feeder_combout\ : std_logic;
SIGNAL \KEY_buffer[2]~0_combout\ : std_logic;
SIGNAL \KEY_buffer~3_combout\ : std_logic;
SIGNAL \KEY_buffer~1_combout\ : std_logic;
SIGNAL \KEY_buffer~2_combout\ : std_logic;
SIGNAL \seg_com_data~1_combout\ : std_logic;
SIGNAL \switch_8bit[6]~input_o\ : std_logic;
SIGNAL \switch_8bit[4]~input_o\ : std_logic;
SIGNAL \switch_8bit[7]~input_o\ : std_logic;
SIGNAL \switch_8bit[5]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \switch_8bit[3]~input_o\ : std_logic;
SIGNAL \switch_8bit[1]~input_o\ : std_logic;
SIGNAL \switch_8bit[2]~input_o\ : std_logic;
SIGNAL \switch_8bit[0]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \seg_com_data[0][1]~q\ : std_logic;
SIGNAL \seg_com_num[0]~2_combout\ : std_logic;
SIGNAL \seg_com_num[1]~1_combout\ : std_logic;
SIGNAL \seg_com_num[2]~0_combout\ : std_logic;
SIGNAL \seg_com_data~0_combout\ : std_logic;
SIGNAL \seg_com_data[0][0]~q\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \seg_data[0]~reg0feeder_combout\ : std_logic;
SIGNAL \seg_data[0]~reg0_q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \seg_data[1]~reg0feeder_combout\ : std_logic;
SIGNAL \seg_data[1]~reg0_q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \seg_data[2]~reg0feeder_combout\ : std_logic;
SIGNAL \seg_data[2]~reg0_q\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \seg_data[3]~reg0feeder_combout\ : std_logic;
SIGNAL \seg_data[3]~reg0_q\ : std_logic;
SIGNAL \seg_com_data[0][4]~feeder_combout\ : std_logic;
SIGNAL \seg_com_data[0][4]~q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \seg_data[4]~reg0feeder_combout\ : std_logic;
SIGNAL \seg_data[4]~reg0_q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \seg_data[5]~reg0feeder_combout\ : std_logic;
SIGNAL \seg_data[5]~reg0_q\ : std_logic;
SIGNAL \seg_com_data~2_combout\ : std_logic;
SIGNAL \seg_com_data[0][6]~q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \seg_data[6]~reg0feeder_combout\ : std_logic;
SIGNAL \seg_data[6]~reg0_q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \seg_data[7]~reg0_q\ : std_logic;
SIGNAL \seg_data[8]~reg0_q\ : std_logic;
SIGNAL \seg_data[9]~reg0_q\ : std_logic;
SIGNAL \seg_data[10]~reg0_q\ : std_logic;
SIGNAL \seg_data[11]~reg0_q\ : std_logic;
SIGNAL \seg_data[12]~reg0_q\ : std_logic;
SIGNAL \seg_data[13]~reg0_q\ : std_logic;
SIGNAL \seg_data[14]~reg0_q\ : std_logic;
SIGNAL \seg_data[15]~reg0feeder_combout\ : std_logic;
SIGNAL \seg_data[15]~reg0_q\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \seg_com[0]~reg0_q\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \seg_com[1]~reg0_q\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \seg_com[2]~reg0_q\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \seg_com[3]~reg0_q\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \seg_com[4]~reg0_q\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \seg_com[5]~reg0_q\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \seg_com[6]~reg0_q\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \seg_com[7]~reg0_q\ : std_logic;
SIGNAL seg_com_num : std_logic_vector(2 DOWNTO 0);
SIGNAL KEY_buffer : std_logic_vector(8 DOWNTO 0);
SIGNAL Counter : std_logic_vector(25 DOWNTO 0);
SIGNAL \keyboard_2x2_u1|row\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \keyboard_2x2_u1|clk_cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \keyboard_2x2_u1|KEY_buffer\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \keyboard_2x2_u1|KEY\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \keyboard_2x2_u1|ALT_INV_row\ : std_logic_vector(1 DOWNTO 1);

BEGIN

ww_ck <= ck;
ww_rst_n <= rst_n;
ww_switch_8bit <= switch_8bit;
ww_column <= column;
row <= ww_row;
ww_WiFi_signal <= WiFi_signal;
seg_data <= ww_seg_data;
seg_com <= ww_seg_com;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rtl~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~0_combout\);

\Counter[10]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & Counter(10));

\ck~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ck~input_o\);
\keyboard_2x2_u1|ALT_INV_row\(1) <= NOT \keyboard_2x2_u1|row\(1);

-- Location: IOOBUF_X19_Y0_N16
\row[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keyboard_2x2_u1|ALT_INV_row\(1),
	devoe => ww_devoe,
	o => \row[0]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\row[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keyboard_2x2_u1|row\(1),
	devoe => ww_devoe,
	o => \row[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\row[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \row[2]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\seg_data[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_data[0]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_data[0]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\seg_data[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_data[1]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_data[1]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\seg_data[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_data[2]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_data[2]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\seg_data[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_data[3]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_data[3]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\seg_data[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_data[4]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_data[4]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\seg_data[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_data[5]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_data[5]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\seg_data[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_data[6]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_data[6]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\seg_data[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_data[7]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_data[7]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\seg_data[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_data[8]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_data[8]~output_o\);

-- Location: IOOBUF_X0_Y21_N2
\seg_data[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_data[9]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_data[9]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\seg_data[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_data[10]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_data[10]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\seg_data[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_data[11]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_data[11]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\seg_data[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_data[12]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_data[12]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\seg_data[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_data[13]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_data[13]~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\seg_data[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_data[14]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_data[14]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\seg_data[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_data[15]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_data[15]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\seg_com[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_com[0]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_com[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\seg_com[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_com[1]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_com[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\seg_com[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_com[2]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_com[2]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\seg_com[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_com[3]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_com[3]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\seg_com[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_com[4]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_com[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N30
\seg_com[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_com[5]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_com[5]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\seg_com[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_com[6]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_com[6]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\seg_com[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_com[7]~reg0_q\,
	devoe => ww_devoe,
	o => \seg_com[7]~output_o\);

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

-- Location: LCCOMB_X40_Y15_N0
\keyboard_2x2_u1|clk_cnt[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard_2x2_u1|clk_cnt[0]~16_combout\ = \keyboard_2x2_u1|clk_cnt\(0) $ (VCC)
-- \keyboard_2x2_u1|clk_cnt[0]~17\ = CARRY(\keyboard_2x2_u1|clk_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_2x2_u1|clk_cnt\(0),
	datad => VCC,
	combout => \keyboard_2x2_u1|clk_cnt[0]~16_combout\,
	cout => \keyboard_2x2_u1|clk_cnt[0]~17\);

-- Location: LCCOMB_X40_Y15_N16
\keyboard_2x2_u1|clk_cnt[8]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard_2x2_u1|clk_cnt[8]~32_combout\ = (\keyboard_2x2_u1|clk_cnt\(8) & (\keyboard_2x2_u1|clk_cnt[7]~31\ $ (GND))) # (!\keyboard_2x2_u1|clk_cnt\(8) & (!\keyboard_2x2_u1|clk_cnt[7]~31\ & VCC))
-- \keyboard_2x2_u1|clk_cnt[8]~33\ = CARRY((\keyboard_2x2_u1|clk_cnt\(8) & !\keyboard_2x2_u1|clk_cnt[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard_2x2_u1|clk_cnt\(8),
	datad => VCC,
	cin => \keyboard_2x2_u1|clk_cnt[7]~31\,
	combout => \keyboard_2x2_u1|clk_cnt[8]~32_combout\,
	cout => \keyboard_2x2_u1|clk_cnt[8]~33\);

-- Location: LCCOMB_X40_Y15_N18
\keyboard_2x2_u1|clk_cnt[9]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard_2x2_u1|clk_cnt[9]~34_combout\ = (\keyboard_2x2_u1|clk_cnt\(9) & (!\keyboard_2x2_u1|clk_cnt[8]~33\)) # (!\keyboard_2x2_u1|clk_cnt\(9) & ((\keyboard_2x2_u1|clk_cnt[8]~33\) # (GND)))
-- \keyboard_2x2_u1|clk_cnt[9]~35\ = CARRY((!\keyboard_2x2_u1|clk_cnt[8]~33\) # (!\keyboard_2x2_u1|clk_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard_2x2_u1|clk_cnt\(9),
	datad => VCC,
	cin => \keyboard_2x2_u1|clk_cnt[8]~33\,
	combout => \keyboard_2x2_u1|clk_cnt[9]~34_combout\,
	cout => \keyboard_2x2_u1|clk_cnt[9]~35\);

-- Location: FF_X40_Y15_N19
\keyboard_2x2_u1|clk_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \keyboard_2x2_u1|clk_cnt[9]~34_combout\,
	sclr => \keyboard_2x2_u1|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard_2x2_u1|clk_cnt\(9));

-- Location: LCCOMB_X40_Y15_N20
\keyboard_2x2_u1|clk_cnt[10]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard_2x2_u1|clk_cnt[10]~36_combout\ = (\keyboard_2x2_u1|clk_cnt\(10) & (\keyboard_2x2_u1|clk_cnt[9]~35\ $ (GND))) # (!\keyboard_2x2_u1|clk_cnt\(10) & (!\keyboard_2x2_u1|clk_cnt[9]~35\ & VCC))
-- \keyboard_2x2_u1|clk_cnt[10]~37\ = CARRY((\keyboard_2x2_u1|clk_cnt\(10) & !\keyboard_2x2_u1|clk_cnt[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard_2x2_u1|clk_cnt\(10),
	datad => VCC,
	cin => \keyboard_2x2_u1|clk_cnt[9]~35\,
	combout => \keyboard_2x2_u1|clk_cnt[10]~36_combout\,
	cout => \keyboard_2x2_u1|clk_cnt[10]~37\);

-- Location: FF_X40_Y15_N21
\keyboard_2x2_u1|clk_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \keyboard_2x2_u1|clk_cnt[10]~36_combout\,
	sclr => \keyboard_2x2_u1|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard_2x2_u1|clk_cnt\(10));

-- Location: LCCOMB_X40_Y15_N22
\keyboard_2x2_u1|clk_cnt[11]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard_2x2_u1|clk_cnt[11]~38_combout\ = (\keyboard_2x2_u1|clk_cnt\(11) & (!\keyboard_2x2_u1|clk_cnt[10]~37\)) # (!\keyboard_2x2_u1|clk_cnt\(11) & ((\keyboard_2x2_u1|clk_cnt[10]~37\) # (GND)))
-- \keyboard_2x2_u1|clk_cnt[11]~39\ = CARRY((!\keyboard_2x2_u1|clk_cnt[10]~37\) # (!\keyboard_2x2_u1|clk_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_2x2_u1|clk_cnt\(11),
	datad => VCC,
	cin => \keyboard_2x2_u1|clk_cnt[10]~37\,
	combout => \keyboard_2x2_u1|clk_cnt[11]~38_combout\,
	cout => \keyboard_2x2_u1|clk_cnt[11]~39\);

-- Location: FF_X40_Y15_N23
\keyboard_2x2_u1|clk_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \keyboard_2x2_u1|clk_cnt[11]~38_combout\,
	sclr => \keyboard_2x2_u1|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard_2x2_u1|clk_cnt\(11));

-- Location: LCCOMB_X40_Y15_N24
\keyboard_2x2_u1|clk_cnt[12]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard_2x2_u1|clk_cnt[12]~40_combout\ = (\keyboard_2x2_u1|clk_cnt\(12) & (\keyboard_2x2_u1|clk_cnt[11]~39\ $ (GND))) # (!\keyboard_2x2_u1|clk_cnt\(12) & (!\keyboard_2x2_u1|clk_cnt[11]~39\ & VCC))
-- \keyboard_2x2_u1|clk_cnt[12]~41\ = CARRY((\keyboard_2x2_u1|clk_cnt\(12) & !\keyboard_2x2_u1|clk_cnt[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard_2x2_u1|clk_cnt\(12),
	datad => VCC,
	cin => \keyboard_2x2_u1|clk_cnt[11]~39\,
	combout => \keyboard_2x2_u1|clk_cnt[12]~40_combout\,
	cout => \keyboard_2x2_u1|clk_cnt[12]~41\);

-- Location: FF_X40_Y15_N25
\keyboard_2x2_u1|clk_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \keyboard_2x2_u1|clk_cnt[12]~40_combout\,
	sclr => \keyboard_2x2_u1|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard_2x2_u1|clk_cnt\(12));

-- Location: LCCOMB_X40_Y15_N26
\keyboard_2x2_u1|clk_cnt[13]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard_2x2_u1|clk_cnt[13]~42_combout\ = (\keyboard_2x2_u1|clk_cnt\(13) & (!\keyboard_2x2_u1|clk_cnt[12]~41\)) # (!\keyboard_2x2_u1|clk_cnt\(13) & ((\keyboard_2x2_u1|clk_cnt[12]~41\) # (GND)))
-- \keyboard_2x2_u1|clk_cnt[13]~43\ = CARRY((!\keyboard_2x2_u1|clk_cnt[12]~41\) # (!\keyboard_2x2_u1|clk_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_2x2_u1|clk_cnt\(13),
	datad => VCC,
	cin => \keyboard_2x2_u1|clk_cnt[12]~41\,
	combout => \keyboard_2x2_u1|clk_cnt[13]~42_combout\,
	cout => \keyboard_2x2_u1|clk_cnt[13]~43\);

-- Location: FF_X40_Y15_N27
\keyboard_2x2_u1|clk_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \keyboard_2x2_u1|clk_cnt[13]~42_combout\,
	sclr => \keyboard_2x2_u1|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard_2x2_u1|clk_cnt\(13));

-- Location: LCCOMB_X40_Y15_N28
\keyboard_2x2_u1|clk_cnt[14]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard_2x2_u1|clk_cnt[14]~44_combout\ = (\keyboard_2x2_u1|clk_cnt\(14) & (\keyboard_2x2_u1|clk_cnt[13]~43\ $ (GND))) # (!\keyboard_2x2_u1|clk_cnt\(14) & (!\keyboard_2x2_u1|clk_cnt[13]~43\ & VCC))
-- \keyboard_2x2_u1|clk_cnt[14]~45\ = CARRY((\keyboard_2x2_u1|clk_cnt\(14) & !\keyboard_2x2_u1|clk_cnt[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard_2x2_u1|clk_cnt\(14),
	datad => VCC,
	cin => \keyboard_2x2_u1|clk_cnt[13]~43\,
	combout => \keyboard_2x2_u1|clk_cnt[14]~44_combout\,
	cout => \keyboard_2x2_u1|clk_cnt[14]~45\);

-- Location: FF_X40_Y15_N29
\keyboard_2x2_u1|clk_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \keyboard_2x2_u1|clk_cnt[14]~44_combout\,
	sclr => \keyboard_2x2_u1|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard_2x2_u1|clk_cnt\(14));

-- Location: LCCOMB_X40_Y15_N30
\keyboard_2x2_u1|clk_cnt[15]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard_2x2_u1|clk_cnt[15]~46_combout\ = \keyboard_2x2_u1|clk_cnt[14]~45\ $ (\keyboard_2x2_u1|clk_cnt\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \keyboard_2x2_u1|clk_cnt\(15),
	cin => \keyboard_2x2_u1|clk_cnt[14]~45\,
	combout => \keyboard_2x2_u1|clk_cnt[15]~46_combout\);

-- Location: FF_X40_Y15_N31
\keyboard_2x2_u1|clk_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \keyboard_2x2_u1|clk_cnt[15]~46_combout\,
	sclr => \keyboard_2x2_u1|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard_2x2_u1|clk_cnt\(15));

-- Location: LCCOMB_X39_Y15_N18
\keyboard_2x2_u1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard_2x2_u1|Equal0~0_combout\ = (!\keyboard_2x2_u1|clk_cnt\(10) & (!\keyboard_2x2_u1|clk_cnt\(13) & (!\keyboard_2x2_u1|clk_cnt\(11) & !\keyboard_2x2_u1|clk_cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_2x2_u1|clk_cnt\(10),
	datab => \keyboard_2x2_u1|clk_cnt\(13),
	datac => \keyboard_2x2_u1|clk_cnt\(11),
	datad => \keyboard_2x2_u1|clk_cnt\(12),
	combout => \keyboard_2x2_u1|Equal0~0_combout\);

-- Location: LCCOMB_X39_Y15_N16
\keyboard_2x2_u1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard_2x2_u1|LessThan0~0_combout\ = (!\keyboard_2x2_u1|clk_cnt\(7) & (((!\keyboard_2x2_u1|clk_cnt\(4) & !\keyboard_2x2_u1|clk_cnt\(5))) # (!\keyboard_2x2_u1|clk_cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_2x2_u1|clk_cnt\(4),
	datab => \keyboard_2x2_u1|clk_cnt\(5),
	datac => \keyboard_2x2_u1|clk_cnt\(7),
	datad => \keyboard_2x2_u1|clk_cnt\(6),
	combout => \keyboard_2x2_u1|LessThan0~0_combout\);

-- Location: LCCOMB_X39_Y15_N28
\keyboard_2x2_u1|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard_2x2_u1|LessThan0~1_combout\ = (\keyboard_2x2_u1|clk_cnt\(9) & (\keyboard_2x2_u1|clk_cnt\(8) & !\keyboard_2x2_u1|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keyboard_2x2_u1|clk_cnt\(9),
	datac => \keyboard_2x2_u1|clk_cnt\(8),
	datad => \keyboard_2x2_u1|LessThan0~0_combout\,
	combout => \keyboard_2x2_u1|LessThan0~1_combout\);

-- Location: LCCOMB_X39_Y15_N6
\keyboard_2x2_u1|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard_2x2_u1|LessThan0~2_combout\ = (\keyboard_2x2_u1|clk_cnt\(15) & (\keyboard_2x2_u1|clk_cnt\(14) & ((\keyboard_2x2_u1|LessThan0~1_combout\) # (!\keyboard_2x2_u1|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_2x2_u1|clk_cnt\(15),
	datab => \keyboard_2x2_u1|Equal0~0_combout\,
	datac => \keyboard_2x2_u1|clk_cnt\(14),
	datad => \keyboard_2x2_u1|LessThan0~1_combout\,
	combout => \keyboard_2x2_u1|LessThan0~2_combout\);

-- Location: FF_X39_Y15_N9
\keyboard_2x2_u1|clk_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \keyboard_2x2_u1|clk_cnt[0]~16_combout\,
	sclr => \keyboard_2x2_u1|LessThan0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard_2x2_u1|clk_cnt\(0));

-- Location: LCCOMB_X40_Y15_N2
\keyboard_2x2_u1|clk_cnt[1]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard_2x2_u1|clk_cnt[1]~18_combout\ = (\keyboard_2x2_u1|clk_cnt\(1) & (!\keyboard_2x2_u1|clk_cnt[0]~17\)) # (!\keyboard_2x2_u1|clk_cnt\(1) & ((\keyboard_2x2_u1|clk_cnt[0]~17\) # (GND)))
-- \keyboard_2x2_u1|clk_cnt[1]~19\ = CARRY((!\keyboard_2x2_u1|clk_cnt[0]~17\) # (!\keyboard_2x2_u1|clk_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard_2x2_u1|clk_cnt\(1),
	datad => VCC,
	cin => \keyboard_2x2_u1|clk_cnt[0]~17\,
	combout => \keyboard_2x2_u1|clk_cnt[1]~18_combout\,
	cout => \keyboard_2x2_u1|clk_cnt[1]~19\);

-- Location: FF_X40_Y15_N3
\keyboard_2x2_u1|clk_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \keyboard_2x2_u1|clk_cnt[1]~18_combout\,
	sclr => \keyboard_2x2_u1|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard_2x2_u1|clk_cnt\(1));

-- Location: LCCOMB_X40_Y15_N4
\keyboard_2x2_u1|clk_cnt[2]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard_2x2_u1|clk_cnt[2]~20_combout\ = (\keyboard_2x2_u1|clk_cnt\(2) & (\keyboard_2x2_u1|clk_cnt[1]~19\ $ (GND))) # (!\keyboard_2x2_u1|clk_cnt\(2) & (!\keyboard_2x2_u1|clk_cnt[1]~19\ & VCC))
-- \keyboard_2x2_u1|clk_cnt[2]~21\ = CARRY((\keyboard_2x2_u1|clk_cnt\(2) & !\keyboard_2x2_u1|clk_cnt[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard_2x2_u1|clk_cnt\(2),
	datad => VCC,
	cin => \keyboard_2x2_u1|clk_cnt[1]~19\,
	combout => \keyboard_2x2_u1|clk_cnt[2]~20_combout\,
	cout => \keyboard_2x2_u1|clk_cnt[2]~21\);

-- Location: FF_X40_Y15_N5
\keyboard_2x2_u1|clk_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \keyboard_2x2_u1|clk_cnt[2]~20_combout\,
	sclr => \keyboard_2x2_u1|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard_2x2_u1|clk_cnt\(2));

-- Location: LCCOMB_X40_Y15_N6
\keyboard_2x2_u1|clk_cnt[3]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard_2x2_u1|clk_cnt[3]~22_combout\ = (\keyboard_2x2_u1|clk_cnt\(3) & (!\keyboard_2x2_u1|clk_cnt[2]~21\)) # (!\keyboard_2x2_u1|clk_cnt\(3) & ((\keyboard_2x2_u1|clk_cnt[2]~21\) # (GND)))
-- \keyboard_2x2_u1|clk_cnt[3]~23\ = CARRY((!\keyboard_2x2_u1|clk_cnt[2]~21\) # (!\keyboard_2x2_u1|clk_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_2x2_u1|clk_cnt\(3),
	datad => VCC,
	cin => \keyboard_2x2_u1|clk_cnt[2]~21\,
	combout => \keyboard_2x2_u1|clk_cnt[3]~22_combout\,
	cout => \keyboard_2x2_u1|clk_cnt[3]~23\);

-- Location: FF_X40_Y15_N7
\keyboard_2x2_u1|clk_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \keyboard_2x2_u1|clk_cnt[3]~22_combout\,
	sclr => \keyboard_2x2_u1|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard_2x2_u1|clk_cnt\(3));

-- Location: LCCOMB_X40_Y15_N8
\keyboard_2x2_u1|clk_cnt[4]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard_2x2_u1|clk_cnt[4]~24_combout\ = (\keyboard_2x2_u1|clk_cnt\(4) & (\keyboard_2x2_u1|clk_cnt[3]~23\ $ (GND))) # (!\keyboard_2x2_u1|clk_cnt\(4) & (!\keyboard_2x2_u1|clk_cnt[3]~23\ & VCC))
-- \keyboard_2x2_u1|clk_cnt[4]~25\ = CARRY((\keyboard_2x2_u1|clk_cnt\(4) & !\keyboard_2x2_u1|clk_cnt[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard_2x2_u1|clk_cnt\(4),
	datad => VCC,
	cin => \keyboard_2x2_u1|clk_cnt[3]~23\,
	combout => \keyboard_2x2_u1|clk_cnt[4]~24_combout\,
	cout => \keyboard_2x2_u1|clk_cnt[4]~25\);

-- Location: FF_X40_Y15_N9
\keyboard_2x2_u1|clk_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \keyboard_2x2_u1|clk_cnt[4]~24_combout\,
	sclr => \keyboard_2x2_u1|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard_2x2_u1|clk_cnt\(4));

-- Location: LCCOMB_X40_Y15_N10
\keyboard_2x2_u1|clk_cnt[5]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard_2x2_u1|clk_cnt[5]~26_combout\ = (\keyboard_2x2_u1|clk_cnt\(5) & (!\keyboard_2x2_u1|clk_cnt[4]~25\)) # (!\keyboard_2x2_u1|clk_cnt\(5) & ((\keyboard_2x2_u1|clk_cnt[4]~25\) # (GND)))
-- \keyboard_2x2_u1|clk_cnt[5]~27\ = CARRY((!\keyboard_2x2_u1|clk_cnt[4]~25\) # (!\keyboard_2x2_u1|clk_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_2x2_u1|clk_cnt\(5),
	datad => VCC,
	cin => \keyboard_2x2_u1|clk_cnt[4]~25\,
	combout => \keyboard_2x2_u1|clk_cnt[5]~26_combout\,
	cout => \keyboard_2x2_u1|clk_cnt[5]~27\);

-- Location: FF_X40_Y15_N11
\keyboard_2x2_u1|clk_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \keyboard_2x2_u1|clk_cnt[5]~26_combout\,
	sclr => \keyboard_2x2_u1|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard_2x2_u1|clk_cnt\(5));

-- Location: LCCOMB_X40_Y15_N12
\keyboard_2x2_u1|clk_cnt[6]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard_2x2_u1|clk_cnt[6]~28_combout\ = (\keyboard_2x2_u1|clk_cnt\(6) & (\keyboard_2x2_u1|clk_cnt[5]~27\ $ (GND))) # (!\keyboard_2x2_u1|clk_cnt\(6) & (!\keyboard_2x2_u1|clk_cnt[5]~27\ & VCC))
-- \keyboard_2x2_u1|clk_cnt[6]~29\ = CARRY((\keyboard_2x2_u1|clk_cnt\(6) & !\keyboard_2x2_u1|clk_cnt[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_2x2_u1|clk_cnt\(6),
	datad => VCC,
	cin => \keyboard_2x2_u1|clk_cnt[5]~27\,
	combout => \keyboard_2x2_u1|clk_cnt[6]~28_combout\,
	cout => \keyboard_2x2_u1|clk_cnt[6]~29\);

-- Location: FF_X40_Y15_N13
\keyboard_2x2_u1|clk_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \keyboard_2x2_u1|clk_cnt[6]~28_combout\,
	sclr => \keyboard_2x2_u1|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard_2x2_u1|clk_cnt\(6));

-- Location: LCCOMB_X40_Y15_N14
\keyboard_2x2_u1|clk_cnt[7]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard_2x2_u1|clk_cnt[7]~30_combout\ = (\keyboard_2x2_u1|clk_cnt\(7) & (!\keyboard_2x2_u1|clk_cnt[6]~29\)) # (!\keyboard_2x2_u1|clk_cnt\(7) & ((\keyboard_2x2_u1|clk_cnt[6]~29\) # (GND)))
-- \keyboard_2x2_u1|clk_cnt[7]~31\ = CARRY((!\keyboard_2x2_u1|clk_cnt[6]~29\) # (!\keyboard_2x2_u1|clk_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard_2x2_u1|clk_cnt\(7),
	datad => VCC,
	cin => \keyboard_2x2_u1|clk_cnt[6]~29\,
	combout => \keyboard_2x2_u1|clk_cnt[7]~30_combout\,
	cout => \keyboard_2x2_u1|clk_cnt[7]~31\);

-- Location: FF_X40_Y15_N15
\keyboard_2x2_u1|clk_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \keyboard_2x2_u1|clk_cnt[7]~30_combout\,
	sclr => \keyboard_2x2_u1|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard_2x2_u1|clk_cnt\(7));

-- Location: FF_X40_Y15_N17
\keyboard_2x2_u1|clk_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \keyboard_2x2_u1|clk_cnt[8]~32_combout\,
	sclr => \keyboard_2x2_u1|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard_2x2_u1|clk_cnt\(8));

-- Location: LCCOMB_X39_Y15_N26
\keyboard_2x2_u1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard_2x2_u1|Equal0~1_combout\ = (\keyboard_2x2_u1|clk_cnt\(8) & (!\keyboard_2x2_u1|clk_cnt\(7) & (!\keyboard_2x2_u1|clk_cnt\(5) & \keyboard_2x2_u1|clk_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_2x2_u1|clk_cnt\(8),
	datab => \keyboard_2x2_u1|clk_cnt\(7),
	datac => \keyboard_2x2_u1|clk_cnt\(5),
	datad => \keyboard_2x2_u1|clk_cnt\(9),
	combout => \keyboard_2x2_u1|Equal0~1_combout\);

-- Location: LCCOMB_X39_Y15_N24
\keyboard_2x2_u1|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard_2x2_u1|Equal0~3_combout\ = (!\keyboard_2x2_u1|clk_cnt\(2) & (\keyboard_2x2_u1|clk_cnt\(6) & (\keyboard_2x2_u1|clk_cnt\(4) & !\keyboard_2x2_u1|clk_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_2x2_u1|clk_cnt\(2),
	datab => \keyboard_2x2_u1|clk_cnt\(6),
	datac => \keyboard_2x2_u1|clk_cnt\(4),
	datad => \keyboard_2x2_u1|clk_cnt\(3),
	combout => \keyboard_2x2_u1|Equal0~3_combout\);

-- Location: LCCOMB_X39_Y15_N30
\keyboard_2x2_u1|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard_2x2_u1|Equal0~2_combout\ = (\keyboard_2x2_u1|clk_cnt\(15) & (!\keyboard_2x2_u1|clk_cnt\(1) & (!\keyboard_2x2_u1|clk_cnt\(0) & \keyboard_2x2_u1|clk_cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_2x2_u1|clk_cnt\(15),
	datab => \keyboard_2x2_u1|clk_cnt\(1),
	datac => \keyboard_2x2_u1|clk_cnt\(0),
	datad => \keyboard_2x2_u1|clk_cnt\(14),
	combout => \keyboard_2x2_u1|Equal0~2_combout\);

-- Location: LCCOMB_X39_Y15_N20
\rtl~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = LCELL((\keyboard_2x2_u1|Equal0~1_combout\ & (\keyboard_2x2_u1|Equal0~3_combout\ & (\keyboard_2x2_u1|Equal0~2_combout\ & \keyboard_2x2_u1|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_2x2_u1|Equal0~1_combout\,
	datab => \keyboard_2x2_u1|Equal0~3_combout\,
	datac => \keyboard_2x2_u1|Equal0~2_combout\,
	datad => \keyboard_2x2_u1|Equal0~0_combout\,
	combout => \rtl~0_combout\);

-- Location: CLKCTRL_G7
\rtl~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~0clkctrl_outclk\);

-- Location: LCCOMB_X7_Y2_N24
\keyboard_2x2_u1|row[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard_2x2_u1|row[1]~0_combout\ = !\keyboard_2x2_u1|row\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keyboard_2x2_u1|row\(1),
	combout => \keyboard_2x2_u1|row[1]~0_combout\);

-- Location: FF_X7_Y2_N25
\keyboard_2x2_u1|row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \keyboard_2x2_u1|row[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard_2x2_u1|row\(1));

-- Location: LCCOMB_X21_Y28_N6
\Counter[0]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Counter[0]~30_combout\ = !Counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Counter(0),
	combout => \Counter[0]~30_combout\);

-- Location: FF_X21_Y28_N7
\Counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \Counter[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(0));

-- Location: LCCOMB_X21_Y28_N8
\Counter[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Counter[1]~10_combout\ = (Counter(0) & (Counter(1) $ (VCC))) # (!Counter(0) & (Counter(1) & VCC))
-- \Counter[1]~11\ = CARRY((Counter(0) & Counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Counter(0),
	datab => Counter(1),
	datad => VCC,
	combout => \Counter[1]~10_combout\,
	cout => \Counter[1]~11\);

-- Location: FF_X21_Y28_N9
\Counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \Counter[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(1));

-- Location: LCCOMB_X21_Y28_N10
\Counter[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Counter[2]~12_combout\ = (Counter(2) & (!\Counter[1]~11\)) # (!Counter(2) & ((\Counter[1]~11\) # (GND)))
-- \Counter[2]~13\ = CARRY((!\Counter[1]~11\) # (!Counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Counter(2),
	datad => VCC,
	cin => \Counter[1]~11\,
	combout => \Counter[2]~12_combout\,
	cout => \Counter[2]~13\);

-- Location: FF_X21_Y28_N11
\Counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \Counter[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(2));

-- Location: LCCOMB_X21_Y28_N12
\Counter[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Counter[3]~14_combout\ = (Counter(3) & (\Counter[2]~13\ $ (GND))) # (!Counter(3) & (!\Counter[2]~13\ & VCC))
-- \Counter[3]~15\ = CARRY((Counter(3) & !\Counter[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Counter(3),
	datad => VCC,
	cin => \Counter[2]~13\,
	combout => \Counter[3]~14_combout\,
	cout => \Counter[3]~15\);

-- Location: FF_X21_Y28_N13
\Counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \Counter[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(3));

-- Location: LCCOMB_X21_Y28_N14
\Counter[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Counter[4]~16_combout\ = (Counter(4) & (!\Counter[3]~15\)) # (!Counter(4) & ((\Counter[3]~15\) # (GND)))
-- \Counter[4]~17\ = CARRY((!\Counter[3]~15\) # (!Counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Counter(4),
	datad => VCC,
	cin => \Counter[3]~15\,
	combout => \Counter[4]~16_combout\,
	cout => \Counter[4]~17\);

-- Location: FF_X21_Y28_N15
\Counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \Counter[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(4));

-- Location: LCCOMB_X21_Y28_N16
\Counter[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Counter[5]~18_combout\ = (Counter(5) & (\Counter[4]~17\ $ (GND))) # (!Counter(5) & (!\Counter[4]~17\ & VCC))
-- \Counter[5]~19\ = CARRY((Counter(5) & !\Counter[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Counter(5),
	datad => VCC,
	cin => \Counter[4]~17\,
	combout => \Counter[5]~18_combout\,
	cout => \Counter[5]~19\);

-- Location: FF_X21_Y28_N17
\Counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \Counter[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(5));

-- Location: LCCOMB_X21_Y28_N18
\Counter[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Counter[6]~20_combout\ = (Counter(6) & (!\Counter[5]~19\)) # (!Counter(6) & ((\Counter[5]~19\) # (GND)))
-- \Counter[6]~21\ = CARRY((!\Counter[5]~19\) # (!Counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Counter(6),
	datad => VCC,
	cin => \Counter[5]~19\,
	combout => \Counter[6]~20_combout\,
	cout => \Counter[6]~21\);

-- Location: FF_X21_Y28_N19
\Counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \Counter[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(6));

-- Location: LCCOMB_X21_Y28_N20
\Counter[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Counter[7]~22_combout\ = (Counter(7) & (\Counter[6]~21\ $ (GND))) # (!Counter(7) & (!\Counter[6]~21\ & VCC))
-- \Counter[7]~23\ = CARRY((Counter(7) & !\Counter[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Counter(7),
	datad => VCC,
	cin => \Counter[6]~21\,
	combout => \Counter[7]~22_combout\,
	cout => \Counter[7]~23\);

-- Location: FF_X21_Y28_N21
\Counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \Counter[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(7));

-- Location: LCCOMB_X21_Y28_N22
\Counter[8]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Counter[8]~24_combout\ = (Counter(8) & (!\Counter[7]~23\)) # (!Counter(8) & ((\Counter[7]~23\) # (GND)))
-- \Counter[8]~25\ = CARRY((!\Counter[7]~23\) # (!Counter(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Counter(8),
	datad => VCC,
	cin => \Counter[7]~23\,
	combout => \Counter[8]~24_combout\,
	cout => \Counter[8]~25\);

-- Location: FF_X21_Y28_N23
\Counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \Counter[8]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(8));

-- Location: LCCOMB_X21_Y28_N24
\Counter[9]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Counter[9]~26_combout\ = (Counter(9) & (\Counter[8]~25\ $ (GND))) # (!Counter(9) & (!\Counter[8]~25\ & VCC))
-- \Counter[9]~27\ = CARRY((Counter(9) & !\Counter[8]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Counter(9),
	datad => VCC,
	cin => \Counter[8]~25\,
	combout => \Counter[9]~26_combout\,
	cout => \Counter[9]~27\);

-- Location: FF_X21_Y28_N25
\Counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \Counter[9]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(9));

-- Location: LCCOMB_X21_Y28_N26
\Counter[10]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Counter[10]~28_combout\ = Counter(10) $ (\Counter[9]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Counter(10),
	cin => \Counter[9]~27\,
	combout => \Counter[10]~28_combout\);

-- Location: FF_X21_Y28_N27
\Counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \Counter[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Counter(10));

-- Location: CLKCTRL_G13
\Counter[10]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Counter[10]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Counter[10]~clkctrl_outclk\);

-- Location: IOIBUF_X7_Y0_N15
\column[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_column(1),
	o => \column[1]~input_o\);

-- Location: LCCOMB_X6_Y2_N0
\keyboard_2x2_u1|KEY_buffer[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard_2x2_u1|KEY_buffer[0]~0_combout\ = !\column[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \column[1]~input_o\,
	combout => \keyboard_2x2_u1|KEY_buffer[0]~0_combout\);

-- Location: FF_X6_Y2_N1
\keyboard_2x2_u1|KEY_buffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \keyboard_2x2_u1|KEY_buffer[0]~0_combout\,
	ena => \keyboard_2x2_u1|ALT_INV_row\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard_2x2_u1|KEY_buffer\(0));

-- Location: LCCOMB_X5_Y3_N12
\keyboard_2x2_u1|KEY[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard_2x2_u1|KEY[0]~feeder_combout\ = \keyboard_2x2_u1|KEY_buffer\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keyboard_2x2_u1|KEY_buffer\(0),
	combout => \keyboard_2x2_u1|KEY[0]~feeder_combout\);

-- Location: FF_X5_Y3_N13
\keyboard_2x2_u1|KEY[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \keyboard_2x2_u1|KEY[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard_2x2_u1|KEY\(0));

-- Location: LCCOMB_X4_Y3_N6
\KEY_buffer[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KEY_buffer[0]~feeder_combout\ = \keyboard_2x2_u1|KEY\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keyboard_2x2_u1|KEY\(0),
	combout => \KEY_buffer[0]~feeder_combout\);

-- Location: IOIBUF_X41_Y13_N8
\rst_n~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: LCCOMB_X6_Y2_N12
\keyboard_2x2_u1|KEY_buffer[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard_2x2_u1|KEY_buffer[2]~2_combout\ = !\column[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \column[1]~input_o\,
	combout => \keyboard_2x2_u1|KEY_buffer[2]~2_combout\);

-- Location: FF_X6_Y2_N13
\keyboard_2x2_u1|KEY_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \keyboard_2x2_u1|KEY_buffer[2]~2_combout\,
	ena => \keyboard_2x2_u1|row\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard_2x2_u1|KEY_buffer\(2));

-- Location: LCCOMB_X5_Y3_N16
\keyboard_2x2_u1|KEY[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard_2x2_u1|KEY[2]~feeder_combout\ = \keyboard_2x2_u1|KEY_buffer\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keyboard_2x2_u1|KEY_buffer\(2),
	combout => \keyboard_2x2_u1|KEY[2]~feeder_combout\);

-- Location: FF_X5_Y3_N17
\keyboard_2x2_u1|KEY[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \keyboard_2x2_u1|KEY[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard_2x2_u1|KEY\(2));

-- Location: IOIBUF_X14_Y0_N22
\column[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_column(0),
	o => \column[0]~input_o\);

-- Location: LCCOMB_X6_Y2_N2
\keyboard_2x2_u1|KEY_buffer[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard_2x2_u1|KEY_buffer[3]~1_combout\ = !\column[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \column[0]~input_o\,
	combout => \keyboard_2x2_u1|KEY_buffer[3]~1_combout\);

-- Location: FF_X6_Y2_N3
\keyboard_2x2_u1|KEY_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \keyboard_2x2_u1|KEY_buffer[3]~1_combout\,
	ena => \keyboard_2x2_u1|row\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard_2x2_u1|KEY_buffer\(3));

-- Location: FF_X5_Y3_N19
\keyboard_2x2_u1|KEY[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	asdata => \keyboard_2x2_u1|KEY_buffer\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard_2x2_u1|KEY\(3));

-- Location: LCCOMB_X6_Y2_N22
\keyboard_2x2_u1|KEY_buffer[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard_2x2_u1|KEY_buffer[1]~3_combout\ = !\column[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \column[0]~input_o\,
	combout => \keyboard_2x2_u1|KEY_buffer[1]~3_combout\);

-- Location: FF_X6_Y2_N23
\keyboard_2x2_u1|KEY_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \keyboard_2x2_u1|KEY_buffer[1]~3_combout\,
	ena => \keyboard_2x2_u1|ALT_INV_row\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard_2x2_u1|KEY_buffer\(1));

-- Location: LCCOMB_X5_Y3_N6
\keyboard_2x2_u1|KEY[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \keyboard_2x2_u1|KEY[1]~feeder_combout\ = \keyboard_2x2_u1|KEY_buffer\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keyboard_2x2_u1|KEY_buffer\(1),
	combout => \keyboard_2x2_u1|KEY[1]~feeder_combout\);

-- Location: FF_X5_Y3_N7
\keyboard_2x2_u1|KEY[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \keyboard_2x2_u1|KEY[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keyboard_2x2_u1|KEY\(1));

-- Location: LCCOMB_X5_Y3_N18
\KEY_buffer[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KEY_buffer[2]~0_combout\ = (\keyboard_2x2_u1|KEY\(0)) # ((\keyboard_2x2_u1|KEY\(2)) # ((\keyboard_2x2_u1|KEY\(3)) # (\keyboard_2x2_u1|KEY\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_2x2_u1|KEY\(0),
	datab => \keyboard_2x2_u1|KEY\(2),
	datac => \keyboard_2x2_u1|KEY\(3),
	datad => \keyboard_2x2_u1|KEY\(1),
	combout => \KEY_buffer[2]~0_combout\);

-- Location: FF_X4_Y3_N7
\KEY_buffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \KEY_buffer[0]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \KEY_buffer[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => KEY_buffer(0));

-- Location: LCCOMB_X4_Y3_N28
\KEY_buffer~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KEY_buffer~3_combout\ = (!\keyboard_2x2_u1|KEY\(0) & \keyboard_2x2_u1|KEY\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keyboard_2x2_u1|KEY\(0),
	datad => \keyboard_2x2_u1|KEY\(1),
	combout => \KEY_buffer~3_combout\);

-- Location: FF_X4_Y3_N29
\KEY_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \KEY_buffer~3_combout\,
	clrn => \rst_n~input_o\,
	ena => \KEY_buffer[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => KEY_buffer(1));

-- Location: LCCOMB_X4_Y3_N8
\KEY_buffer~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KEY_buffer~1_combout\ = (!\keyboard_2x2_u1|KEY\(2) & (!\keyboard_2x2_u1|KEY\(0) & !\keyboard_2x2_u1|KEY\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keyboard_2x2_u1|KEY\(2),
	datac => \keyboard_2x2_u1|KEY\(0),
	datad => \keyboard_2x2_u1|KEY\(1),
	combout => \KEY_buffer~1_combout\);

-- Location: FF_X4_Y3_N9
\KEY_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \KEY_buffer~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \KEY_buffer[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => KEY_buffer(3));

-- Location: LCCOMB_X4_Y3_N18
\KEY_buffer~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KEY_buffer~2_combout\ = (\keyboard_2x2_u1|KEY\(2) & (!\keyboard_2x2_u1|KEY\(0) & !\keyboard_2x2_u1|KEY\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keyboard_2x2_u1|KEY\(2),
	datac => \keyboard_2x2_u1|KEY\(0),
	datad => \keyboard_2x2_u1|KEY\(1),
	combout => \KEY_buffer~2_combout\);

-- Location: FF_X4_Y3_N19
\KEY_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \KEY_buffer~2_combout\,
	clrn => \rst_n~input_o\,
	ena => \KEY_buffer[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => KEY_buffer(2));

-- Location: LCCOMB_X4_Y3_N26
\seg_com_data~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_com_data~1_combout\ = (KEY_buffer(0)) # ((KEY_buffer(1)) # ((KEY_buffer(3)) # (KEY_buffer(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => KEY_buffer(0),
	datab => KEY_buffer(1),
	datac => KEY_buffer(3),
	datad => KEY_buffer(2),
	combout => \seg_com_data~1_combout\);

-- Location: IOIBUF_X30_Y0_N8
\switch_8bit[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_8bit(6),
	o => \switch_8bit[6]~input_o\);

-- Location: IOIBUF_X35_Y0_N15
\switch_8bit[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_8bit(4),
	o => \switch_8bit[4]~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\switch_8bit[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_8bit(7),
	o => \switch_8bit[7]~input_o\);

-- Location: IOIBUF_X35_Y0_N29
\switch_8bit[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_8bit(5),
	o => \switch_8bit[5]~input_o\);

-- Location: LCCOMB_X31_Y3_N0
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\switch_8bit[6]~input_o\ & (!\switch_8bit[4]~input_o\ & (!\switch_8bit[7]~input_o\ & !\switch_8bit[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_8bit[6]~input_o\,
	datab => \switch_8bit[4]~input_o\,
	datac => \switch_8bit[7]~input_o\,
	datad => \switch_8bit[5]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: IOIBUF_X37_Y0_N29
\switch_8bit[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_8bit(3),
	o => \switch_8bit[3]~input_o\);

-- Location: IOIBUF_X39_Y0_N22
\switch_8bit[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_8bit(1),
	o => \switch_8bit[1]~input_o\);

-- Location: IOIBUF_X37_Y0_N1
\switch_8bit[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_8bit(2),
	o => \switch_8bit[2]~input_o\);

-- Location: IOIBUF_X41_Y3_N22
\switch_8bit[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_8bit(0),
	o => \switch_8bit[0]~input_o\);

-- Location: LCCOMB_X37_Y3_N4
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\switch_8bit[3]~input_o\ & (!\switch_8bit[1]~input_o\ & (!\switch_8bit[2]~input_o\ & \switch_8bit[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_8bit[3]~input_o\,
	datab => \switch_8bit[1]~input_o\,
	datac => \switch_8bit[2]~input_o\,
	datad => \switch_8bit[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X31_Y3_N26
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~1_combout\ & \Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: FF_X4_Y3_N27
\seg_com_data[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \seg_com_data~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_com_data[0][1]~q\);

-- Location: LCCOMB_X3_Y3_N6
\seg_com_num[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_com_num[0]~2_combout\ = !seg_com_num(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => seg_com_num(0),
	combout => \seg_com_num[0]~2_combout\);

-- Location: FF_X3_Y3_N7
\seg_com_num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter[10]~clkctrl_outclk\,
	d => \seg_com_num[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg_com_num(0));

-- Location: LCCOMB_X3_Y3_N22
\seg_com_num[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_com_num[1]~1_combout\ = seg_com_num(1) $ (seg_com_num(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => seg_com_num(1),
	datad => seg_com_num(0),
	combout => \seg_com_num[1]~1_combout\);

-- Location: FF_X3_Y3_N23
\seg_com_num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter[10]~clkctrl_outclk\,
	d => \seg_com_num[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg_com_num(1));

-- Location: LCCOMB_X3_Y3_N16
\seg_com_num[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_com_num[2]~0_combout\ = seg_com_num(2) $ (((seg_com_num(1) & seg_com_num(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_com_num(1),
	datac => seg_com_num(2),
	datad => seg_com_num(0),
	combout => \seg_com_num[2]~0_combout\);

-- Location: FF_X3_Y3_N17
\seg_com_num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter[10]~clkctrl_outclk\,
	d => \seg_com_num[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg_com_num(2));

-- Location: LCCOMB_X4_Y3_N4
\seg_com_data~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_com_data~0_combout\ = (KEY_buffer(0)) # ((!KEY_buffer(1) & ((KEY_buffer(3)) # (KEY_buffer(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => KEY_buffer(0),
	datab => KEY_buffer(1),
	datac => KEY_buffer(3),
	datad => KEY_buffer(2),
	combout => \seg_com_data~0_combout\);

-- Location: FF_X4_Y3_N5
\seg_com_data[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \seg_com_data~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_com_data[0][0]~q\);

-- Location: LCCOMB_X3_Y3_N12
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!seg_com_num(0) & (!seg_com_num(2) & (!seg_com_num(1) & \seg_com_data[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_com_num(0),
	datab => seg_com_num(2),
	datac => seg_com_num(1),
	datad => \seg_com_data[0][0]~q\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X3_Y3_N0
\Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\) # ((\seg_com_data[0][1]~q\ & (seg_com_num(0) & !seg_com_num(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_com_data[0][1]~q\,
	datab => seg_com_num(0),
	datac => seg_com_num(1),
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X3_Y3_N8
\seg_data[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_data[0]~reg0feeder_combout\ = \Mux7~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux7~1_combout\,
	combout => \seg_data[0]~reg0feeder_combout\);

-- Location: FF_X3_Y3_N9
\seg_data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter[10]~clkctrl_outclk\,
	d => \seg_data[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_data[0]~reg0_q\);

-- Location: LCCOMB_X5_Y3_N10
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\seg_com_data[0][1]~q\ & (!seg_com_num(1) & !seg_com_num(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_com_data[0][1]~q\,
	datac => seg_com_num(1),
	datad => seg_com_num(2),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X5_Y3_N8
\seg_data[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_data[1]~reg0feeder_combout\ = \Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux6~0_combout\,
	combout => \seg_data[1]~reg0feeder_combout\);

-- Location: FF_X5_Y3_N9
\seg_data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter[10]~clkctrl_outclk\,
	d => \seg_data[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_data[1]~reg0_q\);

-- Location: LCCOMB_X1_Y3_N12
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\seg_com_data[0][1]~q\ & ((seg_com_num(1) & (!seg_com_num(0) & seg_com_num(2))) # (!seg_com_num(1) & ((!seg_com_num(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_com_num(1),
	datab => seg_com_num(0),
	datac => \seg_com_data[0][1]~q\,
	datad => seg_com_num(2),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X1_Y3_N16
\seg_data[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_data[2]~reg0feeder_combout\ = \Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux5~0_combout\,
	combout => \seg_data[2]~reg0feeder_combout\);

-- Location: FF_X1_Y3_N17
\seg_data[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter[10]~clkctrl_outclk\,
	d => \seg_data[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_data[2]~reg0_q\);

-- Location: LCCOMB_X3_Y3_N26
\Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (!seg_com_num(1) & !seg_com_num(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => seg_com_num(1),
	datad => seg_com_num(2),
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X2_Y3_N2
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Decoder0~0_combout\ & ((seg_com_num(0) & ((\seg_com_data[0][1]~q\))) # (!seg_com_num(0) & (\seg_com_data[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_com_num(0),
	datab => \seg_com_data[0][0]~q\,
	datac => \seg_com_data[0][1]~q\,
	datad => \Decoder0~0_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X2_Y3_N0
\seg_data[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_data[3]~reg0feeder_combout\ = \Mux4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux4~0_combout\,
	combout => \seg_data[3]~reg0feeder_combout\);

-- Location: FF_X2_Y3_N1
\seg_data[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter[10]~clkctrl_outclk\,
	d => \seg_data[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_data[3]~reg0_q\);

-- Location: LCCOMB_X4_Y3_N12
\seg_com_data[0][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_com_data[0][4]~feeder_combout\ = KEY_buffer(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => KEY_buffer(0),
	combout => \seg_com_data[0][4]~feeder_combout\);

-- Location: FF_X4_Y3_N13
\seg_com_data[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \seg_com_data[0][4]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_com_data[0][4]~q\);

-- Location: LCCOMB_X3_Y3_N20
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (seg_com_num(1) & (((seg_com_num(2) & \seg_com_data[0][1]~q\)))) # (!seg_com_num(1) & ((seg_com_num(0) & ((\seg_com_data[0][1]~q\))) # (!seg_com_num(0) & (!seg_com_num(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_com_num(0),
	datab => seg_com_num(2),
	datac => seg_com_num(1),
	datad => \seg_com_data[0][1]~q\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X3_Y3_N18
\Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & ((seg_com_num(1)) # ((seg_com_num(0)) # (\seg_com_data[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_com_num(1),
	datab => seg_com_num(0),
	datac => \seg_com_data[0][4]~q\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X3_Y3_N2
\seg_data[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_data[4]~reg0feeder_combout\ = \Mux3~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux3~1_combout\,
	combout => \seg_data[4]~reg0feeder_combout\);

-- Location: FF_X3_Y3_N3
\seg_data[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter[10]~clkctrl_outclk\,
	d => \seg_data[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_data[4]~reg0_q\);

-- Location: LCCOMB_X4_Y3_N22
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (seg_com_num(0) & (\seg_com_data[0][1]~q\)) # (!seg_com_num(0) & ((\seg_com_data[0][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => seg_com_num(0),
	datac => \seg_com_data[0][1]~q\,
	datad => \seg_com_data[0][4]~q\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X3_Y3_N28
\Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & ((seg_com_num(2) & (seg_com_num(0))) # (!seg_com_num(2) & ((!seg_com_num(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_com_num(0),
	datab => seg_com_num(2),
	datac => seg_com_num(1),
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X3_Y3_N4
\seg_data[5]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_data[5]~reg0feeder_combout\ = \Mux2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux2~1_combout\,
	combout => \seg_data[5]~reg0feeder_combout\);

-- Location: FF_X3_Y3_N5
\seg_data[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter[10]~clkctrl_outclk\,
	d => \seg_data[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_data[5]~reg0_q\);

-- Location: LCCOMB_X4_Y3_N16
\seg_com_data~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_com_data~2_combout\ = (!KEY_buffer(0) & (!KEY_buffer(1) & ((KEY_buffer(2)) # (KEY_buffer(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => KEY_buffer(0),
	datab => KEY_buffer(2),
	datac => KEY_buffer(3),
	datad => KEY_buffer(1),
	combout => \seg_com_data~2_combout\);

-- Location: FF_X4_Y3_N17
\seg_com_data[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \seg_com_data~2_combout\,
	clrn => \rst_n~input_o\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_com_data[0][6]~q\);

-- Location: LCCOMB_X3_Y3_N14
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (seg_com_num(0) & (!seg_com_num(1) & seg_com_num(2))) # (!seg_com_num(0) & (seg_com_num(1) $ (!seg_com_num(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_com_num(0),
	datac => seg_com_num(1),
	datad => seg_com_num(2),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X3_Y3_N30
\Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\ & ((\Decoder0~0_combout\ & (\seg_com_data[0][6]~q\)) # (!\Decoder0~0_combout\ & ((\seg_com_data[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~0_combout\,
	datab => \seg_com_data[0][6]~q\,
	datac => \Mux1~0_combout\,
	datad => \seg_com_data[0][1]~q\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X3_Y3_N10
\seg_data[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_data[6]~reg0feeder_combout\ = \Mux1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux1~1_combout\,
	combout => \seg_data[6]~reg0feeder_combout\);

-- Location: FF_X3_Y3_N11
\seg_data[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter[10]~clkctrl_outclk\,
	d => \seg_data[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_data[6]~reg0_q\);

-- Location: LCCOMB_X1_Y3_N18
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!seg_com_num(1) & (!seg_com_num(0) & (\seg_com_data[0][1]~q\ & seg_com_num(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_com_num(1),
	datab => seg_com_num(0),
	datac => \seg_com_data[0][1]~q\,
	datad => seg_com_num(2),
	combout => \Mux0~0_combout\);

-- Location: FF_X1_Y3_N19
\seg_data[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter[10]~clkctrl_outclk\,
	d => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_data[7]~reg0_q\);

-- Location: FF_X3_Y3_N1
\seg_data[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter[10]~clkctrl_outclk\,
	d => \Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_data[8]~reg0_q\);

-- Location: FF_X5_Y3_N11
\seg_data[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter[10]~clkctrl_outclk\,
	d => \Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_data[9]~reg0_q\);

-- Location: FF_X1_Y3_N13
\seg_data[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter[10]~clkctrl_outclk\,
	d => \Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_data[10]~reg0_q\);

-- Location: FF_X2_Y3_N3
\seg_data[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter[10]~clkctrl_outclk\,
	d => \Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_data[11]~reg0_q\);

-- Location: FF_X3_Y3_N19
\seg_data[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter[10]~clkctrl_outclk\,
	d => \Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_data[12]~reg0_q\);

-- Location: FF_X3_Y3_N29
\seg_data[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter[10]~clkctrl_outclk\,
	d => \Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_data[13]~reg0_q\);

-- Location: FF_X3_Y3_N31
\seg_data[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter[10]~clkctrl_outclk\,
	d => \Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_data[14]~reg0_q\);

-- Location: LCCOMB_X1_Y3_N22
\seg_data[15]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_data[15]~reg0feeder_combout\ = \Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux0~0_combout\,
	combout => \seg_data[15]~reg0feeder_combout\);

-- Location: FF_X1_Y3_N23
\seg_data[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter[10]~clkctrl_outclk\,
	d => \seg_data[15]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_data[15]~reg0_q\);

-- Location: LCCOMB_X5_Y3_N24
\Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (seg_com_num(0)) # ((seg_com_num(1)) # (seg_com_num(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => seg_com_num(0),
	datac => seg_com_num(1),
	datad => seg_com_num(2),
	combout => \Decoder0~1_combout\);

-- Location: FF_X5_Y3_N25
\seg_com[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter[10]~clkctrl_outclk\,
	d => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_com[0]~reg0_q\);

-- Location: LCCOMB_X5_Y3_N2
\Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = ((seg_com_num(1)) # (seg_com_num(2))) # (!seg_com_num(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => seg_com_num(0),
	datac => seg_com_num(1),
	datad => seg_com_num(2),
	combout => \Decoder0~2_combout\);

-- Location: FF_X5_Y3_N3
\seg_com[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter[10]~clkctrl_outclk\,
	d => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_com[1]~reg0_q\);

-- Location: LCCOMB_X3_Y3_N24
\Decoder0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = ((seg_com_num(0)) # (seg_com_num(2))) # (!seg_com_num(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_com_num(1),
	datac => seg_com_num(0),
	datad => seg_com_num(2),
	combout => \Decoder0~3_combout\);

-- Location: FF_X3_Y3_N25
\seg_com[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter[10]~clkctrl_outclk\,
	d => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_com[2]~reg0_q\);

-- Location: LCCOMB_X1_Y3_N20
\Decoder0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = ((seg_com_num(2)) # (!seg_com_num(1))) # (!seg_com_num(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => seg_com_num(0),
	datac => seg_com_num(1),
	datad => seg_com_num(2),
	combout => \Decoder0~4_combout\);

-- Location: FF_X1_Y3_N21
\seg_com[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter[10]~clkctrl_outclk\,
	d => \Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_com[3]~reg0_q\);

-- Location: LCCOMB_X5_Y3_N4
\Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (seg_com_num(0)) # ((seg_com_num(1)) # (!seg_com_num(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => seg_com_num(0),
	datac => seg_com_num(1),
	datad => seg_com_num(2),
	combout => \Mux0~1_combout\);

-- Location: FF_X5_Y3_N5
\seg_com[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter[10]~clkctrl_outclk\,
	d => \Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_com[4]~reg0_q\);

-- Location: LCCOMB_X5_Y3_N22
\Decoder0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = ((seg_com_num(1)) # (!seg_com_num(2))) # (!seg_com_num(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => seg_com_num(0),
	datac => seg_com_num(1),
	datad => seg_com_num(2),
	combout => \Decoder0~5_combout\);

-- Location: FF_X5_Y3_N23
\seg_com[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter[10]~clkctrl_outclk\,
	d => \Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_com[5]~reg0_q\);

-- Location: LCCOMB_X1_Y3_N14
\Decoder0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (seg_com_num(0)) # ((!seg_com_num(2)) # (!seg_com_num(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => seg_com_num(0),
	datac => seg_com_num(1),
	datad => seg_com_num(2),
	combout => \Decoder0~6_combout\);

-- Location: FF_X1_Y3_N15
\seg_com[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter[10]~clkctrl_outclk\,
	d => \Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_com[6]~reg0_q\);

-- Location: LCCOMB_X1_Y3_N28
\Decoder0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = ((!seg_com_num(2)) # (!seg_com_num(1))) # (!seg_com_num(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => seg_com_num(0),
	datac => seg_com_num(1),
	datad => seg_com_num(2),
	combout => \Decoder0~7_combout\);

-- Location: FF_X1_Y3_N29
\seg_com[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Counter[10]~clkctrl_outclk\,
	d => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seg_com[7]~reg0_q\);

-- Location: IOIBUF_X7_Y0_N29
\column[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_column(2),
	o => \column[2]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\WiFi_signal[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WiFi_signal(0),
	o => \WiFi_signal[0]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\WiFi_signal[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WiFi_signal(1),
	o => \WiFi_signal[1]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\WiFi_signal[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WiFi_signal(2),
	o => \WiFi_signal[2]~input_o\);

-- Location: IOIBUF_X14_Y29_N29
\WiFi_signal[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WiFi_signal(3),
	o => \WiFi_signal[3]~input_o\);

-- Location: IOIBUF_X28_Y29_N29
\WiFi_signal[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WiFi_signal(4),
	o => \WiFi_signal[4]~input_o\);

-- Location: IOIBUF_X26_Y0_N22
\WiFi_signal[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WiFi_signal(5),
	o => \WiFi_signal[5]~input_o\);

-- Location: IOIBUF_X41_Y24_N1
\WiFi_signal[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WiFi_signal(6),
	o => \WiFi_signal[6]~input_o\);

-- Location: IOIBUF_X1_Y29_N29
\WiFi_signal[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WiFi_signal(7),
	o => \WiFi_signal[7]~input_o\);

-- Location: IOIBUF_X41_Y18_N15
\WiFi_signal[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WiFi_signal(8),
	o => \WiFi_signal[8]~input_o\);

-- Location: IOIBUF_X41_Y24_N8
\WiFi_signal[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WiFi_signal(9),
	o => \WiFi_signal[9]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\WiFi_signal[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WiFi_signal(10),
	o => \WiFi_signal[10]~input_o\);

-- Location: IOIBUF_X14_Y29_N8
\WiFi_signal[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WiFi_signal(11),
	o => \WiFi_signal[11]~input_o\);

-- Location: IOIBUF_X11_Y29_N15
\WiFi_signal[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WiFi_signal(12),
	o => \WiFi_signal[12]~input_o\);

-- Location: IOIBUF_X39_Y0_N29
\WiFi_signal[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WiFi_signal(13),
	o => \WiFi_signal[13]~input_o\);

-- Location: IOIBUF_X0_Y22_N1
\WiFi_signal[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WiFi_signal(14),
	o => \WiFi_signal[14]~input_o\);

-- Location: IOIBUF_X9_Y29_N1
\WiFi_signal[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WiFi_signal(15),
	o => \WiFi_signal[15]~input_o\);

ww_row(0) <= \row[0]~output_o\;

ww_row(1) <= \row[1]~output_o\;

ww_row(2) <= \row[2]~output_o\;

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
END structure;


