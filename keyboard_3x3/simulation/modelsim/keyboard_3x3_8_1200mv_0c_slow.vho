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

-- DATE "07/07/2026 10:54:08"

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

ENTITY 	keyboard_3x3 IS
    PORT (
	clk_10ms : IN std_logic;
	column : IN std_logic_vector(2 DOWNTO 0);
	row : BUFFER std_logic_vector(2 DOWNTO 0);
	S : BUFFER std_logic_vector(8 DOWNTO 0)
	);
END keyboard_3x3;

-- Design Ports Information
-- row[0]	=>  Location: PIN_174,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[1]	=>  Location: PIN_182,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[2]	=>  Location: PIN_184,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_185,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_183,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_186,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_176,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_168,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_167,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_171,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_169,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_177,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_10ms	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[2]	=>  Location: PIN_181,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[1]	=>  Location: PIN_175,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- column[0]	=>  Location: PIN_173,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clk_10ms : std_logic;
SIGNAL ww_column : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_row : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(8 DOWNTO 0);
SIGNAL \clk_10ms~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \row[0]~output_o\ : std_logic;
SIGNAL \row[1]~output_o\ : std_logic;
SIGNAL \row[2]~output_o\ : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \S[7]~output_o\ : std_logic;
SIGNAL \S[8]~output_o\ : std_logic;
SIGNAL \clk_10ms~input_o\ : std_logic;
SIGNAL \clk_10ms~inputclkctrl_outclk\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \row[2]~reg0_q\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \row[1]~reg0_q\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \row[0]~reg0_q\ : std_logic;
SIGNAL \column[2]~input_o\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \S_buffer[0]~0_combout\ : std_logic;
SIGNAL \S[0]~reg0feeder_combout\ : std_logic;
SIGNAL \S[0]~reg0_q\ : std_logic;
SIGNAL \column[1]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \S[1]~reg0feeder_combout\ : std_logic;
SIGNAL \S[1]~reg0_q\ : std_logic;
SIGNAL \column[0]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \S[2]~reg0feeder_combout\ : std_logic;
SIGNAL \S[2]~reg0_q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \S_buffer[3]~1_combout\ : std_logic;
SIGNAL \S[3]~reg0feeder_combout\ : std_logic;
SIGNAL \S[3]~reg0_q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \S[4]~reg0feeder_combout\ : std_logic;
SIGNAL \S[4]~reg0_q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \S[5]~reg0feeder_combout\ : std_logic;
SIGNAL \S[5]~reg0_q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \S_buffer[6]~2_combout\ : std_logic;
SIGNAL \S[6]~reg0feeder_combout\ : std_logic;
SIGNAL \S[6]~reg0_q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \S[7]~reg0feeder_combout\ : std_logic;
SIGNAL \S[7]~reg0_q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \S[8]~reg0feeder_combout\ : std_logic;
SIGNAL \S[8]~reg0_q\ : std_logic;
SIGNAL S_buffer : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_clk_10ms <= clk_10ms;
ww_column <= column;
row <= ww_row;
S <= ww_S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_10ms~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_10ms~input_o\);

-- Location: IOOBUF_X41_Y25_N23
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

-- Location: IOOBUF_X39_Y29_N30
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

-- Location: IOOBUF_X37_Y29_N16
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

-- Location: IOOBUF_X35_Y29_N2
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

-- Location: IOOBUF_X37_Y29_N2
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

-- Location: IOOBUF_X35_Y29_N9
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

-- Location: IOOBUF_X41_Y27_N23
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

-- Location: IOOBUF_X41_Y23_N9
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

-- Location: IOOBUF_X41_Y23_N16
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

-- Location: IOOBUF_X41_Y24_N9
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

-- Location: IOOBUF_X41_Y23_N2
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

-- Location: IOOBUF_X41_Y27_N16
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

-- Location: IOIBUF_X0_Y14_N1
\clk_10ms~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_10ms,
	o => \clk_10ms~input_o\);

-- Location: CLKCTRL_G4
\clk_10ms~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_10ms~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_10ms~inputclkctrl_outclk\);

-- Location: LCCOMB_X38_Y25_N24
\Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = ((\row[0]~reg0_q\) # (!\row[2]~reg0_q\)) # (!\row[1]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~reg0_q\,
	datac => \row[2]~reg0_q\,
	datad => \row[0]~reg0_q\,
	combout => \Decoder0~2_combout\);

-- Location: FF_X38_Y25_N25
\row[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10ms~inputclkctrl_outclk\,
	d => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row[2]~reg0_q\);

-- Location: LCCOMB_X38_Y25_N6
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

-- Location: FF_X38_Y25_N7
\row[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10ms~inputclkctrl_outclk\,
	d => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row[1]~reg0_q\);

-- Location: LCCOMB_X38_Y25_N16
\Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (\row[1]~reg0_q\) # ((!\row[2]~reg0_q\) # (!\row[0]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~reg0_q\,
	datac => \row[0]~reg0_q\,
	datad => \row[2]~reg0_q\,
	combout => \Decoder0~0_combout\);

-- Location: FF_X38_Y25_N17
\row[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10ms~inputclkctrl_outclk\,
	d => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \row[0]~reg0_q\);

-- Location: IOIBUF_X39_Y29_N8
\column[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_column(2),
	o => \column[2]~input_o\);

-- Location: LCCOMB_X38_Y25_N4
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\row[1]~reg0_q\ & (\row[0]~reg0_q\ & (!\column[2]~input_o\ & !\row[2]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~reg0_q\,
	datab => \row[0]~reg0_q\,
	datac => \column[2]~input_o\,
	datad => \row[2]~reg0_q\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X38_Y25_N2
\S_buffer[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_buffer[0]~0_combout\ = (\row[1]~reg0_q\ $ (!\row[0]~reg0_q\)) # (!\row[2]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[1]~reg0_q\,
	datab => \row[2]~reg0_q\,
	datad => \row[0]~reg0_q\,
	combout => \S_buffer[0]~0_combout\);

-- Location: FF_X38_Y25_N5
\S_buffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10ms~inputclkctrl_outclk\,
	d => \Mux8~0_combout\,
	ena => \S_buffer[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_buffer(0));

-- Location: LCCOMB_X37_Y25_N0
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

-- Location: FF_X37_Y25_N1
\S[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10ms~inputclkctrl_outclk\,
	d => \S[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[0]~reg0_q\);

-- Location: IOIBUF_X41_Y25_N15
\column[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_column(1),
	o => \column[1]~input_o\);

-- Location: LCCOMB_X38_Y25_N30
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\column[1]~input_o\ & (\row[0]~reg0_q\ & (\row[1]~reg0_q\ & !\row[2]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \column[1]~input_o\,
	datab => \row[0]~reg0_q\,
	datac => \row[1]~reg0_q\,
	datad => \row[2]~reg0_q\,
	combout => \Mux7~0_combout\);

-- Location: FF_X38_Y25_N31
\S_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10ms~inputclkctrl_outclk\,
	d => \Mux7~0_combout\,
	ena => \S_buffer[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_buffer(1));

-- Location: LCCOMB_X38_Y25_N10
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

-- Location: FF_X38_Y25_N11
\S[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10ms~inputclkctrl_outclk\,
	d => \S[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[1]~reg0_q\);

-- Location: IOIBUF_X41_Y24_N1
\column[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_column(0),
	o => \column[0]~input_o\);

-- Location: LCCOMB_X38_Y25_N28
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\column[0]~input_o\ & (\row[0]~reg0_q\ & (\row[1]~reg0_q\ & !\row[2]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \column[0]~input_o\,
	datab => \row[0]~reg0_q\,
	datac => \row[1]~reg0_q\,
	datad => \row[2]~reg0_q\,
	combout => \Mux6~0_combout\);

-- Location: FF_X38_Y25_N29
\S_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10ms~inputclkctrl_outclk\,
	d => \Mux6~0_combout\,
	ena => \S_buffer[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_buffer(2));

-- Location: LCCOMB_X37_Y25_N2
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

-- Location: FF_X37_Y25_N3
\S[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10ms~inputclkctrl_outclk\,
	d => \S[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[2]~reg0_q\);

-- Location: LCCOMB_X39_Y25_N24
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\row[0]~reg0_q\ & (!\row[1]~reg0_q\ & (!\column[2]~input_o\ & \row[2]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~reg0_q\,
	datab => \row[1]~reg0_q\,
	datac => \column[2]~input_o\,
	datad => \row[2]~reg0_q\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X39_Y25_N8
\S_buffer[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_buffer[3]~1_combout\ = (\row[0]~reg0_q\ $ (!\row[2]~reg0_q\)) # (!\row[1]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \row[1]~reg0_q\,
	datac => \row[0]~reg0_q\,
	datad => \row[2]~reg0_q\,
	combout => \S_buffer[3]~1_combout\);

-- Location: FF_X39_Y25_N25
\S_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10ms~inputclkctrl_outclk\,
	d => \Mux5~0_combout\,
	ena => \S_buffer[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_buffer(3));

-- Location: LCCOMB_X40_Y25_N4
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

-- Location: FF_X40_Y25_N5
\S[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10ms~inputclkctrl_outclk\,
	d => \S[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[3]~reg0_q\);

-- Location: LCCOMB_X39_Y25_N14
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\column[1]~input_o\ & (!\row[1]~reg0_q\ & (\row[0]~reg0_q\ & \row[2]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \column[1]~input_o\,
	datab => \row[1]~reg0_q\,
	datac => \row[0]~reg0_q\,
	datad => \row[2]~reg0_q\,
	combout => \Mux4~0_combout\);

-- Location: FF_X39_Y25_N15
\S_buffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10ms~inputclkctrl_outclk\,
	d => \Mux4~0_combout\,
	ena => \S_buffer[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_buffer(4));

-- Location: LCCOMB_X40_Y25_N6
\S[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S[4]~reg0feeder_combout\ = S_buffer(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => S_buffer(4),
	combout => \S[4]~reg0feeder_combout\);

-- Location: FF_X40_Y25_N7
\S[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10ms~inputclkctrl_outclk\,
	d => \S[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[4]~reg0_q\);

-- Location: LCCOMB_X39_Y25_N0
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\row[0]~reg0_q\ & (!\row[1]~reg0_q\ & (!\column[0]~input_o\ & \row[2]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~reg0_q\,
	datab => \row[1]~reg0_q\,
	datac => \column[0]~input_o\,
	datad => \row[2]~reg0_q\,
	combout => \Mux3~0_combout\);

-- Location: FF_X39_Y25_N1
\S_buffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10ms~inputclkctrl_outclk\,
	d => \Mux3~0_combout\,
	ena => \S_buffer[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_buffer(5));

-- Location: LCCOMB_X40_Y25_N0
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

-- Location: FF_X40_Y25_N1
\S[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10ms~inputclkctrl_outclk\,
	d => \S[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[5]~reg0_q\);

-- Location: LCCOMB_X39_Y25_N22
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\row[0]~reg0_q\ & (\row[1]~reg0_q\ & (!\column[2]~input_o\ & \row[2]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~reg0_q\,
	datab => \row[1]~reg0_q\,
	datac => \column[2]~input_o\,
	datad => \row[2]~reg0_q\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X39_Y25_N2
\S_buffer[6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \S_buffer[6]~2_combout\ = (\row[1]~reg0_q\ $ (!\row[2]~reg0_q\)) # (!\row[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~reg0_q\,
	datac => \row[1]~reg0_q\,
	datad => \row[2]~reg0_q\,
	combout => \S_buffer[6]~2_combout\);

-- Location: FF_X39_Y25_N23
\S_buffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10ms~inputclkctrl_outclk\,
	d => \Mux2~0_combout\,
	ena => \S_buffer[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_buffer(6));

-- Location: LCCOMB_X40_Y25_N30
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

-- Location: FF_X40_Y25_N31
\S[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10ms~inputclkctrl_outclk\,
	d => \S[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[6]~reg0_q\);

-- Location: LCCOMB_X39_Y25_N20
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\column[1]~input_o\ & (\row[1]~reg0_q\ & (!\row[0]~reg0_q\ & \row[2]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \column[1]~input_o\,
	datab => \row[1]~reg0_q\,
	datac => \row[0]~reg0_q\,
	datad => \row[2]~reg0_q\,
	combout => \Mux1~0_combout\);

-- Location: FF_X39_Y25_N21
\S_buffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10ms~inputclkctrl_outclk\,
	d => \Mux1~0_combout\,
	ena => \S_buffer[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_buffer(7));

-- Location: LCCOMB_X40_Y25_N12
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

-- Location: FF_X40_Y25_N13
\S[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10ms~inputclkctrl_outclk\,
	d => \S[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[7]~reg0_q\);

-- Location: LCCOMB_X39_Y25_N10
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\row[0]~reg0_q\ & (\row[1]~reg0_q\ & (!\column[0]~input_o\ & \row[2]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row[0]~reg0_q\,
	datab => \row[1]~reg0_q\,
	datac => \column[0]~input_o\,
	datad => \row[2]~reg0_q\,
	combout => \Mux0~0_combout\);

-- Location: FF_X39_Y25_N11
\S_buffer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10ms~inputclkctrl_outclk\,
	d => \Mux0~0_combout\,
	ena => \S_buffer[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_buffer(8));

-- Location: LCCOMB_X40_Y25_N2
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

-- Location: FF_X40_Y25_N3
\S[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10ms~inputclkctrl_outclk\,
	d => \S[8]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S[8]~reg0_q\);

ww_row(0) <= \row[0]~output_o\;

ww_row(1) <= \row[1]~output_o\;

ww_row(2) <= \row[2]~output_o\;

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(7) <= \S[7]~output_o\;

ww_S(8) <= \S[8]~output_o\;
END structure;


