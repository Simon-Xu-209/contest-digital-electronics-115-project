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

-- DATE "07/23/2026 09:27:22"

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

ENTITY 	keyboard_3x3 IS
    PORT (
	ck : IN std_logic;
	column : IN std_logic_vector(2 DOWNTO 0);
	row : OUT std_logic_vector(2 DOWNTO 0);
	Pressed : OUT std_logic;
	KEY : OUT std_logic_vector(8 DOWNTO 0)
	);
END keyboard_3x3;

-- Design Ports Information
-- row[0]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[1]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[2]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Pressed	=>  Location: PIN_166,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_171,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_176,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_183,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_185,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[4]	=>  Location: PIN_187,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[5]	=>  Location: PIN_189,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[6]	=>  Location: PIN_195,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[7]	=>  Location: PIN_197,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[8]	=>  Location: PIN_201,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ck	=>  Location: PIN_149,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[2]	=>  Location: PIN_63,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[1]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[0]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF keyboard_3x3 IS
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
SIGNAL ww_column : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_row : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Pressed : std_logic;
SIGNAL ww_KEY : std_logic_vector(8 DOWNTO 0);
SIGNAL \ck~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \row[0]~output_o\ : std_logic;
SIGNAL \row[1]~output_o\ : std_logic;
SIGNAL \row[2]~output_o\ : std_logic;
SIGNAL \Pressed~output_o\ : std_logic;
SIGNAL \KEY[0]~output_o\ : std_logic;
SIGNAL \KEY[1]~output_o\ : std_logic;
SIGNAL \KEY[2]~output_o\ : std_logic;
SIGNAL \KEY[3]~output_o\ : std_logic;
SIGNAL \KEY[4]~output_o\ : std_logic;
SIGNAL \KEY[5]~output_o\ : std_logic;
SIGNAL \KEY[6]~output_o\ : std_logic;
SIGNAL \KEY[7]~output_o\ : std_logic;
SIGNAL \KEY[8]~output_o\ : std_logic;
SIGNAL \ck~input_o\ : std_logic;
SIGNAL \ck~inputclkctrl_outclk\ : std_logic;
SIGNAL \row~0_combout\ : std_logic;
SIGNAL \clk_cnt[0]~16_combout\ : std_logic;
SIGNAL \clk_cnt[0]~17\ : std_logic;
SIGNAL \clk_cnt[1]~18_combout\ : std_logic;
SIGNAL \clk_cnt[1]~19\ : std_logic;
SIGNAL \clk_cnt[2]~20_combout\ : std_logic;
SIGNAL \clk_cnt[2]~21\ : std_logic;
SIGNAL \clk_cnt[3]~22_combout\ : std_logic;
SIGNAL \clk_cnt[3]~23\ : std_logic;
SIGNAL \clk_cnt[4]~24_combout\ : std_logic;
SIGNAL \clk_cnt[4]~25\ : std_logic;
SIGNAL \clk_cnt[5]~26_combout\ : std_logic;
SIGNAL \clk_cnt[5]~27\ : std_logic;
SIGNAL \clk_cnt[6]~28_combout\ : std_logic;
SIGNAL \clk_cnt[6]~29\ : std_logic;
SIGNAL \clk_cnt[7]~30_combout\ : std_logic;
SIGNAL \clk_cnt[7]~31\ : std_logic;
SIGNAL \clk_cnt[8]~32_combout\ : std_logic;
SIGNAL \clk_cnt[8]~33\ : std_logic;
SIGNAL \clk_cnt[9]~34_combout\ : std_logic;
SIGNAL \clk_cnt[9]~35\ : std_logic;
SIGNAL \clk_cnt[10]~36_combout\ : std_logic;
SIGNAL \clk_cnt[10]~37\ : std_logic;
SIGNAL \clk_cnt[11]~38_combout\ : std_logic;
SIGNAL \clk_cnt[11]~39\ : std_logic;
SIGNAL \clk_cnt[12]~40_combout\ : std_logic;
SIGNAL \clk_cnt[12]~41\ : std_logic;
SIGNAL \clk_cnt[13]~42_combout\ : std_logic;
SIGNAL \clk_cnt[13]~43\ : std_logic;
SIGNAL \clk_cnt[14]~44_combout\ : std_logic;
SIGNAL \clk_cnt[14]~45\ : std_logic;
SIGNAL \clk_cnt[15]~46_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \scan_tick~0_combout\ : std_logic;
SIGNAL \scan_tick~q\ : std_logic;
SIGNAL \row[2]~reg0_q\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \row[1]~reg0_q\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \row[0]~reg0_q\ : std_logic;
SIGNAL \column[2]~input_o\ : std_logic;
SIGNAL \KEY[6]~9_combout\ : std_logic;
SIGNAL \KEY[6]~reg0feeder_combout\ : std_logic;
SIGNAL \KEY[6]~2_combout\ : std_logic;
SIGNAL \KEY[6]~reg0_q\ : std_logic;
SIGNAL \column[1]~input_o\ : std_logic;
SIGNAL \KEY[4]~7_combout\ : std_logic;
SIGNAL \KEY[3]~1_combout\ : std_logic;
SIGNAL \KEY[4]~reg0_q\ : std_logic;
SIGNAL \KEY[7]~10_combout\ : std_logic;
SIGNAL \KEY[7]~reg0_q\ : std_logic;
SIGNAL \column[0]~input_o\ : std_logic;
SIGNAL \KEY[5]~8_combout\ : std_logic;
SIGNAL \KEY[5]~reg0_q\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \KEY[8]~11_combout\ : std_logic;
SIGNAL \KEY[8]~reg0feeder_combout\ : std_logic;
SIGNAL \KEY[8]~reg0_q\ : std_logic;
SIGNAL \KEY[1]~4_combout\ : std_logic;
SIGNAL \KEY[0]~0_combout\ : std_logic;
SIGNAL \KEY[1]~reg0_q\ : std_logic;
SIGNAL \KEY[2]~5_combout\ : std_logic;
SIGNAL \KEY[2]~reg0_q\ : std_logic;
SIGNAL \KEY[3]~6_combout\ : std_logic;
SIGNAL \KEY[3]~reg0_q\ : std_logic;
SIGNAL \KEY[0]~3_combout\ : std_logic;
SIGNAL \KEY[0]~reg0_q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Pressed~reg0_q\ : std_logic;
SIGNAL clk_cnt : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;

BEGIN

ww_ck <= ck;
ww_column <= column;
row <= ww_row;
Pressed <= ww_Pressed;
KEY <= ww_KEY;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ck~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ck~input_o\);
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;

-- Location: IOOBUF_X0_Y5_N9
\row[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \row[0]~reg0_q\,
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
	i => \row[1]~reg0_q\,
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
	i => \row[2]~reg0_q\,
	devoe => ww_devoe,
	o => \row[2]~output_o\);

-- Location: IOOBUF_X67_Y28_N23
\Pressed~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Pressed~reg0_q\,
	devoe => ww_devoe,
	o => \Pressed~output_o\);

-- Location: IOOBUF_X67_Y34_N9
\KEY[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \KEY[0]~reg0_q\,
	devoe => ww_devoe,
	o => \KEY[0]~output_o\);

-- Location: IOOBUF_X67_Y39_N9
\KEY[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \KEY[1]~reg0_q\,
	devoe => ww_devoe,
	o => \KEY[1]~output_o\);

-- Location: IOOBUF_X63_Y43_N30
\KEY[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \KEY[2]~reg0_q\,
	devoe => ww_devoe,
	o => \KEY[2]~output_o\);

-- Location: IOOBUF_X59_Y43_N9
\KEY[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \KEY[3]~reg0_q\,
	devoe => ww_devoe,
	o => \KEY[3]~output_o\);

-- Location: IOOBUF_X56_Y43_N16
\KEY[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \KEY[4]~reg0_q\,
	devoe => ww_devoe,
	o => \KEY[4]~output_o\);

-- Location: IOOBUF_X54_Y43_N16
\KEY[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \KEY[5]~reg0_q\,
	devoe => ww_devoe,
	o => \KEY[5]~output_o\);

-- Location: IOOBUF_X50_Y43_N23
\KEY[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \KEY[6]~reg0_q\,
	devoe => ww_devoe,
	o => \KEY[6]~output_o\);

-- Location: IOOBUF_X48_Y43_N16
\KEY[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \KEY[7]~reg0_q\,
	devoe => ww_devoe,
	o => \KEY[7]~output_o\);

-- Location: IOOBUF_X45_Y43_N9
\KEY[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \KEY[8]~reg0_q\,
	devoe => ww_devoe,
	o => \KEY[8]~output_o\);

-- Location: IOIBUF_X67_Y22_N22
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

-- Location: LCCOMB_X61_Y38_N4
\row~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \row~0_combout\ = (\row[0]~reg0_q\ & (\row[1]~reg0_q\ $ (\row[2]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~reg0_q\,
	datac => \row[2]~reg0_q\,
	datad => \row[0]~reg0_q\,
	combout => \row~0_combout\);

-- Location: LCCOMB_X62_Y38_N0
\clk_cnt[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_cnt[0]~16_combout\ = clk_cnt(0) $ (VCC)
-- \clk_cnt[0]~17\ = CARRY(clk_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(0),
	datad => VCC,
	combout => \clk_cnt[0]~16_combout\,
	cout => \clk_cnt[0]~17\);

-- Location: FF_X62_Y38_N1
\clk_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \clk_cnt[0]~16_combout\,
	sclr => \ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(0));

-- Location: LCCOMB_X62_Y38_N2
\clk_cnt[1]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_cnt[1]~18_combout\ = (clk_cnt(1) & (!\clk_cnt[0]~17\)) # (!clk_cnt(1) & ((\clk_cnt[0]~17\) # (GND)))
-- \clk_cnt[1]~19\ = CARRY((!\clk_cnt[0]~17\) # (!clk_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(1),
	datad => VCC,
	cin => \clk_cnt[0]~17\,
	combout => \clk_cnt[1]~18_combout\,
	cout => \clk_cnt[1]~19\);

-- Location: FF_X62_Y38_N3
\clk_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \clk_cnt[1]~18_combout\,
	sclr => \ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(1));

-- Location: LCCOMB_X62_Y38_N4
\clk_cnt[2]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_cnt[2]~20_combout\ = (clk_cnt(2) & (\clk_cnt[1]~19\ $ (GND))) # (!clk_cnt(2) & (!\clk_cnt[1]~19\ & VCC))
-- \clk_cnt[2]~21\ = CARRY((clk_cnt(2) & !\clk_cnt[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(2),
	datad => VCC,
	cin => \clk_cnt[1]~19\,
	combout => \clk_cnt[2]~20_combout\,
	cout => \clk_cnt[2]~21\);

-- Location: FF_X62_Y38_N5
\clk_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \clk_cnt[2]~20_combout\,
	sclr => \ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(2));

-- Location: LCCOMB_X62_Y38_N6
\clk_cnt[3]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_cnt[3]~22_combout\ = (clk_cnt(3) & (!\clk_cnt[2]~21\)) # (!clk_cnt(3) & ((\clk_cnt[2]~21\) # (GND)))
-- \clk_cnt[3]~23\ = CARRY((!\clk_cnt[2]~21\) # (!clk_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(3),
	datad => VCC,
	cin => \clk_cnt[2]~21\,
	combout => \clk_cnt[3]~22_combout\,
	cout => \clk_cnt[3]~23\);

-- Location: FF_X62_Y38_N7
\clk_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \clk_cnt[3]~22_combout\,
	sclr => \ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(3));

-- Location: LCCOMB_X62_Y38_N8
\clk_cnt[4]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_cnt[4]~24_combout\ = (clk_cnt(4) & (\clk_cnt[3]~23\ $ (GND))) # (!clk_cnt(4) & (!\clk_cnt[3]~23\ & VCC))
-- \clk_cnt[4]~25\ = CARRY((clk_cnt(4) & !\clk_cnt[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(4),
	datad => VCC,
	cin => \clk_cnt[3]~23\,
	combout => \clk_cnt[4]~24_combout\,
	cout => \clk_cnt[4]~25\);

-- Location: FF_X61_Y38_N17
\clk_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \clk_cnt[4]~24_combout\,
	sclr => \ALT_INV_LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(4));

-- Location: LCCOMB_X62_Y38_N10
\clk_cnt[5]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_cnt[5]~26_combout\ = (clk_cnt(5) & (!\clk_cnt[4]~25\)) # (!clk_cnt(5) & ((\clk_cnt[4]~25\) # (GND)))
-- \clk_cnt[5]~27\ = CARRY((!\clk_cnt[4]~25\) # (!clk_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(5),
	datad => VCC,
	cin => \clk_cnt[4]~25\,
	combout => \clk_cnt[5]~26_combout\,
	cout => \clk_cnt[5]~27\);

-- Location: FF_X61_Y38_N27
\clk_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \clk_cnt[5]~26_combout\,
	sclr => \ALT_INV_LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(5));

-- Location: LCCOMB_X62_Y38_N12
\clk_cnt[6]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_cnt[6]~28_combout\ = (clk_cnt(6) & (\clk_cnt[5]~27\ $ (GND))) # (!clk_cnt(6) & (!\clk_cnt[5]~27\ & VCC))
-- \clk_cnt[6]~29\ = CARRY((clk_cnt(6) & !\clk_cnt[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(6),
	datad => VCC,
	cin => \clk_cnt[5]~27\,
	combout => \clk_cnt[6]~28_combout\,
	cout => \clk_cnt[6]~29\);

-- Location: FF_X61_Y38_N15
\clk_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \clk_cnt[6]~28_combout\,
	sclr => \ALT_INV_LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(6));

-- Location: LCCOMB_X62_Y38_N14
\clk_cnt[7]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_cnt[7]~30_combout\ = (clk_cnt(7) & (!\clk_cnt[6]~29\)) # (!clk_cnt(7) & ((\clk_cnt[6]~29\) # (GND)))
-- \clk_cnt[7]~31\ = CARRY((!\clk_cnt[6]~29\) # (!clk_cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(7),
	datad => VCC,
	cin => \clk_cnt[6]~29\,
	combout => \clk_cnt[7]~30_combout\,
	cout => \clk_cnt[7]~31\);

-- Location: FF_X62_Y38_N15
\clk_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \clk_cnt[7]~30_combout\,
	sclr => \ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(7));

-- Location: LCCOMB_X62_Y38_N16
\clk_cnt[8]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_cnt[8]~32_combout\ = (clk_cnt(8) & (\clk_cnt[7]~31\ $ (GND))) # (!clk_cnt(8) & (!\clk_cnt[7]~31\ & VCC))
-- \clk_cnt[8]~33\ = CARRY((clk_cnt(8) & !\clk_cnt[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(8),
	datad => VCC,
	cin => \clk_cnt[7]~31\,
	combout => \clk_cnt[8]~32_combout\,
	cout => \clk_cnt[8]~33\);

-- Location: FF_X62_Y38_N17
\clk_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \clk_cnt[8]~32_combout\,
	sclr => \ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(8));

-- Location: LCCOMB_X62_Y38_N18
\clk_cnt[9]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_cnt[9]~34_combout\ = (clk_cnt(9) & (!\clk_cnt[8]~33\)) # (!clk_cnt(9) & ((\clk_cnt[8]~33\) # (GND)))
-- \clk_cnt[9]~35\ = CARRY((!\clk_cnt[8]~33\) # (!clk_cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(9),
	datad => VCC,
	cin => \clk_cnt[8]~33\,
	combout => \clk_cnt[9]~34_combout\,
	cout => \clk_cnt[9]~35\);

-- Location: FF_X61_Y38_N1
\clk_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \clk_cnt[9]~34_combout\,
	sclr => \ALT_INV_LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(9));

-- Location: LCCOMB_X62_Y38_N20
\clk_cnt[10]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_cnt[10]~36_combout\ = (clk_cnt(10) & (\clk_cnt[9]~35\ $ (GND))) # (!clk_cnt(10) & (!\clk_cnt[9]~35\ & VCC))
-- \clk_cnt[10]~37\ = CARRY((clk_cnt(10) & !\clk_cnt[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(10),
	datad => VCC,
	cin => \clk_cnt[9]~35\,
	combout => \clk_cnt[10]~36_combout\,
	cout => \clk_cnt[10]~37\);

-- Location: FF_X62_Y38_N21
\clk_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \clk_cnt[10]~36_combout\,
	sclr => \ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(10));

-- Location: LCCOMB_X62_Y38_N22
\clk_cnt[11]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_cnt[11]~38_combout\ = (clk_cnt(11) & (!\clk_cnt[10]~37\)) # (!clk_cnt(11) & ((\clk_cnt[10]~37\) # (GND)))
-- \clk_cnt[11]~39\ = CARRY((!\clk_cnt[10]~37\) # (!clk_cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(11),
	datad => VCC,
	cin => \clk_cnt[10]~37\,
	combout => \clk_cnt[11]~38_combout\,
	cout => \clk_cnt[11]~39\);

-- Location: FF_X62_Y38_N23
\clk_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \clk_cnt[11]~38_combout\,
	sclr => \ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(11));

-- Location: LCCOMB_X62_Y38_N24
\clk_cnt[12]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_cnt[12]~40_combout\ = (clk_cnt(12) & (\clk_cnt[11]~39\ $ (GND))) # (!clk_cnt(12) & (!\clk_cnt[11]~39\ & VCC))
-- \clk_cnt[12]~41\ = CARRY((clk_cnt(12) & !\clk_cnt[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(12),
	datad => VCC,
	cin => \clk_cnt[11]~39\,
	combout => \clk_cnt[12]~40_combout\,
	cout => \clk_cnt[12]~41\);

-- Location: FF_X62_Y38_N25
\clk_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \clk_cnt[12]~40_combout\,
	sclr => \ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(12));

-- Location: LCCOMB_X62_Y38_N26
\clk_cnt[13]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_cnt[13]~42_combout\ = (clk_cnt(13) & (!\clk_cnt[12]~41\)) # (!clk_cnt(13) & ((\clk_cnt[12]~41\) # (GND)))
-- \clk_cnt[13]~43\ = CARRY((!\clk_cnt[12]~41\) # (!clk_cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(13),
	datad => VCC,
	cin => \clk_cnt[12]~41\,
	combout => \clk_cnt[13]~42_combout\,
	cout => \clk_cnt[13]~43\);

-- Location: FF_X62_Y38_N27
\clk_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \clk_cnt[13]~42_combout\,
	sclr => \ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(13));

-- Location: LCCOMB_X62_Y38_N28
\clk_cnt[14]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_cnt[14]~44_combout\ = (clk_cnt(14) & (\clk_cnt[13]~43\ $ (GND))) # (!clk_cnt(14) & (!\clk_cnt[13]~43\ & VCC))
-- \clk_cnt[14]~45\ = CARRY((clk_cnt(14) & !\clk_cnt[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(14),
	datad => VCC,
	cin => \clk_cnt[13]~43\,
	combout => \clk_cnt[14]~44_combout\,
	cout => \clk_cnt[14]~45\);

-- Location: FF_X62_Y38_N29
\clk_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \clk_cnt[14]~44_combout\,
	sclr => \ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(14));

-- Location: LCCOMB_X62_Y38_N30
\clk_cnt[15]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_cnt[15]~46_combout\ = \clk_cnt[14]~45\ $ (clk_cnt(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => clk_cnt(15),
	cin => \clk_cnt[14]~45\,
	combout => \clk_cnt[15]~46_combout\);

-- Location: FF_X62_Y38_N31
\clk_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \clk_cnt[15]~46_combout\,
	sclr => \ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(15));

-- Location: LCCOMB_X61_Y38_N30
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!clk_cnt(13) & (!clk_cnt(11) & (!clk_cnt(10) & !clk_cnt(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(13),
	datab => clk_cnt(11),
	datac => clk_cnt(10),
	datad => clk_cnt(12),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X61_Y38_N28
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (((!clk_cnt(3)) # (!clk_cnt(2))) # (!clk_cnt(0))) # (!clk_cnt(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(1),
	datab => clk_cnt(0),
	datac => clk_cnt(2),
	datad => clk_cnt(3),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X61_Y38_N2
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (clk_cnt(6) & ((clk_cnt(5)) # ((clk_cnt(4)) # (!\LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(5),
	datab => clk_cnt(4),
	datac => clk_cnt(6),
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X61_Y38_N24
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (clk_cnt(8) & (clk_cnt(9) & ((clk_cnt(7)) # (\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(8),
	datab => clk_cnt(9),
	datac => clk_cnt(7),
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X61_Y38_N6
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (((\LessThan0~0_combout\ & !\LessThan0~3_combout\)) # (!clk_cnt(14))) # (!clk_cnt(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(15),
	datab => clk_cnt(14),
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X61_Y38_N10
\scan_tick~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \scan_tick~0_combout\ = !\LessThan0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LessThan0~4_combout\,
	combout => \scan_tick~0_combout\);

-- Location: FF_X61_Y38_N11
scan_tick : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \scan_tick~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scan_tick~q\);

-- Location: FF_X61_Y38_N5
\row[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \row~0_combout\,
	ena => \scan_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row[2]~reg0_q\);

-- Location: LCCOMB_X61_Y38_N22
\Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (\row[2]~reg0_q\) # ((!\row[0]~reg0_q\) # (!\row[1]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \row[2]~reg0_q\,
	datac => \row[1]~reg0_q\,
	datad => \row[0]~reg0_q\,
	combout => \Decoder0~1_combout\);

-- Location: FF_X61_Y38_N23
\row[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \Decoder0~1_combout\,
	ena => \scan_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row[1]~reg0_q\);

-- Location: LCCOMB_X61_Y38_N20
\Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (\row[1]~reg0_q\) # ((!\row[0]~reg0_q\) # (!\row[2]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~reg0_q\,
	datab => \row[2]~reg0_q\,
	datac => \row[0]~reg0_q\,
	combout => \Decoder0~0_combout\);

-- Location: FF_X61_Y38_N21
\row[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \Decoder0~0_combout\,
	ena => \scan_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row[0]~reg0_q\);

-- Location: IOIBUF_X3_Y0_N15
\column[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_column(2),
	o => \column[2]~input_o\);

-- Location: LCCOMB_X60_Y38_N22
\KEY[6]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KEY[6]~9_combout\ = !\column[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \column[2]~input_o\,
	combout => \KEY[6]~9_combout\);

-- Location: LCCOMB_X59_Y38_N6
\KEY[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KEY[6]~reg0feeder_combout\ = \KEY[6]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[6]~9_combout\,
	combout => \KEY[6]~reg0feeder_combout\);

-- Location: LCCOMB_X61_Y38_N8
\KEY[6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KEY[6]~2_combout\ = (\row[1]~reg0_q\ & (!\row[0]~reg0_q\ & (\row[2]~reg0_q\ & \scan_tick~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~reg0_q\,
	datab => \row[0]~reg0_q\,
	datac => \row[2]~reg0_q\,
	datad => \scan_tick~q\,
	combout => \KEY[6]~2_combout\);

-- Location: FF_X59_Y38_N7
\KEY[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \KEY[6]~reg0feeder_combout\,
	ena => \KEY[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY[6]~reg0_q\);

-- Location: IOIBUF_X0_Y4_N22
\column[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_column(1),
	o => \column[1]~input_o\);

-- Location: LCCOMB_X60_Y38_N28
\KEY[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KEY[4]~7_combout\ = !\column[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \column[1]~input_o\,
	combout => \KEY[4]~7_combout\);

-- Location: LCCOMB_X61_Y38_N18
\KEY[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KEY[3]~1_combout\ = (!\row[1]~reg0_q\ & (\row[0]~reg0_q\ & (\row[2]~reg0_q\ & \scan_tick~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~reg0_q\,
	datab => \row[0]~reg0_q\,
	datac => \row[2]~reg0_q\,
	datad => \scan_tick~q\,
	combout => \KEY[3]~1_combout\);

-- Location: FF_X60_Y38_N29
\KEY[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \KEY[4]~7_combout\,
	ena => \KEY[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY[4]~reg0_q\);

-- Location: LCCOMB_X60_Y38_N0
\KEY[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KEY[7]~10_combout\ = !\column[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \column[1]~input_o\,
	combout => \KEY[7]~10_combout\);

-- Location: FF_X59_Y38_N5
\KEY[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	asdata => \KEY[7]~10_combout\,
	sload => VCC,
	ena => \KEY[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY[7]~reg0_q\);

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

-- Location: LCCOMB_X60_Y38_N6
\KEY[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KEY[5]~8_combout\ = !\column[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \column[0]~input_o\,
	combout => \KEY[5]~8_combout\);

-- Location: FF_X60_Y38_N7
\KEY[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \KEY[5]~8_combout\,
	ena => \KEY[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY[5]~reg0_q\);

-- Location: LCCOMB_X59_Y38_N12
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\KEY[6]~reg0_q\ & (!\KEY[4]~reg0_q\ & (!\KEY[7]~reg0_q\ & !\KEY[5]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[6]~reg0_q\,
	datab => \KEY[4]~reg0_q\,
	datac => \KEY[7]~reg0_q\,
	datad => \KEY[5]~reg0_q\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X60_Y38_N18
\KEY[8]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KEY[8]~11_combout\ = !\column[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \column[0]~input_o\,
	combout => \KEY[8]~11_combout\);

-- Location: LCCOMB_X59_Y38_N26
\KEY[8]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KEY[8]~reg0feeder_combout\ = \KEY[8]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[8]~11_combout\,
	combout => \KEY[8]~reg0feeder_combout\);

-- Location: FF_X59_Y38_N27
\KEY[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \KEY[8]~reg0feeder_combout\,
	ena => \KEY[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY[8]~reg0_q\);

-- Location: LCCOMB_X60_Y38_N10
\KEY[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KEY[1]~4_combout\ = !\column[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \column[1]~input_o\,
	combout => \KEY[1]~4_combout\);

-- Location: LCCOMB_X61_Y38_N12
\KEY[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KEY[0]~0_combout\ = (\row[1]~reg0_q\ & (\row[0]~reg0_q\ & (!\row[2]~reg0_q\ & \scan_tick~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~reg0_q\,
	datab => \row[0]~reg0_q\,
	datac => \row[2]~reg0_q\,
	datad => \scan_tick~q\,
	combout => \KEY[0]~0_combout\);

-- Location: FF_X60_Y38_N11
\KEY[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \KEY[1]~4_combout\,
	ena => \KEY[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY[1]~reg0_q\);

-- Location: LCCOMB_X60_Y38_N24
\KEY[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KEY[2]~5_combout\ = !\column[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \column[0]~input_o\,
	combout => \KEY[2]~5_combout\);

-- Location: FF_X60_Y38_N25
\KEY[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \KEY[2]~5_combout\,
	ena => \KEY[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY[2]~reg0_q\);

-- Location: LCCOMB_X60_Y38_N14
\KEY[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KEY[3]~6_combout\ = !\column[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \column[2]~input_o\,
	combout => \KEY[3]~6_combout\);

-- Location: FF_X60_Y38_N15
\KEY[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \KEY[3]~6_combout\,
	ena => \KEY[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY[3]~reg0_q\);

-- Location: LCCOMB_X60_Y38_N12
\KEY[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \KEY[0]~3_combout\ = !\column[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \column[2]~input_o\,
	combout => \KEY[0]~3_combout\);

-- Location: FF_X60_Y38_N13
\KEY[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \KEY[0]~3_combout\,
	ena => \KEY[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \KEY[0]~reg0_q\);

-- Location: LCCOMB_X60_Y38_N4
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\KEY[1]~reg0_q\ & (!\KEY[2]~reg0_q\ & (!\KEY[3]~reg0_q\ & !\KEY[0]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~reg0_q\,
	datab => \KEY[2]~reg0_q\,
	datac => \KEY[3]~reg0_q\,
	datad => \KEY[0]~reg0_q\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X59_Y38_N0
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ((\KEY[8]~reg0_q\) # (!\Equal0~0_combout\)) # (!\Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datac => \KEY[8]~reg0_q\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: FF_X59_Y38_N1
\Pressed~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputclkctrl_outclk\,
	d => \Equal0~2_combout\,
	ena => \scan_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pressed~reg0_q\);

ww_row(0) <= \row[0]~output_o\;

ww_row(1) <= \row[1]~output_o\;

ww_row(2) <= \row[2]~output_o\;

ww_Pressed <= \Pressed~output_o\;

ww_KEY(0) <= \KEY[0]~output_o\;

ww_KEY(1) <= \KEY[1]~output_o\;

ww_KEY(2) <= \KEY[2]~output_o\;

ww_KEY(3) <= \KEY[3]~output_o\;

ww_KEY(4) <= \KEY[4]~output_o\;

ww_KEY(5) <= \KEY[5]~output_o\;

ww_KEY(6) <= \KEY[6]~output_o\;

ww_KEY(7) <= \KEY[7]~output_o\;

ww_KEY(8) <= \KEY[8]~output_o\;
END structure;


