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

-- DATE "08/21/2026 16:02:51"

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

ENTITY 	WS2812 IS
    PORT (
	clk : IN std_logic;
	rst_n : IN std_logic;
	DIN : OUT std_logic
	);
END WS2812;

-- Design Ports Information
-- DIN	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_149,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_145,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF WS2812 IS
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
SIGNAL ww_DIN : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DIN~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \led_idx[0]~8_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \led_idx[1]~11\ : std_logic;
SIGNAL \led_idx[2]~12_combout\ : std_logic;
SIGNAL \sys_mode.MODE_ANIMATION~feeder_combout\ : std_logic;
SIGNAL \sys_mode.MODE_ANIMATION~q\ : std_logic;
SIGNAL \timer_cnt[0]~24_combout\ : std_logic;
SIGNAL \timer_cnt[0]~25\ : std_logic;
SIGNAL \timer_cnt[1]~26_combout\ : std_logic;
SIGNAL \timer_cnt[1]~27\ : std_logic;
SIGNAL \timer_cnt[2]~28_combout\ : std_logic;
SIGNAL \timer_cnt[2]~29\ : std_logic;
SIGNAL \timer_cnt[3]~30_combout\ : std_logic;
SIGNAL \timer_cnt[3]~31\ : std_logic;
SIGNAL \timer_cnt[4]~32_combout\ : std_logic;
SIGNAL \timer_cnt[4]~33\ : std_logic;
SIGNAL \timer_cnt[5]~34_combout\ : std_logic;
SIGNAL \timer_cnt[5]~35\ : std_logic;
SIGNAL \timer_cnt[6]~36_combout\ : std_logic;
SIGNAL \timer_cnt[6]~37\ : std_logic;
SIGNAL \timer_cnt[7]~38_combout\ : std_logic;
SIGNAL \timer_cnt[7]~39\ : std_logic;
SIGNAL \timer_cnt[8]~40_combout\ : std_logic;
SIGNAL \timer_cnt[8]~41\ : std_logic;
SIGNAL \timer_cnt[9]~42_combout\ : std_logic;
SIGNAL \timer_cnt[9]~43\ : std_logic;
SIGNAL \timer_cnt[10]~44_combout\ : std_logic;
SIGNAL \timer_cnt[10]~45\ : std_logic;
SIGNAL \timer_cnt[11]~46_combout\ : std_logic;
SIGNAL \timer_cnt[11]~47\ : std_logic;
SIGNAL \timer_cnt[12]~48_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \timer_cnt[12]~49\ : std_logic;
SIGNAL \timer_cnt[13]~50_combout\ : std_logic;
SIGNAL \timer_cnt[13]~51\ : std_logic;
SIGNAL \timer_cnt[14]~52_combout\ : std_logic;
SIGNAL \timer_cnt[14]~53\ : std_logic;
SIGNAL \timer_cnt[15]~54_combout\ : std_logic;
SIGNAL \timer_cnt[15]~55\ : std_logic;
SIGNAL \timer_cnt[16]~56_combout\ : std_logic;
SIGNAL \timer_cnt[16]~57\ : std_logic;
SIGNAL \timer_cnt[17]~58_combout\ : std_logic;
SIGNAL \timer_cnt[17]~59\ : std_logic;
SIGNAL \timer_cnt[18]~60_combout\ : std_logic;
SIGNAL \timer_cnt[18]~61\ : std_logic;
SIGNAL \timer_cnt[19]~62_combout\ : std_logic;
SIGNAL \timer_cnt[19]~63\ : std_logic;
SIGNAL \timer_cnt[20]~64_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \timer_cnt[20]~65\ : std_logic;
SIGNAL \timer_cnt[21]~66_combout\ : std_logic;
SIGNAL \timer_cnt[21]~67\ : std_logic;
SIGNAL \timer_cnt[22]~68_combout\ : std_logic;
SIGNAL \timer_cnt[22]~69\ : std_logic;
SIGNAL \timer_cnt[23]~70_combout\ : std_logic;
SIGNAL \update_req~1_combout\ : std_logic;
SIGNAL \update_req~2_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \update_req~3_combout\ : std_logic;
SIGNAL \update_req~5_combout\ : std_logic;
SIGNAL \update_req~q\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \state.STATE_IDLE~q\ : std_logic;
SIGNAL \draw_mode.MODE_ANIMATION~1_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Selector10~4_combout\ : std_logic;
SIGNAL \Selector15~4_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Selector14~4_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Selector13~4_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Selector11~4_combout\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Selector10~5_combout\ : std_logic;
SIGNAL \LessThan8~3_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \Selector9~4_combout\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Add5~19\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Add5~21\ : std_logic;
SIGNAL \Add5~22_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \LessThan8~1_combout\ : std_logic;
SIGNAL \Add5~23\ : std_logic;
SIGNAL \Add5~24_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Add5~25\ : std_logic;
SIGNAL \Add5~26_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \LessThan8~0_combout\ : std_logic;
SIGNAL \LessThan8~2_combout\ : std_logic;
SIGNAL \LessThan8~4_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Add5~27\ : std_logic;
SIGNAL \Add5~28_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Add5~29\ : std_logic;
SIGNAL \Add5~30_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \LessThan5~2_combout\ : std_logic;
SIGNAL \LessThan5~3_combout\ : std_logic;
SIGNAL \LessThan5~4_combout\ : std_logic;
SIGNAL \Selector17~2_combout\ : std_logic;
SIGNAL \state.STATE_RESET~q\ : std_logic;
SIGNAL \LessThan9~1_combout\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \bit_idx[4]~1_combout\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \bit_idx[3]~2_combout\ : std_logic;
SIGNAL \bit_idx[4]~0_combout\ : std_logic;
SIGNAL \bit_idx[3]~3_combout\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \LessThan9~0_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \led_idx[0]~19_combout\ : std_logic;
SIGNAL \led_idx[0]~23_combout\ : std_logic;
SIGNAL \led_idx[2]~13\ : std_logic;
SIGNAL \led_idx[3]~14_combout\ : std_logic;
SIGNAL \led_idx[3]~15\ : std_logic;
SIGNAL \led_idx[4]~16_combout\ : std_logic;
SIGNAL \led_idx[4]~17\ : std_logic;
SIGNAL \led_idx[5]~20_combout\ : std_logic;
SIGNAL \LessThan10~0_combout\ : std_logic;
SIGNAL \led_idx[0]~18_combout\ : std_logic;
SIGNAL \led_idx[0]~9\ : std_logic;
SIGNAL \led_idx[1]~10_combout\ : std_logic;
SIGNAL \led_idx[0]~22_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \state.STATE_SEND~q\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Selector12~4_combout\ : std_logic;
SIGNAL \DIN~5_combout\ : std_logic;
SIGNAL \DIN~6_combout\ : std_logic;
SIGNAL \reversal~0_combout\ : std_logic;
SIGNAL \draw_col~0_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \draw_col~1_combout\ : std_logic;
SIGNAL \draw_col~2_combout\ : std_logic;
SIGNAL \update_req~4_combout\ : std_logic;
SIGNAL \draw_col~3_combout\ : std_logic;
SIGNAL \draw_col~4_combout\ : std_logic;
SIGNAL \draw_col~5_combout\ : std_logic;
SIGNAL \draw_col~6_combout\ : std_logic;
SIGNAL \draw_col~7_combout\ : std_logic;
SIGNAL \draw_col~8_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \reversal~1_combout\ : std_logic;
SIGNAL \reversal~q\ : std_logic;
SIGNAL \draw_row[2]~4_combout\ : std_logic;
SIGNAL \draw_row[1]~3_combout\ : std_logic;
SIGNAL \draw_row~0_combout\ : std_logic;
SIGNAL \draw_row~1_combout\ : std_logic;
SIGNAL \draw_row~2_combout\ : std_logic;
SIGNAL \DIN~0_combout\ : std_logic;
SIGNAL \DIN~2_combout\ : std_logic;
SIGNAL \DIN~1_combout\ : std_logic;
SIGNAL \draw_mode.MODE_ANIMATION~0_combout\ : std_logic;
SIGNAL \draw_mode.MODE_ANIMATION~q\ : std_logic;
SIGNAL \DIN~3_combout\ : std_logic;
SIGNAL \DIN~4_combout\ : std_logic;
SIGNAL \DIN~7_combout\ : std_logic;
SIGNAL \DIN~reg0_q\ : std_logic;
SIGNAL timer_cnt : std_logic_vector(23 DOWNTO 0);
SIGNAL led_idx : std_logic_vector(5 DOWNTO 0);
SIGNAL draw_row : std_logic_vector(2 DOWNTO 0);
SIGNAL draw_col : std_logic_vector(2 DOWNTO 0);
SIGNAL clk_cnt : std_logic_vector(15 DOWNTO 0);
SIGNAL bit_idx : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_state.STATE_SEND~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst_n <= rst_n;
DIN <= ww_DIN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_state.STATE_SEND~q\ <= NOT \state.STATE_SEND~q\;

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

-- Location: LCCOMB_X35_Y32_N14
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

-- Location: LCCOMB_X35_Y32_N16
\led_idx[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_idx[1]~10_combout\ = (led_idx(1) & (!\led_idx[0]~9\)) # (!led_idx(1) & ((\led_idx[0]~9\) # (GND)))
-- \led_idx[1]~11\ = CARRY((!\led_idx[0]~9\) # (!led_idx(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_idx(1),
	datad => VCC,
	cin => \led_idx[0]~9\,
	combout => \led_idx[1]~10_combout\,
	cout => \led_idx[1]~11\);

-- Location: LCCOMB_X35_Y32_N18
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

-- Location: LCCOMB_X38_Y31_N18
\sys_mode.MODE_ANIMATION~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sys_mode.MODE_ANIMATION~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \sys_mode.MODE_ANIMATION~feeder_combout\);

-- Location: FF_X38_Y31_N19
\sys_mode.MODE_ANIMATION\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sys_mode.MODE_ANIMATION~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sys_mode.MODE_ANIMATION~q\);

-- Location: LCCOMB_X39_Y31_N8
\timer_cnt[0]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[0]~24_combout\ = timer_cnt(0) $ (VCC)
-- \timer_cnt[0]~25\ = CARRY(timer_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => timer_cnt(0),
	datad => VCC,
	combout => \timer_cnt[0]~24_combout\,
	cout => \timer_cnt[0]~25\);

-- Location: FF_X39_Y31_N9
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
	sclr => \update_req~3_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(0));

-- Location: LCCOMB_X39_Y31_N10
\timer_cnt[1]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[1]~26_combout\ = (timer_cnt(1) & (!\timer_cnt[0]~25\)) # (!timer_cnt(1) & ((\timer_cnt[0]~25\) # (GND)))
-- \timer_cnt[1]~27\ = CARRY((!\timer_cnt[0]~25\) # (!timer_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(1),
	datad => VCC,
	cin => \timer_cnt[0]~25\,
	combout => \timer_cnt[1]~26_combout\,
	cout => \timer_cnt[1]~27\);

-- Location: FF_X39_Y31_N11
\timer_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[1]~26_combout\,
	clrn => \rst_n~input_o\,
	sclr => \update_req~3_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(1));

-- Location: LCCOMB_X39_Y31_N12
\timer_cnt[2]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[2]~28_combout\ = (timer_cnt(2) & (\timer_cnt[1]~27\ $ (GND))) # (!timer_cnt(2) & (!\timer_cnt[1]~27\ & VCC))
-- \timer_cnt[2]~29\ = CARRY((timer_cnt(2) & !\timer_cnt[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(2),
	datad => VCC,
	cin => \timer_cnt[1]~27\,
	combout => \timer_cnt[2]~28_combout\,
	cout => \timer_cnt[2]~29\);

-- Location: FF_X39_Y31_N13
\timer_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[2]~28_combout\,
	clrn => \rst_n~input_o\,
	sclr => \update_req~3_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(2));

-- Location: LCCOMB_X39_Y31_N14
\timer_cnt[3]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[3]~30_combout\ = (timer_cnt(3) & (!\timer_cnt[2]~29\)) # (!timer_cnt(3) & ((\timer_cnt[2]~29\) # (GND)))
-- \timer_cnt[3]~31\ = CARRY((!\timer_cnt[2]~29\) # (!timer_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_cnt(3),
	datad => VCC,
	cin => \timer_cnt[2]~29\,
	combout => \timer_cnt[3]~30_combout\,
	cout => \timer_cnt[3]~31\);

-- Location: FF_X39_Y31_N15
\timer_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[3]~30_combout\,
	clrn => \rst_n~input_o\,
	sclr => \update_req~3_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(3));

-- Location: LCCOMB_X39_Y31_N16
\timer_cnt[4]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[4]~32_combout\ = (timer_cnt(4) & (\timer_cnt[3]~31\ $ (GND))) # (!timer_cnt(4) & (!\timer_cnt[3]~31\ & VCC))
-- \timer_cnt[4]~33\ = CARRY((timer_cnt(4) & !\timer_cnt[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_cnt(4),
	datad => VCC,
	cin => \timer_cnt[3]~31\,
	combout => \timer_cnt[4]~32_combout\,
	cout => \timer_cnt[4]~33\);

-- Location: FF_X39_Y31_N17
\timer_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[4]~32_combout\,
	clrn => \rst_n~input_o\,
	sclr => \update_req~3_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(4));

-- Location: LCCOMB_X39_Y31_N18
\timer_cnt[5]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[5]~34_combout\ = (timer_cnt(5) & (!\timer_cnt[4]~33\)) # (!timer_cnt(5) & ((\timer_cnt[4]~33\) # (GND)))
-- \timer_cnt[5]~35\ = CARRY((!\timer_cnt[4]~33\) # (!timer_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_cnt(5),
	datad => VCC,
	cin => \timer_cnt[4]~33\,
	combout => \timer_cnt[5]~34_combout\,
	cout => \timer_cnt[5]~35\);

-- Location: FF_X39_Y31_N19
\timer_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[5]~34_combout\,
	clrn => \rst_n~input_o\,
	sclr => \update_req~3_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(5));

-- Location: LCCOMB_X39_Y31_N20
\timer_cnt[6]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[6]~36_combout\ = (timer_cnt(6) & (\timer_cnt[5]~35\ $ (GND))) # (!timer_cnt(6) & (!\timer_cnt[5]~35\ & VCC))
-- \timer_cnt[6]~37\ = CARRY((timer_cnt(6) & !\timer_cnt[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_cnt(6),
	datad => VCC,
	cin => \timer_cnt[5]~35\,
	combout => \timer_cnt[6]~36_combout\,
	cout => \timer_cnt[6]~37\);

-- Location: FF_X39_Y31_N21
\timer_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[6]~36_combout\,
	clrn => \rst_n~input_o\,
	sclr => \update_req~3_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(6));

-- Location: LCCOMB_X39_Y31_N22
\timer_cnt[7]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[7]~38_combout\ = (timer_cnt(7) & (!\timer_cnt[6]~37\)) # (!timer_cnt(7) & ((\timer_cnt[6]~37\) # (GND)))
-- \timer_cnt[7]~39\ = CARRY((!\timer_cnt[6]~37\) # (!timer_cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(7),
	datad => VCC,
	cin => \timer_cnt[6]~37\,
	combout => \timer_cnt[7]~38_combout\,
	cout => \timer_cnt[7]~39\);

-- Location: FF_X39_Y31_N23
\timer_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[7]~38_combout\,
	clrn => \rst_n~input_o\,
	sclr => \update_req~3_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(7));

-- Location: LCCOMB_X39_Y31_N24
\timer_cnt[8]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[8]~40_combout\ = (timer_cnt(8) & (\timer_cnt[7]~39\ $ (GND))) # (!timer_cnt(8) & (!\timer_cnt[7]~39\ & VCC))
-- \timer_cnt[8]~41\ = CARRY((timer_cnt(8) & !\timer_cnt[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_cnt(8),
	datad => VCC,
	cin => \timer_cnt[7]~39\,
	combout => \timer_cnt[8]~40_combout\,
	cout => \timer_cnt[8]~41\);

-- Location: FF_X39_Y31_N25
\timer_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[8]~40_combout\,
	clrn => \rst_n~input_o\,
	sclr => \update_req~3_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(8));

-- Location: LCCOMB_X39_Y31_N26
\timer_cnt[9]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[9]~42_combout\ = (timer_cnt(9) & (!\timer_cnt[8]~41\)) # (!timer_cnt(9) & ((\timer_cnt[8]~41\) # (GND)))
-- \timer_cnt[9]~43\ = CARRY((!\timer_cnt[8]~41\) # (!timer_cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(9),
	datad => VCC,
	cin => \timer_cnt[8]~41\,
	combout => \timer_cnt[9]~42_combout\,
	cout => \timer_cnt[9]~43\);

-- Location: FF_X39_Y31_N27
\timer_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[9]~42_combout\,
	clrn => \rst_n~input_o\,
	sclr => \update_req~3_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(9));

-- Location: LCCOMB_X39_Y31_N28
\timer_cnt[10]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[10]~44_combout\ = (timer_cnt(10) & (\timer_cnt[9]~43\ $ (GND))) # (!timer_cnt(10) & (!\timer_cnt[9]~43\ & VCC))
-- \timer_cnt[10]~45\ = CARRY((timer_cnt(10) & !\timer_cnt[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_cnt(10),
	datad => VCC,
	cin => \timer_cnt[9]~43\,
	combout => \timer_cnt[10]~44_combout\,
	cout => \timer_cnt[10]~45\);

-- Location: FF_X39_Y31_N29
\timer_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[10]~44_combout\,
	clrn => \rst_n~input_o\,
	sclr => \update_req~3_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(10));

-- Location: LCCOMB_X39_Y31_N30
\timer_cnt[11]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[11]~46_combout\ = (timer_cnt(11) & (!\timer_cnt[10]~45\)) # (!timer_cnt(11) & ((\timer_cnt[10]~45\) # (GND)))
-- \timer_cnt[11]~47\ = CARRY((!\timer_cnt[10]~45\) # (!timer_cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(11),
	datad => VCC,
	cin => \timer_cnt[10]~45\,
	combout => \timer_cnt[11]~46_combout\,
	cout => \timer_cnt[11]~47\);

-- Location: FF_X39_Y31_N31
\timer_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[11]~46_combout\,
	clrn => \rst_n~input_o\,
	sclr => \update_req~3_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(11));

-- Location: LCCOMB_X39_Y30_N0
\timer_cnt[12]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[12]~48_combout\ = (timer_cnt(12) & (\timer_cnt[11]~47\ $ (GND))) # (!timer_cnt(12) & (!\timer_cnt[11]~47\ & VCC))
-- \timer_cnt[12]~49\ = CARRY((timer_cnt(12) & !\timer_cnt[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_cnt(12),
	datad => VCC,
	cin => \timer_cnt[11]~47\,
	combout => \timer_cnt[12]~48_combout\,
	cout => \timer_cnt[12]~49\);

-- Location: FF_X38_Y31_N13
\timer_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \timer_cnt[12]~48_combout\,
	clrn => \rst_n~input_o\,
	sclr => \update_req~3_combout\,
	sload => VCC,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(12));

-- Location: LCCOMB_X38_Y31_N8
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!timer_cnt(12) & (!timer_cnt(9) & (!timer_cnt(11) & !timer_cnt(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(12),
	datab => timer_cnt(9),
	datac => timer_cnt(11),
	datad => timer_cnt(10),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X39_Y30_N2
\timer_cnt[13]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[13]~50_combout\ = (timer_cnt(13) & (!\timer_cnt[12]~49\)) # (!timer_cnt(13) & ((\timer_cnt[12]~49\) # (GND)))
-- \timer_cnt[13]~51\ = CARRY((!\timer_cnt[12]~49\) # (!timer_cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_cnt(13),
	datad => VCC,
	cin => \timer_cnt[12]~49\,
	combout => \timer_cnt[13]~50_combout\,
	cout => \timer_cnt[13]~51\);

-- Location: FF_X39_Y30_N3
\timer_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[13]~50_combout\,
	clrn => \rst_n~input_o\,
	sclr => \update_req~3_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(13));

-- Location: LCCOMB_X39_Y30_N4
\timer_cnt[14]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[14]~52_combout\ = (timer_cnt(14) & (\timer_cnt[13]~51\ $ (GND))) # (!timer_cnt(14) & (!\timer_cnt[13]~51\ & VCC))
-- \timer_cnt[14]~53\ = CARRY((timer_cnt(14) & !\timer_cnt[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_cnt(14),
	datad => VCC,
	cin => \timer_cnt[13]~51\,
	combout => \timer_cnt[14]~52_combout\,
	cout => \timer_cnt[14]~53\);

-- Location: FF_X39_Y30_N5
\timer_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[14]~52_combout\,
	clrn => \rst_n~input_o\,
	sclr => \update_req~3_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(14));

-- Location: LCCOMB_X39_Y30_N6
\timer_cnt[15]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[15]~54_combout\ = (timer_cnt(15) & (!\timer_cnt[14]~53\)) # (!timer_cnt(15) & ((\timer_cnt[14]~53\) # (GND)))
-- \timer_cnt[15]~55\ = CARRY((!\timer_cnt[14]~53\) # (!timer_cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(15),
	datad => VCC,
	cin => \timer_cnt[14]~53\,
	combout => \timer_cnt[15]~54_combout\,
	cout => \timer_cnt[15]~55\);

-- Location: FF_X39_Y30_N7
\timer_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[15]~54_combout\,
	clrn => \rst_n~input_o\,
	sclr => \update_req~3_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(15));

-- Location: LCCOMB_X39_Y30_N8
\timer_cnt[16]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[16]~56_combout\ = (timer_cnt(16) & (\timer_cnt[15]~55\ $ (GND))) # (!timer_cnt(16) & (!\timer_cnt[15]~55\ & VCC))
-- \timer_cnt[16]~57\ = CARRY((timer_cnt(16) & !\timer_cnt[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(16),
	datad => VCC,
	cin => \timer_cnt[15]~55\,
	combout => \timer_cnt[16]~56_combout\,
	cout => \timer_cnt[16]~57\);

-- Location: FF_X39_Y30_N9
\timer_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[16]~56_combout\,
	clrn => \rst_n~input_o\,
	sclr => \update_req~3_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(16));

-- Location: LCCOMB_X39_Y30_N10
\timer_cnt[17]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[17]~58_combout\ = (timer_cnt(17) & (!\timer_cnt[16]~57\)) # (!timer_cnt(17) & ((\timer_cnt[16]~57\) # (GND)))
-- \timer_cnt[17]~59\ = CARRY((!\timer_cnt[16]~57\) # (!timer_cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_cnt(17),
	datad => VCC,
	cin => \timer_cnt[16]~57\,
	combout => \timer_cnt[17]~58_combout\,
	cout => \timer_cnt[17]~59\);

-- Location: FF_X39_Y30_N11
\timer_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[17]~58_combout\,
	clrn => \rst_n~input_o\,
	sclr => \update_req~3_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(17));

-- Location: LCCOMB_X39_Y30_N12
\timer_cnt[18]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[18]~60_combout\ = (timer_cnt(18) & (\timer_cnt[17]~59\ $ (GND))) # (!timer_cnt(18) & (!\timer_cnt[17]~59\ & VCC))
-- \timer_cnt[18]~61\ = CARRY((timer_cnt(18) & !\timer_cnt[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_cnt(18),
	datad => VCC,
	cin => \timer_cnt[17]~59\,
	combout => \timer_cnt[18]~60_combout\,
	cout => \timer_cnt[18]~61\);

-- Location: FF_X39_Y30_N13
\timer_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[18]~60_combout\,
	clrn => \rst_n~input_o\,
	sclr => \update_req~3_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(18));

-- Location: LCCOMB_X39_Y30_N14
\timer_cnt[19]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[19]~62_combout\ = (timer_cnt(19) & (!\timer_cnt[18]~61\)) # (!timer_cnt(19) & ((\timer_cnt[18]~61\) # (GND)))
-- \timer_cnt[19]~63\ = CARRY((!\timer_cnt[18]~61\) # (!timer_cnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(19),
	datad => VCC,
	cin => \timer_cnt[18]~61\,
	combout => \timer_cnt[19]~62_combout\,
	cout => \timer_cnt[19]~63\);

-- Location: FF_X39_Y30_N15
\timer_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[19]~62_combout\,
	clrn => \rst_n~input_o\,
	sclr => \update_req~3_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(19));

-- Location: LCCOMB_X39_Y30_N16
\timer_cnt[20]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[20]~64_combout\ = (timer_cnt(20) & (\timer_cnt[19]~63\ $ (GND))) # (!timer_cnt(20) & (!\timer_cnt[19]~63\ & VCC))
-- \timer_cnt[20]~65\ = CARRY((timer_cnt(20) & !\timer_cnt[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(20),
	datad => VCC,
	cin => \timer_cnt[19]~63\,
	combout => \timer_cnt[20]~64_combout\,
	cout => \timer_cnt[20]~65\);

-- Location: FF_X39_Y30_N17
\timer_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[20]~64_combout\,
	clrn => \rst_n~input_o\,
	sclr => \update_req~3_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(20));

-- Location: LCCOMB_X39_Y30_N24
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!timer_cnt(17) & (!timer_cnt(16) & (!timer_cnt(19) & !timer_cnt(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(17),
	datab => timer_cnt(16),
	datac => timer_cnt(19),
	datad => timer_cnt(20),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X39_Y31_N0
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (((!timer_cnt(2)) # (!timer_cnt(3))) # (!timer_cnt(0))) # (!timer_cnt(1))

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
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X39_Y31_N6
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ((\LessThan0~0_combout\) # (!timer_cnt(5))) # (!timer_cnt(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => timer_cnt(4),
	datac => timer_cnt(5),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X38_Y31_N30
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!timer_cnt(6) & (\LessThan0~3_combout\ & (\LessThan0~2_combout\ & \LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(6),
	datab => \LessThan0~3_combout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X38_Y31_N4
\LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (\LessThan0~2_combout\ & (\LessThan0~3_combout\ & ((!timer_cnt(8)) # (!timer_cnt(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(7),
	datab => timer_cnt(8),
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X39_Y30_N18
\timer_cnt[21]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[21]~66_combout\ = (timer_cnt(21) & (!\timer_cnt[20]~65\)) # (!timer_cnt(21) & ((\timer_cnt[20]~65\) # (GND)))
-- \timer_cnt[21]~67\ = CARRY((!\timer_cnt[20]~65\) # (!timer_cnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(21),
	datad => VCC,
	cin => \timer_cnt[20]~65\,
	combout => \timer_cnt[21]~66_combout\,
	cout => \timer_cnt[21]~67\);

-- Location: FF_X39_Y30_N19
\timer_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[21]~66_combout\,
	clrn => \rst_n~input_o\,
	sclr => \update_req~3_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(21));

-- Location: LCCOMB_X39_Y30_N20
\timer_cnt[22]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[22]~68_combout\ = (timer_cnt(22) & (\timer_cnt[21]~67\ $ (GND))) # (!timer_cnt(22) & (!\timer_cnt[21]~67\ & VCC))
-- \timer_cnt[22]~69\ = CARRY((timer_cnt(22) & !\timer_cnt[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_cnt(22),
	datad => VCC,
	cin => \timer_cnt[21]~67\,
	combout => \timer_cnt[22]~68_combout\,
	cout => \timer_cnt[22]~69\);

-- Location: FF_X39_Y30_N21
\timer_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[22]~68_combout\,
	clrn => \rst_n~input_o\,
	sclr => \update_req~3_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(22));

-- Location: LCCOMB_X39_Y30_N22
\timer_cnt[23]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[23]~70_combout\ = timer_cnt(23) $ (\timer_cnt[22]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(23),
	cin => \timer_cnt[22]~69\,
	combout => \timer_cnt[23]~70_combout\);

-- Location: FF_X39_Y30_N23
\timer_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[23]~70_combout\,
	clrn => \rst_n~input_o\,
	sclr => \update_req~3_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(23));

-- Location: LCCOMB_X39_Y30_N28
\update_req~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \update_req~1_combout\ = (timer_cnt(21) & ((timer_cnt(18)) # ((timer_cnt(19)) # (timer_cnt(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(18),
	datab => timer_cnt(21),
	datac => timer_cnt(19),
	datad => timer_cnt(20),
	combout => \update_req~1_combout\);

-- Location: LCCOMB_X39_Y30_N26
\update_req~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \update_req~2_combout\ = (timer_cnt(22) & (timer_cnt(23) & \update_req~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => timer_cnt(22),
	datac => timer_cnt(23),
	datad => \update_req~1_combout\,
	combout => \update_req~2_combout\);

-- Location: LCCOMB_X39_Y30_N30
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (\LessThan0~2_combout\ & (((!timer_cnt(14)) # (!timer_cnt(13))) # (!timer_cnt(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(15),
	datab => timer_cnt(13),
	datac => timer_cnt(14),
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X38_Y31_N22
\update_req~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \update_req~3_combout\ = (!\LessThan0~4_combout\ & (!\LessThan0~6_combout\ & (\update_req~2_combout\ & !\LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \LessThan0~6_combout\,
	datac => \update_req~2_combout\,
	datad => \LessThan0~5_combout\,
	combout => \update_req~3_combout\);

-- Location: LCCOMB_X37_Y32_N20
\update_req~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \update_req~5_combout\ = (\update_req~q\ & (((!\update_req~3_combout\) # (!\sys_mode.MODE_ANIMATION~q\)))) # (!\update_req~q\ & (!\state.STATE_IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_IDLE~q\,
	datab => \sys_mode.MODE_ANIMATION~q\,
	datac => \update_req~q\,
	datad => \update_req~3_combout\,
	combout => \update_req~5_combout\);

-- Location: FF_X37_Y32_N21
update_req : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \update_req~5_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \update_req~q\);

-- Location: LCCOMB_X37_Y32_N26
\Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (!\led_idx[0]~22_combout\ & ((\state.STATE_IDLE~q\) # (!\update_req~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \update_req~q\,
	datac => \state.STATE_IDLE~q\,
	datad => \led_idx[0]~22_combout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X37_Y32_N27
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

-- Location: LCCOMB_X36_Y33_N24
\draw_mode.MODE_ANIMATION~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_mode.MODE_ANIMATION~1_combout\ = (!\state.STATE_IDLE~q\ & !\update_req~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.STATE_IDLE~q\,
	datad => \update_req~q\,
	combout => \draw_mode.MODE_ANIMATION~1_combout\);

-- Location: LCCOMB_X38_Y32_N0
\Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = clk_cnt(0) $ (VCC)
-- \Add5~1\ = CARRY(clk_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(0),
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X36_Y32_N30
\Selector10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~4_combout\ = (\state.STATE_RESET~q\ & !\LessThan5~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.STATE_RESET~q\,
	datad => \LessThan5~4_combout\,
	combout => \Selector10~4_combout\);

-- Location: LCCOMB_X37_Y32_N28
\Selector15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector15~4_combout\ = (\Add5~0_combout\ & ((\Selector10~4_combout\) # ((\LessThan8~4_combout\ & \state.STATE_SEND~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~4_combout\,
	datab => \Add5~0_combout\,
	datac => \state.STATE_SEND~q\,
	datad => \Selector10~4_combout\,
	combout => \Selector15~4_combout\);

-- Location: FF_X37_Y32_N29
\clk_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector15~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(0));

-- Location: LCCOMB_X38_Y32_N2
\Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (clk_cnt(1) & (!\Add5~1\)) # (!clk_cnt(1) & ((\Add5~1\) # (GND)))
-- \Add5~3\ = CARRY((!\Add5~1\) # (!clk_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(1),
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X36_Y32_N26
\Selector14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector14~4_combout\ = (\Add5~2_combout\ & ((\Selector10~4_combout\) # ((\state.STATE_SEND~q\ & \LessThan8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SEND~q\,
	datab => \LessThan8~4_combout\,
	datac => \Add5~2_combout\,
	datad => \Selector10~4_combout\,
	combout => \Selector14~4_combout\);

-- Location: FF_X36_Y32_N27
\clk_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector14~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(1));

-- Location: LCCOMB_X38_Y32_N4
\Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (clk_cnt(2) & (\Add5~3\ $ (GND))) # (!clk_cnt(2) & (!\Add5~3\ & VCC))
-- \Add5~5\ = CARRY((clk_cnt(2) & !\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(2),
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X36_Y32_N14
\Selector13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector13~4_combout\ = (\Add5~4_combout\ & ((\Selector10~4_combout\) # ((\LessThan8~4_combout\ & \state.STATE_SEND~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~4_combout\,
	datab => \LessThan8~4_combout\,
	datac => \state.STATE_SEND~q\,
	datad => \Selector10~4_combout\,
	combout => \Selector13~4_combout\);

-- Location: FF_X36_Y32_N15
\clk_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector13~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(2));

-- Location: LCCOMB_X38_Y32_N6
\Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (clk_cnt(3) & (!\Add5~5\)) # (!clk_cnt(3) & ((\Add5~5\) # (GND)))
-- \Add5~7\ = CARRY((!\Add5~5\) # (!clk_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(3),
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X38_Y32_N8
\Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (clk_cnt(4) & (\Add5~7\ $ (GND))) # (!clk_cnt(4) & (!\Add5~7\ & VCC))
-- \Add5~9\ = CARRY((clk_cnt(4) & !\Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(4),
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X36_Y32_N4
\Selector11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector11~4_combout\ = (\Add5~8_combout\ & ((\Selector10~4_combout\) # ((\LessThan8~4_combout\ & \state.STATE_SEND~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~8_combout\,
	datab => \LessThan8~4_combout\,
	datac => \state.STATE_SEND~q\,
	datad => \Selector10~4_combout\,
	combout => \Selector11~4_combout\);

-- Location: FF_X36_Y32_N5
\clk_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector11~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(4));

-- Location: LCCOMB_X38_Y32_N10
\Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (clk_cnt(5) & (!\Add5~9\)) # (!clk_cnt(5) & ((\Add5~9\) # (GND)))
-- \Add5~11\ = CARRY((!\Add5~9\) # (!clk_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(5),
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X36_Y32_N24
\Selector10~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~5_combout\ = (\Add5~10_combout\ & ((\Selector10~4_combout\) # ((\LessThan8~4_combout\ & \state.STATE_SEND~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~10_combout\,
	datab => \LessThan8~4_combout\,
	datac => \state.STATE_SEND~q\,
	datad => \Selector10~4_combout\,
	combout => \Selector10~5_combout\);

-- Location: FF_X36_Y32_N25
\clk_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector10~5_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(5));

-- Location: LCCOMB_X37_Y32_N4
\LessThan8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan8~3_combout\ = (((!clk_cnt(0) & !clk_cnt(1))) # (!clk_cnt(3))) # (!clk_cnt(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(2),
	datab => clk_cnt(0),
	datac => clk_cnt(1),
	datad => clk_cnt(3),
	combout => \LessThan8~3_combout\);

-- Location: LCCOMB_X38_Y32_N12
\Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (clk_cnt(6) & (\Add5~11\ $ (GND))) # (!clk_cnt(6) & (!\Add5~11\ & VCC))
-- \Add5~13\ = CARRY((clk_cnt(6) & !\Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(6),
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: LCCOMB_X36_Y32_N22
\Selector9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector9~4_combout\ = (\Add5~12_combout\ & ((\Selector10~4_combout\) # ((\state.STATE_SEND~q\ & \LessThan8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SEND~q\,
	datab => \LessThan8~4_combout\,
	datac => \Add5~12_combout\,
	datad => \Selector10~4_combout\,
	combout => \Selector9~4_combout\);

-- Location: FF_X36_Y32_N23
\clk_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector9~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(6));

-- Location: LCCOMB_X38_Y32_N14
\Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (clk_cnt(7) & (!\Add5~13\)) # (!clk_cnt(7) & ((\Add5~13\) # (GND)))
-- \Add5~15\ = CARRY((!\Add5~13\) # (!clk_cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(7),
	datad => VCC,
	cin => \Add5~13\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

-- Location: LCCOMB_X36_Y32_N8
\Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\Add5~14_combout\ & \Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~14_combout\,
	datad => \Selector1~0_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X36_Y32_N9
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

-- Location: LCCOMB_X38_Y32_N16
\Add5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = (clk_cnt(8) & (\Add5~15\ $ (GND))) # (!clk_cnt(8) & (!\Add5~15\ & VCC))
-- \Add5~17\ = CARRY((clk_cnt(8) & !\Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(8),
	datad => VCC,
	cin => \Add5~15\,
	combout => \Add5~16_combout\,
	cout => \Add5~17\);

-- Location: LCCOMB_X36_Y32_N18
\Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\Add5~16_combout\ & \Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~16_combout\,
	datad => \Selector1~0_combout\,
	combout => \Selector7~0_combout\);

-- Location: FF_X36_Y32_N19
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

-- Location: LCCOMB_X38_Y32_N18
\Add5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = (clk_cnt(9) & (!\Add5~17\)) # (!clk_cnt(9) & ((\Add5~17\) # (GND)))
-- \Add5~19\ = CARRY((!\Add5~17\) # (!clk_cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(9),
	datad => VCC,
	cin => \Add5~17\,
	combout => \Add5~18_combout\,
	cout => \Add5~19\);

-- Location: LCCOMB_X36_Y32_N0
\Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\Add5~18_combout\ & \Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~18_combout\,
	datad => \Selector1~0_combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X36_Y32_N1
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

-- Location: LCCOMB_X38_Y32_N20
\Add5~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~20_combout\ = (clk_cnt(10) & (\Add5~19\ $ (GND))) # (!clk_cnt(10) & (!\Add5~19\ & VCC))
-- \Add5~21\ = CARRY((clk_cnt(10) & !\Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(10),
	datad => VCC,
	cin => \Add5~19\,
	combout => \Add5~20_combout\,
	cout => \Add5~21\);

-- Location: LCCOMB_X37_Y32_N24
\Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\Add5~20_combout\ & \Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~20_combout\,
	datac => \Selector1~0_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X37_Y32_N25
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

-- Location: LCCOMB_X38_Y32_N22
\Add5~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~22_combout\ = (clk_cnt(11) & (!\Add5~21\)) # (!clk_cnt(11) & ((\Add5~21\) # (GND)))
-- \Add5~23\ = CARRY((!\Add5~21\) # (!clk_cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(11),
	datad => VCC,
	cin => \Add5~21\,
	combout => \Add5~22_combout\,
	cout => \Add5~23\);

-- Location: LCCOMB_X35_Y32_N6
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Add5~22_combout\ & \Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~22_combout\,
	datad => \Selector1~0_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X35_Y32_N7
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

-- Location: LCCOMB_X35_Y32_N4
\LessThan8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan8~1_combout\ = (!clk_cnt(11) & (!clk_cnt(8) & (!clk_cnt(9) & !clk_cnt(10))))

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
	combout => \LessThan8~1_combout\);

-- Location: LCCOMB_X38_Y32_N24
\Add5~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~24_combout\ = (clk_cnt(12) & (\Add5~23\ $ (GND))) # (!clk_cnt(12) & (!\Add5~23\ & VCC))
-- \Add5~25\ = CARRY((clk_cnt(12) & !\Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(12),
	datad => VCC,
	cin => \Add5~23\,
	combout => \Add5~24_combout\,
	cout => \Add5~25\);

-- Location: LCCOMB_X35_Y32_N8
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\Add5~24_combout\ & \Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~24_combout\,
	datad => \Selector1~0_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X35_Y32_N9
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

-- Location: LCCOMB_X38_Y32_N26
\Add5~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~26_combout\ = (clk_cnt(13) & (!\Add5~25\)) # (!clk_cnt(13) & ((\Add5~25\) # (GND)))
-- \Add5~27\ = CARRY((!\Add5~25\) # (!clk_cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(13),
	datad => VCC,
	cin => \Add5~25\,
	combout => \Add5~26_combout\,
	cout => \Add5~27\);

-- Location: LCCOMB_X37_Y32_N30
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\Selector1~0_combout\ & \Add5~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector1~0_combout\,
	datad => \Add5~26_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X37_Y32_N31
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

-- Location: LCCOMB_X35_Y32_N12
\LessThan8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan8~0_combout\ = (!clk_cnt(15) & (!clk_cnt(12) & (!clk_cnt(13) & !clk_cnt(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(15),
	datab => clk_cnt(12),
	datac => clk_cnt(13),
	datad => clk_cnt(14),
	combout => \LessThan8~0_combout\);

-- Location: LCCOMB_X35_Y32_N2
\LessThan8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan8~2_combout\ = (!clk_cnt(6) & (!clk_cnt(7) & (\LessThan8~1_combout\ & \LessThan8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(6),
	datab => clk_cnt(7),
	datac => \LessThan8~1_combout\,
	datad => \LessThan8~0_combout\,
	combout => \LessThan8~2_combout\);

-- Location: LCCOMB_X35_Y32_N28
\LessThan8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan8~4_combout\ = (\LessThan8~2_combout\ & (((\LessThan8~3_combout\) # (!clk_cnt(5))) # (!clk_cnt(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(4),
	datab => clk_cnt(5),
	datac => \LessThan8~3_combout\,
	datad => \LessThan8~2_combout\,
	combout => \LessThan8~4_combout\);

-- Location: LCCOMB_X36_Y32_N16
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\LessThan5~4_combout\ & (((\state.STATE_SEND~q\ & \LessThan8~4_combout\)))) # (!\LessThan5~4_combout\ & ((\state.STATE_RESET~q\) # ((\state.STATE_SEND~q\ & \LessThan8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~4_combout\,
	datab => \state.STATE_RESET~q\,
	datac => \state.STATE_SEND~q\,
	datad => \LessThan8~4_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X38_Y32_N28
\Add5~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~28_combout\ = (clk_cnt(14) & (\Add5~27\ $ (GND))) # (!clk_cnt(14) & (!\Add5~27\ & VCC))
-- \Add5~29\ = CARRY((clk_cnt(14) & !\Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(14),
	datad => VCC,
	cin => \Add5~27\,
	combout => \Add5~28_combout\,
	cout => \Add5~29\);

-- Location: LCCOMB_X37_Y32_N8
\Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\ & \Add5~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector1~0_combout\,
	datad => \Add5~28_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X37_Y32_N9
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

-- Location: LCCOMB_X38_Y32_N30
\Add5~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~30_combout\ = \Add5~29\ $ (clk_cnt(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => clk_cnt(15),
	cin => \Add5~29\,
	combout => \Add5~30_combout\);

-- Location: LCCOMB_X35_Y32_N10
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\Add5~30_combout\ & \Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add5~30_combout\,
	datad => \Selector1~0_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X35_Y32_N11
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

-- Location: LCCOMB_X36_Y32_N10
\LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (clk_cnt(6)) # ((clk_cnt(1) & (clk_cnt(2) & clk_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(1),
	datab => clk_cnt(2),
	datac => clk_cnt(6),
	datad => clk_cnt(0),
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X36_Y32_N28
\LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = (clk_cnt(3)) # ((clk_cnt(5)) # ((clk_cnt(4)) # (\LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(3),
	datab => clk_cnt(5),
	datac => clk_cnt(4),
	datad => \LessThan5~0_combout\,
	combout => \LessThan5~1_combout\);

-- Location: LCCOMB_X36_Y32_N2
\LessThan5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~2_combout\ = (clk_cnt(8) & (clk_cnt(9) & (clk_cnt(7) & \LessThan5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(8),
	datab => clk_cnt(9),
	datac => clk_cnt(7),
	datad => \LessThan5~1_combout\,
	combout => \LessThan5~2_combout\);

-- Location: LCCOMB_X36_Y32_N20
\LessThan5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~3_combout\ = (clk_cnt(12) & ((clk_cnt(10)) # ((clk_cnt(11)) # (\LessThan5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(12),
	datab => clk_cnt(10),
	datac => clk_cnt(11),
	datad => \LessThan5~2_combout\,
	combout => \LessThan5~3_combout\);

-- Location: LCCOMB_X36_Y32_N6
\LessThan5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~4_combout\ = (clk_cnt(15)) # ((clk_cnt(14)) # ((clk_cnt(13)) # (\LessThan5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(15),
	datab => clk_cnt(14),
	datac => clk_cnt(13),
	datad => \LessThan5~3_combout\,
	combout => \LessThan5~4_combout\);

-- Location: LCCOMB_X37_Y32_N12
\Selector17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector17~2_combout\ = (!\led_idx[0]~22_combout\ & ((\state.STATE_RESET~q\ & ((!\LessThan5~4_combout\))) # (!\state.STATE_RESET~q\ & (\draw_mode.MODE_ANIMATION~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_mode.MODE_ANIMATION~1_combout\,
	datab => \LessThan5~4_combout\,
	datac => \state.STATE_RESET~q\,
	datad => \led_idx[0]~22_combout\,
	combout => \Selector17~2_combout\);

-- Location: FF_X37_Y32_N13
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

-- Location: LCCOMB_X36_Y33_N4
\LessThan9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan9~1_combout\ = (\LessThan9~0_combout\) # (!bit_idx(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_idx(0),
	datac => \LessThan9~0_combout\,
	combout => \LessThan9~1_combout\);

-- Location: LCCOMB_X36_Y33_N6
\Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = bit_idx(0) $ (GND)
-- \Add6~1\ = CARRY(!bit_idx(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_idx(0),
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: LCCOMB_X36_Y33_N8
\Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (bit_idx(1) & (!\Add6~1\)) # (!bit_idx(1) & (\Add6~1\ & VCC))
-- \Add6~3\ = CARRY((bit_idx(1) & !\Add6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_idx(1),
	datad => VCC,
	cin => \Add6~1\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X37_Y32_N22
\Selector28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (!\Add6~2_combout\ & (\state.STATE_SEND~q\ & ((\LessThan9~0_combout\) # (!bit_idx(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datab => bit_idx(0),
	datac => \state.STATE_SEND~q\,
	datad => \LessThan9~0_combout\,
	combout => \Selector28~0_combout\);

-- Location: LCCOMB_X37_Y32_N14
\bit_idx[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_idx[4]~1_combout\ = (\state.STATE_RESET~q\ & ((\LessThan5~4_combout\) # ((\state.STATE_SEND~q\ & !\LessThan8~4_combout\)))) # (!\state.STATE_RESET~q\ & (\state.STATE_SEND~q\ & ((!\LessThan8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_RESET~q\,
	datab => \state.STATE_SEND~q\,
	datac => \LessThan5~4_combout\,
	datad => \LessThan8~4_combout\,
	combout => \bit_idx[4]~1_combout\);

-- Location: FF_X37_Y32_N23
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

-- Location: LCCOMB_X36_Y33_N10
\Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = (bit_idx(2) & (\Add6~3\ $ (GND))) # (!bit_idx(2) & ((GND) # (!\Add6~3\)))
-- \Add6~5\ = CARRY((!\Add6~3\) # (!bit_idx(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_idx(2),
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X37_Y32_N16
\Selector27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\state.STATE_SEND~q\ & (!\Add6~4_combout\ & ((\LessThan9~0_combout\) # (!bit_idx(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan9~0_combout\,
	datab => bit_idx(0),
	datac => \state.STATE_SEND~q\,
	datad => \Add6~4_combout\,
	combout => \Selector27~0_combout\);

-- Location: FF_X37_Y32_N17
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

-- Location: LCCOMB_X36_Y33_N12
\Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (bit_idx(3) & (\Add6~5\ & VCC)) # (!bit_idx(3) & (!\Add6~5\))
-- \Add6~7\ = CARRY((!bit_idx(3) & !\Add6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_idx(3),
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X36_Y33_N22
\bit_idx[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_idx[3]~2_combout\ = (\LessThan8~4_combout\ & (bit_idx(3))) # (!\LessThan8~4_combout\ & (((\LessThan9~1_combout\ & \Add6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_idx(3),
	datab => \LessThan9~1_combout\,
	datac => \LessThan8~4_combout\,
	datad => \Add6~6_combout\,
	combout => \bit_idx[3]~2_combout\);

-- Location: LCCOMB_X36_Y33_N18
\bit_idx[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_idx[4]~0_combout\ = (!\LessThan5~4_combout\) # (!\state.STATE_RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.STATE_RESET~q\,
	datad => \LessThan5~4_combout\,
	combout => \bit_idx[4]~0_combout\);

-- Location: LCCOMB_X36_Y33_N30
\bit_idx[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_idx[3]~3_combout\ = (\state.STATE_SEND~q\ & (\bit_idx[3]~2_combout\)) # (!\state.STATE_SEND~q\ & (((bit_idx(3) & \bit_idx[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_idx[3]~2_combout\,
	datab => \state.STATE_SEND~q\,
	datac => bit_idx(3),
	datad => \bit_idx[4]~0_combout\,
	combout => \bit_idx[3]~3_combout\);

-- Location: FF_X36_Y33_N31
\bit_idx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bit_idx[3]~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(3));

-- Location: LCCOMB_X36_Y33_N14
\Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = bit_idx(4) $ (!\Add6~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_idx(4),
	cin => \Add6~7\,
	combout => \Add6~8_combout\);

-- Location: LCCOMB_X37_Y32_N6
\Selector25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (!\Add6~8_combout\ & (\state.STATE_SEND~q\ & ((\LessThan9~0_combout\) # (!bit_idx(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~8_combout\,
	datab => bit_idx(0),
	datac => \state.STATE_SEND~q\,
	datad => \LessThan9~0_combout\,
	combout => \Selector25~0_combout\);

-- Location: FF_X37_Y32_N7
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

-- Location: LCCOMB_X37_Y32_N0
\LessThan9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan9~0_combout\ = (((bit_idx(3)) # (!bit_idx(1))) # (!bit_idx(2))) # (!bit_idx(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_idx(4),
	datab => bit_idx(2),
	datac => bit_idx(1),
	datad => bit_idx(3),
	combout => \LessThan9~0_combout\);

-- Location: LCCOMB_X37_Y32_N2
\Selector29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\state.STATE_SEND~q\ & (!\Add6~0_combout\ & ((\LessThan9~0_combout\) # (!bit_idx(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SEND~q\,
	datab => \LessThan9~0_combout\,
	datac => bit_idx(0),
	datad => \Add6~0_combout\,
	combout => \Selector29~0_combout\);

-- Location: FF_X37_Y32_N3
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

-- Location: LCCOMB_X35_Y32_N26
\led_idx[0]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_idx[0]~19_combout\ = (bit_idx(0) & (\state.STATE_SEND~q\ & (!\LessThan9~0_combout\ & !\LessThan8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_idx(0),
	datab => \state.STATE_SEND~q\,
	datac => \LessThan9~0_combout\,
	datad => \LessThan8~4_combout\,
	combout => \led_idx[0]~19_combout\);

-- Location: LCCOMB_X35_Y32_N30
\led_idx[0]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_idx[0]~23_combout\ = (\led_idx[0]~19_combout\) # ((\state.STATE_RESET~q\ & \LessThan5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.STATE_RESET~q\,
	datac => \led_idx[0]~19_combout\,
	datad => \LessThan5~4_combout\,
	combout => \led_idx[0]~23_combout\);

-- Location: FF_X35_Y32_N19
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
	sclr => \led_idx[0]~18_combout\,
	ena => \led_idx[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_idx(2));

-- Location: LCCOMB_X35_Y32_N20
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

-- Location: FF_X35_Y32_N21
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
	sclr => \led_idx[0]~18_combout\,
	ena => \led_idx[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_idx(3));

-- Location: LCCOMB_X35_Y32_N22
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

-- Location: FF_X35_Y32_N23
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
	sclr => \led_idx[0]~18_combout\,
	ena => \led_idx[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_idx(4));

-- Location: LCCOMB_X35_Y32_N24
\led_idx[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_idx[5]~20_combout\ = \led_idx[4]~17\ $ (led_idx(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => led_idx(5),
	cin => \led_idx[4]~17\,
	combout => \led_idx[5]~20_combout\);

-- Location: FF_X35_Y32_N25
\led_idx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_idx[5]~20_combout\,
	clrn => \rst_n~input_o\,
	sclr => \led_idx[0]~18_combout\,
	ena => \led_idx[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_idx(5));

-- Location: LCCOMB_X36_Y31_N10
\LessThan10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan10~0_combout\ = (((!led_idx(0)) # (!led_idx(3))) # (!led_idx(4))) # (!led_idx(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_idx(5),
	datab => led_idx(4),
	datac => led_idx(3),
	datad => led_idx(0),
	combout => \LessThan10~0_combout\);

-- Location: LCCOMB_X36_Y31_N8
\led_idx[0]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_idx[0]~18_combout\ = ((led_idx(1) & (led_idx(2) & !\LessThan10~0_combout\))) # (!\state.STATE_SEND~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SEND~q\,
	datab => led_idx(1),
	datac => led_idx(2),
	datad => \LessThan10~0_combout\,
	combout => \led_idx[0]~18_combout\);

-- Location: FF_X35_Y32_N15
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
	sclr => \led_idx[0]~18_combout\,
	ena => \led_idx[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_idx(0));

-- Location: FF_X35_Y32_N17
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
	sclr => \led_idx[0]~18_combout\,
	ena => \led_idx[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_idx(1));

-- Location: LCCOMB_X35_Y32_N0
\led_idx[0]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_idx[0]~22_combout\ = (led_idx(1) & (led_idx(2) & (\led_idx[0]~19_combout\ & !\LessThan10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_idx(1),
	datab => led_idx(2),
	datac => \led_idx[0]~19_combout\,
	datad => \LessThan10~0_combout\,
	combout => \led_idx[0]~22_combout\);

-- Location: LCCOMB_X36_Y33_N28
\Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (!\led_idx[0]~22_combout\ & (((!\draw_mode.MODE_ANIMATION~1_combout\ & \state.STATE_SEND~q\)) # (!\bit_idx[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_idx[0]~22_combout\,
	datab => \draw_mode.MODE_ANIMATION~1_combout\,
	datac => \state.STATE_SEND~q\,
	datad => \bit_idx[4]~0_combout\,
	combout => \Selector18~0_combout\);

-- Location: FF_X36_Y33_N29
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

-- Location: LCCOMB_X36_Y32_N12
\Selector12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector12~4_combout\ = (\Add5~6_combout\ & ((\Selector10~4_combout\) # ((\state.STATE_SEND~q\ & \LessThan8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SEND~q\,
	datab => \LessThan8~4_combout\,
	datac => \Add5~6_combout\,
	datad => \Selector10~4_combout\,
	combout => \Selector12~4_combout\);

-- Location: FF_X36_Y32_N13
\clk_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector12~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(3));

-- Location: LCCOMB_X37_Y32_N10
\DIN~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIN~5_combout\ = (!clk_cnt(3) & (!clk_cnt(2) & (!clk_cnt(1) & !clk_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(3),
	datab => clk_cnt(2),
	datac => clk_cnt(1),
	datad => clk_cnt(0),
	combout => \DIN~5_combout\);

-- Location: LCCOMB_X37_Y32_N18
\DIN~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIN~6_combout\ = (clk_cnt(4) & (!\DIN~5_combout\ & ((!clk_cnt(5))))) # (!clk_cnt(4) & (((\LessThan8~3_combout\ & clk_cnt(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN~5_combout\,
	datab => clk_cnt(4),
	datac => \LessThan8~3_combout\,
	datad => clk_cnt(5),
	combout => \DIN~6_combout\);

-- Location: LCCOMB_X37_Y31_N26
\reversal~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reversal~0_combout\ = (draw_row(2) & ((\reversal~q\) # ((draw_row(0) & draw_row(1))))) # (!draw_row(2) & (\reversal~q\ & ((draw_row(0)) # (draw_row(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => draw_row(2),
	datab => \reversal~q\,
	datac => draw_row(0),
	datad => draw_row(1),
	combout => \reversal~0_combout\);

-- Location: LCCOMB_X37_Y31_N8
\draw_col~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_col~0_combout\ = (draw_row(2) & ((\reversal~q\) # ((!draw_row(1)) # (!draw_row(0))))) # (!draw_row(2) & (((draw_row(0)) # (draw_row(1))) # (!\reversal~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => draw_row(2),
	datab => \reversal~q\,
	datac => draw_row(0),
	datad => draw_row(1),
	combout => \draw_col~0_combout\);

-- Location: LCCOMB_X37_Y31_N6
\LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = ((draw_col(2)) # (draw_col(0))) # (!draw_col(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => draw_col(1),
	datac => draw_col(2),
	datad => draw_col(0),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X36_Y31_N14
\draw_col~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_col~1_combout\ = (!draw_col(0) & ((\LessThan3~0_combout\) # ((!draw_row(0)) # (!\draw_col~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => \draw_col~0_combout\,
	datac => draw_col(0),
	datad => draw_row(0),
	combout => \draw_col~1_combout\);

-- Location: LCCOMB_X37_Y31_N10
\draw_col~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_col~2_combout\ = (\draw_col~1_combout\) # ((!\LessThan2~0_combout\ & (!draw_row(0) & \draw_col~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_col~1_combout\,
	datab => \LessThan2~0_combout\,
	datac => draw_row(0),
	datad => \draw_col~0_combout\,
	combout => \draw_col~2_combout\);

-- Location: LCCOMB_X37_Y31_N0
\update_req~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \update_req~4_combout\ = (\sys_mode.MODE_ANIMATION~q\ & \update_req~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sys_mode.MODE_ANIMATION~q\,
	datad => \update_req~3_combout\,
	combout => \update_req~4_combout\);

-- Location: FF_X37_Y31_N11
\draw_col[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \draw_col~2_combout\,
	clrn => \rst_n~input_o\,
	ena => \update_req~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => draw_col(0));

-- Location: LCCOMB_X36_Y31_N12
\draw_col~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_col~3_combout\ = (draw_col(1) & (draw_col(2) & ((draw_col(0)) # (!draw_row(0))))) # (!draw_col(1) & ((draw_col(2)) # ((draw_col(0) & !draw_row(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => draw_col(1),
	datab => draw_col(2),
	datac => draw_col(0),
	datad => draw_row(0),
	combout => \draw_col~3_combout\);

-- Location: LCCOMB_X37_Y31_N22
\draw_col~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_col~4_combout\ = draw_col(2) $ (((draw_col(0) & (\reversal~q\ & !draw_col(1))) # (!draw_col(0) & (!\reversal~q\ & draw_col(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => draw_col(0),
	datab => \reversal~q\,
	datac => draw_col(2),
	datad => draw_col(1),
	combout => \draw_col~4_combout\);

-- Location: LCCOMB_X37_Y31_N24
\draw_col~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_col~5_combout\ = (\draw_col~0_combout\ & (\draw_col~3_combout\)) # (!\draw_col~0_combout\ & ((\draw_col~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_col~3_combout\,
	datac => \draw_col~4_combout\,
	datad => \draw_col~0_combout\,
	combout => \draw_col~5_combout\);

-- Location: FF_X37_Y31_N25
\draw_col[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \draw_col~5_combout\,
	clrn => \rst_n~input_o\,
	ena => \update_req~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => draw_col(2));

-- Location: LCCOMB_X36_Y31_N6
\draw_col~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_col~6_combout\ = (draw_col(1) & ((draw_col(0) & ((!draw_row(0)))) # (!draw_col(0) & (draw_col(2) & draw_row(0))))) # (!draw_col(1) & ((draw_col(0) & ((draw_col(2)) # (draw_row(0)))) # (!draw_col(0) & ((!draw_row(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => draw_col(1),
	datab => draw_col(2),
	datac => draw_col(0),
	datad => draw_row(0),
	combout => \draw_col~6_combout\);

-- Location: LCCOMB_X37_Y31_N20
\draw_col~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_col~7_combout\ = draw_col(0) $ (\reversal~q\ $ (!draw_col(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => draw_col(0),
	datab => \reversal~q\,
	datad => draw_col(1),
	combout => \draw_col~7_combout\);

-- Location: LCCOMB_X37_Y31_N18
\draw_col~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_col~8_combout\ = (\draw_col~0_combout\ & (!\draw_col~6_combout\)) # (!\draw_col~0_combout\ & ((\draw_col~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_col~0_combout\,
	datac => \draw_col~6_combout\,
	datad => \draw_col~7_combout\,
	combout => \draw_col~8_combout\);

-- Location: FF_X37_Y31_N19
\draw_col[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \draw_col~8_combout\,
	clrn => \rst_n~input_o\,
	ena => \update_req~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => draw_col(1));

-- Location: LCCOMB_X37_Y31_N4
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (draw_col(1)) # ((!draw_col(0)) # (!draw_col(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => draw_col(1),
	datac => draw_col(2),
	datad => draw_col(0),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X37_Y31_N16
\reversal~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reversal~1_combout\ = (\reversal~0_combout\ & (((\reversal~q\) # (!\LessThan3~0_combout\)))) # (!\reversal~0_combout\ & (\LessThan2~0_combout\ & (\reversal~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reversal~0_combout\,
	datab => \LessThan2~0_combout\,
	datac => \reversal~q\,
	datad => \LessThan3~0_combout\,
	combout => \reversal~1_combout\);

-- Location: FF_X37_Y31_N17
reversal : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reversal~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \update_req~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reversal~q\);

-- Location: LCCOMB_X37_Y31_N12
\draw_row[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_row[2]~4_combout\ = (draw_row(0) & ((draw_row(2)) # ((!\reversal~q\ & draw_row(1))))) # (!draw_row(0) & (draw_row(2) & ((draw_row(1)) # (!\reversal~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => draw_row(0),
	datab => \reversal~q\,
	datac => draw_row(2),
	datad => draw_row(1),
	combout => \draw_row[2]~4_combout\);

-- Location: LCCOMB_X37_Y31_N14
\draw_row[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_row[1]~3_combout\ = (\update_req~4_combout\ & ((draw_row(0) & (!\LessThan3~0_combout\)) # (!draw_row(0) & ((!\LessThan2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => \LessThan2~0_combout\,
	datac => draw_row(0),
	datad => \update_req~4_combout\,
	combout => \draw_row[1]~3_combout\);

-- Location: FF_X37_Y31_N13
\draw_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \draw_row[2]~4_combout\,
	clrn => \rst_n~input_o\,
	ena => \draw_row[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => draw_row(2));

-- Location: LCCOMB_X37_Y31_N30
\draw_row~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_row~0_combout\ = (draw_row(2) & (!\reversal~q\ & (draw_row(0) & draw_row(1)))) # (!draw_row(2) & (\reversal~q\ & (!draw_row(0) & !draw_row(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => draw_row(2),
	datab => \reversal~q\,
	datac => draw_row(0),
	datad => draw_row(1),
	combout => \draw_row~0_combout\);

-- Location: LCCOMB_X37_Y31_N28
\draw_row~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_row~1_combout\ = (\draw_row~0_combout\ & (((draw_row(0))))) # (!\draw_row~0_combout\ & ((draw_row(0) & ((\LessThan3~0_combout\))) # (!draw_row(0) & (!\LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_row~0_combout\,
	datab => \LessThan2~0_combout\,
	datac => draw_row(0),
	datad => \LessThan3~0_combout\,
	combout => \draw_row~1_combout\);

-- Location: FF_X37_Y31_N29
\draw_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \draw_row~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \update_req~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => draw_row(0));

-- Location: LCCOMB_X37_Y31_N2
\draw_row~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_row~2_combout\ = (draw_row(0) & ((\reversal~q\ & (draw_row(1))) # (!\reversal~q\ & ((draw_row(2)) # (!draw_row(1)))))) # (!draw_row(0) & ((\reversal~q\ & (!draw_row(1) & draw_row(2))) # (!\reversal~q\ & (draw_row(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => draw_row(0),
	datab => \reversal~q\,
	datac => draw_row(1),
	datad => draw_row(2),
	combout => \draw_row~2_combout\);

-- Location: FF_X37_Y31_N3
\draw_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \draw_row~2_combout\,
	clrn => \rst_n~input_o\,
	ena => \draw_row[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => draw_row(1));

-- Location: LCCOMB_X36_Y31_N16
\DIN~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIN~0_combout\ = (draw_row(1) & (led_idx(4) & (led_idx(3) $ (!draw_row(0))))) # (!draw_row(1) & (!led_idx(4) & (led_idx(3) $ (!draw_row(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => draw_row(1),
	datab => led_idx(4),
	datac => led_idx(3),
	datad => draw_row(0),
	combout => \DIN~0_combout\);

-- Location: LCCOMB_X36_Y31_N4
\DIN~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIN~2_combout\ = (led_idx(2) & (draw_col(2) & (led_idx(1) $ (draw_col(1))))) # (!led_idx(2) & (!draw_col(2) & (led_idx(1) $ (draw_col(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_idx(2),
	datab => draw_col(2),
	datac => led_idx(1),
	datad => draw_col(1),
	combout => \DIN~2_combout\);

-- Location: LCCOMB_X36_Y31_N30
\DIN~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIN~1_combout\ = (led_idx(5) & (draw_row(2) & (draw_col(0) $ (!led_idx(0))))) # (!led_idx(5) & (!draw_row(2) & (draw_col(0) $ (!led_idx(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_idx(5),
	datab => draw_row(2),
	datac => draw_col(0),
	datad => led_idx(0),
	combout => \DIN~1_combout\);

-- Location: LCCOMB_X36_Y33_N0
\draw_mode.MODE_ANIMATION~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_mode.MODE_ANIMATION~0_combout\ = (\update_req~q\ & (((\draw_mode.MODE_ANIMATION~q\)))) # (!\update_req~q\ & ((\state.STATE_IDLE~q\ & (\draw_mode.MODE_ANIMATION~q\)) # (!\state.STATE_IDLE~q\ & ((\sys_mode.MODE_ANIMATION~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \update_req~q\,
	datab => \state.STATE_IDLE~q\,
	datac => \draw_mode.MODE_ANIMATION~q\,
	datad => \sys_mode.MODE_ANIMATION~q\,
	combout => \draw_mode.MODE_ANIMATION~0_combout\);

-- Location: FF_X36_Y33_N1
\draw_mode.MODE_ANIMATION\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \draw_mode.MODE_ANIMATION~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \draw_mode.MODE_ANIMATION~q\);

-- Location: LCCOMB_X36_Y33_N16
\DIN~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIN~3_combout\ = (\draw_mode.MODE_ANIMATION~q\ & (bit_idx(4) & (bit_idx(3) $ (\reversal~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_idx(3),
	datab => \draw_mode.MODE_ANIMATION~q\,
	datac => bit_idx(4),
	datad => \reversal~q\,
	combout => \DIN~3_combout\);

-- Location: LCCOMB_X36_Y30_N2
\DIN~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIN~4_combout\ = (\DIN~0_combout\ & (\DIN~2_combout\ & (\DIN~1_combout\ & \DIN~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN~0_combout\,
	datab => \DIN~2_combout\,
	datac => \DIN~1_combout\,
	datad => \DIN~3_combout\,
	combout => \DIN~4_combout\);

-- Location: LCCOMB_X36_Y30_N12
\DIN~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIN~7_combout\ = (\LessThan8~2_combout\ & ((\DIN~6_combout\ & ((\DIN~4_combout\))) # (!\DIN~6_combout\ & (!clk_cnt(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN~6_combout\,
	datab => \LessThan8~2_combout\,
	datac => clk_cnt(5),
	datad => \DIN~4_combout\,
	combout => \DIN~7_combout\);

-- Location: FF_X36_Y30_N13
\DIN~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DIN~7_combout\,
	clrn => \rst_n~input_o\,
	sclr => \ALT_INV_state.STATE_SEND~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIN~reg0_q\);

ww_DIN <= \DIN~output_o\;
END structure;


