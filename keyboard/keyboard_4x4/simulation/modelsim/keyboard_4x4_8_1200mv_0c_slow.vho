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

-- DATE "07/12/2026 11:45:36"

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

ENTITY 	keyboard_4x4 IS
    PORT (
	ck : IN std_logic;
	column : IN std_logic_vector(3 DOWNTO 0);
	row : OUT std_logic_vector(3 DOWNTO 0);
	S : OUT std_logic_vector(15 DOWNTO 0)
	);
END keyboard_4x4;

-- Design Ports Information
-- row[0]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[1]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[2]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[3]	=>  Location: PIN_82,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_167,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_166,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_164,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_161,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_160,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_159,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_148,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_147,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_146,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_145,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_139,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[3]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[2]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[0]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[1]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ck	=>  Location: PIN_149,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF keyboard_4x4 IS
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
SIGNAL ww_column : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_row : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(15 DOWNTO 0);
SIGNAL \rtl~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \row[0]~output_o\ : std_logic;
SIGNAL \row[1]~output_o\ : std_logic;
SIGNAL \row[2]~output_o\ : std_logic;
SIGNAL \row[3]~output_o\ : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \S[7]~output_o\ : std_logic;
SIGNAL \S[8]~output_o\ : std_logic;
SIGNAL \S[9]~output_o\ : std_logic;
SIGNAL \S[10]~output_o\ : std_logic;
SIGNAL \S[11]~output_o\ : std_logic;
SIGNAL \S[12]~output_o\ : std_logic;
SIGNAL \S[13]~output_o\ : std_logic;
SIGNAL \S[14]~output_o\ : std_logic;
SIGNAL \S[15]~output_o\ : std_logic;
SIGNAL \ck~input_o\ : std_logic;
SIGNAL \clk_cnt[0]~16_combout\ : std_logic;
SIGNAL \clk_cnt[13]~43\ : std_logic;
SIGNAL \clk_cnt[14]~44_combout\ : std_logic;
SIGNAL \clk_cnt[14]~45\ : std_logic;
SIGNAL \clk_cnt[15]~46_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
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
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \rtl~0clkctrl_outclk\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \row_state[1]~feeder_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \column[3]~input_o\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \S_buffer[0]~0_combout\ : std_logic;
SIGNAL \S[0]~reg0feeder_combout\ : std_logic;
SIGNAL \column[0]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \S_buffer[12]~2_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \S_buffer[8]~1_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \S_buffer[5]~3_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \column[2]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \column[1]~input_o\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Add14~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \S[0]~reg0_q\ : std_logic;
SIGNAL \S[1]~reg0feeder_combout\ : std_logic;
SIGNAL \S[1]~reg0_q\ : std_logic;
SIGNAL \S[2]~reg0feeder_combout\ : std_logic;
SIGNAL \S[2]~reg0_q\ : std_logic;
SIGNAL \S[3]~reg0feeder_combout\ : std_logic;
SIGNAL \S[3]~reg0_q\ : std_logic;
SIGNAL \S[4]~reg0feeder_combout\ : std_logic;
SIGNAL \S[4]~reg0_q\ : std_logic;
SIGNAL \S[5]~reg0feeder_combout\ : std_logic;
SIGNAL \S[5]~reg0_q\ : std_logic;
SIGNAL \S[6]~reg0feeder_combout\ : std_logic;
SIGNAL \S[6]~reg0_q\ : std_logic;
SIGNAL \S[7]~reg0feeder_combout\ : std_logic;
SIGNAL \S[7]~reg0_q\ : std_logic;
SIGNAL \S[8]~reg0feeder_combout\ : std_logic;
SIGNAL \S[8]~reg0_q\ : std_logic;
SIGNAL \S[9]~reg0feeder_combout\ : std_logic;
SIGNAL \S[9]~reg0_q\ : std_logic;
SIGNAL \S[10]~reg0feeder_combout\ : std_logic;
SIGNAL \S[10]~reg0_q\ : std_logic;
SIGNAL \S[11]~reg0feeder_combout\ : std_logic;
SIGNAL \S[11]~reg0_q\ : std_logic;
SIGNAL \S[12]~reg0feeder_combout\ : std_logic;
SIGNAL \S[12]~reg0_q\ : std_logic;
SIGNAL \S[13]~reg0feeder_combout\ : std_logic;
SIGNAL \S[13]~reg0_q\ : std_logic;
SIGNAL \S[14]~reg0feeder_combout\ : std_logic;
SIGNAL \S[14]~reg0_q\ : std_logic;
SIGNAL \S[15]~reg0feeder_combout\ : std_logic;
SIGNAL \S[15]~reg0_q\ : std_logic;
SIGNAL row_state : std_logic_vector(3 DOWNTO 0);
SIGNAL clk_cnt : std_logic_vector(15 DOWNTO 0);
SIGNAL S_buffer : std_logic_vector(15 DOWNTO 0);
SIGNAL ALT_INV_row_state : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_ck <= ck;
ww_column <= column;
row <= ww_row;
S <= ww_S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rtl~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~0_combout\);
ALT_INV_row_state(2) <= NOT row_state(2);
ALT_INV_row_state(1) <= NOT row_state(1);
ALT_INV_row_state(0) <= NOT row_state(0);

-- Location: IOOBUF_X19_Y0_N2
\row[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_row_state(0),
	devoe => ww_devoe,
	o => \row[0]~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\row[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_row_state(1),
	devoe => ww_devoe,
	o => \row[1]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\row[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_row_state(2),
	devoe => ww_devoe,
	o => \row[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\row[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => row_state(3),
	devoe => ww_devoe,
	o => \row[3]~output_o\);

-- Location: IOOBUF_X41_Y23_N16
\S[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S[0]~reg0_q\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X41_Y19_N2
\S[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S[1]~reg0_q\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X41_Y19_N9
\S[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S[2]~reg0_q\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X41_Y18_N2
\S[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S[3]~reg0_q\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X41_Y18_N16
\S[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S[4]~reg0_q\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X41_Y18_N23
\S[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S[5]~reg0_q\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X41_Y14_N2
\S[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S[6]~reg0_q\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X41_Y14_N9
\S[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S[7]~reg0_q\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X41_Y14_N16
\S[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S[8]~reg0_q\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X41_Y13_N9
\S[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S[9]~reg0_q\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X41_Y13_N16
\S[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S[10]~reg0_q\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X41_Y13_N23
\S[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S[11]~reg0_q\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X41_Y12_N2
\S[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S[12]~reg0_q\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X41_Y10_N2
\S[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S[13]~reg0_q\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X41_Y9_N16
\S[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S[14]~reg0_q\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X41_Y9_N23
\S[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S[15]~reg0_q\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

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

-- Location: LCCOMB_X40_Y16_N0
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

-- Location: LCCOMB_X40_Y16_N26
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

-- Location: LCCOMB_X40_Y16_N28
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

-- Location: FF_X40_Y16_N29
\clk_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \clk_cnt[14]~44_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(14));

-- Location: LCCOMB_X40_Y16_N30
\clk_cnt[15]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_cnt[15]~46_combout\ = clk_cnt(15) $ (\clk_cnt[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(15),
	cin => \clk_cnt[14]~45\,
	combout => \clk_cnt[15]~46_combout\);

-- Location: FF_X40_Y16_N31
\clk_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \clk_cnt[15]~46_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(15));

-- Location: LCCOMB_X40_Y15_N20
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!clk_cnt(7) & (((!clk_cnt(5) & !clk_cnt(4))) # (!clk_cnt(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(5),
	datab => clk_cnt(7),
	datac => clk_cnt(6),
	datad => clk_cnt(4),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X40_Y15_N12
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (clk_cnt(8) & (clk_cnt(9) & !\LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(8),
	datac => clk_cnt(9),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X40_Y15_N0
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (clk_cnt(15) & (clk_cnt(14) & ((\LessThan0~1_combout\) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(15),
	datab => clk_cnt(14),
	datac => \Equal0~0_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: FF_X40_Y15_N19
\clk_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	asdata => \clk_cnt[0]~16_combout\,
	sclr => \LessThan0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(0));

-- Location: LCCOMB_X40_Y16_N2
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

-- Location: FF_X40_Y16_N3
\clk_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \clk_cnt[1]~18_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(1));

-- Location: LCCOMB_X40_Y16_N4
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

-- Location: FF_X40_Y16_N5
\clk_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \clk_cnt[2]~20_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(2));

-- Location: LCCOMB_X40_Y16_N6
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

-- Location: FF_X40_Y16_N7
\clk_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \clk_cnt[3]~22_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(3));

-- Location: LCCOMB_X40_Y16_N8
\clk_cnt[4]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_cnt[4]~24_combout\ = (clk_cnt(4) & (\clk_cnt[3]~23\ $ (GND))) # (!clk_cnt(4) & (!\clk_cnt[3]~23\ & VCC))
-- \clk_cnt[4]~25\ = CARRY((clk_cnt(4) & !\clk_cnt[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(4),
	datad => VCC,
	cin => \clk_cnt[3]~23\,
	combout => \clk_cnt[4]~24_combout\,
	cout => \clk_cnt[4]~25\);

-- Location: FF_X40_Y16_N9
\clk_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \clk_cnt[4]~24_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(4));

-- Location: LCCOMB_X40_Y16_N10
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

-- Location: FF_X40_Y16_N11
\clk_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \clk_cnt[5]~26_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(5));

-- Location: LCCOMB_X40_Y16_N12
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

-- Location: FF_X40_Y16_N13
\clk_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \clk_cnt[6]~28_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(6));

-- Location: LCCOMB_X40_Y16_N14
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

-- Location: FF_X40_Y16_N15
\clk_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \clk_cnt[7]~30_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(7));

-- Location: LCCOMB_X40_Y16_N16
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

-- Location: FF_X40_Y16_N17
\clk_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \clk_cnt[8]~32_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(8));

-- Location: LCCOMB_X40_Y16_N18
\clk_cnt[9]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_cnt[9]~34_combout\ = (clk_cnt(9) & (!\clk_cnt[8]~33\)) # (!clk_cnt(9) & ((\clk_cnt[8]~33\) # (GND)))
-- \clk_cnt[9]~35\ = CARRY((!\clk_cnt[8]~33\) # (!clk_cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_cnt(9),
	datad => VCC,
	cin => \clk_cnt[8]~33\,
	combout => \clk_cnt[9]~34_combout\,
	cout => \clk_cnt[9]~35\);

-- Location: FF_X40_Y16_N19
\clk_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \clk_cnt[9]~34_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(9));

-- Location: LCCOMB_X40_Y16_N20
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

-- Location: FF_X40_Y16_N21
\clk_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \clk_cnt[10]~36_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(10));

-- Location: LCCOMB_X40_Y16_N22
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

-- Location: FF_X40_Y16_N23
\clk_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \clk_cnt[11]~38_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(11));

-- Location: LCCOMB_X40_Y16_N24
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

-- Location: FF_X40_Y16_N25
\clk_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \clk_cnt[12]~40_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(12));

-- Location: FF_X40_Y16_N27
\clk_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~input_o\,
	d => \clk_cnt[13]~42_combout\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_cnt(13));

-- Location: LCCOMB_X40_Y15_N10
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!clk_cnt(13) & (!clk_cnt(12) & (!clk_cnt(10) & !clk_cnt(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(13),
	datab => clk_cnt(12),
	datac => clk_cnt(10),
	datad => clk_cnt(11),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X40_Y15_N14
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (clk_cnt(15) & (clk_cnt(8) & (clk_cnt(9) & clk_cnt(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(15),
	datab => clk_cnt(8),
	datac => clk_cnt(9),
	datad => clk_cnt(14),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X40_Y15_N26
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!clk_cnt(1) & (!clk_cnt(0) & (!clk_cnt(2) & !clk_cnt(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(1),
	datab => clk_cnt(0),
	datac => clk_cnt(2),
	datad => clk_cnt(3),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X40_Y15_N16
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!clk_cnt(5) & (clk_cnt(4) & (clk_cnt(6) & !clk_cnt(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_cnt(5),
	datab => clk_cnt(4),
	datac => clk_cnt(6),
	datad => clk_cnt(7),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X40_Y15_N28
\rtl~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = LCELL((\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \rtl~0_combout\);

-- Location: CLKCTRL_G14
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

-- Location: LCCOMB_X32_Y18_N24
\Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!row_state(0) & (!row_state(1) & (!row_state(3) & !row_state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => row_state(0),
	datab => row_state(1),
	datac => row_state(3),
	datad => row_state(2),
	combout => \Decoder0~2_combout\);

-- Location: FF_X32_Y18_N29
\row_state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	asdata => \Decoder0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_state(2));

-- Location: LCCOMB_X32_Y18_N6
\Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!row_state(0) & (!row_state(1) & (row_state(3) & row_state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => row_state(0),
	datab => row_state(1),
	datac => row_state(3),
	datad => row_state(2),
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X32_Y18_N18
\row_state[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \row_state[1]~feeder_combout\ = \Decoder0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Decoder0~1_combout\,
	combout => \row_state[1]~feeder_combout\);

-- Location: FF_X32_Y18_N19
\row_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \row_state[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_state(1));

-- Location: LCCOMB_X32_Y18_N22
\WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (!row_state(0) & ((row_state(1) & (row_state(3) & !row_state(2))) # (!row_state(1) & (row_state(3) $ (!row_state(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => row_state(0),
	datab => row_state(1),
	datac => row_state(3),
	datad => row_state(2),
	combout => \WideOr0~0_combout\);

-- Location: FF_X32_Y18_N23
\row_state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_state(3));

-- Location: LCCOMB_X32_Y18_N16
\Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (row_state(3) & (row_state(1) & (!row_state(0) & !row_state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => row_state(3),
	datab => row_state(1),
	datac => row_state(0),
	datad => row_state(2),
	combout => \Decoder0~0_combout\);

-- Location: FF_X32_Y18_N17
\row_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_state(0));

-- Location: IOIBUF_X7_Y0_N29
\column[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_column(3),
	o => \column[3]~input_o\);

-- Location: LCCOMB_X36_Y15_N12
\Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (!\column[3]~input_o\ & \Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \column[3]~input_o\,
	datad => \Decoder0~2_combout\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X32_Y18_N26
\S_buffer[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_buffer[0]~0_combout\ = ((row_state(1) & ((row_state(0)) # (row_state(2)))) # (!row_state(1) & (row_state(0) $ (!row_state(2))))) # (!row_state(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => row_state(3),
	datab => row_state(1),
	datac => row_state(0),
	datad => row_state(2),
	combout => \S_buffer[0]~0_combout\);

-- Location: FF_X36_Y15_N13
\S_buffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \Mux15~0_combout\,
	ena => \S_buffer[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_buffer(0));

-- Location: LCCOMB_X36_Y15_N8
\S[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S[0]~reg0feeder_combout\ = S_buffer(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => S_buffer(0),
	combout => \S[0]~reg0feeder_combout\);

-- Location: IOIBUF_X14_Y0_N1
\column[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_column(0),
	o => \column[0]~input_o\);

-- Location: LCCOMB_X32_Y18_N28
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (row_state(3) & (row_state(0) & (!row_state(2) & !row_state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => row_state(3),
	datab => row_state(0),
	datac => row_state(2),
	datad => row_state(1),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X32_Y17_N0
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\column[0]~input_o\ & \Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \column[0]~input_o\,
	datad => \Mux1~0_combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X32_Y18_N30
\S_buffer[12]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_buffer[12]~2_combout\ = (row_state(0)) # ((row_state(1) & ((row_state(2)) # (!row_state(3)))) # (!row_state(1) & (row_state(3) $ (row_state(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => row_state(0),
	datab => row_state(1),
	datac => row_state(3),
	datad => row_state(2),
	combout => \S_buffer[12]~2_combout\);

-- Location: FF_X32_Y17_N1
\S_buffer[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \Mux0~0_combout\,
	ena => \S_buffer[12]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_buffer(15));

-- Location: LCCOMB_X36_Y15_N0
\Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (!\column[0]~input_o\ & \Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \column[0]~input_o\,
	datad => \Decoder0~2_combout\,
	combout => \Mux12~0_combout\);

-- Location: FF_X36_Y15_N1
\S_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \Mux12~0_combout\,
	ena => \S_buffer[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_buffer(3));

-- Location: LCCOMB_X32_Y17_N10
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\column[0]~input_o\ & \Decoder0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \column[0]~input_o\,
	datad => \Decoder0~0_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X32_Y18_N12
\S_buffer[8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_buffer[8]~1_combout\ = (row_state(1)) # ((row_state(0) & ((row_state(2)) # (!row_state(3)))) # (!row_state(0) & (row_state(3) $ (row_state(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => row_state(0),
	datab => row_state(1),
	datac => row_state(3),
	datad => row_state(2),
	combout => \S_buffer[8]~1_combout\);

-- Location: FF_X32_Y17_N11
\S_buffer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \Mux4~0_combout\,
	ena => \S_buffer[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_buffer(11));

-- Location: LCCOMB_X32_Y18_N10
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (!\column[0]~input_o\ & \Decoder0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \column[0]~input_o\,
	datad => \Decoder0~1_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X32_Y18_N8
\S_buffer[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_buffer[5]~3_combout\ = (row_state(2)) # ((row_state(3) & (row_state(1) $ (!row_state(0)))) # (!row_state(3) & ((row_state(1)) # (row_state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => row_state(3),
	datab => row_state(1),
	datac => row_state(0),
	datad => row_state(2),
	combout => \S_buffer[5]~3_combout\);

-- Location: FF_X32_Y18_N11
\S_buffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \Mux8~0_combout\,
	ena => \S_buffer[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_buffer(7));

-- Location: LCCOMB_X35_Y17_N26
\LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (S_buffer(15) & ((S_buffer(3)) # ((S_buffer(11)) # (S_buffer(7))))) # (!S_buffer(15) & ((S_buffer(3) & ((S_buffer(11)) # (S_buffer(7)))) # (!S_buffer(3) & (S_buffer(11) & S_buffer(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S_buffer(15),
	datab => S_buffer(3),
	datac => S_buffer(11),
	datad => S_buffer(7),
	combout => \LessThan4~0_combout\);

-- Location: IOIBUF_X7_Y0_N15
\column[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_column(2),
	o => \column[2]~input_o\);

-- Location: LCCOMB_X32_Y17_N4
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\column[2]~input_o\ & \Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \column[2]~input_o\,
	datad => \Mux1~0_combout\,
	combout => \Mux2~0_combout\);

-- Location: FF_X32_Y17_N5
\S_buffer[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \Mux2~0_combout\,
	ena => \S_buffer[12]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_buffer(13));

-- Location: LCCOMB_X35_Y17_N14
\Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (!\column[2]~input_o\ & \Decoder0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \column[2]~input_o\,
	datad => \Decoder0~1_combout\,
	combout => \Mux10~0_combout\);

-- Location: FF_X35_Y17_N15
\S_buffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \Mux10~0_combout\,
	ena => \S_buffer[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_buffer(5));

-- Location: LCCOMB_X32_Y17_N14
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\column[2]~input_o\ & \Decoder0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \column[2]~input_o\,
	datad => \Decoder0~0_combout\,
	combout => \Mux6~0_combout\);

-- Location: FF_X32_Y17_N15
\S_buffer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \Mux6~0_combout\,
	ena => \S_buffer[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_buffer(9));

-- Location: LCCOMB_X36_Y15_N30
\Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (!\column[2]~input_o\ & \Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \column[2]~input_o\,
	datad => \Decoder0~2_combout\,
	combout => \Mux14~0_combout\);

-- Location: FF_X36_Y15_N31
\S_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \Mux14~0_combout\,
	ena => \S_buffer[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_buffer(1));

-- Location: LCCOMB_X35_Y17_N8
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (S_buffer(13) & ((S_buffer(5)) # ((S_buffer(9)) # (S_buffer(1))))) # (!S_buffer(13) & ((S_buffer(5) & ((S_buffer(9)) # (S_buffer(1)))) # (!S_buffer(5) & (S_buffer(9) & S_buffer(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S_buffer(13),
	datab => S_buffer(5),
	datac => S_buffer(9),
	datad => S_buffer(1),
	combout => \LessThan2~0_combout\);

-- Location: IOIBUF_X14_Y0_N22
\column[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_column(1),
	o => \column[1]~input_o\);

-- Location: LCCOMB_X32_Y17_N22
\Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (!\column[1]~input_o\ & \Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \column[1]~input_o\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: FF_X32_Y17_N23
\S_buffer[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \Mux1~1_combout\,
	ena => \S_buffer[12]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_buffer(14));

-- Location: LCCOMB_X32_Y17_N12
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\column[1]~input_o\ & \Decoder0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \column[1]~input_o\,
	datad => \Decoder0~0_combout\,
	combout => \Mux5~0_combout\);

-- Location: FF_X32_Y17_N13
\S_buffer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \Mux5~0_combout\,
	ena => \S_buffer[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_buffer(10));

-- Location: LCCOMB_X36_Y15_N2
\Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (!\column[1]~input_o\ & \Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \column[1]~input_o\,
	datad => \Decoder0~2_combout\,
	combout => \Mux13~0_combout\);

-- Location: FF_X36_Y15_N3
\S_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \Mux13~0_combout\,
	ena => \S_buffer[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_buffer(2));

-- Location: LCCOMB_X32_Y18_N20
\Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (!\column[1]~input_o\ & \Decoder0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \column[1]~input_o\,
	datad => \Decoder0~1_combout\,
	combout => \Mux9~0_combout\);

-- Location: FF_X32_Y18_N21
\S_buffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \Mux9~0_combout\,
	ena => \S_buffer[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_buffer(6));

-- Location: LCCOMB_X35_Y17_N4
\Add14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add14~0_combout\ = (S_buffer(14) & (!S_buffer(10) & (!S_buffer(2) & !S_buffer(6)))) # (!S_buffer(14) & ((S_buffer(10) & (!S_buffer(2) & !S_buffer(6))) # (!S_buffer(10) & ((!S_buffer(6)) # (!S_buffer(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S_buffer(14),
	datab => S_buffer(10),
	datac => S_buffer(2),
	datad => S_buffer(6),
	combout => \Add14~0_combout\);

-- Location: LCCOMB_X32_Y17_N24
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\column[3]~input_o\ & \Decoder0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \column[3]~input_o\,
	datad => \Decoder0~0_combout\,
	combout => \Mux7~0_combout\);

-- Location: FF_X32_Y17_N25
\S_buffer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \Mux7~0_combout\,
	ena => \S_buffer[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_buffer(8));

-- Location: LCCOMB_X32_Y17_N26
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\column[3]~input_o\ & \Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \column[3]~input_o\,
	datad => \Mux1~0_combout\,
	combout => \Mux3~0_combout\);

-- Location: FF_X32_Y17_N27
\S_buffer[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \Mux3~0_combout\,
	ena => \S_buffer[12]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_buffer(12));

-- Location: LCCOMB_X32_Y18_N0
\Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (!\column[3]~input_o\ & \Decoder0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \column[3]~input_o\,
	datad => \Decoder0~1_combout\,
	combout => \Mux11~0_combout\);

-- Location: FF_X32_Y18_N1
\S_buffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \Mux11~0_combout\,
	ena => \S_buffer[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_buffer(4));

-- Location: LCCOMB_X35_Y17_N12
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (S_buffer(8) & ((S_buffer(12)) # ((S_buffer(0)) # (S_buffer(4))))) # (!S_buffer(8) & ((S_buffer(12) & ((S_buffer(0)) # (S_buffer(4)))) # (!S_buffer(12) & (S_buffer(0) & S_buffer(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => S_buffer(8),
	datab => S_buffer(12),
	datac => S_buffer(0),
	datad => S_buffer(4),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X35_Y17_N6
\LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (\LessThan4~0_combout\ & (!\LessThan2~0_combout\ & (\Add14~0_combout\ & !\LessThan1~0_combout\))) # (!\LessThan4~0_combout\ & ((\LessThan2~0_combout\ & (\Add14~0_combout\ & !\LessThan1~0_combout\)) # (!\LessThan2~0_combout\ & 
-- ((\Add14~0_combout\) # (!\LessThan1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~0_combout\,
	datab => \LessThan2~0_combout\,
	datac => \Add14~0_combout\,
	datad => \LessThan1~0_combout\,
	combout => \LessThan5~0_combout\);

-- Location: FF_X36_Y15_N9
\S[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \S[0]~reg0feeder_combout\,
	ena => \LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[0]~reg0_q\);

-- Location: LCCOMB_X35_Y17_N16
\S[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S[1]~reg0feeder_combout\ = S_buffer(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => S_buffer(1),
	combout => \S[1]~reg0feeder_combout\);

-- Location: FF_X35_Y17_N17
\S[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \S[1]~reg0feeder_combout\,
	ena => \LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[1]~reg0_q\);

-- Location: LCCOMB_X36_Y15_N10
\S[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S[2]~reg0feeder_combout\ = S_buffer(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => S_buffer(2),
	combout => \S[2]~reg0feeder_combout\);

-- Location: FF_X36_Y15_N11
\S[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \S[2]~reg0feeder_combout\,
	ena => \LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[2]~reg0_q\);

-- Location: LCCOMB_X35_Y17_N2
\S[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S[3]~reg0feeder_combout\ = S_buffer(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => S_buffer(3),
	combout => \S[3]~reg0feeder_combout\);

-- Location: FF_X35_Y17_N3
\S[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \S[3]~reg0feeder_combout\,
	ena => \LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[3]~reg0_q\);

-- Location: LCCOMB_X36_Y15_N4
\S[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S[4]~reg0feeder_combout\ = S_buffer(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => S_buffer(4),
	combout => \S[4]~reg0feeder_combout\);

-- Location: FF_X36_Y15_N5
\S[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \S[4]~reg0feeder_combout\,
	ena => \LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[4]~reg0_q\);

-- Location: LCCOMB_X35_Y17_N20
\S[5]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S[5]~reg0feeder_combout\ = S_buffer(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => S_buffer(5),
	combout => \S[5]~reg0feeder_combout\);

-- Location: FF_X35_Y17_N21
\S[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \S[5]~reg0feeder_combout\,
	ena => \LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[5]~reg0_q\);

-- Location: LCCOMB_X36_Y15_N6
\S[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S[6]~reg0feeder_combout\ = S_buffer(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => S_buffer(6),
	combout => \S[6]~reg0feeder_combout\);

-- Location: FF_X36_Y15_N7
\S[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \S[6]~reg0feeder_combout\,
	ena => \LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[6]~reg0_q\);

-- Location: LCCOMB_X35_Y17_N30
\S[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S[7]~reg0feeder_combout\ = S_buffer(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => S_buffer(7),
	combout => \S[7]~reg0feeder_combout\);

-- Location: FF_X35_Y17_N31
\S[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \S[7]~reg0feeder_combout\,
	ena => \LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[7]~reg0_q\);

-- Location: LCCOMB_X36_Y15_N24
\S[8]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S[8]~reg0feeder_combout\ = S_buffer(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => S_buffer(8),
	combout => \S[8]~reg0feeder_combout\);

-- Location: FF_X36_Y15_N25
\S[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \S[8]~reg0feeder_combout\,
	ena => \LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[8]~reg0_q\);

-- Location: LCCOMB_X36_Y15_N18
\S[9]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S[9]~reg0feeder_combout\ = S_buffer(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => S_buffer(9),
	combout => \S[9]~reg0feeder_combout\);

-- Location: FF_X36_Y15_N19
\S[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \S[9]~reg0feeder_combout\,
	ena => \LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[9]~reg0_q\);

-- Location: LCCOMB_X35_Y17_N0
\S[10]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S[10]~reg0feeder_combout\ = S_buffer(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => S_buffer(10),
	combout => \S[10]~reg0feeder_combout\);

-- Location: FF_X35_Y17_N1
\S[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \S[10]~reg0feeder_combout\,
	ena => \LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[10]~reg0_q\);

-- Location: LCCOMB_X35_Y17_N18
\S[11]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S[11]~reg0feeder_combout\ = S_buffer(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => S_buffer(11),
	combout => \S[11]~reg0feeder_combout\);

-- Location: FF_X35_Y17_N19
\S[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \S[11]~reg0feeder_combout\,
	ena => \LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[11]~reg0_q\);

-- Location: LCCOMB_X35_Y17_N28
\S[12]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S[12]~reg0feeder_combout\ = S_buffer(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => S_buffer(12),
	combout => \S[12]~reg0feeder_combout\);

-- Location: FF_X35_Y17_N29
\S[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \S[12]~reg0feeder_combout\,
	ena => \LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[12]~reg0_q\);

-- Location: LCCOMB_X35_Y17_N22
\S[13]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S[13]~reg0feeder_combout\ = S_buffer(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => S_buffer(13),
	combout => \S[13]~reg0feeder_combout\);

-- Location: FF_X35_Y17_N23
\S[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \S[13]~reg0feeder_combout\,
	ena => \LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[13]~reg0_q\);

-- Location: LCCOMB_X35_Y17_N24
\S[14]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S[14]~reg0feeder_combout\ = S_buffer(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => S_buffer(14),
	combout => \S[14]~reg0feeder_combout\);

-- Location: FF_X35_Y17_N25
\S[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \S[14]~reg0feeder_combout\,
	ena => \LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[14]~reg0_q\);

-- Location: LCCOMB_X35_Y17_N10
\S[15]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S[15]~reg0feeder_combout\ = S_buffer(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => S_buffer(15),
	combout => \S[15]~reg0feeder_combout\);

-- Location: FF_X35_Y17_N11
\S[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \S[15]~reg0feeder_combout\,
	ena => \LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[15]~reg0_q\);

ww_row(0) <= \row[0]~output_o\;

ww_row(1) <= \row[1]~output_o\;

ww_row(2) <= \row[2]~output_o\;

ww_row(3) <= \row[3]~output_o\;

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(7) <= \S[7]~output_o\;

ww_S(8) <= \S[8]~output_o\;

ww_S(9) <= \S[9]~output_o\;

ww_S(10) <= \S[10]~output_o\;

ww_S(11) <= \S[11]~output_o\;

ww_S(12) <= \S[12]~output_o\;

ww_S(13) <= \S[13]~output_o\;

ww_S(14) <= \S[14]~output_o\;

ww_S(15) <= \S[15]~output_o\;
END structure;


