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

-- DATE "08/18/2026 09:33:16"

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

ENTITY 	PWM_LED IS
    PORT (
	clk : IN std_logic;
	rst_n : IN std_logic;
	LED : OUT std_logic_vector(2 DOWNTO 0)
	);
END PWM_LED;

-- Design Ports Information
-- LED[0]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_93,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_95,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_149,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_145,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PWM_LED IS
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
SIGNAL ww_LED : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \duty_cycle_R[0]~8_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \led_step_counter~11_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \led_step_counter~10_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \led_step_counter~9_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \led_step_counter~8_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \led_step_counter~7_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \led_step_counter~6_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \led_step_counter~5_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \led_step_counter~4_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \led_step_counter~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \led_step_counter~2_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \led_step_counter~1_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \led_step_counter~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \duty_cycle_R[7]~27_combout\ : std_logic;
SIGNAL \duty_cycle_R[0]~9\ : std_logic;
SIGNAL \duty_cycle_R[1]~10_combout\ : std_logic;
SIGNAL \duty_cycle_R[1]~11\ : std_logic;
SIGNAL \duty_cycle_R[2]~12_combout\ : std_logic;
SIGNAL \duty_cycle_R[2]~13\ : std_logic;
SIGNAL \duty_cycle_R[3]~14_combout\ : std_logic;
SIGNAL \duty_cycle_R[3]~15\ : std_logic;
SIGNAL \duty_cycle_R[4]~16_combout\ : std_logic;
SIGNAL \duty_cycle_R[4]~17\ : std_logic;
SIGNAL \duty_cycle_R[5]~18_combout\ : std_logic;
SIGNAL \duty_cycle_R[5]~19\ : std_logic;
SIGNAL \duty_cycle_R[6]~20_combout\ : std_logic;
SIGNAL \duty_cycle_R[7]~25_combout\ : std_logic;
SIGNAL \duty_cycle_R[7]~24_combout\ : std_logic;
SIGNAL \duty_cycle_R[7]~26_combout\ : std_logic;
SIGNAL \led_dir~0_combout\ : std_logic;
SIGNAL \led_dir~q\ : std_logic;
SIGNAL \duty_cycle_R[6]~21\ : std_logic;
SIGNAL \duty_cycle_R[7]~22_combout\ : std_logic;
SIGNAL \led_pwm_counter[0]~16_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \led_pwm_counter[0]~17\ : std_logic;
SIGNAL \led_pwm_counter[1]~18_combout\ : std_logic;
SIGNAL \led_pwm_counter[1]~19\ : std_logic;
SIGNAL \led_pwm_counter[2]~20_combout\ : std_logic;
SIGNAL \led_pwm_counter[2]~21\ : std_logic;
SIGNAL \led_pwm_counter[3]~22_combout\ : std_logic;
SIGNAL \led_pwm_counter[3]~23\ : std_logic;
SIGNAL \led_pwm_counter[4]~24_combout\ : std_logic;
SIGNAL \led_pwm_counter[4]~25\ : std_logic;
SIGNAL \led_pwm_counter[5]~26_combout\ : std_logic;
SIGNAL \led_pwm_counter[5]~27\ : std_logic;
SIGNAL \led_pwm_counter[6]~28_combout\ : std_logic;
SIGNAL \led_pwm_counter[6]~29\ : std_logic;
SIGNAL \led_pwm_counter[7]~30_combout\ : std_logic;
SIGNAL \led_pwm_counter[7]~31\ : std_logic;
SIGNAL \led_pwm_counter[8]~32_combout\ : std_logic;
SIGNAL \led_pwm_counter[8]~33\ : std_logic;
SIGNAL \led_pwm_counter[9]~34_combout\ : std_logic;
SIGNAL \led_pwm_counter[9]~35\ : std_logic;
SIGNAL \led_pwm_counter[10]~36_combout\ : std_logic;
SIGNAL \led_pwm_counter[10]~37\ : std_logic;
SIGNAL \led_pwm_counter[11]~38_combout\ : std_logic;
SIGNAL \led_pwm_counter[11]~39\ : std_logic;
SIGNAL \led_pwm_counter[12]~40_combout\ : std_logic;
SIGNAL \led_pwm_counter[12]~41\ : std_logic;
SIGNAL \led_pwm_counter[13]~42_combout\ : std_logic;
SIGNAL \led_pwm_counter[13]~43\ : std_logic;
SIGNAL \led_pwm_counter[14]~44_combout\ : std_logic;
SIGNAL \led_pwm_counter[14]~45\ : std_logic;
SIGNAL \led_pwm_counter[15]~46_combout\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~14_combout\ : std_logic;
SIGNAL \LED[2]~0_combout\ : std_logic;
SIGNAL \LED[2]~reg0_q\ : std_logic;
SIGNAL led_step_counter : std_logic_vector(18 DOWNTO 0);
SIGNAL led_pwm_counter : std_logic_vector(15 DOWNTO 0);
SIGNAL duty_cycle_R : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_LED[2]~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst_n <= rst_n;
LED <= ww_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_LED[2]~reg0_q\ <= NOT \LED[2]~reg0_q\;

-- Location: IOOBUF_X34_Y0_N9
\LED[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N30
\LED[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

-- Location: IOOBUF_X41_Y0_N30
\LED[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LED[2]~reg0_q\,
	devoe => ww_devoe,
	o => \LED[2]~output_o\);

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

-- Location: LCCOMB_X44_Y18_N12
\duty_cycle_R[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_cycle_R[0]~8_combout\ = !duty_cycle_R(0)
-- \duty_cycle_R[0]~9\ = CARRY(!duty_cycle_R(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => duty_cycle_R(0),
	combout => \duty_cycle_R[0]~8_combout\,
	cout => \duty_cycle_R[0]~9\);

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

-- Location: LCCOMB_X44_Y18_N8
\Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (duty_cycle_R(5)) # ((duty_cycle_R(3)) # ((duty_cycle_R(6)) # (duty_cycle_R(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => duty_cycle_R(5),
	datab => duty_cycle_R(3),
	datac => duty_cycle_R(6),
	datad => duty_cycle_R(4),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X44_Y18_N6
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (duty_cycle_R(7)) # ((duty_cycle_R(2)) # ((duty_cycle_R(1)) # (duty_cycle_R(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => duty_cycle_R(7),
	datab => duty_cycle_R(2),
	datac => duty_cycle_R(1),
	datad => duty_cycle_R(0),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X44_Y18_N2
\Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (\Equal2~1_combout\) # (\Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~1_combout\,
	datad => \Equal2~0_combout\,
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X46_Y19_N14
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = led_step_counter(0) $ (VCC)
-- \Add1~1\ = CARRY(led_step_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_step_counter(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X46_Y19_N6
\led_step_counter~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_step_counter~11_combout\ = (\Add1~0_combout\ & !\Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~0_combout\,
	datad => \Equal0~5_combout\,
	combout => \led_step_counter~11_combout\);

-- Location: FF_X46_Y19_N7
\led_step_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_step_counter~11_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_step_counter(0));

-- Location: LCCOMB_X46_Y19_N16
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (led_step_counter(1) & (!\Add1~1\)) # (!led_step_counter(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!led_step_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_step_counter(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: FF_X46_Y19_N17
\led_step_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_step_counter(1));

-- Location: LCCOMB_X46_Y19_N18
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (led_step_counter(2) & (\Add1~3\ $ (GND))) # (!led_step_counter(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((led_step_counter(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_step_counter(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: FF_X46_Y19_N19
\led_step_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_step_counter(2));

-- Location: LCCOMB_X46_Y19_N20
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (led_step_counter(3) & (!\Add1~5\)) # (!led_step_counter(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!led_step_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_step_counter(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: FF_X46_Y19_N21
\led_step_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~6_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_step_counter(3));

-- Location: LCCOMB_X46_Y19_N22
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (led_step_counter(4) & (\Add1~7\ $ (GND))) # (!led_step_counter(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((led_step_counter(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_step_counter(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X46_Y19_N23
\led_step_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~8_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_step_counter(4));

-- Location: LCCOMB_X46_Y19_N24
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (led_step_counter(5) & (!\Add1~9\)) # (!led_step_counter(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!led_step_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_step_counter(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X46_Y19_N2
\led_step_counter~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_step_counter~10_combout\ = (\Add1~10_combout\ & !\Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~10_combout\,
	datad => \Equal0~5_combout\,
	combout => \led_step_counter~10_combout\);

-- Location: FF_X46_Y19_N3
\led_step_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_step_counter~10_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_step_counter(5));

-- Location: LCCOMB_X46_Y19_N26
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (led_step_counter(6) & (\Add1~11\ $ (GND))) # (!led_step_counter(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((led_step_counter(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_step_counter(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X46_Y19_N12
\led_step_counter~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_step_counter~9_combout\ = (\Add1~12_combout\ & !\Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~12_combout\,
	datad => \Equal0~5_combout\,
	combout => \led_step_counter~9_combout\);

-- Location: FF_X46_Y19_N13
\led_step_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_step_counter~9_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_step_counter(6));

-- Location: LCCOMB_X46_Y19_N28
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (led_step_counter(7) & (!\Add1~13\)) # (!led_step_counter(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!led_step_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_step_counter(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X46_Y19_N10
\led_step_counter~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_step_counter~8_combout\ = (\Add1~14_combout\ & !\Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~14_combout\,
	datad => \Equal0~5_combout\,
	combout => \led_step_counter~8_combout\);

-- Location: FF_X46_Y19_N11
\led_step_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_step_counter~8_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_step_counter(7));

-- Location: LCCOMB_X46_Y19_N30
\Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (led_step_counter(8) & (\Add1~15\ $ (GND))) # (!led_step_counter(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((led_step_counter(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_step_counter(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X46_Y19_N8
\led_step_counter~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_step_counter~7_combout\ = (\Add1~16_combout\ & !\Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~16_combout\,
	datad => \Equal0~5_combout\,
	combout => \led_step_counter~7_combout\);

-- Location: FF_X46_Y19_N9
\led_step_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_step_counter~7_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_step_counter(8));

-- Location: LCCOMB_X46_Y18_N0
\Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (led_step_counter(9) & (!\Add1~17\)) # (!led_step_counter(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!led_step_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_step_counter(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: FF_X46_Y18_N1
\led_step_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~18_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_step_counter(9));

-- Location: LCCOMB_X46_Y18_N2
\Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (led_step_counter(10) & (\Add1~19\ $ (GND))) # (!led_step_counter(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((led_step_counter(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_step_counter(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X45_Y18_N12
\led_step_counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_step_counter~6_combout\ = (!\Equal0~5_combout\ & \Add1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~5_combout\,
	datad => \Add1~20_combout\,
	combout => \led_step_counter~6_combout\);

-- Location: FF_X45_Y18_N13
\led_step_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_step_counter~6_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_step_counter(10));

-- Location: LCCOMB_X46_Y18_N4
\Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (led_step_counter(11) & (!\Add1~21\)) # (!led_step_counter(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!led_step_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_step_counter(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: FF_X46_Y18_N5
\led_step_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~22_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_step_counter(11));

-- Location: LCCOMB_X46_Y18_N6
\Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (led_step_counter(12) & (\Add1~23\ $ (GND))) # (!led_step_counter(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((led_step_counter(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_step_counter(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X45_Y18_N28
\led_step_counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_step_counter~5_combout\ = (!\Equal0~5_combout\ & \Add1~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~5_combout\,
	datad => \Add1~24_combout\,
	combout => \led_step_counter~5_combout\);

-- Location: FF_X45_Y18_N29
\led_step_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_step_counter~5_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_step_counter(12));

-- Location: LCCOMB_X46_Y18_N8
\Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (led_step_counter(13) & (!\Add1~25\)) # (!led_step_counter(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!led_step_counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_step_counter(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X46_Y18_N30
\led_step_counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_step_counter~4_combout\ = (!\Equal0~5_combout\ & \Add1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datac => \Add1~26_combout\,
	combout => \led_step_counter~4_combout\);

-- Location: FF_X46_Y18_N31
\led_step_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_step_counter~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_step_counter(13));

-- Location: LCCOMB_X46_Y18_N10
\Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (led_step_counter(14) & (\Add1~27\ $ (GND))) # (!led_step_counter(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((led_step_counter(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_step_counter(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X46_Y18_N28
\led_step_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_step_counter~3_combout\ = (!\Equal0~5_combout\ & \Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~5_combout\,
	datad => \Add1~28_combout\,
	combout => \led_step_counter~3_combout\);

-- Location: FF_X46_Y18_N29
\led_step_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_step_counter~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_step_counter(14));

-- Location: LCCOMB_X45_Y18_N10
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!led_step_counter(11) & (led_step_counter(12) & (led_step_counter(13) & led_step_counter(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_step_counter(11),
	datab => led_step_counter(12),
	datac => led_step_counter(13),
	datad => led_step_counter(14),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X46_Y18_N12
\Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (led_step_counter(15) & (!\Add1~29\)) # (!led_step_counter(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!led_step_counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_step_counter(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X46_Y18_N20
\led_step_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_step_counter~2_combout\ = (!\Equal0~5_combout\ & \Add1~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~5_combout\,
	datad => \Add1~30_combout\,
	combout => \led_step_counter~2_combout\);

-- Location: FF_X46_Y18_N21
\led_step_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_step_counter~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_step_counter(15));

-- Location: LCCOMB_X46_Y18_N14
\Add1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (led_step_counter(16) & (\Add1~31\ $ (GND))) # (!led_step_counter(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((led_step_counter(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_step_counter(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X46_Y18_N22
\led_step_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_step_counter~1_combout\ = (!\Equal0~5_combout\ & \Add1~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datac => \Add1~32_combout\,
	combout => \led_step_counter~1_combout\);

-- Location: FF_X46_Y18_N23
\led_step_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_step_counter~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_step_counter(16));

-- Location: LCCOMB_X46_Y18_N16
\Add1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (led_step_counter(17) & (!\Add1~33\)) # (!led_step_counter(17) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!led_step_counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_step_counter(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: FF_X46_Y18_N17
\led_step_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~34_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_step_counter(17));

-- Location: LCCOMB_X46_Y18_N18
\Add1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = \Add1~35\ $ (!led_step_counter(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => led_step_counter(18),
	cin => \Add1~35\,
	combout => \Add1~36_combout\);

-- Location: LCCOMB_X46_Y18_N24
\led_step_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_step_counter~0_combout\ = (!\Equal0~5_combout\ & \Add1~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~5_combout\,
	datad => \Add1~36_combout\,
	combout => \led_step_counter~0_combout\);

-- Location: FF_X46_Y18_N25
\led_step_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_step_counter~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_step_counter(18));

-- Location: LCCOMB_X46_Y18_N26
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (led_step_counter(16) & (led_step_counter(18) & (led_step_counter(15) & !led_step_counter(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_step_counter(16),
	datab => led_step_counter(18),
	datac => led_step_counter(15),
	datad => led_step_counter(17),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X45_Y18_N30
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (led_step_counter(10) & (!led_step_counter(9) & (led_step_counter(7) & led_step_counter(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_step_counter(10),
	datab => led_step_counter(9),
	datac => led_step_counter(7),
	datad => led_step_counter(8),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X46_Y19_N0
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (led_step_counter(6) & (led_step_counter(5) & (!led_step_counter(4) & !led_step_counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_step_counter(6),
	datab => led_step_counter(5),
	datac => led_step_counter(4),
	datad => led_step_counter(3),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X45_Y18_N16
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~0_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X45_Y18_N26
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!led_step_counter(1) & (!led_step_counter(0) & (!led_step_counter(2) & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_step_counter(1),
	datab => led_step_counter(0),
	datac => led_step_counter(2),
	datad => \Equal0~4_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X44_Y18_N10
\duty_cycle_R[7]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_cycle_R[7]~27_combout\ = (!\duty_cycle_R[7]~26_combout\ & (\Equal0~5_combout\ & ((\Equal2~2_combout\) # (!\led_dir~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_dir~q\,
	datab => \Equal2~2_combout\,
	datac => \duty_cycle_R[7]~26_combout\,
	datad => \Equal0~5_combout\,
	combout => \duty_cycle_R[7]~27_combout\);

-- Location: FF_X44_Y18_N13
\duty_cycle_R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty_cycle_R[0]~8_combout\,
	clrn => \rst_n~input_o\,
	ena => \duty_cycle_R[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_cycle_R(0));

-- Location: LCCOMB_X44_Y18_N14
\duty_cycle_R[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_cycle_R[1]~10_combout\ = ((duty_cycle_R(1) $ (\led_dir~q\ $ (!\duty_cycle_R[0]~9\)))) # (GND)
-- \duty_cycle_R[1]~11\ = CARRY((duty_cycle_R(1) & ((\led_dir~q\) # (!\duty_cycle_R[0]~9\))) # (!duty_cycle_R(1) & (\led_dir~q\ & !\duty_cycle_R[0]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty_cycle_R(1),
	datab => \led_dir~q\,
	datad => VCC,
	cin => \duty_cycle_R[0]~9\,
	combout => \duty_cycle_R[1]~10_combout\,
	cout => \duty_cycle_R[1]~11\);

-- Location: FF_X44_Y18_N15
\duty_cycle_R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty_cycle_R[1]~10_combout\,
	clrn => \rst_n~input_o\,
	ena => \duty_cycle_R[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_cycle_R(1));

-- Location: LCCOMB_X44_Y18_N16
\duty_cycle_R[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_cycle_R[2]~12_combout\ = (\led_dir~q\ & ((duty_cycle_R(2) & (\duty_cycle_R[1]~11\ & VCC)) # (!duty_cycle_R(2) & (!\duty_cycle_R[1]~11\)))) # (!\led_dir~q\ & ((duty_cycle_R(2) & (!\duty_cycle_R[1]~11\)) # (!duty_cycle_R(2) & ((\duty_cycle_R[1]~11\) # 
-- (GND)))))
-- \duty_cycle_R[2]~13\ = CARRY((\led_dir~q\ & (!duty_cycle_R(2) & !\duty_cycle_R[1]~11\)) # (!\led_dir~q\ & ((!\duty_cycle_R[1]~11\) # (!duty_cycle_R(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \led_dir~q\,
	datab => duty_cycle_R(2),
	datad => VCC,
	cin => \duty_cycle_R[1]~11\,
	combout => \duty_cycle_R[2]~12_combout\,
	cout => \duty_cycle_R[2]~13\);

-- Location: FF_X44_Y18_N17
\duty_cycle_R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty_cycle_R[2]~12_combout\,
	clrn => \rst_n~input_o\,
	ena => \duty_cycle_R[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_cycle_R(2));

-- Location: LCCOMB_X44_Y18_N18
\duty_cycle_R[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_cycle_R[3]~14_combout\ = ((\led_dir~q\ $ (duty_cycle_R(3) $ (!\duty_cycle_R[2]~13\)))) # (GND)
-- \duty_cycle_R[3]~15\ = CARRY((\led_dir~q\ & ((duty_cycle_R(3)) # (!\duty_cycle_R[2]~13\))) # (!\led_dir~q\ & (duty_cycle_R(3) & !\duty_cycle_R[2]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \led_dir~q\,
	datab => duty_cycle_R(3),
	datad => VCC,
	cin => \duty_cycle_R[2]~13\,
	combout => \duty_cycle_R[3]~14_combout\,
	cout => \duty_cycle_R[3]~15\);

-- Location: FF_X44_Y18_N19
\duty_cycle_R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty_cycle_R[3]~14_combout\,
	clrn => \rst_n~input_o\,
	ena => \duty_cycle_R[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_cycle_R(3));

-- Location: LCCOMB_X44_Y18_N20
\duty_cycle_R[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_cycle_R[4]~16_combout\ = (\led_dir~q\ & ((duty_cycle_R(4) & (\duty_cycle_R[3]~15\ & VCC)) # (!duty_cycle_R(4) & (!\duty_cycle_R[3]~15\)))) # (!\led_dir~q\ & ((duty_cycle_R(4) & (!\duty_cycle_R[3]~15\)) # (!duty_cycle_R(4) & ((\duty_cycle_R[3]~15\) # 
-- (GND)))))
-- \duty_cycle_R[4]~17\ = CARRY((\led_dir~q\ & (!duty_cycle_R(4) & !\duty_cycle_R[3]~15\)) # (!\led_dir~q\ & ((!\duty_cycle_R[3]~15\) # (!duty_cycle_R(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \led_dir~q\,
	datab => duty_cycle_R(4),
	datad => VCC,
	cin => \duty_cycle_R[3]~15\,
	combout => \duty_cycle_R[4]~16_combout\,
	cout => \duty_cycle_R[4]~17\);

-- Location: FF_X44_Y18_N21
\duty_cycle_R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty_cycle_R[4]~16_combout\,
	clrn => \rst_n~input_o\,
	ena => \duty_cycle_R[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_cycle_R(4));

-- Location: LCCOMB_X44_Y18_N22
\duty_cycle_R[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_cycle_R[5]~18_combout\ = ((duty_cycle_R(5) $ (\led_dir~q\ $ (!\duty_cycle_R[4]~17\)))) # (GND)
-- \duty_cycle_R[5]~19\ = CARRY((duty_cycle_R(5) & ((\led_dir~q\) # (!\duty_cycle_R[4]~17\))) # (!duty_cycle_R(5) & (\led_dir~q\ & !\duty_cycle_R[4]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty_cycle_R(5),
	datab => \led_dir~q\,
	datad => VCC,
	cin => \duty_cycle_R[4]~17\,
	combout => \duty_cycle_R[5]~18_combout\,
	cout => \duty_cycle_R[5]~19\);

-- Location: FF_X44_Y18_N23
\duty_cycle_R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty_cycle_R[5]~18_combout\,
	clrn => \rst_n~input_o\,
	ena => \duty_cycle_R[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_cycle_R(5));

-- Location: LCCOMB_X44_Y18_N24
\duty_cycle_R[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_cycle_R[6]~20_combout\ = (duty_cycle_R(6) & ((\led_dir~q\ & (\duty_cycle_R[5]~19\ & VCC)) # (!\led_dir~q\ & (!\duty_cycle_R[5]~19\)))) # (!duty_cycle_R(6) & ((\led_dir~q\ & (!\duty_cycle_R[5]~19\)) # (!\led_dir~q\ & ((\duty_cycle_R[5]~19\) # 
-- (GND)))))
-- \duty_cycle_R[6]~21\ = CARRY((duty_cycle_R(6) & (!\led_dir~q\ & !\duty_cycle_R[5]~19\)) # (!duty_cycle_R(6) & ((!\duty_cycle_R[5]~19\) # (!\led_dir~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty_cycle_R(6),
	datab => \led_dir~q\,
	datad => VCC,
	cin => \duty_cycle_R[5]~19\,
	combout => \duty_cycle_R[6]~20_combout\,
	cout => \duty_cycle_R[6]~21\);

-- Location: FF_X44_Y18_N25
\duty_cycle_R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty_cycle_R[6]~20_combout\,
	clrn => \rst_n~input_o\,
	ena => \duty_cycle_R[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_cycle_R(6));

-- Location: LCCOMB_X44_Y18_N30
\duty_cycle_R[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_cycle_R[7]~25_combout\ = (duty_cycle_R(4) & (duty_cycle_R(2) & (duty_cycle_R(5) & duty_cycle_R(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => duty_cycle_R(4),
	datab => duty_cycle_R(2),
	datac => duty_cycle_R(5),
	datad => duty_cycle_R(3),
	combout => \duty_cycle_R[7]~25_combout\);

-- Location: LCCOMB_X44_Y18_N0
\duty_cycle_R[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_cycle_R[7]~24_combout\ = (duty_cycle_R(7) & (!\led_dir~q\ & (duty_cycle_R(1) & duty_cycle_R(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => duty_cycle_R(7),
	datab => \led_dir~q\,
	datac => duty_cycle_R(1),
	datad => duty_cycle_R(0),
	combout => \duty_cycle_R[7]~24_combout\);

-- Location: LCCOMB_X44_Y18_N4
\duty_cycle_R[7]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_cycle_R[7]~26_combout\ = (duty_cycle_R(6) & (\duty_cycle_R[7]~25_combout\ & \duty_cycle_R[7]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => duty_cycle_R(6),
	datac => \duty_cycle_R[7]~25_combout\,
	datad => \duty_cycle_R[7]~24_combout\,
	combout => \duty_cycle_R[7]~26_combout\);

-- Location: LCCOMB_X44_Y18_N28
\led_dir~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_dir~0_combout\ = (\Equal0~5_combout\ & ((\duty_cycle_R[7]~26_combout\) # ((\Equal2~2_combout\ & \led_dir~q\)))) # (!\Equal0~5_combout\ & (((\led_dir~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty_cycle_R[7]~26_combout\,
	datab => \Equal2~2_combout\,
	datac => \led_dir~q\,
	datad => \Equal0~5_combout\,
	combout => \led_dir~0_combout\);

-- Location: FF_X44_Y18_N29
led_dir : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_dir~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_dir~q\);

-- Location: LCCOMB_X44_Y18_N26
\duty_cycle_R[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \duty_cycle_R[7]~22_combout\ = duty_cycle_R(7) $ (\duty_cycle_R[6]~21\ $ (!\led_dir~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty_cycle_R(7),
	datad => \led_dir~q\,
	cin => \duty_cycle_R[6]~21\,
	combout => \duty_cycle_R[7]~22_combout\);

-- Location: FF_X44_Y18_N27
\duty_cycle_R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \duty_cycle_R[7]~22_combout\,
	clrn => \rst_n~input_o\,
	ena => \duty_cycle_R[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => duty_cycle_R(7));

-- Location: LCCOMB_X48_Y18_N0
\led_pwm_counter[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_pwm_counter[0]~16_combout\ = led_pwm_counter(0) $ (VCC)
-- \led_pwm_counter[0]~17\ = CARRY(led_pwm_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => led_pwm_counter(0),
	datad => VCC,
	combout => \led_pwm_counter[0]~16_combout\,
	cout => \led_pwm_counter[0]~17\);

-- Location: LCCOMB_X49_Y18_N4
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!led_pwm_counter(10) & (!led_pwm_counter(11) & (!led_pwm_counter(13) & !led_pwm_counter(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_pwm_counter(10),
	datab => led_pwm_counter(11),
	datac => led_pwm_counter(13),
	datad => led_pwm_counter(12),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X49_Y18_N2
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (((!led_pwm_counter(1)) # (!led_pwm_counter(2))) # (!led_pwm_counter(3))) # (!led_pwm_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_pwm_counter(0),
	datab => led_pwm_counter(3),
	datac => led_pwm_counter(2),
	datad => led_pwm_counter(1),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X49_Y18_N28
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (led_pwm_counter(6) & ((led_pwm_counter(4)) # ((led_pwm_counter(5)) # (!\LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_pwm_counter(4),
	datab => led_pwm_counter(6),
	datac => led_pwm_counter(5),
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X49_Y18_N6
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (led_pwm_counter(9) & (led_pwm_counter(8) & ((led_pwm_counter(7)) # (\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_pwm_counter(7),
	datab => led_pwm_counter(9),
	datac => led_pwm_counter(8),
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X49_Y18_N12
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (led_pwm_counter(14) & (led_pwm_counter(15) & ((\LessThan0~3_combout\) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_pwm_counter(14),
	datab => led_pwm_counter(15),
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~4_combout\);

-- Location: FF_X48_Y18_N1
\led_pwm_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_pwm_counter[0]~16_combout\,
	clrn => \rst_n~input_o\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_pwm_counter(0));

-- Location: LCCOMB_X48_Y18_N2
\led_pwm_counter[1]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_pwm_counter[1]~18_combout\ = (led_pwm_counter(1) & (!\led_pwm_counter[0]~17\)) # (!led_pwm_counter(1) & ((\led_pwm_counter[0]~17\) # (GND)))
-- \led_pwm_counter[1]~19\ = CARRY((!\led_pwm_counter[0]~17\) # (!led_pwm_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_pwm_counter(1),
	datad => VCC,
	cin => \led_pwm_counter[0]~17\,
	combout => \led_pwm_counter[1]~18_combout\,
	cout => \led_pwm_counter[1]~19\);

-- Location: FF_X48_Y18_N3
\led_pwm_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_pwm_counter[1]~18_combout\,
	clrn => \rst_n~input_o\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_pwm_counter(1));

-- Location: LCCOMB_X48_Y18_N4
\led_pwm_counter[2]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_pwm_counter[2]~20_combout\ = (led_pwm_counter(2) & (\led_pwm_counter[1]~19\ $ (GND))) # (!led_pwm_counter(2) & (!\led_pwm_counter[1]~19\ & VCC))
-- \led_pwm_counter[2]~21\ = CARRY((led_pwm_counter(2) & !\led_pwm_counter[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_pwm_counter(2),
	datad => VCC,
	cin => \led_pwm_counter[1]~19\,
	combout => \led_pwm_counter[2]~20_combout\,
	cout => \led_pwm_counter[2]~21\);

-- Location: FF_X48_Y18_N5
\led_pwm_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_pwm_counter[2]~20_combout\,
	clrn => \rst_n~input_o\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_pwm_counter(2));

-- Location: LCCOMB_X48_Y18_N6
\led_pwm_counter[3]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_pwm_counter[3]~22_combout\ = (led_pwm_counter(3) & (!\led_pwm_counter[2]~21\)) # (!led_pwm_counter(3) & ((\led_pwm_counter[2]~21\) # (GND)))
-- \led_pwm_counter[3]~23\ = CARRY((!\led_pwm_counter[2]~21\) # (!led_pwm_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_pwm_counter(3),
	datad => VCC,
	cin => \led_pwm_counter[2]~21\,
	combout => \led_pwm_counter[3]~22_combout\,
	cout => \led_pwm_counter[3]~23\);

-- Location: FF_X48_Y18_N7
\led_pwm_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_pwm_counter[3]~22_combout\,
	clrn => \rst_n~input_o\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_pwm_counter(3));

-- Location: LCCOMB_X48_Y18_N8
\led_pwm_counter[4]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_pwm_counter[4]~24_combout\ = (led_pwm_counter(4) & (\led_pwm_counter[3]~23\ $ (GND))) # (!led_pwm_counter(4) & (!\led_pwm_counter[3]~23\ & VCC))
-- \led_pwm_counter[4]~25\ = CARRY((led_pwm_counter(4) & !\led_pwm_counter[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_pwm_counter(4),
	datad => VCC,
	cin => \led_pwm_counter[3]~23\,
	combout => \led_pwm_counter[4]~24_combout\,
	cout => \led_pwm_counter[4]~25\);

-- Location: FF_X48_Y18_N9
\led_pwm_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_pwm_counter[4]~24_combout\,
	clrn => \rst_n~input_o\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_pwm_counter(4));

-- Location: LCCOMB_X48_Y18_N10
\led_pwm_counter[5]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_pwm_counter[5]~26_combout\ = (led_pwm_counter(5) & (!\led_pwm_counter[4]~25\)) # (!led_pwm_counter(5) & ((\led_pwm_counter[4]~25\) # (GND)))
-- \led_pwm_counter[5]~27\ = CARRY((!\led_pwm_counter[4]~25\) # (!led_pwm_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_pwm_counter(5),
	datad => VCC,
	cin => \led_pwm_counter[4]~25\,
	combout => \led_pwm_counter[5]~26_combout\,
	cout => \led_pwm_counter[5]~27\);

-- Location: FF_X48_Y18_N11
\led_pwm_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_pwm_counter[5]~26_combout\,
	clrn => \rst_n~input_o\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_pwm_counter(5));

-- Location: LCCOMB_X48_Y18_N12
\led_pwm_counter[6]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_pwm_counter[6]~28_combout\ = (led_pwm_counter(6) & (\led_pwm_counter[5]~27\ $ (GND))) # (!led_pwm_counter(6) & (!\led_pwm_counter[5]~27\ & VCC))
-- \led_pwm_counter[6]~29\ = CARRY((led_pwm_counter(6) & !\led_pwm_counter[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_pwm_counter(6),
	datad => VCC,
	cin => \led_pwm_counter[5]~27\,
	combout => \led_pwm_counter[6]~28_combout\,
	cout => \led_pwm_counter[6]~29\);

-- Location: FF_X48_Y18_N13
\led_pwm_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_pwm_counter[6]~28_combout\,
	clrn => \rst_n~input_o\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_pwm_counter(6));

-- Location: LCCOMB_X48_Y18_N14
\led_pwm_counter[7]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_pwm_counter[7]~30_combout\ = (led_pwm_counter(7) & (!\led_pwm_counter[6]~29\)) # (!led_pwm_counter(7) & ((\led_pwm_counter[6]~29\) # (GND)))
-- \led_pwm_counter[7]~31\ = CARRY((!\led_pwm_counter[6]~29\) # (!led_pwm_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_pwm_counter(7),
	datad => VCC,
	cin => \led_pwm_counter[6]~29\,
	combout => \led_pwm_counter[7]~30_combout\,
	cout => \led_pwm_counter[7]~31\);

-- Location: FF_X48_Y18_N15
\led_pwm_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_pwm_counter[7]~30_combout\,
	clrn => \rst_n~input_o\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_pwm_counter(7));

-- Location: LCCOMB_X48_Y18_N16
\led_pwm_counter[8]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_pwm_counter[8]~32_combout\ = (led_pwm_counter(8) & (\led_pwm_counter[7]~31\ $ (GND))) # (!led_pwm_counter(8) & (!\led_pwm_counter[7]~31\ & VCC))
-- \led_pwm_counter[8]~33\ = CARRY((led_pwm_counter(8) & !\led_pwm_counter[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_pwm_counter(8),
	datad => VCC,
	cin => \led_pwm_counter[7]~31\,
	combout => \led_pwm_counter[8]~32_combout\,
	cout => \led_pwm_counter[8]~33\);

-- Location: FF_X48_Y18_N17
\led_pwm_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_pwm_counter[8]~32_combout\,
	clrn => \rst_n~input_o\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_pwm_counter(8));

-- Location: LCCOMB_X48_Y18_N18
\led_pwm_counter[9]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_pwm_counter[9]~34_combout\ = (led_pwm_counter(9) & (!\led_pwm_counter[8]~33\)) # (!led_pwm_counter(9) & ((\led_pwm_counter[8]~33\) # (GND)))
-- \led_pwm_counter[9]~35\ = CARRY((!\led_pwm_counter[8]~33\) # (!led_pwm_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_pwm_counter(9),
	datad => VCC,
	cin => \led_pwm_counter[8]~33\,
	combout => \led_pwm_counter[9]~34_combout\,
	cout => \led_pwm_counter[9]~35\);

-- Location: FF_X48_Y18_N19
\led_pwm_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_pwm_counter[9]~34_combout\,
	clrn => \rst_n~input_o\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_pwm_counter(9));

-- Location: LCCOMB_X48_Y18_N20
\led_pwm_counter[10]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_pwm_counter[10]~36_combout\ = (led_pwm_counter(10) & (\led_pwm_counter[9]~35\ $ (GND))) # (!led_pwm_counter(10) & (!\led_pwm_counter[9]~35\ & VCC))
-- \led_pwm_counter[10]~37\ = CARRY((led_pwm_counter(10) & !\led_pwm_counter[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_pwm_counter(10),
	datad => VCC,
	cin => \led_pwm_counter[9]~35\,
	combout => \led_pwm_counter[10]~36_combout\,
	cout => \led_pwm_counter[10]~37\);

-- Location: FF_X48_Y18_N21
\led_pwm_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_pwm_counter[10]~36_combout\,
	clrn => \rst_n~input_o\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_pwm_counter(10));

-- Location: LCCOMB_X48_Y18_N22
\led_pwm_counter[11]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_pwm_counter[11]~38_combout\ = (led_pwm_counter(11) & (!\led_pwm_counter[10]~37\)) # (!led_pwm_counter(11) & ((\led_pwm_counter[10]~37\) # (GND)))
-- \led_pwm_counter[11]~39\ = CARRY((!\led_pwm_counter[10]~37\) # (!led_pwm_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_pwm_counter(11),
	datad => VCC,
	cin => \led_pwm_counter[10]~37\,
	combout => \led_pwm_counter[11]~38_combout\,
	cout => \led_pwm_counter[11]~39\);

-- Location: FF_X48_Y18_N23
\led_pwm_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_pwm_counter[11]~38_combout\,
	clrn => \rst_n~input_o\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_pwm_counter(11));

-- Location: LCCOMB_X48_Y18_N24
\led_pwm_counter[12]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_pwm_counter[12]~40_combout\ = (led_pwm_counter(12) & (\led_pwm_counter[11]~39\ $ (GND))) # (!led_pwm_counter(12) & (!\led_pwm_counter[11]~39\ & VCC))
-- \led_pwm_counter[12]~41\ = CARRY((led_pwm_counter(12) & !\led_pwm_counter[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_pwm_counter(12),
	datad => VCC,
	cin => \led_pwm_counter[11]~39\,
	combout => \led_pwm_counter[12]~40_combout\,
	cout => \led_pwm_counter[12]~41\);

-- Location: FF_X48_Y18_N25
\led_pwm_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_pwm_counter[12]~40_combout\,
	clrn => \rst_n~input_o\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_pwm_counter(12));

-- Location: LCCOMB_X48_Y18_N26
\led_pwm_counter[13]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_pwm_counter[13]~42_combout\ = (led_pwm_counter(13) & (!\led_pwm_counter[12]~41\)) # (!led_pwm_counter(13) & ((\led_pwm_counter[12]~41\) # (GND)))
-- \led_pwm_counter[13]~43\ = CARRY((!\led_pwm_counter[12]~41\) # (!led_pwm_counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_pwm_counter(13),
	datad => VCC,
	cin => \led_pwm_counter[12]~41\,
	combout => \led_pwm_counter[13]~42_combout\,
	cout => \led_pwm_counter[13]~43\);

-- Location: FF_X48_Y18_N27
\led_pwm_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_pwm_counter[13]~42_combout\,
	clrn => \rst_n~input_o\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_pwm_counter(13));

-- Location: LCCOMB_X48_Y18_N28
\led_pwm_counter[14]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_pwm_counter[14]~44_combout\ = (led_pwm_counter(14) & (\led_pwm_counter[13]~43\ $ (GND))) # (!led_pwm_counter(14) & (!\led_pwm_counter[13]~43\ & VCC))
-- \led_pwm_counter[14]~45\ = CARRY((led_pwm_counter(14) & !\led_pwm_counter[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => led_pwm_counter(14),
	datad => VCC,
	cin => \led_pwm_counter[13]~43\,
	combout => \led_pwm_counter[14]~44_combout\,
	cout => \led_pwm_counter[14]~45\);

-- Location: FF_X48_Y18_N29
\led_pwm_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_pwm_counter[14]~44_combout\,
	clrn => \rst_n~input_o\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_pwm_counter(14));

-- Location: LCCOMB_X48_Y18_N30
\led_pwm_counter[15]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \led_pwm_counter[15]~46_combout\ = led_pwm_counter(15) $ (\led_pwm_counter[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_pwm_counter(15),
	cin => \led_pwm_counter[14]~45\,
	combout => \led_pwm_counter[15]~46_combout\);

-- Location: FF_X48_Y18_N31
\led_pwm_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led_pwm_counter[15]~46_combout\,
	clrn => \rst_n~input_o\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_pwm_counter(15));

-- Location: LCCOMB_X43_Y18_N10
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((!led_pwm_counter(8) & !duty_cycle_R(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_pwm_counter(8),
	datab => duty_cycle_R(0),
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X43_Y18_N12
\LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((led_pwm_counter(9) & ((duty_cycle_R(1)) # (!\LessThan1~1_cout\))) # (!led_pwm_counter(9) & (duty_cycle_R(1) & !\LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_pwm_counter(9),
	datab => duty_cycle_R(1),
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X43_Y18_N14
\LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((led_pwm_counter(10) & (!duty_cycle_R(2) & !\LessThan1~3_cout\)) # (!led_pwm_counter(10) & ((!\LessThan1~3_cout\) # (!duty_cycle_R(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_pwm_counter(10),
	datab => duty_cycle_R(2),
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X43_Y18_N16
\LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((led_pwm_counter(11) & ((duty_cycle_R(3)) # (!\LessThan1~5_cout\))) # (!led_pwm_counter(11) & (duty_cycle_R(3) & !\LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_pwm_counter(11),
	datab => duty_cycle_R(3),
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X43_Y18_N18
\LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((led_pwm_counter(12) & (!duty_cycle_R(4) & !\LessThan1~7_cout\)) # (!led_pwm_counter(12) & ((!\LessThan1~7_cout\) # (!duty_cycle_R(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_pwm_counter(12),
	datab => duty_cycle_R(4),
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X43_Y18_N20
\LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((led_pwm_counter(13) & ((duty_cycle_R(5)) # (!\LessThan1~9_cout\))) # (!led_pwm_counter(13) & (duty_cycle_R(5) & !\LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_pwm_counter(13),
	datab => duty_cycle_R(5),
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X43_Y18_N22
\LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((led_pwm_counter(14) & (!duty_cycle_R(6) & !\LessThan1~11_cout\)) # (!led_pwm_counter(14) & ((!\LessThan1~11_cout\) # (!duty_cycle_R(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => led_pwm_counter(14),
	datab => duty_cycle_R(6),
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X43_Y18_N24
\LessThan1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~14_combout\ = (duty_cycle_R(7) & (\LessThan1~13_cout\ & !led_pwm_counter(15))) # (!duty_cycle_R(7) & ((\LessThan1~13_cout\) # (!led_pwm_counter(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => duty_cycle_R(7),
	datad => led_pwm_counter(15),
	cin => \LessThan1~13_cout\,
	combout => \LessThan1~14_combout\);

-- Location: LCCOMB_X43_Y18_N0
\LED[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED[2]~0_combout\ = !\LessThan1~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LessThan1~14_combout\,
	combout => \LED[2]~0_combout\);

-- Location: FF_X43_Y18_N1
\LED[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LED[2]~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[2]~reg0_q\);

ww_LED(0) <= \LED[0]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;
END structure;


