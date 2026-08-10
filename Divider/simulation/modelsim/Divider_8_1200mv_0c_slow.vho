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

-- DATE "07/07/2026 10:30:22"

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

ENTITY 	Divider IS
    PORT (
	rst_n : IN std_logic;
	clk_50MHz : IN std_logic;
	T_1s : BUFFER std_logic;
	T_100ms : BUFFER std_logic;
	T_50ms : BUFFER std_logic;
	T_20ms : BUFFER std_logic;
	T_10ms : BUFFER std_logic;
	T_1ms : BUFFER std_logic
	);
END Divider;

-- Design Ports Information
-- T_1s	=>  Location: PIN_230,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T_100ms	=>  Location: PIN_224,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T_50ms	=>  Location: PIN_189,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T_20ms	=>  Location: PIN_185,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T_10ms	=>  Location: PIN_169,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T_1ms	=>  Location: PIN_161,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50MHz	=>  Location: PIN_149,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_145,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Divider IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_clk_50MHz : std_logic;
SIGNAL ww_T_1s : std_logic;
SIGNAL ww_T_100ms : std_logic;
SIGNAL ww_T_50ms : std_logic;
SIGNAL ww_T_20ms : std_logic;
SIGNAL ww_T_10ms : std_logic;
SIGNAL ww_T_1ms : std_logic;
SIGNAL \clk_50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \T_1s~output_o\ : std_logic;
SIGNAL \T_100ms~output_o\ : std_logic;
SIGNAL \T_50ms~output_o\ : std_logic;
SIGNAL \T_20ms~output_o\ : std_logic;
SIGNAL \T_10ms~output_o\ : std_logic;
SIGNAL \T_1ms~output_o\ : std_logic;
SIGNAL \clk_50MHz~input_o\ : std_logic;
SIGNAL \clk_50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \cnt_1s~11_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \cnt_1s~10_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \cnt_1s~9_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \cnt_1s~8_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \cnt_1s~7_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \cnt_1s~6_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \cnt_1s~5_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \cnt_1s~4_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \cnt_1s~3_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \cnt_1s~2_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \cnt_1s~1_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \cnt_1s~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \T_1s~0_combout\ : std_logic;
SIGNAL \T_1s~reg0_q\ : std_logic;
SIGNAL \Add1~1_cout\ : std_logic;
SIGNAL \Add1~3_cout\ : std_logic;
SIGNAL \Add1~5_cout\ : std_logic;
SIGNAL \Add1~7_cout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \cnt_100ms~7_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \cnt_100ms~6_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \cnt_100ms~5_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \cnt_100ms~4_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \cnt_100ms~3_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \cnt_100ms~2_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \cnt_100ms~1_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \cnt_100ms~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \T_100ms~0_combout\ : std_logic;
SIGNAL \T_100ms~reg0_q\ : std_logic;
SIGNAL \Add2~1_cout\ : std_logic;
SIGNAL \Add2~3_cout\ : std_logic;
SIGNAL \Add2~5_cout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \cnt_50ms~7_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \cnt_50ms~5_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \cnt_50ms~4_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \cnt_50ms~3_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \cnt_50ms~2_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \cnt_50ms~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \cnt_50ms~0_combout\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \cnt_50ms~6_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \T_50ms~0_combout\ : std_logic;
SIGNAL \T_50ms~reg0_q\ : std_logic;
SIGNAL \Add3~1_cout\ : std_logic;
SIGNAL \Add3~3_cout\ : std_logic;
SIGNAL \Add3~5_cout\ : std_logic;
SIGNAL \Add3~7_cout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \cnt_20ms~5_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \cnt_20ms~4_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \cnt_20ms~3_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \cnt_20ms~2_combout\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \cnt_20ms~1_combout\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \cnt_20ms~0_combout\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \cnt_20ms~6_combout\ : std_logic;
SIGNAL \Equal3~4_combout\ : std_logic;
SIGNAL \T_20ms~0_combout\ : std_logic;
SIGNAL \T_20ms~reg0_q\ : std_logic;
SIGNAL \Add4~1_cout\ : std_logic;
SIGNAL \Add4~3_cout\ : std_logic;
SIGNAL \Add4~5_cout\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \cnt_10ms~6_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \cnt_10ms~5_combout\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \Add4~19\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \Add4~21\ : std_logic;
SIGNAL \Add4~22_combout\ : std_logic;
SIGNAL \cnt_10ms~4_combout\ : std_logic;
SIGNAL \Add4~23\ : std_logic;
SIGNAL \Add4~24_combout\ : std_logic;
SIGNAL \Add4~25\ : std_logic;
SIGNAL \Add4~26_combout\ : std_logic;
SIGNAL \cnt_10ms~3_combout\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~28_combout\ : std_logic;
SIGNAL \cnt_10ms~2_combout\ : std_logic;
SIGNAL \Add4~29\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \cnt_10ms~1_combout\ : std_logic;
SIGNAL \Add4~31\ : std_logic;
SIGNAL \Add4~32_combout\ : std_logic;
SIGNAL \cnt_10ms~0_combout\ : std_logic;
SIGNAL \Add4~33\ : std_logic;
SIGNAL \Add4~34_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Equal4~3_combout\ : std_logic;
SIGNAL \Equal4~4_combout\ : std_logic;
SIGNAL \T_10ms~0_combout\ : std_logic;
SIGNAL \T_10ms~reg0_q\ : std_logic;
SIGNAL \Add5~1_cout\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \cnt_1ms~4_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \cnt_1ms~3_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \cnt_1ms~2_combout\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \cnt_1ms~1_combout\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \Add5~19\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \cnt_1ms~0_combout\ : std_logic;
SIGNAL \Add5~21\ : std_logic;
SIGNAL \Add5~22_combout\ : std_logic;
SIGNAL \Add5~23\ : std_logic;
SIGNAL \Add5~24_combout\ : std_logic;
SIGNAL \Add5~25\ : std_logic;
SIGNAL \Add5~26_combout\ : std_logic;
SIGNAL \Add5~27\ : std_logic;
SIGNAL \Add5~28_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Equal5~3_combout\ : std_logic;
SIGNAL \Equal5~4_combout\ : std_logic;
SIGNAL \T_1ms~0_combout\ : std_logic;
SIGNAL \T_1ms~reg0_q\ : std_logic;
SIGNAL cnt_50ms : std_logic_vector(20 DOWNTO 0);
SIGNAL cnt_20ms : std_logic_vector(19 DOWNTO 0);
SIGNAL cnt_1s : std_logic_vector(24 DOWNTO 0);
SIGNAL cnt_1ms : std_logic_vector(15 DOWNTO 0);
SIGNAL cnt_10ms : std_logic_vector(18 DOWNTO 0);
SIGNAL cnt_100ms : std_logic_vector(21 DOWNTO 0);

BEGIN

ww_rst_n <= rst_n;
ww_clk_50MHz <= clk_50MHz;
T_1s <= ww_T_1s;
T_100ms <= ww_T_100ms;
T_50ms <= ww_T_50ms;
T_20ms <= ww_T_20ms;
T_10ms <= ww_T_10ms;
T_1ms <= ww_T_1ms;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50MHz~input_o\);

-- Location: IOOBUF_X7_Y29_N23
\T_1s~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T_1s~reg0_q\,
	devoe => ww_devoe,
	o => \T_1s~output_o\);

-- Location: IOOBUF_X9_Y29_N2
\T_100ms~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T_100ms~reg0_q\,
	devoe => ww_devoe,
	o => \T_100ms~output_o\);

-- Location: IOOBUF_X32_Y29_N16
\T_50ms~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T_50ms~reg0_q\,
	devoe => ww_devoe,
	o => \T_50ms~output_o\);

-- Location: IOOBUF_X35_Y29_N2
\T_20ms~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T_20ms~reg0_q\,
	devoe => ww_devoe,
	o => \T_20ms~output_o\);

-- Location: IOOBUF_X41_Y23_N2
\T_10ms~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T_10ms~reg0_q\,
	devoe => ww_devoe,
	o => \T_10ms~output_o\);

-- Location: IOOBUF_X41_Y18_N2
\T_1ms~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T_1ms~reg0_q\,
	devoe => ww_devoe,
	o => \T_1ms~output_o\);

-- Location: IOIBUF_X41_Y15_N22
\clk_50MHz~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50MHz,
	o => \clk_50MHz~input_o\);

-- Location: CLKCTRL_G8
\clk_50MHz~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50MHz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50MHz~inputclkctrl_outclk\);

-- Location: LCCOMB_X32_Y22_N8
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = cnt_1s(0) $ (VCC)
-- \Add0~1\ = CARRY(cnt_1s(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt_1s(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

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

-- Location: FF_X32_Y22_N9
\cnt_1s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1s(0));

-- Location: LCCOMB_X32_Y22_N10
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (cnt_1s(1) & (!\Add0~1\)) # (!cnt_1s(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!cnt_1s(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1s(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X32_Y22_N11
\cnt_1s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1s(1));

-- Location: LCCOMB_X32_Y22_N12
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (cnt_1s(2) & (\Add0~3\ $ (GND))) # (!cnt_1s(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((cnt_1s(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1s(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X32_Y22_N13
\cnt_1s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1s(2));

-- Location: LCCOMB_X32_Y22_N14
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (cnt_1s(3) & (!\Add0~5\)) # (!cnt_1s(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!cnt_1s(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_1s(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X32_Y22_N15
\cnt_1s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1s(3));

-- Location: LCCOMB_X32_Y22_N16
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (cnt_1s(4) & (\Add0~7\ $ (GND))) # (!cnt_1s(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((cnt_1s(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_1s(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X32_Y22_N17
\cnt_1s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1s(4));

-- Location: LCCOMB_X32_Y22_N18
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (cnt_1s(5) & (!\Add0~9\)) # (!cnt_1s(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!cnt_1s(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_1s(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X32_Y22_N19
\cnt_1s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1s(5));

-- Location: LCCOMB_X32_Y22_N20
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (cnt_1s(6) & (\Add0~11\ $ (GND))) # (!cnt_1s(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((cnt_1s(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_1s(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X32_Y22_N0
\cnt_1s~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_1s~11_combout\ = (\Add0~12_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~12_combout\,
	datad => \Equal0~7_combout\,
	combout => \cnt_1s~11_combout\);

-- Location: FF_X32_Y22_N1
\cnt_1s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_1s~11_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1s(6));

-- Location: LCCOMB_X32_Y22_N22
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (cnt_1s(7) & (!\Add0~13\)) # (!cnt_1s(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!cnt_1s(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1s(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X32_Y22_N23
\cnt_1s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1s(7));

-- Location: LCCOMB_X32_Y22_N24
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (cnt_1s(8) & (\Add0~15\ $ (GND))) # (!cnt_1s(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((cnt_1s(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_1s(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X32_Y22_N25
\cnt_1s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1s(8));

-- Location: LCCOMB_X32_Y22_N26
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (cnt_1s(9) & (!\Add0~17\)) # (!cnt_1s(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!cnt_1s(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1s(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X32_Y22_N27
\cnt_1s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1s(9));

-- Location: LCCOMB_X32_Y22_N28
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (cnt_1s(10) & (\Add0~19\ $ (GND))) # (!cnt_1s(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((cnt_1s(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_1s(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X32_Y22_N29
\cnt_1s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1s(10));

-- Location: LCCOMB_X32_Y22_N30
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (cnt_1s(11) & (!\Add0~21\)) # (!cnt_1s(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!cnt_1s(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1s(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X32_Y22_N6
\cnt_1s~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_1s~10_combout\ = (\Add0~22_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~22_combout\,
	datad => \Equal0~7_combout\,
	combout => \cnt_1s~10_combout\);

-- Location: FF_X32_Y22_N7
\cnt_1s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_1s~10_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1s(11));

-- Location: LCCOMB_X32_Y21_N0
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (cnt_1s(12) & (\Add0~23\ $ (GND))) # (!cnt_1s(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((cnt_1s(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1s(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X31_Y21_N26
\cnt_1s~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_1s~9_combout\ = (!\Equal0~7_combout\ & \Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datac => \Add0~24_combout\,
	combout => \cnt_1s~9_combout\);

-- Location: FF_X31_Y21_N27
\cnt_1s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_1s~9_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1s(12));

-- Location: LCCOMB_X32_Y21_N2
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (cnt_1s(13) & (!\Add0~25\)) # (!cnt_1s(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!cnt_1s(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1s(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X31_Y21_N10
\cnt_1s~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_1s~8_combout\ = (!\Equal0~7_combout\ & \Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~26_combout\,
	combout => \cnt_1s~8_combout\);

-- Location: FF_X31_Y21_N11
\cnt_1s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_1s~8_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1s(13));

-- Location: LCCOMB_X32_Y21_N4
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (cnt_1s(14) & (\Add0~27\ $ (GND))) # (!cnt_1s(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((cnt_1s(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1s(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X31_Y21_N0
\cnt_1s~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_1s~7_combout\ = (!\Equal0~7_combout\ & \Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~28_combout\,
	combout => \cnt_1s~7_combout\);

-- Location: FF_X31_Y21_N1
\cnt_1s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_1s~7_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1s(14));

-- Location: LCCOMB_X32_Y21_N6
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (cnt_1s(15) & (!\Add0~29\)) # (!cnt_1s(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!cnt_1s(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1s(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X32_Y21_N7
\cnt_1s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1s(15));

-- Location: LCCOMB_X32_Y21_N8
\Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (cnt_1s(16) & (\Add0~31\ $ (GND))) # (!cnt_1s(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((cnt_1s(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1s(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X32_Y21_N30
\cnt_1s~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_1s~6_combout\ = (\Add0~32_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~32_combout\,
	datad => \Equal0~7_combout\,
	combout => \cnt_1s~6_combout\);

-- Location: FF_X32_Y21_N31
\cnt_1s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_1s~6_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1s(16));

-- Location: LCCOMB_X31_Y21_N12
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (cnt_1s(13) & (cnt_1s(14) & (cnt_1s(16) & !cnt_1s(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1s(13),
	datab => cnt_1s(14),
	datac => cnt_1s(16),
	datad => cnt_1s(15),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X31_Y21_N4
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (cnt_1s(12) & (cnt_1s(11) & (!cnt_1s(9) & !cnt_1s(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1s(12),
	datab => cnt_1s(11),
	datac => cnt_1s(9),
	datad => cnt_1s(10),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X32_Y22_N2
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (cnt_1s(5) & (!cnt_1s(6) & (!cnt_1s(7) & !cnt_1s(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1s(5),
	datab => cnt_1s(6),
	datac => cnt_1s(7),
	datad => cnt_1s(8),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X32_Y21_N10
\Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (cnt_1s(17) & (!\Add0~33\)) # (!cnt_1s(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!cnt_1s(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1s(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X32_Y21_N11
\cnt_1s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1s(17));

-- Location: LCCOMB_X32_Y21_N12
\Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (cnt_1s(18) & (\Add0~35\ $ (GND))) # (!cnt_1s(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((cnt_1s(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_1s(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X32_Y21_N28
\cnt_1s~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_1s~5_combout\ = (!\Equal0~7_combout\ & \Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datad => \Add0~36_combout\,
	combout => \cnt_1s~5_combout\);

-- Location: FF_X32_Y21_N29
\cnt_1s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_1s~5_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1s(18));

-- Location: LCCOMB_X32_Y21_N14
\Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (cnt_1s(19) & (!\Add0~37\)) # (!cnt_1s(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!cnt_1s(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_1s(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X31_Y21_N6
\cnt_1s~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_1s~4_combout\ = (!\Equal0~7_combout\ & \Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datac => \Add0~38_combout\,
	combout => \cnt_1s~4_combout\);

-- Location: FF_X31_Y21_N7
\cnt_1s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_1s~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1s(19));

-- Location: LCCOMB_X32_Y21_N16
\Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (cnt_1s(20) & (\Add0~39\ $ (GND))) # (!cnt_1s(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((cnt_1s(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_1s(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X31_Y21_N28
\cnt_1s~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_1s~3_combout\ = (!\Equal0~7_combout\ & \Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~40_combout\,
	combout => \cnt_1s~3_combout\);

-- Location: FF_X31_Y21_N29
\cnt_1s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_1s~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1s(20));

-- Location: LCCOMB_X32_Y21_N18
\Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (cnt_1s(21) & (!\Add0~41\)) # (!cnt_1s(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!cnt_1s(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1s(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X32_Y21_N26
\cnt_1s~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_1s~2_combout\ = (!\Equal0~7_combout\ & \Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datad => \Add0~42_combout\,
	combout => \cnt_1s~2_combout\);

-- Location: FF_X32_Y21_N27
\cnt_1s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_1s~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1s(21));

-- Location: LCCOMB_X32_Y21_N20
\Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (cnt_1s(22) & (\Add0~43\ $ (GND))) # (!cnt_1s(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((cnt_1s(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1s(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X31_Y21_N16
\cnt_1s~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_1s~1_combout\ = (!\Equal0~7_combout\ & \Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datac => \Add0~44_combout\,
	combout => \cnt_1s~1_combout\);

-- Location: FF_X31_Y21_N17
\cnt_1s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_1s~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1s(22));

-- Location: LCCOMB_X32_Y21_N22
\Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (cnt_1s(23) & (!\Add0~45\)) # (!cnt_1s(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!cnt_1s(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1s(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X32_Y21_N23
\cnt_1s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1s(23));

-- Location: LCCOMB_X32_Y21_N24
\Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = \Add0~47\ $ (!cnt_1s(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cnt_1s(24),
	cin => \Add0~47\,
	combout => \Add0~48_combout\);

-- Location: LCCOMB_X31_Y21_N30
\cnt_1s~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_1s~0_combout\ = (!\Equal0~7_combout\ & \Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add0~48_combout\,
	combout => \cnt_1s~0_combout\);

-- Location: FF_X31_Y21_N31
\cnt_1s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_1s~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1s(24));

-- Location: LCCOMB_X31_Y21_N22
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (cnt_1s(24) & (cnt_1s(22) & (cnt_1s(21) & !cnt_1s(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1s(24),
	datab => cnt_1s(22),
	datac => cnt_1s(21),
	datad => cnt_1s(23),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X32_Y22_N4
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (cnt_1s(1) & (cnt_1s(0) & (cnt_1s(3) & cnt_1s(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1s(1),
	datab => cnt_1s(0),
	datac => cnt_1s(3),
	datad => cnt_1s(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X31_Y21_N20
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (cnt_1s(19) & (cnt_1s(20) & (!cnt_1s(17) & cnt_1s(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1s(19),
	datab => cnt_1s(20),
	datac => cnt_1s(17),
	datad => cnt_1s(18),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X31_Y21_N18
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Equal0~1_combout\ & (cnt_1s(4) & (\Equal0~0_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => cnt_1s(4),
	datac => \Equal0~0_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X31_Y21_N14
\Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~4_combout\ & (\Equal0~5_combout\ & (\Equal0~6_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X31_Y21_N24
\T_1s~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \T_1s~0_combout\ = \Equal0~7_combout\ $ (\T_1s~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datac => \T_1s~reg0_q\,
	combout => \T_1s~0_combout\);

-- Location: FF_X31_Y21_N25
\T_1s~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \T_1s~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T_1s~reg0_q\);

-- Location: LCCOMB_X30_Y22_N12
\Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~1_cout\ = CARRY((cnt_1s(0) & cnt_1s(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1s(0),
	datab => cnt_1s(1),
	datad => VCC,
	cout => \Add1~1_cout\);

-- Location: LCCOMB_X30_Y22_N14
\Add1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~3_cout\ = CARRY((!\Add1~1_cout\) # (!cnt_1s(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1s(2),
	datad => VCC,
	cin => \Add1~1_cout\,
	cout => \Add1~3_cout\);

-- Location: LCCOMB_X30_Y22_N16
\Add1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~5_cout\ = CARRY((cnt_1s(3) & !\Add1~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1s(3),
	datad => VCC,
	cin => \Add1~3_cout\,
	cout => \Add1~5_cout\);

-- Location: LCCOMB_X30_Y22_N18
\Add1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~7_cout\ = CARRY((!\Add1~5_cout\) # (!cnt_1s(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1s(4),
	datad => VCC,
	cin => \Add1~5_cout\,
	cout => \Add1~7_cout\);

-- Location: LCCOMB_X30_Y22_N20
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (cnt_100ms(5) & (\Add1~7_cout\ $ (GND))) # (!cnt_100ms(5) & (!\Add1~7_cout\ & VCC))
-- \Add1~9\ = CARRY((cnt_100ms(5) & !\Add1~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_100ms(5),
	datad => VCC,
	cin => \Add1~7_cout\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X30_Y22_N8
\cnt_100ms~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_100ms~7_combout\ = (\Add1~8_combout\ & !\Equal1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~8_combout\,
	datad => \Equal1~5_combout\,
	combout => \cnt_100ms~7_combout\);

-- Location: FF_X30_Y22_N9
\cnt_100ms[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_100ms~7_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_100ms(5));

-- Location: LCCOMB_X30_Y22_N22
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (cnt_100ms(6) & (!\Add1~9\)) # (!cnt_100ms(6) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!cnt_100ms(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_100ms(6),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: FF_X30_Y22_N23
\cnt_100ms[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add1~10_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_100ms(6));

-- Location: LCCOMB_X30_Y22_N24
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (cnt_100ms(7) & (\Add1~11\ $ (GND))) # (!cnt_100ms(7) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((cnt_100ms(7) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_100ms(7),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X30_Y22_N10
\cnt_100ms~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_100ms~6_combout\ = (\Add1~12_combout\ & !\Equal1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~12_combout\,
	datad => \Equal1~5_combout\,
	combout => \cnt_100ms~6_combout\);

-- Location: FF_X30_Y22_N11
\cnt_100ms[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_100ms~6_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_100ms(7));

-- Location: LCCOMB_X30_Y22_N26
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (cnt_100ms(8) & (!\Add1~13\)) # (!cnt_100ms(8) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!cnt_100ms(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_100ms(8),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X30_Y22_N4
\cnt_100ms~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_100ms~5_combout\ = (\Add1~14_combout\ & !\Equal1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~14_combout\,
	datad => \Equal1~5_combout\,
	combout => \cnt_100ms~5_combout\);

-- Location: FF_X30_Y22_N5
\cnt_100ms[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_100ms~5_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_100ms(8));

-- Location: LCCOMB_X30_Y22_N28
\Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (cnt_100ms(9) & (\Add1~15\ $ (GND))) # (!cnt_100ms(9) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((cnt_100ms(9) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_100ms(9),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: FF_X30_Y22_N29
\cnt_100ms[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add1~16_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_100ms(9));

-- Location: LCCOMB_X31_Y22_N4
\Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (!cnt_100ms(9) & (cnt_100ms(8) & (cnt_100ms(7) & !cnt_100ms(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_100ms(9),
	datab => cnt_100ms(8),
	datac => cnt_100ms(7),
	datad => cnt_100ms(6),
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X30_Y22_N30
\Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (cnt_100ms(10) & (!\Add1~17\)) # (!cnt_100ms(10) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!cnt_100ms(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_100ms(10),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X30_Y22_N2
\cnt_100ms~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_100ms~4_combout\ = (\Add1~18_combout\ & !\Equal1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~18_combout\,
	datad => \Equal1~5_combout\,
	combout => \cnt_100ms~4_combout\);

-- Location: FF_X30_Y22_N3
\cnt_100ms[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_100ms~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_100ms(10));

-- Location: LCCOMB_X30_Y21_N0
\Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (cnt_100ms(11) & (\Add1~19\ $ (GND))) # (!cnt_100ms(11) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((cnt_100ms(11) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_100ms(11),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: FF_X30_Y21_N1
\cnt_100ms[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add1~20_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_100ms(11));

-- Location: LCCOMB_X30_Y21_N2
\Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (cnt_100ms(12) & (!\Add1~21\)) # (!cnt_100ms(12) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!cnt_100ms(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_100ms(12),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: FF_X30_Y21_N3
\cnt_100ms[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add1~22_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_100ms(12));

-- Location: LCCOMB_X30_Y21_N4
\Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (cnt_100ms(13) & (\Add1~23\ $ (GND))) # (!cnt_100ms(13) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((cnt_100ms(13) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_100ms(13),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X30_Y21_N22
\cnt_100ms~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_100ms~3_combout\ = (\Add1~24_combout\ & !\Equal1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~24_combout\,
	datac => \Equal1~5_combout\,
	combout => \cnt_100ms~3_combout\);

-- Location: FF_X30_Y21_N23
\cnt_100ms[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_100ms~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_100ms(13));

-- Location: LCCOMB_X29_Y22_N4
\Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!cnt_100ms(11) & (!cnt_100ms(12) & (cnt_100ms(13) & cnt_100ms(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_100ms(11),
	datab => cnt_100ms(12),
	datac => cnt_100ms(13),
	datad => cnt_100ms(10),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X30_Y21_N6
\Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (cnt_100ms(14) & (!\Add1~25\)) # (!cnt_100ms(14) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!cnt_100ms(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_100ms(14),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: FF_X30_Y21_N7
\cnt_100ms[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add1~26_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_100ms(14));

-- Location: LCCOMB_X30_Y21_N8
\Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (cnt_100ms(15) & (\Add1~27\ $ (GND))) # (!cnt_100ms(15) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((cnt_100ms(15) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_100ms(15),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: FF_X30_Y21_N9
\cnt_100ms[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add1~28_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_100ms(15));

-- Location: LCCOMB_X30_Y21_N10
\Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (cnt_100ms(16) & (!\Add1~29\)) # (!cnt_100ms(16) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!cnt_100ms(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_100ms(16),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: FF_X30_Y21_N11
\cnt_100ms[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add1~30_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_100ms(16));

-- Location: LCCOMB_X30_Y21_N12
\Add1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (cnt_100ms(17) & (\Add1~31\ $ (GND))) # (!cnt_100ms(17) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((cnt_100ms(17) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_100ms(17),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X30_Y21_N30
\cnt_100ms~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_100ms~2_combout\ = (\Add1~32_combout\ & !\Equal1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~32_combout\,
	datac => \Equal1~5_combout\,
	combout => \cnt_100ms~2_combout\);

-- Location: FF_X30_Y21_N31
\cnt_100ms[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_100ms~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_100ms(17));

-- Location: LCCOMB_X30_Y21_N14
\Add1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (cnt_100ms(18) & (!\Add1~33\)) # (!cnt_100ms(18) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!cnt_100ms(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_100ms(18),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X30_Y21_N28
\cnt_100ms~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_100ms~1_combout\ = (\Add1~34_combout\ & !\Equal1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~34_combout\,
	datad => \Equal1~5_combout\,
	combout => \cnt_100ms~1_combout\);

-- Location: FF_X30_Y21_N29
\cnt_100ms[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_100ms~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_100ms(18));

-- Location: LCCOMB_X30_Y21_N16
\Add1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (cnt_100ms(19) & (\Add1~35\ $ (GND))) # (!cnt_100ms(19) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((cnt_100ms(19) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_100ms(19),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: FF_X30_Y21_N17
\cnt_100ms[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add1~36_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_100ms(19));

-- Location: LCCOMB_X30_Y21_N18
\Add1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (cnt_100ms(20) & (!\Add1~37\)) # (!cnt_100ms(20) & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!cnt_100ms(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_100ms(20),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: FF_X30_Y21_N19
\cnt_100ms[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add1~38_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_100ms(20));

-- Location: LCCOMB_X30_Y21_N20
\Add1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = \Add1~39\ $ (!cnt_100ms(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cnt_100ms(21),
	cin => \Add1~39\,
	combout => \Add1~40_combout\);

-- Location: LCCOMB_X30_Y21_N26
\cnt_100ms~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_100ms~0_combout\ = (!\Equal1~5_combout\ & \Add1~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~5_combout\,
	datad => \Add1~40_combout\,
	combout => \cnt_100ms~0_combout\);

-- Location: FF_X30_Y21_N27
\cnt_100ms[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_100ms~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_100ms(21));

-- Location: LCCOMB_X31_Y21_N8
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!cnt_100ms(19) & (cnt_100ms(18) & (cnt_100ms(21) & !cnt_100ms(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_100ms(19),
	datab => cnt_100ms(18),
	datac => cnt_100ms(21),
	datad => cnt_100ms(20),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X30_Y21_N24
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!cnt_100ms(16) & (!cnt_100ms(15) & (cnt_100ms(17) & !cnt_100ms(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_100ms(16),
	datab => cnt_100ms(15),
	datac => cnt_100ms(17),
	datad => cnt_100ms(14),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X31_Y21_N2
\Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (cnt_1s(4) & (\Equal1~0_combout\ & (\Equal0~0_combout\ & \Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1s(4),
	datab => \Equal1~0_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal1~1_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X30_Y22_N6
\Equal1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (\Equal1~4_combout\ & (!cnt_100ms(5) & (\Equal1~3_combout\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => cnt_100ms(5),
	datac => \Equal1~3_combout\,
	datad => \Equal1~2_combout\,
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X30_Y22_N0
\T_100ms~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \T_100ms~0_combout\ = \T_100ms~reg0_q\ $ (\Equal1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_100ms~reg0_q\,
	datad => \Equal1~5_combout\,
	combout => \T_100ms~0_combout\);

-- Location: FF_X30_Y22_N1
\T_100ms~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \T_100ms~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T_100ms~reg0_q\);

-- Location: LCCOMB_X33_Y22_N12
\Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~1_cout\ = CARRY((cnt_1s(0) & cnt_1s(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1s(0),
	datab => cnt_1s(1),
	datad => VCC,
	cout => \Add2~1_cout\);

-- Location: LCCOMB_X33_Y22_N14
\Add2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~3_cout\ = CARRY((!\Add2~1_cout\) # (!cnt_1s(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1s(2),
	datad => VCC,
	cin => \Add2~1_cout\,
	cout => \Add2~3_cout\);

-- Location: LCCOMB_X33_Y22_N16
\Add2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~5_cout\ = CARRY((cnt_1s(3) & !\Add2~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1s(3),
	datad => VCC,
	cin => \Add2~3_cout\,
	cout => \Add2~5_cout\);

-- Location: LCCOMB_X33_Y22_N18
\Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (cnt_50ms(4) & (!\Add2~5_cout\)) # (!cnt_50ms(4) & ((\Add2~5_cout\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5_cout\) # (!cnt_50ms(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_50ms(4),
	datad => VCC,
	cin => \Add2~5_cout\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X33_Y22_N20
\Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (cnt_50ms(5) & (\Add2~7\ $ (GND))) # (!cnt_50ms(5) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((cnt_50ms(5) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_50ms(5),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: FF_X33_Y22_N21
\cnt_50ms[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add2~8_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_50ms(5));

-- Location: LCCOMB_X33_Y22_N22
\Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (cnt_50ms(6) & (!\Add2~9\)) # (!cnt_50ms(6) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!cnt_50ms(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_50ms(6),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X33_Y22_N4
\cnt_50ms~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_50ms~7_combout\ = (\Add2~10_combout\ & (((cnt_50ms(4)) # (!\Equal2~3_combout\)) # (!\Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~4_combout\,
	datab => \Equal2~3_combout\,
	datac => \Add2~10_combout\,
	datad => cnt_50ms(4),
	combout => \cnt_50ms~7_combout\);

-- Location: FF_X33_Y22_N5
\cnt_50ms[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_50ms~7_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_50ms(6));

-- Location: LCCOMB_X33_Y22_N24
\Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (cnt_50ms(7) & (\Add2~11\ $ (GND))) # (!cnt_50ms(7) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((cnt_50ms(7) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_50ms(7),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X33_Y22_N26
\Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (cnt_50ms(8) & (!\Add2~13\)) # (!cnt_50ms(8) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!cnt_50ms(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_50ms(8),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: FF_X33_Y22_N27
\cnt_50ms[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add2~14_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_50ms(8));

-- Location: LCCOMB_X33_Y22_N28
\Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (cnt_50ms(9) & (\Add2~15\ $ (GND))) # (!cnt_50ms(9) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((cnt_50ms(9) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_50ms(9),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X33_Y22_N10
\cnt_50ms~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_50ms~5_combout\ = (\Add2~16_combout\ & (((cnt_50ms(4)) # (!\Equal2~3_combout\)) # (!\Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~4_combout\,
	datab => cnt_50ms(4),
	datac => \Equal2~3_combout\,
	datad => \Add2~16_combout\,
	combout => \cnt_50ms~5_combout\);

-- Location: FF_X33_Y22_N11
\cnt_50ms[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_50ms~5_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_50ms(9));

-- Location: LCCOMB_X33_Y22_N30
\Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (cnt_50ms(10) & (!\Add2~17\)) # (!cnt_50ms(10) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!cnt_50ms(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_50ms(10),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: FF_X33_Y22_N31
\cnt_50ms[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add2~18_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_50ms(10));

-- Location: LCCOMB_X33_Y21_N0
\Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (cnt_50ms(11) & (\Add2~19\ $ (GND))) # (!cnt_50ms(11) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((cnt_50ms(11) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_50ms(11),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: FF_X33_Y21_N1
\cnt_50ms[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add2~20_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_50ms(11));

-- Location: LCCOMB_X33_Y21_N2
\Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (cnt_50ms(12) & (!\Add2~21\)) # (!cnt_50ms(12) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!cnt_50ms(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_50ms(12),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X33_Y21_N30
\cnt_50ms~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_50ms~4_combout\ = (\Add2~22_combout\ & (((cnt_50ms(4)) # (!\Equal2~3_combout\)) # (!\Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~4_combout\,
	datab => cnt_50ms(4),
	datac => \Add2~22_combout\,
	datad => \Equal2~3_combout\,
	combout => \cnt_50ms~4_combout\);

-- Location: FF_X33_Y21_N31
\cnt_50ms[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_50ms~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_50ms(12));

-- Location: LCCOMB_X33_Y21_N4
\Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (cnt_50ms(13) & (\Add2~23\ $ (GND))) # (!cnt_50ms(13) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((cnt_50ms(13) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_50ms(13),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: FF_X33_Y21_N5
\cnt_50ms[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add2~24_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_50ms(13));

-- Location: LCCOMB_X33_Y21_N6
\Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (cnt_50ms(14) & (!\Add2~25\)) # (!cnt_50ms(14) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!cnt_50ms(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_50ms(14),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: FF_X33_Y21_N7
\cnt_50ms[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add2~26_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_50ms(14));

-- Location: LCCOMB_X33_Y21_N8
\Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (cnt_50ms(15) & (\Add2~27\ $ (GND))) # (!cnt_50ms(15) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((cnt_50ms(15) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_50ms(15),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: FF_X33_Y21_N9
\cnt_50ms[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add2~28_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_50ms(15));

-- Location: LCCOMB_X33_Y21_N10
\Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (cnt_50ms(16) & (!\Add2~29\)) # (!cnt_50ms(16) & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!cnt_50ms(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_50ms(16),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X33_Y21_N26
\cnt_50ms~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_50ms~3_combout\ = (\Add2~30_combout\ & ((cnt_50ms(4)) # ((!\Equal2~3_combout\) # (!\Equal2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~30_combout\,
	datab => cnt_50ms(4),
	datac => \Equal2~4_combout\,
	datad => \Equal2~3_combout\,
	combout => \cnt_50ms~3_combout\);

-- Location: FF_X33_Y21_N27
\cnt_50ms[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_50ms~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_50ms(16));

-- Location: LCCOMB_X33_Y21_N12
\Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (cnt_50ms(17) & (\Add2~31\ $ (GND))) # (!cnt_50ms(17) & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((cnt_50ms(17) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_50ms(17),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X33_Y21_N28
\cnt_50ms~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_50ms~2_combout\ = (\Add2~32_combout\ & ((cnt_50ms(4)) # ((!\Equal2~3_combout\) # (!\Equal2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~32_combout\,
	datab => cnt_50ms(4),
	datac => \Equal2~4_combout\,
	datad => \Equal2~3_combout\,
	combout => \cnt_50ms~2_combout\);

-- Location: FF_X33_Y21_N29
\cnt_50ms[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_50ms~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_50ms(17));

-- Location: LCCOMB_X33_Y21_N14
\Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (cnt_50ms(18) & (!\Add2~33\)) # (!cnt_50ms(18) & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!cnt_50ms(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_50ms(18),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: FF_X33_Y21_N15
\cnt_50ms[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add2~34_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_50ms(18));

-- Location: LCCOMB_X33_Y21_N16
\Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (cnt_50ms(19) & (\Add2~35\ $ (GND))) # (!cnt_50ms(19) & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((cnt_50ms(19) & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_50ms(19),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: FF_X33_Y21_N17
\cnt_50ms[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add2~36_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_50ms(19));

-- Location: LCCOMB_X33_Y21_N18
\Add2~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = \Add2~37\ $ (cnt_50ms(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cnt_50ms(20),
	cin => \Add2~37\,
	combout => \Add2~38_combout\);

-- Location: LCCOMB_X33_Y21_N22
\cnt_50ms~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_50ms~1_combout\ = (\Add2~38_combout\ & (((cnt_50ms(4)) # (!\Equal2~3_combout\)) # (!\Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~4_combout\,
	datab => cnt_50ms(4),
	datac => \Equal2~3_combout\,
	datad => \Add2~38_combout\,
	combout => \cnt_50ms~1_combout\);

-- Location: FF_X33_Y21_N23
\cnt_50ms[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_50ms~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_50ms(20));

-- Location: LCCOMB_X33_Y20_N12
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!cnt_50ms(19) & (cnt_50ms(17) & (cnt_50ms(20) & !cnt_50ms(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_50ms(19),
	datab => cnt_50ms(17),
	datac => cnt_50ms(20),
	datad => cnt_50ms(18),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X33_Y21_N24
\Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (cnt_50ms(16) & (!cnt_50ms(13) & (!cnt_50ms(15) & !cnt_50ms(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_50ms(16),
	datab => cnt_50ms(13),
	datac => cnt_50ms(15),
	datad => cnt_50ms(14),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X33_Y20_N2
\Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (cnt_50ms(12) & (cnt_50ms(9) & (!cnt_50ms(10) & !cnt_50ms(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_50ms(12),
	datab => cnt_50ms(9),
	datac => cnt_50ms(10),
	datad => cnt_50ms(11),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X33_Y22_N8
\Equal2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (\Equal2~0_combout\ & (\Equal0~0_combout\ & (\Equal2~1_combout\ & \Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal2~1_combout\,
	datad => \Equal2~2_combout\,
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X33_Y22_N0
\cnt_50ms~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_50ms~0_combout\ = (\Add2~6_combout\ & (((cnt_50ms(4)) # (!\Equal2~3_combout\)) # (!\Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~4_combout\,
	datab => \Equal2~3_combout\,
	datac => cnt_50ms(4),
	datad => \Add2~6_combout\,
	combout => \cnt_50ms~0_combout\);

-- Location: FF_X33_Y22_N1
\cnt_50ms[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_50ms~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_50ms(4));

-- Location: LCCOMB_X33_Y22_N6
\cnt_50ms~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_50ms~6_combout\ = (\Add2~12_combout\ & (((cnt_50ms(4)) # (!\Equal2~3_combout\)) # (!\Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~4_combout\,
	datab => cnt_50ms(4),
	datac => \Equal2~3_combout\,
	datad => \Add2~12_combout\,
	combout => \cnt_50ms~6_combout\);

-- Location: FF_X33_Y22_N7
\cnt_50ms[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_50ms~6_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_50ms(7));

-- Location: LCCOMB_X33_Y22_N2
\Equal2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (cnt_50ms(7) & (cnt_50ms(6) & (!cnt_50ms(8) & !cnt_50ms(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_50ms(7),
	datab => cnt_50ms(6),
	datac => cnt_50ms(8),
	datad => cnt_50ms(5),
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X33_Y21_N20
\T_50ms~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \T_50ms~0_combout\ = \T_50ms~reg0_q\ $ (((\Equal2~4_combout\ & (!cnt_50ms(4) & \Equal2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~4_combout\,
	datab => cnt_50ms(4),
	datac => \T_50ms~reg0_q\,
	datad => \Equal2~3_combout\,
	combout => \T_50ms~0_combout\);

-- Location: FF_X33_Y21_N21
\T_50ms~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \T_50ms~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T_50ms~reg0_q\);

-- Location: LCCOMB_X35_Y22_N14
\Add3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~1_cout\ = CARRY((cnt_1s(0) & cnt_1s(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1s(0),
	datab => cnt_1s(1),
	datad => VCC,
	cout => \Add3~1_cout\);

-- Location: LCCOMB_X35_Y22_N16
\Add3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~3_cout\ = CARRY((!\Add3~1_cout\) # (!cnt_1s(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_1s(2),
	datad => VCC,
	cin => \Add3~1_cout\,
	cout => \Add3~3_cout\);

-- Location: LCCOMB_X35_Y22_N18
\Add3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~5_cout\ = CARRY((cnt_1s(3) & !\Add3~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_1s(3),
	datad => VCC,
	cin => \Add3~3_cout\,
	cout => \Add3~5_cout\);

-- Location: LCCOMB_X35_Y22_N20
\Add3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~7_cout\ = CARRY((!\Add3~5_cout\) # (!cnt_1s(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_1s(4),
	datad => VCC,
	cin => \Add3~5_cout\,
	cout => \Add3~7_cout\);

-- Location: LCCOMB_X35_Y22_N22
\Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (cnt_20ms(5) & (\Add3~7_cout\ $ (GND))) # (!cnt_20ms(5) & (!\Add3~7_cout\ & VCC))
-- \Add3~9\ = CARRY((cnt_20ms(5) & !\Add3~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_20ms(5),
	datad => VCC,
	cin => \Add3~7_cout\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X35_Y22_N24
\Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (cnt_20ms(6) & (!\Add3~9\)) # (!cnt_20ms(6) & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!cnt_20ms(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_20ms(6),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: FF_X35_Y22_N25
\cnt_20ms[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add3~10_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_20ms(6));

-- Location: LCCOMB_X35_Y22_N26
\Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (cnt_20ms(7) & (\Add3~11\ $ (GND))) # (!cnt_20ms(7) & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((cnt_20ms(7) & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_20ms(7),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: FF_X35_Y22_N27
\cnt_20ms[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add3~12_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_20ms(7));

-- Location: LCCOMB_X35_Y22_N28
\Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (cnt_20ms(8) & (!\Add3~13\)) # (!cnt_20ms(8) & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!cnt_20ms(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_20ms(8),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X35_Y22_N2
\cnt_20ms~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_20ms~5_combout\ = (\Add3~14_combout\ & (((!\Equal3~2_combout\) # (!\Equal3~3_combout\)) # (!\Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~4_combout\,
	datab => \Equal3~3_combout\,
	datac => \Equal3~2_combout\,
	datad => \Add3~14_combout\,
	combout => \cnt_20ms~5_combout\);

-- Location: FF_X35_Y22_N3
\cnt_20ms[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_20ms~5_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_20ms(8));

-- Location: LCCOMB_X35_Y22_N30
\Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (cnt_20ms(9) & (\Add3~15\ $ (GND))) # (!cnt_20ms(9) & (!\Add3~15\ & VCC))
-- \Add3~17\ = CARRY((cnt_20ms(9) & !\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_20ms(9),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: FF_X35_Y22_N31
\cnt_20ms[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add3~16_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_20ms(9));

-- Location: LCCOMB_X35_Y21_N0
\Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (cnt_20ms(10) & (!\Add3~17\)) # (!cnt_20ms(10) & ((\Add3~17\) # (GND)))
-- \Add3~19\ = CARRY((!\Add3~17\) # (!cnt_20ms(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_20ms(10),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: FF_X35_Y21_N1
\cnt_20ms[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add3~18_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_20ms(10));

-- Location: LCCOMB_X35_Y21_N2
\Add3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (cnt_20ms(11) & (\Add3~19\ $ (GND))) # (!cnt_20ms(11) & (!\Add3~19\ & VCC))
-- \Add3~21\ = CARRY((cnt_20ms(11) & !\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_20ms(11),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: FF_X35_Y21_N3
\cnt_20ms[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add3~20_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_20ms(11));

-- Location: LCCOMB_X35_Y22_N8
\Equal3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = (!cnt_20ms(9) & (cnt_20ms(8) & (!cnt_20ms(10) & !cnt_20ms(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_20ms(9),
	datab => cnt_20ms(8),
	datac => cnt_20ms(10),
	datad => cnt_20ms(11),
	combout => \Equal3~3_combout\);

-- Location: LCCOMB_X35_Y21_N4
\Add3~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (cnt_20ms(12) & (!\Add3~21\)) # (!cnt_20ms(12) & ((\Add3~21\) # (GND)))
-- \Add3~23\ = CARRY((!\Add3~21\) # (!cnt_20ms(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_20ms(12),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: FF_X35_Y21_N5
\cnt_20ms[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add3~22_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_20ms(12));

-- Location: LCCOMB_X35_Y21_N6
\Add3~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (cnt_20ms(13) & (\Add3~23\ $ (GND))) # (!cnt_20ms(13) & (!\Add3~23\ & VCC))
-- \Add3~25\ = CARRY((cnt_20ms(13) & !\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_20ms(13),
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X35_Y21_N28
\cnt_20ms~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_20ms~4_combout\ = (\Add3~24_combout\ & (((!\Equal3~2_combout\) # (!\Equal3~3_combout\)) # (!\Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~4_combout\,
	datab => \Equal3~3_combout\,
	datac => \Equal3~2_combout\,
	datad => \Add3~24_combout\,
	combout => \cnt_20ms~4_combout\);

-- Location: FF_X35_Y21_N29
\cnt_20ms[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_20ms~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_20ms(13));

-- Location: LCCOMB_X35_Y21_N8
\Add3~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (cnt_20ms(14) & (!\Add3~25\)) # (!cnt_20ms(14) & ((\Add3~25\) # (GND)))
-- \Add3~27\ = CARRY((!\Add3~25\) # (!cnt_20ms(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_20ms(14),
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: FF_X35_Y21_N9
\cnt_20ms[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add3~26_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_20ms(14));

-- Location: LCCOMB_X35_Y21_N10
\Add3~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (cnt_20ms(15) & (\Add3~27\ $ (GND))) # (!cnt_20ms(15) & (!\Add3~27\ & VCC))
-- \Add3~29\ = CARRY((cnt_20ms(15) & !\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_20ms(15),
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCCOMB_X35_Y21_N30
\cnt_20ms~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_20ms~3_combout\ = (\Add3~28_combout\ & (((!\Equal3~2_combout\) # (!\Equal3~3_combout\)) # (!\Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~4_combout\,
	datab => \Equal3~3_combout\,
	datac => \Equal3~2_combout\,
	datad => \Add3~28_combout\,
	combout => \cnt_20ms~3_combout\);

-- Location: FF_X35_Y21_N31
\cnt_20ms[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_20ms~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_20ms(15));

-- Location: LCCOMB_X35_Y21_N26
\Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (cnt_20ms(15) & (!cnt_20ms(12) & (!cnt_20ms(14) & cnt_20ms(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_20ms(15),
	datab => cnt_20ms(12),
	datac => cnt_20ms(14),
	datad => cnt_20ms(13),
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X35_Y21_N12
\Add3~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (cnt_20ms(16) & (!\Add3~29\)) # (!cnt_20ms(16) & ((\Add3~29\) # (GND)))
-- \Add3~31\ = CARRY((!\Add3~29\) # (!cnt_20ms(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_20ms(16),
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: LCCOMB_X35_Y21_N24
\cnt_20ms~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_20ms~2_combout\ = (\Add3~30_combout\ & (((!\Equal3~2_combout\) # (!\Equal3~3_combout\)) # (!\Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~4_combout\,
	datab => \Equal3~3_combout\,
	datac => \Equal3~2_combout\,
	datad => \Add3~30_combout\,
	combout => \cnt_20ms~2_combout\);

-- Location: FF_X35_Y21_N25
\cnt_20ms[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_20ms~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_20ms(16));

-- Location: LCCOMB_X35_Y21_N14
\Add3~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (cnt_20ms(17) & (\Add3~31\ $ (GND))) # (!cnt_20ms(17) & (!\Add3~31\ & VCC))
-- \Add3~33\ = CARRY((cnt_20ms(17) & !\Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_20ms(17),
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: LCCOMB_X35_Y21_N22
\cnt_20ms~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_20ms~1_combout\ = (\Add3~32_combout\ & (((!\Equal3~2_combout\) # (!\Equal3~3_combout\)) # (!\Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~4_combout\,
	datab => \Equal3~3_combout\,
	datac => \Add3~32_combout\,
	datad => \Equal3~2_combout\,
	combout => \cnt_20ms~1_combout\);

-- Location: FF_X35_Y21_N23
\cnt_20ms[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_20ms~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_20ms(17));

-- Location: LCCOMB_X35_Y21_N16
\Add3~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (cnt_20ms(18) & (!\Add3~33\)) # (!cnt_20ms(18) & ((\Add3~33\) # (GND)))
-- \Add3~35\ = CARRY((!\Add3~33\) # (!cnt_20ms(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_20ms(18),
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: LCCOMB_X35_Y21_N20
\cnt_20ms~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_20ms~0_combout\ = (\Add3~34_combout\ & (((!\Equal3~2_combout\) # (!\Equal3~3_combout\)) # (!\Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~4_combout\,
	datab => \Equal3~3_combout\,
	datac => \Equal3~2_combout\,
	datad => \Add3~34_combout\,
	combout => \cnt_20ms~0_combout\);

-- Location: FF_X35_Y21_N21
\cnt_20ms[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_20ms~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_20ms(18));

-- Location: LCCOMB_X35_Y21_N18
\Add3~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = \Add3~35\ $ (!cnt_20ms(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cnt_20ms(19),
	cin => \Add3~35\,
	combout => \Add3~36_combout\);

-- Location: FF_X35_Y21_N19
\cnt_20ms[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add3~36_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_20ms(19));

-- Location: LCCOMB_X35_Y22_N6
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (cnt_20ms(18) & (!cnt_20ms(19) & (cnt_20ms(16) & cnt_20ms(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_20ms(18),
	datab => cnt_20ms(19),
	datac => cnt_20ms(16),
	datad => cnt_20ms(17),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X35_Y22_N4
\Equal3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (cnt_1s(4) & (\Equal0~0_combout\ & (\Equal3~1_combout\ & \Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1s(4),
	datab => \Equal0~0_combout\,
	datac => \Equal3~1_combout\,
	datad => \Equal3~0_combout\,
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X35_Y22_N10
\cnt_20ms~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_20ms~6_combout\ = (\Add3~8_combout\ & (((!\Equal3~4_combout\) # (!\Equal3~3_combout\)) # (!\Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datab => \Equal3~2_combout\,
	datac => \Equal3~3_combout\,
	datad => \Equal3~4_combout\,
	combout => \cnt_20ms~6_combout\);

-- Location: FF_X35_Y22_N11
\cnt_20ms[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_20ms~6_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_20ms(5));

-- Location: LCCOMB_X35_Y22_N12
\Equal3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~4_combout\ = (!cnt_20ms(5) & (!cnt_20ms(7) & !cnt_20ms(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_20ms(5),
	datac => cnt_20ms(7),
	datad => cnt_20ms(6),
	combout => \Equal3~4_combout\);

-- Location: LCCOMB_X35_Y22_N0
\T_20ms~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \T_20ms~0_combout\ = \T_20ms~reg0_q\ $ (((\Equal3~4_combout\ & (\Equal3~3_combout\ & \Equal3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~4_combout\,
	datab => \Equal3~3_combout\,
	datac => \T_20ms~reg0_q\,
	datad => \Equal3~2_combout\,
	combout => \T_20ms~0_combout\);

-- Location: FF_X35_Y22_N1
\T_20ms~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \T_20ms~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T_20ms~reg0_q\);

-- Location: LCCOMB_X36_Y22_N14
\Add4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~1_cout\ = CARRY((cnt_1s(1) & cnt_1s(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1s(1),
	datab => cnt_1s(0),
	datad => VCC,
	cout => \Add4~1_cout\);

-- Location: LCCOMB_X36_Y22_N16
\Add4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~3_cout\ = CARRY((!\Add4~1_cout\) # (!cnt_1s(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_1s(2),
	datad => VCC,
	cin => \Add4~1_cout\,
	cout => \Add4~3_cout\);

-- Location: LCCOMB_X36_Y22_N18
\Add4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~5_cout\ = CARRY((cnt_1s(3) & !\Add4~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1s(3),
	datad => VCC,
	cin => \Add4~3_cout\,
	cout => \Add4~5_cout\);

-- Location: LCCOMB_X36_Y22_N20
\Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (cnt_10ms(4) & (!\Add4~5_cout\)) # (!cnt_10ms(4) & ((\Add4~5_cout\) # (GND)))
-- \Add4~7\ = CARRY((!\Add4~5_cout\) # (!cnt_10ms(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_10ms(4),
	datad => VCC,
	cin => \Add4~5_cout\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X36_Y22_N12
\cnt_10ms~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_10ms~6_combout\ = (\Add4~6_combout\ & !\Equal4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~6_combout\,
	datad => \Equal4~4_combout\,
	combout => \cnt_10ms~6_combout\);

-- Location: FF_X36_Y22_N13
\cnt_10ms[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_10ms~6_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_10ms(4));

-- Location: LCCOMB_X36_Y22_N22
\Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (cnt_10ms(5) & (\Add4~7\ $ (GND))) # (!cnt_10ms(5) & (!\Add4~7\ & VCC))
-- \Add4~9\ = CARRY((cnt_10ms(5) & !\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_10ms(5),
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: FF_X36_Y22_N23
\cnt_10ms[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add4~8_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_10ms(5));

-- Location: LCCOMB_X36_Y22_N24
\Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (cnt_10ms(6) & (!\Add4~9\)) # (!cnt_10ms(6) & ((\Add4~9\) # (GND)))
-- \Add4~11\ = CARRY((!\Add4~9\) # (!cnt_10ms(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_10ms(6),
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: FF_X36_Y22_N25
\cnt_10ms[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add4~10_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_10ms(6));

-- Location: LCCOMB_X36_Y22_N26
\Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (cnt_10ms(7) & (\Add4~11\ $ (GND))) # (!cnt_10ms(7) & (!\Add4~11\ & VCC))
-- \Add4~13\ = CARRY((cnt_10ms(7) & !\Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_10ms(7),
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X36_Y22_N6
\cnt_10ms~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_10ms~5_combout\ = (\Add4~12_combout\ & !\Equal4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add4~12_combout\,
	datad => \Equal4~4_combout\,
	combout => \cnt_10ms~5_combout\);

-- Location: FF_X36_Y22_N7
\cnt_10ms[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_10ms~5_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_10ms(7));

-- Location: LCCOMB_X36_Y22_N28
\Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (cnt_10ms(8) & (!\Add4~13\)) # (!cnt_10ms(8) & ((\Add4~13\) # (GND)))
-- \Add4~15\ = CARRY((!\Add4~13\) # (!cnt_10ms(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_10ms(8),
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: FF_X36_Y22_N29
\cnt_10ms[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add4~14_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_10ms(8));

-- Location: LCCOMB_X36_Y22_N30
\Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = (cnt_10ms(9) & (\Add4~15\ $ (GND))) # (!cnt_10ms(9) & (!\Add4~15\ & VCC))
-- \Add4~17\ = CARRY((cnt_10ms(9) & !\Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_10ms(9),
	datad => VCC,
	cin => \Add4~15\,
	combout => \Add4~16_combout\,
	cout => \Add4~17\);

-- Location: FF_X36_Y22_N31
\cnt_10ms[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add4~16_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_10ms(9));

-- Location: LCCOMB_X36_Y21_N0
\Add4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~18_combout\ = (cnt_10ms(10) & (!\Add4~17\)) # (!cnt_10ms(10) & ((\Add4~17\) # (GND)))
-- \Add4~19\ = CARRY((!\Add4~17\) # (!cnt_10ms(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_10ms(10),
	datad => VCC,
	cin => \Add4~17\,
	combout => \Add4~18_combout\,
	cout => \Add4~19\);

-- Location: FF_X36_Y21_N1
\cnt_10ms[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add4~18_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_10ms(10));

-- Location: LCCOMB_X36_Y22_N8
\Equal4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = (cnt_10ms(7) & (!cnt_10ms(10) & (!cnt_10ms(9) & !cnt_10ms(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_10ms(7),
	datab => cnt_10ms(10),
	datac => cnt_10ms(9),
	datad => cnt_10ms(8),
	combout => \Equal4~2_combout\);

-- Location: LCCOMB_X36_Y21_N2
\Add4~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~20_combout\ = (cnt_10ms(11) & (\Add4~19\ $ (GND))) # (!cnt_10ms(11) & (!\Add4~19\ & VCC))
-- \Add4~21\ = CARRY((cnt_10ms(11) & !\Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_10ms(11),
	datad => VCC,
	cin => \Add4~19\,
	combout => \Add4~20_combout\,
	cout => \Add4~21\);

-- Location: FF_X36_Y21_N3
\cnt_10ms[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add4~20_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_10ms(11));

-- Location: LCCOMB_X36_Y21_N4
\Add4~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~22_combout\ = (cnt_10ms(12) & (!\Add4~21\)) # (!cnt_10ms(12) & ((\Add4~21\) # (GND)))
-- \Add4~23\ = CARRY((!\Add4~21\) # (!cnt_10ms(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_10ms(12),
	datad => VCC,
	cin => \Add4~21\,
	combout => \Add4~22_combout\,
	cout => \Add4~23\);

-- Location: LCCOMB_X36_Y21_N20
\cnt_10ms~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_10ms~4_combout\ = (\Add4~22_combout\ & !\Equal4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add4~22_combout\,
	datad => \Equal4~4_combout\,
	combout => \cnt_10ms~4_combout\);

-- Location: FF_X36_Y21_N21
\cnt_10ms[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_10ms~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_10ms(12));

-- Location: LCCOMB_X36_Y21_N6
\Add4~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~24_combout\ = (cnt_10ms(13) & (\Add4~23\ $ (GND))) # (!cnt_10ms(13) & (!\Add4~23\ & VCC))
-- \Add4~25\ = CARRY((cnt_10ms(13) & !\Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_10ms(13),
	datad => VCC,
	cin => \Add4~23\,
	combout => \Add4~24_combout\,
	cout => \Add4~25\);

-- Location: FF_X36_Y21_N7
\cnt_10ms[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add4~24_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_10ms(13));

-- Location: LCCOMB_X36_Y21_N8
\Add4~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~26_combout\ = (cnt_10ms(14) & (!\Add4~25\)) # (!cnt_10ms(14) & ((\Add4~25\) # (GND)))
-- \Add4~27\ = CARRY((!\Add4~25\) # (!cnt_10ms(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_10ms(14),
	datad => VCC,
	cin => \Add4~25\,
	combout => \Add4~26_combout\,
	cout => \Add4~27\);

-- Location: LCCOMB_X36_Y21_N22
\cnt_10ms~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_10ms~3_combout\ = (\Add4~26_combout\ & !\Equal4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add4~26_combout\,
	datad => \Equal4~4_combout\,
	combout => \cnt_10ms~3_combout\);

-- Location: FF_X36_Y21_N23
\cnt_10ms[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_10ms~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_10ms(14));

-- Location: LCCOMB_X36_Y21_N10
\Add4~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~28_combout\ = (cnt_10ms(15) & (\Add4~27\ $ (GND))) # (!cnt_10ms(15) & (!\Add4~27\ & VCC))
-- \Add4~29\ = CARRY((cnt_10ms(15) & !\Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_10ms(15),
	datad => VCC,
	cin => \Add4~27\,
	combout => \Add4~28_combout\,
	cout => \Add4~29\);

-- Location: LCCOMB_X36_Y21_N26
\cnt_10ms~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_10ms~2_combout\ = (!\Equal4~4_combout\ & \Add4~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal4~4_combout\,
	datad => \Add4~28_combout\,
	combout => \cnt_10ms~2_combout\);

-- Location: FF_X36_Y21_N27
\cnt_10ms[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_10ms~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_10ms(15));

-- Location: LCCOMB_X36_Y21_N12
\Add4~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~30_combout\ = (cnt_10ms(16) & (!\Add4~29\)) # (!cnt_10ms(16) & ((\Add4~29\) # (GND)))
-- \Add4~31\ = CARRY((!\Add4~29\) # (!cnt_10ms(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_10ms(16),
	datad => VCC,
	cin => \Add4~29\,
	combout => \Add4~30_combout\,
	cout => \Add4~31\);

-- Location: LCCOMB_X36_Y21_N28
\cnt_10ms~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_10ms~1_combout\ = (!\Equal4~4_combout\ & \Add4~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal4~4_combout\,
	datad => \Add4~30_combout\,
	combout => \cnt_10ms~1_combout\);

-- Location: FF_X36_Y21_N29
\cnt_10ms[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_10ms~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_10ms(16));

-- Location: LCCOMB_X36_Y21_N14
\Add4~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~32_combout\ = (cnt_10ms(17) & (\Add4~31\ $ (GND))) # (!cnt_10ms(17) & (!\Add4~31\ & VCC))
-- \Add4~33\ = CARRY((cnt_10ms(17) & !\Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_10ms(17),
	datad => VCC,
	cin => \Add4~31\,
	combout => \Add4~32_combout\,
	cout => \Add4~33\);

-- Location: LCCOMB_X36_Y21_N30
\cnt_10ms~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_10ms~0_combout\ = (\Add4~32_combout\ & !\Equal4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add4~32_combout\,
	datad => \Equal4~4_combout\,
	combout => \cnt_10ms~0_combout\);

-- Location: FF_X36_Y21_N31
\cnt_10ms[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_10ms~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_10ms(17));

-- Location: LCCOMB_X36_Y21_N16
\Add4~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~34_combout\ = \Add4~33\ $ (cnt_10ms(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cnt_10ms(18),
	cin => \Add4~33\,
	combout => \Add4~34_combout\);

-- Location: FF_X36_Y21_N17
\cnt_10ms[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add4~34_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_10ms(18));

-- Location: LCCOMB_X36_Y21_N24
\Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (cnt_10ms(17) & (!cnt_10ms(18) & (cnt_10ms(15) & cnt_10ms(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_10ms(17),
	datab => cnt_10ms(18),
	datac => cnt_10ms(15),
	datad => cnt_10ms(16),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X36_Y21_N18
\Equal4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (!cnt_10ms(13) & (cnt_10ms(12) & (cnt_10ms(14) & !cnt_10ms(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_10ms(13),
	datab => cnt_10ms(12),
	datac => cnt_10ms(14),
	datad => cnt_10ms(11),
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X36_Y22_N2
\Equal4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~3_combout\ = (\Equal0~0_combout\ & (\Equal4~2_combout\ & (\Equal4~0_combout\ & \Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal4~2_combout\,
	datac => \Equal4~0_combout\,
	datad => \Equal4~1_combout\,
	combout => \Equal4~3_combout\);

-- Location: LCCOMB_X36_Y22_N10
\Equal4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~4_combout\ = (!cnt_10ms(4) & (!cnt_10ms(6) & (!cnt_10ms(5) & \Equal4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_10ms(4),
	datab => cnt_10ms(6),
	datac => cnt_10ms(5),
	datad => \Equal4~3_combout\,
	combout => \Equal4~4_combout\);

-- Location: LCCOMB_X36_Y22_N0
\T_10ms~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \T_10ms~0_combout\ = \T_10ms~reg0_q\ $ (\Equal4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_10ms~reg0_q\,
	datad => \Equal4~4_combout\,
	combout => \T_10ms~0_combout\);

-- Location: FF_X36_Y22_N1
\T_10ms~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \T_10ms~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T_10ms~reg0_q\);

-- Location: LCCOMB_X32_Y18_N0
\Add5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~1_cout\ = CARRY((cnt_1s(0) & cnt_1s(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1s(0),
	datab => cnt_1s(1),
	datad => VCC,
	cout => \Add5~1_cout\);

-- Location: LCCOMB_X32_Y18_N2
\Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (cnt_1ms(2) & (!\Add5~1_cout\)) # (!cnt_1ms(2) & ((\Add5~1_cout\) # (GND)))
-- \Add5~3\ = CARRY((!\Add5~1_cout\) # (!cnt_1ms(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1ms(2),
	datad => VCC,
	cin => \Add5~1_cout\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X32_Y18_N30
\cnt_1ms~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_1ms~4_combout\ = (!\Equal5~4_combout\ & \Add5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal5~4_combout\,
	datad => \Add5~2_combout\,
	combout => \cnt_1ms~4_combout\);

-- Location: FF_X32_Y18_N31
\cnt_1ms[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_1ms~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1ms(2));

-- Location: LCCOMB_X32_Y18_N4
\Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (cnt_1ms(3) & (\Add5~3\ $ (GND))) # (!cnt_1ms(3) & (!\Add5~3\ & VCC))
-- \Add5~5\ = CARRY((cnt_1ms(3) & !\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_1ms(3),
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: FF_X32_Y18_N5
\cnt_1ms[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add5~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1ms(3));

-- Location: LCCOMB_X32_Y18_N6
\Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (cnt_1ms(4) & (!\Add5~5\)) # (!cnt_1ms(4) & ((\Add5~5\) # (GND)))
-- \Add5~7\ = CARRY((!\Add5~5\) # (!cnt_1ms(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1ms(4),
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: FF_X32_Y18_N7
\cnt_1ms[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add5~6_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1ms(4));

-- Location: LCCOMB_X32_Y18_N8
\Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (cnt_1ms(5) & (\Add5~7\ $ (GND))) # (!cnt_1ms(5) & (!\Add5~7\ & VCC))
-- \Add5~9\ = CARRY((cnt_1ms(5) & !\Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_1ms(5),
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: FF_X32_Y18_N9
\cnt_1ms[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add5~8_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1ms(5));

-- Location: LCCOMB_X32_Y18_N10
\Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (cnt_1ms(6) & (!\Add5~9\)) # (!cnt_1ms(6) & ((\Add5~9\) # (GND)))
-- \Add5~11\ = CARRY((!\Add5~9\) # (!cnt_1ms(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1ms(6),
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X33_Y18_N4
\cnt_1ms~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_1ms~3_combout\ = (!\Equal5~4_combout\ & \Add5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~4_combout\,
	datad => \Add5~10_combout\,
	combout => \cnt_1ms~3_combout\);

-- Location: FF_X33_Y18_N5
\cnt_1ms[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_1ms~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1ms(6));

-- Location: LCCOMB_X32_Y18_N12
\Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (cnt_1ms(7) & (\Add5~11\ $ (GND))) # (!cnt_1ms(7) & (!\Add5~11\ & VCC))
-- \Add5~13\ = CARRY((cnt_1ms(7) & !\Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1ms(7),
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: LCCOMB_X33_Y18_N6
\cnt_1ms~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_1ms~2_combout\ = (!\Equal5~4_combout\ & \Add5~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~4_combout\,
	datad => \Add5~12_combout\,
	combout => \cnt_1ms~2_combout\);

-- Location: FF_X33_Y18_N7
\cnt_1ms[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_1ms~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1ms(7));

-- Location: LCCOMB_X32_Y18_N14
\Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (cnt_1ms(8) & (!\Add5~13\)) # (!cnt_1ms(8) & ((\Add5~13\) # (GND)))
-- \Add5~15\ = CARRY((!\Add5~13\) # (!cnt_1ms(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_1ms(8),
	datad => VCC,
	cin => \Add5~13\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

-- Location: LCCOMB_X33_Y18_N0
\cnt_1ms~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_1ms~1_combout\ = (!\Equal5~4_combout\ & \Add5~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~4_combout\,
	datad => \Add5~14_combout\,
	combout => \cnt_1ms~1_combout\);

-- Location: FF_X33_Y18_N1
\cnt_1ms[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_1ms~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1ms(8));

-- Location: LCCOMB_X32_Y18_N16
\Add5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = (cnt_1ms(9) & (\Add5~15\ $ (GND))) # (!cnt_1ms(9) & (!\Add5~15\ & VCC))
-- \Add5~17\ = CARRY((cnt_1ms(9) & !\Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_1ms(9),
	datad => VCC,
	cin => \Add5~15\,
	combout => \Add5~16_combout\,
	cout => \Add5~17\);

-- Location: FF_X32_Y18_N17
\cnt_1ms[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add5~16_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1ms(9));

-- Location: LCCOMB_X33_Y18_N22
\Equal5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = (!cnt_1ms(9) & (cnt_1ms(8) & (cnt_1ms(6) & cnt_1ms(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1ms(9),
	datab => cnt_1ms(8),
	datac => cnt_1ms(6),
	datad => cnt_1ms(7),
	combout => \Equal5~2_combout\);

-- Location: LCCOMB_X32_Y18_N18
\Add5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = (cnt_1ms(10) & (!\Add5~17\)) # (!cnt_1ms(10) & ((\Add5~17\) # (GND)))
-- \Add5~19\ = CARRY((!\Add5~17\) # (!cnt_1ms(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_1ms(10),
	datad => VCC,
	cin => \Add5~17\,
	combout => \Add5~18_combout\,
	cout => \Add5~19\);

-- Location: FF_X32_Y18_N19
\cnt_1ms[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add5~18_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1ms(10));

-- Location: LCCOMB_X32_Y18_N20
\Add5~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~20_combout\ = (cnt_1ms(11) & (\Add5~19\ $ (GND))) # (!cnt_1ms(11) & (!\Add5~19\ & VCC))
-- \Add5~21\ = CARRY((cnt_1ms(11) & !\Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1ms(11),
	datad => VCC,
	cin => \Add5~19\,
	combout => \Add5~20_combout\,
	cout => \Add5~21\);

-- Location: LCCOMB_X33_Y18_N20
\cnt_1ms~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt_1ms~0_combout\ = (!\Equal5~4_combout\ & \Add5~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~4_combout\,
	datad => \Add5~20_combout\,
	combout => \cnt_1ms~0_combout\);

-- Location: FF_X33_Y18_N21
\cnt_1ms[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \cnt_1ms~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1ms(11));

-- Location: LCCOMB_X32_Y18_N22
\Add5~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~22_combout\ = (cnt_1ms(12) & (!\Add5~21\)) # (!cnt_1ms(12) & ((\Add5~21\) # (GND)))
-- \Add5~23\ = CARRY((!\Add5~21\) # (!cnt_1ms(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1ms(12),
	datad => VCC,
	cin => \Add5~21\,
	combout => \Add5~22_combout\,
	cout => \Add5~23\);

-- Location: FF_X32_Y18_N23
\cnt_1ms[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add5~22_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1ms(12));

-- Location: LCCOMB_X32_Y18_N24
\Add5~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~24_combout\ = (cnt_1ms(13) & (\Add5~23\ $ (GND))) # (!cnt_1ms(13) & (!\Add5~23\ & VCC))
-- \Add5~25\ = CARRY((cnt_1ms(13) & !\Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt_1ms(13),
	datad => VCC,
	cin => \Add5~23\,
	combout => \Add5~24_combout\,
	cout => \Add5~25\);

-- Location: FF_X32_Y18_N25
\cnt_1ms[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add5~24_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1ms(13));

-- Location: LCCOMB_X32_Y18_N26
\Add5~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~26_combout\ = (cnt_1ms(14) & (!\Add5~25\)) # (!cnt_1ms(14) & ((\Add5~25\) # (GND)))
-- \Add5~27\ = CARRY((!\Add5~25\) # (!cnt_1ms(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1ms(14),
	datad => VCC,
	cin => \Add5~25\,
	combout => \Add5~26_combout\,
	cout => \Add5~27\);

-- Location: FF_X32_Y18_N27
\cnt_1ms[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add5~26_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1ms(14));

-- Location: LCCOMB_X32_Y18_N28
\Add5~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~28_combout\ = \Add5~27\ $ (!cnt_1ms(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cnt_1ms(15),
	cin => \Add5~27\,
	combout => \Add5~28_combout\);

-- Location: FF_X32_Y18_N29
\cnt_1ms[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \Add5~28_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt_1ms(15));

-- Location: LCCOMB_X33_Y18_N2
\Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (cnt_1s(0) & (!cnt_1ms(15) & (!cnt_1ms(14) & cnt_1s(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1s(0),
	datab => cnt_1ms(15),
	datac => cnt_1ms(14),
	datad => cnt_1s(1),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X33_Y18_N26
\Equal5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (!cnt_1ms(13) & (!cnt_1ms(12) & (cnt_1ms(11) & !cnt_1ms(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1ms(13),
	datab => cnt_1ms(12),
	datac => cnt_1ms(11),
	datad => cnt_1ms(10),
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X33_Y18_N12
\Equal5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~3_combout\ = (!cnt_1ms(5) & (!cnt_1ms(4) & (!cnt_1ms(3) & !cnt_1ms(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt_1ms(5),
	datab => cnt_1ms(4),
	datac => cnt_1ms(3),
	datad => cnt_1ms(2),
	combout => \Equal5~3_combout\);

-- Location: LCCOMB_X33_Y18_N10
\Equal5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~4_combout\ = (\Equal5~2_combout\ & (\Equal5~0_combout\ & (\Equal5~1_combout\ & \Equal5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~2_combout\,
	datab => \Equal5~0_combout\,
	datac => \Equal5~1_combout\,
	datad => \Equal5~3_combout\,
	combout => \Equal5~4_combout\);

-- Location: LCCOMB_X33_Y18_N24
\T_1ms~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \T_1ms~0_combout\ = \T_1ms~reg0_q\ $ (\Equal5~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_1ms~reg0_q\,
	datad => \Equal5~4_combout\,
	combout => \T_1ms~0_combout\);

-- Location: FF_X33_Y18_N25
\T_1ms~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \T_1ms~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T_1ms~reg0_q\);

ww_T_1s <= \T_1s~output_o\;

ww_T_100ms <= \T_100ms~output_o\;

ww_T_50ms <= \T_50ms~output_o\;

ww_T_20ms <= \T_20ms~output_o\;

ww_T_10ms <= \T_10ms~output_o\;

ww_T_1ms <= \T_1ms~output_o\;
END structure;


