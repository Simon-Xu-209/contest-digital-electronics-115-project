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

-- DATE "08/21/2026 16:22:11"

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
SIGNAL \sys_mode.MODE_ANIMATION~feeder_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \sys_mode.MODE_ANIMATION~q\ : std_logic;
SIGNAL \timer_cnt[0]~24_combout\ : std_logic;
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
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \timer_cnt[20]~65\ : std_logic;
SIGNAL \timer_cnt[21]~66_combout\ : std_logic;
SIGNAL \timer_cnt[21]~67\ : std_logic;
SIGNAL \timer_cnt[22]~68_combout\ : std_logic;
SIGNAL \timer_cnt[22]~69\ : std_logic;
SIGNAL \timer_cnt[23]~70_combout\ : std_logic;
SIGNAL \update_req~1_combout\ : std_logic;
SIGNAL \update_req~2_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \update_req~6_combout\ : std_logic;
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
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \update_req~3_combout\ : std_logic;
SIGNAL \update_req~4_combout\ : std_logic;
SIGNAL \update_req~5_combout\ : std_logic;
SIGNAL \update_req~q\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \LessThan6~4_combout\ : std_logic;
SIGNAL \LessThan6~3_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \LessThan3~3_combout\ : std_logic;
SIGNAL \LessThan3~4_combout\ : std_logic;
SIGNAL \bit_idx[1]~0_combout\ : std_logic;
SIGNAL \Selector18~2_combout\ : std_logic;
SIGNAL \state.STATE_SEND~q\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \bit_idx[1]~4_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \bit_idx[3]~1_combout\ : std_logic;
SIGNAL \bit_idx[3]~2_combout\ : std_logic;
SIGNAL \bit_idx[3]~3_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \led_idx[0]~6_combout\ : std_logic;
SIGNAL \LessThan8~0_combout\ : std_logic;
SIGNAL \led_idx[0]~8_combout\ : std_logic;
SIGNAL \led_idx[0]~9_combout\ : std_logic;
SIGNAL \led_idx[0]~7\ : std_logic;
SIGNAL \led_idx[1]~10_combout\ : std_logic;
SIGNAL \led_idx[1]~11\ : std_logic;
SIGNAL \led_idx[2]~12_combout\ : std_logic;
SIGNAL \led_idx[2]~13\ : std_logic;
SIGNAL \led_idx[3]~14_combout\ : std_logic;
SIGNAL \led_idx[3]~15\ : std_logic;
SIGNAL \led_idx[4]~16_combout\ : std_logic;
SIGNAL \led_idx[4]~17\ : std_logic;
SIGNAL \led_idx[5]~18_combout\ : std_logic;
SIGNAL \LessThan8~1_combout\ : std_logic;
SIGNAL \Selector18~1_combout\ : std_logic;
SIGNAL \state.STATE_IDLE~2_combout\ : std_logic;
SIGNAL \state.STATE_IDLE~q\ : std_logic;
SIGNAL \draw_mode~8_combout\ : std_logic;
SIGNAL \Selector17~2_combout\ : std_logic;
SIGNAL \state.STATE_RESET~q\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \LessThan6~1_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \LessThan6~2_combout\ : std_logic;
SIGNAL \DIN~5_combout\ : std_logic;
SIGNAL \DIN~6_combout\ : std_logic;
SIGNAL \active_led[0]~6_combout\ : std_logic;
SIGNAL \active_led[0]~7\ : std_logic;
SIGNAL \active_led[1]~9_combout\ : std_logic;
SIGNAL \active_led[1]~10\ : std_logic;
SIGNAL \active_led[2]~11_combout\ : std_logic;
SIGNAL \active_led[2]~12\ : std_logic;
SIGNAL \active_led[3]~13_combout\ : std_logic;
SIGNAL \active_led[3]~14\ : std_logic;
SIGNAL \active_led[4]~15_combout\ : std_logic;
SIGNAL \reversal~0_combout\ : std_logic;
SIGNAL \reversal~1_combout\ : std_logic;
SIGNAL \active_led[0]~8_combout\ : std_logic;
SIGNAL \active_led[4]~16\ : std_logic;
SIGNAL \active_led[5]~17_combout\ : std_logic;
SIGNAL \reversal~2_combout\ : std_logic;
SIGNAL \reversal~3_combout\ : std_logic;
SIGNAL \reversal~4_combout\ : std_logic;
SIGNAL \reversal~q\ : std_logic;
SIGNAL \draw_reversal~0_combout\ : std_logic;
SIGNAL \draw_reversal~q\ : std_logic;
SIGNAL \draw_target[0]~feeder_combout\ : std_logic;
SIGNAL \DIN~0_combout\ : std_logic;
SIGNAL \draw_mode.MODE_ANIMATION~0_combout\ : std_logic;
SIGNAL \draw_mode.MODE_ANIMATION~q\ : std_logic;
SIGNAL \DIN~3_combout\ : std_logic;
SIGNAL \draw_target[2]~feeder_combout\ : std_logic;
SIGNAL \DIN~1_combout\ : std_logic;
SIGNAL \draw_target[4]~feeder_combout\ : std_logic;
SIGNAL \DIN~2_combout\ : std_logic;
SIGNAL \DIN~4_combout\ : std_logic;
SIGNAL \DIN~7_combout\ : std_logic;
SIGNAL \DIN~reg0_q\ : std_logic;
SIGNAL timer_cnt : std_logic_vector(23 DOWNTO 0);
SIGNAL led_idx : std_logic_vector(5 DOWNTO 0);
SIGNAL draw_target : std_logic_vector(5 DOWNTO 0);
SIGNAL clk_cnt : std_logic_vector(15 DOWNTO 0);
SIGNAL bit_idx : std_logic_vector(4 DOWNTO 0);
SIGNAL active_led : std_logic_vector(5 DOWNTO 0);
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

-- Location: LCCOMB_X41_Y26_N20
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

-- Location: FF_X41_Y26_N21
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

-- Location: LCCOMB_X42_Y24_N8
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

-- Location: LCCOMB_X42_Y24_N20
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

-- Location: LCCOMB_X42_Y24_N22
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

-- Location: FF_X42_Y24_N23
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
	sclr => \update_req~6_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(7));

-- Location: LCCOMB_X42_Y24_N24
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

-- Location: FF_X42_Y24_N25
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
	sclr => \update_req~6_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(8));

-- Location: LCCOMB_X42_Y24_N26
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

-- Location: FF_X42_Y24_N27
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
	sclr => \update_req~6_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(9));

-- Location: LCCOMB_X42_Y24_N28
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

-- Location: FF_X42_Y24_N29
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
	sclr => \update_req~6_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(10));

-- Location: LCCOMB_X42_Y24_N30
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

-- Location: FF_X42_Y24_N31
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
	sclr => \update_req~6_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(11));

-- Location: LCCOMB_X42_Y23_N0
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

-- Location: FF_X42_Y23_N1
\timer_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_cnt[12]~48_combout\,
	clrn => \rst_n~input_o\,
	sclr => \update_req~6_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(12));

-- Location: LCCOMB_X42_Y23_N2
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

-- Location: FF_X42_Y23_N3
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
	sclr => \update_req~6_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(13));

-- Location: LCCOMB_X42_Y23_N4
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

-- Location: FF_X42_Y23_N5
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
	sclr => \update_req~6_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(14));

-- Location: LCCOMB_X42_Y23_N6
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

-- Location: FF_X42_Y23_N7
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
	sclr => \update_req~6_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(15));

-- Location: LCCOMB_X42_Y23_N8
\timer_cnt[16]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[16]~56_combout\ = (timer_cnt(16) & (\timer_cnt[15]~55\ $ (GND))) # (!timer_cnt(16) & (!\timer_cnt[15]~55\ & VCC))
-- \timer_cnt[16]~57\ = CARRY((timer_cnt(16) & !\timer_cnt[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_cnt(16),
	datad => VCC,
	cin => \timer_cnt[15]~55\,
	combout => \timer_cnt[16]~56_combout\,
	cout => \timer_cnt[16]~57\);

-- Location: FF_X42_Y23_N9
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
	sclr => \update_req~6_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(16));

-- Location: LCCOMB_X42_Y23_N10
\timer_cnt[17]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[17]~58_combout\ = (timer_cnt(17) & (!\timer_cnt[16]~57\)) # (!timer_cnt(17) & ((\timer_cnt[16]~57\) # (GND)))
-- \timer_cnt[17]~59\ = CARRY((!\timer_cnt[16]~57\) # (!timer_cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(17),
	datad => VCC,
	cin => \timer_cnt[16]~57\,
	combout => \timer_cnt[17]~58_combout\,
	cout => \timer_cnt[17]~59\);

-- Location: FF_X42_Y23_N11
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
	sclr => \update_req~6_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(17));

-- Location: LCCOMB_X42_Y23_N12
\timer_cnt[18]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[18]~60_combout\ = (timer_cnt(18) & (\timer_cnt[17]~59\ $ (GND))) # (!timer_cnt(18) & (!\timer_cnt[17]~59\ & VCC))
-- \timer_cnt[18]~61\ = CARRY((timer_cnt(18) & !\timer_cnt[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(18),
	datad => VCC,
	cin => \timer_cnt[17]~59\,
	combout => \timer_cnt[18]~60_combout\,
	cout => \timer_cnt[18]~61\);

-- Location: FF_X42_Y23_N13
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
	sclr => \update_req~6_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(18));

-- Location: LCCOMB_X42_Y23_N14
\timer_cnt[19]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[19]~62_combout\ = (timer_cnt(19) & (!\timer_cnt[18]~61\)) # (!timer_cnt(19) & ((\timer_cnt[18]~61\) # (GND)))
-- \timer_cnt[19]~63\ = CARRY((!\timer_cnt[18]~61\) # (!timer_cnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_cnt(19),
	datad => VCC,
	cin => \timer_cnt[18]~61\,
	combout => \timer_cnt[19]~62_combout\,
	cout => \timer_cnt[19]~63\);

-- Location: FF_X42_Y23_N15
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
	sclr => \update_req~6_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(19));

-- Location: LCCOMB_X42_Y23_N16
\timer_cnt[20]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[20]~64_combout\ = (timer_cnt(20) & (\timer_cnt[19]~63\ $ (GND))) # (!timer_cnt(20) & (!\timer_cnt[19]~63\ & VCC))
-- \timer_cnt[20]~65\ = CARRY((timer_cnt(20) & !\timer_cnt[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_cnt(20),
	datad => VCC,
	cin => \timer_cnt[19]~63\,
	combout => \timer_cnt[20]~64_combout\,
	cout => \timer_cnt[20]~65\);

-- Location: FF_X42_Y23_N17
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
	sclr => \update_req~6_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(20));

-- Location: LCCOMB_X42_Y23_N24
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!timer_cnt(17) & (!timer_cnt(16) & (!timer_cnt(19) & !timer_cnt(20))))

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
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X42_Y23_N30
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\LessThan0~0_combout\ & (((!timer_cnt(14)) # (!timer_cnt(13))) # (!timer_cnt(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(15),
	datab => timer_cnt(13),
	datac => timer_cnt(14),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X42_Y23_N18
\timer_cnt[21]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timer_cnt[21]~66_combout\ = (timer_cnt(21) & (!\timer_cnt[20]~65\)) # (!timer_cnt(21) & ((\timer_cnt[20]~65\) # (GND)))
-- \timer_cnt[21]~67\ = CARRY((!\timer_cnt[20]~65\) # (!timer_cnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_cnt(21),
	datad => VCC,
	cin => \timer_cnt[20]~65\,
	combout => \timer_cnt[21]~66_combout\,
	cout => \timer_cnt[21]~67\);

-- Location: FF_X42_Y23_N19
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
	sclr => \update_req~6_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(21));

-- Location: LCCOMB_X42_Y23_N20
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

-- Location: FF_X42_Y23_N21
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
	sclr => \update_req~6_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(22));

-- Location: LCCOMB_X42_Y23_N22
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

-- Location: FF_X42_Y23_N23
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
	sclr => \update_req~6_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(23));

-- Location: LCCOMB_X42_Y23_N28
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

-- Location: LCCOMB_X42_Y23_N26
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

-- Location: LCCOMB_X42_Y24_N0
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!timer_cnt(9) & (!timer_cnt(12) & (!timer_cnt(11) & !timer_cnt(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(9),
	datab => timer_cnt(12),
	datac => timer_cnt(11),
	datad => timer_cnt(10),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X43_Y24_N12
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\LessThan0~2_combout\ & (\LessThan0~0_combout\ & ((!timer_cnt(7)) # (!timer_cnt(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(8),
	datab => timer_cnt(7),
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X43_Y24_N30
\update_req~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \update_req~6_combout\ = (!\LessThan0~1_combout\ & (\update_req~2_combout\ & (!\LessThan0~6_combout\ & !\LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \update_req~2_combout\,
	datac => \LessThan0~6_combout\,
	datad => \LessThan0~3_combout\,
	combout => \update_req~6_combout\);

-- Location: FF_X42_Y24_N9
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
	sclr => \update_req~6_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(0));

-- Location: LCCOMB_X42_Y24_N10
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

-- Location: FF_X42_Y24_N11
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
	sclr => \update_req~6_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(1));

-- Location: LCCOMB_X42_Y24_N12
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

-- Location: FF_X42_Y24_N13
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
	sclr => \update_req~6_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(2));

-- Location: LCCOMB_X42_Y24_N14
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

-- Location: FF_X42_Y24_N15
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
	sclr => \update_req~6_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(3));

-- Location: LCCOMB_X42_Y24_N16
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

-- Location: FF_X42_Y24_N17
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
	sclr => \update_req~6_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(4));

-- Location: LCCOMB_X42_Y24_N18
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

-- Location: FF_X42_Y24_N19
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
	sclr => \update_req~6_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(5));

-- Location: FF_X42_Y24_N21
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
	sclr => \update_req~6_combout\,
	ena => \sys_mode.MODE_ANIMATION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_cnt(6));

-- Location: LCCOMB_X42_Y24_N2
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (((!timer_cnt(2)) # (!timer_cnt(3))) # (!timer_cnt(0))) # (!timer_cnt(1))

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
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X42_Y24_N4
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ((\LessThan0~4_combout\) # (!timer_cnt(5))) # (!timer_cnt(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => timer_cnt(4),
	datac => timer_cnt(5),
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X42_Y24_N6
\LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (!timer_cnt(6) & (\LessThan0~2_combout\ & (\LessThan0~5_combout\ & \LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_cnt(6),
	datab => \LessThan0~2_combout\,
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X43_Y24_N10
\update_req~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \update_req~3_combout\ = (!\LessThan0~1_combout\ & (\update_req~2_combout\ & !\LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datac => \update_req~2_combout\,
	datad => \LessThan0~3_combout\,
	combout => \update_req~3_combout\);

-- Location: LCCOMB_X43_Y24_N0
\update_req~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \update_req~4_combout\ = (\sys_mode.MODE_ANIMATION~q\ & (!\LessThan0~6_combout\ & \update_req~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_mode.MODE_ANIMATION~q\,
	datac => \LessThan0~6_combout\,
	datad => \update_req~3_combout\,
	combout => \update_req~4_combout\);

-- Location: LCCOMB_X43_Y24_N4
\update_req~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \update_req~5_combout\ = (\update_req~q\ & ((!\update_req~4_combout\))) # (!\update_req~q\ & (!\state.STATE_IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.STATE_IDLE~q\,
	datac => \update_req~q\,
	datad => \update_req~4_combout\,
	combout => \update_req~5_combout\);

-- Location: FF_X43_Y24_N5
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

-- Location: LCCOMB_X42_Y26_N0
\Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = clk_cnt(0) $ (VCC)
-- \Add3~1\ = CARRY(clk_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X43_Y26_N20
\Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\Add3~0_combout\ & ((\Selector10~0_combout\) # ((\state.STATE_RESET~q\ & !\LessThan3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_RESET~q\,
	datab => \Selector10~0_combout\,
	datac => \LessThan3~4_combout\,
	datad => \Add3~0_combout\,
	combout => \Selector15~0_combout\);

-- Location: FF_X43_Y26_N21
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

-- Location: LCCOMB_X42_Y26_N2
\Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (clk_cnt(1) & (!\Add3~1\)) # (!clk_cnt(1) & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!clk_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X44_Y26_N4
\Selector14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\Add3~2_combout\ & ((\Selector10~0_combout\) # ((\state.STATE_RESET~q\ & !\LessThan3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_RESET~q\,
	datab => \Add3~2_combout\,
	datac => \LessThan3~4_combout\,
	datad => \Selector10~0_combout\,
	combout => \Selector14~0_combout\);

-- Location: FF_X44_Y26_N5
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

-- Location: LCCOMB_X42_Y26_N4
\Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (clk_cnt(2) & (\Add3~3\ $ (GND))) # (!clk_cnt(2) & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((clk_cnt(2) & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X43_Y26_N6
\Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\Add3~4_combout\ & ((\Selector10~0_combout\) # ((\state.STATE_RESET~q\ & !\LessThan3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_RESET~q\,
	datab => \Selector10~0_combout\,
	datac => \Add3~4_combout\,
	datad => \LessThan3~4_combout\,
	combout => \Selector13~0_combout\);

-- Location: FF_X43_Y26_N7
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

-- Location: LCCOMB_X42_Y26_N6
\Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (clk_cnt(3) & (!\Add3~5\)) # (!clk_cnt(3) & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!clk_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X44_Y26_N26
\Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\Add3~6_combout\ & ((\Selector10~0_combout\) # ((\state.STATE_RESET~q\ & !\LessThan3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_RESET~q\,
	datab => \Add3~6_combout\,
	datac => \LessThan3~4_combout\,
	datad => \Selector10~0_combout\,
	combout => \Selector12~0_combout\);

-- Location: FF_X44_Y26_N27
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

-- Location: LCCOMB_X42_Y26_N8
\Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (clk_cnt(4) & (\Add3~7\ $ (GND))) # (!clk_cnt(4) & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((clk_cnt(4) & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X44_Y26_N8
\Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\Add3~8_combout\ & ((\Selector10~0_combout\) # ((\state.STATE_RESET~q\ & !\LessThan3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_RESET~q\,
	datab => \Add3~8_combout\,
	datac => \LessThan3~4_combout\,
	datad => \Selector10~0_combout\,
	combout => \Selector11~0_combout\);

-- Location: FF_X44_Y26_N9
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

-- Location: LCCOMB_X41_Y26_N8
\LessThan6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~4_combout\ = (!clk_cnt(4)) # (!clk_cnt(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(5),
	datad => clk_cnt(4),
	combout => \LessThan6~4_combout\);

-- Location: LCCOMB_X43_Y26_N4
\LessThan6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~3_combout\ = (((!clk_cnt(0) & !clk_cnt(1))) # (!clk_cnt(3))) # (!clk_cnt(2))

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
	combout => \LessThan6~3_combout\);

-- Location: LCCOMB_X41_Y26_N14
\Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\state.STATE_SEND~q\ & (\LessThan6~2_combout\ & ((\LessThan6~4_combout\) # (\LessThan6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SEND~q\,
	datab => \LessThan6~4_combout\,
	datac => \LessThan6~3_combout\,
	datad => \LessThan6~2_combout\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X42_Y26_N12
\Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (clk_cnt(6) & (\Add3~11\ $ (GND))) # (!clk_cnt(6) & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((clk_cnt(6) & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X42_Y26_N14
\Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (clk_cnt(7) & (!\Add3~13\)) # (!clk_cnt(7) & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!clk_cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(7),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X41_Y26_N6
\Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\Add3~14_combout\ & ((\Selector10~0_combout\) # ((\state.STATE_RESET~q\ & !\LessThan3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_RESET~q\,
	datab => \Selector10~0_combout\,
	datac => \Add3~14_combout\,
	datad => \LessThan3~4_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X41_Y26_N7
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

-- Location: LCCOMB_X42_Y26_N16
\Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (clk_cnt(8) & (\Add3~15\ $ (GND))) # (!clk_cnt(8) & (!\Add3~15\ & VCC))
-- \Add3~17\ = CARRY((clk_cnt(8) & !\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(8),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X43_Y26_N28
\Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\Add3~16_combout\ & ((\Selector10~0_combout\) # ((\state.STATE_RESET~q\ & !\LessThan3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_RESET~q\,
	datab => \Selector10~0_combout\,
	datac => \Add3~16_combout\,
	datad => \LessThan3~4_combout\,
	combout => \Selector7~0_combout\);

-- Location: FF_X43_Y26_N29
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

-- Location: LCCOMB_X42_Y26_N18
\Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (clk_cnt(9) & (!\Add3~17\)) # (!clk_cnt(9) & ((\Add3~17\) # (GND)))
-- \Add3~19\ = CARRY((!\Add3~17\) # (!clk_cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(9),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCCOMB_X43_Y26_N18
\Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\Add3~18_combout\ & ((\Selector10~0_combout\) # ((\state.STATE_RESET~q\ & !\LessThan3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_RESET~q\,
	datab => \Add3~18_combout\,
	datac => \Selector10~0_combout\,
	datad => \LessThan3~4_combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X43_Y26_N19
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

-- Location: LCCOMB_X42_Y26_N20
\Add3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (clk_cnt(10) & (\Add3~19\ $ (GND))) # (!clk_cnt(10) & (!\Add3~19\ & VCC))
-- \Add3~21\ = CARRY((clk_cnt(10) & !\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(10),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X43_Y26_N12
\Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\Add3~20_combout\ & ((\Selector10~0_combout\) # ((\state.STATE_RESET~q\ & !\LessThan3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_RESET~q\,
	datab => \Add3~20_combout\,
	datac => \Selector10~0_combout\,
	datad => \LessThan3~4_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X43_Y26_N13
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

-- Location: LCCOMB_X42_Y26_N22
\Add3~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (clk_cnt(11) & (!\Add3~21\)) # (!clk_cnt(11) & ((\Add3~21\) # (GND)))
-- \Add3~23\ = CARRY((!\Add3~21\) # (!clk_cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(11),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCCOMB_X43_Y26_N22
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Add3~22_combout\ & ((\Selector10~0_combout\) # ((!\LessThan3~4_combout\ & \state.STATE_RESET~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~4_combout\,
	datab => \Add3~22_combout\,
	datac => \Selector10~0_combout\,
	datad => \state.STATE_RESET~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X43_Y26_N23
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

-- Location: LCCOMB_X42_Y26_N24
\Add3~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (clk_cnt(12) & (\Add3~23\ $ (GND))) # (!clk_cnt(12) & (!\Add3~23\ & VCC))
-- \Add3~25\ = CARRY((clk_cnt(12) & !\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(12),
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X43_Y26_N24
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\Add3~24_combout\ & ((\Selector10~0_combout\) # ((\state.STATE_RESET~q\ & !\LessThan3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_RESET~q\,
	datab => \Add3~24_combout\,
	datac => \Selector10~0_combout\,
	datad => \LessThan3~4_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X43_Y26_N25
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

-- Location: LCCOMB_X42_Y26_N26
\Add3~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (clk_cnt(13) & (!\Add3~25\)) # (!clk_cnt(13) & ((\Add3~25\) # (GND)))
-- \Add3~27\ = CARRY((!\Add3~25\) # (!clk_cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(13),
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X43_Y26_N26
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\Add3~26_combout\ & ((\Selector10~0_combout\) # ((\state.STATE_RESET~q\ & !\LessThan3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_RESET~q\,
	datab => \Selector10~0_combout\,
	datac => \Add3~26_combout\,
	datad => \LessThan3~4_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X43_Y26_N27
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

-- Location: LCCOMB_X42_Y26_N28
\Add3~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (clk_cnt(14) & (\Add3~27\ $ (GND))) # (!clk_cnt(14) & (!\Add3~27\ & VCC))
-- \Add3~29\ = CARRY((clk_cnt(14) & !\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(14),
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCCOMB_X43_Y26_N8
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\Add3~28_combout\ & ((\Selector10~0_combout\) # ((!\LessThan3~4_combout\ & \state.STATE_RESET~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~4_combout\,
	datab => \state.STATE_RESET~q\,
	datac => \Selector10~0_combout\,
	datad => \Add3~28_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X43_Y26_N9
\clk_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(14));

-- Location: LCCOMB_X42_Y26_N30
\Add3~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = clk_cnt(15) $ (\Add3~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(15),
	cin => \Add3~29\,
	combout => \Add3~30_combout\);

-- Location: LCCOMB_X43_Y26_N30
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\Add3~30_combout\ & ((\Selector10~0_combout\) # ((!\LessThan3~4_combout\ & \state.STATE_RESET~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~4_combout\,
	datab => \state.STATE_RESET~q\,
	datac => \Selector10~0_combout\,
	datad => \Add3~30_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X43_Y26_N31
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

-- Location: LCCOMB_X44_Y26_N6
\LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (clk_cnt(6)) # ((clk_cnt(1) & (clk_cnt(2) & clk_cnt(0))))

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
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X44_Y26_N12
\LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (clk_cnt(3)) # ((clk_cnt(4)) # ((clk_cnt(5)) # (\LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(3),
	datab => clk_cnt(4),
	datac => clk_cnt(5),
	datad => \LessThan3~0_combout\,
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X44_Y26_N2
\LessThan3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = (clk_cnt(9) & (clk_cnt(8) & (clk_cnt(7) & \LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(9),
	datab => clk_cnt(8),
	datac => clk_cnt(7),
	datad => \LessThan3~1_combout\,
	combout => \LessThan3~2_combout\);

-- Location: LCCOMB_X44_Y26_N0
\LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~3_combout\ = (clk_cnt(12) & ((clk_cnt(10)) # ((clk_cnt(11)) # (\LessThan3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(10),
	datab => clk_cnt(12),
	datac => clk_cnt(11),
	datad => \LessThan3~2_combout\,
	combout => \LessThan3~3_combout\);

-- Location: LCCOMB_X44_Y26_N10
\LessThan3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~4_combout\ = (clk_cnt(14)) # ((clk_cnt(15)) # ((clk_cnt(13)) # (\LessThan3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(14),
	datab => clk_cnt(15),
	datac => clk_cnt(13),
	datad => \LessThan3~3_combout\,
	combout => \LessThan3~4_combout\);

-- Location: LCCOMB_X44_Y26_N28
\bit_idx[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_idx[1]~0_combout\ = (!\LessThan3~4_combout\) # (!\state.STATE_RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.STATE_RESET~q\,
	datad => \LessThan3~4_combout\,
	combout => \bit_idx[1]~0_combout\);

-- Location: LCCOMB_X41_Y26_N10
\Selector18~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector18~2_combout\ = (\draw_mode~8_combout\ & ((\Selector18~1_combout\ & ((\state.STATE_SEND~q\) # (!\bit_idx[1]~0_combout\))) # (!\Selector18~1_combout\ & (\state.STATE_SEND~q\ & !\bit_idx[1]~0_combout\)))) # (!\draw_mode~8_combout\ & 
-- (\state.STATE_SEND~q\ & (\Selector18~1_combout\ $ (\bit_idx[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_mode~8_combout\,
	datab => \Selector18~1_combout\,
	datac => \state.STATE_SEND~q\,
	datad => \bit_idx[1]~0_combout\,
	combout => \Selector18~2_combout\);

-- Location: FF_X41_Y26_N11
\state.STATE_SEND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector18~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STATE_SEND~q\);

-- Location: LCCOMB_X43_Y26_N14
\Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\state.STATE_SEND~q\ & (((!\LessThan6~3_combout\ & !\LessThan6~4_combout\)) # (!\LessThan6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~2_combout\,
	datab => \state.STATE_SEND~q\,
	datac => \LessThan6~3_combout\,
	datad => \LessThan6~4_combout\,
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X45_Y26_N10
\Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = bit_idx(0) $ (GND)
-- \Add4~1\ = CARRY(!bit_idx(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_idx(0),
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X45_Y26_N12
\Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (bit_idx(1) & (!\Add4~1\)) # (!bit_idx(1) & (\Add4~1\ & VCC))
-- \Add4~3\ = CARRY((bit_idx(1) & !\Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_idx(1),
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X45_Y26_N28
\Selector28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (!\Add4~2_combout\ & (\state.STATE_SEND~q\ & ((\LessThan7~0_combout\) # (!bit_idx(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~2_combout\,
	datab => \LessThan7~0_combout\,
	datac => bit_idx(0),
	datad => \state.STATE_SEND~q\,
	combout => \Selector28~0_combout\);

-- Location: LCCOMB_X45_Y26_N20
\bit_idx[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_idx[1]~4_combout\ = (\Selector18~0_combout\) # ((\state.STATE_RESET~q\ & \LessThan3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_RESET~q\,
	datac => \Selector18~0_combout\,
	datad => \LessThan3~4_combout\,
	combout => \bit_idx[1]~4_combout\);

-- Location: FF_X45_Y26_N29
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
	ena => \bit_idx[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(1));

-- Location: LCCOMB_X45_Y26_N14
\Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (bit_idx(2) & (\Add4~3\ $ (GND))) # (!bit_idx(2) & ((GND) # (!\Add4~3\)))
-- \Add4~5\ = CARRY((!\Add4~3\) # (!bit_idx(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_idx(2),
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X45_Y26_N22
\Selector27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (!\Add4~4_combout\ & (\state.STATE_SEND~q\ & ((\LessThan7~0_combout\) # (!bit_idx(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_idx(0),
	datab => \Add4~4_combout\,
	datac => \LessThan7~0_combout\,
	datad => \state.STATE_SEND~q\,
	combout => \Selector27~0_combout\);

-- Location: FF_X45_Y26_N23
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
	ena => \bit_idx[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(2));

-- Location: LCCOMB_X45_Y26_N16
\Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (bit_idx(3) & (\Add4~5\ & VCC)) # (!bit_idx(3) & (!\Add4~5\))
-- \Add4~7\ = CARRY((!bit_idx(3) & !\Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bit_idx(3),
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X45_Y26_N24
\bit_idx[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_idx[3]~1_combout\ = (\Selector18~0_combout\ & (\Add4~6_combout\ $ (((bit_idx(0) & !\LessThan7~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_idx(0),
	datab => \LessThan7~0_combout\,
	datac => \Selector18~0_combout\,
	datad => \Add4~6_combout\,
	combout => \bit_idx[3]~1_combout\);

-- Location: LCCOMB_X45_Y26_N6
\bit_idx[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_idx[3]~2_combout\ = (!\state.STATE_SEND~q\ & (bit_idx(3) & ((!\LessThan3~4_combout\) # (!\state.STATE_RESET~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SEND~q\,
	datab => bit_idx(3),
	datac => \state.STATE_RESET~q\,
	datad => \LessThan3~4_combout\,
	combout => \bit_idx[3]~2_combout\);

-- Location: LCCOMB_X45_Y26_N0
\bit_idx[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_idx[3]~3_combout\ = (\bit_idx[3]~1_combout\) # ((\bit_idx[3]~2_combout\) # ((\Selector10~0_combout\ & bit_idx(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~0_combout\,
	datab => \bit_idx[3]~1_combout\,
	datac => bit_idx(3),
	datad => \bit_idx[3]~2_combout\,
	combout => \bit_idx[3]~3_combout\);

-- Location: FF_X45_Y26_N1
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

-- Location: LCCOMB_X45_Y26_N18
\Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = bit_idx(4) $ (!\Add4~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bit_idx(4),
	cin => \Add4~7\,
	combout => \Add4~8_combout\);

-- Location: LCCOMB_X45_Y26_N30
\Selector25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\state.STATE_SEND~q\ & (!\Add4~8_combout\ & ((\LessThan7~0_combout\) # (!bit_idx(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_idx(0),
	datab => \LessThan7~0_combout\,
	datac => \state.STATE_SEND~q\,
	datad => \Add4~8_combout\,
	combout => \Selector25~0_combout\);

-- Location: FF_X45_Y26_N31
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
	ena => \bit_idx[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(4));

-- Location: LCCOMB_X45_Y26_N8
\LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = (((bit_idx(3)) # (!bit_idx(2))) # (!bit_idx(1))) # (!bit_idx(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_idx(4),
	datab => bit_idx(1),
	datac => bit_idx(2),
	datad => bit_idx(3),
	combout => \LessThan7~0_combout\);

-- Location: LCCOMB_X45_Y26_N26
\Selector29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\state.STATE_SEND~q\ & (!\Add4~0_combout\ & ((\LessThan7~0_combout\) # (!bit_idx(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SEND~q\,
	datab => \LessThan7~0_combout\,
	datac => bit_idx(0),
	datad => \Add4~0_combout\,
	combout => \Selector29~0_combout\);

-- Location: FF_X45_Y26_N27
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
	ena => \bit_idx[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_idx(0));

-- Location: LCCOMB_X44_Y26_N14
\led_idx[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_idx[0]~6_combout\ = led_idx(0) $ (VCC)
-- \led_idx[0]~7\ = CARRY(led_idx(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => led_idx(0),
	datad => VCC,
	combout => \led_idx[0]~6_combout\,
	cout => \led_idx[0]~7\);

-- Location: LCCOMB_X44_Y25_N24
\LessThan8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan8~0_combout\ = (((!led_idx(0)) # (!led_idx(2))) # (!led_idx(3))) # (!led_idx(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_idx(1),
	datab => led_idx(3),
	datac => led_idx(2),
	datad => led_idx(0),
	combout => \LessThan8~0_combout\);

-- Location: LCCOMB_X45_Y26_N4
\led_idx[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_idx[0]~8_combout\ = ((led_idx(4) & (!\LessThan8~0_combout\ & led_idx(5)))) # (!\state.STATE_SEND~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_SEND~q\,
	datab => led_idx(4),
	datac => \LessThan8~0_combout\,
	datad => led_idx(5),
	combout => \led_idx[0]~8_combout\);

-- Location: LCCOMB_X44_Y26_N30
\led_idx[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_idx[0]~9_combout\ = ((\Selector18~0_combout\ & (bit_idx(0) & !\LessThan7~0_combout\))) # (!\bit_idx[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~0_combout\,
	datab => bit_idx(0),
	datac => \LessThan7~0_combout\,
	datad => \bit_idx[1]~0_combout\,
	combout => \led_idx[0]~9_combout\);

-- Location: FF_X44_Y26_N15
\led_idx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_idx[0]~6_combout\,
	clrn => \rst_n~input_o\,
	sclr => \led_idx[0]~8_combout\,
	ena => \led_idx[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_idx(0));

-- Location: LCCOMB_X44_Y26_N16
\led_idx[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_idx[1]~10_combout\ = (led_idx(1) & (!\led_idx[0]~7\)) # (!led_idx(1) & ((\led_idx[0]~7\) # (GND)))
-- \led_idx[1]~11\ = CARRY((!\led_idx[0]~7\) # (!led_idx(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_idx(1),
	datad => VCC,
	cin => \led_idx[0]~7\,
	combout => \led_idx[1]~10_combout\,
	cout => \led_idx[1]~11\);

-- Location: FF_X44_Y26_N17
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
	sclr => \led_idx[0]~8_combout\,
	ena => \led_idx[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_idx(1));

-- Location: LCCOMB_X44_Y26_N18
\led_idx[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_idx[2]~12_combout\ = (led_idx(2) & (\led_idx[1]~11\ $ (GND))) # (!led_idx(2) & (!\led_idx[1]~11\ & VCC))
-- \led_idx[2]~13\ = CARRY((led_idx(2) & !\led_idx[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_idx(2),
	datad => VCC,
	cin => \led_idx[1]~11\,
	combout => \led_idx[2]~12_combout\,
	cout => \led_idx[2]~13\);

-- Location: FF_X44_Y26_N19
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
	sclr => \led_idx[0]~8_combout\,
	ena => \led_idx[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_idx(2));

-- Location: LCCOMB_X44_Y26_N20
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

-- Location: FF_X44_Y26_N21
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
	sclr => \led_idx[0]~8_combout\,
	ena => \led_idx[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_idx(3));

-- Location: LCCOMB_X44_Y26_N22
\led_idx[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_idx[4]~16_combout\ = (led_idx(4) & (\led_idx[3]~15\ $ (GND))) # (!led_idx(4) & (!\led_idx[3]~15\ & VCC))
-- \led_idx[4]~17\ = CARRY((led_idx(4) & !\led_idx[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_idx(4),
	datad => VCC,
	cin => \led_idx[3]~15\,
	combout => \led_idx[4]~16_combout\,
	cout => \led_idx[4]~17\);

-- Location: FF_X44_Y26_N23
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
	sclr => \led_idx[0]~8_combout\,
	ena => \led_idx[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_idx(4));

-- Location: LCCOMB_X44_Y26_N24
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

-- Location: FF_X44_Y26_N25
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
	sclr => \led_idx[0]~8_combout\,
	ena => \led_idx[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_idx(5));

-- Location: LCCOMB_X41_Y26_N16
\LessThan8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan8~1_combout\ = ((\LessThan8~0_combout\) # (!led_idx(4))) # (!led_idx(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_idx(5),
	datac => led_idx(4),
	datad => \LessThan8~0_combout\,
	combout => \LessThan8~1_combout\);

-- Location: LCCOMB_X41_Y26_N18
\Selector18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector18~1_combout\ = ((\LessThan7~0_combout\) # ((\LessThan8~1_combout\) # (!\Selector18~0_combout\))) # (!bit_idx(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_idx(0),
	datab => \LessThan7~0_combout\,
	datac => \Selector18~0_combout\,
	datad => \LessThan8~1_combout\,
	combout => \Selector18~1_combout\);

-- Location: LCCOMB_X41_Y26_N30
\state.STATE_IDLE~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.STATE_IDLE~2_combout\ = (\Selector18~1_combout\ & ((\state.STATE_IDLE~q\) # (\update_req~q\ $ (\bit_idx[1]~0_combout\)))) # (!\Selector18~1_combout\ & (((\state.STATE_IDLE~q\ & !\bit_idx[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \update_req~q\,
	datab => \Selector18~1_combout\,
	datac => \state.STATE_IDLE~q\,
	datad => \bit_idx[1]~0_combout\,
	combout => \state.STATE_IDLE~2_combout\);

-- Location: FF_X41_Y26_N31
\state.STATE_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.STATE_IDLE~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STATE_IDLE~q\);

-- Location: LCCOMB_X41_Y26_N22
\draw_mode~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_mode~8_combout\ = (\state.STATE_IDLE~q\) # (\update_req~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.STATE_IDLE~q\,
	datad => \update_req~q\,
	combout => \draw_mode~8_combout\);

-- Location: LCCOMB_X41_Y26_N28
\Selector17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector17~2_combout\ = (\draw_mode~8_combout\ & (\state.STATE_RESET~q\ & (\LessThan3~4_combout\ $ (\Selector18~1_combout\)))) # (!\draw_mode~8_combout\ & ((\Selector18~1_combout\) # ((!\LessThan3~4_combout\ & \state.STATE_RESET~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_mode~8_combout\,
	datab => \LessThan3~4_combout\,
	datac => \state.STATE_RESET~q\,
	datad => \Selector18~1_combout\,
	combout => \Selector17~2_combout\);

-- Location: FF_X41_Y26_N29
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

-- Location: LCCOMB_X42_Y26_N10
\Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (clk_cnt(5) & (!\Add3~9\)) # (!clk_cnt(5) & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!clk_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X41_Y26_N24
\Selector10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (\Add3~10_combout\ & ((\Selector10~0_combout\) # ((\state.STATE_RESET~q\ & !\LessThan3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE_RESET~q\,
	datab => \Selector10~0_combout\,
	datac => \Add3~10_combout\,
	datad => \LessThan3~4_combout\,
	combout => \Selector10~1_combout\);

-- Location: FF_X41_Y26_N25
\clk_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector10~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(5));

-- Location: LCCOMB_X43_Y26_N16
\Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\Add3~12_combout\ & ((\Selector10~0_combout\) # ((\state.STATE_RESET~q\ & !\LessThan3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~12_combout\,
	datab => \Selector10~0_combout\,
	datac => \state.STATE_RESET~q\,
	datad => \LessThan3~4_combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X43_Y26_N17
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

-- Location: LCCOMB_X43_Y26_N2
\LessThan6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~1_combout\ = (!clk_cnt(10) & (!clk_cnt(8) & (!clk_cnt(11) & !clk_cnt(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(10),
	datab => clk_cnt(8),
	datac => clk_cnt(11),
	datad => clk_cnt(9),
	combout => \LessThan6~1_combout\);

-- Location: LCCOMB_X43_Y26_N0
\LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (!clk_cnt(15) & (!clk_cnt(14) & (!clk_cnt(13) & !clk_cnt(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(15),
	datab => clk_cnt(14),
	datac => clk_cnt(13),
	datad => clk_cnt(12),
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X43_Y26_N10
\LessThan6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~2_combout\ = (!clk_cnt(6) & (\LessThan6~1_combout\ & (!clk_cnt(7) & \LessThan6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(6),
	datab => \LessThan6~1_combout\,
	datac => clk_cnt(7),
	datad => \LessThan6~0_combout\,
	combout => \LessThan6~2_combout\);

-- Location: LCCOMB_X41_Y26_N2
\DIN~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIN~5_combout\ = (!clk_cnt(2) & (!clk_cnt(0) & (!clk_cnt(1) & !clk_cnt(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(2),
	datab => clk_cnt(0),
	datac => clk_cnt(1),
	datad => clk_cnt(3),
	combout => \DIN~5_combout\);

-- Location: LCCOMB_X41_Y26_N4
\DIN~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIN~6_combout\ = (clk_cnt(4) & (!clk_cnt(5) & ((!\DIN~5_combout\)))) # (!clk_cnt(4) & (clk_cnt(5) & (\LessThan6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(4),
	datab => clk_cnt(5),
	datac => \LessThan6~3_combout\,
	datad => \DIN~5_combout\,
	combout => \DIN~6_combout\);

-- Location: LCCOMB_X43_Y24_N18
\active_led[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \active_led[0]~6_combout\ = active_led(0) $ (VCC)
-- \active_led[0]~7\ = CARRY(active_led(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => active_led(0),
	datad => VCC,
	combout => \active_led[0]~6_combout\,
	cout => \active_led[0]~7\);

-- Location: FF_X43_Y24_N19
\active_led[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \active_led[0]~6_combout\,
	clrn => \rst_n~input_o\,
	ena => \update_req~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => active_led(0));

-- Location: LCCOMB_X43_Y24_N20
\active_led[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \active_led[1]~9_combout\ = (active_led(1) & ((\active_led[0]~8_combout\ & (!\active_led[0]~7\)) # (!\active_led[0]~8_combout\ & (\active_led[0]~7\ & VCC)))) # (!active_led(1) & ((\active_led[0]~8_combout\ & ((\active_led[0]~7\) # (GND))) # 
-- (!\active_led[0]~8_combout\ & (!\active_led[0]~7\))))
-- \active_led[1]~10\ = CARRY((active_led(1) & (\active_led[0]~8_combout\ & !\active_led[0]~7\)) # (!active_led(1) & ((\active_led[0]~8_combout\) # (!\active_led[0]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => active_led(1),
	datab => \active_led[0]~8_combout\,
	datad => VCC,
	cin => \active_led[0]~7\,
	combout => \active_led[1]~9_combout\,
	cout => \active_led[1]~10\);

-- Location: FF_X43_Y24_N21
\active_led[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \active_led[1]~9_combout\,
	clrn => \rst_n~input_o\,
	ena => \update_req~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => active_led(1));

-- Location: LCCOMB_X43_Y24_N22
\active_led[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \active_led[2]~11_combout\ = ((active_led(2) $ (\active_led[0]~8_combout\ $ (\active_led[1]~10\)))) # (GND)
-- \active_led[2]~12\ = CARRY((active_led(2) & ((!\active_led[1]~10\) # (!\active_led[0]~8_combout\))) # (!active_led(2) & (!\active_led[0]~8_combout\ & !\active_led[1]~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => active_led(2),
	datab => \active_led[0]~8_combout\,
	datad => VCC,
	cin => \active_led[1]~10\,
	combout => \active_led[2]~11_combout\,
	cout => \active_led[2]~12\);

-- Location: FF_X43_Y24_N23
\active_led[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \active_led[2]~11_combout\,
	clrn => \rst_n~input_o\,
	ena => \update_req~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => active_led(2));

-- Location: LCCOMB_X43_Y24_N24
\active_led[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \active_led[3]~13_combout\ = (active_led(3) & ((\active_led[0]~8_combout\ & (!\active_led[2]~12\)) # (!\active_led[0]~8_combout\ & (\active_led[2]~12\ & VCC)))) # (!active_led(3) & ((\active_led[0]~8_combout\ & ((\active_led[2]~12\) # (GND))) # 
-- (!\active_led[0]~8_combout\ & (!\active_led[2]~12\))))
-- \active_led[3]~14\ = CARRY((active_led(3) & (\active_led[0]~8_combout\ & !\active_led[2]~12\)) # (!active_led(3) & ((\active_led[0]~8_combout\) # (!\active_led[2]~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => active_led(3),
	datab => \active_led[0]~8_combout\,
	datad => VCC,
	cin => \active_led[2]~12\,
	combout => \active_led[3]~13_combout\,
	cout => \active_led[3]~14\);

-- Location: FF_X43_Y24_N25
\active_led[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \active_led[3]~13_combout\,
	clrn => \rst_n~input_o\,
	ena => \update_req~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => active_led(3));

-- Location: LCCOMB_X43_Y24_N26
\active_led[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \active_led[4]~15_combout\ = ((active_led(4) $ (\active_led[0]~8_combout\ $ (\active_led[3]~14\)))) # (GND)
-- \active_led[4]~16\ = CARRY((active_led(4) & ((!\active_led[3]~14\) # (!\active_led[0]~8_combout\))) # (!active_led(4) & (!\active_led[0]~8_combout\ & !\active_led[3]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => active_led(4),
	datab => \active_led[0]~8_combout\,
	datad => VCC,
	cin => \active_led[3]~14\,
	combout => \active_led[4]~15_combout\,
	cout => \active_led[4]~16\);

-- Location: FF_X43_Y24_N27
\active_led[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \active_led[4]~15_combout\,
	clrn => \rst_n~input_o\,
	ena => \update_req~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => active_led(4));

-- Location: LCCOMB_X43_Y24_N6
\reversal~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reversal~0_combout\ = (active_led(2)) # ((active_led(1)) # ((active_led(3)) # (active_led(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => active_led(2),
	datab => active_led(1),
	datac => active_led(3),
	datad => active_led(0),
	combout => \reversal~0_combout\);

-- Location: LCCOMB_X43_Y24_N8
\reversal~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reversal~1_combout\ = (active_led(5)) # ((active_led(4)) # (\reversal~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => active_led(5),
	datac => active_led(4),
	datad => \reversal~0_combout\,
	combout => \reversal~1_combout\);

-- Location: LCCOMB_X43_Y24_N16
\active_led[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \active_led[0]~8_combout\ = (\reversal~q\ & (!\reversal~1_combout\)) # (!\reversal~q\ & ((!\reversal~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reversal~q\,
	datac => \reversal~1_combout\,
	datad => \reversal~3_combout\,
	combout => \active_led[0]~8_combout\);

-- Location: LCCOMB_X43_Y24_N28
\active_led[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \active_led[5]~17_combout\ = active_led(5) $ (\active_led[4]~16\ $ (!\active_led[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => active_led(5),
	datad => \active_led[0]~8_combout\,
	cin => \active_led[4]~16\,
	combout => \active_led[5]~17_combout\);

-- Location: FF_X43_Y24_N29
\active_led[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \active_led[5]~17_combout\,
	clrn => \rst_n~input_o\,
	ena => \update_req~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => active_led(5));

-- Location: LCCOMB_X43_Y24_N14
\reversal~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reversal~2_combout\ = (active_led(2) & (active_led(0) & (active_led(3) & active_led(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => active_led(2),
	datab => active_led(0),
	datac => active_led(3),
	datad => active_led(1),
	combout => \reversal~2_combout\);

-- Location: LCCOMB_X44_Y24_N4
\reversal~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reversal~3_combout\ = (active_led(5) & (active_led(4) & \reversal~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => active_led(5),
	datac => active_led(4),
	datad => \reversal~2_combout\,
	combout => \reversal~3_combout\);

-- Location: LCCOMB_X43_Y24_N2
\reversal~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reversal~4_combout\ = (\reversal~q\ & (((\reversal~1_combout\) # (!\update_req~4_combout\)))) # (!\reversal~q\ & (\reversal~3_combout\ & ((\update_req~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reversal~3_combout\,
	datab => \reversal~1_combout\,
	datac => \reversal~q\,
	datad => \update_req~4_combout\,
	combout => \reversal~4_combout\);

-- Location: FF_X43_Y24_N3
reversal : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reversal~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reversal~q\);

-- Location: LCCOMB_X44_Y25_N22
\draw_reversal~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_reversal~0_combout\ = (\rst_n~input_o\ & (!\state.STATE_IDLE~q\ & !\update_req~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~input_o\,
	datab => \state.STATE_IDLE~q\,
	datad => \update_req~q\,
	combout => \draw_reversal~0_combout\);

-- Location: FF_X44_Y25_N23
draw_reversal : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reversal~q\,
	sload => VCC,
	ena => \draw_reversal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \draw_reversal~q\);

-- Location: LCCOMB_X44_Y25_N8
\draw_target[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_target[0]~feeder_combout\ = active_led(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => active_led(0),
	combout => \draw_target[0]~feeder_combout\);

-- Location: FF_X44_Y25_N9
\draw_target[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \draw_target[0]~feeder_combout\,
	ena => \draw_reversal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => draw_target(0));

-- Location: LCCOMB_X44_Y25_N12
\DIN~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIN~0_combout\ = (\draw_reversal~q\ & (!bit_idx(3) & (led_idx(0) $ (!draw_target(0))))) # (!\draw_reversal~q\ & (bit_idx(3) & (led_idx(0) $ (!draw_target(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_reversal~q\,
	datab => led_idx(0),
	datac => draw_target(0),
	datad => bit_idx(3),
	combout => \DIN~0_combout\);

-- Location: LCCOMB_X44_Y25_N26
\draw_mode.MODE_ANIMATION~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_mode.MODE_ANIMATION~0_combout\ = (\state.STATE_IDLE~q\ & (((\draw_mode.MODE_ANIMATION~q\)))) # (!\state.STATE_IDLE~q\ & ((\update_req~q\ & ((\draw_mode.MODE_ANIMATION~q\))) # (!\update_req~q\ & (\sys_mode.MODE_ANIMATION~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sys_mode.MODE_ANIMATION~q\,
	datab => \state.STATE_IDLE~q\,
	datac => \draw_mode.MODE_ANIMATION~q\,
	datad => \update_req~q\,
	combout => \draw_mode.MODE_ANIMATION~0_combout\);

-- Location: FF_X44_Y25_N27
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

-- Location: FF_X44_Y25_N17
\draw_target[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => active_led(5),
	sload => VCC,
	ena => \draw_reversal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => draw_target(5));

-- Location: LCCOMB_X44_Y25_N16
\DIN~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIN~3_combout\ = (\draw_mode.MODE_ANIMATION~q\ & (bit_idx(4) & (led_idx(5) $ (!draw_target(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draw_mode.MODE_ANIMATION~q\,
	datab => led_idx(5),
	datac => draw_target(5),
	datad => bit_idx(4),
	combout => \DIN~3_combout\);

-- Location: FF_X44_Y25_N15
\draw_target[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => active_led(1),
	sload => VCC,
	ena => \draw_reversal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => draw_target(1));

-- Location: LCCOMB_X44_Y25_N20
\draw_target[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_target[2]~feeder_combout\ = active_led(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => active_led(2),
	combout => \draw_target[2]~feeder_combout\);

-- Location: FF_X44_Y25_N21
\draw_target[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \draw_target[2]~feeder_combout\,
	ena => \draw_reversal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => draw_target(2));

-- Location: LCCOMB_X44_Y25_N14
\DIN~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIN~1_combout\ = (led_idx(1) & (draw_target(1) & (led_idx(2) $ (!draw_target(2))))) # (!led_idx(1) & (!draw_target(1) & (led_idx(2) $ (!draw_target(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_idx(1),
	datab => led_idx(2),
	datac => draw_target(1),
	datad => draw_target(2),
	combout => \DIN~1_combout\);

-- Location: FF_X44_Y25_N19
\draw_target[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => active_led(3),
	sload => VCC,
	ena => \draw_reversal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => draw_target(3));

-- Location: LCCOMB_X44_Y25_N28
\draw_target[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \draw_target[4]~feeder_combout\ = active_led(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => active_led(4),
	combout => \draw_target[4]~feeder_combout\);

-- Location: FF_X44_Y25_N29
\draw_target[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \draw_target[4]~feeder_combout\,
	ena => \draw_reversal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => draw_target(4));

-- Location: LCCOMB_X44_Y25_N18
\DIN~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIN~2_combout\ = (led_idx(4) & (draw_target(4) & (led_idx(3) $ (!draw_target(3))))) # (!led_idx(4) & (!draw_target(4) & (led_idx(3) $ (!draw_target(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_idx(4),
	datab => led_idx(3),
	datac => draw_target(3),
	datad => draw_target(4),
	combout => \DIN~2_combout\);

-- Location: LCCOMB_X44_Y25_N30
\DIN~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIN~4_combout\ = (\DIN~0_combout\ & (\DIN~3_combout\ & (\DIN~1_combout\ & \DIN~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN~0_combout\,
	datab => \DIN~3_combout\,
	datac => \DIN~1_combout\,
	datad => \DIN~2_combout\,
	combout => \DIN~4_combout\);

-- Location: LCCOMB_X41_Y26_N12
\DIN~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DIN~7_combout\ = (\LessThan6~2_combout\ & ((\DIN~6_combout\ & ((\DIN~4_combout\))) # (!\DIN~6_combout\ & (!clk_cnt(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~2_combout\,
	datab => clk_cnt(5),
	datac => \DIN~6_combout\,
	datad => \DIN~4_combout\,
	combout => \DIN~7_combout\);

-- Location: FF_X41_Y26_N13
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


