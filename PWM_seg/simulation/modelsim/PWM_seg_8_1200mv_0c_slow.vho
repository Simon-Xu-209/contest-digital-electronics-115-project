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

-- DATE "08/18/2026 09:43:12"

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

ENTITY 	PWM_seg IS
    PORT (
	clk : IN std_logic;
	rst_n : IN std_logic;
	seg : OUT std_logic_vector(7 DOWNTO 0);
	dig : OUT std_logic_vector(7 DOWNTO 0)
	);
END PWM_seg;

-- Design Ports Information
-- seg[0]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_37,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[4]	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[5]	=>  Location: PIN_239,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[6]	=>  Location: PIN_235,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[7]	=>  Location: PIN_231,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[0]	=>  Location: PIN_232,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[1]	=>  Location: PIN_236,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[2]	=>  Location: PIN_240,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[3]	=>  Location: PIN_9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[4]	=>  Location: PIN_18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[5]	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[6]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[7]	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_145,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_149,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PWM_seg IS
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
SIGNAL ww_seg : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dig : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \seg[0]~output_o\ : std_logic;
SIGNAL \seg[1]~output_o\ : std_logic;
SIGNAL \seg[2]~output_o\ : std_logic;
SIGNAL \seg[3]~output_o\ : std_logic;
SIGNAL \seg[4]~output_o\ : std_logic;
SIGNAL \seg[5]~output_o\ : std_logic;
SIGNAL \seg[6]~output_o\ : std_logic;
SIGNAL \seg[7]~output_o\ : std_logic;
SIGNAL \dig[0]~output_o\ : std_logic;
SIGNAL \dig[1]~output_o\ : std_logic;
SIGNAL \dig[2]~output_o\ : std_logic;
SIGNAL \dig[3]~output_o\ : std_logic;
SIGNAL \dig[4]~output_o\ : std_logic;
SIGNAL \dig[5]~output_o\ : std_logic;
SIGNAL \dig[6]~output_o\ : std_logic;
SIGNAL \dig[7]~output_o\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \seg_scan_counter[0]~13_combout\ : std_logic;
SIGNAL \seg_scan_counter[8]~30\ : std_logic;
SIGNAL \seg_scan_counter[9]~31_combout\ : std_logic;
SIGNAL \seg_scan_counter[9]~32\ : std_logic;
SIGNAL \seg_scan_counter[10]~33_combout\ : std_logic;
SIGNAL \seg_scan_counter[10]~34\ : std_logic;
SIGNAL \seg_scan_counter[11]~35_combout\ : std_logic;
SIGNAL \seg_scan_counter[11]~36\ : std_logic;
SIGNAL \seg_scan_counter[12]~37_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \seg_scan_counter[0]~14\ : std_logic;
SIGNAL \seg_scan_counter[1]~15_combout\ : std_logic;
SIGNAL \seg_scan_counter[1]~16\ : std_logic;
SIGNAL \seg_scan_counter[2]~17_combout\ : std_logic;
SIGNAL \seg_scan_counter[2]~18\ : std_logic;
SIGNAL \seg_scan_counter[3]~19_combout\ : std_logic;
SIGNAL \seg_scan_counter[3]~20\ : std_logic;
SIGNAL \seg_scan_counter[4]~21_combout\ : std_logic;
SIGNAL \seg_scan_counter[4]~22\ : std_logic;
SIGNAL \seg_scan_counter[5]~23_combout\ : std_logic;
SIGNAL \seg_scan_counter[5]~24\ : std_logic;
SIGNAL \seg_scan_counter[6]~25_combout\ : std_logic;
SIGNAL \seg_scan_counter[6]~26\ : std_logic;
SIGNAL \seg_scan_counter[7]~27_combout\ : std_logic;
SIGNAL \seg_scan_counter[7]~28\ : std_logic;
SIGNAL \seg_scan_counter[8]~29_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \current_dig[0]~2_combout\ : std_logic;
SIGNAL \current_dig[1]~1_combout\ : std_logic;
SIGNAL \current_dig[2]~0_combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \seg[1]$latch~combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \seg[2]$latch~combout\ : std_logic;
SIGNAL \Decoder2~0_combout\ : std_logic;
SIGNAL \seg[3]$latch~combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \seg[4]$latch~combout\ : std_logic;
SIGNAL \Decoder1~0_combout\ : std_logic;
SIGNAL \seg[5]$latch~combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \seg[6]$latch~combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \seg[7]$latch~combout\ : std_logic;
SIGNAL \seg_pwm_en~12_combout\ : std_logic;
SIGNAL \seg_pwm_en~13_combout\ : std_logic;
SIGNAL \seg_pwm_en~11_combout\ : std_logic;
SIGNAL \seg_pwm_en~15_combout\ : std_logic;
SIGNAL \seg_pwm_en~14_combout\ : std_logic;
SIGNAL \seg_pwm_en~16_combout\ : std_logic;
SIGNAL \seg_pwm_en~17_combout\ : std_logic;
SIGNAL \seg_pwm_en~18_combout\ : std_logic;
SIGNAL \seg_pwm_en~23_combout\ : std_logic;
SIGNAL \seg_pwm_en~19_combout\ : std_logic;
SIGNAL \seg_pwm_en~20_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \LessThan5~2_combout\ : std_logic;
SIGNAL \LessThan5~3_combout\ : std_logic;
SIGNAL \seg_pwm_en~7_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \seg_pwm_en~8_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \seg_pwm_en~9_combout\ : std_logic;
SIGNAL \seg_pwm_en~10_combout\ : std_logic;
SIGNAL \seg_pwm_en~21_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \seg_pwm_en~4_combout\ : std_logic;
SIGNAL \seg_pwm_en~5_combout\ : std_logic;
SIGNAL \seg_pwm_en~3_combout\ : std_logic;
SIGNAL \seg_pwm_en~6_combout\ : std_logic;
SIGNAL \seg_pwm_en~2_combout\ : std_logic;
SIGNAL \seg_pwm_en~22_combout\ : std_logic;
SIGNAL \dig~2_combout\ : std_logic;
SIGNAL \dig~9_combout\ : std_logic;
SIGNAL \dig~3_combout\ : std_logic;
SIGNAL \dig~4_combout\ : std_logic;
SIGNAL \dig~5_combout\ : std_logic;
SIGNAL \dig~6_combout\ : std_logic;
SIGNAL \dig~7_combout\ : std_logic;
SIGNAL \dig~8_combout\ : std_logic;
SIGNAL seg_scan_counter : std_logic_vector(12 DOWNTO 0);
SIGNAL current_dig : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst_n <= rst_n;
seg <= ww_seg;
dig <= ww_dig;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X0_Y18_N16
\seg[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg[0]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\seg[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg[1]$latch~combout\,
	devoe => ww_devoe,
	o => \seg[1]~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\seg[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg[2]$latch~combout\,
	devoe => ww_devoe,
	o => \seg[2]~output_o\);

-- Location: IOOBUF_X0_Y37_N16
\seg[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg[3]$latch~combout\,
	devoe => ww_devoe,
	o => \seg[3]~output_o\);

-- Location: IOOBUF_X0_Y40_N9
\seg[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg[4]$latch~combout\,
	devoe => ww_devoe,
	o => \seg[4]~output_o\);

-- Location: IOOBUF_X1_Y43_N16
\seg[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg[5]$latch~combout\,
	devoe => ww_devoe,
	o => \seg[5]~output_o\);

-- Location: IOOBUF_X5_Y43_N16
\seg[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg[6]$latch~combout\,
	devoe => ww_devoe,
	o => \seg[6]~output_o\);

-- Location: IOOBUF_X9_Y43_N2
\seg[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg[7]$latch~combout\,
	devoe => ww_devoe,
	o => \seg[7]~output_o\);

-- Location: IOOBUF_X9_Y43_N9
\dig[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dig~2_combout\,
	devoe => ww_devoe,
	o => \dig[0]~output_o\);

-- Location: IOOBUF_X3_Y43_N2
\dig[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dig~9_combout\,
	devoe => ww_devoe,
	o => \dig[1]~output_o\);

-- Location: IOOBUF_X1_Y43_N23
\dig[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dig~3_combout\,
	devoe => ww_devoe,
	o => \dig[2]~output_o\);

-- Location: IOOBUF_X0_Y38_N16
\dig[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dig~4_combout\,
	devoe => ww_devoe,
	o => \dig[3]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\dig[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dig~5_combout\,
	devoe => ww_devoe,
	o => \dig[4]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\dig[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dig~6_combout\,
	devoe => ww_devoe,
	o => \dig[5]~output_o\);

-- Location: IOOBUF_X0_Y19_N9
\dig[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dig~7_combout\,
	devoe => ww_devoe,
	o => \dig[6]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\dig[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dig~8_combout\,
	devoe => ww_devoe,
	o => \dig[7]~output_o\);

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

-- Location: LCCOMB_X22_Y26_N2
\seg_scan_counter[0]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_scan_counter[0]~13_combout\ = seg_scan_counter(0) $ (VCC)
-- \seg_scan_counter[0]~14\ = CARRY(seg_scan_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => seg_scan_counter(0),
	datad => VCC,
	combout => \seg_scan_counter[0]~13_combout\,
	cout => \seg_scan_counter[0]~14\);

-- Location: LCCOMB_X22_Y26_N18
\seg_scan_counter[8]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_scan_counter[8]~29_combout\ = (seg_scan_counter(8) & (\seg_scan_counter[7]~28\ $ (GND))) # (!seg_scan_counter(8) & (!\seg_scan_counter[7]~28\ & VCC))
-- \seg_scan_counter[8]~30\ = CARRY((seg_scan_counter(8) & !\seg_scan_counter[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seg_scan_counter(8),
	datad => VCC,
	cin => \seg_scan_counter[7]~28\,
	combout => \seg_scan_counter[8]~29_combout\,
	cout => \seg_scan_counter[8]~30\);

-- Location: LCCOMB_X22_Y26_N20
\seg_scan_counter[9]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_scan_counter[9]~31_combout\ = (seg_scan_counter(9) & (!\seg_scan_counter[8]~30\)) # (!seg_scan_counter(9) & ((\seg_scan_counter[8]~30\) # (GND)))
-- \seg_scan_counter[9]~32\ = CARRY((!\seg_scan_counter[8]~30\) # (!seg_scan_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seg_scan_counter(9),
	datad => VCC,
	cin => \seg_scan_counter[8]~30\,
	combout => \seg_scan_counter[9]~31_combout\,
	cout => \seg_scan_counter[9]~32\);

-- Location: FF_X22_Y26_N21
\seg_scan_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seg_scan_counter[9]~31_combout\,
	clrn => \rst_n~input_o\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg_scan_counter(9));

-- Location: LCCOMB_X22_Y26_N22
\seg_scan_counter[10]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_scan_counter[10]~33_combout\ = (seg_scan_counter(10) & (\seg_scan_counter[9]~32\ $ (GND))) # (!seg_scan_counter(10) & (!\seg_scan_counter[9]~32\ & VCC))
-- \seg_scan_counter[10]~34\ = CARRY((seg_scan_counter(10) & !\seg_scan_counter[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg_scan_counter(10),
	datad => VCC,
	cin => \seg_scan_counter[9]~32\,
	combout => \seg_scan_counter[10]~33_combout\,
	cout => \seg_scan_counter[10]~34\);

-- Location: FF_X22_Y26_N23
\seg_scan_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seg_scan_counter[10]~33_combout\,
	clrn => \rst_n~input_o\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg_scan_counter(10));

-- Location: LCCOMB_X22_Y26_N24
\seg_scan_counter[11]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_scan_counter[11]~35_combout\ = (seg_scan_counter(11) & (!\seg_scan_counter[10]~34\)) # (!seg_scan_counter(11) & ((\seg_scan_counter[10]~34\) # (GND)))
-- \seg_scan_counter[11]~36\ = CARRY((!\seg_scan_counter[10]~34\) # (!seg_scan_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seg_scan_counter(11),
	datad => VCC,
	cin => \seg_scan_counter[10]~34\,
	combout => \seg_scan_counter[11]~35_combout\,
	cout => \seg_scan_counter[11]~36\);

-- Location: FF_X22_Y26_N25
\seg_scan_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seg_scan_counter[11]~35_combout\,
	clrn => \rst_n~input_o\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg_scan_counter(11));

-- Location: LCCOMB_X22_Y26_N26
\seg_scan_counter[12]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_scan_counter[12]~37_combout\ = seg_scan_counter(12) $ (!\seg_scan_counter[11]~36\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg_scan_counter(12),
	cin => \seg_scan_counter[11]~36\,
	combout => \seg_scan_counter[12]~37_combout\);

-- Location: FF_X22_Y26_N27
\seg_scan_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seg_scan_counter[12]~37_combout\,
	clrn => \rst_n~input_o\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg_scan_counter(12));

-- Location: LCCOMB_X22_Y26_N0
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!seg_scan_counter(2) & (!seg_scan_counter(1) & !seg_scan_counter(0)))) # (!seg_scan_counter(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_scan_counter(2),
	datab => seg_scan_counter(1),
	datac => seg_scan_counter(3),
	datad => seg_scan_counter(0),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X21_Y26_N4
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (seg_scan_counter(6) & seg_scan_counter(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => seg_scan_counter(6),
	datad => seg_scan_counter(5),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X21_Y26_N24
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\Equal0~1_combout\ & (((!seg_scan_counter(4) & \LessThan0~0_combout\)) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_scan_counter(4),
	datab => \LessThan0~0_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X22_Y26_N30
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (seg_scan_counter(11) & (seg_scan_counter(12) & !\LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => seg_scan_counter(11),
	datac => seg_scan_counter(12),
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: FF_X22_Y26_N3
\seg_scan_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seg_scan_counter[0]~13_combout\,
	clrn => \rst_n~input_o\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg_scan_counter(0));

-- Location: LCCOMB_X22_Y26_N4
\seg_scan_counter[1]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_scan_counter[1]~15_combout\ = (seg_scan_counter(1) & (!\seg_scan_counter[0]~14\)) # (!seg_scan_counter(1) & ((\seg_scan_counter[0]~14\) # (GND)))
-- \seg_scan_counter[1]~16\ = CARRY((!\seg_scan_counter[0]~14\) # (!seg_scan_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seg_scan_counter(1),
	datad => VCC,
	cin => \seg_scan_counter[0]~14\,
	combout => \seg_scan_counter[1]~15_combout\,
	cout => \seg_scan_counter[1]~16\);

-- Location: FF_X22_Y26_N5
\seg_scan_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seg_scan_counter[1]~15_combout\,
	clrn => \rst_n~input_o\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg_scan_counter(1));

-- Location: LCCOMB_X22_Y26_N6
\seg_scan_counter[2]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_scan_counter[2]~17_combout\ = (seg_scan_counter(2) & (\seg_scan_counter[1]~16\ $ (GND))) # (!seg_scan_counter(2) & (!\seg_scan_counter[1]~16\ & VCC))
-- \seg_scan_counter[2]~18\ = CARRY((seg_scan_counter(2) & !\seg_scan_counter[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg_scan_counter(2),
	datad => VCC,
	cin => \seg_scan_counter[1]~16\,
	combout => \seg_scan_counter[2]~17_combout\,
	cout => \seg_scan_counter[2]~18\);

-- Location: FF_X22_Y26_N7
\seg_scan_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seg_scan_counter[2]~17_combout\,
	clrn => \rst_n~input_o\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg_scan_counter(2));

-- Location: LCCOMB_X22_Y26_N8
\seg_scan_counter[3]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_scan_counter[3]~19_combout\ = (seg_scan_counter(3) & (!\seg_scan_counter[2]~18\)) # (!seg_scan_counter(3) & ((\seg_scan_counter[2]~18\) # (GND)))
-- \seg_scan_counter[3]~20\ = CARRY((!\seg_scan_counter[2]~18\) # (!seg_scan_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg_scan_counter(3),
	datad => VCC,
	cin => \seg_scan_counter[2]~18\,
	combout => \seg_scan_counter[3]~19_combout\,
	cout => \seg_scan_counter[3]~20\);

-- Location: FF_X22_Y26_N9
\seg_scan_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seg_scan_counter[3]~19_combout\,
	clrn => \rst_n~input_o\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg_scan_counter(3));

-- Location: LCCOMB_X22_Y26_N10
\seg_scan_counter[4]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_scan_counter[4]~21_combout\ = (seg_scan_counter(4) & (\seg_scan_counter[3]~20\ $ (GND))) # (!seg_scan_counter(4) & (!\seg_scan_counter[3]~20\ & VCC))
-- \seg_scan_counter[4]~22\ = CARRY((seg_scan_counter(4) & !\seg_scan_counter[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg_scan_counter(4),
	datad => VCC,
	cin => \seg_scan_counter[3]~20\,
	combout => \seg_scan_counter[4]~21_combout\,
	cout => \seg_scan_counter[4]~22\);

-- Location: FF_X22_Y26_N11
\seg_scan_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seg_scan_counter[4]~21_combout\,
	clrn => \rst_n~input_o\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg_scan_counter(4));

-- Location: LCCOMB_X22_Y26_N12
\seg_scan_counter[5]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_scan_counter[5]~23_combout\ = (seg_scan_counter(5) & (!\seg_scan_counter[4]~22\)) # (!seg_scan_counter(5) & ((\seg_scan_counter[4]~22\) # (GND)))
-- \seg_scan_counter[5]~24\ = CARRY((!\seg_scan_counter[4]~22\) # (!seg_scan_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => seg_scan_counter(5),
	datad => VCC,
	cin => \seg_scan_counter[4]~22\,
	combout => \seg_scan_counter[5]~23_combout\,
	cout => \seg_scan_counter[5]~24\);

-- Location: FF_X22_Y26_N13
\seg_scan_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seg_scan_counter[5]~23_combout\,
	clrn => \rst_n~input_o\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg_scan_counter(5));

-- Location: LCCOMB_X22_Y26_N14
\seg_scan_counter[6]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_scan_counter[6]~25_combout\ = (seg_scan_counter(6) & (\seg_scan_counter[5]~24\ $ (GND))) # (!seg_scan_counter(6) & (!\seg_scan_counter[5]~24\ & VCC))
-- \seg_scan_counter[6]~26\ = CARRY((seg_scan_counter(6) & !\seg_scan_counter[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seg_scan_counter(6),
	datad => VCC,
	cin => \seg_scan_counter[5]~24\,
	combout => \seg_scan_counter[6]~25_combout\,
	cout => \seg_scan_counter[6]~26\);

-- Location: FF_X22_Y26_N15
\seg_scan_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seg_scan_counter[6]~25_combout\,
	clrn => \rst_n~input_o\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg_scan_counter(6));

-- Location: LCCOMB_X22_Y26_N16
\seg_scan_counter[7]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_scan_counter[7]~27_combout\ = (seg_scan_counter(7) & (!\seg_scan_counter[6]~26\)) # (!seg_scan_counter(7) & ((\seg_scan_counter[6]~26\) # (GND)))
-- \seg_scan_counter[7]~28\ = CARRY((!\seg_scan_counter[6]~26\) # (!seg_scan_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => seg_scan_counter(7),
	datad => VCC,
	cin => \seg_scan_counter[6]~26\,
	combout => \seg_scan_counter[7]~27_combout\,
	cout => \seg_scan_counter[7]~28\);

-- Location: FF_X22_Y26_N17
\seg_scan_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seg_scan_counter[7]~27_combout\,
	clrn => \rst_n~input_o\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg_scan_counter(7));

-- Location: FF_X22_Y26_N19
\seg_scan_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \seg_scan_counter[8]~29_combout\,
	clrn => \rst_n~input_o\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => seg_scan_counter(8));

-- Location: LCCOMB_X21_Y26_N18
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!seg_scan_counter(8) & (!seg_scan_counter(7) & (!seg_scan_counter(9) & !seg_scan_counter(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_scan_counter(8),
	datab => seg_scan_counter(7),
	datac => seg_scan_counter(9),
	datad => seg_scan_counter(10),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X22_Y26_N28
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (seg_scan_counter(12) & (seg_scan_counter(0) & (seg_scan_counter(3) & seg_scan_counter(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_scan_counter(12),
	datab => seg_scan_counter(0),
	datac => seg_scan_counter(3),
	datad => seg_scan_counter(11),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X21_Y26_N14
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!seg_scan_counter(1) & (seg_scan_counter(6) & (seg_scan_counter(5) & !seg_scan_counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_scan_counter(1),
	datab => seg_scan_counter(6),
	datac => seg_scan_counter(5),
	datad => seg_scan_counter(2),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X22_Y22_N6
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (!seg_scan_counter(4) & (\Equal0~3_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => seg_scan_counter(4),
	datac => \Equal0~3_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X22_Y22_N8
\current_dig[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_dig[0]~2_combout\ = current_dig(0) $ (\Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => current_dig(0),
	datad => \Equal0~4_combout\,
	combout => \current_dig[0]~2_combout\);

-- Location: FF_X22_Y22_N9
\current_dig[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_dig[0]~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_dig(0));

-- Location: LCCOMB_X22_Y22_N30
\current_dig[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_dig[1]~1_combout\ = current_dig(1) $ (((current_dig(0) & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_dig(0),
	datac => current_dig(1),
	datad => \Equal0~4_combout\,
	combout => \current_dig[1]~1_combout\);

-- Location: FF_X22_Y22_N31
\current_dig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_dig[1]~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_dig(1));

-- Location: LCCOMB_X22_Y22_N16
\current_dig[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_dig[2]~0_combout\ = current_dig(2) $ (((current_dig(0) & (current_dig(1) & \Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_dig(0),
	datab => current_dig(1),
	datac => current_dig(2),
	datad => \Equal0~4_combout\,
	combout => \current_dig[2]~0_combout\);

-- Location: FF_X22_Y22_N17
\current_dig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_dig[2]~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_dig(2));

-- Location: LCCOMB_X22_Y22_N2
\WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (current_dig(2) & ((!current_dig(0)) # (!current_dig(1)))) # (!current_dig(2) & (current_dig(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_dig(2),
	datac => current_dig(1),
	datad => current_dig(0),
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X22_Y22_N4
\seg[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg[1]$latch~combout\ = (\rst_n~input_o\ & ((\WideOr4~0_combout\))) # (!\rst_n~input_o\ & (\seg[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst_n~input_o\,
	datac => \seg[1]$latch~combout\,
	datad => \WideOr4~0_combout\,
	combout => \seg[1]$latch~combout\);

-- Location: LCCOMB_X22_Y22_N20
\WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = ((current_dig(0) & current_dig(1))) # (!current_dig(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_dig(2),
	datac => current_dig(0),
	datad => current_dig(1),
	combout => \WideOr3~0_combout\);

-- Location: LCCOMB_X22_Y22_N22
\seg[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg[2]$latch~combout\ = (\rst_n~input_o\ & ((!\WideOr3~0_combout\))) # (!\rst_n~input_o\ & (\seg[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst_n~input_o\,
	datac => \seg[2]$latch~combout\,
	datad => \WideOr3~0_combout\,
	combout => \seg[2]$latch~combout\);

-- Location: LCCOMB_X22_Y22_N26
\Decoder2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder2~0_combout\ = (current_dig(1) & !current_dig(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => current_dig(1),
	datad => current_dig(0),
	combout => \Decoder2~0_combout\);

-- Location: LCCOMB_X22_Y22_N0
\seg[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg[3]$latch~combout\ = (\rst_n~input_o\ & (\Decoder2~0_combout\)) # (!\rst_n~input_o\ & ((\seg[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst_n~input_o\,
	datac => \Decoder2~0_combout\,
	datad => \seg[3]$latch~combout\,
	combout => \seg[3]$latch~combout\);

-- Location: LCCOMB_X22_Y22_N12
\WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = current_dig(1) $ (((current_dig(2) & current_dig(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_dig(1),
	datab => current_dig(2),
	datac => current_dig(0),
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X22_Y22_N14
\seg[4]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg[4]$latch~combout\ = (\rst_n~input_o\ & ((\WideOr2~0_combout\))) # (!\rst_n~input_o\ & (\seg[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst_n~input_o\,
	datac => \seg[4]$latch~combout\,
	datad => \WideOr2~0_combout\,
	combout => \seg[4]$latch~combout\);

-- Location: LCCOMB_X21_Y22_N12
\Decoder1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder1~0_combout\ = (current_dig(0)) # (current_dig(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => current_dig(0),
	datad => current_dig(2),
	combout => \Decoder1~0_combout\);

-- Location: LCCOMB_X21_Y22_N18
\seg[5]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg[5]$latch~combout\ = (\rst_n~input_o\ & ((\Decoder1~0_combout\))) # (!\rst_n~input_o\ & (\seg[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seg[5]$latch~combout\,
	datac => \rst_n~input_o\,
	datad => \Decoder1~0_combout\,
	combout => \seg[5]$latch~combout\);

-- Location: LCCOMB_X22_Y22_N18
\WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (current_dig(2) & (current_dig(1) $ (current_dig(0)))) # (!current_dig(2) & (!current_dig(1) & !current_dig(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_dig(2),
	datac => current_dig(1),
	datad => current_dig(0),
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X22_Y22_N24
\seg[6]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg[6]$latch~combout\ = (\rst_n~input_o\ & ((!\WideOr1~0_combout\))) # (!\rst_n~input_o\ & (\seg[6]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst_n~input_o\,
	datac => \seg[6]$latch~combout\,
	datad => \WideOr1~0_combout\,
	combout => \seg[6]$latch~combout\);

-- Location: LCCOMB_X22_Y22_N28
\WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (current_dig(1)) # ((current_dig(2) & current_dig(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_dig(2),
	datac => current_dig(1),
	datad => current_dig(0),
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X22_Y22_N10
\seg[7]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg[7]$latch~combout\ = (\rst_n~input_o\ & ((\WideOr0~0_combout\))) # (!\rst_n~input_o\ & (\seg[7]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst_n~input_o\,
	datac => \seg[7]$latch~combout\,
	datad => \WideOr0~0_combout\,
	combout => \seg[7]$latch~combout\);

-- Location: LCCOMB_X21_Y22_N0
\seg_pwm_en~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_pwm_en~12_combout\ = (!seg_scan_counter(9) & (!seg_scan_counter(8) & current_dig(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_scan_counter(9),
	datab => seg_scan_counter(8),
	datad => current_dig(2),
	combout => \seg_pwm_en~12_combout\);

-- Location: LCCOMB_X21_Y22_N22
\seg_pwm_en~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_pwm_en~13_combout\ = (\seg_pwm_en~12_combout\) # ((!seg_scan_counter(9) & (current_dig(0) & !seg_scan_counter(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_scan_counter(9),
	datab => \seg_pwm_en~12_combout\,
	datac => current_dig(0),
	datad => seg_scan_counter(12),
	combout => \seg_pwm_en~13_combout\);

-- Location: LCCOMB_X21_Y22_N14
\seg_pwm_en~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_pwm_en~11_combout\ = (!seg_scan_counter(10) & (current_dig(1) & !seg_scan_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_scan_counter(10),
	datac => current_dig(1),
	datad => seg_scan_counter(11),
	combout => \seg_pwm_en~11_combout\);

-- Location: LCCOMB_X21_Y26_N26
\seg_pwm_en~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_pwm_en~15_combout\ = (!seg_scan_counter(3) & (((!seg_scan_counter(0)) # (!seg_scan_counter(1))) # (!seg_scan_counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_scan_counter(2),
	datab => seg_scan_counter(1),
	datac => seg_scan_counter(3),
	datad => seg_scan_counter(0),
	combout => \seg_pwm_en~15_combout\);

-- Location: LCCOMB_X21_Y26_N8
\seg_pwm_en~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_pwm_en~14_combout\ = (current_dig(2) & (!seg_scan_counter(5) & (!seg_scan_counter(9) & !seg_scan_counter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_dig(2),
	datab => seg_scan_counter(5),
	datac => seg_scan_counter(9),
	datad => seg_scan_counter(7),
	combout => \seg_pwm_en~14_combout\);

-- Location: LCCOMB_X21_Y26_N0
\seg_pwm_en~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_pwm_en~16_combout\ = (!seg_scan_counter(6) & (\seg_pwm_en~14_combout\ & ((\seg_pwm_en~15_combout\) # (!seg_scan_counter(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_pwm_en~15_combout\,
	datab => seg_scan_counter(6),
	datac => \seg_pwm_en~14_combout\,
	datad => seg_scan_counter(4),
	combout => \seg_pwm_en~16_combout\);

-- Location: LCCOMB_X21_Y26_N22
\seg_pwm_en~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_pwm_en~17_combout\ = (seg_scan_counter(1)) # (seg_scan_counter(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_scan_counter(1),
	datad => seg_scan_counter(2),
	combout => \seg_pwm_en~17_combout\);

-- Location: LCCOMB_X21_Y26_N20
\seg_pwm_en~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_pwm_en~18_combout\ = (seg_scan_counter(3) & (((\seg_pwm_en~17_combout\) # (!seg_scan_counter(7))))) # (!seg_scan_counter(3) & (!seg_scan_counter(7) & ((seg_scan_counter(0)) # (\seg_pwm_en~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_scan_counter(0),
	datab => seg_scan_counter(3),
	datac => \seg_pwm_en~17_combout\,
	datad => seg_scan_counter(7),
	combout => \seg_pwm_en~18_combout\);

-- Location: LCCOMB_X21_Y26_N10
\seg_pwm_en~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_pwm_en~23_combout\ = (seg_scan_counter(6) & (seg_scan_counter(5) & (seg_scan_counter(4) & \seg_pwm_en~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_scan_counter(6),
	datab => seg_scan_counter(5),
	datac => seg_scan_counter(4),
	datad => \seg_pwm_en~18_combout\,
	combout => \seg_pwm_en~23_combout\);

-- Location: LCCOMB_X21_Y22_N8
\seg_pwm_en~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_pwm_en~19_combout\ = (seg_scan_counter(9) & (current_dig(0) & (!\seg_pwm_en~23_combout\ & !seg_scan_counter(7)))) # (!seg_scan_counter(9) & (((!seg_scan_counter(7)) # (!\seg_pwm_en~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_scan_counter(9),
	datab => current_dig(0),
	datac => \seg_pwm_en~23_combout\,
	datad => seg_scan_counter(7),
	combout => \seg_pwm_en~19_combout\);

-- Location: LCCOMB_X21_Y22_N26
\seg_pwm_en~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_pwm_en~20_combout\ = (\seg_pwm_en~16_combout\) # ((!seg_scan_counter(8) & (\seg_pwm_en~19_combout\ & !seg_scan_counter(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_pwm_en~16_combout\,
	datab => seg_scan_counter(8),
	datac => \seg_pwm_en~19_combout\,
	datad => seg_scan_counter(12),
	combout => \seg_pwm_en~20_combout\);

-- Location: LCCOMB_X21_Y26_N6
\LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = (((!seg_scan_counter(7)) # (!seg_scan_counter(4))) # (!seg_scan_counter(3))) # (!seg_scan_counter(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_scan_counter(2),
	datab => seg_scan_counter(3),
	datac => seg_scan_counter(4),
	datad => seg_scan_counter(7),
	combout => \LessThan5~1_combout\);

-- Location: LCCOMB_X21_Y22_N2
\LessThan5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~2_combout\ = (!seg_scan_counter(10) & (!seg_scan_counter(8) & ((\LessThan5~1_combout\) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_scan_counter(10),
	datab => seg_scan_counter(8),
	datac => \Equal0~0_combout\,
	datad => \LessThan5~1_combout\,
	combout => \LessThan5~2_combout\);

-- Location: LCCOMB_X21_Y22_N4
\LessThan5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~3_combout\ = (\LessThan5~2_combout\) # (((!seg_scan_counter(9) & !seg_scan_counter(10))) # (!seg_scan_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_scan_counter(9),
	datab => \LessThan5~2_combout\,
	datac => seg_scan_counter(10),
	datad => seg_scan_counter(11),
	combout => \LessThan5~3_combout\);

-- Location: LCCOMB_X21_Y22_N6
\seg_pwm_en~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_pwm_en~7_combout\ = (current_dig(0) & (!seg_scan_counter(12) & (\LessThan5~3_combout\ & current_dig(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_dig(0),
	datab => seg_scan_counter(12),
	datac => \LessThan5~3_combout\,
	datad => current_dig(2),
	combout => \seg_pwm_en~7_combout\);

-- Location: LCCOMB_X21_Y26_N2
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!seg_scan_counter(5) & (((!seg_scan_counter(2)) # (!seg_scan_counter(3))) # (!seg_scan_counter(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_scan_counter(4),
	datab => seg_scan_counter(3),
	datac => seg_scan_counter(5),
	datad => seg_scan_counter(2),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X20_Y26_N0
\seg_pwm_en~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_pwm_en~8_combout\ = (!current_dig(1) & (!current_dig(2) & current_dig(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => current_dig(1),
	datac => current_dig(2),
	datad => current_dig(0),
	combout => \seg_pwm_en~8_combout\);

-- Location: LCCOMB_X21_Y26_N28
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ((!seg_scan_counter(1) & (!seg_scan_counter(5) & !seg_scan_counter(0)))) # (!seg_scan_counter(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_scan_counter(1),
	datab => seg_scan_counter(6),
	datac => seg_scan_counter(5),
	datad => seg_scan_counter(0),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X20_Y26_N6
\seg_pwm_en~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_pwm_en~9_combout\ = (\seg_pwm_en~8_combout\ & (\Equal0~1_combout\ & ((\LessThan1~1_combout\) # (\LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~1_combout\,
	datab => \seg_pwm_en~8_combout\,
	datac => \Equal0~1_combout\,
	datad => \LessThan1~0_combout\,
	combout => \seg_pwm_en~9_combout\);

-- Location: LCCOMB_X21_Y22_N16
\seg_pwm_en~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_pwm_en~10_combout\ = (\seg_pwm_en~7_combout\) # ((!seg_scan_counter(11) & (\seg_pwm_en~9_combout\ & !seg_scan_counter(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_pwm_en~7_combout\,
	datab => seg_scan_counter(11),
	datac => \seg_pwm_en~9_combout\,
	datad => seg_scan_counter(12),
	combout => \seg_pwm_en~10_combout\);

-- Location: LCCOMB_X21_Y22_N20
\seg_pwm_en~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_pwm_en~21_combout\ = (\seg_pwm_en~10_combout\) # ((\seg_pwm_en~11_combout\ & ((\seg_pwm_en~13_combout\) # (\seg_pwm_en~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_pwm_en~13_combout\,
	datab => \seg_pwm_en~11_combout\,
	datac => \seg_pwm_en~20_combout\,
	datad => \seg_pwm_en~10_combout\,
	combout => \seg_pwm_en~21_combout\);

-- Location: LCCOMB_X21_Y26_N16
\LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (seg_scan_counter(3) & (seg_scan_counter(4) & seg_scan_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => seg_scan_counter(3),
	datac => seg_scan_counter(4),
	datad => seg_scan_counter(2),
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X21_Y26_N30
\seg_pwm_en~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_pwm_en~4_combout\ = (seg_scan_counter(5)) # ((seg_scan_counter(1) & (\LessThan5~0_combout\ & seg_scan_counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_scan_counter(1),
	datab => \LessThan5~0_combout\,
	datac => seg_scan_counter(5),
	datad => seg_scan_counter(0),
	combout => \seg_pwm_en~4_combout\);

-- Location: LCCOMB_X21_Y26_N12
\seg_pwm_en~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_pwm_en~5_combout\ = (seg_scan_counter(8) & ((seg_scan_counter(7)) # ((\seg_pwm_en~4_combout\ & seg_scan_counter(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_pwm_en~4_combout\,
	datab => seg_scan_counter(7),
	datac => seg_scan_counter(6),
	datad => seg_scan_counter(8),
	combout => \seg_pwm_en~5_combout\);

-- Location: LCCOMB_X21_Y22_N10
\seg_pwm_en~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_pwm_en~3_combout\ = (current_dig(2) & (!seg_scan_counter(11) & (!current_dig(0) & !seg_scan_counter(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_dig(2),
	datab => seg_scan_counter(11),
	datac => current_dig(0),
	datad => seg_scan_counter(12),
	combout => \seg_pwm_en~3_combout\);

-- Location: LCCOMB_X21_Y22_N24
\seg_pwm_en~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_pwm_en~6_combout\ = (\seg_pwm_en~3_combout\ & (((!seg_scan_counter(9) & !\seg_pwm_en~5_combout\)) # (!seg_scan_counter(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg_scan_counter(9),
	datab => \seg_pwm_en~5_combout\,
	datac => seg_scan_counter(10),
	datad => \seg_pwm_en~3_combout\,
	combout => \seg_pwm_en~6_combout\);

-- Location: LCCOMB_X21_Y22_N28
\seg_pwm_en~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_pwm_en~2_combout\ = (current_dig(1) & (current_dig(2) & ((current_dig(0)) # (!seg_scan_counter(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_dig(0),
	datab => seg_scan_counter(12),
	datac => current_dig(1),
	datad => current_dig(2),
	combout => \seg_pwm_en~2_combout\);

-- Location: LCCOMB_X21_Y22_N30
\seg_pwm_en~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \seg_pwm_en~22_combout\ = (\rst_n~input_o\ & ((\seg_pwm_en~21_combout\) # ((\seg_pwm_en~6_combout\) # (\seg_pwm_en~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_pwm_en~21_combout\,
	datab => \seg_pwm_en~6_combout\,
	datac => \rst_n~input_o\,
	datad => \seg_pwm_en~2_combout\,
	combout => \seg_pwm_en~22_combout\);

-- Location: LCCOMB_X7_Y31_N28
\dig~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dig~2_combout\ = ((current_dig(0)) # ((current_dig(2)) # (current_dig(1)))) # (!\seg_pwm_en~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_pwm_en~22_combout\,
	datab => current_dig(0),
	datac => current_dig(2),
	datad => current_dig(1),
	combout => \dig~2_combout\);

-- Location: LCCOMB_X7_Y31_N14
\dig~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dig~9_combout\ = (((current_dig(2)) # (current_dig(1))) # (!current_dig(0))) # (!\seg_pwm_en~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_pwm_en~22_combout\,
	datab => current_dig(0),
	datac => current_dig(2),
	datad => current_dig(1),
	combout => \dig~9_combout\);

-- Location: LCCOMB_X7_Y31_N18
\dig~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dig~3_combout\ = ((current_dig(0)) # ((current_dig(2)) # (!current_dig(1)))) # (!\seg_pwm_en~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_pwm_en~22_combout\,
	datab => current_dig(0),
	datac => current_dig(2),
	datad => current_dig(1),
	combout => \dig~3_combout\);

-- Location: LCCOMB_X7_Y31_N0
\dig~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dig~4_combout\ = (((current_dig(2)) # (!current_dig(1))) # (!current_dig(0))) # (!\seg_pwm_en~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_pwm_en~22_combout\,
	datab => current_dig(0),
	datac => current_dig(2),
	datad => current_dig(1),
	combout => \dig~4_combout\);

-- Location: LCCOMB_X7_Y31_N22
\dig~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dig~5_combout\ = ((current_dig(0)) # ((current_dig(1)) # (!current_dig(2)))) # (!\seg_pwm_en~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_pwm_en~22_combout\,
	datab => current_dig(0),
	datac => current_dig(2),
	datad => current_dig(1),
	combout => \dig~5_combout\);

-- Location: LCCOMB_X7_Y31_N12
\dig~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dig~6_combout\ = (((current_dig(1)) # (!current_dig(2))) # (!current_dig(0))) # (!\seg_pwm_en~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg_pwm_en~22_combout\,
	datab => current_dig(0),
	datac => current_dig(2),
	datad => current_dig(1),
	combout => \dig~6_combout\);

-- Location: LCCOMB_X7_Y21_N8
\dig~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dig~7_combout\ = (current_dig(0)) # (((!current_dig(2)) # (!\seg_pwm_en~22_combout\)) # (!current_dig(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_dig(0),
	datab => current_dig(1),
	datac => \seg_pwm_en~22_combout\,
	datad => current_dig(2),
	combout => \dig~7_combout\);

-- Location: LCCOMB_X7_Y21_N10
\dig~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dig~8_combout\ = (((!current_dig(2)) # (!\seg_pwm_en~22_combout\)) # (!current_dig(1))) # (!current_dig(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_dig(0),
	datab => current_dig(1),
	datac => \seg_pwm_en~22_combout\,
	datad => current_dig(2),
	combout => \dig~8_combout\);

ww_seg(0) <= \seg[0]~output_o\;

ww_seg(1) <= \seg[1]~output_o\;

ww_seg(2) <= \seg[2]~output_o\;

ww_seg(3) <= \seg[3]~output_o\;

ww_seg(4) <= \seg[4]~output_o\;

ww_seg(5) <= \seg[5]~output_o\;

ww_seg(6) <= \seg[6]~output_o\;

ww_seg(7) <= \seg[7]~output_o\;

ww_dig(0) <= \dig[0]~output_o\;

ww_dig(1) <= \dig[1]~output_o\;

ww_dig(2) <= \dig[2]~output_o\;

ww_dig(3) <= \dig[3]~output_o\;

ww_dig(4) <= \dig[4]~output_o\;

ww_dig(5) <= \dig[5]~output_o\;

ww_dig(6) <= \dig[6]~output_o\;

ww_dig(7) <= \dig[7]~output_o\;
END structure;


